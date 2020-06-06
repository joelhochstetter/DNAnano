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
	<23.903847, 34.803909, 34.586575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268429, 34.761608, 34.745605>,  <24.487179, 34.736225, 34.841022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.268429, 34.761608, 34.745605>,  <23.903847, 34.803909, 34.586575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.268429, 34.761608, 34.745605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242147, 0.919172, -0.310624,
		-0.332589, 0.379392, 0.863392,
		0.911454, -0.105757, 0.397575,
		24.541864, 34.729881, 34.864880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.036242, 35.437534, 34.832050>,  <23.903847, 34.803909, 34.586575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.036242, 35.437534, 34.832050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400127, 35.279217, 34.882275>,  <24.618460, 35.184227, 34.912411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400127, 35.279217, 34.882275>,  <24.036242, 35.437534, 34.832050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400127, 35.279217, 34.882275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407720, 0.908698, -0.089620,
		-0.078626, 0.132723, 0.988030,
		0.909716, -0.395793, 0.125561,
		24.673042, 35.160480, 34.919945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.475166, 35.744900, 35.438118>,  <24.036242, 35.437534, 34.832050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.475166, 35.744900, 35.438118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636204, 35.601234, 35.101330>,  <24.732826, 35.515038, 34.899258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.636204, 35.601234, 35.101330>,  <24.475166, 35.744900, 35.438118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.636204, 35.601234, 35.101330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465066, 0.872508, -0.149812,
		0.788436, -0.331261, 0.518299,
		0.402594, -0.359161, -0.841975,
		24.756981, 35.493484, 34.848736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232620, 35.865559, 35.468613>,  <24.475166, 35.744900, 35.438118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232620, 35.865559, 35.468613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055405, 35.870560, 35.110046>,  <24.949076, 35.873562, 34.894905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055405, 35.870560, 35.110046>,  <25.232620, 35.865559, 35.468613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055405, 35.870560, 35.110046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524702, 0.814372, -0.247965,
		0.726915, -0.580209, -0.367358,
		-0.443038, 0.012504, -0.896416,
		24.922493, 35.874310, 34.841122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943554, 35.966209, 35.709660>,  <25.232620, 35.865559, 35.468613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943554, 35.966209, 35.709660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097315, 35.750481, 36.009357>,  <26.189571, 35.621044, 36.189175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.097315, 35.750481, 36.009357>,  <25.943554, 35.966209, 35.709660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097315, 35.750481, 36.009357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224849, 0.732466, 0.642602,
		-0.895364, -0.415486, 0.160297,
		0.384404, -0.539320, 0.749245,
		26.212637, 35.588684, 36.234131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468565, 35.973724, 36.328472>,  <25.943554, 35.966209, 35.709660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468565, 35.973724, 36.328472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827072, 35.888428, 36.484024>,  <26.042177, 35.837250, 36.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827072, 35.888428, 36.484024>,  <25.468565, 35.973724, 36.328472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827072, 35.888428, 36.484024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209518, 0.569234, 0.795032,
		-0.390900, -0.794040, 0.465508,
		0.896270, -0.213245, 0.388879,
		26.095953, 35.824455, 36.600689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.468567, 35.648701, 36.987633>,  <25.468565, 35.973724, 36.328472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.468567, 35.648701, 36.987633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804609, 35.863380, 36.956207>,  <26.006235, 35.992188, 36.937351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.804609, 35.863380, 36.956207>,  <25.468567, 35.648701, 36.987633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804609, 35.863380, 36.956207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217888, 0.466547, 0.857239,
		0.496733, -0.703056, 0.508890,
		0.840108, 0.536700, -0.078562,
		26.056643, 36.024391, 36.932640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687500, 35.541958, 37.612068>,  <25.468567, 35.648701, 36.987633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687500, 35.541958, 37.612068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899824, 35.851318, 37.473446>,  <26.027218, 36.036934, 37.390274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.899824, 35.851318, 37.473446>,  <25.687500, 35.541958, 37.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899824, 35.851318, 37.473446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027364, 0.393063, 0.919104,
		0.847050, -0.497351, 0.187478,
		0.530808, 0.773397, -0.346554,
		26.059067, 36.083336, 37.369480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201927, 35.590084, 38.083141>,  <25.687500, 35.541958, 37.612068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201927, 35.590084, 38.083141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171902, 35.949448, 37.910065>,  <26.153887, 36.165066, 37.806221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.171902, 35.949448, 37.910065>,  <26.201927, 35.590084, 38.083141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.171902, 35.949448, 37.910065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010183, 0.434582, 0.900575,
		0.997127, 0.063197, -0.041771,
		-0.075066, 0.898413, -0.432689,
		26.149382, 36.218971, 37.780258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690025, 35.929806, 38.371674>,  <26.201927, 35.590084, 38.083141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690025, 35.929806, 38.371674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438108, 36.207668, 38.232643>,  <26.286959, 36.374386, 38.149223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.438108, 36.207668, 38.232643>,  <26.690025, 35.929806, 38.371674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.438108, 36.207668, 38.232643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126093, 0.350102, 0.928186,
		0.766461, 0.628391, -0.132900,
		-0.629793, 0.694660, -0.347575,
		26.249170, 36.416065, 38.128372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046873, 36.576832, 38.526196>,  <26.690025, 35.929806, 38.371674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046873, 36.576832, 38.526196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647434, 36.593815, 38.513508>,  <26.407772, 36.604004, 38.505898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.647434, 36.593815, 38.513508>,  <27.046873, 36.576832, 38.526196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.647434, 36.593815, 38.513508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004220, 0.532865, 0.846190,
		0.052824, 0.845135, -0.531937,
		-0.998595, 0.042455, -0.031715,
		26.347857, 36.606552, 38.503994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982533, 37.056705, 39.099346>,  <27.046873, 36.576832, 38.526196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982533, 37.056705, 39.099346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622833, 36.914661, 38.997173>,  <26.407013, 36.829433, 38.935871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622833, 36.914661, 38.997173>,  <26.982533, 37.056705, 39.099346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622833, 36.914661, 38.997173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404046, 0.450546, 0.796087,
		-0.167620, 0.819086, -0.548636,
		-0.899250, -0.355115, -0.255428,
		26.353058, 36.808128, 38.920544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293512, 37.607727, 39.003296>,  <26.982533, 37.056705, 39.099346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293512, 37.607727, 39.003296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183628, 37.237572, 39.107746>,  <26.117697, 37.015480, 39.170418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183628, 37.237572, 39.107746>,  <26.293512, 37.607727, 39.003296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183628, 37.237572, 39.107746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372311, 0.352765, 0.858453,
		-0.886520, 0.138605, -0.441441,
		-0.274711, -0.925389, 0.261129,
		26.101215, 36.959953, 39.186085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.957615, 37.526779, 39.604465>,  <26.293512, 37.607727, 39.003296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.957615, 37.526779, 39.604465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642124, 37.652889, 39.393372>,  <25.452829, 37.728554, 39.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.642124, 37.652889, 39.393372>,  <25.957615, 37.526779, 39.604465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.642124, 37.652889, 39.393372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317265, -0.526545, -0.788729,
		-0.526545, -0.789526, 0.315276,
		0.788729, -0.315276, 0.527739,
		25.405506, 37.747471, 39.235050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521824, 36.930763, 39.348965>,  <25.957615, 37.526779, 39.604465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521824, 36.930763, 39.348965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497936, 37.250603, 39.109940>,  <25.483603, 37.442505, 38.966526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497936, 37.250603, 39.109940>,  <25.521824, 36.930763, 39.348965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497936, 37.250603, 39.109940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276017, -0.562062, -0.779680,
		-0.959296, -0.211500, -0.187135,
		-0.059721, 0.799596, -0.597561,
		25.480021, 37.490482, 38.930672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.979158, 36.914612, 38.771259>,  <25.521824, 36.930763, 39.348965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.979158, 36.914612, 38.771259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327288, 37.092999, 38.687687>,  <25.536165, 37.200031, 38.637543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327288, 37.092999, 38.687687>,  <24.979158, 36.914612, 38.771259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327288, 37.092999, 38.687687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222528, -0.734579, -0.640995,
		-0.439341, 0.511378, -0.738561,
		0.870322, 0.445966, -0.208935,
		25.588385, 37.226788, 38.625008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.192226, 36.971931, 38.039940>,  <24.979158, 36.914612, 38.771259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.192226, 36.971931, 38.039940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572321, 36.966248, 38.164421>,  <25.800377, 36.962837, 38.239109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.572321, 36.966248, 38.164421>,  <25.192226, 36.971931, 38.039940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.572321, 36.966248, 38.164421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247866, -0.570660, -0.782885,
		0.188713, 0.821063, -0.538741,
		0.950237, -0.014205, 0.311205,
		25.857391, 36.961987, 38.257782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596886, 37.358906, 37.530525>,  <25.192226, 36.971931, 38.039940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596886, 37.358906, 37.530525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817413, 37.084286, 37.720135>,  <25.949730, 36.919514, 37.833900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817413, 37.084286, 37.720135>,  <25.596886, 37.358906, 37.530525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817413, 37.084286, 37.720135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219649, -0.428680, -0.876350,
		0.804861, 0.587267, -0.085540,
		0.551320, -0.686551, 0.474020,
		25.982809, 36.878319, 37.862339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.283060, 37.342476, 37.240845>,  <25.596886, 37.358906, 37.530525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.283060, 37.342476, 37.240845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248945, 36.983028, 37.412991>,  <26.228476, 36.767361, 37.516277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.248945, 36.983028, 37.412991>,  <26.283060, 37.342476, 37.240845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.248945, 36.983028, 37.412991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334796, -0.432671, -0.837082,
		0.938423, 0.072691, 0.337755,
		-0.085288, -0.898616, 0.430366,
		26.223358, 36.713444, 37.542099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826691, 37.075836, 36.945194>,  <26.283060, 37.342476, 37.240845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826691, 37.075836, 36.945194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592546, 36.774235, 37.064411>,  <26.452059, 36.593273, 37.135941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592546, 36.774235, 37.064411>,  <26.826691, 37.075836, 36.945194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592546, 36.774235, 37.064411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419218, -0.596124, -0.684758,
		0.693979, -0.275888, 0.665040,
		-0.585362, -0.754004, 0.298040,
		26.416937, 36.548035, 37.153824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222403, 36.568069, 36.964100>,  <26.826691, 37.075836, 36.945194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222403, 36.568069, 36.964100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858122, 36.405830, 36.932831>,  <26.639553, 36.308487, 36.914070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.858122, 36.405830, 36.932831>,  <27.222403, 36.568069, 36.964100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858122, 36.405830, 36.932831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319031, -0.570468, -0.756826,
		0.262375, -0.714182, 0.648925,
		-0.910702, -0.405600, -0.078169,
		26.584911, 36.284149, 36.909382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218266, 35.712006, 36.796017>,  <27.222403, 36.568069, 36.964100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218266, 35.712006, 36.796017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902901, 35.925022, 36.672855>,  <26.713682, 36.052834, 36.598957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.902901, 35.925022, 36.672855>,  <27.218266, 35.712006, 36.796017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902901, 35.925022, 36.672855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081154, -0.586206, -0.806087,
		-0.609773, -0.610540, 0.505389,
		-0.788410, 0.532544, -0.307905,
		26.666376, 36.084785, 36.580486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893192, 35.193703, 36.494640>,  <27.218266, 35.712006, 36.796017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893192, 35.193703, 36.494640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701324, 35.524784, 36.378147>,  <26.586205, 35.723434, 36.308250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701324, 35.524784, 36.378147>,  <26.893192, 35.193703, 36.494640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701324, 35.524784, 36.378147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421554, -0.508480, -0.750827,
		-0.769553, -0.237376, 0.592825,
		-0.479668, 0.827708, -0.291236,
		26.557425, 35.773098, 36.290775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142031, 35.656708, 35.909874>,  <26.893192, 35.193703, 36.494640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142031, 35.656708, 35.909874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098085, 36.005581, 36.100544>,  <27.071718, 36.214905, 36.214947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.098085, 36.005581, 36.100544>,  <27.142031, 35.656708, 35.909874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.098085, 36.005581, 36.100544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416249, 0.475872, -0.774779,
		-0.902589, 0.113296, -0.415328,
		-0.109864, 0.872187, 0.476676,
		27.065126, 36.267239, 36.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769312, 36.147408, 35.541782>,  <27.142031, 35.656708, 35.909874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769312, 36.147408, 35.541782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068407, 36.313148, 35.749321>,  <27.247864, 36.412594, 35.873844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.068407, 36.313148, 35.749321>,  <26.769312, 36.147408, 35.541782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.068407, 36.313148, 35.749321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372546, 0.385021, -0.844375,
		-0.549636, 0.824664, 0.133529,
		0.747737, 0.414353, 0.518846,
		27.292728, 36.437454, 35.904976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975029, 36.734741, 35.230083>,  <26.769312, 36.147408, 35.541782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975029, 36.734741, 35.230083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302881, 36.678150, 35.452145>,  <27.499592, 36.644196, 35.585381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302881, 36.678150, 35.452145>,  <26.975029, 36.734741, 35.230083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302881, 36.678150, 35.452145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562720, 0.380624, -0.733806,
		-0.107490, 0.913844, 0.391581,
		0.819629, -0.141474, 0.555151,
		27.548771, 36.635708, 35.618690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446489, 37.142250, 34.804707>,  <26.975029, 36.734741, 35.230083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446489, 37.142250, 34.804707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658371, 37.060532, 35.133991>,  <27.785500, 37.011501, 35.331562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658371, 37.060532, 35.133991>,  <27.446489, 37.142250, 34.804707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658371, 37.060532, 35.133991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839577, 0.264189, -0.474673,
		-0.120510, 0.942586, 0.311464,
		0.529705, -0.204295, 0.823211,
		27.817282, 36.999245, 35.380955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826506, 37.665924, 35.055229>,  <27.446489, 37.142250, 34.804707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826506, 37.665924, 35.055229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020683, 37.329323, 35.150066>,  <28.137190, 37.127361, 35.206970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020683, 37.329323, 35.150066>,  <27.826506, 37.665924, 35.055229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020683, 37.329323, 35.150066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820829, 0.345332, -0.454957,
		0.300971, 0.415472, 0.858370,
		0.485445, -0.841504, 0.237097,
		28.166317, 37.076870, 35.221195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457649, 37.732292, 35.546097>,  <27.826506, 37.665924, 35.055229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457649, 37.732292, 35.546097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500162, 37.430668, 35.286839>,  <28.525669, 37.249691, 35.131283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500162, 37.430668, 35.286839>,  <28.457649, 37.732292, 35.546097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500162, 37.430668, 35.286839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783952, 0.464517, -0.411877,
		0.611656, -0.464338, 0.640521,
		0.106283, -0.754065, -0.648144,
		28.532047, 37.204449, 35.092396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057848, 37.440697, 35.703285>,  <28.457649, 37.732292, 35.546097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057848, 37.440697, 35.703285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962156, 37.423721, 35.315269>,  <28.904741, 37.413536, 35.082462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962156, 37.423721, 35.315269>,  <29.057848, 37.440697, 35.703285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962156, 37.423721, 35.315269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732860, 0.647463, -0.209067,
		0.636935, -0.760915, -0.123790,
		-0.239231, -0.042441, -0.970035,
		28.890387, 37.410988, 35.024258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632349, 37.248566, 35.267334>,  <29.057848, 37.440697, 35.703285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632349, 37.248566, 35.267334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399166, 37.489990, 35.049755>,  <29.259256, 37.634846, 34.919209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399166, 37.489990, 35.049755>,  <29.632349, 37.248566, 35.267334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399166, 37.489990, 35.049755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788486, 0.581812, -0.199459,
		0.196092, -0.545173, -0.815067,
		-0.582955, 0.603557, -0.543951,
		29.224279, 37.671059, 34.886570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492199, 36.722607, 34.657818>,  <29.632349, 37.248566, 35.267334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492199, 36.722607, 34.657818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575697, 36.341293, 34.745159>,  <29.625795, 36.112507, 34.797565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575697, 36.341293, 34.745159>,  <29.492199, 36.722607, 34.657818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575697, 36.341293, 34.745159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100225, 0.242950, 0.964847,
		-0.972821, -0.179522, 0.146257,
		0.208744, -0.953282, 0.218355,
		29.638321, 36.055309, 34.810665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014648, 36.403324, 35.087227>,  <29.492199, 36.722607, 34.657818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014648, 36.403324, 35.087227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373327, 36.231342, 35.129314>,  <29.588535, 36.128151, 35.154568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373327, 36.231342, 35.129314>,  <29.014648, 36.403324, 35.087227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373327, 36.231342, 35.129314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073372, 0.378784, 0.922572,
		-0.436522, -0.819547, 0.371201,
		0.896697, -0.429959, 0.105216,
		29.642336, 36.102356, 35.160881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055447, 36.172207, 35.829819>,  <29.014648, 36.403324, 35.087227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055447, 36.172207, 35.829819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424599, 36.259270, 35.702747>,  <29.646090, 36.311508, 35.626507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424599, 36.259270, 35.702747>,  <29.055447, 36.172207, 35.829819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424599, 36.259270, 35.702747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208052, 0.412362, 0.886945,
		0.324050, -0.884637, 0.335276,
		0.922879, 0.217660, -0.317676,
		29.701462, 36.324570, 35.607445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.547495, 35.984840, 36.349667>,  <29.055447, 36.172207, 35.829819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.547495, 35.984840, 36.349667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728134, 36.270454, 36.135670>,  <29.836517, 36.441822, 36.007271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.728134, 36.270454, 36.135670>,  <29.547495, 35.984840, 36.349667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728134, 36.270454, 36.135670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307230, 0.438497, 0.844589,
		0.837657, -0.545779, -0.021349,
		0.451597, 0.714035, -0.534990,
		29.863613, 36.484665, 35.975174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319117, 36.118603, 36.369331>,  <29.547495, 35.984840, 36.349667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319117, 36.118603, 36.369331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175598, 36.479237, 36.272659>,  <30.089487, 36.695618, 36.214657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.175598, 36.479237, 36.272659>,  <30.319117, 36.118603, 36.369331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175598, 36.479237, 36.272659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402729, 0.383102, 0.831289,
		0.842066, 0.200933, -0.500551,
		-0.358796, 0.901587, -0.241675,
		30.067959, 36.749714, 36.200157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810135, 36.534477, 36.458866>,  <30.319117, 36.118603, 36.369331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810135, 36.534477, 36.458866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487585, 36.768223, 36.495243>,  <30.294054, 36.908470, 36.517071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.487585, 36.768223, 36.495243>,  <30.810135, 36.534477, 36.458866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487585, 36.768223, 36.495243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432294, 0.477485, 0.764938,
		0.403582, 0.656142, -0.637652,
		-0.806377, 0.584368, 0.090942,
		30.245672, 36.943535, 36.522526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353418, 36.876595, 37.005692>,  <30.810135, 36.534477, 36.458866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353418, 36.876595, 37.005692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624027, 36.646000, 37.188984>,  <30.786392, 36.507641, 37.298962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624027, 36.646000, 37.188984>,  <30.353418, 36.876595, 37.005692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624027, 36.646000, 37.188984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736404, 0.525259, -0.426394,
		0.005121, 0.625910, 0.779879,
		0.676523, -0.576489, 0.458233,
		30.826984, 36.473053, 37.326454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893019, 37.307762, 37.335068>,  <30.353418, 36.876595, 37.005692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893019, 37.307762, 37.335068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020571, 36.954666, 37.197033>,  <31.097101, 36.742809, 37.114212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020571, 36.954666, 37.197033>,  <30.893019, 37.307762, 37.335068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020571, 36.954666, 37.197033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748729, 0.457856, -0.479346,
		0.581138, -0.105522, 0.806935,
		0.318878, -0.882742, -0.345085,
		31.116234, 36.689842, 37.093506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613388, 37.037632, 37.461838>,  <30.893019, 37.307762, 37.335068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613388, 37.037632, 37.461838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504654, 36.942543, 37.088829>,  <31.439413, 36.885490, 36.865025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504654, 36.942543, 37.088829>,  <31.613388, 37.037632, 37.461838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504654, 36.942543, 37.088829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835613, 0.422341, -0.351253,
		0.477342, -0.874709, 0.083837,
		-0.271837, -0.237723, -0.932520,
		31.423103, 36.871227, 36.809074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202175, 36.692837, 37.207043>,  <31.613388, 37.037632, 37.461838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202175, 36.692837, 37.207043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986691, 36.941002, 36.979050>,  <31.857401, 37.089901, 36.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986691, 36.941002, 36.979050>,  <32.202175, 36.692837, 37.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986691, 36.941002, 36.979050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833459, 0.491263, -0.252998,
		0.123050, -0.611351, -0.781734,
		-0.538707, 0.620412, -0.569986,
		31.825079, 37.127125, 36.808052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873112, 36.441551, 37.388264>,  <32.202175, 36.692837, 37.207043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873112, 36.441551, 37.388264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165493, 36.711926, 37.425819>,  <33.340923, 36.874149, 37.448353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.165493, 36.711926, 37.425819>,  <32.873112, 36.441551, 37.388264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165493, 36.711926, 37.425819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018723, -0.117665, 0.992877,
		0.682169, -0.727505, -0.073352,
		0.730954, 0.675937, 0.093889,
		33.384781, 36.914707, 37.453987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501457, 36.338455, 36.994888>,  <32.873112, 36.441551, 37.388264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501457, 36.338455, 36.994888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794197, 36.230057, 36.744781>,  <33.969841, 36.165020, 36.594715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.794197, 36.230057, 36.744781>,  <33.501457, 36.338455, 36.994888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.794197, 36.230057, 36.744781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408062, -0.560585, 0.720576,
		-0.545788, -0.782500, -0.299680,
		0.731847, -0.270994, -0.625270,
		34.013752, 36.148758, 36.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662819, 35.589973, 37.042484>,  <33.501457, 36.338455, 36.994888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662819, 35.589973, 37.042484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021481, 35.748760, 36.964077>,  <34.236679, 35.844032, 36.917034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021481, 35.748760, 36.964077>,  <33.662819, 35.589973, 37.042484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021481, 35.748760, 36.964077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387044, -0.487909, 0.782395,
		0.214951, -0.777406, -0.591132,
		0.896657, 0.396970, -0.196014,
		34.290478, 35.867851, 36.905273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210621, 35.817001, 36.390827>,  <33.662819, 35.589973, 37.042484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210621, 35.817001, 36.390827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170635, 35.463287, 36.208378>,  <33.146645, 35.251060, 36.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170635, 35.463287, 36.208378>,  <33.210621, 35.817001, 36.390827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170635, 35.463287, 36.208378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109690, 0.445835, -0.888369,
		0.988926, -0.138837, 0.052430,
		-0.099964, -0.884282, -0.456127,
		33.140648, 35.198002, 36.071541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864437, 35.659966, 36.025246>,  <33.210621, 35.817001, 36.390827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864437, 35.659966, 36.025246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518669, 35.518780, 35.882034>,  <33.311207, 35.434067, 35.796108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.518669, 35.518780, 35.882034>,  <33.864437, 35.659966, 36.025246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518669, 35.518780, 35.882034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073637, 0.615565, -0.784639,
		0.497340, -0.704626, -0.506118,
		-0.864425, -0.352963, -0.358031,
		33.259342, 35.412891, 35.774624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724007, 35.860760, 35.269451>,  <33.864437, 35.659966, 36.025246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724007, 35.860760, 35.269451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353943, 35.709312, 35.258659>,  <33.131905, 35.618446, 35.252182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353943, 35.709312, 35.258659>,  <33.724007, 35.860760, 35.269451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353943, 35.709312, 35.258659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332803, 0.843294, -0.422016,
		0.182536, -0.381452, -0.906187,
		-0.925161, -0.378615, -0.026983,
		33.076393, 35.595730, 35.250565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274921, 35.603905, 34.662575>,  <33.724007, 35.860760, 35.269451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274921, 35.603905, 34.662575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067875, 35.945610, 34.643356>,  <32.943649, 36.150635, 34.631824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067875, 35.945610, 34.643356>,  <33.274921, 35.603905, 34.662575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067875, 35.945610, 34.643356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816504, 0.509956, 0.270678,
		0.255731, 0.100878, -0.961470,
		-0.517613, 0.854265, -0.048044,
		32.912590, 36.201889, 34.628944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716141, 36.111633, 34.361500>,  <33.274921, 35.603905, 34.662575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716141, 36.111633, 34.361500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462708, 36.312130, 34.597237>,  <33.310646, 36.432426, 34.738678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462708, 36.312130, 34.597237>,  <33.716141, 36.111633, 34.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462708, 36.312130, 34.597237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749254, 0.587396, 0.305915,
		-0.192841, 0.635392, -0.747723,
		-0.633585, 0.501241, 0.589344,
		33.272633, 36.462502, 34.774040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458649, 36.222420, 34.588398>,  <33.716141, 36.111633, 34.361500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458649, 36.222420, 34.588398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794979, 36.199543, 34.373089>,  <34.996777, 36.185818, 34.243904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.794979, 36.199543, 34.373089>,  <34.458649, 36.222420, 34.588398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794979, 36.199543, 34.373089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481061, -0.376945, 0.791513,
		-0.248164, -0.924468, -0.289435,
		0.840830, -0.057189, -0.538270,
		35.047230, 36.182388, 34.211609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686878, 35.604969, 34.669849>,  <34.458649, 36.222420, 34.588398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686878, 35.604969, 34.669849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008087, 35.816250, 34.559460>,  <35.200813, 35.943020, 34.493225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008087, 35.816250, 34.559460>,  <34.686878, 35.604969, 34.669849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008087, 35.816250, 34.559460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532830, -0.428940, 0.729454,
		0.266924, -0.732812, -0.625889,
		0.803022, 0.528202, -0.275970,
		35.248993, 35.974709, 34.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238022, 35.204796, 34.840050>,  <34.686878, 35.604969, 34.669849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238022, 35.204796, 34.840050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420937, 35.557316, 34.792397>,  <35.530685, 35.768829, 34.763805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420937, 35.557316, 34.792397>,  <35.238022, 35.204796, 34.840050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420937, 35.557316, 34.792397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663925, -0.249185, 0.705060,
		0.591683, -0.401515, -0.699068,
		0.457290, 0.881301, -0.119137,
		35.558125, 35.821705, 34.756657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972889, 35.137592, 34.747166>,  <35.238022, 35.204796, 34.840050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972889, 35.137592, 34.747166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912930, 35.497070, 34.912033>,  <35.876953, 35.712757, 35.010956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912930, 35.497070, 34.912033>,  <35.972889, 35.137592, 34.747166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912930, 35.497070, 34.912033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504110, -0.289153, 0.813796,
		0.850531, 0.329766, -0.409696,
		-0.149898, 0.898691, 0.412172,
		35.867962, 35.766678, 35.035686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643566, 35.471615, 34.869312>,  <35.972889, 35.137592, 34.747166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643566, 35.471615, 34.869312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364758, 35.571541, 35.138161>,  <36.197472, 35.631496, 35.299469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364758, 35.571541, 35.138161>,  <36.643566, 35.471615, 34.869312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364758, 35.571541, 35.138161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575586, -0.364066, 0.732227,
		0.427619, 0.897245, 0.109973,
		-0.697024, 0.249815, 0.672123,
		36.155651, 35.646484, 35.339798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058681, 35.765602, 35.394859>,  <36.643566, 35.471615, 34.869312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058681, 35.765602, 35.394859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714561, 35.608017, 35.524273>,  <36.508087, 35.513466, 35.601921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714561, 35.608017, 35.524273>,  <37.058681, 35.765602, 35.394859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714561, 35.608017, 35.524273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499414, -0.523987, 0.689944,
		-0.102282, 0.755138, 0.647537,
		-0.860304, -0.393958, 0.323532,
		36.456470, 35.489830, 35.621334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103985, 35.926994, 36.160870>,  <37.058681, 35.765602, 35.394859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103985, 35.926994, 36.160870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824837, 35.661865, 36.052326>,  <36.657349, 35.502789, 35.987202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824837, 35.661865, 36.052326>,  <37.103985, 35.926994, 36.160870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824837, 35.661865, 36.052326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037199, -0.411904, 0.910468,
		-0.715253, 0.625298, 0.312114,
		-0.697875, -0.662825, -0.271355,
		36.615475, 35.463017, 35.970921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849468, 35.447319, 36.530415>,  <37.103985, 35.926994, 36.160870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849468, 35.447319, 36.530415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515152, 35.434719, 36.749672>,  <36.314560, 35.427158, 36.881226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515152, 35.434719, 36.749672>,  <36.849468, 35.447319, 36.530415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515152, 35.434719, 36.749672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508627, 0.420376, -0.751387,
		-0.206757, -0.906803, -0.367368,
		-0.835793, -0.031499, 0.548140,
		36.264416, 35.425270, 36.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305550, 35.017654, 36.303432>,  <36.849468, 35.447319, 36.530415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305550, 35.017654, 36.303432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185131, 35.351395, 36.488144>,  <36.112881, 35.551640, 36.598972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185131, 35.351395, 36.488144>,  <36.305550, 35.017654, 36.303432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185131, 35.351395, 36.488144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425033, 0.316089, -0.848195,
		-0.853652, -0.451614, 0.259469,
		-0.301042, 0.834346, 0.461780,
		36.094818, 35.601700, 36.626678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641983, 35.218090, 36.279114>,  <36.305550, 35.017654, 36.303432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641983, 35.218090, 36.279114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863571, 35.550270, 36.302666>,  <35.996525, 35.749580, 36.316795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863571, 35.550270, 36.302666>,  <35.641983, 35.218090, 36.279114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863571, 35.550270, 36.302666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303294, 0.267169, -0.914677,
		-0.775328, 0.488843, 0.399874,
		0.553967, 0.830454, 0.058880,
		36.029762, 35.799408, 36.320332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258472, 35.802998, 36.115669>,  <35.641983, 35.218090, 36.279114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258472, 35.802998, 36.115669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640491, 35.857677, 36.010441>,  <35.869701, 35.890484, 35.947304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640491, 35.857677, 36.010441>,  <35.258472, 35.802998, 36.115669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640491, 35.857677, 36.010441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293437, 0.309392, -0.904528,
		-0.042255, 0.941058, 0.335595,
		0.955044, 0.136697, -0.263067,
		35.927006, 35.898685, 35.931522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349678, 36.549473, 35.825226>,  <35.258472, 35.802998, 36.115669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349678, 36.549473, 35.825226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646225, 36.315025, 35.694481>,  <35.824154, 36.174358, 35.616035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646225, 36.315025, 35.694481>,  <35.349678, 36.549473, 35.825226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646225, 36.315025, 35.694481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184455, 0.290325, -0.938982,
		0.645248, 0.756425, 0.107126,
		0.741371, -0.586116, -0.326858,
		35.868637, 36.139191, 35.596424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793983, 36.945438, 35.359970>,  <35.349678, 36.549473, 35.825226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793983, 36.945438, 35.359970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842285, 36.562420, 35.255268>,  <35.871265, 36.332607, 35.192448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842285, 36.562420, 35.255268>,  <35.793983, 36.945438, 35.359970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842285, 36.562420, 35.255268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284153, 0.219309, -0.933360,
		0.951144, 0.187087, -0.245607,
		0.120756, -0.957550, -0.261756,
		35.878513, 36.275154, 35.176743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935593, 37.051018, 34.588585>,  <35.793983, 36.945438, 35.359970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935593, 37.051018, 34.588585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867683, 36.659882, 34.637577>,  <35.826939, 36.425198, 34.666973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.867683, 36.659882, 34.637577>,  <35.935593, 37.051018, 34.588585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867683, 36.659882, 34.637577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352176, -0.055873, -0.934265,
		0.920407, -0.201749, -0.334887,
		-0.169776, -0.977842, 0.122477,
		35.816750, 36.366528, 34.674320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305222, 36.579533, 34.019016>,  <35.935593, 37.051018, 34.588585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305222, 36.579533, 34.019016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 36.381939, 34.147320>,  <35.788010, 36.263382, 34.224304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981964, 36.381939, 34.147320>,  <36.305222, 36.579533, 34.019016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981964, 36.381939, 34.147320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361371, -0.014196, -0.932314,
		0.465098, -0.869357, -0.167038,
		-0.808142, -0.493980, 0.320763,
		35.739521, 36.233746, 34.243549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143372, 36.314808, 33.425179>,  <36.305222, 36.579533, 34.019016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143372, 36.314808, 33.425179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828617, 36.254295, 33.664486>,  <35.639763, 36.217987, 33.808071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.828617, 36.254295, 33.664486>,  <36.143372, 36.314808, 33.425179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828617, 36.254295, 33.664486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609992, 0.043981, -0.791186,
		0.093381, -0.987512, -0.126890,
		-0.786886, -0.151283, 0.598267,
		35.592552, 36.208912, 33.843967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655304, 35.899033, 33.151264>,  <36.143372, 36.314808, 33.425179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655304, 35.899033, 33.151264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446690, 36.155380, 33.376575>,  <35.321522, 36.309189, 33.511765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446690, 36.155380, 33.376575>,  <35.655304, 35.899033, 33.151264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446690, 36.155380, 33.376575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689963, 0.071599, -0.720295,
		-0.501944, -0.764305, 0.404833,
		-0.521539, 0.640867, 0.563281,
		35.290226, 36.347641, 33.545559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918201, 35.812813, 33.007076>,  <35.655304, 35.899033, 33.151264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918201, 35.812813, 33.007076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909492, 36.167156, 33.192459>,  <34.904266, 36.379761, 33.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909492, 36.167156, 33.192459>,  <34.918201, 35.812813, 33.007076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909492, 36.167156, 33.192459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722368, 0.306536, -0.619855,
		-0.691166, -0.348279, 0.633239,
		-0.021772, 0.885854, 0.463453,
		34.902962, 36.432911, 33.331493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232563, 35.908138, 33.151505>,  <34.918201, 35.812813, 33.007076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232563, 35.908138, 33.151505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428764, 36.252506, 33.097496>,  <34.546486, 36.459126, 33.065090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428764, 36.252506, 33.097496>,  <34.232563, 35.908138, 33.151505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428764, 36.252506, 33.097496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623824, 0.238703, -0.744220,
		-0.608483, 0.449268, 0.654146,
		0.490502, 0.860917, -0.135018,
		34.575916, 36.510780, 33.056992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710545, 36.435917, 33.173061>,  <34.232563, 35.908138, 33.151505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710545, 36.435917, 33.173061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030643, 36.605103, 33.003025>,  <34.222702, 36.706615, 32.901005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030643, 36.605103, 33.003025>,  <33.710545, 36.435917, 33.173061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030643, 36.605103, 33.003025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586108, 0.401798, -0.703588,
		-0.126793, 0.812194, 0.569441,
		0.800251, 0.422964, -0.425088,
		34.270718, 36.731991, 32.875500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510651, 37.100456, 33.109844>,  <33.710545, 36.435917, 33.173061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510651, 37.100456, 33.109844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791622, 37.006477, 32.841103>,  <33.960205, 36.950089, 32.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.791622, 37.006477, 32.841103>,  <33.510651, 37.100456, 33.109844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791622, 37.006477, 32.841103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591726, 0.331813, -0.734684,
		0.395543, 0.913620, 0.094051,
		0.702429, -0.234946, -0.671858,
		34.002350, 36.935993, 32.639545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342426, 37.530910, 32.572590>,  <33.510651, 37.100456, 33.109844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342426, 37.530910, 32.572590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608501, 37.307541, 32.374321>,  <33.768147, 37.173519, 32.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608501, 37.307541, 32.374321>,  <33.342426, 37.530910, 32.572590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608501, 37.307541, 32.374321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473482, 0.197838, -0.858298,
		0.577360, 0.805616, -0.132807,
		0.665185, -0.558428, -0.495668,
		33.808056, 37.140011, 32.225620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582390, 37.932724, 32.152523>,  <33.342426, 37.530910, 32.572590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582390, 37.932724, 32.152523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692078, 37.587769, 31.982304>,  <33.757889, 37.380795, 31.880173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.692078, 37.587769, 31.982304>,  <33.582390, 37.932724, 32.152523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.692078, 37.587769, 31.982304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282858, 0.350606, -0.892786,
		0.919128, 0.365186, -0.147792,
		0.274217, -0.862389, -0.425548,
		33.774342, 37.329052, 31.854639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855122, 38.128963, 31.580618>,  <33.582390, 37.932724, 32.152523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855122, 38.128963, 31.580618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783894, 37.741390, 31.511959>,  <33.741158, 37.508846, 31.470764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783894, 37.741390, 31.511959>,  <33.855122, 38.128963, 31.580618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783894, 37.741390, 31.511959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210834, 0.207951, -0.955147,
		0.961167, -0.133891, -0.241313,
		-0.178067, -0.968932, -0.171646,
		33.730473, 37.450710, 31.460464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303749, 37.874523, 30.872478>,  <33.855122, 38.128963, 31.580618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303749, 37.874523, 30.872478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994701, 37.629299, 30.938467>,  <33.809273, 37.482162, 30.978060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994701, 37.629299, 30.938467>,  <34.303749, 37.874523, 30.872478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994701, 37.629299, 30.938467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220805, 0.015857, -0.975189,
		0.595237, -0.789874, -0.147619,
		-0.772618, -0.613063, 0.164970,
		33.762917, 37.445381, 30.987957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430569, 37.466309, 30.436691>,  <34.303749, 37.874523, 30.872478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430569, 37.466309, 30.436691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043556, 37.398949, 30.512085>,  <33.811348, 37.358532, 30.557322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043556, 37.398949, 30.512085>,  <34.430569, 37.466309, 30.436691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043556, 37.398949, 30.512085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189416, -0.010655, -0.981839,
		0.167353, -0.985661, -0.021589,
		-0.967530, -0.168403, 0.188483,
		33.753296, 37.348427, 30.568630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264446, 36.903553, 30.036949>,  <34.430569, 37.466309, 30.436691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264446, 36.903553, 30.036949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913563, 37.078098, 30.117043>,  <33.703033, 37.182827, 30.165098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913563, 37.078098, 30.117043>,  <34.264446, 36.903553, 30.036949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913563, 37.078098, 30.117043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162203, 0.123182, -0.979038,
		-0.451882, -0.891298, -0.037277,
		-0.877207, 0.436364, 0.200235,
		33.650402, 37.209007, 30.177113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691689, 36.584358, 29.586031>,  <34.264446, 36.903553, 30.036949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691689, 36.584358, 29.586031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525047, 36.924801, 29.713818>,  <33.425064, 37.129066, 29.790489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525047, 36.924801, 29.713818>,  <33.691689, 36.584358, 29.586031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525047, 36.924801, 29.713818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313367, 0.195431, -0.929305,
		-0.853373, -0.487258, 0.185293,
		-0.416599, 0.851109, 0.319466,
		33.400066, 37.180134, 29.809658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059986, 36.618805, 29.273891>,  <33.691689, 36.584358, 29.586031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059986, 36.618805, 29.273891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 36.998234, 29.381243>,  <33.167435, 37.225891, 29.445654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127140, 36.998234, 29.381243>,  <33.059986, 36.618805, 29.273891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127140, 36.998234, 29.381243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403656, 0.314520, -0.859150,
		-0.899375, 0.035910, 0.435701,
		0.167888, 0.948571, 0.268376,
		33.177505, 37.282806, 29.461756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461864, 37.023792, 29.128433>,  <33.059986, 36.618805, 29.273891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461864, 37.023792, 29.128433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742268, 37.305973, 29.170237>,  <32.910511, 37.475281, 29.195318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742268, 37.305973, 29.170237>,  <32.461864, 37.023792, 29.128433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742268, 37.305973, 29.170237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337631, 0.457383, -0.822682,
		-0.628164, 0.541423, 0.558812,
		0.701010, 0.705452, 0.104510,
		32.952572, 37.517609, 29.201590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173244, 37.663506, 28.968367>,  <32.461864, 37.023792, 29.128433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173244, 37.663506, 28.968367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563068, 37.746597, 28.934692>,  <32.796963, 37.796452, 28.914488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563068, 37.746597, 28.934692>,  <32.173244, 37.663506, 28.968367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563068, 37.746597, 28.934692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182890, 0.519850, -0.834450,
		-0.129576, 0.828616, 0.544615,
		0.974557, 0.207730, -0.084185,
		32.855434, 37.808918, 28.909437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124832, 38.298779, 28.796654>,  <32.173244, 37.663506, 28.968367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124832, 38.298779, 28.796654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484631, 38.171227, 28.677174>,  <32.700508, 38.094696, 28.605486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484631, 38.171227, 28.677174>,  <32.124832, 38.298779, 28.796654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484631, 38.171227, 28.677174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113417, 0.489797, -0.864428,
		0.421949, 0.811428, 0.404405,
		0.899497, -0.318878, -0.298699,
		32.754478, 38.075562, 28.587564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507648, 38.900917, 28.646589>,  <32.124832, 38.298779, 28.796654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507648, 38.900917, 28.646589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684216, 38.617271, 28.426662>,  <32.790157, 38.447083, 28.294706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.684216, 38.617271, 28.426662>,  <32.507648, 38.900917, 28.646589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684216, 38.617271, 28.426662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101245, 0.569474, -0.815751,
		0.891571, 0.415754, 0.179582,
		0.441419, -0.709118, -0.549819,
		32.816643, 38.404537, 28.261717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899963, 39.331013, 28.403990>,  <32.507648, 38.900917, 28.646589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899963, 39.331013, 28.403990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878082, 39.013447, 28.161764>,  <32.864952, 38.822906, 28.016428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878082, 39.013447, 28.161764>,  <32.899963, 39.331013, 28.403990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878082, 39.013447, 28.161764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039410, 0.607717, -0.793175,
		0.997724, -0.019527, -0.064535,
		-0.054707, -0.793914, -0.605564,
		32.861671, 38.775272, 27.980095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365734, 39.430347, 27.845146>,  <32.899963, 39.331013, 28.403990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365734, 39.430347, 27.845146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084461, 39.176739, 27.716427>,  <32.915699, 39.024574, 27.639194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084461, 39.176739, 27.716427>,  <33.365734, 39.430347, 27.845146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084461, 39.176739, 27.716427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139147, 0.566555, -0.812190,
		0.697264, -0.526338, -0.486612,
		-0.703180, -0.634021, -0.321800,
		32.873508, 38.986534, 27.619886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248463, 39.732105, 27.119415>,  <33.365734, 39.430347, 27.845146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248463, 39.732105, 27.119415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960484, 39.456806, 27.155167>,  <32.787697, 39.291626, 27.176617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960484, 39.456806, 27.155167>,  <33.248463, 39.732105, 27.119415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960484, 39.456806, 27.155167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478269, 0.398686, -0.782501,
		0.502921, -0.606108, -0.616201,
		-0.719951, -0.688246, 0.089375,
		32.744499, 39.250332, 27.181980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056911, 39.491238, 26.407583>,  <33.248463, 39.732105, 27.119415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056911, 39.491238, 26.407583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733242, 39.417885, 26.630871>,  <32.539040, 39.373875, 26.764843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733242, 39.417885, 26.630871>,  <33.056911, 39.491238, 26.407583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733242, 39.417885, 26.630871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586567, 0.307531, -0.749242,
		-0.034275, -0.933701, -0.356410,
		-0.809175, -0.183378, 0.558219,
		32.490490, 39.362873, 26.798336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650761, 39.013256, 25.992241>,  <33.056911, 39.491238, 26.407583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650761, 39.013256, 25.992241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389812, 39.173134, 26.249815>,  <32.233242, 39.269062, 26.404360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.389812, 39.173134, 26.249815>,  <32.650761, 39.013256, 25.992241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389812, 39.173134, 26.249815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588568, 0.268112, -0.762695,
		-0.477493, -0.876561, 0.060339,
		-0.652371, 0.399696, 0.643938,
		32.194099, 39.293041, 26.442997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945492, 38.801125, 25.848030>,  <32.650761, 39.013256, 25.992241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945492, 38.801125, 25.848030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909279, 39.145969, 26.047457>,  <31.887550, 39.352875, 26.167112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.909279, 39.145969, 26.047457>,  <31.945492, 38.801125, 25.848030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909279, 39.145969, 26.047457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679064, 0.312755, -0.664121,
		-0.728475, -0.398684, 0.557114,
		-0.090534, 0.862111, 0.498566,
		31.882118, 39.404602, 26.197027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167381, 38.915768, 25.857464>,  <31.945492, 38.801125, 25.848030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167381, 38.915768, 25.857464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344818, 39.266815, 25.930134>,  <31.451281, 39.477444, 25.973736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344818, 39.266815, 25.930134>,  <31.167381, 38.915768, 25.857464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344818, 39.266815, 25.930134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601640, 0.441846, -0.665433,
		-0.664271, 0.185877, 0.724012,
		0.443591, 0.877623, 0.181675,
		31.477896, 39.530102, 25.984636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613401, 39.289345, 25.879652>,  <31.167381, 38.915768, 25.857464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613401, 39.289345, 25.879652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900660, 39.565926, 25.848257>,  <31.073013, 39.731876, 25.829420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900660, 39.565926, 25.848257>,  <30.613401, 39.289345, 25.879652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900660, 39.565926, 25.848257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586795, 0.541060, -0.602433,
		-0.374088, 0.478691, 0.794301,
		0.718143, 0.691455, -0.078490,
		31.116102, 39.773361, 25.824711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273151, 39.970619, 25.936932>,  <30.613401, 39.289345, 25.879652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273151, 39.970619, 25.936932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615732, 40.018208, 25.736000>,  <30.821281, 40.046761, 25.615440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615732, 40.018208, 25.736000>,  <30.273151, 39.970619, 25.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615732, 40.018208, 25.736000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490488, 0.490966, -0.719982,
		0.160967, 0.863017, 0.478844,
		0.856452, 0.118974, -0.502329,
		30.872667, 40.053898, 25.585302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194468, 40.602497, 25.682255>,  <30.273151, 39.970619, 25.936932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194468, 40.602497, 25.682255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527166, 40.510403, 25.480188>,  <30.726786, 40.455147, 25.358950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527166, 40.510403, 25.480188>,  <30.194468, 40.602497, 25.682255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527166, 40.510403, 25.480188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068422, 0.860499, -0.504837,
		0.550925, 0.454461, 0.699963,
		0.831746, -0.230234, -0.505165,
		30.776690, 40.441334, 25.328638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520426, 41.271515, 25.401394>,  <30.194468, 40.602497, 25.682255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520426, 41.271515, 25.401394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674019, 40.978012, 25.177193>,  <30.766174, 40.801910, 25.042673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674019, 40.978012, 25.177193>,  <30.520426, 41.271515, 25.401394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674019, 40.978012, 25.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032490, 0.595925, -0.802383,
		0.922767, 0.326313, 0.204987,
		0.383985, -0.733753, -0.560502,
		30.789215, 40.757885, 25.009043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264996, 41.317467, 25.165163>,  <30.520426, 41.271515, 25.401394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264996, 41.317467, 25.165163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053019, 41.109680, 24.897038>,  <30.925833, 40.985008, 24.736162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053019, 41.109680, 24.897038>,  <31.264996, 41.317467, 25.165163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053019, 41.109680, 24.897038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038081, 0.804209, -0.593125,
		0.847182, -0.288792, -0.445962,
		-0.529937, -0.519468, -0.670313,
		30.894037, 40.953842, 24.695944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511742, 41.580772, 24.492962>,  <31.264996, 41.317467, 25.165163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511742, 41.580772, 24.492962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199234, 41.356773, 24.382677>,  <31.011728, 41.222374, 24.316505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199234, 41.356773, 24.382677>,  <31.511742, 41.580772, 24.492962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199234, 41.356773, 24.382677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150002, 0.597208, -0.787935,
		0.605920, -0.574219, -0.550576,
		-0.781256, -0.560012, -0.275726,
		30.964853, 41.188774, 24.299963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.637756, 41.576569, 23.855906>,  <31.511742, 41.580772, 24.492962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.637756, 41.576569, 23.855906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262545, 41.441341, 23.886398>,  <31.037418, 41.360207, 23.904694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262545, 41.441341, 23.886398>,  <31.637756, 41.576569, 23.855906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262545, 41.441341, 23.886398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260750, 0.543595, -0.797818,
		0.228277, -0.768254, -0.598059,
		-0.938029, -0.338068, 0.076232,
		30.981136, 41.339920, 23.909267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511497, 41.271564, 23.194790>,  <31.637756, 41.576569, 23.855906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511497, 41.271564, 23.194790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199423, 41.423527, 23.393578>,  <31.012178, 41.514706, 23.512850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199423, 41.423527, 23.393578>,  <31.511497, 41.271564, 23.194790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199423, 41.423527, 23.393578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221160, 0.575631, -0.787234,
		-0.585145, -0.724100, -0.365081,
		-0.780188, 0.379905, 0.496970,
		30.965366, 41.537498, 23.542669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906530, 41.257698, 22.750530>,  <31.511497, 41.271564, 23.194790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906530, 41.257698, 22.750530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843700, 41.548950, 23.017408>,  <30.806004, 41.723701, 23.177534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843700, 41.548950, 23.017408>,  <30.906530, 41.257698, 22.750530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843700, 41.548950, 23.017408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181613, 0.642762, -0.744227,
		-0.970744, -0.238069, 0.031278,
		-0.157073, 0.728135, 0.667194,
		30.796579, 41.767391, 23.217567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281919, 41.578407, 22.556477>,  <30.906530, 41.257698, 22.750530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281919, 41.578407, 22.556477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458647, 41.844429, 22.797308>,  <30.564682, 42.004044, 22.941807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458647, 41.844429, 22.797308>,  <30.281919, 41.578407, 22.556477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458647, 41.844429, 22.797308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277484, 0.739534, -0.613264,
		-0.853113, 0.103883, 0.511280,
		0.441817, 0.665055, 0.602080,
		30.591192, 42.043945, 22.977932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737215, 42.039982, 22.787344>,  <30.281919, 41.578407, 22.556477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737215, 42.039982, 22.787344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090786, 42.218884, 22.841957>,  <30.302929, 42.326225, 22.874725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090786, 42.218884, 22.841957>,  <29.737215, 42.039982, 22.787344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090786, 42.218884, 22.841957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306241, 0.774296, -0.553789,
		-0.353401, 0.447696, 0.821387,
		0.883925, 0.447252, 0.136534,
		30.355963, 42.353058, 22.882917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517294, 42.651108, 22.913378>,  <29.737215, 42.039982, 22.787344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517294, 42.651108, 22.913378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907402, 42.701767, 22.840925>,  <30.141466, 42.732162, 22.797453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907402, 42.701767, 22.840925>,  <29.517294, 42.651108, 22.913378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907402, 42.701767, 22.840925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210440, 0.782633, -0.585833,
		0.067564, 0.609462, 0.789931,
		0.975269, 0.126651, -0.181133,
		30.199984, 42.739761, 22.786585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735739, 43.409828, 22.928005>,  <29.517294, 42.651108, 22.913378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735739, 43.409828, 22.928005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995640, 43.215858, 22.693853>,  <30.151581, 43.099476, 22.553362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.995640, 43.215858, 22.693853>,  <29.735739, 43.409828, 22.928005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995640, 43.215858, 22.693853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081823, 0.720993, -0.688094,
		0.755730, 0.494988, 0.428788,
		0.649752, -0.484928, -0.585378,
		30.190565, 43.070381, 22.518240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.080425, 44.004852, 22.765852>,  <29.735739, 43.409828, 22.928005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.080425, 44.004852, 22.765852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218258, 43.751751, 22.488470>,  <30.300959, 43.599888, 22.322041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218258, 43.751751, 22.488470>,  <30.080425, 44.004852, 22.765852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218258, 43.751751, 22.488470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102749, 0.708836, -0.697850,
		0.933116, 0.311719, 0.179237,
		0.344583, -0.632758, -0.693455,
		30.321632, 43.561924, 22.280434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.415529, 44.435425, 22.312138>,  <30.080425, 44.004852, 22.765852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.415529, 44.435425, 22.312138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363993, 44.113243, 22.080742>,  <30.333071, 43.919933, 21.941904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363993, 44.113243, 22.080742>,  <30.415529, 44.435425, 22.312138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363993, 44.113243, 22.080742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016617, 0.581514, -0.813367,
		0.991526, -0.114407, -0.061539,
		-0.128840, -0.805452, -0.578487,
		30.325340, 43.871609, 21.907196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819078, 44.603302, 21.831509>,  <30.415529, 44.435425, 22.312138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819078, 44.603302, 21.831509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584743, 44.324055, 21.666864>,  <30.444143, 44.156506, 21.568079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584743, 44.324055, 21.666864>,  <30.819078, 44.603302, 21.831509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584743, 44.324055, 21.666864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127563, 0.422126, -0.897517,
		0.800327, -0.578305, -0.158243,
		-0.585837, -0.698121, -0.411609,
		30.408993, 44.114620, 21.543383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206646, 44.096264, 21.275593>,  <30.819078, 44.603302, 21.831509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206646, 44.096264, 21.275593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815359, 44.104061, 21.192928>,  <30.580587, 44.108738, 21.143330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815359, 44.104061, 21.192928>,  <31.206646, 44.096264, 21.275593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815359, 44.104061, 21.192928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178446, 0.587577, -0.789246,
		0.106046, -0.808933, -0.578257,
		-0.978219, 0.019491, -0.206662,
		30.521894, 44.109909, 21.130930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146957, 44.121311, 20.524740>,  <31.206646, 44.096264, 21.275593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146957, 44.121311, 20.524740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773991, 44.213898, 20.635750>,  <30.550211, 44.269451, 20.702356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.773991, 44.213898, 20.635750>,  <31.146957, 44.121311, 20.524740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773991, 44.213898, 20.635750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091442, 0.591848, -0.800846,
		-0.349622, -0.772101, -0.530683,
		-0.932418, 0.231467, 0.277526,
		30.494265, 44.283337, 20.719007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687119, 44.025093, 19.924006>,  <31.146957, 44.121311, 20.524740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687119, 44.025093, 19.924006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483599, 44.273026, 20.162979>,  <30.361486, 44.421787, 20.306362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483599, 44.273026, 20.162979>,  <30.687119, 44.025093, 19.924006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483599, 44.273026, 20.162979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138486, 0.626006, -0.767423,
		-0.849672, -0.473202, -0.232674,
		-0.508801, 0.619836, 0.597432,
		30.330957, 44.458977, 20.342209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.017778, 44.194969, 19.573179>,  <30.687119, 44.025093, 19.924006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.017778, 44.194969, 19.573179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090960, 44.496559, 19.825544>,  <30.134869, 44.677513, 19.976963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090960, 44.496559, 19.825544>,  <30.017778, 44.194969, 19.573179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090960, 44.496559, 19.825544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232238, 0.656728, -0.717477,
		-0.955297, -0.015257, 0.295253,
		0.182954, 0.753973, 0.630914,
		30.145845, 44.722752, 20.014818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361265, 44.608662, 19.595455>,  <30.017778, 44.194969, 19.573179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361265, 44.608662, 19.595455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657694, 44.837761, 19.735611>,  <29.835552, 44.975220, 19.819704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.657694, 44.837761, 19.735611>,  <29.361265, 44.608662, 19.595455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657694, 44.837761, 19.735611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275768, 0.735453, -0.618920,
		-0.612178, 0.362039, 0.702969,
		0.741074, 0.572745, 0.350389,
		29.880016, 45.009586, 19.840727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212645, 45.362164, 19.753046>,  <29.361265, 44.608662, 19.595455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212645, 45.362164, 19.753046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597788, 45.340412, 19.647259>,  <29.828875, 45.327362, 19.583786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597788, 45.340412, 19.647259>,  <29.212645, 45.362164, 19.753046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597788, 45.340412, 19.647259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150563, 0.704948, -0.693094,
		0.224123, 0.707171, 0.670579,
		0.962860, -0.054374, -0.264469,
		29.886646, 45.324100, 19.567919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477243, 46.021492, 19.729536>,  <29.212645, 45.362164, 19.753046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477243, 46.021492, 19.729536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658041, 45.781593, 19.465414>,  <29.766520, 45.637653, 19.306940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.658041, 45.781593, 19.465414>,  <29.477243, 46.021492, 19.729536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658041, 45.781593, 19.465414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058097, 0.718872, -0.692710,
		0.890127, 0.351462, 0.290083,
		0.451994, -0.599747, -0.660307,
		29.793638, 45.601669, 19.267323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150177, 46.220722, 19.538260>,  <29.477243, 46.021492, 19.729536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150177, 46.220722, 19.538260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973375, 46.039795, 19.228409>,  <29.867294, 45.931240, 19.042500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973375, 46.039795, 19.228409>,  <30.150177, 46.220722, 19.538260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973375, 46.039795, 19.228409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224631, 0.780231, -0.583764,
		0.868433, -0.432029, -0.243259,
		-0.442001, -0.452316, -0.774626,
		29.840775, 45.904099, 18.996021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.643402, 46.158329, 18.966179>,  <30.150177, 46.220722, 19.538260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.643402, 46.158329, 18.966179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248260, 46.180996, 18.908298>,  <30.011175, 46.194595, 18.873571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248260, 46.180996, 18.908298>,  <30.643402, 46.158329, 18.966179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248260, 46.180996, 18.908298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095513, 0.955906, -0.277707,
		0.122582, -0.288154, -0.949706,
		-0.987852, 0.056668, -0.144700,
		29.951904, 46.197998, 18.864889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737095, 46.833378, 18.782196>,  <30.643402, 46.158329, 18.966179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737095, 46.833378, 18.782196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350492, 46.731899, 18.797710>,  <30.118530, 46.671013, 18.807020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350492, 46.731899, 18.797710>,  <30.737095, 46.833378, 18.782196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350492, 46.731899, 18.797710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251198, 0.966098, 0.059613,
		-0.052596, 0.047873, -0.997468,
		-0.966505, -0.253697, 0.038788,
		30.060541, 46.655788, 18.809347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790537, 47.625065, 18.855436>,  <30.737095, 46.833378, 18.782196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790537, 47.625065, 18.855436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922396, 47.388607, 18.560986>,  <31.001511, 47.246731, 18.384315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922396, 47.388607, 18.560986>,  <30.790537, 47.625065, 18.855436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922396, 47.388607, 18.560986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823028, 0.561947, -0.082706,
		0.462555, -0.578588, 0.671773,
		0.329648, -0.591144, -0.736126,
		31.021290, 47.211266, 18.340147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447912, 47.350399, 18.963638>,  <30.790537, 47.625065, 18.855436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447912, 47.350399, 18.963638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442993, 47.356789, 18.563719>,  <31.440042, 47.360622, 18.323767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442993, 47.356789, 18.563719>,  <31.447912, 47.350399, 18.963638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442993, 47.356789, 18.563719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799780, 0.600294, -0.000247,
		0.600168, -0.799620, -0.020157,
		-0.012297, 0.015973, -0.999797,
		31.439304, 47.361580, 18.263781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048397, 47.243767, 18.627256>,  <31.447912, 47.350399, 18.963638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048397, 47.243767, 18.627256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844696, 47.490829, 18.387537>,  <31.722475, 47.639069, 18.243706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844696, 47.490829, 18.387537>,  <32.048397, 47.243767, 18.627256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844696, 47.490829, 18.387537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760242, 0.649229, 0.023100,
		0.403351, -0.443849, -0.800191,
		-0.509255, 0.617656, -0.599300,
		31.691919, 47.676125, 18.207747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179230, 47.246395, 19.402672>,  <32.048397, 47.243767, 18.627256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179230, 47.246395, 19.402672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848902, 47.272366, 19.626745>,  <31.650705, 47.287949, 19.761189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848902, 47.272366, 19.626745>,  <32.179230, 47.246395, 19.402672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848902, 47.272366, 19.626745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546186, -0.155153, 0.823170,
		0.140362, 0.985754, 0.092665,
		-0.825820, 0.064929, 0.560183,
		31.601156, 47.291843, 19.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319633, 47.639587, 20.037518>,  <32.179230, 47.246395, 19.402672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319633, 47.639587, 20.037518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977259, 47.458115, 20.136749>,  <31.771833, 47.349232, 20.196287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.977259, 47.458115, 20.136749>,  <32.319633, 47.639587, 20.037518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.977259, 47.458115, 20.136749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411349, -0.306740, 0.858314,
		-0.313303, 0.836712, 0.449171,
		-0.855940, -0.453679, 0.248078,
		31.720476, 47.322010, 20.211172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262547, 47.861588, 20.774052>,  <32.319633, 47.639587, 20.037518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262547, 47.861588, 20.774052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055672, 47.523685, 20.719048>,  <31.931547, 47.320946, 20.686045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055672, 47.523685, 20.719048>,  <32.262547, 47.861588, 20.774052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055672, 47.523685, 20.719048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143364, -0.243904, 0.959144,
		-0.843779, 0.476345, 0.247251,
		-0.517189, -0.844753, -0.137511,
		31.900515, 47.270260, 20.677794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899809, 47.758392, 21.411615>,  <32.262547, 47.861588, 20.774052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899809, 47.758392, 21.411615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898966, 47.397991, 21.238092>,  <31.898460, 47.181751, 21.133978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898966, 47.397991, 21.238092>,  <31.899809, 47.758392, 21.411615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898966, 47.397991, 21.238092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068424, -0.432923, 0.898830,
		-0.997654, -0.027790, 0.062562,
		-0.002106, -0.901002, -0.433809,
		31.898335, 47.127689, 21.107950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414864, 47.417873, 21.719519>,  <31.899809, 47.758392, 21.411615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414864, 47.417873, 21.719519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624395, 47.118835, 21.556198>,  <31.750114, 46.939415, 21.458206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624395, 47.118835, 21.556198>,  <31.414864, 47.417873, 21.719519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624395, 47.118835, 21.556198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044544, -0.454631, 0.889565,
		-0.850658, -0.484167, -0.204848,
		0.523828, -0.747591, -0.408303,
		31.781544, 46.894558, 21.433708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060734, 46.693554, 21.808397>,  <31.414864, 47.417873, 21.719519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060734, 46.693554, 21.808397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456696, 46.649223, 21.773060>,  <31.694273, 46.622627, 21.751858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456696, 46.649223, 21.773060>,  <31.060734, 46.693554, 21.808397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456696, 46.649223, 21.773060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022731, -0.491121, 0.870795,
		-0.139892, -0.864013, -0.483645,
		0.989905, -0.110824, -0.088343,
		31.753668, 46.615974, 21.746557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280905, 46.168762, 22.215506>,  <31.060734, 46.693554, 21.808397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280905, 46.168762, 22.215506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659838, 46.286240, 22.164427>,  <31.887197, 46.356728, 22.133780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659838, 46.286240, 22.164427>,  <31.280905, 46.168762, 22.215506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659838, 46.286240, 22.164427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270544, -0.520541, 0.809841,
		0.171375, -0.801735, -0.572583,
		0.947331, 0.293695, -0.127697,
		31.944036, 46.374348, 22.126118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665554, 45.609951, 22.341593>,  <31.280905, 46.168762, 22.215506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665554, 45.609951, 22.341593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942873, 45.897141, 22.366446>,  <32.109264, 46.069454, 22.381357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942873, 45.897141, 22.366446>,  <31.665554, 45.609951, 22.341593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942873, 45.897141, 22.366446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428228, -0.479782, 0.765787,
		0.579623, -0.504309, -0.640085,
		0.693295, 0.717970, 0.062133,
		32.150860, 46.112530, 22.385086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268383, 45.224178, 22.477076>,  <31.665554, 45.609951, 22.341593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268383, 45.224178, 22.477076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396759, 45.596920, 22.544775>,  <32.473785, 45.820564, 22.585394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396759, 45.596920, 22.544775>,  <32.268383, 45.224178, 22.477076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396759, 45.596920, 22.544775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663190, -0.348695, 0.662262,
		0.676147, -0.100305, -0.729907,
		0.320943, 0.931853, 0.169248,
		32.493042, 45.876476, 22.595549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924538, 45.192181, 22.495243>,  <32.268383, 45.224178, 22.477076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924538, 45.192181, 22.495243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849503, 45.519413, 22.712700>,  <32.804482, 45.715752, 22.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849503, 45.519413, 22.712700>,  <32.924538, 45.192181, 22.495243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849503, 45.519413, 22.712700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684981, -0.287727, 0.669339,
		0.703997, 0.497946, -0.506398,
		-0.187590, 0.818085, 0.543642,
		32.793224, 45.764839, 22.875792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.633297, 45.399994, 22.709135>,  <32.924538, 45.192181, 22.495243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.633297, 45.399994, 22.709135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360401, 45.564693, 22.950800>,  <33.196663, 45.663513, 23.095798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360401, 45.564693, 22.950800>,  <33.633297, 45.399994, 22.709135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360401, 45.564693, 22.950800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468416, -0.388314, 0.793599,
		0.561371, 0.824422, 0.072051,
		-0.682239, 0.411753, 0.604161,
		33.155731, 45.688221, 23.132048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021793, 45.842514, 23.211863>,  <33.633297, 45.399994, 22.709135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021793, 45.842514, 23.211863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659538, 45.750019, 23.354048>,  <33.442184, 45.694523, 23.439360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659538, 45.750019, 23.354048>,  <34.021793, 45.842514, 23.211863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659538, 45.750019, 23.354048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411300, -0.274902, 0.869058,
		-0.103242, 0.933251, 0.344069,
		-0.905634, -0.231239, 0.355465,
		33.387848, 45.680649, 23.460688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921234, 46.120487, 23.934801>,  <34.021793, 45.842514, 23.211863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921234, 46.120487, 23.934801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664543, 45.818768, 23.879349>,  <33.510529, 45.637737, 23.846077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.664543, 45.818768, 23.879349>,  <33.921234, 46.120487, 23.934801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664543, 45.818768, 23.879349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403554, -0.485819, 0.775323,
		-0.652175, 0.441601, 0.616163,
		-0.641727, -0.754300, -0.138629,
		33.472027, 45.592476, 23.837761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629250, 45.972454, 24.565786>,  <33.921234, 46.120487, 23.934801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629250, 45.972454, 24.565786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526550, 45.631798, 24.383011>,  <33.464931, 45.427406, 24.273346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526550, 45.631798, 24.383011>,  <33.629250, 45.972454, 24.565786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526550, 45.631798, 24.383011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092554, -0.492281, 0.865502,
		-0.962037, 0.179923, 0.205214,
		-0.256747, -0.851638, -0.456940,
		33.449528, 45.376305, 24.245930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173698, 45.724331, 24.956860>,  <33.629250, 45.972454, 24.565786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173698, 45.724331, 24.956860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313892, 45.408752, 24.754976>,  <33.398010, 45.219406, 24.633846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313892, 45.408752, 24.754976>,  <33.173698, 45.724331, 24.956860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313892, 45.408752, 24.754976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130589, -0.492460, 0.860482,
		-0.927418, -0.367498, -0.069574,
		0.350488, -0.788942, -0.504708,
		33.419037, 45.172070, 24.603563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937790, 45.187897, 25.324471>,  <33.173698, 45.724331, 24.956860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937790, 45.187897, 25.324471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199543, 45.002163, 25.085747>,  <33.356594, 44.890724, 24.942513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199543, 45.002163, 25.085747>,  <32.937790, 45.187897, 25.324471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199543, 45.002163, 25.085747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191357, -0.661881, 0.724773,
		-0.731555, -0.588479, -0.344266,
		0.654377, -0.464334, -0.596812,
		33.395855, 44.862862, 24.906704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.749405, 44.448517, 25.206507>,  <32.937790, 45.187897, 25.324471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.749405, 44.448517, 25.206507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145374, 44.495609, 25.175026>,  <33.382954, 44.523865, 25.156137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145374, 44.495609, 25.175026>,  <32.749405, 44.448517, 25.206507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145374, 44.495609, 25.175026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134433, -0.606463, 0.783665,
		0.044532, -0.786347, -0.616178,
		0.989921, 0.117733, -0.078704,
		33.442352, 44.530930, 25.151415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971874, 43.764141, 25.228567>,  <32.749405, 44.448517, 25.206507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971874, 43.764141, 25.228567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299511, 43.977215, 25.313730>,  <33.496094, 44.105061, 25.364828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299511, 43.977215, 25.313730>,  <32.971874, 43.764141, 25.228567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299511, 43.977215, 25.313730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130530, -0.534474, 0.835045,
		0.558610, -0.656190, -0.507316,
		0.819095, 0.532685, 0.212910,
		33.545238, 44.137020, 25.377604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412289, 43.255325, 25.461538>,  <32.971874, 43.764141, 25.228567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412289, 43.255325, 25.461538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594978, 43.585621, 25.593941>,  <33.704594, 43.783798, 25.673382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594978, 43.585621, 25.593941>,  <33.412289, 43.255325, 25.461538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594978, 43.585621, 25.593941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129660, -0.429895, 0.893520,
		0.880109, -0.365174, -0.303408,
		0.456724, 0.825735, 0.331006,
		33.731995, 43.833340, 25.693243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894123, 43.011978, 25.891922>,  <33.412289, 43.255325, 25.461538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894123, 43.011978, 25.891922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878353, 43.395687, 26.003809>,  <33.868893, 43.625912, 26.070940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878353, 43.395687, 26.003809>,  <33.894123, 43.011978, 25.891922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878353, 43.395687, 26.003809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305339, -0.254977, 0.917472,
		0.951427, 0.121579, -0.282852,
		-0.039424, 0.959273, 0.279715,
		33.866528, 43.683468, 26.087723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637726, 43.168041, 26.115656>,  <33.894123, 43.011978, 25.891922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637726, 43.168041, 26.115656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367477, 43.411484, 26.282095>,  <34.205330, 43.557549, 26.381958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367477, 43.411484, 26.282095>,  <34.637726, 43.168041, 26.115656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367477, 43.411484, 26.282095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289579, -0.299967, 0.908936,
		0.677998, 0.734589, 0.026425,
		-0.675620, 0.608605, 0.416098,
		34.164791, 43.594067, 26.406925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005585, 43.560417, 26.551821>,  <34.637726, 43.168041, 26.115656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005585, 43.560417, 26.551821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620369, 43.568943, 26.659231>,  <34.389240, 43.574059, 26.723677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620369, 43.568943, 26.659231>,  <35.005585, 43.560417, 26.551821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620369, 43.568943, 26.659231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253098, -0.269630, 0.929107,
		0.092204, 0.962728, 0.254269,
		-0.963037, 0.021312, 0.268526,
		34.331459, 43.575336, 26.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895733, 44.084618, 27.015524>,  <35.005585, 43.560417, 26.551821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895733, 44.084618, 27.015524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604496, 43.815887, 27.069983>,  <34.429756, 43.654648, 27.102657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604496, 43.815887, 27.069983>,  <34.895733, 44.084618, 27.015524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604496, 43.815887, 27.069983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332090, -0.171956, 0.927441,
		-0.599670, 0.720471, 0.348307,
		-0.728088, -0.671828, 0.136144,
		34.386070, 43.614338, 27.110826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829159, 44.099606, 27.657562>,  <34.895733, 44.084618, 27.015524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829159, 44.099606, 27.657562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648544, 43.760143, 27.547365>,  <34.540176, 43.556465, 27.481247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648544, 43.760143, 27.547365>,  <34.829159, 44.099606, 27.657562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648544, 43.760143, 27.547365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269100, -0.423909, 0.864804,
		-0.850708, 0.316352, 0.419783,
		-0.451532, -0.848660, -0.275492,
		34.513084, 43.505547, 27.464718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535656, 43.716091, 28.353331>,  <34.829159, 44.099606, 27.657562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535656, 43.716091, 28.353331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494236, 43.402809, 28.108097>,  <34.469383, 43.214840, 27.960957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.494236, 43.402809, 28.108097>,  <34.535656, 43.716091, 28.353331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494236, 43.402809, 28.108097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138093, -0.621747, 0.770948,
		-0.984992, -0.004834, 0.172535,
		-0.103547, -0.783203, -0.613083,
		34.463173, 43.167847, 27.924171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050076, 43.187077, 28.748180>,  <34.535656, 43.716091, 28.353331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050076, 43.187077, 28.748180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259674, 42.983311, 28.475145>,  <34.385433, 42.861050, 28.311323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259674, 42.983311, 28.475145>,  <34.050076, 43.187077, 28.748180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259674, 42.983311, 28.475145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188248, -0.712335, 0.676123,
		-0.830658, -0.482781, -0.277363,
		0.523994, -0.509414, -0.682589,
		34.416874, 42.830486, 28.270369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862103, 42.487564, 28.752148>,  <34.050076, 43.187077, 28.748180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862103, 42.487564, 28.752148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223267, 42.488773, 28.580219>,  <34.439964, 42.489498, 28.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.223267, 42.488773, 28.580219>,  <33.862103, 42.487564, 28.752148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223267, 42.488773, 28.580219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267228, -0.787177, 0.555825,
		-0.336667, -0.616719, -0.711556,
		0.902909, 0.003020, -0.429821,
		34.494141, 42.489677, 28.451273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080750, 41.748524, 28.674089>,  <33.862103, 42.487564, 28.752148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080750, 41.748524, 28.674089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427605, 41.946461, 28.651457>,  <34.635715, 42.065224, 28.637877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427605, 41.946461, 28.651457>,  <34.080750, 41.748524, 28.674089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427605, 41.946461, 28.651457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432171, -0.691059, 0.579366,
		0.247595, -0.526843, -0.813101,
		0.867136, 0.494847, -0.056583,
		34.687744, 42.094913, 28.634481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542015, 41.310619, 28.440500>,  <34.080750, 41.748524, 28.674089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542015, 41.310619, 28.440500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762142, 41.575706, 28.643658>,  <34.894218, 41.734760, 28.765553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762142, 41.575706, 28.643658>,  <34.542015, 41.310619, 28.440500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762142, 41.575706, 28.643658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312746, -0.727612, 0.610550,
		0.774173, -0.177153, -0.607678,
		0.550315, 0.662720, 0.507894,
		34.927238, 41.774521, 28.796026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192146, 40.970085, 28.605162>,  <34.542015, 41.310619, 28.440500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192146, 40.970085, 28.605162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175846, 41.278522, 28.859329>,  <35.166065, 41.463585, 29.011829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175846, 41.278522, 28.859329>,  <35.192146, 40.970085, 28.605162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175846, 41.278522, 28.859329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417027, -0.564781, 0.712117,
		0.907980, 0.294003, -0.298553,
		-0.040747, 0.771093, 0.635417,
		35.163624, 41.509850, 29.049955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862125, 41.021042, 28.951593>,  <35.192146, 40.970085, 28.605162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862125, 41.021042, 28.951593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607723, 41.216053, 29.190861>,  <35.455082, 41.333061, 29.334421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607723, 41.216053, 29.190861>,  <35.862125, 41.021042, 28.951593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607723, 41.216053, 29.190861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424513, -0.426271, 0.798800,
		0.644422, 0.761975, 0.064149,
		-0.636010, 0.487532, 0.598166,
		35.416920, 41.362312, 29.370310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320385, 41.145588, 29.481142>,  <35.862125, 41.021042, 28.951593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320385, 41.145588, 29.481142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944740, 41.181267, 29.613874>,  <35.719353, 41.202675, 29.693514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944740, 41.181267, 29.613874>,  <36.320385, 41.145588, 29.481142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944740, 41.181267, 29.613874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214650, -0.601815, 0.769249,
		0.268316, 0.793639, 0.546026,
		-0.939112, 0.089198, 0.331831,
		35.663006, 41.208027, 29.713423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404987, 41.318459, 30.199146>,  <36.320385, 41.145588, 29.481142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404987, 41.318459, 30.199146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032406, 41.175175, 30.173586>,  <35.808857, 41.089203, 30.158249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032406, 41.175175, 30.173586>,  <36.404987, 41.318459, 30.199146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032406, 41.175175, 30.173586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151271, -0.540941, 0.827345,
		-0.330929, 0.760966, 0.558047,
		-0.931452, -0.358209, -0.063901,
		35.752972, 41.067711, 30.154415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150162, 41.426537, 30.835552>,  <36.404987, 41.318459, 30.199146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150162, 41.426537, 30.835552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916466, 41.144394, 30.674988>,  <35.776249, 40.975109, 30.578648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916466, 41.144394, 30.674988>,  <36.150162, 41.426537, 30.835552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916466, 41.144394, 30.674988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096407, -0.551421, 0.828638,
		-0.805836, 0.445422, 0.390163,
		-0.584237, -0.705361, -0.401413,
		35.741196, 40.932785, 30.554564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872952, 41.178490, 31.448540>,  <36.150162, 41.426537, 30.835552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872952, 41.178490, 31.448540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795933, 40.911823, 31.160519>,  <35.749722, 40.751823, 30.987705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795933, 40.911823, 31.160519>,  <35.872952, 41.178490, 31.448540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795933, 40.911823, 31.160519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015471, -0.735755, 0.677070,
		-0.981165, 0.119230, 0.151983,
		-0.192549, -0.666669, -0.720053,
		35.738167, 40.711823, 30.944502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302933, 40.830952, 31.670361>,  <35.872952, 41.178490, 31.448540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302933, 40.830952, 31.670361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485294, 40.594719, 31.404018>,  <35.594711, 40.452980, 31.244213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485294, 40.594719, 31.404018>,  <35.302933, 40.830952, 31.670361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485294, 40.594719, 31.404018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074723, -0.770887, 0.632574,
		-0.886886, -0.238639, -0.395582,
		0.455906, -0.590580, -0.665857,
		35.622066, 40.417545, 31.204262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011082, 40.110329, 31.817295>,  <35.302933, 40.830952, 31.670361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011082, 40.110329, 31.817295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334427, 40.019497, 31.600044>,  <35.528435, 39.964996, 31.469694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334427, 40.019497, 31.600044>,  <35.011082, 40.110329, 31.817295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334427, 40.019497, 31.600044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160648, -0.802497, 0.574623,
		-0.566345, -0.551754, -0.612226,
		0.808359, -0.227082, -0.543128,
		35.576935, 39.951370, 31.437105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845913, 39.435722, 31.706131>,  <35.011082, 40.110329, 31.817295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845913, 39.435722, 31.706131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238533, 39.503883, 31.671452>,  <35.474106, 39.544781, 31.650644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.238533, 39.503883, 31.671452>,  <34.845913, 39.435722, 31.706131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238533, 39.503883, 31.671452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191087, -0.859748, 0.473623,
		0.006166, -0.481453, -0.876450,
		0.981554, 0.170399, -0.086698,
		35.533001, 39.555004, 31.645443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208431, 38.828568, 31.409246>,  <34.845913, 39.435722, 31.706131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208431, 38.828568, 31.409246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491577, 39.022186, 31.615015>,  <35.661465, 39.138359, 31.738476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491577, 39.022186, 31.615015>,  <35.208431, 38.828568, 31.409246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491577, 39.022186, 31.615015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224088, -0.844551, 0.486332,
		0.669864, -0.228979, -0.706294,
		0.707860, 0.484048, 0.514423,
		35.703934, 39.167400, 31.769342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708023, 38.247940, 31.724945>,  <35.208431, 38.828568, 31.409246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708023, 38.247940, 31.724945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892471, 38.565090, 31.884304>,  <36.003139, 38.755379, 31.979919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892471, 38.565090, 31.884304>,  <35.708023, 38.247940, 31.724945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892471, 38.565090, 31.884304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584453, -0.609222, 0.535970,
		0.667668, -0.014303, -0.744321,
		0.461123, 0.792871, 0.398399,
		36.030807, 38.802952, 32.003822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482075, 38.150352, 31.686216>,  <35.708023, 38.247940, 31.724945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482075, 38.150352, 31.686216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406883, 38.373997, 32.009216>,  <36.361767, 38.508183, 32.203014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406883, 38.373997, 32.009216>,  <36.482075, 38.150352, 31.686216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406883, 38.373997, 32.009216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537495, -0.629557, 0.561033,
		0.822048, 0.539490, -0.182176,
		-0.187981, 0.559114, 0.807499,
		36.350491, 38.541733, 32.251465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871147, 38.456478, 31.281614>,  <36.482075, 38.150352, 31.686216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871147, 38.456478, 31.281614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243549, 38.331844, 31.205561>,  <37.466991, 38.257065, 31.159929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243549, 38.331844, 31.205561>,  <36.871147, 38.456478, 31.281614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243549, 38.331844, 31.205561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074093, 0.671365, -0.737414,
		0.357415, 0.672446, 0.648128,
		0.931002, -0.311585, -0.190132,
		37.522850, 38.238369, 31.148521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295475, 39.075542, 31.262718>,  <36.871147, 38.456478, 31.281614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295475, 39.075542, 31.262718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488297, 38.794800, 31.052946>,  <37.603989, 38.626354, 30.927082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488297, 38.794800, 31.052946>,  <37.295475, 39.075542, 31.262718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488297, 38.794800, 31.052946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267844, 0.687963, -0.674513,
		0.834198, 0.184683, 0.519620,
		0.482050, -0.701854, -0.524431,
		37.632912, 38.584244, 30.895617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847256, 39.454163, 31.110748>,  <37.295475, 39.075542, 31.262718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847256, 39.454163, 31.110748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830276, 39.149750, 30.851820>,  <37.820091, 38.967102, 30.696463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830276, 39.149750, 30.851820>,  <37.847256, 39.454163, 31.110748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830276, 39.149750, 30.851820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184676, 0.630764, -0.753679,
		0.981883, -0.151534, 0.113772,
		-0.042445, -0.761035, -0.647321,
		37.817543, 38.921440, 30.657623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332233, 39.633469, 30.574312>,  <37.847256, 39.454163, 31.110748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332233, 39.633469, 30.574312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134373, 39.337505, 30.391947>,  <38.015656, 39.159927, 30.282528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134373, 39.337505, 30.391947>,  <38.332233, 39.633469, 30.574312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134373, 39.337505, 30.391947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152830, 0.442355, -0.883722,
		0.855550, -0.506809, -0.105730,
		-0.494649, -0.739910, -0.455912,
		37.985977, 39.115532, 30.255173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688099, 39.511837, 29.950871>,  <38.332233, 39.633469, 30.574312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688099, 39.511837, 29.950871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327209, 39.361889, 29.865574>,  <38.110676, 39.271919, 29.814396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327209, 39.361889, 29.865574>,  <38.688099, 39.511837, 29.950871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327209, 39.361889, 29.865574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064571, 0.371457, -0.926202,
		0.426420, -0.849405, -0.310930,
		-0.902218, -0.374874, -0.213244,
		38.056545, 39.249428, 29.801601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645527, 39.233665, 29.251623>,  <38.688099, 39.511837, 29.950871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645527, 39.233665, 29.251623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260559, 39.299511, 29.338011>,  <38.029579, 39.339020, 29.389843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260559, 39.299511, 29.338011>,  <38.645527, 39.233665, 29.251623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260559, 39.299511, 29.338011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136604, 0.393875, -0.908957,
		-0.234692, -0.904304, -0.356587,
		-0.962423, 0.164613, 0.215971,
		37.971832, 39.348896, 29.402802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282379, 38.957294, 28.676250>,  <38.645527, 39.233665, 29.251623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282379, 38.957294, 28.676250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054459, 39.214775, 28.880590>,  <37.917706, 39.369263, 29.003195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054459, 39.214775, 28.880590>,  <38.282379, 38.957294, 28.676250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054459, 39.214775, 28.880590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183105, 0.506559, -0.842538,
		-0.801121, -0.573621, -0.170774,
		-0.569805, 0.643706, 0.510848,
		37.883518, 39.407887, 29.033844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582172, 38.998699, 28.356659>,  <38.282379, 38.957294, 28.676250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582172, 38.998699, 28.356659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612419, 39.345448, 28.553766>,  <37.630566, 39.553497, 28.672029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612419, 39.345448, 28.553766>,  <37.582172, 38.998699, 28.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612419, 39.345448, 28.553766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195218, 0.497487, -0.845219,
		-0.977841, -0.032288, 0.206845,
		0.075612, 0.866870, 0.492767,
		37.635101, 39.605507, 28.701597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912048, 39.350029, 28.168501>,  <37.582172, 38.998699, 28.356659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912048, 39.350029, 28.168501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164597, 39.633694, 28.294010>,  <37.316128, 39.803894, 28.369316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.164597, 39.633694, 28.294010>,  <36.912048, 39.350029, 28.168501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164597, 39.633694, 28.294010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283988, 0.587952, -0.757405,
		-0.721608, 0.389098, 0.572612,
		0.631374, 0.709165, 0.313772,
		37.354008, 39.846443, 28.388142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466854, 40.006721, 28.183500>,  <36.912048, 39.350029, 28.168501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466854, 40.006721, 28.183500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853027, 40.110207, 28.170845>,  <37.084732, 40.172298, 28.163252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853027, 40.110207, 28.170845>,  <36.466854, 40.006721, 28.183500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853027, 40.110207, 28.170845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193464, 0.629952, -0.752152,
		-0.174661, 0.732276, 0.658230,
		0.965435, 0.258715, -0.031640,
		37.142658, 40.187820, 28.161352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468975, 40.710278, 28.320856>,  <36.466854, 40.006721, 28.183500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468975, 40.710278, 28.320856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816128, 40.665733, 28.127205>,  <37.024418, 40.639008, 28.011013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816128, 40.665733, 28.127205>,  <36.468975, 40.710278, 28.320856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816128, 40.665733, 28.127205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200161, 0.813552, -0.545958,
		0.454663, 0.570730, 0.683776,
		0.867881, -0.111362, -0.484129,
		37.076492, 40.632324, 27.981966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680893, 41.454136, 28.232931>,  <36.468975, 40.710278, 28.320856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680893, 41.454136, 28.232931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924793, 41.240700, 27.998499>,  <37.071133, 41.112637, 27.857840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924793, 41.240700, 27.998499>,  <36.680893, 41.454136, 28.232931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924793, 41.240700, 27.998499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031058, 0.754959, -0.655037,
		0.791988, 0.381204, 0.476905,
		0.609746, -0.533593, -0.586079,
		37.107716, 41.080624, 27.822676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290138, 41.931683, 28.072344>,  <36.680893, 41.454136, 28.232931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290138, 41.931683, 28.072344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220676, 41.644180, 27.803055>,  <37.178997, 41.471680, 27.641481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220676, 41.644180, 27.803055>,  <37.290138, 41.931683, 28.072344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220676, 41.644180, 27.803055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016451, 0.685631, -0.727763,
		0.984669, -0.115305, -0.130888,
		-0.173656, -0.718759, -0.673223,
		37.168579, 41.428551, 27.601088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728329, 42.091278, 27.597139>,  <37.290138, 41.931683, 28.072344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728329, 42.091278, 27.597139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482292, 41.836712, 27.410959>,  <37.334671, 41.683971, 27.299252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482292, 41.836712, 27.410959>,  <37.728329, 42.091278, 27.597139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482292, 41.836712, 27.410959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066358, 0.630020, -0.773739,
		0.785662, -0.445031, -0.429748,
		-0.615087, -0.636414, -0.465452,
		37.297768, 41.645786, 27.271324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884148, 42.120335, 26.880980>,  <37.728329, 42.091278, 27.597139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884148, 42.120335, 26.880980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524963, 41.948788, 26.841503>,  <37.309452, 41.845860, 26.817818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524963, 41.948788, 26.841503>,  <37.884148, 42.120335, 26.880980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524963, 41.948788, 26.841503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232422, 0.652607, -0.721169,
		0.373690, -0.624644, -0.685694,
		-0.897962, -0.428864, -0.098692,
		37.255573, 41.820129, 26.811895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736969, 42.309040, 26.150692>,  <37.884148, 42.120335, 26.880980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736969, 42.309040, 26.150692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382084, 42.207241, 26.304621>,  <37.169151, 42.146164, 26.396978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382084, 42.207241, 26.304621>,  <37.736969, 42.309040, 26.150692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382084, 42.207241, 26.304621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457504, 0.592934, -0.662661,
		-0.059530, -0.763978, -0.642491,
		-0.887213, -0.254494, 0.384820,
		37.115921, 42.130894, 26.420067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303265, 41.942478, 25.738699>,  <37.736969, 42.309040, 26.150692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303265, 41.942478, 25.738699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056427, 42.119926, 25.998667>,  <36.908325, 42.226395, 26.154648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.056427, 42.119926, 25.998667>,  <37.303265, 41.942478, 25.738699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056427, 42.119926, 25.998667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373787, 0.561544, -0.738209,
		-0.692445, -0.698475, -0.180704,
		-0.617093, 0.443624, 0.649919,
		36.871300, 42.253014, 26.193642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598656, 41.917217, 25.442204>,  <37.303265, 41.942478, 25.738699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598656, 41.917217, 25.442204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538422, 42.198463, 25.720182>,  <36.502281, 42.367210, 25.886971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538422, 42.198463, 25.720182>,  <36.598656, 41.917217, 25.442204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538422, 42.198463, 25.720182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578326, 0.507476, -0.638754,
		-0.801787, -0.498095, 0.330210,
		-0.150587, 0.703114, 0.694949,
		36.493244, 42.409397, 25.928667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942333, 41.984779, 25.382137>,  <36.598656, 41.917217, 25.442204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942333, 41.984779, 25.382137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083813, 42.309315, 25.568312>,  <36.168701, 42.504036, 25.680017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083813, 42.309315, 25.568312>,  <35.942333, 41.984779, 25.382137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083813, 42.309315, 25.568312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419476, 0.582346, -0.696357,
		-0.836025, 0.051060, 0.546311,
		0.353698, 0.811336, 0.465438,
		36.189922, 42.552715, 25.707943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399559, 42.492207, 25.493998>,  <35.942333, 41.984779, 25.382137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399559, 42.492207, 25.493998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736122, 42.708279, 25.500168>,  <35.938061, 42.837921, 25.503870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736122, 42.708279, 25.500168>,  <35.399559, 42.492207, 25.493998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736122, 42.708279, 25.500168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339725, 0.550932, -0.762273,
		-0.420265, 0.636142, 0.647071,
		0.841406, 0.540183, 0.015424,
		35.988544, 42.870335, 25.504795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189060, 43.196838, 25.423218>,  <35.399559, 42.492207, 25.493998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189060, 43.196838, 25.423218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575768, 43.225666, 25.325098>,  <35.807793, 43.242962, 25.266226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.575768, 43.225666, 25.325098>,  <35.189060, 43.196838, 25.423218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575768, 43.225666, 25.325098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248281, 0.493545, -0.833529,
		0.060997, 0.866729, 0.495035,
		0.966766, 0.072064, -0.245297,
		35.865799, 43.247284, 25.251509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205799, 43.840141, 25.157040>,  <35.189060, 43.196838, 25.423218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205799, 43.840141, 25.157040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502663, 43.621994, 25.001202>,  <35.680779, 43.491108, 24.907700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502663, 43.621994, 25.001202>,  <35.205799, 43.840141, 25.157040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502663, 43.621994, 25.001202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161588, 0.418546, -0.893705,
		0.650458, 0.726221, 0.222502,
		0.742155, -0.545364, -0.389596,
		35.725307, 43.458385, 24.884323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612236, 44.389893, 24.748476>,  <35.205799, 43.840141, 25.157040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612236, 44.389893, 24.748476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713741, 44.030830, 24.604351>,  <35.774647, 43.815395, 24.517876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713741, 44.030830, 24.604351>,  <35.612236, 44.389893, 24.748476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713741, 44.030830, 24.604351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294559, 0.283097, -0.912738,
		0.921324, 0.337755, -0.192571,
		0.253766, -0.897651, -0.360313,
		35.789871, 43.761536, 24.496258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043995, 44.522991, 24.169138>,  <35.612236, 44.389893, 24.748476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043995, 44.522991, 24.169138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885620, 44.157970, 24.128201>,  <35.790596, 43.938957, 24.103638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885620, 44.157970, 24.128201>,  <36.043995, 44.522991, 24.169138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885620, 44.157970, 24.128201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379520, 0.264109, -0.886686,
		0.836180, -0.312231, -0.450904,
		-0.395938, -0.912556, -0.102345,
		35.766838, 43.884205, 24.097498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143131, 44.388317, 23.432791>,  <36.043995, 44.522991, 24.169138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143131, 44.388317, 23.432791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887131, 44.099667, 23.538361>,  <35.733532, 43.926476, 23.601702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887131, 44.099667, 23.538361>,  <36.143131, 44.388317, 23.432791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887131, 44.099667, 23.538361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508991, 0.140848, -0.849170,
		0.575610, -0.677804, -0.457444,
		-0.640001, -0.721626, 0.263923,
		35.695129, 43.883179, 23.617537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127007, 43.938183, 22.836643>,  <36.143131, 44.388317, 23.432791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127007, 43.938183, 22.836643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798668, 43.891167, 23.060215>,  <35.601665, 43.862957, 23.194359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798668, 43.891167, 23.060215>,  <36.127007, 43.938183, 22.836643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798668, 43.891167, 23.060215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571129, 0.178330, -0.801256,
		-0.005494, -0.976925, -0.213511,
		-0.820842, -0.117540, 0.558930,
		35.552414, 43.855904, 23.227894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749123, 43.338795, 22.485472>,  <36.127007, 43.938183, 22.836643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749123, 43.338795, 22.485472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501907, 43.575348, 22.692659>,  <35.353577, 43.717281, 22.816973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501907, 43.575348, 22.692659>,  <35.749123, 43.338795, 22.485472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501907, 43.575348, 22.692659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642454, -0.000216, -0.766324,
		-0.453079, -0.806391, 0.380070,
		-0.618039, 0.591383, 0.517971,
		35.316494, 43.752762, 22.848051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109703, 42.946556, 22.473288>,  <35.749123, 43.338795, 22.485472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109703, 42.946556, 22.473288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025227, 43.326122, 22.567066>,  <34.974541, 43.553860, 22.623333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025227, 43.326122, 22.567066>,  <35.109703, 42.946556, 22.473288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025227, 43.326122, 22.567066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680890, 0.029267, -0.731800,
		-0.701276, -0.314182, 0.639924,
		-0.211190, 0.948912, 0.234447,
		34.961868, 43.610794, 22.637400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364697, 42.942127, 22.544481>,  <35.109703, 42.946556, 22.473288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364697, 42.942127, 22.544481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430454, 43.333641, 22.495575>,  <34.469910, 43.568550, 22.466230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430454, 43.333641, 22.495575>,  <34.364697, 42.942127, 22.544481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430454, 43.333641, 22.495575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821064, 0.067087, -0.566880,
		-0.546653, 0.193579, 0.814677,
		0.164390, 0.978788, -0.122268,
		34.479771, 43.627277, 22.458895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715282, 43.187244, 22.564844>,  <34.364697, 42.942127, 22.544481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715282, 43.187244, 22.564844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936798, 43.489639, 22.425241>,  <34.069706, 43.671078, 22.341480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936798, 43.489639, 22.425241>,  <33.715282, 43.187244, 22.564844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936798, 43.489639, 22.425241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728986, 0.237644, -0.641954,
		-0.402369, 0.609926, 0.682707,
		0.553786, 0.755986, -0.349006,
		34.102936, 43.716434, 22.320539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300789, 43.754063, 22.582405>,  <33.715282, 43.187244, 22.564844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300789, 43.754063, 22.582405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573318, 43.826538, 22.298723>,  <33.736835, 43.870026, 22.128513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573318, 43.826538, 22.298723>,  <33.300789, 43.754063, 22.582405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573318, 43.826538, 22.298723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721418, 0.330251, -0.608680,
		0.123929, 0.926340, 0.355721,
		0.681321, 0.181190, -0.709205,
		33.777714, 43.880894, 22.085962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992329, 44.328148, 22.210438>,  <33.300789, 43.754063, 22.582405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992329, 44.328148, 22.210438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296848, 44.218323, 21.975479>,  <33.479561, 44.152428, 21.834503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296848, 44.218323, 21.975479>,  <32.992329, 44.328148, 22.210438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296848, 44.218323, 21.975479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555236, 0.191802, -0.809274,
		0.334859, 0.942246, -0.006427,
		0.761303, -0.274561, -0.587396,
		33.525238, 44.135956, 21.799261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.212223, 44.897217, 21.801189>,  <32.992329, 44.328148, 22.210438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.212223, 44.897217, 21.801189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279572, 44.562645, 21.592564>,  <33.319981, 44.361900, 21.467388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279572, 44.562645, 21.592564>,  <33.212223, 44.897217, 21.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279572, 44.562645, 21.592564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552301, 0.358211, -0.752761,
		0.816464, 0.414807, -0.401649,
		0.168375, -0.836433, -0.521564,
		33.330086, 44.311714, 21.436094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331863, 45.099117, 21.059734>,  <33.212223, 44.897217, 21.801189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331863, 45.099117, 21.059734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263016, 44.705669, 21.038288>,  <33.221706, 44.469601, 21.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263016, 44.705669, 21.038288>,  <33.331863, 45.099117, 21.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263016, 44.705669, 21.038288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541170, 0.139897, -0.829195,
		0.823109, -0.113706, -0.556382,
		-0.172121, -0.983615, -0.053616,
		33.211380, 44.410583, 21.022203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503742, 44.992310, 20.344025>,  <33.331863, 45.099117, 21.059734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503742, 44.992310, 20.344025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305676, 44.657372, 20.436682>,  <33.186836, 44.456409, 20.492275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305676, 44.657372, 20.436682>,  <33.503742, 44.992310, 20.344025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305676, 44.657372, 20.436682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605528, 0.141430, -0.783156,
		0.623013, -0.528059, -0.577069,
		-0.495167, -0.837348, 0.231642,
		33.157124, 44.406166, 20.506174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347980, 44.735443, 19.648455>,  <33.503742, 44.992310, 20.344025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347980, 44.735443, 19.648455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095650, 44.573925, 19.913486>,  <32.944252, 44.477013, 20.072506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095650, 44.573925, 19.913486>,  <33.347980, 44.735443, 19.648455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095650, 44.573925, 19.913486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731976, 0.026377, -0.680819,
		0.257436, -0.914469, -0.312209,
		-0.630823, -0.403796, 0.662579,
		32.906403, 44.452785, 20.112261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052429, 44.235268, 19.267973>,  <33.347980, 44.735443, 19.648455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052429, 44.235268, 19.267973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826336, 44.335831, 19.582247>,  <32.690681, 44.396168, 19.770811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826336, 44.335831, 19.582247>,  <33.052429, 44.235268, 19.267973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826336, 44.335831, 19.582247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789078, 0.112956, -0.603819,
		-0.240555, -0.961267, 0.134535,
		-0.565234, 0.251410, 0.785686,
		32.656765, 44.411255, 19.817953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284882, 43.703621, 18.846216>,  <33.052429, 44.235268, 19.267973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284882, 43.703621, 18.846216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143890, 43.549465, 18.505104>,  <33.059296, 43.456970, 18.300436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143890, 43.549465, 18.505104>,  <33.284882, 43.703621, 18.846216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143890, 43.549465, 18.505104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714797, -0.699032, 0.020461,
		-0.604007, -0.602353, 0.521868,
		-0.352478, -0.385389, -0.852781,
		33.038147, 43.433849, 18.249269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873829, 43.059006, 18.772808>,  <33.284882, 43.703621, 18.846216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873829, 43.059006, 18.772808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168900, 43.141560, 18.515673>,  <33.345943, 43.191093, 18.361391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168900, 43.141560, 18.515673>,  <32.873829, 43.059006, 18.772808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168900, 43.141560, 18.515673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616589, -0.593824, 0.516906,
		-0.275049, -0.777675, -0.565305,
		0.737676, 0.206387, -0.642836,
		33.390202, 43.203476, 18.322823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216377, 42.439232, 18.551544>,  <32.873829, 43.059006, 18.772808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216377, 42.439232, 18.551544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 42.736553, 18.490370>,  <33.633167, 42.914948, 18.453665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476871, 42.736553, 18.490370>,  <33.216377, 42.439232, 18.551544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476871, 42.736553, 18.490370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701572, -0.512886, 0.494718,
		0.289289, -0.429472, -0.855492,
		0.651237, 0.743305, -0.152934,
		33.672241, 42.959545, 18.444490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765694, 42.026855, 18.491957>,  <33.216377, 42.439232, 18.551544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765694, 42.026855, 18.491957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917873, 42.395565, 18.521851>,  <34.009182, 42.616791, 18.539787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917873, 42.395565, 18.521851>,  <33.765694, 42.026855, 18.491957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917873, 42.395565, 18.521851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724741, -0.347373, 0.595048,
		0.574463, -0.172221, -0.800208,
		0.380451, 0.921777, 0.074737,
		34.032009, 42.672096, 18.544271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446690, 41.859222, 18.394962>,  <33.765694, 42.026855, 18.491957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446690, 41.859222, 18.394962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420647, 42.208721, 18.587763>,  <34.405022, 42.418423, 18.703444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420647, 42.208721, 18.587763>,  <34.446690, 41.859222, 18.394962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420647, 42.208721, 18.587763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715183, -0.295990, 0.633169,
		0.695898, 0.385945, -0.605618,
		-0.065112, 0.873749, 0.482000,
		34.401112, 42.470844, 18.732363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118122, 41.965683, 18.620173>,  <34.446690, 41.859222, 18.394962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118122, 41.965683, 18.620173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939552, 42.250938, 18.836372>,  <34.832413, 42.422092, 18.966091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939552, 42.250938, 18.836372>,  <35.118122, 41.965683, 18.620173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939552, 42.250938, 18.836372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690475, -0.109669, 0.714995,
		0.569167, 0.692390, -0.443446,
		-0.446423, 0.713140, 0.540498,
		34.805626, 42.464882, 18.998522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682606, 42.521248, 18.876488>,  <35.118122, 41.965683, 18.620173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682606, 42.521248, 18.876488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376507, 42.520721, 19.133982>,  <35.192848, 42.520405, 19.288477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376507, 42.520721, 19.133982>,  <35.682606, 42.521248, 18.876488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376507, 42.520721, 19.133982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624861, -0.241897, 0.742317,
		0.154737, 0.970301, 0.185936,
		-0.765249, -0.001320, 0.643734,
		35.146931, 42.520325, 19.327103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973133, 42.716461, 19.581436>,  <35.682606, 42.521248, 18.876488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973133, 42.716461, 19.581436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629459, 42.526665, 19.658035>,  <35.423256, 42.412788, 19.703995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629459, 42.526665, 19.658035>,  <35.973133, 42.716461, 19.581436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629459, 42.526665, 19.658035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431259, -0.470114, 0.770070,
		-0.275364, 0.744214, 0.608540,
		-0.859180, -0.474488, 0.191497,
		35.371704, 42.384319, 19.715485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894611, 42.800751, 20.320688>,  <35.973133, 42.716461, 19.581436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894611, 42.800751, 20.320688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629269, 42.512978, 20.238359>,  <35.470062, 42.340313, 20.188963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629269, 42.512978, 20.238359>,  <35.894611, 42.800751, 20.320688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629269, 42.512978, 20.238359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254550, -0.475600, 0.842027,
		-0.703673, 0.506176, 0.498627,
		-0.663361, -0.719437, -0.205820,
		35.430260, 42.297146, 20.176613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431778, 42.740269, 20.960194>,  <35.894611, 42.800751, 20.320688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431778, 42.740269, 20.960194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428051, 42.404579, 20.742714>,  <35.425816, 42.203163, 20.612226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.428051, 42.404579, 20.742714>,  <35.431778, 42.740269, 20.960194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428051, 42.404579, 20.742714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221249, -0.531979, 0.817342,
		-0.975173, -0.112675, 0.190637,
		-0.009321, -0.839227, -0.543700,
		35.425255, 42.152809, 20.579603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999374, 42.313950, 21.273020>,  <35.431778, 42.740269, 20.960194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999374, 42.313950, 21.273020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241104, 42.073589, 21.063749>,  <35.386143, 41.929375, 20.938187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.241104, 42.073589, 21.063749>,  <34.999374, 42.313950, 21.273020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.241104, 42.073589, 21.063749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167536, -0.546124, 0.820780,
		-0.778928, -0.583665, -0.229361,
		0.604320, -0.600903, -0.523176,
		35.422401, 41.893318, 20.906797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900539, 41.683151, 21.453049>,  <34.999374, 42.313950, 21.273020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900539, 41.683151, 21.453049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257065, 41.605965, 21.288939>,  <35.470982, 41.559654, 21.190474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257065, 41.605965, 21.288939>,  <34.900539, 41.683151, 21.453049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257065, 41.605965, 21.288939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270144, -0.500713, 0.822380,
		-0.364117, -0.843832, -0.394166,
		0.891314, -0.192961, -0.410274,
		35.524460, 41.548077, 21.165855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025074, 41.080841, 21.640358>,  <34.900539, 41.683151, 21.453049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025074, 41.080841, 21.640358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388111, 41.221149, 21.548069>,  <35.605934, 41.305336, 21.492695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388111, 41.221149, 21.548069>,  <35.025074, 41.080841, 21.640358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388111, 41.221149, 21.548069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352564, -0.338340, 0.872482,
		0.227981, -0.873203, -0.430745,
		0.907592, 0.350774, -0.230725,
		35.660389, 41.326382, 21.478851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504120, 40.482620, 21.673357>,  <35.025074, 41.080841, 21.640358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504120, 40.482620, 21.673357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731739, 40.811043, 21.691450>,  <35.868309, 41.008099, 21.702307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731739, 40.811043, 21.691450>,  <35.504120, 40.482620, 21.673357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731739, 40.811043, 21.691450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383240, -0.313477, 0.868826,
		0.727538, -0.477068, -0.493046,
		0.569048, 0.821059, 0.045235,
		35.902454, 41.057362, 21.705021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057796, 40.288811, 22.038956>,  <35.504120, 40.482620, 21.673357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057796, 40.288811, 22.038956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087635, 40.687382, 22.054754>,  <36.105537, 40.926525, 22.064234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087635, 40.687382, 22.054754>,  <36.057796, 40.288811, 22.038956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087635, 40.687382, 22.054754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427004, -0.067707, 0.901711,
		0.901168, -0.050396, -0.430531,
		0.074592, 0.996432, 0.039497,
		36.110012, 40.986313, 22.066603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754318, 40.352238, 22.008368>,  <36.057796, 40.288811, 22.038956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754318, 40.352238, 22.008368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574364, 40.647396, 22.209606>,  <36.466393, 40.824493, 22.330349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574364, 40.647396, 22.209606>,  <36.754318, 40.352238, 22.008368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574364, 40.647396, 22.209606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498793, -0.259675, 0.826906,
		0.740815, 0.622957, -0.251234,
		-0.449887, 0.737898, 0.503098,
		36.439396, 40.868767, 22.360535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206497, 40.610619, 22.422325>,  <36.754318, 40.352238, 22.008368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206497, 40.610619, 22.422325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873501, 40.731632, 22.607985>,  <36.673702, 40.804241, 22.719379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873501, 40.731632, 22.607985>,  <37.206497, 40.610619, 22.422325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873501, 40.731632, 22.607985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493906, 0.025670, 0.869136,
		0.251026, 0.952794, -0.170792,
		-0.832492, 0.302531, 0.464147,
		36.623753, 40.822392, 22.747229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370979, 41.139790, 22.776236>,  <37.206497, 40.610619, 22.422325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370979, 41.139790, 22.776236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031075, 41.054462, 22.969067>,  <36.827133, 41.003265, 23.084764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031075, 41.054462, 22.969067>,  <37.370979, 41.139790, 22.776236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031075, 41.054462, 22.969067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477935, 0.074132, 0.875262,
		-0.222447, 0.974166, 0.038958,
		-0.849762, -0.213319, 0.482078,
		36.776146, 40.990467, 23.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104832, 41.714375, 23.143694>,  <37.370979, 41.139790, 22.776236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104832, 41.714375, 23.143694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951706, 41.385807, 23.312794>,  <36.859833, 41.188667, 23.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951706, 41.385807, 23.312794>,  <37.104832, 41.714375, 23.143694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951706, 41.385807, 23.312794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628825, 0.103552, 0.770620,
		-0.676782, 0.560840, 0.476891,
		-0.382812, -0.821423, 0.422752,
		36.836861, 41.139381, 23.439619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021679, 41.905937, 23.961508>,  <37.104832, 41.714375, 23.143694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021679, 41.905937, 23.961508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001324, 41.508816, 23.918163>,  <36.989109, 41.270542, 23.892157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001324, 41.508816, 23.918163>,  <37.021679, 41.905937, 23.961508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001324, 41.508816, 23.918163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715744, -0.111926, 0.689335,
		-0.696506, -0.042476, 0.716293,
		-0.050892, -0.992808, -0.108359,
		36.986057, 41.210972, 23.885656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962376, 41.652725, 24.625313>,  <37.021679, 41.905937, 23.961508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962376, 41.652725, 24.625313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089970, 41.333801, 24.420357>,  <37.166527, 41.142448, 24.297382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089970, 41.333801, 24.420357>,  <36.962376, 41.652725, 24.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089970, 41.333801, 24.420357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614398, -0.237690, 0.752342,
		-0.721641, -0.554796, 0.414048,
		0.318981, -0.797311, -0.512392,
		37.185665, 41.094608, 24.266640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002571, 41.119545, 25.142887>,  <36.962376, 41.652725, 24.625313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002571, 41.119545, 25.142887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206615, 40.976345, 24.830061>,  <37.329044, 40.890427, 24.642366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206615, 40.976345, 24.830061>,  <37.002571, 41.119545, 25.142887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206615, 40.976345, 24.830061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614251, -0.484841, 0.622595,
		-0.602063, -0.797977, -0.027424,
		0.510113, -0.357996, -0.782063,
		37.359650, 40.868946, 24.595442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097847, 40.393002, 25.220667>,  <37.002571, 41.119545, 25.142887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097847, 40.393002, 25.220667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379353, 40.493473, 24.954849>,  <37.548256, 40.553757, 24.795359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379353, 40.493473, 24.954849>,  <37.097847, 40.393002, 25.220667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379353, 40.493473, 24.954849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700400, -0.401944, 0.589814,
		-0.118958, -0.880538, -0.458804,
		0.703768, 0.251183, -0.664543,
		37.590485, 40.568829, 24.755486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439816, 39.796627, 25.028532>,  <37.097847, 40.393002, 25.220667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439816, 39.796627, 25.028532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686302, 40.106422, 24.971340>,  <37.834194, 40.292301, 24.937025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686302, 40.106422, 24.971340>,  <37.439816, 39.796627, 25.028532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686302, 40.106422, 24.971340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610081, -0.354594, 0.708565,
		0.498079, -0.523856, -0.691009,
		0.616214, 0.774492, -0.142979,
		37.871166, 40.338772, 24.928446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146503, 39.512596, 24.933649>,  <37.439816, 39.796627, 25.028532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146503, 39.512596, 24.933649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203838, 39.894089, 25.039366>,  <38.238239, 40.122986, 25.102795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203838, 39.894089, 25.039366>,  <38.146503, 39.512596, 24.933649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203838, 39.894089, 25.039366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629995, -0.293881, 0.718847,
		0.763258, 0.063466, -0.642970,
		0.143334, 0.953733, 0.264291,
		38.246838, 40.180210, 25.118652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910938, 39.571941, 24.988846>,  <38.146503, 39.512596, 24.933649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910938, 39.571941, 24.988846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734669, 39.872227, 25.185715>,  <38.628906, 40.052399, 25.303835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.734669, 39.872227, 25.185715>,  <38.910938, 39.571941, 24.988846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734669, 39.872227, 25.185715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644928, -0.116597, 0.755297,
		0.624398, 0.650256, -0.432776,
		-0.440675, 0.750715, 0.492171,
		38.602467, 40.097443, 25.333366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438999, 39.925426, 25.387804>,  <38.910938, 39.571941, 24.988846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438999, 39.925426, 25.387804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111042, 40.074715, 25.561459>,  <38.914268, 40.164288, 25.665651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111042, 40.074715, 25.561459>,  <39.438999, 39.925426, 25.387804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111042, 40.074715, 25.561459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421416, -0.119857, 0.898912,
		0.387530, 0.919966, -0.059012,
		-0.819896, 0.373224, 0.434137,
		38.865074, 40.186684, 25.691700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714394, 40.338455, 25.956146>,  <39.438999, 39.925426, 25.387804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714394, 40.338455, 25.956146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332249, 40.249653, 26.034113>,  <39.102962, 40.196373, 26.080893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332249, 40.249653, 26.034113>,  <39.714394, 40.338455, 25.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332249, 40.249653, 26.034113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239304, -0.194631, 0.951237,
		-0.173241, 0.955423, 0.239070,
		-0.955364, -0.222004, 0.194919,
		39.045639, 40.183052, 26.092588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619663, 40.833363, 26.621780>,  <39.714394, 40.338455, 25.956146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619663, 40.833363, 26.621780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372734, 40.518890, 26.610193>,  <39.224575, 40.330208, 26.603241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372734, 40.518890, 26.610193>,  <39.619663, 40.833363, 26.621780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372734, 40.518890, 26.610193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324497, -0.287998, 0.900976,
		-0.716669, 0.546794, 0.432900,
		-0.617323, -0.786176, -0.028966,
		39.187538, 40.283039, 26.601503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302460, 40.778904, 27.256046>,  <39.619663, 40.833363, 26.621780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302460, 40.778904, 27.256046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250008, 40.417641, 27.092531>,  <39.218536, 40.200882, 26.994423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.250008, 40.417641, 27.092531>,  <39.302460, 40.778904, 27.256046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250008, 40.417641, 27.092531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340850, -0.428283, 0.836896,
		-0.930927, -0.029590, 0.364005,
		-0.131134, -0.903160, -0.408786,
		39.210667, 40.146694, 26.969896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247555, 40.324261, 27.804415>,  <39.302460, 40.778904, 27.256046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247555, 40.324261, 27.804415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333935, 40.084923, 27.495777>,  <39.385761, 39.941322, 27.310595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333935, 40.084923, 27.495777>,  <39.247555, 40.324261, 27.804415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333935, 40.084923, 27.495777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537540, -0.586851, 0.605522,
		-0.815119, -0.545521, 0.194904,
		0.215945, -0.598341, -0.771593,
		39.398720, 39.905422, 27.264299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234421, 39.691479, 28.061445>,  <39.247555, 40.324261, 27.804415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234421, 39.691479, 28.061445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399136, 39.589203, 27.711575>,  <39.497963, 39.527836, 27.501652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399136, 39.589203, 27.711575>,  <39.234421, 39.691479, 28.061445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399136, 39.589203, 27.711575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496275, -0.742090, 0.450570,
		-0.764293, -0.619617, -0.178690,
		0.411785, -0.255689, -0.874675,
		39.522671, 39.512497, 27.449173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186832, 39.005947, 27.992165>,  <39.234421, 39.691479, 28.061445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186832, 39.005947, 27.992165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483486, 39.090405, 27.737484>,  <39.661480, 39.141079, 27.584675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483486, 39.090405, 27.737484>,  <39.186832, 39.005947, 27.992165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483486, 39.090405, 27.737484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520136, -0.780387, 0.347065,
		-0.423592, -0.588569, -0.688590,
		0.741639, 0.211147, -0.636702,
		39.705978, 39.153748, 27.546473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320377, 38.386745, 27.584278>,  <39.186832, 39.005947, 27.992165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320377, 38.386745, 27.584278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652470, 38.607933, 27.612379>,  <39.851727, 38.740646, 27.629240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652470, 38.607933, 27.612379>,  <39.320377, 38.386745, 27.584278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652470, 38.607933, 27.612379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516223, -0.810296, 0.277372,
		0.210306, -0.194016, -0.958191,
		0.830232, 0.552973, 0.070255,
		39.901539, 38.773827, 27.633455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824615, 37.838837, 27.536457>,  <39.320377, 38.386745, 27.584278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824615, 37.838837, 27.536457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034058, 38.154705, 27.664368>,  <40.159725, 38.344227, 27.741114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034058, 38.154705, 27.664368>,  <39.824615, 37.838837, 27.536457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034058, 38.154705, 27.664368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534941, -0.596864, 0.597989,
		0.663077, -0.142050, -0.734949,
		0.523610, 0.789667, 0.319779,
		40.191139, 38.391605, 27.760302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565285, 37.581985, 27.564850>,  <39.824615, 37.838837, 27.536457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565285, 37.581985, 27.564850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543419, 37.920490, 27.776833>,  <40.530300, 38.123592, 27.904022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543419, 37.920490, 27.776833>,  <40.565285, 37.581985, 27.564850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543419, 37.920490, 27.776833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691752, -0.350652, 0.631286,
		0.720063, 0.401106, -0.566236,
		-0.054660, 0.846261, 0.529958,
		40.527020, 38.174370, 27.935820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317299, 37.712101, 27.819796>,  <40.565285, 37.581985, 27.564850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317299, 37.712101, 27.819796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083702, 37.953617, 28.036827>,  <40.943542, 38.098526, 28.167046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.083702, 37.953617, 28.036827>,  <41.317299, 37.712101, 27.819796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083702, 37.953617, 28.036827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581275, -0.155521, 0.798707,
		0.566630, 0.781829, -0.260142,
		-0.583994, 0.603786, 0.542580,
		40.908504, 38.134754, 28.199602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771034, 38.074249, 28.291365>,  <41.317299, 37.712101, 27.819796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771034, 38.074249, 28.291365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407299, 38.044991, 28.455196>,  <41.189060, 38.027435, 28.553495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407299, 38.044991, 28.455196>,  <41.771034, 38.074249, 28.291365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407299, 38.044991, 28.455196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414902, -0.232872, 0.879561,
		0.031043, 0.969753, 0.242107,
		-0.909336, -0.073146, 0.409582,
		41.134499, 38.023048, 28.578072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867115, 38.316010, 28.829124>,  <41.771034, 38.074249, 28.291365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867115, 38.316010, 28.829124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548527, 38.080746, 28.885252>,  <41.357372, 37.939587, 28.918928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548527, 38.080746, 28.885252>,  <41.867115, 38.316010, 28.829124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548527, 38.080746, 28.885252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384041, -0.312805, 0.868715,
		-0.467054, 0.745799, 0.475020,
		-0.796475, -0.588164, 0.140321,
		41.309586, 37.904297, 28.927349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888241, 38.003235, 29.590870>,  <41.867115, 38.316010, 28.829124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888241, 38.003235, 29.590870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576122, 37.792660, 29.455816>,  <41.388851, 37.666313, 29.374784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576122, 37.792660, 29.455816>,  <41.888241, 38.003235, 29.590870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576122, 37.792660, 29.455816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199594, -0.721251, 0.663294,
		-0.592700, 0.450179, 0.667866,
		-0.780300, -0.526436, -0.337633,
		41.342033, 37.634727, 29.354527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.419598, 37.928974, 30.152023>,  <41.888241, 38.003235, 29.590870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.419598, 37.928974, 30.152023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376915, 37.646019, 29.872534>,  <41.351307, 37.476246, 29.704840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.376915, 37.646019, 29.872534>,  <41.419598, 37.928974, 30.152023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.376915, 37.646019, 29.872534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159138, -0.705827, 0.690277,
		-0.981473, -0.037538, 0.187888,
		-0.106705, -0.707389, -0.698724,
		41.344902, 37.433804, 29.662916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.831562, 37.566662, 30.344446>,  <41.419598, 37.928974, 30.152023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.831562, 37.566662, 30.344446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058399, 37.323181, 30.122498>,  <41.194504, 37.177094, 29.989328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058399, 37.323181, 30.122498>,  <40.831562, 37.566662, 30.344446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058399, 37.323181, 30.122498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065724, -0.704968, 0.706187,
		-0.821027, -0.364006, -0.439789,
		0.567094, -0.608703, -0.554874,
		41.228527, 37.140572, 29.956036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518814, 36.991100, 30.251539>,  <40.831562, 37.566662, 30.344446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518814, 36.991100, 30.251539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878757, 36.853626, 30.144110>,  <41.094723, 36.771141, 30.079651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.878757, 36.853626, 30.144110>,  <40.518814, 36.991100, 30.251539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878757, 36.853626, 30.144110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087509, -0.745473, 0.660767,
		-0.427314, -0.571094, -0.700895,
		0.899858, -0.343689, -0.268575,
		41.148716, 36.750519, 30.063538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455418, 36.209904, 30.032309>,  <40.518814, 36.991100, 30.251539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455418, 36.209904, 30.032309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836658, 36.258595, 30.143150>,  <41.065403, 36.287807, 30.209656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836658, 36.258595, 30.143150>,  <40.455418, 36.209904, 30.032309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836658, 36.258595, 30.143150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098150, -0.741776, 0.663427,
		0.286304, -0.659508, -0.695038,
		0.953098, 0.121724, 0.277104,
		41.122589, 36.295113, 30.226282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561157, 35.627560, 30.307806>,  <40.455418, 36.209904, 30.032309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561157, 35.627560, 30.307806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897118, 35.826073, 30.395691>,  <41.098694, 35.945179, 30.448421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.897118, 35.826073, 30.395691>,  <40.561157, 35.627560, 30.307806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897118, 35.826073, 30.395691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157938, -0.610788, 0.775882,
		0.519255, -0.616961, -0.591382,
		0.839899, 0.496282, 0.219713,
		41.149086, 35.974957, 30.461605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013554, 35.113461, 30.426380>,  <40.561157, 35.627560, 30.307806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013554, 35.113461, 30.426380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162724, 35.417828, 30.638765>,  <41.252228, 35.600449, 30.766197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162724, 35.417828, 30.638765>,  <41.013554, 35.113461, 30.426380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162724, 35.417828, 30.638765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127083, -0.608740, 0.783126,
		0.919116, -0.224574, -0.323717,
		0.372929, 0.760922, 0.530963,
		41.274601, 35.646103, 30.798054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590755, 34.906979, 30.680717>,  <41.013554, 35.113461, 30.426380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590755, 34.906979, 30.680717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555386, 35.231205, 30.912294>,  <41.534164, 35.425739, 31.051241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555386, 35.231205, 30.912294>,  <41.590755, 34.906979, 30.680717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555386, 35.231205, 30.912294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321048, -0.527008, 0.786887,
		0.942926, 0.255445, -0.213631,
		-0.088422, 0.810562, 0.578940,
		41.528858, 35.474373, 31.085976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042694, 34.922207, 31.176544>,  <41.590755, 34.906979, 30.680717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042694, 34.922207, 31.176544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791389, 35.182495, 31.347122>,  <41.640606, 35.338669, 31.449469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.791389, 35.182495, 31.347122>,  <42.042694, 34.922207, 31.176544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.791389, 35.182495, 31.347122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266436, -0.335031, 0.903751,
		0.730961, 0.681410, 0.037111,
		-0.628258, 0.650719, 0.426447,
		41.602913, 35.377712, 31.475056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468346, 35.271717, 31.687647>,  <42.042694, 34.922207, 31.176544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468346, 35.271717, 31.687647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072441, 35.267845, 31.744614>,  <41.834900, 35.265522, 31.778793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072441, 35.267845, 31.744614>,  <42.468346, 35.271717, 31.687647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072441, 35.267845, 31.744614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139026, -0.291634, 0.946373,
		0.032377, 0.956481, 0.289993,
		-0.989759, -0.009676, 0.142418,
		41.775513, 35.264942, 31.787338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284771, 35.702648, 32.266727>,  <42.468346, 35.271717, 31.687647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284771, 35.702648, 32.266727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012421, 35.410339, 32.286228>,  <41.849010, 35.234955, 32.297928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012421, 35.410339, 32.286228>,  <42.284771, 35.702648, 32.266727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012421, 35.410339, 32.286228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273287, -0.191745, 0.942628,
		-0.679502, 0.655135, 0.330266,
		-0.680876, -0.730775, 0.048749,
		41.808159, 35.191109, 32.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875450, 35.667561, 32.919590>,  <42.284771, 35.702648, 32.266727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875450, 35.667561, 32.919590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834591, 35.291454, 32.789688>,  <41.810074, 35.065792, 32.711746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.834591, 35.291454, 32.789688>,  <41.875450, 35.667561, 32.919590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834591, 35.291454, 32.789688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217714, -0.339680, 0.914996,
		-0.970652, 0.022764, 0.239407,
		-0.102151, -0.940265, -0.324756,
		41.803947, 35.009377, 32.692261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560169, 35.328571, 33.515762>,  <41.875450, 35.667561, 32.919590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560169, 35.328571, 33.515762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709129, 35.025326, 33.301628>,  <41.798508, 34.843380, 33.173149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.709129, 35.025326, 33.301628>,  <41.560169, 35.328571, 33.515762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709129, 35.025326, 33.301628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150167, -0.519999, 0.840863,
		-0.915841, -0.393530, -0.079806,
		0.372403, -0.758113, -0.535332,
		41.820850, 34.797894, 33.141029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193081, 34.737034, 33.740295>,  <41.560169, 35.328571, 33.515762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193081, 34.737034, 33.740295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526627, 34.595867, 33.570530>,  <41.726753, 34.511169, 33.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526627, 34.595867, 33.570530>,  <41.193081, 34.737034, 33.740295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526627, 34.595867, 33.570530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195361, -0.530441, 0.824904,
		-0.516225, -0.770778, -0.373379,
		0.833874, -0.352893, -0.424407,
		41.776783, 34.489994, 33.443207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343784, 34.327530, 34.211395>,  <41.193081, 34.737034, 33.740295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343784, 34.327530, 34.211395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671913, 34.262352, 33.992115>,  <41.868790, 34.223248, 33.860546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671913, 34.262352, 33.992115>,  <41.343784, 34.327530, 34.211395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671913, 34.262352, 33.992115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330675, -0.646942, 0.687110,
		-0.466612, -0.744927, -0.476819,
		0.820321, -0.162942, -0.548200,
		41.918011, 34.213470, 33.827656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474182, 33.520424, 34.141865>,  <41.343784, 34.327530, 34.211395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474182, 33.520424, 34.141865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805111, 33.740944, 34.098770>,  <42.003670, 33.873257, 34.072914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805111, 33.740944, 34.098770>,  <41.474182, 33.520424, 34.141865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805111, 33.740944, 34.098770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439464, -0.515778, 0.735421,
		0.349866, -0.655778, -0.668991,
		0.827324, 0.551296, -0.107738,
		42.053307, 33.906334, 34.066448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.934940, 32.962784, 34.196091>,  <41.474182, 33.520424, 34.141865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.934940, 32.962784, 34.196091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101536, 33.320175, 34.263306>,  <42.201492, 33.534611, 34.303635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.101536, 33.320175, 34.263306>,  <41.934940, 32.962784, 34.196091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101536, 33.320175, 34.263306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516112, -0.384526, 0.765355,
		0.748443, -0.232033, -0.621284,
		0.416487, 0.893477, 0.168041,
		42.226482, 33.588219, 34.313717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575394, 32.815800, 34.209621>,  <41.934940, 32.962784, 34.196091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575394, 32.815800, 34.209621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470070, 33.137283, 34.423054>,  <42.406876, 33.330173, 34.551113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.470070, 33.137283, 34.423054>,  <42.575394, 32.815800, 34.209621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.470070, 33.137283, 34.423054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287627, -0.462544, 0.838644,
		0.920835, 0.374299, -0.109376,
		-0.263313, 0.803712, 0.533585,
		42.391075, 33.378399, 34.583130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987812, 32.825863, 34.771080>,  <42.575394, 32.815800, 34.209621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987812, 32.825863, 34.771080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729759, 33.095848, 34.914318>,  <42.574928, 33.257839, 35.000259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.729759, 33.095848, 34.914318>,  <42.987812, 32.825863, 34.771080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729759, 33.095848, 34.914318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006450, -0.473461, 0.880792,
		0.764045, 0.565916, 0.309798,
		-0.645131, 0.674963, 0.358095,
		42.536221, 33.298336, 35.021748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.360783, 33.095123, 35.360840>,  <42.987812, 32.825863, 34.771080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.360783, 33.095123, 35.360840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974136, 33.188927, 35.402153>,  <42.742149, 33.245209, 35.426941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974136, 33.188927, 35.402153>,  <43.360783, 33.095123, 35.360840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974136, 33.188927, 35.402153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019833, -0.333404, 0.942575,
		0.255475, 0.913153, 0.317622,
		-0.966612, 0.234505, 0.103287,
		42.684155, 33.259277, 35.433140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348511, 33.525688, 35.880913>,  <43.360783, 33.095123, 35.360840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348511, 33.525688, 35.880913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975555, 33.382065, 35.864258>,  <42.751781, 33.295891, 35.854267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.975555, 33.382065, 35.864258>,  <43.348511, 33.525688, 35.880913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975555, 33.382065, 35.864258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068926, -0.289676, 0.954640,
		-0.354831, 0.887223, 0.294838,
		-0.932386, -0.359058, -0.041633,
		42.695839, 33.274349, 35.851768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939892, 33.631882, 36.589630>,  <43.348511, 33.525688, 35.880913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939892, 33.631882, 36.589630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831448, 33.306873, 36.383209>,  <42.766380, 33.111870, 36.259357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.831448, 33.306873, 36.383209>,  <42.939892, 33.631882, 36.589630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831448, 33.306873, 36.383209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105266, -0.557947, 0.823173,
		-0.956774, 0.168850, 0.236798,
		-0.271114, -0.812517, -0.516055,
		42.750114, 33.063118, 36.228394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.698776, 33.692051, 37.228931>,  <42.939892, 33.631882, 36.589630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.698776, 33.692051, 37.228931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906796, 34.016644, 37.335548>,  <43.031609, 34.211399, 37.399517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906796, 34.016644, 37.335548>,  <42.698776, 33.692051, 37.228931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906796, 34.016644, 37.335548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136942, -0.387238, 0.911753,
		0.843087, -0.437655, -0.312509,
		0.520049, 0.811483, 0.266542,
		43.062809, 34.260090, 37.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225281, 33.413677, 37.460026>,  <42.698776, 33.692051, 37.228931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225281, 33.413677, 37.460026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170822, 33.775593, 37.621433>,  <43.138149, 33.992741, 37.718277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170822, 33.775593, 37.621433>,  <43.225281, 33.413677, 37.460026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170822, 33.775593, 37.621433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011720, -0.405807, 0.913884,
		0.990620, 0.129147, 0.044644,
		-0.136142, 0.904788, 0.403514,
		43.129978, 34.047028, 37.742489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708328, 32.910095, 37.523346>,  <43.225281, 33.413677, 37.460026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708328, 32.910095, 37.523346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338268, 32.823864, 37.398369>,  <42.116234, 32.772125, 37.323383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338268, 32.823864, 37.398369>,  <42.708328, 32.910095, 37.523346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338268, 32.823864, 37.398369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279760, 0.169122, -0.945056,
		0.256577, -0.961729, -0.096153,
		-0.925150, -0.215580, -0.312446,
		42.060722, 32.759190, 37.304634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.738861, 32.297886, 36.969177>,  <42.708328, 32.910095, 37.523346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.738861, 32.297886, 36.969177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438961, 32.562565, 36.967384>,  <42.259022, 32.721375, 36.966309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438961, 32.562565, 36.967384>,  <42.738861, 32.297886, 36.969177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438961, 32.562565, 36.967384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204028, 0.224721, -0.952824,
		-0.629478, -0.715298, -0.303491,
		-0.749753, 0.661702, -0.004485,
		42.214035, 32.761074, 36.966038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350796, 32.112850, 36.397598>,  <42.738861, 32.297886, 36.969177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350796, 32.112850, 36.397598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259068, 32.487564, 36.503311>,  <42.204033, 32.712391, 36.566738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259068, 32.487564, 36.503311>,  <42.350796, 32.112850, 36.397598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259068, 32.487564, 36.503311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031268, 0.278471, -0.959936,
		-0.972849, -0.211866, -0.093149,
		-0.229317, 0.936785, 0.264286,
		42.190273, 32.768600, 36.582596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864895, 32.341789, 35.910614>,  <42.350796, 32.112850, 36.397598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864895, 32.341789, 35.910614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024559, 32.674046, 36.065895>,  <42.120358, 32.873402, 36.159061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.024559, 32.674046, 36.065895>,  <41.864895, 32.341789, 35.910614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.024559, 32.674046, 36.065895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040676, 0.439020, -0.897556,
		-0.915977, 0.342482, 0.209028,
		0.399165, 0.830643, 0.388201,
		42.144310, 32.923237, 36.182354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456902, 32.962109, 35.756027>,  <41.864895, 32.341789, 35.910614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456902, 32.962109, 35.756027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837101, 33.070400, 35.817020>,  <42.065220, 33.135376, 35.853615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.837101, 33.070400, 35.817020>,  <41.456902, 32.962109, 35.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.837101, 33.070400, 35.817020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002093, 0.496310, -0.868143,
		-0.310710, 0.824853, 0.472310,
		0.950502, 0.270730, 0.152482,
		42.122253, 33.151619, 35.862766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463623, 33.693668, 35.577213>,  <41.456902, 32.962109, 35.756027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463623, 33.693668, 35.577213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836872, 33.555237, 35.538185>,  <42.060822, 33.472179, 35.514771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836872, 33.555237, 35.538185>,  <41.463623, 33.693668, 35.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836872, 33.555237, 35.538185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127145, 0.571399, -0.810763,
		0.336335, 0.744134, 0.577186,
		0.933120, -0.346075, -0.097568,
		42.116810, 33.451416, 35.508915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.817848, 34.273361, 35.409492>,  <41.463623, 33.693668, 35.577213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.817848, 34.273361, 35.409492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012836, 33.948250, 35.281887>,  <42.129829, 33.753181, 35.205322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.012836, 33.948250, 35.281887>,  <41.817848, 34.273361, 35.409492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012836, 33.948250, 35.281887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254045, 0.481582, -0.838773,
		0.835367, 0.327830, 0.441237,
		0.487467, -0.812777, -0.319014,
		42.159077, 33.704418, 35.186184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274570, 34.646423, 34.981998>,  <41.817848, 34.273361, 35.409492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274570, 34.646423, 34.981998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288395, 34.253044, 34.910847>,  <42.296692, 34.017017, 34.868156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.288395, 34.253044, 34.910847>,  <42.274570, 34.646423, 34.981998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288395, 34.253044, 34.910847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240585, 0.180939, -0.953614,
		0.970012, -0.009833, 0.242857,
		0.034565, -0.983445, -0.177879,
		42.298763, 33.958012, 34.857483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924030, 34.603584, 34.575020>,  <42.274570, 34.646423, 34.981998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924030, 34.603584, 34.575020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694248, 34.288719, 34.485237>,  <42.556381, 34.099800, 34.431366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694248, 34.288719, 34.485237>,  <42.924030, 34.603584, 34.575020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694248, 34.288719, 34.485237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003874, 0.276833, -0.960910,
		0.818529, -0.551127, -0.162077,
		-0.574451, -0.787161, -0.224461,
		42.521912, 34.052570, 34.417900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204288, 34.487812, 34.026745>,  <42.924030, 34.603584, 34.575020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204288, 34.487812, 34.026745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844406, 34.313286, 34.031651>,  <42.628475, 34.208569, 34.034595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844406, 34.313286, 34.031651>,  <43.204288, 34.487812, 34.026745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844406, 34.313286, 34.031651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184585, 0.354856, -0.916518,
		0.395537, -0.826866, -0.399805,
		-0.899710, -0.436315, 0.012269,
		42.574493, 34.182392, 34.035332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149532, 34.306114, 33.402649>,  <43.204288, 34.487812, 34.026745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149532, 34.306114, 33.402649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775089, 34.292377, 33.542660>,  <42.550423, 34.284134, 33.626667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775089, 34.292377, 33.542660>,  <43.149532, 34.306114, 33.402649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775089, 34.292377, 33.542660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342439, 0.315934, -0.884829,
		-0.080195, -0.948159, -0.307510,
		-0.936112, -0.034345, 0.350023,
		42.494255, 34.282074, 33.647667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668339, 34.015209, 32.942265>,  <43.149532, 34.306114, 33.402649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668339, 34.015209, 32.942265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452198, 34.265598, 33.167183>,  <42.322514, 34.415833, 33.302135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452198, 34.265598, 33.167183>,  <42.668339, 34.015209, 32.942265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452198, 34.265598, 33.167183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449206, 0.350464, -0.821820,
		-0.711500, -0.696662, 0.091816,
		-0.540353, 0.625970, 0.562300,
		42.290092, 34.453388, 33.335873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.303604, 33.946388, 32.317902>,  <42.668339, 34.015209, 32.942265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.303604, 33.946388, 32.317902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122543, 34.181637, 32.585995>,  <42.013905, 34.322784, 32.746853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122543, 34.181637, 32.585995>,  <42.303604, 33.946388, 32.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122543, 34.181637, 32.585995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600269, 0.354845, -0.716772,
		-0.659379, -0.726772, 0.192409,
		-0.452655, 0.588122, 0.670236,
		41.986748, 34.358074, 32.787067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568443, 33.806076, 32.360020>,  <42.303604, 33.946388, 32.317902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568443, 33.806076, 32.360020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627571, 34.188732, 32.460411>,  <41.663048, 34.418327, 32.520645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.627571, 34.188732, 32.460411>,  <41.568443, 33.806076, 32.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627571, 34.188732, 32.460411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625707, 0.286983, -0.725349,
		-0.765925, -0.049822, 0.640997,
		0.147817, 0.956639, 0.250981,
		41.671917, 34.475723, 32.535706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849144, 34.185131, 32.449459>,  <41.568443, 33.806076, 32.360020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849144, 34.185131, 32.449459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126041, 34.468880, 32.396423>,  <41.292179, 34.639130, 32.364601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126041, 34.468880, 32.396423>,  <40.849144, 34.185131, 32.449459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126041, 34.468880, 32.396423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650804, 0.534261, -0.539463,
		-0.311847, 0.459730, 0.831505,
		0.692248, 0.709376, -0.132586,
		41.333717, 34.681694, 32.356647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594143, 34.861782, 32.533665>,  <40.849144, 34.185131, 32.449459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594143, 34.861782, 32.533665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931946, 34.919109, 32.327259>,  <41.134628, 34.953506, 32.203415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931946, 34.919109, 32.327259>,  <40.594143, 34.861782, 32.533665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931946, 34.919109, 32.327259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497949, 0.564806, -0.658059,
		0.197135, 0.812683, 0.548347,
		0.844503, 0.143322, -0.516017,
		41.185295, 34.962105, 32.172455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533554, 35.427803, 32.009007>,  <40.594143, 34.861782, 32.533665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533554, 35.427803, 32.009007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924854, 35.376194, 31.944044>,  <41.159634, 35.345226, 31.905067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924854, 35.376194, 31.944044>,  <40.533554, 35.427803, 32.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924854, 35.376194, 31.944044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009692, 0.753687, -0.657162,
		0.207193, 0.644444, 0.736045,
		0.978252, -0.129026, -0.162404,
		41.218330, 35.337486, 31.895323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633377, 36.134171, 31.826921>,  <40.533554, 35.427803, 32.009007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633377, 36.134171, 31.826921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961716, 35.921597, 31.743212>,  <41.158718, 35.794052, 31.692986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961716, 35.921597, 31.743212>,  <40.633377, 36.134171, 31.826921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961716, 35.921597, 31.743212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204617, 0.615700, -0.760950,
		0.533245, 0.581799, 0.614134,
		0.820842, -0.531435, -0.209273,
		41.207970, 35.762165, 31.680429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212482, 36.632599, 31.788111>,  <40.633377, 36.134171, 31.826921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212482, 36.632599, 31.788111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327896, 36.297195, 31.603224>,  <41.397144, 36.095951, 31.492292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327896, 36.297195, 31.603224>,  <41.212482, 36.632599, 31.788111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327896, 36.297195, 31.603224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134478, 0.513454, -0.847515,
		0.947979, 0.182379, 0.260910,
		0.288534, -0.838513, -0.462217,
		41.414455, 36.045643, 31.464560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750839, 36.743839, 31.389441>,  <41.212482, 36.632599, 31.788111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750839, 36.743839, 31.389441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593361, 36.423557, 31.208830>,  <41.498875, 36.231388, 31.100464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593361, 36.423557, 31.208830>,  <41.750839, 36.743839, 31.389441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593361, 36.423557, 31.208830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116405, 0.443817, -0.888525,
		0.911842, -0.402366, -0.081521,
		-0.393692, -0.800705, -0.451528,
		41.475254, 36.183346, 31.073372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253254, 36.544575, 31.024401>,  <41.750839, 36.743839, 31.389441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253254, 36.544575, 31.024401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908001, 36.424103, 30.862270>,  <41.700848, 36.351818, 30.764992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908001, 36.424103, 30.862270>,  <42.253254, 36.544575, 31.024401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908001, 36.424103, 30.862270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217848, 0.502049, -0.836953,
		0.455569, -0.810701, -0.367723,
		-0.863133, -0.301182, -0.405327,
		41.649063, 36.333748, 30.740671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438793, 36.659233, 30.361612>,  <42.253254, 36.544575, 31.024401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438793, 36.659233, 30.361612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060486, 36.540401, 30.309046>,  <41.833500, 36.469101, 30.277506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060486, 36.540401, 30.309046>,  <42.438793, 36.659233, 30.361612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060486, 36.540401, 30.309046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031885, 0.487487, -0.872548,
		0.323276, -0.821037, -0.470521,
		-0.945767, -0.297077, -0.131415,
		41.776756, 36.451279, 30.269621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.349670, 36.394386, 29.693609>,  <42.438793, 36.659233, 30.361612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.349670, 36.394386, 29.693609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988064, 36.508617, 29.820852>,  <41.771099, 36.577156, 29.897198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988064, 36.508617, 29.820852>,  <42.349670, 36.394386, 29.693609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988064, 36.508617, 29.820852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053457, 0.662769, -0.746914,
		-0.424135, -0.692230, -0.583890,
		-0.904020, 0.285579, 0.318108,
		41.716858, 36.594292, 29.916285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971558, 36.407089, 29.088552>,  <42.349670, 36.394386, 29.693609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971558, 36.407089, 29.088552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743435, 36.604027, 29.351564>,  <41.606560, 36.722191, 29.509371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.743435, 36.604027, 29.351564>,  <41.971558, 36.407089, 29.088552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743435, 36.604027, 29.351564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307277, 0.614483, -0.726631,
		-0.761796, -0.616445, -0.199155,
		-0.570305, 0.492348, 0.657529,
		41.572342, 36.751732, 29.548822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118668, 35.724327, 29.510710>,  <41.971558, 36.407089, 29.088552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118668, 35.724327, 29.510710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476868, 35.861908, 29.397730>,  <42.691788, 35.944458, 29.329943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.476868, 35.861908, 29.397730>,  <42.118668, 35.724327, 29.510710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.476868, 35.861908, 29.397730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438511, -0.573385, 0.692054,
		0.076082, -0.743591, -0.664292,
		0.895500, 0.343952, -0.282449,
		42.745518, 35.965092, 29.312996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571819, 35.121346, 29.412529>,  <42.118668, 35.724327, 29.510710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571819, 35.121346, 29.412529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792274, 35.444920, 29.494371>,  <42.924549, 35.639065, 29.543476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792274, 35.444920, 29.494371>,  <42.571819, 35.121346, 29.412529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792274, 35.444920, 29.494371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583340, -0.548869, 0.598714,
		0.596623, -0.210621, -0.774390,
		0.551140, 0.808939, 0.204604,
		42.957615, 35.687603, 29.555752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320919, 35.068851, 29.384769>,  <42.571819, 35.121346, 29.412529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320919, 35.068851, 29.384769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277172, 35.348000, 29.667902>,  <43.250923, 35.515488, 29.837782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277172, 35.348000, 29.667902>,  <43.320919, 35.068851, 29.384769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277172, 35.348000, 29.667902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553380, -0.548796, 0.626573,
		0.825718, 0.460225, -0.326165,
		-0.109366, 0.697866, 0.707829,
		43.244362, 35.557358, 29.880251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078255, 35.227924, 29.625555>,  <43.320919, 35.068851, 29.384769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078255, 35.227924, 29.625555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797653, 35.357891, 29.879272>,  <43.629292, 35.435871, 30.031504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797653, 35.357891, 29.879272>,  <44.078255, 35.227924, 29.625555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797653, 35.357891, 29.879272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576665, -0.264178, 0.773090,
		0.418753, 0.908098, -0.002044,
		-0.701501, 0.324912, 0.634293,
		43.587204, 35.455364, 30.069561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.428856, 35.340130, 30.184469>,  <44.078255, 35.227924, 29.625555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.428856, 35.340130, 30.184469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076736, 35.433083, 30.349913>,  <43.865463, 35.488853, 30.449179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076736, 35.433083, 30.349913>,  <44.428856, 35.340130, 30.184469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076736, 35.433083, 30.349913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393029, -0.131064, 0.910138,
		0.265712, 0.963753, 0.024041,
		-0.880299, 0.232385, 0.413608,
		43.812645, 35.502800, 30.473995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434879, 35.897293, 30.552565>,  <44.428856, 35.340130, 30.184469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434879, 35.897293, 30.552565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196239, 35.591457, 30.650105>,  <44.053055, 35.407955, 30.708630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196239, 35.591457, 30.650105>,  <44.434879, 35.897293, 30.552565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196239, 35.591457, 30.650105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674582, -0.313173, 0.668477,
		-0.434744, 0.563314, 0.702620,
		-0.596604, -0.764591, 0.243852,
		44.017258, 35.362080, 30.723261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306305, 35.870861, 31.329117>,  <44.434879, 35.897293, 30.552565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306305, 35.870861, 31.329117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367233, 35.542023, 31.109678>,  <44.403790, 35.344719, 30.978016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.367233, 35.542023, 31.109678>,  <44.306305, 35.870861, 31.329117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.367233, 35.542023, 31.109678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415107, -0.450522, 0.790390,
		-0.896930, -0.348120, 0.272633,
		0.152324, -0.822096, -0.548594,
		44.412930, 35.295395, 30.945101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010834, 35.228985, 31.682041>,  <44.306305, 35.870861, 31.329117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010834, 35.228985, 31.682041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329590, 35.157951, 31.451065>,  <44.520844, 35.115330, 31.312479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.329590, 35.157951, 31.451065>,  <44.010834, 35.228985, 31.682041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.329590, 35.157951, 31.451065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492766, -0.361901, 0.791334,
		-0.349500, -0.915146, -0.200889,
		0.796889, -0.177580, -0.577437,
		44.568657, 35.104675, 31.277834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236504, 34.486977, 31.757421>,  <44.010834, 35.228985, 31.682041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236504, 34.486977, 31.757421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527660, 34.737759, 31.646358>,  <44.702354, 34.888229, 31.579721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.527660, 34.737759, 31.646358>,  <44.236504, 34.486977, 31.757421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.527660, 34.737759, 31.646358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497667, -0.204490, 0.842918,
		0.471695, -0.751737, -0.460863,
		0.727895, 0.626957, -0.277658,
		44.746029, 34.925846, 31.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.939579, 34.241272, 31.498047>,  <44.236504, 34.486977, 31.757421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.939579, 34.241272, 31.498047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936905, 34.582062, 31.707464>,  <44.935299, 34.786537, 31.833115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936905, 34.582062, 31.707464>,  <44.939579, 34.241272, 31.498047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936905, 34.582062, 31.707464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228135, -0.508447, 0.830323,
		0.973607, 0.124989, -0.190966,
		-0.006685, 0.851974, 0.523542,
		44.934898, 34.837654, 31.864527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.624878, 34.492733, 31.863493>,  <44.939579, 34.241272, 31.498047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.624878, 34.492733, 31.863493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303158, 34.610619, 32.069889>,  <45.110126, 34.681351, 32.193726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303158, 34.610619, 32.069889>,  <45.624878, 34.492733, 31.863493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303158, 34.610619, 32.069889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373303, -0.425007, 0.824630,
		0.462328, 0.855870, 0.231816,
		-0.804299, 0.294712, 0.515992,
		45.061867, 34.699032, 32.224686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.702984, 35.024719, 32.430546>,  <45.624878, 34.492733, 31.863493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.702984, 35.024719, 32.430546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414593, 34.759167, 32.510006>,  <45.241558, 34.599834, 32.557682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.414593, 34.759167, 32.510006>,  <45.702984, 35.024719, 32.430546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414593, 34.759167, 32.510006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415339, -0.184521, 0.890756,
		-0.554699, 0.724718, 0.408769,
		-0.720974, -0.663879, 0.198650,
		45.198299, 34.560001, 32.569599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.502296, 35.136967, 33.145031>,  <45.702984, 35.024719, 32.430546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.502296, 35.136967, 33.145031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418663, 34.751732, 33.077206>,  <45.368484, 34.520592, 33.036510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418663, 34.751732, 33.077206>,  <45.502296, 35.136967, 33.145031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418663, 34.751732, 33.077206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477096, -0.251820, 0.842001,
		-0.853618, 0.095153, 0.512135,
		-0.209085, -0.963085, -0.169561,
		45.355938, 34.462807, 33.026337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014149, 34.883278, 33.707500>,  <45.502296, 35.136967, 33.145031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014149, 34.883278, 33.707500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266094, 34.621147, 33.540733>,  <45.417259, 34.463867, 33.440674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.266094, 34.621147, 33.540733>,  <45.014149, 34.883278, 33.707500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266094, 34.621147, 33.540733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586622, 0.049552, 0.808343,
		-0.509071, -0.753717, 0.415640,
		0.629859, -0.655328, -0.416921,
		45.455051, 34.424549, 33.415657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268021, 34.414459, 34.255268>,  <45.014149, 34.883278, 33.707500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268021, 34.414459, 34.255268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521526, 34.381817, 33.947582>,  <45.673630, 34.362232, 33.762970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521526, 34.381817, 33.947582>,  <45.268021, 34.414459, 34.255268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521526, 34.381817, 33.947582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770129, -0.026553, 0.637335,
		-0.072439, -0.996311, 0.046023,
		0.633761, -0.081612, -0.769212,
		45.711655, 34.357334, 33.716820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.711048, 33.710857, 34.207977>,  <45.268021, 34.414459, 34.255268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.711048, 33.710857, 34.207977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893559, 34.038429, 34.068741>,  <46.003063, 34.234974, 33.985199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893559, 34.038429, 34.068741>,  <45.711048, 33.710857, 34.207977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893559, 34.038429, 34.068741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752887, -0.146768, 0.641577,
		0.474318, -0.554809, -0.683527,
		0.456273, 0.818930, -0.348094,
		46.030441, 34.284107, 33.964314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.363831, 33.556595, 34.312195>,  <45.711048, 33.710857, 34.207977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.363831, 33.556595, 34.312195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378250, 33.955906, 34.293682>,  <46.386902, 34.195492, 34.282574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378250, 33.955906, 34.293682>,  <46.363831, 33.556595, 34.312195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378250, 33.955906, 34.293682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924169, -0.015680, 0.381663,
		0.380280, -0.056534, -0.923142,
		0.036051, 0.998278, -0.046284,
		46.389065, 34.255390, 34.279797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051537, 33.713684, 33.985020>,  <46.363831, 33.556595, 34.312195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051537, 33.713684, 33.985020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928997, 34.011742, 34.221970>,  <46.855473, 34.190578, 34.364140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928997, 34.011742, 34.221970>,  <47.051537, 33.713684, 33.985020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928997, 34.011742, 34.221970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897267, 0.018212, 0.441111,
		0.317905, 0.666650, -0.674176,
		-0.306345, 0.745148, 0.592374,
		46.837093, 34.235287, 34.399681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.549721, 34.373924, 33.926525>,  <47.051537, 33.713684, 33.985020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.549721, 34.373924, 33.926525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346054, 34.321812, 34.266827>,  <47.223854, 34.290546, 34.471008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.346054, 34.321812, 34.266827>,  <47.549721, 34.373924, 33.926525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.346054, 34.321812, 34.266827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848967, 0.086435, 0.521329,
		-0.141452, 0.987703, 0.066592,
		-0.509163, -0.130277, 0.850753,
		47.193306, 34.282730, 34.522053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.660210, 35.004555, 34.449100>,  <47.549721, 34.373924, 33.926525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.660210, 35.004555, 34.449100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597122, 34.643295, 34.608822>,  <47.559269, 34.426540, 34.704655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.597122, 34.643295, 34.608822>,  <47.660210, 35.004555, 34.449100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.597122, 34.643295, 34.608822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888673, 0.046498, 0.456179,
		-0.430564, 0.426802, 0.795270,
		-0.157720, -0.903149, 0.399307,
		47.549805, 34.372349, 34.728615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.857319, 35.161129, 35.056282>,  <47.660210, 35.004555, 34.449100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.857319, 35.161129, 35.056282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908707, 34.767479, 35.007317>,  <47.939541, 34.531288, 34.977936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.908707, 34.767479, 35.007317>,  <47.857319, 35.161129, 35.056282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.908707, 34.767479, 35.007317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921360, 0.072779, 0.381837,
		-0.366868, -0.161841, 0.916087,
		0.128469, -0.984129, -0.122414,
		47.947247, 34.472240, 34.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.150547, 38.833012, 23.471798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773357, 38.903790, 23.584579>,  <33.547043, 38.946255, 23.652248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773357, 38.903790, 23.584579>,  <34.150547, 38.833012, 23.471798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773357, 38.903790, 23.584579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208204, -0.347383, 0.914317,
		0.259727, 0.920878, 0.290732,
		-0.942970, 0.176942, 0.281955,
		33.490467, 38.956871, 23.669167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231087, 39.151470, 24.163719>,  <34.150547, 38.833012, 23.471798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231087, 39.151470, 24.163719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.869972, 38.979797, 24.152510>,  <33.653305, 38.876793, 24.145784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.869972, 38.979797, 24.152510>,  <34.231087, 39.151470, 24.163719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869972, 38.979797, 24.152510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190058, -0.456543, 0.869164,
		-0.385823, 0.779341, 0.493729,
		-0.902784, -0.429181, -0.028025,
		33.599136, 38.851044, 24.144102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038208, 39.214802, 24.823616>,  <34.231087, 39.151470, 24.163719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038208, 39.214802, 24.823616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804943, 38.929649, 24.667810>,  <33.664986, 38.758556, 24.574327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.804943, 38.929649, 24.667810>,  <34.038208, 39.214802, 24.823616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804943, 38.929649, 24.667810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079226, -0.527108, 0.846097,
		-0.808483, 0.462553, 0.363868,
		-0.583163, -0.712883, -0.389512,
		33.629993, 38.715786, 24.550957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693100, 39.062035, 25.371031>,  <34.038208, 39.214802, 24.823616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693100, 39.062035, 25.371031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684368, 38.755852, 25.113783>,  <33.679127, 38.572144, 24.959435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684368, 38.755852, 25.113783>,  <33.693100, 39.062035, 25.371031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684368, 38.755852, 25.113783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124637, -0.640340, 0.757912,
		-0.991962, -0.063611, 0.109384,
		-0.021831, -0.765454, -0.643121,
		33.677818, 38.526215, 24.920847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262375, 38.602482, 25.634514>,  <33.693100, 39.062035, 25.371031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262375, 38.602482, 25.634514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501518, 38.379730, 25.403877>,  <33.645004, 38.246078, 25.265495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.501518, 38.379730, 25.403877>,  <33.262375, 38.602482, 25.634514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501518, 38.379730, 25.403877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193650, -0.597654, 0.778016,
		-0.777863, -0.576796, -0.249470,
		0.597853, -0.556880, -0.576590,
		33.680874, 38.212666, 25.230900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055763, 37.837498, 25.757555>,  <33.262375, 38.602482, 25.634514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055763, 37.837498, 25.757555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.431553, 37.809010, 25.623503>,  <33.657028, 37.791916, 25.543072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.431553, 37.809010, 25.623503>,  <33.055763, 37.837498, 25.757555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431553, 37.809010, 25.623503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137134, -0.818213, 0.558321,
		-0.313973, -0.570487, -0.758924,
		0.939476, -0.071224, -0.335130,
		33.713394, 37.787643, 25.522964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101585, 37.166653, 25.659790>,  <33.055763, 37.837498, 25.757555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101585, 37.166653, 25.659790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.476074, 37.306004, 25.678188>,  <33.700768, 37.389614, 25.689228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.476074, 37.306004, 25.678188>,  <33.101585, 37.166653, 25.659790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476074, 37.306004, 25.678188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272622, -0.802681, 0.530452,
		0.221716, -0.484084, -0.846466,
		0.936226, 0.348376, 0.045996,
		33.756943, 37.410515, 25.691986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475849, 36.585526, 25.945812>,  <33.101585, 37.166653, 25.659790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475849, 36.585526, 25.945812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724854, 36.897022, 25.976877>,  <33.874256, 37.083920, 25.995516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724854, 36.897022, 25.976877>,  <33.475849, 36.585526, 25.945812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724854, 36.897022, 25.976877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462917, -0.446414, 0.765782,
		0.631019, -0.440759, -0.638393,
		0.622513, 0.778746, 0.077661,
		33.911606, 37.130646, 26.000175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221268, 36.352142, 26.215143>,  <33.475849, 36.585526, 25.945812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221268, 36.352142, 26.215143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198479, 36.742805, 26.297979>,  <34.184807, 36.977203, 26.347681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198479, 36.742805, 26.297979>,  <34.221268, 36.352142, 26.215143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198479, 36.742805, 26.297979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668686, -0.116698, 0.734330,
		0.741359, 0.180315, -0.646432,
		-0.056973, 0.976662, 0.207090,
		34.181385, 37.035805, 26.360106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854507, 36.595448, 26.289009>,  <34.221268, 36.352142, 26.215143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854507, 36.595448, 26.289009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651630, 36.878838, 26.485306>,  <34.529903, 37.048870, 26.603085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.651630, 36.878838, 26.485306>,  <34.854507, 36.595448, 26.289009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651630, 36.878838, 26.485306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692170, -0.004401, 0.721721,
		0.513479, 0.705725, -0.488151,
		-0.507188, 0.708473, 0.490741,
		34.499474, 37.091381, 26.632528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223579, 37.261341, 26.472212>,  <34.854507, 36.595448, 26.289009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223579, 37.261341, 26.472212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931637, 37.186504, 26.735210>,  <34.756470, 37.141602, 26.893009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.931637, 37.186504, 26.735210>,  <35.223579, 37.261341, 26.472212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931637, 37.186504, 26.735210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674967, -0.044895, 0.736481,
		-0.108270, 0.981316, 0.159047,
		-0.729861, -0.187090, 0.657495,
		34.712677, 37.130379, 26.932459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536194, 37.553726, 27.037449>,  <35.223579, 37.261341, 26.472212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536194, 37.553726, 27.037449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245014, 37.325420, 27.189402>,  <35.070305, 37.188435, 27.280573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.245014, 37.325420, 27.189402>,  <35.536194, 37.553726, 27.037449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245014, 37.325420, 27.189402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620884, -0.313744, 0.718378,
		-0.290842, 0.758807, 0.582772,
		-0.727952, -0.570768, 0.379881,
		35.026630, 37.154190, 27.303366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538521, 37.727543, 27.668198>,  <35.536194, 37.553726, 27.037449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538521, 37.727543, 27.668198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371841, 37.364254, 27.652714>,  <35.271832, 37.146282, 27.643423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.371841, 37.364254, 27.652714>,  <35.538521, 37.727543, 27.668198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371841, 37.364254, 27.652714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625326, -0.317293, 0.712947,
		-0.659794, 0.272881, 0.700149,
		-0.416702, -0.908219, -0.038709,
		35.246830, 37.091789, 27.641102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129459, 37.642689, 28.308353>,  <35.538521, 37.727543, 27.668198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129459, 37.642689, 28.308353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221970, 37.291210, 28.141306>,  <35.277477, 37.080322, 28.041077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.221970, 37.291210, 28.141306>,  <35.129459, 37.642689, 28.308353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221970, 37.291210, 28.141306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684745, -0.157916, 0.711468,
		-0.691113, -0.450508, 0.565160,
		0.231274, -0.878695, -0.417620,
		35.291351, 37.027603, 28.016020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230484, 37.168304, 28.804085>,  <35.129459, 37.642689, 28.308353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230484, 37.168304, 28.804085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439213, 36.978825, 28.520308>,  <35.564449, 36.865135, 28.350040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.439213, 36.978825, 28.520308>,  <35.230484, 37.168304, 28.804085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439213, 36.978825, 28.520308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715982, -0.208919, 0.666125,
		-0.463759, -0.855548, 0.230142,
		0.521821, -0.473700, -0.709445,
		35.595760, 36.836716, 28.307474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673248, 36.601143, 29.172459>,  <35.230484, 37.168304, 28.804085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673248, 36.601143, 29.172459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834087, 36.632629, 28.807577>,  <35.930592, 36.651524, 28.588648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834087, 36.632629, 28.807577>,  <35.673248, 36.601143, 29.172459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834087, 36.632629, 28.807577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913081, -0.108275, 0.393142,
		-0.067822, -0.991000, -0.115414,
		0.402100, 0.078719, -0.912206,
		35.954716, 36.656246, 28.533915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983631, 35.924458, 28.902466>,  <35.673248, 36.601143, 29.172459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983631, 35.924458, 28.902466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152103, 36.239697, 28.722908>,  <36.253185, 36.428841, 28.615173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.152103, 36.239697, 28.722908>,  <35.983631, 35.924458, 28.902466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152103, 36.239697, 28.722908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904297, -0.326874, 0.274592,
		0.069674, -0.521587, -0.850348,
		0.421180, 0.788099, -0.448895,
		36.278458, 36.476128, 28.588240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.392296, 35.531189, 28.442377>,  <35.983631, 35.924458, 28.902466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.392296, 35.531189, 28.442377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545883, 35.896656, 28.495722>,  <36.638035, 36.115936, 28.527729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545883, 35.896656, 28.495722>,  <36.392296, 35.531189, 28.442377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545883, 35.896656, 28.495722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868962, -0.406396, 0.282395,
		0.312212, 0.007456, -0.949983,
		0.383964, 0.913667, 0.133360,
		36.661072, 36.170757, 28.535730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999058, 35.403286, 28.351385>,  <36.392296, 35.531189, 28.442377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999058, 35.403286, 28.351385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047291, 35.766338, 28.512218>,  <37.076229, 35.984169, 28.608719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.047291, 35.766338, 28.512218>,  <36.999058, 35.403286, 28.351385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047291, 35.766338, 28.512218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885481, -0.281438, 0.369751,
		0.448758, 0.311451, -0.837624,
		0.120580, 0.907629, 0.402082,
		37.083466, 36.038628, 28.632843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609089, 35.663960, 28.148176>,  <36.999058, 35.403286, 28.351385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609089, 35.663960, 28.148176> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517769, 35.869663, 28.478851>,  <37.462978, 35.993088, 28.677256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517769, 35.869663, 28.478851>,  <37.609089, 35.663960, 28.148176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517769, 35.869663, 28.478851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904450, -0.202249, 0.375587,
		0.360348, 0.833444, -0.418951,
		-0.228298, 0.514263, 0.826688,
		37.449280, 36.023941, 28.726858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207226, 35.882706, 28.370230>,  <37.609089, 35.663960, 28.148176>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207226, 35.882706, 28.370230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009212, 35.995655, 28.698914>,  <37.890404, 36.063427, 28.896124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.009212, 35.995655, 28.698914>,  <38.207226, 35.882706, 28.370230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009212, 35.995655, 28.698914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857124, 0.003701, 0.515097,
		0.142410, 0.959297, -0.243863,
		-0.495033, 0.282376, 0.821709,
		37.860703, 36.080368, 28.945427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388447, 36.605412, 28.591116>,  <38.207226, 35.882706, 28.370230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388447, 36.605412, 28.591116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265522, 36.351711, 28.874887>,  <38.191765, 36.199493, 29.045151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265522, 36.351711, 28.874887>,  <38.388447, 36.605412, 28.591116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265522, 36.351711, 28.874887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889962, 0.072404, 0.450251,
		-0.336936, 0.769733, 0.542204,
		-0.307315, -0.634246, 0.709429,
		38.173328, 36.161438, 29.087715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175919, 36.401390, 28.460316>,  <38.388447, 36.605412, 28.591116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175919, 36.401390, 28.460316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427441, 36.094048, 28.412580>,  <39.578354, 35.909641, 28.383940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427441, 36.094048, 28.412580>,  <39.175919, 36.401390, 28.460316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427441, 36.094048, 28.412580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139697, 0.039344, -0.989412,
		0.764913, 0.638815, -0.082597,
		0.628802, -0.768353, -0.119336,
		39.616081, 35.863541, 28.376780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533543, 36.600754, 27.949505>,  <39.175919, 36.401390, 28.460316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533543, 36.600754, 27.949505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621731, 36.210598, 27.950035>,  <39.674644, 35.976505, 27.950354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.621731, 36.210598, 27.950035>,  <39.533543, 36.600754, 27.949505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621731, 36.210598, 27.950035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122655, -0.029071, -0.992024,
		0.967651, 0.218552, -0.126046,
		0.220473, -0.975392, 0.001324,
		39.687874, 35.917980, 27.950432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140495, 36.449757, 27.482370>,  <39.533543, 36.600754, 27.949505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140495, 36.449757, 27.482370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910343, 36.126553, 27.533056>,  <39.772251, 35.932629, 27.563467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.910343, 36.126553, 27.533056>,  <40.140495, 36.449757, 27.482370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910343, 36.126553, 27.533056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079901, -0.098658, -0.991908,
		0.813977, -0.580845, -0.007795,
		-0.575376, -0.808013, 0.126715,
		39.737732, 35.884148, 27.571072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319305, 36.144318, 26.954208>,  <40.140495, 36.449757, 27.482370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319305, 36.144318, 26.954208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975723, 35.969666, 27.061199>,  <39.769573, 35.864872, 27.125393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.975723, 35.969666, 27.061199>,  <40.319305, 36.144318, 26.954208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975723, 35.969666, 27.061199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243981, -0.110257, -0.963492,
		0.450186, -0.892856, -0.011825,
		-0.858956, -0.436636, 0.267476,
		39.718037, 35.838676, 27.141441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215641, 35.590996, 26.420172>,  <40.319305, 36.144318, 26.954208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215641, 35.590996, 26.420172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871437, 35.650455, 26.615076>,  <39.664913, 35.686131, 26.732019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.871437, 35.650455, 26.615076>,  <40.215641, 35.590996, 26.420172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871437, 35.650455, 26.615076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498844, -0.051894, -0.865137,
		-0.103322, -0.987526, 0.118812,
		-0.860511, 0.148656, 0.487260,
		39.613285, 35.695053, 26.761253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750088, 35.144634, 26.161070>,  <40.215641, 35.590996, 26.420172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750088, 35.144634, 26.161070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524353, 35.434696, 26.318893>,  <39.388912, 35.608734, 26.413588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.524353, 35.434696, 26.318893>,  <39.750088, 35.144634, 26.161070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524353, 35.434696, 26.318893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440628, 0.139585, -0.886771,
		-0.698124, -0.674286, 0.240753,
		-0.564332, 0.725158, 0.394557,
		39.355053, 35.652245, 26.437260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084240, 35.087727, 25.917673>,  <39.750088, 35.144634, 26.161070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084240, 35.087727, 25.917673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058811, 35.459373, 26.063387>,  <39.043552, 35.682362, 26.150816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.058811, 35.459373, 26.063387>,  <39.084240, 35.087727, 25.917673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058811, 35.459373, 26.063387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583009, 0.261683, -0.769170,
		-0.809975, -0.261281, 0.525046,
		-0.063574, 0.929115, 0.364286,
		39.039738, 35.738110, 26.172672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410374, 35.243942, 25.816708>,  <39.084240, 35.087727, 25.917673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410374, 35.243942, 25.816708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583920, 35.601013, 25.865499>,  <38.688049, 35.815258, 25.894775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.583920, 35.601013, 25.865499>,  <38.410374, 35.243942, 25.816708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583920, 35.601013, 25.865499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527721, 0.361518, -0.768645,
		-0.730254, 0.269118, 0.627937,
		0.433867, 0.892682, 0.121981,
		38.714081, 35.868816, 25.902094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888878, 35.795433, 25.914719>,  <38.410374, 35.243942, 25.816708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888878, 35.795433, 25.914719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217293, 35.992004, 25.798519>,  <38.414341, 36.109947, 25.728800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217293, 35.992004, 25.798519>,  <37.888878, 35.795433, 25.914719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217293, 35.992004, 25.798519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502372, 0.380293, -0.776530,
		-0.271135, 0.783502, 0.559116,
		0.821041, 0.491429, -0.290499,
		38.463604, 36.139435, 25.711370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692863, 36.563023, 25.774477>,  <37.888878, 35.795433, 25.914719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692863, 36.563023, 25.774477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026661, 36.501778, 25.562752>,  <38.226940, 36.465031, 25.435717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.026661, 36.501778, 25.562752>,  <37.692863, 36.563023, 25.774477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026661, 36.501778, 25.562752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410750, 0.467466, -0.782790,
		0.367290, 0.870650, 0.327209,
		0.834495, -0.153110, -0.529315,
		38.277008, 36.455845, 25.403957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735809, 37.196690, 25.367840>,  <37.692863, 36.563023, 25.774477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735809, 37.196690, 25.367840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969383, 36.923607, 25.192142>,  <38.109528, 36.759758, 25.086723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.969383, 36.923607, 25.192142>,  <37.735809, 37.196690, 25.367840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969383, 36.923607, 25.192142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256695, 0.358030, -0.897732,
		0.770151, 0.636964, 0.033817,
		0.583930, -0.682709, -0.439243,
		38.144562, 36.718796, 25.060369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331947, 37.471012, 25.005951>,  <37.735809, 37.196690, 25.367840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331947, 37.471012, 25.005951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264530, 37.126915, 24.813463>,  <38.224079, 36.920456, 24.697969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.264530, 37.126915, 24.813463>,  <38.331947, 37.471012, 25.005951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264530, 37.126915, 24.813463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490602, 0.496651, -0.715994,
		0.854928, 0.115409, -0.505746,
		-0.168547, -0.860243, -0.481221,
		38.213966, 36.868843, 24.669098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392445, 37.621880, 24.271288>,  <38.331947, 37.471012, 25.005951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392445, 37.621880, 24.271288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202747, 37.269733, 24.274279>,  <38.088928, 37.058445, 24.276073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.202747, 37.269733, 24.274279>,  <38.392445, 37.621880, 24.271288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202747, 37.269733, 24.274279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521594, 0.274117, -0.807960,
		0.709248, -0.387071, -0.589189,
		-0.474244, -0.880361, 0.007477,
		38.060474, 37.005627, 24.276522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485340, 37.289585, 23.616217>,  <38.392445, 37.621880, 24.271288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485340, 37.289585, 23.616217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.142948, 37.138397, 23.757315>,  <37.937511, 37.047684, 23.841974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.142948, 37.138397, 23.757315>,  <38.485340, 37.289585, 23.616217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142948, 37.138397, 23.757315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439073, 0.171241, -0.881982,
		0.272966, -0.909840, -0.312539,
		-0.855982, -0.377978, 0.352743,
		37.886154, 37.025005, 23.863138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197227, 36.709408, 23.157047>,  <38.485340, 37.289585, 23.616217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197227, 36.709408, 23.157047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888355, 36.825245, 23.383278>,  <37.703033, 36.894749, 23.519016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888355, 36.825245, 23.383278>,  <38.197227, 36.709408, 23.157047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888355, 36.825245, 23.383278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555403, 0.124766, -0.822169,
		-0.308658, -0.948984, 0.064498,
		-0.772178, 0.289592, 0.565578,
		37.656700, 36.912121, 23.552952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630020, 36.467243, 22.807344>,  <38.197227, 36.709408, 23.157047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630020, 36.467243, 22.807344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450344, 36.720978, 23.059010>,  <37.342537, 36.873219, 23.210009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.450344, 36.720978, 23.059010>,  <37.630020, 36.467243, 22.807344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450344, 36.720978, 23.059010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674136, 0.221493, -0.704615,
		-0.586316, -0.740650, 0.328134,
		-0.449194, 0.634334, 0.629163,
		37.315586, 36.911278, 23.247759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057995, 36.516537, 22.531248>,  <37.630020, 36.467243, 22.807344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057995, 36.516537, 22.531248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015179, 36.811920, 22.797546>,  <36.989487, 36.989151, 22.957325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.015179, 36.811920, 22.797546>,  <37.057995, 36.516537, 22.531248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015179, 36.811920, 22.797546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687723, 0.428580, -0.585966,
		-0.718038, -0.520575, 0.461978,
		-0.107045, 0.738459, 0.665748,
		36.983067, 37.033459, 22.997271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337566, 36.528809, 22.870251>,  <37.057995, 36.516537, 22.531248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337566, 36.528809, 22.870251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489502, 36.897755, 22.898434>,  <36.580662, 37.119122, 22.915344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.489502, 36.897755, 22.898434>,  <36.337566, 36.528809, 22.870251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489502, 36.897755, 22.898434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694343, 0.334603, -0.637125,
		-0.611239, 0.193079, 0.767533,
		0.379834, 0.922367, 0.070459,
		36.603451, 37.174465, 22.919571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.612324, 37.044525, 22.919937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923965, 37.279621, 22.832699>,  <36.110950, 37.420677, 22.780355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923965, 37.279621, 22.832699>,  <35.612324, 37.044525, 22.919937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923965, 37.279621, 22.832699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621710, 0.679734, -0.389149,
		-0.080469, 0.438780, 0.894984,
		0.779102, 0.587735, -0.218096,
		36.157696, 37.455940, 22.767269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426838, 37.687366, 23.200779>,  <35.612324, 37.044525, 22.919937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426838, 37.687366, 23.200779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723549, 37.772484, 22.946381>,  <35.901573, 37.823555, 22.793741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.723549, 37.772484, 22.946381>,  <35.426838, 37.687366, 23.200779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723549, 37.772484, 22.946381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586449, 0.665860, -0.461202,
		0.325343, 0.715087, 0.618711,
		0.741774, 0.212794, -0.635995,
		35.946083, 37.836323, 22.755583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438442, 38.418034, 23.148621>,  <35.426838, 37.687366, 23.200779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438442, 38.418034, 23.148621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576958, 38.243683, 22.816332>,  <35.660065, 38.139072, 22.616959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.576958, 38.243683, 22.816332>,  <35.438442, 38.418034, 23.148621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576958, 38.243683, 22.816332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663674, 0.512030, -0.545310,
		0.663041, 0.740161, -0.111971,
		0.346284, -0.435875, -0.830722,
		35.680843, 38.112919, 22.567116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445015, 38.968220, 22.595564>,  <35.438442, 38.418034, 23.148621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445015, 38.968220, 22.595564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451042, 38.627682, 22.385805>,  <35.454659, 38.423359, 22.259951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451042, 38.627682, 22.385805>,  <35.445015, 38.968220, 22.595564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451042, 38.627682, 22.385805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485989, 0.452105, -0.747941,
		0.873835, 0.266120, -0.406930,
		0.015067, -0.851341, -0.524397,
		35.455563, 38.372280, 22.228487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498028, 39.196148, 21.957378>,  <35.445015, 38.968220, 22.595564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498028, 39.196148, 21.957378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370800, 38.825157, 21.878773>,  <35.294464, 38.602562, 21.831610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.370800, 38.825157, 21.878773>,  <35.498028, 39.196148, 21.957378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370800, 38.825157, 21.878773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532279, 0.346227, -0.772532,
		0.784544, -0.141119, -0.603801,
		-0.318072, -0.927476, -0.196516,
		35.275379, 38.546913, 21.819818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602543, 39.126434, 21.320820>,  <35.498028, 39.196148, 21.957378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602543, 39.126434, 21.320820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313244, 38.867229, 21.416311>,  <35.139664, 38.711708, 21.473606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313244, 38.867229, 21.416311>,  <35.602543, 39.126434, 21.320820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313244, 38.867229, 21.416311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588585, 0.397599, -0.703905,
		0.361217, -0.649614, -0.668972,
		-0.723249, -0.648010, 0.238734,
		35.096268, 38.672825, 21.487930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322144, 38.894451, 20.651091>,  <35.602543, 39.126434, 21.320820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322144, 38.894451, 20.651091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038719, 38.791008, 20.913710>,  <34.868664, 38.728943, 21.071281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.038719, 38.791008, 20.913710>,  <35.322144, 38.894451, 20.651091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038719, 38.791008, 20.913710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705568, 0.245947, -0.664593,
		0.010393, -0.934148, -0.356735,
		-0.708566, -0.258609, 0.656549,
		34.826149, 38.713425, 21.110674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871937, 38.502857, 20.255903>,  <35.322144, 38.894451, 20.651091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871937, 38.502857, 20.255903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631432, 38.565315, 20.569363>,  <34.487129, 38.602791, 20.757439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.631432, 38.565315, 20.569363>,  <34.871937, 38.502857, 20.255903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631432, 38.565315, 20.569363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776665, 0.116322, -0.619081,
		-0.187824, -0.980860, 0.051335,
		-0.601260, 0.156149, 0.783648,
		34.451054, 38.612160, 20.804457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269833, 38.001392, 20.225243>,  <34.871937, 38.502857, 20.255903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269833, 38.001392, 20.225243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189770, 38.336399, 20.428617>,  <34.141731, 38.537403, 20.550642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.189770, 38.336399, 20.428617>,  <34.269833, 38.001392, 20.225243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189770, 38.336399, 20.428617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648166, 0.275960, -0.709737,
		-0.734722, -0.471612, 0.487612,
		-0.200159, 0.837513, 0.508437,
		34.129723, 38.587654, 20.581148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500420, 38.103027, 20.094259>,  <34.269833, 38.001392, 20.225243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500420, 38.103027, 20.094259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592548, 38.460434, 20.248442>,  <33.647823, 38.674877, 20.340952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592548, 38.460434, 20.248442>,  <33.500420, 38.103027, 20.094259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592548, 38.460434, 20.248442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638494, 0.437679, -0.633058,
		-0.734356, -0.100306, 0.671312,
		0.230319, 0.893519, 0.385457,
		33.661644, 38.728489, 20.364079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847485, 38.479633, 20.250435>,  <33.500420, 38.103027, 20.094259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847485, 38.479633, 20.250435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130146, 38.757332, 20.195791>,  <33.299744, 38.923950, 20.163004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.130146, 38.757332, 20.195791>,  <32.847485, 38.479633, 20.250435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130146, 38.757332, 20.195791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573714, 0.449201, -0.684887,
		-0.414113, 0.562355, 0.715729,
		0.706656, 0.694244, -0.136611,
		33.342144, 38.965607, 20.154808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488289, 39.056736, 20.203812>,  <32.847485, 38.479633, 20.250435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488289, 39.056736, 20.203812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835373, 39.166176, 20.037815>,  <33.043625, 39.231838, 19.938217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835373, 39.166176, 20.037815>,  <32.488289, 39.056736, 20.203812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835373, 39.166176, 20.037815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490149, 0.609767, -0.622847,
		0.082636, 0.743859, 0.663208,
		0.867713, 0.273601, -0.414990,
		33.095688, 39.248257, 19.913319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476089, 39.730610, 20.302204>,  <32.488289, 39.056736, 20.203812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476089, 39.730610, 20.302204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761852, 39.690220, 20.025242>,  <32.933311, 39.665985, 19.859064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761852, 39.690220, 20.025242>,  <32.476089, 39.730610, 20.302204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761852, 39.690220, 20.025242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446667, 0.695886, -0.562344,
		0.538615, 0.711018, 0.452047,
		0.714410, -0.100972, -0.692404,
		32.976173, 39.659927, 19.817520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678062, 40.372757, 20.118719>,  <32.476089, 39.730610, 20.302204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678062, 40.372757, 20.118719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781841, 40.132881, 19.815914>,  <32.844109, 39.988956, 19.634232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.781841, 40.132881, 19.815914>,  <32.678062, 40.372757, 20.118719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781841, 40.132881, 19.815914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289061, 0.699697, -0.653351,
		0.921484, 0.388330, 0.008187,
		0.259445, -0.599686, -0.757011,
		32.859676, 39.952976, 19.588810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938232, 40.829514, 19.636213>,  <32.678062, 40.372757, 20.118719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938232, 40.829514, 19.636213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856575, 40.501556, 19.422258>,  <32.807583, 40.304783, 19.293884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856575, 40.501556, 19.422258>,  <32.938232, 40.829514, 19.636213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856575, 40.501556, 19.422258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292755, 0.572520, -0.765843,
		0.934142, 0.000252, -0.356901,
		-0.204140, -0.819890, -0.534889,
		32.795334, 40.255589, 19.261791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316837, 40.925323, 18.977621>,  <32.938232, 40.829514, 19.636213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316837, 40.925323, 18.977621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001831, 40.686600, 18.916128>,  <32.812828, 40.543365, 18.879232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001831, 40.686600, 18.916128>,  <33.316837, 40.925323, 18.977621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001831, 40.686600, 18.916128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267150, 0.555377, -0.787520,
		0.555377, -0.579118, -0.596807,
		0.787520, 0.596807, 0.153731,
		32.765575, 40.507557, 18.870008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344780, 40.696831, 18.313576>,  <33.316837, 40.925323, 18.977621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344780, 40.696831, 18.313576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961235, 40.652435, 18.418083>,  <32.731110, 40.625797, 18.480787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961235, 40.652435, 18.418083>,  <33.344780, 40.696831, 18.313576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961235, 40.652435, 18.418083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279120, 0.536265, -0.796562,
		-0.051700, -0.836720, -0.545185,
		-0.958863, -0.110990, 0.261270,
		32.673576, 40.619137, 18.496464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024708, 40.921440, 17.692049>,  <33.344780, 40.696831, 18.313576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024708, 40.921440, 17.692049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705845, 40.865196, 17.926918>,  <32.514526, 40.831451, 18.067839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.705845, 40.865196, 17.926918>,  <33.024708, 40.921440, 17.692049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705845, 40.865196, 17.926918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514533, 0.667038, -0.538810,
		-0.315904, -0.731635, -0.604082,
		-0.797157, -0.140608, 0.587171,
		32.466698, 40.823013, 18.103069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407200, 40.695744, 17.318285>,  <33.024708, 40.921440, 17.692049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407200, 40.695744, 17.318285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267548, 40.881241, 17.643997>,  <32.183758, 40.992538, 17.839424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267548, 40.881241, 17.643997>,  <32.407200, 40.695744, 17.318285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267548, 40.881241, 17.643997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582996, 0.572815, -0.576193,
		-0.733637, -0.675888, 0.070374,
		-0.349130, 0.463744, 0.814279,
		32.162807, 41.020363, 17.888281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747030, 40.803097, 17.083675>,  <32.407200, 40.695744, 17.318285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747030, 40.803097, 17.083675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789921, 41.055317, 17.391157>,  <31.815655, 41.206650, 17.575645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.789921, 41.055317, 17.391157>,  <31.747030, 40.803097, 17.083675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789921, 41.055317, 17.391157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438875, 0.723775, -0.532483,
		-0.892127, -0.280269, 0.354342,
		0.107226, 0.630555, 0.768703,
		31.822088, 41.244484, 17.621767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122370, 41.131985, 17.275446>,  <31.747030, 40.803097, 17.083675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122370, 41.131985, 17.275446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411013, 41.374508, 17.409115>,  <31.584198, 41.520023, 17.489315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.411013, 41.374508, 17.409115>,  <31.122370, 41.131985, 17.275446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411013, 41.374508, 17.409115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481380, 0.786341, -0.387222,
		-0.497549, 0.118560, 0.859295,
		0.721608, 0.606310, 0.334171,
		31.627495, 41.556400, 17.509367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826468, 41.746059, 17.673342>,  <31.122370, 41.131985, 17.275446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826468, 41.746059, 17.673342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173910, 41.875351, 17.523115>,  <31.382376, 41.952927, 17.432980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173910, 41.875351, 17.523115>,  <30.826468, 41.746059, 17.673342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173910, 41.875351, 17.523115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457306, 0.814749, -0.356450,
		0.190777, 0.481362, 0.855508,
		0.868606, 0.323226, -0.375565,
		31.434492, 41.972321, 17.410446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912540, 42.416222, 17.971582>,  <30.826468, 41.746059, 17.673342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912540, 42.416222, 17.971582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.125368, 42.404053, 17.633120>,  <31.253065, 42.396751, 17.430042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.125368, 42.404053, 17.633120>,  <30.912540, 42.416222, 17.971582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125368, 42.404053, 17.633120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577568, 0.717709, -0.388986,
		0.619128, 0.695678, 0.364296,
		0.532067, -0.030427, -0.846155,
		31.284988, 42.394924, 17.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133774, 43.147846, 17.724709>,  <30.912540, 42.416222, 17.971582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133774, 43.147846, 17.724709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.102280, 42.891518, 17.419250>,  <31.083384, 42.737720, 17.235975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.102280, 42.891518, 17.419250>,  <31.133774, 43.147846, 17.724709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102280, 42.891518, 17.419250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689847, 0.588017, -0.422311,
		0.719661, 0.493548, -0.488363,
		-0.078735, -0.640817, -0.763645,
		31.078659, 42.699272, 17.190157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479939, 42.945827, 17.699284>,  <31.133774, 43.147846, 17.724709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479939, 42.945827, 17.699284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128813, 43.024105, 17.874166>,  <29.918139, 43.071072, 17.979095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.128813, 43.024105, 17.874166>,  <30.479939, 42.945827, 17.699284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128813, 43.024105, 17.874166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384067, -0.257903, 0.886554,
		0.286247, 0.946146, 0.151232,
		-0.877813, 0.195690, 0.437207,
		29.865469, 43.082813, 18.005329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561174, 43.379486, 18.296686>,  <30.479939, 42.945827, 17.699284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561174, 43.379486, 18.296686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213514, 43.193657, 18.364511>,  <30.004919, 43.082161, 18.405207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.213514, 43.193657, 18.364511>,  <30.561174, 43.379486, 18.296686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213514, 43.193657, 18.364511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330348, -0.290230, 0.898130,
		-0.368034, 0.836624, 0.405723,
		-0.869150, -0.464572, 0.169563,
		29.952770, 43.054287, 18.415380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398785, 43.574741, 18.937487>,  <30.561174, 43.379486, 18.296686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398785, 43.574741, 18.937487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194201, 43.234715, 18.887209>,  <30.071449, 43.030701, 18.857042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.194201, 43.234715, 18.887209>,  <30.398785, 43.574741, 18.937487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194201, 43.234715, 18.887209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383488, -0.356696, 0.851883,
		-0.768989, 0.387505, 0.508425,
		-0.511462, -0.850064, -0.125692,
		30.040762, 42.979694, 18.849501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.131027, 43.471764, 19.582047>,  <30.398785, 43.574741, 18.937487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.131027, 43.471764, 19.582047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089394, 43.111534, 19.413223>,  <30.064413, 42.895397, 19.311930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.089394, 43.111534, 19.413223>,  <30.131027, 43.471764, 19.582047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089394, 43.111534, 19.413223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330289, -0.431576, 0.839435,
		-0.938123, -0.052030, 0.342370,
		-0.104083, -0.900575, -0.422056,
		30.058168, 42.841362, 19.286606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663849, 43.083332, 19.909733>,  <30.131027, 43.471764, 19.582047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663849, 43.083332, 19.909733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867826, 42.793121, 19.724880>,  <29.990213, 42.618996, 19.613968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.867826, 42.793121, 19.724880>,  <29.663849, 43.083332, 19.909733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.867826, 42.793121, 19.724880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309119, -0.346788, 0.885541,
		-0.802746, -0.594431, 0.047432,
		0.509945, -0.725527, -0.462133,
		30.020809, 42.575462, 19.586241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.546587, 42.456688, 20.279974>,  <29.663849, 43.083332, 19.909733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.546587, 42.456688, 20.279974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885803, 42.402069, 20.075159>,  <30.089333, 42.369297, 19.952271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885803, 42.402069, 20.075159>,  <29.546587, 42.456688, 20.279974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885803, 42.402069, 20.075159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390751, -0.491562, 0.778254,
		-0.357964, -0.860071, -0.363510,
		0.848042, -0.136545, -0.512035,
		30.140215, 42.361107, 19.921549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708998, 41.798702, 20.573502>,  <29.546587, 42.456688, 20.279974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708998, 41.798702, 20.573502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041229, 41.920223, 20.386806>,  <30.240568, 41.993137, 20.274790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.041229, 41.920223, 20.386806>,  <29.708998, 41.798702, 20.573502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041229, 41.920223, 20.386806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553506, -0.542751, 0.631706,
		-0.061406, -0.783023, -0.618955,
		0.830579, 0.303805, -0.466735,
		30.290403, 42.011364, 20.246786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155943, 41.186386, 20.329365>,  <29.708998, 41.798702, 20.573502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155943, 41.186386, 20.329365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421862, 41.482441, 20.369841>,  <30.581413, 41.660072, 20.394127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.421862, 41.482441, 20.369841>,  <30.155943, 41.186386, 20.329365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421862, 41.482441, 20.369841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584135, -0.599485, 0.547178,
		0.465648, -0.304654, -0.830877,
		0.664799, 0.740137, 0.101190,
		30.621302, 41.704483, 20.400198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653933, 40.786701, 20.268795>,  <30.155943, 41.186386, 20.329365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653933, 40.786701, 20.268795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797398, 41.130917, 20.413483>,  <30.883476, 41.337444, 20.500296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.797398, 41.130917, 20.413483>,  <30.653933, 40.786701, 20.268795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797398, 41.130917, 20.413483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735627, -0.499109, 0.457976,
		0.574642, 0.101831, -0.812045,
		0.358663, 0.860535, 0.361719,
		30.904997, 41.389076, 20.521997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385889, 40.692364, 20.200474>,  <30.653933, 40.786701, 20.268795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385889, 40.692364, 20.200474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364325, 40.988266, 20.468758>,  <31.351385, 41.165806, 20.629728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.364325, 40.988266, 20.468758>,  <31.385889, 40.692364, 20.200474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364325, 40.988266, 20.468758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789312, -0.379845, 0.482394,
		0.611621, 0.555408, -0.563420,
		-0.053913, 0.739757, 0.670711,
		31.348150, 41.210194, 20.669971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053612, 40.878292, 20.412422>,  <31.385889, 40.692364, 20.200474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053612, 40.878292, 20.412422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825106, 40.999680, 20.717464>,  <31.688004, 41.072510, 20.900490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.825106, 40.999680, 20.717464>,  <32.053612, 40.878292, 20.412422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825106, 40.999680, 20.717464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601174, -0.477866, 0.640495,
		0.558792, 0.824350, 0.090550,
		-0.571263, 0.303467, 0.762605,
		31.653727, 41.090721, 20.946245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511692, 41.148960, 21.021904>,  <32.053612, 40.878292, 20.412422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511692, 41.148960, 21.021904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.154316, 41.051647, 21.172941>,  <31.939890, 40.993259, 21.263563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.154316, 41.051647, 21.172941>,  <32.511692, 41.148960, 21.021904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154316, 41.051647, 21.172941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447253, -0.559586, 0.697731,
		0.041553, 0.792262, 0.608765,
		-0.893442, -0.243279, 0.377594,
		31.886284, 40.978664, 21.286219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617748, 41.235409, 21.669247>,  <32.511692, 41.148960, 21.021904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617748, 41.235409, 21.669247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277523, 41.025379, 21.680882>,  <32.073387, 40.899361, 21.687862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.277523, 41.025379, 21.680882>,  <32.617748, 41.235409, 21.669247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277523, 41.025379, 21.680882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400275, -0.610544, 0.683386,
		-0.341070, 0.592903, 0.729478,
		-0.850559, -0.525074, 0.029087,
		32.022354, 40.867859, 21.689608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438770, 41.208813, 22.329348>,  <32.617748, 41.235409, 21.669247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438770, 41.208813, 22.329348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251171, 40.900589, 22.156706>,  <32.138611, 40.715656, 22.053122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251171, 40.900589, 22.156706>,  <32.438770, 41.208813, 22.329348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251171, 40.900589, 22.156706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436796, -0.627102, 0.644943,
		-0.767624, 0.113956, 0.630688,
		-0.469001, -0.770556, -0.431604,
		32.110470, 40.669422, 22.027225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029022, 40.774605, 22.780109>,  <32.438770, 41.208813, 22.329348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029022, 40.774605, 22.780109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054569, 40.496483, 22.493761>,  <32.069897, 40.329609, 22.321953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.054569, 40.496483, 22.493761>,  <32.029022, 40.774605, 22.780109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054569, 40.496483, 22.493761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076571, -0.711807, 0.698189,
		-0.995017, -0.099407, 0.007779,
		0.063868, -0.695305, -0.715871,
		32.073730, 40.287891, 22.278999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722298, 40.119785, 22.996695>,  <32.029022, 40.774605, 22.780109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722298, 40.119785, 22.996695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978594, 40.005409, 22.711685>,  <32.132374, 39.936783, 22.540680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.978594, 40.005409, 22.711685>,  <31.722298, 40.119785, 22.996695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978594, 40.005409, 22.711685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346563, -0.720411, 0.600752,
		-0.685084, -0.631862, -0.362506,
		0.640745, -0.285934, -0.712522,
		32.170818, 39.919628, 22.497929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627058, 39.401882, 22.884073>,  <31.722298, 40.119785, 22.996695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627058, 39.401882, 22.884073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989775, 39.476704, 22.732950>,  <32.207405, 39.521595, 22.642277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989775, 39.476704, 22.732950>,  <31.627058, 39.401882, 22.884073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989775, 39.476704, 22.732950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388344, -0.719393, 0.575901,
		-0.164069, -0.668942, -0.724981,
		0.906791, 0.187055, -0.377809,
		32.261810, 39.532822, 22.619608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838320, 38.780575, 22.569082>,  <31.627058, 39.401882, 22.884073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838320, 38.780575, 22.569082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169731, 38.985073, 22.660437>,  <32.368580, 39.107773, 22.715250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.169731, 38.985073, 22.660437>,  <31.838320, 38.780575, 22.569082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169731, 38.985073, 22.660437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216777, -0.668934, 0.711010,
		0.516281, -0.539583, -0.665060,
		0.828530, 0.511250, 0.228388,
		32.418289, 39.138447, 22.728952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415550, 38.403561, 22.640352>,  <31.838320, 38.780575, 22.569082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415550, 38.403561, 22.640352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.538353, 38.723289, 22.846973>,  <32.612034, 38.915127, 22.970945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.538353, 38.723289, 22.846973>,  <32.415550, 38.403561, 22.640352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538353, 38.723289, 22.846973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194940, -0.584072, 0.787946,
		0.931529, -0.141206, -0.335133,
		0.307004, 0.799326, 0.516553,
		32.630455, 38.963089, 23.001940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153934, 38.189968, 22.859762>,  <32.415550, 38.403561, 22.640352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153934, 38.189968, 22.859762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003716, 38.486855, 23.081783>,  <32.913586, 38.664986, 23.214996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.003716, 38.486855, 23.081783>,  <33.153934, 38.189968, 22.859762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003716, 38.486855, 23.081783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342663, -0.445259, 0.827241,
		0.861131, 0.500864, -0.087113,
		-0.375547, 0.742213, 0.555053,
		32.891052, 38.709518, 23.248299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.067204, 35.665878, 24.228918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099541, 36.041672, 24.362083>,  <38.118942, 36.267147, 24.441982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.099541, 36.041672, 24.362083>,  <38.067204, 35.665878, 24.228918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099541, 36.041672, 24.362083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645815, -0.303787, 0.700455,
		0.759202, 0.158372, -0.631293,
		0.080846, 0.939485, 0.332915,
		38.123795, 36.323517, 24.461958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733837, 35.769478, 24.403435>,  <38.067204, 35.665878, 24.228918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733837, 35.769478, 24.403435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551029, 36.063828, 24.603283>,  <38.441345, 36.240437, 24.723192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.551029, 36.063828, 24.603283>,  <38.733837, 35.769478, 24.403435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551029, 36.063828, 24.603283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596005, -0.163590, 0.786140,
		0.660232, 0.657061, -0.363820,
		-0.457025, 0.735873, 0.499619,
		38.413921, 36.284588, 24.753168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256702, 36.121235, 24.718864>,  <38.733837, 35.769478, 24.403435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256702, 36.121235, 24.718864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931339, 36.223167, 24.928024>,  <38.736122, 36.284328, 25.053520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.931339, 36.223167, 24.928024>,  <39.256702, 36.121235, 24.718864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931339, 36.223167, 24.928024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476599, -0.223398, 0.850263,
		0.333492, 0.940825, 0.060260,
		-0.813411, 0.254836, 0.522898,
		38.687317, 36.299618, 25.084894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500786, 36.690681, 25.256945>,  <39.256702, 36.121235, 24.718864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500786, 36.690681, 25.256945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176502, 36.506290, 25.401300>,  <38.981930, 36.395657, 25.487913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.176502, 36.506290, 25.401300>,  <39.500786, 36.690681, 25.256945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176502, 36.506290, 25.401300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421038, -0.030779, 0.906521,
		-0.406781, 0.886876, 0.219044,
		-0.810714, -0.460981, 0.360888,
		38.933289, 36.367996, 25.509567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410149, 36.951763, 25.945322>,  <39.500786, 36.690681, 25.256945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410149, 36.951763, 25.945322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190243, 36.617661, 25.941406>,  <39.058300, 36.417198, 25.939056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.190243, 36.617661, 25.941406>,  <39.410149, 36.951763, 25.945322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190243, 36.617661, 25.941406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220362, -0.156329, 0.962809,
		-0.805726, 0.527165, 0.270004,
		-0.549769, -0.835260, -0.009791,
		39.025311, 36.367085, 25.938469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080093, 36.959122, 26.584890>,  <39.410149, 36.951763, 25.945322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080093, 36.959122, 26.584890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071842, 36.580860, 26.455084>,  <39.066891, 36.353905, 26.377199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.071842, 36.580860, 26.455084>,  <39.080093, 36.959122, 26.584890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071842, 36.580860, 26.455084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097036, -0.324948, 0.940741,
		-0.995067, -0.012080, 0.098467,
		-0.020632, -0.945655, -0.324517,
		39.065651, 36.297165, 26.357729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626915, 36.584019, 26.965752>,  <39.080093, 36.959122, 26.584890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626915, 36.584019, 26.965752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884407, 36.315247, 26.819262>,  <39.038902, 36.153984, 26.731367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.884407, 36.315247, 26.819262>,  <38.626915, 36.584019, 26.965752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884407, 36.315247, 26.819262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152783, -0.356088, 0.921877,
		-0.749843, -0.649397, -0.126567,
		0.643733, -0.671926, -0.366227,
		39.077526, 36.113670, 26.709393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417004, 35.932205, 27.215004>,  <38.626915, 36.584019, 26.965752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417004, 35.932205, 27.215004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.788445, 35.848667, 27.092318>,  <39.011311, 35.798542, 27.018705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.788445, 35.848667, 27.092318>,  <38.417004, 35.932205, 27.215004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788445, 35.848667, 27.092318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288535, -0.113338, 0.950738,
		-0.233324, -0.971358, -0.044985,
		0.928605, -0.208850, -0.306715,
		39.067028, 35.786015, 27.000303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608856, 35.243938, 27.500698>,  <38.417004, 35.932205, 27.215004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608856, 35.243938, 27.500698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950001, 35.428551, 27.403034>,  <39.154690, 35.539318, 27.344435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.950001, 35.428551, 27.403034>,  <38.608856, 35.243938, 27.500698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950001, 35.428551, 27.403034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373965, -0.213604, 0.902510,
		0.364380, -0.861026, -0.354770,
		0.852864, 0.461528, -0.244161,
		39.205860, 35.567009, 27.329786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143475, 34.761997, 27.555988>,  <38.608856, 35.243938, 27.500698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143475, 34.761997, 27.555988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307747, 35.125980, 27.579033>,  <39.406311, 35.344372, 27.592859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307747, 35.125980, 27.579033>,  <39.143475, 34.761997, 27.555988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307747, 35.125980, 27.579033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364682, -0.221844, 0.904319,
		0.835673, -0.350374, -0.422952,
		0.410679, 0.909958, 0.057613,
		39.430950, 35.398968, 27.596317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792130, 34.610878, 27.913654>,  <39.143475, 34.761997, 27.555988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792130, 34.610878, 27.913654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725903, 35.005161, 27.926081>,  <39.686169, 35.241730, 27.933537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725903, 35.005161, 27.926081>,  <39.792130, 34.610878, 27.913654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725903, 35.005161, 27.926081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329867, 0.025663, 0.943679,
		0.929396, 0.166486, -0.329401,
		-0.165563, 0.985710, 0.031067,
		39.676235, 35.300873, 27.935400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360340, 34.896179, 27.998907>,  <39.792130, 34.610878, 27.913654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360340, 34.896179, 27.998907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106991, 35.168251, 28.146523>,  <39.954979, 35.331493, 28.235092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106991, 35.168251, 28.146523>,  <40.360340, 34.896179, 27.998907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106991, 35.168251, 28.146523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467613, -0.043567, 0.882859,
		0.616582, 0.731748, -0.290467,
		-0.633376, 0.680181, 0.369037,
		39.916977, 35.372307, 28.257235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776756, 35.355106, 28.433012>,  <40.360340, 34.896179, 27.998907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776756, 35.355106, 28.433012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391811, 35.370411, 28.540640>,  <40.160843, 35.379593, 28.605217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.391811, 35.370411, 28.540640>,  <40.776756, 35.355106, 28.433012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391811, 35.370411, 28.540640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258314, -0.178968, 0.949339,
		0.084475, 0.983111, 0.162349,
		-0.962361, 0.038259, 0.269069,
		40.103104, 35.381889, 28.621361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673550, 35.874638, 29.041243>,  <40.776756, 35.355106, 28.433012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673550, 35.874638, 29.041243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470970, 35.530655, 29.015976>,  <40.349422, 35.324265, 29.000816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470970, 35.530655, 29.015976>,  <40.673550, 35.874638, 29.041243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470970, 35.530655, 29.015976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229850, -0.205246, 0.951338,
		-0.831070, 0.467286, 0.301606,
		-0.506450, -0.859953, -0.063168,
		40.319035, 35.272671, 28.997026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.145954, 36.457127, 28.834532>,  <40.673550, 35.874638, 29.041243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.145954, 36.457127, 28.834532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217793, 36.766975, 29.077084>,  <41.260895, 36.952885, 29.222614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.217793, 36.766975, 29.077084>,  <41.145954, 36.457127, 28.834532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217793, 36.766975, 29.077084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412848, 0.618846, -0.668271,
		-0.892917, -0.130321, 0.430948,
		0.179601, 0.774626, 0.606381,
		41.271671, 36.999363, 29.258999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475788, 36.792767, 28.991211>,  <41.145954, 36.457127, 28.834532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475788, 36.792767, 28.991211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760925, 37.055508, 29.089508>,  <40.932007, 37.213154, 29.148487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.760925, 37.055508, 29.089508>,  <40.475788, 36.792767, 28.991211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.760925, 37.055508, 29.089508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548083, 0.740386, -0.389144,
		-0.437556, 0.142712, 0.887794,
		0.712846, 0.656857, 0.245742,
		40.974777, 37.252563, 29.163231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123409, 37.392307, 29.146534>,  <40.475788, 36.792767, 28.991211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123409, 37.392307, 29.146534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488319, 37.531052, 29.059412>,  <40.707264, 37.614296, 29.007139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.488319, 37.531052, 29.059412>,  <40.123409, 37.392307, 29.146534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488319, 37.531052, 29.059412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409358, 0.754874, -0.512438,
		-0.013327, 0.556646, 0.830643,
		0.912277, 0.346859, -0.217807,
		40.762001, 37.635109, 28.994070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071163, 38.091587, 29.248995>,  <40.123409, 37.392307, 29.146534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071163, 38.091587, 29.248995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404049, 38.056892, 29.029947>,  <40.603783, 38.036076, 28.898518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.404049, 38.056892, 29.029947>,  <40.071163, 38.091587, 29.248995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404049, 38.056892, 29.029947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281922, 0.784274, -0.552662,
		0.477422, 0.614321, 0.628233,
		0.832219, -0.086741, -0.547620,
		40.653713, 38.030869, 28.865662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501438, 38.651783, 29.244532>,  <40.071163, 38.091587, 29.248995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501438, 38.651783, 29.244532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561771, 38.468796, 28.893995>,  <40.597969, 38.359005, 28.683674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.561771, 38.468796, 28.893995>,  <40.501438, 38.651783, 29.244532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561771, 38.468796, 28.893995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457841, 0.753349, -0.472066,
		0.876146, 0.472427, -0.095820,
		0.150830, -0.457469, -0.876340,
		40.607021, 38.331554, 28.631094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402706, 39.177593, 28.808727>,  <40.501438, 38.651783, 29.244532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402706, 39.177593, 28.808727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471085, 38.880409, 28.549873>,  <40.512112, 38.702099, 28.394560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.471085, 38.880409, 28.549873>,  <40.402706, 39.177593, 28.808727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471085, 38.880409, 28.549873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249971, 0.602611, -0.757875,
		0.953044, 0.291319, -0.082707,
		0.170944, -0.742963, -0.647136,
		40.522369, 38.657520, 28.355732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804871, 39.453911, 28.291239>,  <40.402706, 39.177593, 28.808727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804871, 39.453911, 28.291239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634319, 39.141678, 28.108419>,  <40.531986, 38.954338, 27.998728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.634319, 39.141678, 28.108419>,  <40.804871, 39.453911, 28.291239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634319, 39.141678, 28.108419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360481, 0.610059, -0.705607,
		0.829610, -0.136100, -0.541502,
		-0.426381, -0.780580, -0.457050,
		40.506405, 38.907505, 27.971304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020718, 39.403290, 27.542395>,  <40.804871, 39.453911, 28.291239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020718, 39.403290, 27.542395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670105, 39.214970, 27.582460>,  <40.459736, 39.101978, 27.606499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670105, 39.214970, 27.582460>,  <41.020718, 39.403290, 27.542395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670105, 39.214970, 27.582460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412460, 0.627398, -0.660491,
		0.248117, -0.620257, -0.744123,
		-0.876536, -0.470800, 0.100163,
		40.407143, 39.073730, 27.612509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713493, 39.616940, 26.891224>,  <41.020718, 39.403290, 27.542395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713493, 39.616940, 26.891224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402504, 39.451706, 27.080919>,  <40.215912, 39.352566, 27.194736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.402504, 39.451706, 27.080919>,  <40.713493, 39.616940, 26.891224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402504, 39.451706, 27.080919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628907, 0.515509, -0.582001,
		-0.004060, -0.750741, -0.660584,
		-0.777469, -0.413083, 0.474239,
		40.169262, 39.327782, 27.223190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348663, 39.304676, 26.530514>,  <40.713493, 39.616940, 26.891224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348663, 39.304676, 26.530514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078255, 39.410004, 26.805805>,  <39.916012, 39.473202, 26.970980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.078255, 39.410004, 26.805805>,  <40.348663, 39.304676, 26.530514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078255, 39.410004, 26.805805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584000, 0.378123, -0.718309,
		-0.449382, -0.887516, -0.101838,
		-0.676018, 0.263322, 0.688230,
		39.875450, 39.488998, 27.012274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638420, 39.173588, 26.252094>,  <40.348663, 39.304676, 26.530514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638420, 39.173588, 26.252094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585419, 39.419346, 26.563211>,  <39.553619, 39.566799, 26.749882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.585419, 39.419346, 26.563211>,  <39.638420, 39.173588, 26.252094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585419, 39.419346, 26.563211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778648, 0.421033, -0.465229,
		-0.613311, -0.667271, 0.422610,
		-0.132501, 0.614395, 0.777793,
		39.545670, 39.603664, 26.796549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931675, 39.039402, 26.419683>,  <39.638420, 39.173588, 26.252094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931675, 39.039402, 26.419683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025398, 39.387711, 26.592590>,  <39.081635, 39.596695, 26.696335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.025398, 39.387711, 26.592590>,  <38.931675, 39.039402, 26.419683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025398, 39.387711, 26.592590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665863, 0.467723, -0.581259,
		-0.708325, -0.151636, 0.689407,
		0.234312, 0.870771, 0.432268,
		39.095692, 39.648941, 26.722271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303574, 39.318413, 26.719919>,  <38.931675, 39.039402, 26.419683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303574, 39.318413, 26.719919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.566292, 39.610779, 26.645746>,  <38.723923, 39.786198, 26.601242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.566292, 39.610779, 26.645746>,  <38.303574, 39.318413, 26.719919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566292, 39.610779, 26.645746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659988, 0.438262, -0.610198,
		-0.364733, 0.523160, 0.770243,
		0.656799, 0.730911, -0.185431,
		38.763332, 39.830051, 26.590117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847630, 39.901318, 26.402925>,  <38.303574, 39.318413, 26.719919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847630, 39.901318, 26.402925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225700, 40.006805, 26.325890>,  <38.452541, 40.070099, 26.279669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.225700, 40.006805, 26.325890>,  <37.847630, 39.901318, 26.402925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225700, 40.006805, 26.325890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304812, 0.500891, -0.810060,
		-0.117162, 0.824355, 0.553816,
		0.945179, 0.263718, -0.192588,
		38.509254, 40.085922, 26.268112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849060, 40.508537, 26.933226>,  <37.847630, 39.901318, 26.402925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849060, 40.508537, 26.933226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618931, 40.674168, 27.215374>,  <37.480854, 40.773544, 27.384663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.618931, 40.674168, 27.215374>,  <37.849060, 40.508537, 26.933226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618931, 40.674168, 27.215374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359669, -0.646461, 0.672850,
		0.734604, 0.640805, 0.222993,
		-0.575322, 0.414074, 0.705370,
		37.446335, 40.798389, 27.426985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273945, 40.611790, 27.465973>,  <37.849060, 40.508537, 26.933226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273945, 40.611790, 27.465973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915634, 40.616261, 27.643723>,  <37.700649, 40.618942, 27.750372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.915634, 40.616261, 27.643723>,  <38.273945, 40.611790, 27.465973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915634, 40.616261, 27.643723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375976, -0.514257, 0.770832,
		0.237136, 0.857564, 0.456455,
		-0.895772, 0.011176, 0.444372,
		37.646904, 40.619614, 27.777035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401676, 40.671864, 28.209177>,  <38.273945, 40.611790, 27.465973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401676, 40.671864, 28.209177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.029961, 40.525402, 28.228579>,  <37.806931, 40.437523, 28.240219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.029961, 40.525402, 28.228579>,  <38.401676, 40.671864, 28.209177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029961, 40.525402, 28.228579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276356, -0.602158, 0.749022,
		-0.245053, 0.709461, 0.660768,
		-0.929288, -0.366157, 0.048503,
		37.751175, 40.415554, 28.243130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139935, 40.687366, 28.984318>,  <38.401676, 40.671864, 28.209177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139935, 40.687366, 28.984318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907902, 40.420067, 28.798010>,  <37.768681, 40.259686, 28.686226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.907902, 40.420067, 28.798010>,  <38.139935, 40.687366, 28.984318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907902, 40.420067, 28.798010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070973, -0.528166, 0.846170,
		-0.811459, 0.523906, 0.258953,
		-0.580083, -0.668253, -0.465769,
		37.733875, 40.219589, 28.658279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534920, 40.685310, 29.330046>,  <38.139935, 40.687366, 28.984318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534920, 40.685310, 29.330046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588982, 40.335545, 29.143654>,  <37.621418, 40.125687, 29.031818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.588982, 40.335545, 29.143654>,  <37.534920, 40.685310, 29.330046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588982, 40.335545, 29.143654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091546, -0.479304, 0.872861,
		-0.986586, -0.075316, -0.144831,
		0.135158, -0.874411, -0.465980,
		37.629528, 40.073219, 29.003860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088970, 40.219036, 29.704573>,  <37.534920, 40.685310, 29.330046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088970, 40.219036, 29.704573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339157, 39.986240, 29.496698>,  <37.489269, 39.846561, 29.371973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.339157, 39.986240, 29.496698>,  <37.088970, 40.219036, 29.704573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339157, 39.986240, 29.496698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029917, -0.647676, 0.761329,
		-0.779673, -0.491737, -0.387692,
		0.625472, -0.581989, -0.519686,
		37.526798, 39.811646, 29.340792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730953, 39.514755, 29.645348>,  <37.088970, 40.219036, 29.704573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730953, 39.514755, 29.645348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.117249, 39.445271, 29.568226>,  <37.349026, 39.403580, 29.521954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.117249, 39.445271, 29.568226>,  <36.730953, 39.514755, 29.645348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117249, 39.445271, 29.568226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021815, -0.685967, 0.727305,
		-0.258599, -0.706593, -0.658675,
		0.965738, -0.173711, -0.192805,
		37.406971, 39.393158, 29.510384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850197, 38.802876, 29.640076>,  <36.730953, 39.514755, 29.645348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850197, 38.802876, 29.640076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219456, 38.949448, 29.686588>,  <37.441013, 39.037392, 29.714497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.219456, 38.949448, 29.686588>,  <36.850197, 38.802876, 29.640076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219456, 38.949448, 29.686588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195225, -0.707403, 0.679314,
		0.331178, -0.604409, -0.724577,
		0.923151, 0.366430, 0.116281,
		37.496403, 39.059376, 29.721472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250809, 38.208420, 29.690281>,  <36.850197, 38.802876, 29.640076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250809, 38.208420, 29.690281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461681, 38.502735, 29.860313>,  <37.588203, 38.679325, 29.962332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.461681, 38.502735, 29.860313>,  <37.250809, 38.208420, 29.690281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461681, 38.502735, 29.860313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231462, -0.605661, 0.761315,
		0.817624, -0.302959, -0.489599,
		0.527178, 0.735793, 0.425079,
		37.619835, 38.723473, 29.987837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940472, 37.902027, 29.839537>,  <37.250809, 38.208420, 29.690281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940472, 37.902027, 29.839537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881809, 38.212257, 30.085129>,  <37.846611, 38.398396, 30.232485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.881809, 38.212257, 30.085129>,  <37.940472, 37.902027, 29.839537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881809, 38.212257, 30.085129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270647, -0.565547, 0.779043,
		0.951443, 0.280420, -0.126969,
		-0.146652, 0.775578, 0.613980,
		37.837814, 38.444931, 30.269323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336754, 37.589294, 30.332954>,  <37.940472, 37.902027, 29.839537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336754, 37.589294, 30.332954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150940, 37.902664, 30.498096>,  <38.039452, 38.090687, 30.597181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.150940, 37.902664, 30.498096>,  <38.336754, 37.589294, 30.332954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150940, 37.902664, 30.498096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067701, -0.433428, 0.898642,
		0.882964, 0.445400, 0.148302,
		-0.464534, 0.783428, 0.412855,
		38.011581, 38.137691, 30.621952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702343, 37.817955, 30.827499>,  <38.336754, 37.589294, 30.332954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702343, 37.817955, 30.827499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330887, 37.935566, 30.917990>,  <38.108013, 38.006130, 30.972284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.330887, 37.935566, 30.917990>,  <38.702343, 37.817955, 30.827499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330887, 37.935566, 30.917990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020397, -0.568411, 0.822492,
		0.370421, 0.768413, 0.521852,
		-0.928640, 0.294024, 0.226225,
		38.052296, 38.023773, 30.985857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.099327, 43.248577, 24.945948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706909, 43.254238, 25.023262>,  <36.471458, 43.257633, 25.069651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706909, 43.254238, 25.023262>,  <37.099327, 43.248577, 24.945948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706909, 43.254238, 25.023262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186882, -0.195080, 0.962818,
		0.051332, 0.980685, 0.188737,
		-0.981040, 0.014152, 0.193286,
		36.412598, 43.258484, 25.081247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112862, 43.564850, 25.571568>,  <37.099327, 43.248577, 24.945948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112862, 43.564850, 25.571568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767925, 43.364357, 25.542912>,  <36.560963, 43.244061, 25.525719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767925, 43.364357, 25.542912>,  <37.112862, 43.564850, 25.571568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767925, 43.364357, 25.542912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146401, -0.382277, 0.912377,
		-0.484697, 0.776294, 0.403035,
		-0.862343, -0.501231, -0.071638,
		36.509224, 43.213989, 25.521420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691120, 43.661430, 26.253584>,  <37.112862, 43.564850, 25.571568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691120, 43.661430, 26.253584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548866, 43.330959, 26.078793>,  <36.463512, 43.132675, 25.973919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548866, 43.330959, 26.078793>,  <36.691120, 43.661430, 26.253584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548866, 43.330959, 26.078793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229786, -0.530484, 0.815956,
		-0.905935, 0.189775, 0.378506,
		-0.355639, -0.826179, -0.436977,
		36.442173, 43.083107, 25.947699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426292, 43.361656, 26.778528>,  <36.691120, 43.661430, 26.253584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426292, 43.361656, 26.778528> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409126, 43.055439, 26.521748>,  <36.398827, 42.871708, 26.367680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409126, 43.055439, 26.521748>,  <36.426292, 43.361656, 26.778528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409126, 43.055439, 26.521748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241813, -0.631400, 0.736791,
		-0.969374, -0.123612, 0.212215,
		-0.042916, -0.765542, -0.641953,
		36.396252, 42.825775, 26.329163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028896, 42.756100, 27.070818>,  <36.426292, 43.361656, 26.778528>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028896, 42.756100, 27.070818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283474, 42.619217, 26.794315>,  <36.436222, 42.537086, 26.628414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283474, 42.619217, 26.794315>,  <36.028896, 42.756100, 27.070818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283474, 42.619217, 26.794315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288379, -0.725635, 0.624733,
		-0.715374, -0.596958, -0.363155,
		0.636457, -0.342191, -0.691250,
		36.474407, 42.516556, 26.586939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963310, 42.015949, 27.059072>,  <36.028896, 42.756100, 27.070818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963310, 42.015949, 27.059072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318321, 42.041920, 26.876610>,  <36.531326, 42.057503, 26.767132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318321, 42.041920, 26.876610>,  <35.963310, 42.015949, 27.059072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318321, 42.041920, 26.876610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319346, -0.800338, 0.507421,
		-0.332134, -0.596022, -0.731057,
		0.887528, 0.064929, -0.456157,
		36.584579, 42.061398, 26.739763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058777, 41.366821, 26.955032>,  <35.963310, 42.015949, 27.059072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058777, 41.366821, 26.955032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430996, 41.503559, 26.902525>,  <36.654327, 41.585602, 26.871019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430996, 41.503559, 26.902525>,  <36.058777, 41.366821, 26.955032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430996, 41.503559, 26.902525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365654, -0.848283, 0.383032,
		0.019581, -0.404428, -0.914360,
		0.930545, 0.341840, -0.131271,
		36.710159, 41.606110, 26.863144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448906, 40.812469, 26.657185>,  <36.058777, 41.366821, 26.955032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448906, 40.812469, 26.657185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709602, 41.062756, 26.828634>,  <36.866020, 41.212925, 26.931503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709602, 41.062756, 26.828634>,  <36.448906, 40.812469, 26.657185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709602, 41.062756, 26.828634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391109, -0.761471, 0.516910,
		0.649821, -0.169254, -0.741004,
		0.651742, 0.625712, 0.428623,
		36.905125, 41.250469, 26.957222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172626, 40.519802, 26.627409>,  <36.448906, 40.812469, 26.657185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172626, 40.519802, 26.627409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161266, 40.787266, 26.924620>,  <37.154449, 40.947742, 27.102947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161266, 40.787266, 26.924620>,  <37.172626, 40.519802, 26.627409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161266, 40.787266, 26.924620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390822, -0.676730, 0.623935,
		0.920028, 0.308112, -0.242107,
		-0.028401, 0.668658, 0.743027,
		37.152744, 40.987862, 27.147528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763672, 40.581757, 26.192833>,  <37.172626, 40.519802, 26.627409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763672, 40.581757, 26.192833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115936, 40.475071, 26.036217>,  <38.327293, 40.411060, 25.942247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115936, 40.475071, 26.036217>,  <37.763672, 40.581757, 26.192833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115936, 40.475071, 26.036217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289112, 0.352163, -0.890166,
		0.375303, 0.897133, 0.233026,
		0.880660, -0.266711, -0.391540,
		38.380135, 40.395058, 25.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162663, 41.196281, 25.973953>,  <37.763672, 40.581757, 26.192833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162663, 41.196281, 25.973953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276031, 40.875454, 25.763678>,  <38.344055, 40.682957, 25.637512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276031, 40.875454, 25.763678>,  <38.162663, 41.196281, 25.973953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276031, 40.875454, 25.763678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332005, 0.432204, -0.838434,
		0.899690, 0.412166, -0.143794,
		0.283426, -0.802071, -0.525691,
		38.361061, 40.634834, 25.605970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486416, 41.438393, 25.363911>,  <38.162663, 41.196281, 25.973953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486416, 41.438393, 25.363911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390350, 41.056492, 25.293737>,  <38.332710, 40.827351, 25.251635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390350, 41.056492, 25.293737>,  <38.486416, 41.438393, 25.363911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390350, 41.056492, 25.293737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336327, 0.251366, -0.907579,
		0.910608, -0.158964, -0.381476,
		-0.240162, -0.954749, -0.175432,
		38.318302, 40.770065, 25.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656616, 41.377323, 24.682920>,  <38.486416, 41.438393, 25.363911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656616, 41.377323, 24.682920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414356, 41.069199, 24.762728>,  <38.269001, 40.884323, 24.810612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414356, 41.069199, 24.762728>,  <38.656616, 41.377323, 24.682920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414356, 41.069199, 24.762728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482587, 0.156210, -0.861805,
		0.632694, -0.618235, -0.466351,
		-0.605647, -0.770314, 0.199519,
		38.232662, 40.838104, 24.822584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518635, 41.129711, 24.007175>,  <38.656616, 41.377323, 24.682920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518635, 41.129711, 24.007175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235691, 40.958385, 24.232098>,  <38.065926, 40.855591, 24.367050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235691, 40.958385, 24.232098>,  <38.518635, 41.129711, 24.007175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235691, 40.958385, 24.232098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670315, 0.154016, -0.725918,
		0.224320, -0.890406, -0.396053,
		-0.707360, -0.428318, 0.562304,
		38.023483, 40.829891, 24.400789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145134, 40.652950, 23.560724>,  <38.518635, 41.129711, 24.007175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145134, 40.652950, 23.560724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915337, 40.719536, 23.881285>,  <37.777458, 40.759487, 24.073622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915337, 40.719536, 23.881285>,  <38.145134, 40.652950, 23.560724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915337, 40.719536, 23.881285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802212, 0.079879, -0.591671,
		-0.162507, -0.982807, 0.087648,
		-0.574497, 0.166463, 0.801401,
		37.742989, 40.769474, 24.121706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541161, 40.075665, 23.474211>,  <38.145134, 40.652950, 23.560724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541161, 40.075665, 23.474211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429321, 40.368626, 23.722538>,  <37.362217, 40.544403, 23.871534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429321, 40.368626, 23.722538>,  <37.541161, 40.075665, 23.474211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429321, 40.368626, 23.722538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920692, -0.021142, -0.389716,
		-0.272303, -0.680546, 0.680226,
		-0.279601, 0.732400, 0.620817,
		37.345440, 40.588345, 23.908783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856384, 39.959908, 23.476902>,  <37.541161, 40.075665, 23.474211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856384, 39.959908, 23.476902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888920, 40.329372, 23.626690>,  <36.908440, 40.551052, 23.716562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888920, 40.329372, 23.626690>,  <36.856384, 39.959908, 23.476902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888920, 40.329372, 23.626690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863135, 0.253148, -0.436937,
		-0.498379, -0.287677, 0.817839,
		0.081338, 0.923666, 0.374468,
		36.913322, 40.606472, 23.739031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201550, 40.104061, 23.827129>,  <36.856384, 39.959908, 23.476902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201550, 40.104061, 23.827129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396057, 40.426640, 23.692556>,  <36.512764, 40.620186, 23.611813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396057, 40.426640, 23.692556>,  <36.201550, 40.104061, 23.827129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396057, 40.426640, 23.692556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797651, 0.252465, -0.547736,
		-0.356782, 0.534703, 0.766028,
		0.486271, 0.806445, -0.336431,
		36.541939, 40.668571, 23.591627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668144, 40.693512, 23.717781>,  <36.201550, 40.104061, 23.827129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668144, 40.693512, 23.717781> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003094, 40.779121, 23.516586>,  <36.204063, 40.830486, 23.395870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003094, 40.779121, 23.516586>,  <35.668144, 40.693512, 23.717781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003094, 40.779121, 23.516586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536382, 0.144399, -0.831531,
		-0.105341, 0.966096, 0.235717,
		0.837376, 0.214028, -0.502985,
		36.254307, 40.843330, 23.365690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543961, 41.328918, 23.223475>,  <35.668144, 40.693512, 23.717781>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543961, 41.328918, 23.223475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868343, 41.145130, 23.078564>,  <36.062973, 41.034859, 22.991617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868343, 41.145130, 23.078564>,  <35.543961, 41.328918, 23.223475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868343, 41.145130, 23.078564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289544, 0.222905, -0.930848,
		0.508448, 0.859769, 0.047730,
		0.810953, -0.459467, -0.362276,
		36.111629, 41.007290, 22.969881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920673, 41.935104, 22.914953>,  <35.543961, 41.328918, 23.223475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920673, 41.935104, 22.914953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082893, 41.610092, 22.747463>,  <36.180225, 41.415085, 22.646969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082893, 41.610092, 22.747463>,  <35.920673, 41.935104, 22.914953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082893, 41.610092, 22.747463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094062, 0.418557, -0.903306,
		0.909220, 0.405723, 0.093319,
		0.405551, -0.812526, -0.418724,
		36.204559, 41.366333, 22.621845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361706, 42.226772, 22.355310>,  <35.920673, 41.935104, 22.914953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361706, 42.226772, 22.355310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278851, 41.848213, 22.256180>,  <36.229137, 41.621078, 22.196701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278851, 41.848213, 22.256180>,  <36.361706, 42.226772, 22.355310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278851, 41.848213, 22.256180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128114, 0.277382, -0.952180,
		0.969887, -0.165481, -0.178703,
		-0.207137, -0.946401, -0.247829,
		36.216709, 41.564293, 22.181831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.717213, 42.043835, 21.739735>,  <36.361706, 42.226772, 22.355310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.717213, 42.043835, 21.739735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435101, 41.760311, 21.734533>,  <36.265835, 41.590195, 21.731413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435101, 41.760311, 21.734533>,  <36.717213, 42.043835, 21.739735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435101, 41.760311, 21.734533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128347, 0.145706, -0.980967,
		0.697216, -0.690186, -0.193737,
		-0.705278, -0.708812, -0.013005,
		36.223518, 41.547668, 21.730631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.916315, 40.539661, 23.992533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.213482, 40.778168, 24.114218>,  <30.391783, 40.921272, 24.187229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.213482, 40.778168, 24.114218>,  <29.916315, 40.539661, 23.992533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213482, 40.778168, 24.114218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281079, -0.690340, 0.666652,
		0.607511, -0.409759, -0.680462,
		0.742916, 0.596262, 0.304215,
		30.436357, 40.957047, 24.205482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579142, 40.144680, 23.839685>,  <29.916315, 40.539661, 23.992533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579142, 40.144680, 23.839685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.643621, 40.397160, 24.143158>,  <30.682310, 40.548649, 24.325241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.643621, 40.397160, 24.143158>,  <30.579142, 40.144680, 23.839685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643621, 40.397160, 24.143158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203626, -0.773468, 0.600237,
		0.965687, 0.057730, -0.253211,
		0.161199, 0.631201, 0.758683,
		30.691980, 40.586521, 24.370764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023462, 39.781456, 24.205256>,  <30.579142, 40.144680, 23.839685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023462, 39.781456, 24.205256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.968184, 40.081882, 24.463497>,  <30.935017, 40.262138, 24.618443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.968184, 40.081882, 24.463497>,  <31.023462, 39.781456, 24.205256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968184, 40.081882, 24.463497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436642, -0.538884, 0.720380,
		0.888957, 0.381453, -0.253473,
		-0.138199, 0.751064, 0.645604,
		30.926723, 40.307201, 24.657179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639112, 40.040871, 24.468315>,  <31.023462, 39.781456, 24.205256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639112, 40.040871, 24.468315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.368416, 40.142334, 24.744772>,  <31.205997, 40.203213, 24.910646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.368416, 40.142334, 24.744772>,  <31.639112, 40.040871, 24.468315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368416, 40.142334, 24.744772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617490, -0.315637, 0.720472,
		0.400904, 0.914347, 0.056972,
		-0.676743, 0.253660, 0.691140,
		31.165392, 40.218433, 24.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958954, 40.470757, 24.994299>,  <31.639112, 40.040871, 24.468315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958954, 40.470757, 24.994299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.629547, 40.354057, 25.188908>,  <31.431904, 40.284039, 25.305674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.629547, 40.354057, 25.188908>,  <31.958954, 40.470757, 24.994299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629547, 40.354057, 25.188908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560907, -0.290446, 0.775258,
		-0.084868, 0.911332, 0.402829,
		-0.823517, -0.291744, 0.486523,
		31.382492, 40.266533, 25.334864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038273, 40.694698, 25.693375>,  <31.958954, 40.470757, 24.994299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038273, 40.694698, 25.693375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755779, 40.414097, 25.731602>,  <31.586285, 40.245735, 25.754538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.755779, 40.414097, 25.731602>,  <32.038273, 40.694698, 25.693375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755779, 40.414097, 25.731602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433065, -0.321250, 0.842172,
		-0.560085, 0.636154, 0.530672,
		-0.706230, -0.701503, 0.095569,
		31.543911, 40.203648, 25.760273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.948833, 40.643906, 26.372578>,  <32.038273, 40.694698, 25.693375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.948833, 40.643906, 26.372578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.781796, 40.300076, 26.254772>,  <31.681572, 40.093777, 26.184090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.781796, 40.300076, 26.254772>,  <31.948833, 40.643906, 26.372578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781796, 40.300076, 26.254772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382875, -0.460413, 0.800891,
		-0.824027, 0.221687, 0.521378,
		-0.417596, -0.859578, -0.294514,
		31.656517, 40.042202, 26.166418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533655, 40.434162, 26.928015>,  <31.948833, 40.643906, 26.372578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533655, 40.434162, 26.928015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645033, 40.125732, 26.698961>,  <31.711861, 39.940674, 26.561529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.645033, 40.125732, 26.698961>,  <31.533655, 40.434162, 26.928015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645033, 40.125732, 26.698961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285290, -0.502900, 0.815905,
		-0.917103, -0.390552, 0.079950,
		0.278446, -0.771077, -0.572632,
		31.728567, 39.894409, 26.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401281, 39.874378, 27.282816>,  <31.533655, 40.434162, 26.928015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401281, 39.874378, 27.282816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648058, 39.719078, 27.008986>,  <31.796124, 39.625896, 26.844687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.648058, 39.719078, 27.008986>,  <31.401281, 39.874378, 27.282816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648058, 39.719078, 27.008986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546629, -0.414399, 0.727647,
		-0.566196, -0.823125, -0.043432,
		0.616943, -0.388250, -0.684575,
		31.833141, 39.602604, 26.803614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361031, 39.194252, 27.415804>,  <31.401281, 39.874378, 27.282816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361031, 39.194252, 27.415804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.705683, 39.241302, 27.218317>,  <31.912474, 39.269531, 27.099825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.705683, 39.241302, 27.218317>,  <31.361031, 39.194252, 27.415804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705683, 39.241302, 27.218317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427598, -0.692270, 0.581310,
		-0.273407, -0.711987, -0.646778,
		0.861631, 0.117627, -0.493716,
		31.964172, 39.276592, 27.070202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697435, 38.520760, 27.372553>,  <31.361031, 39.194252, 27.415804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697435, 38.520760, 27.372553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027863, 38.728004, 27.283854>,  <32.226120, 38.852352, 27.230635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027863, 38.728004, 27.283854>,  <31.697435, 38.520760, 27.372553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027863, 38.728004, 27.283854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548724, -0.649715, 0.526091,
		0.128500, -0.556266, -0.821009,
		0.826069, 0.518111, -0.221748,
		32.275684, 38.883438, 27.217329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107735, 38.094303, 27.049664>,  <31.697435, 38.520760, 27.372553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107735, 38.094303, 27.049664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.352650, 38.355488, 27.227987>,  <32.499599, 38.512199, 27.334982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.352650, 38.355488, 27.227987>,  <32.107735, 38.094303, 27.049664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352650, 38.355488, 27.227987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429115, -0.748035, 0.506264,
		0.664053, -0.118674, -0.738207,
		0.612285, 0.652962, 0.445810,
		32.536335, 38.551376, 27.361731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718689, 37.721012, 27.145563>,  <32.107735, 38.094303, 27.049664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718689, 37.721012, 27.145563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745388, 38.029701, 27.398540>,  <32.761410, 38.214916, 27.550327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745388, 38.029701, 27.398540>,  <32.718689, 37.721012, 27.145563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745388, 38.029701, 27.398540> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385403, -0.604605, 0.697078,
		0.920331, 0.197216, -0.337782,
		0.066750, 0.771725, 0.632444,
		32.765411, 38.261219, 27.588274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364029, 37.471954, 27.533312>,  <32.718689, 37.721012, 27.145563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364029, 37.471954, 27.533312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.164417, 37.743023, 27.749361>,  <33.044651, 37.905663, 27.878990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.164417, 37.743023, 27.749361>,  <33.364029, 37.471954, 27.533312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164417, 37.743023, 27.749361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160286, -0.540341, 0.826039,
		0.851632, 0.498793, 0.161025,
		-0.499031, 0.677671, 0.540121,
		33.014709, 37.946323, 27.911398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813530, 38.021809, 27.229134>,  <33.364029, 37.471954, 27.533312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813530, 38.021809, 27.229134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046936, 37.759384, 27.037678>,  <34.186981, 37.601929, 26.922804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.046936, 37.759384, 27.037678>,  <33.813530, 38.021809, 27.229134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046936, 37.759384, 27.037678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528910, 0.140229, -0.837013,
		0.616249, 0.741567, -0.265171,
		0.583516, -0.656060, -0.478638,
		34.221992, 37.562565, 26.894087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053490, 38.327694, 26.641296>,  <33.813530, 38.021809, 27.229134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053490, 38.327694, 26.641296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078823, 37.937241, 26.558203>,  <34.094025, 37.702969, 26.508347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.078823, 37.937241, 26.558203>,  <34.053490, 38.327694, 26.641296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078823, 37.937241, 26.558203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085437, 0.202085, -0.975634,
		0.994328, 0.079540, -0.070599,
		0.063335, -0.976133, -0.207734,
		34.097824, 37.644402, 26.495882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631676, 38.205082, 26.162273>,  <34.053490, 38.327694, 26.641296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631676, 38.205082, 26.162273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418884, 37.872772, 26.096767>,  <34.291210, 37.673386, 26.057465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418884, 37.872772, 26.096767>,  <34.631676, 38.205082, 26.162273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418884, 37.872772, 26.096767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047097, 0.222131, -0.973879,
		0.845448, -0.510368, -0.157295,
		-0.531977, -0.830773, -0.163763,
		34.259293, 37.623539, 26.047638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965157, 37.888340, 25.591391>,  <34.631676, 38.205082, 26.162273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965157, 37.888340, 25.591391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605000, 37.714893, 25.605682>,  <34.388905, 37.610825, 25.614258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.605000, 37.714893, 25.605682>,  <34.965157, 37.888340, 25.591391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605000, 37.714893, 25.605682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190273, 0.318577, -0.928604,
		0.391277, -0.842902, -0.369349,
		-0.900388, -0.433618, 0.035729,
		34.334881, 37.584808, 25.616402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851677, 37.614456, 24.952480>,  <34.965157, 37.888340, 25.591391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851677, 37.614456, 24.952480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486233, 37.667034, 25.106380>,  <34.266964, 37.698582, 25.198721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.486233, 37.667034, 25.106380>,  <34.851677, 37.614456, 24.952480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486233, 37.667034, 25.106380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296488, 0.432149, -0.851670,
		-0.278216, -0.892171, -0.355846,
		-0.913614, 0.131444, 0.384749,
		34.212147, 37.706467, 25.221806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351231, 37.475899, 24.356184>,  <34.851677, 37.614456, 24.952480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351231, 37.475899, 24.356184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116608, 37.685135, 24.603514>,  <33.975834, 37.810677, 24.751911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.116608, 37.685135, 24.603514>,  <34.351231, 37.475899, 24.356184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116608, 37.685135, 24.603514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349390, 0.525330, -0.775857,
		-0.730667, -0.671123, -0.125375,
		-0.586559, 0.523089, 0.618325,
		33.940639, 37.842060, 24.789011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702465, 37.607075, 24.016665>,  <34.351231, 37.475899, 24.356184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702465, 37.607075, 24.016665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693810, 37.888390, 24.300894>,  <33.688614, 38.057178, 24.471432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.693810, 37.888390, 24.300894>,  <33.702465, 37.607075, 24.016665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693810, 37.888390, 24.300894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462570, 0.623046, -0.630748,
		-0.886319, -0.342341, 0.311836,
		-0.021642, 0.703290, 0.710573,
		33.687317, 38.099377, 24.514067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892097, 37.754166, 23.992517>,  <33.702465, 37.607075, 24.016665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892097, 37.754166, 23.992517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.142651, 38.036552, 24.124735>,  <33.292984, 38.205982, 24.204065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.142651, 38.036552, 24.124735>,  <32.892097, 37.754166, 23.992517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142651, 38.036552, 24.124735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388324, 0.650274, -0.652954,
		-0.675906, 0.280641, 0.681463,
		0.626383, 0.705964, 0.330544,
		33.330566, 38.248341, 24.223898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430553, 38.255032, 24.098806>,  <32.892097, 37.754166, 23.992517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430553, 38.255032, 24.098806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777573, 38.453434, 24.113445>,  <32.985783, 38.572475, 24.122229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.777573, 38.453434, 24.113445>,  <32.430553, 38.255032, 24.098806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777573, 38.453434, 24.113445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346471, 0.655506, -0.671022,
		-0.356821, 0.569463, 0.740534,
		0.867546, 0.496008, 0.036596,
		33.037838, 38.602238, 24.124424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362194, 39.009598, 24.328671>,  <32.430553, 38.255032, 24.098806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362194, 39.009598, 24.328671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677700, 38.957317, 24.088417>,  <32.867004, 38.925949, 23.944265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.677700, 38.957317, 24.088417>,  <32.362194, 39.009598, 24.328671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677700, 38.957317, 24.088417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363749, 0.688431, -0.627495,
		0.495509, 0.713428, 0.495470,
		0.788770, -0.130703, -0.600633,
		32.914330, 38.918106, 23.908228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457497, 39.637482, 23.989328>,  <32.362194, 39.009598, 24.328671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457497, 39.637482, 23.989328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649902, 39.368023, 23.764891>,  <32.765347, 39.206348, 23.630228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.649902, 39.368023, 23.764891>,  <32.457497, 39.637482, 23.989328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649902, 39.368023, 23.764891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255227, 0.504681, -0.824716,
		0.838740, 0.539907, 0.070827,
		0.481015, -0.673645, -0.561095,
		32.794209, 39.165928, 23.596561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021927, 40.021896, 23.594875>,  <32.457497, 39.637482, 23.989328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021927, 40.021896, 23.594875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.919834, 39.680431, 23.413271>,  <32.858578, 39.475552, 23.304308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.919834, 39.680431, 23.413271>,  <33.021927, 40.021896, 23.594875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919834, 39.680431, 23.413271> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216417, 0.508086, -0.833674,
		0.942349, -0.114524, -0.314425,
		-0.255231, -0.853658, -0.454009,
		32.843266, 39.424335, 23.277069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475441, 39.982479, 22.951256>,  <33.021927, 40.021896, 23.594875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475441, 39.982479, 22.951256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.147778, 39.755684, 22.916628>,  <32.951180, 39.619606, 22.895851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.147778, 39.755684, 22.916628>,  <33.475441, 39.982479, 22.951256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147778, 39.755684, 22.916628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228538, 0.461093, -0.857417,
		0.526064, -0.682579, -0.507289,
		-0.819162, -0.566991, -0.086569,
		32.902031, 39.585587, 22.890657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437096, 39.752968, 22.167763>,  <33.475441, 39.982479, 22.951256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437096, 39.752968, 22.167763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069359, 39.713795, 22.320194>,  <32.848717, 39.690292, 22.411654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.069359, 39.713795, 22.320194>,  <33.437096, 39.752968, 22.167763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069359, 39.713795, 22.320194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384269, 0.431608, -0.816120,
		-0.084555, -0.896730, -0.434426,
		-0.919341, -0.097930, 0.381080,
		32.793556, 39.684414, 22.434519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723854, 39.076275, 21.780006>,  <33.437096, 39.752968, 22.167763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723854, 39.076275, 21.780006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947903, 38.923916, 21.485748>,  <34.082333, 38.832500, 21.309193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.947903, 38.923916, 21.485748>,  <33.723854, 39.076275, 21.780006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947903, 38.923916, 21.485748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544541, -0.499921, 0.673464,
		-0.624287, -0.777813, -0.072602,
		0.560125, -0.380900, -0.735646,
		34.115940, 38.809647, 21.265055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857044, 38.408535, 21.897701>,  <33.723854, 39.076275, 21.780006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857044, 38.408535, 21.897701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161297, 38.497166, 21.653620>,  <34.343849, 38.550343, 21.507172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.161297, 38.497166, 21.653620>,  <33.857044, 38.408535, 21.897701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161297, 38.497166, 21.653620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628407, -0.487220, 0.606400,
		-0.162938, -0.844701, -0.509835,
		0.760628, 0.221578, -0.610203,
		34.389484, 38.563641, 21.470558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223351, 37.720932, 21.845371>,  <33.857044, 38.408535, 21.897701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223351, 37.720932, 21.845371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489357, 37.993977, 21.724178>,  <34.648960, 38.157803, 21.651463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489357, 37.993977, 21.724178>,  <34.223351, 37.720932, 21.845371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489357, 37.993977, 21.724178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713806, -0.461648, 0.526653,
		0.219629, -0.566501, -0.794254,
		0.665015, 0.682611, -0.302981,
		34.688862, 38.198761, 21.633284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799099, 37.362251, 21.878551>,  <34.223351, 37.720932, 21.845371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799099, 37.362251, 21.878551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951733, 37.729877, 21.839130>,  <35.043312, 37.950455, 21.815477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.951733, 37.729877, 21.839130>,  <34.799099, 37.362251, 21.878551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951733, 37.729877, 21.839130> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831479, -0.294717, 0.470940,
		0.403780, -0.261647, -0.876643,
		0.381582, 0.919066, -0.098553,
		35.066208, 38.005596, 21.809565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503387, 37.292744, 21.508129>,  <34.799099, 37.362251, 21.878551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503387, 37.292744, 21.508129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488251, 37.622822, 21.733561>,  <35.479168, 37.820869, 21.868818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488251, 37.622822, 21.733561>,  <35.503387, 37.292744, 21.508129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488251, 37.622822, 21.733561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855719, -0.264494, 0.444734,
		0.516056, 0.499094, -0.696127,
		-0.037842, 0.825196, 0.563577,
		35.476898, 37.870380, 21.902634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215340, 37.555019, 21.531910>,  <35.503387, 37.292744, 21.508129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215340, 37.555019, 21.531910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020069, 37.697899, 21.850431>,  <35.902908, 37.783627, 22.041544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020069, 37.697899, 21.850431>,  <36.215340, 37.555019, 21.531910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020069, 37.697899, 21.850431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846864, -0.026683, 0.531140,
		0.210969, 0.933648, -0.289472,
		-0.488174, 0.357197, 0.796302,
		35.873615, 37.805058, 22.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729836, 38.024319, 21.805744>,  <36.215340, 37.555019, 21.531910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729836, 38.024319, 21.805744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488098, 37.989841, 22.122562>,  <36.343056, 37.969154, 22.312653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.488098, 37.989841, 22.122562>,  <36.729836, 38.024319, 21.805744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488098, 37.989841, 22.122562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756814, -0.372798, 0.536893,
		0.248994, 0.923900, 0.290535,
		-0.604346, -0.086197, 0.792045,
		36.306793, 37.963982, 22.360176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089355, 38.244480, 22.349174>,  <36.729836, 38.024319, 21.805744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089355, 38.244480, 22.349174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802677, 38.009804, 22.499983>,  <36.630669, 37.868999, 22.590467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.802677, 38.009804, 22.499983>,  <37.089355, 38.244480, 22.349174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802677, 38.009804, 22.499983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614151, -0.274839, 0.739786,
		-0.330403, 0.761749, 0.557290,
		-0.716696, -0.586687, 0.377021,
		36.587669, 37.833797, 22.613089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006241, 38.369884, 23.033096>,  <37.089355, 38.244480, 22.349174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006241, 38.369884, 23.033096> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881611, 37.993046, 22.983511>,  <36.806835, 37.766941, 22.953760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881611, 37.993046, 22.983511>,  <37.006241, 38.369884, 23.033096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881611, 37.993046, 22.983511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590642, -0.294208, 0.751388,
		-0.744355, 0.160893, 0.648112,
		-0.311573, -0.942101, -0.123965,
		36.788139, 37.710415, 22.946321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959068, 38.095234, 23.732136>,  <37.006241, 38.369884, 23.033096>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959068, 38.095234, 23.732136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947735, 37.758709, 23.516214>,  <36.940937, 37.556793, 23.386662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947735, 37.758709, 23.516214>,  <36.959068, 38.095234, 23.732136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947735, 37.758709, 23.516214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447573, -0.493539, 0.745720,
		-0.893799, -0.220475, 0.390531,
		-0.028329, -0.841315, -0.539803,
		36.939236, 37.506313, 23.354273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765530, 37.618477, 24.182247>,  <36.959068, 38.095234, 23.732136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765530, 37.618477, 24.182247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951321, 37.432716, 23.880627>,  <37.062794, 37.321262, 23.699654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.951321, 37.432716, 23.880627>,  <36.765530, 37.618477, 24.182247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951321, 37.432716, 23.880627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529378, -0.536998, 0.656804,
		-0.709944, -0.704249, -0.003581,
		0.464476, -0.464399, -0.754053,
		37.090664, 37.293396, 23.654411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557499, 37.021614, 24.252777>,  <36.765530, 37.618477, 24.182247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557499, 37.021614, 24.252777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898617, 37.000912, 24.044909>,  <37.103287, 36.988491, 23.920187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.898617, 37.000912, 24.044909>,  <36.557499, 37.021614, 24.252777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898617, 37.000912, 24.044909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432278, -0.488410, 0.758018,
		-0.293042, -0.871078, -0.394143,
		0.852797, -0.051752, -0.519673,
		37.154457, 36.985386, 23.889006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905422, 36.453251, 24.508343>,  <36.557499, 37.021614, 24.252777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905422, 36.453251, 24.508343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200645, 36.640137, 24.313623>,  <37.377781, 36.752270, 24.196793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.200645, 36.640137, 24.313623>,  <36.905422, 36.453251, 24.508343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200645, 36.640137, 24.313623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672985, -0.457831, 0.580932,
		0.048551, -0.756371, -0.652338,
		0.738061, 0.467219, -0.486798,
		37.422066, 36.780304, 24.167583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307362, 35.972847, 24.311285>,  <36.905422, 36.453251, 24.508343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307362, 35.972847, 24.311285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537701, 36.299854, 24.308165>,  <37.675903, 36.496059, 24.306292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.537701, 36.299854, 24.308165>,  <37.307362, 35.972847, 24.311285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537701, 36.299854, 24.308165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678540, -0.472581, 0.562361,
		0.456056, -0.329126, -0.826855,
		0.575843, 0.817523, -0.007802,
		37.710453, 36.545113, 24.305824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.831585, 41.771469, 21.085768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474438, 41.632664, 21.200567>,  <36.260151, 41.549381, 21.269447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.474438, 41.632664, 21.200567>,  <36.831585, 41.771469, 21.085768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474438, 41.632664, 21.200567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331198, 0.074220, -0.940638,
		0.305111, -0.934919, -0.181198,
		-0.892869, -0.347012, 0.286998,
		36.206577, 41.528561, 21.286667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667885, 41.496056, 20.610552>,  <36.831585, 41.771469, 21.085768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667885, 41.496056, 20.610552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307644, 41.478653, 20.783537>,  <36.091499, 41.468212, 20.887329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.307644, 41.478653, 20.783537>,  <36.667885, 41.496056, 20.610552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307644, 41.478653, 20.783537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419570, 0.346813, -0.838857,
		-0.113486, -0.936925, -0.330595,
		-0.900601, -0.043510, 0.432464,
		36.037464, 41.465599, 20.913277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202442, 41.161945, 20.194265>,  <36.667885, 41.496056, 20.610552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202442, 41.161945, 20.194265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941162, 41.367168, 20.417011>,  <35.784393, 41.490303, 20.550659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.941162, 41.367168, 20.417011>,  <36.202442, 41.161945, 20.194265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941162, 41.367168, 20.417011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412483, 0.375622, -0.829919,
		-0.634969, -0.771801, -0.033727,
		-0.653201, 0.513061, 0.556863,
		35.745201, 41.521088, 20.584070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516361, 41.056072, 19.923317>,  <36.202442, 41.161945, 20.194265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516361, 41.056072, 19.923317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485073, 41.395050, 20.133352>,  <35.466301, 41.598438, 20.259375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.485073, 41.395050, 20.133352>,  <35.516361, 41.056072, 19.923317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485073, 41.395050, 20.133352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495512, 0.423989, -0.758090,
		-0.865072, -0.319485, 0.386756,
		-0.078218, 0.847445, 0.525090,
		35.461609, 41.649284, 20.290878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828327, 41.232258, 19.790976>,  <35.516361, 41.056072, 19.923317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828327, 41.232258, 19.790976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002045, 41.562187, 19.935778>,  <35.106277, 41.760147, 20.022659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.002045, 41.562187, 19.935778>,  <34.828327, 41.232258, 19.790976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002045, 41.562187, 19.935778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478513, 0.551747, -0.683082,
		-0.763159, 0.123436, 0.634312,
		0.434296, 0.824827, 0.362005,
		35.132332, 41.809635, 20.044378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318024, 41.671638, 19.765556>,  <34.828327, 41.232258, 19.790976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318024, 41.671638, 19.765556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625156, 41.925510, 19.800480>,  <34.809437, 42.077835, 19.821434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625156, 41.925510, 19.800480>,  <34.318024, 41.671638, 19.765556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625156, 41.925510, 19.800480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503033, 0.681657, -0.531320,
		-0.396733, 0.364043, 0.842660,
		0.767828, 0.634678, 0.087310,
		34.855503, 42.115913, 19.826674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064945, 42.363380, 19.951065>,  <34.318024, 41.671638, 19.765556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064945, 42.363380, 19.951065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416157, 42.412682, 19.766077>,  <34.626884, 42.442265, 19.655085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416157, 42.412682, 19.766077>,  <34.064945, 42.363380, 19.951065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416157, 42.412682, 19.766077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396698, 0.728018, -0.559125,
		0.267770, 0.674387, 0.688114,
		0.878026, 0.123256, -0.462469,
		34.679565, 42.449657, 19.627337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165646, 43.077885, 19.916733>,  <34.064945, 42.363380, 19.951065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165646, 43.077885, 19.916733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340645, 42.870617, 19.622768>,  <34.445644, 42.746254, 19.446390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.340645, 42.870617, 19.622768>,  <34.165646, 43.077885, 19.916733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340645, 42.870617, 19.622768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425451, 0.600733, -0.676839,
		0.792204, 0.608784, 0.042362,
		0.437497, -0.518172, -0.734911,
		34.471893, 42.715164, 19.402294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105709, 43.509914, 19.397562>,  <34.165646, 43.077885, 19.916733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105709, 43.509914, 19.397562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236992, 43.186031, 19.202974>,  <34.315762, 42.991703, 19.086222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.236992, 43.186031, 19.202974>,  <34.105709, 43.509914, 19.397562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236992, 43.186031, 19.202974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445193, 0.321622, -0.835681,
		0.833118, 0.490846, -0.254919,
		0.328203, -0.809709, -0.486471,
		34.335453, 42.943119, 19.057034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510693, 43.828320, 18.825928>,  <34.105709, 43.509914, 19.397562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510693, 43.828320, 18.825928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388592, 43.459614, 18.730284>,  <34.315331, 43.238392, 18.672897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.388592, 43.459614, 18.730284>,  <34.510693, 43.828320, 18.825928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388592, 43.459614, 18.730284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367012, 0.345572, -0.863645,
		0.878707, -0.175870, -0.443784,
		-0.305248, -0.921764, -0.239110,
		34.297016, 43.183083, 18.658550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589264, 43.788990, 18.172642>,  <34.510693, 43.828320, 18.825928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589264, 43.788990, 18.172642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.308102, 43.514637, 18.248005>,  <34.139404, 43.350025, 18.293222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.308102, 43.514637, 18.248005>,  <34.589264, 43.788990, 18.172642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308102, 43.514637, 18.248005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579127, 0.398069, -0.711444,
		0.412979, -0.609174, -0.677019,
		-0.702893, -0.685892, 0.188395,
		34.097233, 43.308872, 18.304527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420887, 43.447506, 17.465086>,  <34.589264, 43.788990, 18.172642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420887, 43.447506, 17.465086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129921, 43.409332, 17.736898>,  <33.955341, 43.386429, 17.899986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.129921, 43.409332, 17.736898>,  <34.420887, 43.447506, 17.465086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129921, 43.409332, 17.736898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672149, 0.298485, -0.677586,
		-0.138166, -0.949631, -0.281267,
		-0.727411, -0.095434, 0.679534,
		33.911697, 43.380703, 17.940758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964069, 42.960991, 17.221930>,  <34.420887, 43.447506, 17.465086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964069, 42.960991, 17.221930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796211, 43.216644, 17.479736>,  <33.695496, 43.370037, 17.634420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.796211, 43.216644, 17.479736>,  <33.964069, 42.960991, 17.221930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796211, 43.216644, 17.479736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582751, 0.354690, -0.731161,
		-0.695915, -0.682422, 0.223612,
		-0.419648, 0.639136, 0.644516,
		33.670319, 43.408386, 17.673092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243935, 42.898201, 17.144899>,  <33.964069, 42.960991, 17.221930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243935, 42.898201, 17.144899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314487, 43.255512, 17.310286>,  <33.356819, 43.469898, 17.409517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314487, 43.255512, 17.310286>,  <33.243935, 42.898201, 17.144899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314487, 43.255512, 17.310286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683545, 0.413404, -0.601551,
		-0.708277, -0.176521, 0.683509,
		0.176379, 0.893274, 0.413464,
		33.367401, 43.523495, 17.434324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581161, 42.476738, 17.174011>,  <33.243935, 42.898201, 17.144899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581161, 42.476738, 17.174011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213642, 42.346138, 17.262745>,  <31.993130, 42.267780, 17.315985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.213642, 42.346138, 17.262745>,  <32.581161, 42.476738, 17.174011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213642, 42.346138, 17.262745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392578, -0.697275, 0.599742,
		-0.041136, 0.638128, 0.768830,
		-0.918798, -0.326497, 0.221832,
		31.938004, 42.248188, 17.329294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500427, 42.393970, 17.958599>,  <32.581161, 42.476738, 17.174011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500427, 42.393970, 17.958599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222794, 42.136639, 17.829376>,  <32.056213, 41.982239, 17.751842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.222794, 42.136639, 17.829376>,  <32.500427, 42.393970, 17.958599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222794, 42.136639, 17.829376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261296, -0.643292, 0.719652,
		-0.670799, 0.415086, 0.614600,
		-0.694085, -0.643334, -0.323059,
		32.014568, 41.943638, 17.732458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186565, 42.113079, 18.528814>,  <32.500427, 42.393970, 17.958599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186565, 42.113079, 18.528814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075878, 41.846092, 18.252291>,  <32.009468, 41.685898, 18.086376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.075878, 41.846092, 18.252291>,  <32.186565, 42.113079, 18.528814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075878, 41.846092, 18.252291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164743, -0.741702, 0.650183,
		-0.946725, 0.066026, 0.315201,
		-0.276714, -0.667471, -0.691311,
		31.992865, 41.645851, 18.044897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781366, 41.570492, 18.978064>,  <32.186565, 42.113079, 18.528814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781366, 41.570492, 18.978064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915293, 41.399174, 18.642336>,  <31.995647, 41.296383, 18.440899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.915293, 41.399174, 18.642336>,  <31.781366, 41.570492, 18.978064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915293, 41.399174, 18.642336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331604, -0.780196, 0.530409,
		-0.882008, -0.455911, -0.119196,
		0.334815, -0.428299, -0.839320,
		32.015736, 41.270683, 18.390539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567560, 40.814785, 19.016735>,  <31.781366, 41.570492, 18.978064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567560, 40.814785, 19.016735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862141, 40.830975, 18.746622>,  <32.038887, 40.840687, 18.584555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.862141, 40.830975, 18.746622>,  <31.567560, 40.814785, 19.016735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862141, 40.830975, 18.746622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398426, -0.832664, 0.384613,
		-0.546715, -0.552298, -0.629341,
		0.736450, 0.040472, -0.675280,
		32.083076, 40.843117, 18.544039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438066, 40.206646, 18.747641>,  <31.567560, 40.814785, 19.016735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438066, 40.206646, 18.747641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813076, 40.328396, 18.680223>,  <32.038082, 40.401447, 18.639772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.813076, 40.328396, 18.680223>,  <31.438066, 40.206646, 18.747641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813076, 40.328396, 18.680223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346300, -0.863128, 0.367542,
		-0.033602, -0.402945, -0.914607,
		0.937522, 0.304378, -0.168543,
		32.094334, 40.419708, 18.629660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891907, 39.573624, 18.705147>,  <31.438066, 40.206646, 18.747641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891907, 39.573624, 18.705147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.180832, 39.848366, 18.737360>,  <32.354187, 40.013214, 18.756687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.180832, 39.848366, 18.737360>,  <31.891907, 39.573624, 18.705147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180832, 39.848366, 18.737360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519663, -0.615910, 0.592118,
		0.456302, -0.385847, -0.801817,
		0.722314, 0.686860, 0.080531,
		32.397526, 40.054424, 18.761518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545628, 39.232315, 18.560532>,  <31.891907, 39.573624, 18.705147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545628, 39.232315, 18.560532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632076, 39.551529, 18.785540>,  <32.683945, 39.743057, 18.920546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.632076, 39.551529, 18.785540>,  <32.545628, 39.232315, 18.560532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632076, 39.551529, 18.785540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556666, -0.574038, 0.600502,
		0.802131, 0.183355, -0.568302,
		0.216123, 0.798036, 0.562521,
		32.696915, 39.790939, 18.954296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258717, 39.252216, 18.554718>,  <32.545628, 39.232315, 18.560532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258717, 39.252216, 18.554718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119862, 39.449543, 18.873749>,  <33.036549, 39.567940, 19.065166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119862, 39.449543, 18.873749>,  <33.258717, 39.252216, 18.554718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119862, 39.449543, 18.873749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609235, -0.527935, 0.591707,
		0.712969, 0.691318, -0.117279,
		-0.347142, 0.493319, 0.797577,
		33.015720, 39.597538, 19.113022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784771, 39.684673, 18.817171>,  <33.258717, 39.252216, 18.554718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784771, 39.684673, 18.817171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518307, 39.606983, 19.105202>,  <33.358429, 39.560368, 19.278019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518307, 39.606983, 19.105202>,  <33.784771, 39.684673, 18.817171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518307, 39.606983, 19.105202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693006, -0.518026, 0.501390,
		0.275634, 0.833022, 0.479688,
		-0.666160, -0.194226, 0.720075,
		33.318459, 39.548714, 19.321224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281712, 39.564884, 19.404644>,  <33.784771, 39.684673, 18.817171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281712, 39.564884, 19.404644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916065, 39.498646, 19.552685>,  <33.696678, 39.458904, 19.641510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916065, 39.498646, 19.552685>,  <34.281712, 39.564884, 19.404644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916065, 39.498646, 19.552685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399605, -0.522493, 0.753204,
		0.068651, 0.836409, 0.543790,
		-0.914113, -0.165593, 0.370103,
		33.641830, 39.448967, 19.663715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197460, 39.904999, 20.058222>,  <34.281712, 39.564884, 19.404644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197460, 39.904999, 20.058222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939548, 39.599552, 20.071793>,  <33.784801, 39.416286, 20.079935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.939548, 39.599552, 20.071793>,  <34.197460, 39.904999, 20.058222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939548, 39.599552, 20.071793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437943, -0.332682, 0.835181,
		-0.626470, 0.553367, 0.548927,
		-0.644780, -0.763615, 0.033928,
		33.746113, 39.370468, 20.081970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935658, 39.933388, 20.746367>,  <34.197460, 39.904999, 20.058222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935658, 39.933388, 20.746367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870064, 39.556984, 20.627972>,  <33.830708, 39.331142, 20.556934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.870064, 39.556984, 20.627972>,  <33.935658, 39.933388, 20.746367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870064, 39.556984, 20.627972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471916, -0.338322, 0.814146,
		-0.866258, -0.006171, 0.499558,
		-0.163987, -0.941010, -0.295986,
		33.820869, 39.274681, 20.539175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695263, 39.614838, 21.303038>,  <33.935658, 39.933388, 20.746367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695263, 39.614838, 21.303038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 39.319538, 21.088903>,  <33.957905, 39.142361, 20.960423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.859413, 39.319538, 21.088903>,  <33.695263, 39.614838, 21.303038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859413, 39.319538, 21.088903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516284, -0.295814, 0.803707,
		-0.751693, -0.606207, 0.259750,
		0.410375, -0.738246, -0.535336,
		33.982525, 39.098064, 20.928303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924995, 39.625023, 21.508549>,  <33.695263, 39.614838, 21.303038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924995, 39.625023, 21.508549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710991, 39.754070, 21.820877>,  <32.582588, 39.831497, 22.008274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.710991, 39.754070, 21.820877>,  <32.924995, 39.625023, 21.508549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710991, 39.754070, 21.820877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691422, 0.363898, -0.624111,
		-0.485489, -0.873782, 0.028377,
		-0.535011, 0.322620, 0.780820,
		32.550488, 39.850857, 22.055122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.193718, 39.431446, 21.344389>,  <32.924995, 39.625023, 21.508549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.193718, 39.431446, 21.344389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166241, 39.698780, 21.640663>,  <32.149754, 39.859180, 21.818428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.166241, 39.698780, 21.640663>,  <32.193718, 39.431446, 21.344389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166241, 39.698780, 21.640663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686305, 0.507188, -0.521292,
		-0.724063, -0.544144, 0.423840,
		-0.068691, 0.668332, 0.740685,
		32.145634, 39.899281, 21.862869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582890, 39.603374, 21.524754>,  <32.193718, 39.431446, 21.344389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582890, 39.603374, 21.524754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741594, 39.945755, 21.657381>,  <31.836817, 40.151184, 21.736958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.741594, 39.945755, 21.657381>,  <31.582890, 39.603374, 21.524754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741594, 39.945755, 21.657381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685936, 0.516503, -0.512558,
		-0.609978, -0.024071, 0.792053,
		0.396760, 0.855947, 0.331567,
		31.860622, 40.202538, 21.756851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030735, 40.011501, 21.609377>,  <31.582890, 39.603374, 21.524754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030735, 40.011501, 21.609377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345575, 40.258038, 21.619093>,  <31.534479, 40.405960, 21.624922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345575, 40.258038, 21.619093>,  <31.030735, 40.011501, 21.609377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345575, 40.258038, 21.619093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551401, 0.720723, -0.420137,
		-0.276454, 0.317298, 0.907136,
		0.787102, 0.616344, 0.024288,
		31.581705, 40.442940, 21.626379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733007, 40.699669, 21.824480>,  <31.030735, 40.011501, 21.609377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733007, 40.699669, 21.824480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090981, 40.802654, 21.678709>,  <31.305765, 40.864445, 21.591248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.090981, 40.802654, 21.678709>,  <30.733007, 40.699669, 21.824480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090981, 40.802654, 21.678709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406581, 0.806989, -0.428322,
		0.183811, 0.531489, 0.826882,
		0.894933, 0.257464, -0.364427,
		31.359461, 40.879894, 21.569382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791126, 41.394176, 21.912548>,  <30.733007, 40.699669, 21.824480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791126, 41.394176, 21.912548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059601, 41.312191, 21.627592>,  <31.220686, 41.263000, 21.456617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.059601, 41.312191, 21.627592>,  <30.791126, 41.394176, 21.912548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059601, 41.312191, 21.627592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394775, 0.714573, -0.577528,
		0.627426, 0.668862, 0.398698,
		0.671185, -0.204960, -0.712392,
		31.260956, 41.250702, 21.413874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235516, 42.055534, 21.715731>,  <30.791126, 41.394176, 21.912548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235516, 42.055534, 21.715731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237104, 41.807583, 21.401857>,  <31.238058, 41.658810, 21.213533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.237104, 41.807583, 21.401857>,  <31.235516, 42.055534, 21.715731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237104, 41.807583, 21.401857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404797, 0.716527, -0.568091,
		0.914398, 0.319895, -0.248080,
		0.003974, -0.619884, -0.784684,
		31.238297, 41.621616, 21.166452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173031, 42.761063, 21.942928>,  <31.235516, 42.055534, 21.715731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173031, 42.761063, 21.942928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.872471, 42.924168, 22.150438>,  <30.692135, 43.022030, 22.274944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.872471, 42.924168, 22.150438>,  <31.173031, 42.761063, 21.942928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872471, 42.924168, 22.150438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245057, -0.557532, 0.793162,
		0.612653, 0.723113, 0.319006,
		-0.751401, 0.407758, 0.518777,
		30.647051, 43.046494, 22.306072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469053, 43.001587, 22.578485>,  <31.173031, 42.761063, 21.942928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469053, 43.001587, 22.578485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082739, 42.928394, 22.652002>,  <30.850950, 42.884480, 22.696112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082739, 42.928394, 22.652002>,  <31.469053, 43.001587, 22.578485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082739, 42.928394, 22.652002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256750, -0.574584, 0.777131,
		-0.036594, 0.797729, 0.601904,
		-0.965785, -0.182977, 0.183791,
		30.793003, 42.873501, 22.707140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383776, 43.008087, 23.260075>,  <31.469053, 43.001587, 22.578485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383776, 43.008087, 23.260075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061268, 42.807201, 23.135040>,  <30.867764, 42.686668, 23.060019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061268, 42.807201, 23.135040>,  <31.383776, 43.008087, 23.260075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061268, 42.807201, 23.135040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109567, -0.646063, 0.755380,
		-0.581313, 0.574791, 0.575927,
		-0.806270, -0.502214, -0.312587,
		30.819387, 42.656536, 23.041264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021816, 42.872974, 23.852165>,  <31.383776, 43.008087, 23.260075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021816, 42.872974, 23.852165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908905, 42.609909, 23.572794>,  <30.841158, 42.452072, 23.405170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.908905, 42.609909, 23.572794>,  <31.021816, 42.872974, 23.852165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908905, 42.609909, 23.572794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109157, -0.701290, 0.704469,
		-0.953102, 0.275094, 0.126170,
		-0.282277, -0.657659, -0.698430,
		30.824223, 42.412613, 23.363264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515524, 42.542774, 24.164379>,  <31.021816, 42.872974, 23.852165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515524, 42.542774, 24.164379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633059, 42.302353, 23.867086>,  <30.703579, 42.158100, 23.688711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.633059, 42.302353, 23.867086>,  <30.515524, 42.542774, 24.164379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633059, 42.302353, 23.867086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059714, -0.787580, 0.613312,
		-0.953989, -0.135831, -0.267310,
		0.293835, -0.601055, -0.743232,
		30.721209, 42.122036, 23.644117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927471, 42.076378, 24.218113>,  <30.515524, 42.542774, 24.164379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927471, 42.076378, 24.218113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235146, 41.914570, 24.020237>,  <30.419750, 41.817486, 23.901512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.235146, 41.914570, 24.020237>,  <29.927471, 42.076378, 24.218113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235146, 41.914570, 24.020237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052580, -0.731442, 0.679874,
		-0.636857, -0.548961, -0.541346,
		0.769187, -0.404518, -0.494688,
		30.465900, 41.793213, 23.871830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735601, 41.277012, 24.110851>,  <29.927471, 42.076378, 24.218113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735601, 41.277012, 24.110851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128588, 41.338070, 24.068022>,  <30.364380, 41.374702, 24.042324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.128588, 41.338070, 24.068022>,  <29.735601, 41.277012, 24.110851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128588, 41.338070, 24.068022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186129, -0.836784, 0.514927,
		-0.010998, -0.525827, -0.850521,
		0.982464, 0.152643, -0.107074,
		30.423326, 41.383862, 24.035900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.915331, 45.291977, 20.291567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981304, 44.951138, 20.092884>,  <32.020889, 44.746632, 19.973675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.981304, 44.951138, 20.092884>,  <31.915331, 45.291977, 20.291567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981304, 44.951138, 20.092884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631259, -0.295749, 0.716969,
		-0.757832, -0.431802, 0.489119,
		0.164932, -0.852103, -0.496707,
		32.030785, 44.695507, 19.943872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753481, 44.718254, 20.667852>,  <31.915331, 45.291977, 20.291567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753481, 44.718254, 20.667852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036999, 44.603317, 20.410154>,  <32.207108, 44.534355, 20.255535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.036999, 44.603317, 20.410154>,  <31.753481, 44.718254, 20.667852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036999, 44.603317, 20.410154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558525, -0.329261, 0.761339,
		-0.430889, -0.899456, -0.072890,
		0.708791, -0.287342, -0.644243,
		32.249638, 44.517117, 20.216881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052937, 44.122990, 21.066076>,  <31.753481, 44.718254, 20.667852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052937, 44.122990, 21.066076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326206, 44.198158, 20.783813>,  <32.490170, 44.243259, 20.614456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.326206, 44.198158, 20.783813>,  <32.052937, 44.122990, 21.066076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326206, 44.198158, 20.783813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712698, -0.382185, 0.588214,
		-0.159153, -0.904776, -0.395033,
		0.683177, 0.187923, -0.705658,
		32.531158, 44.254536, 20.572117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391609, 43.483246, 20.905897>,  <32.052937, 44.122990, 21.066076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391609, 43.483246, 20.905897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632561, 43.772923, 20.771627>,  <32.777134, 43.946728, 20.691067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632561, 43.772923, 20.771627>,  <32.391609, 43.483246, 20.905897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632561, 43.772923, 20.771627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750853, -0.371414, 0.546142,
		0.270840, -0.581027, -0.767498,
		0.602382, 0.724196, -0.335672,
		32.813274, 43.990181, 20.670925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014145, 43.147606, 20.925734>,  <32.391609, 43.483246, 20.905897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014145, 43.147606, 20.925734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.077038, 43.541164, 20.959740>,  <33.114773, 43.777298, 20.980145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.077038, 43.541164, 20.959740>,  <33.014145, 43.147606, 20.925734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077038, 43.541164, 20.959740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814673, -0.177888, 0.551963,
		0.558197, -0.017528, -0.829523,
		0.157237, 0.983895, 0.085017,
		33.124210, 43.836334, 20.985245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742023, 43.212223, 20.846869>,  <33.014145, 43.147606, 20.925734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742023, 43.212223, 20.846869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.618088, 43.544838, 21.031281>,  <33.543728, 43.744408, 21.141928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.618088, 43.544838, 21.031281>,  <33.742023, 43.212223, 20.846869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618088, 43.544838, 21.031281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776263, -0.058756, 0.627665,
		0.549016, 0.552352, -0.627287,
		-0.309835, 0.831537, 0.461029,
		33.525139, 43.794300, 21.169590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335155, 43.532806, 20.973095>,  <33.742023, 43.212223, 20.846869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335155, 43.532806, 20.973095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092670, 43.731709, 21.221365>,  <33.947178, 43.851051, 21.370327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.092670, 43.731709, 21.221365>,  <34.335155, 43.532806, 20.973095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092670, 43.731709, 21.221365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708509, -0.016848, 0.705501,
		0.361272, 0.867440, -0.342097,
		-0.606216, 0.497256, 0.620676,
		33.910805, 43.880886, 21.407568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715485, 44.173203, 21.255686>,  <34.335155, 43.532806, 20.973095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715485, 44.173203, 21.255686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422855, 44.092522, 21.516186>,  <34.247280, 44.044113, 21.672485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.422855, 44.092522, 21.516186>,  <34.715485, 44.173203, 21.255686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422855, 44.092522, 21.516186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632063, 0.157393, 0.758764,
		-0.255545, 0.966718, 0.012343,
		-0.731569, -0.201700, 0.651248,
		34.203384, 44.032013, 21.711561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725079, 44.739307, 21.711283>,  <34.715485, 44.173203, 21.255686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725079, 44.739307, 21.711283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.536381, 44.444118, 21.904305>,  <34.423164, 44.267006, 22.020117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.536381, 44.444118, 21.904305>,  <34.725079, 44.739307, 21.711283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536381, 44.444118, 21.904305> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610935, 0.121052, 0.782371,
		-0.635781, 0.663887, 0.393746,
		-0.471742, -0.737970, 0.482555,
		34.394859, 44.222729, 22.049070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920063, 44.886436, 22.391199>,  <34.725079, 44.739307, 21.711283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920063, 44.886436, 22.391199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757320, 44.521786, 22.414522>,  <34.659676, 44.302994, 22.428516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.757320, 44.521786, 22.414522>,  <34.920063, 44.886436, 22.391199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757320, 44.521786, 22.414522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366980, -0.104662, 0.924322,
		-0.836535, 0.397468, 0.377132,
		-0.406860, -0.911628, 0.058309,
		34.635262, 44.248299, 22.432014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524563, 44.809624, 23.071531>,  <34.920063, 44.886436, 22.391199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524563, 44.809624, 23.071531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.669838, 44.459358, 22.944220>,  <34.757004, 44.249199, 22.867832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.669838, 44.459358, 22.944220>,  <34.524563, 44.809624, 23.071531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669838, 44.459358, 22.944220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419824, -0.151154, 0.894930,
		-0.831769, -0.458652, 0.312728,
		0.363192, -0.875666, -0.318279,
		34.778797, 44.196659, 22.848736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364681, 44.346684, 23.580282>,  <34.524563, 44.809624, 23.071531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364681, 44.346684, 23.580282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.642147, 44.132660, 23.387390>,  <34.808624, 44.004246, 23.271656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.642147, 44.132660, 23.387390>,  <34.364681, 44.346684, 23.580282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642147, 44.132660, 23.387390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441159, -0.213639, 0.871629,
		-0.569395, -0.817356, 0.087852,
		0.693663, -0.535058, -0.482229,
		34.850246, 43.972141, 23.242722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764687, 44.154179, 23.891973>,  <34.364681, 44.346684, 23.580282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764687, 44.154179, 23.891973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650951, 44.466537, 24.114454>,  <33.582710, 44.653954, 24.247942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.650951, 44.466537, 24.114454>,  <33.764687, 44.154179, 23.891973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650951, 44.466537, 24.114454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305192, 0.476243, -0.824652,
		-0.908852, -0.404225, 0.102910,
		-0.284335, 0.780893, 0.556201,
		33.565651, 44.700806, 24.281315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075222, 44.270065, 23.702164>,  <33.764687, 44.154179, 23.891973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075222, 44.270065, 23.702164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177711, 44.611279, 23.884014>,  <33.239204, 44.816006, 23.993124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.177711, 44.611279, 23.884014>,  <33.075222, 44.270065, 23.702164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177711, 44.611279, 23.884014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530018, 0.517303, -0.671922,
		-0.808351, -0.068798, 0.584667,
		0.256223, 0.853033, 0.454627,
		33.254578, 44.867188, 24.020403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519539, 44.700195, 23.887695>,  <33.075222, 44.270065, 23.702164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519539, 44.700195, 23.887695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.811771, 44.973118, 23.877075>,  <32.987110, 45.136871, 23.870703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.811771, 44.973118, 23.877075>,  <32.519539, 44.700195, 23.887695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811771, 44.973118, 23.877075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593957, 0.615840, -0.517645,
		-0.336840, 0.393955, 0.855183,
		0.730584, 0.682306, -0.026553,
		33.030945, 45.177811, 23.869110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191593, 45.344284, 24.069736>,  <32.519539, 44.700195, 23.887695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191593, 45.344284, 24.069736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.537861, 45.440205, 23.893957>,  <32.745621, 45.497757, 23.788490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.537861, 45.440205, 23.893957>,  <32.191593, 45.344284, 24.069736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537861, 45.440205, 23.893957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487575, 0.602928, -0.631465,
		0.113530, 0.760903, 0.638856,
		0.865668, 0.239800, -0.439448,
		32.797562, 45.512146, 23.762123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215626, 46.114868, 23.940311>,  <32.191593, 45.344284, 24.069736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215626, 46.114868, 23.940311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.491428, 45.973530, 23.687414>,  <32.656910, 45.888725, 23.535677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.491428, 45.973530, 23.687414>,  <32.215626, 46.114868, 23.940311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491428, 45.973530, 23.687414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311619, 0.643272, -0.699353,
		0.653816, 0.679226, 0.333430,
		0.689505, -0.353345, -0.632241,
		32.698280, 45.867527, 23.497742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502502, 46.678974, 23.731867>,  <32.215626, 46.114868, 23.940311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502502, 46.678974, 23.731867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577522, 46.395557, 23.459749>,  <32.622532, 46.225510, 23.296478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577522, 46.395557, 23.459749>,  <32.502502, 46.678974, 23.731867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577522, 46.395557, 23.459749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287945, 0.622499, -0.727724,
		0.939103, 0.332369, -0.087273,
		0.187546, -0.708538, -0.680295,
		32.633785, 46.182995, 23.255661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803867, 47.026619, 23.198130>,  <32.502502, 46.678974, 23.731867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803867, 47.026619, 23.198130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717754, 46.678413, 23.021107>,  <32.666088, 46.469490, 22.914892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.717754, 46.678413, 23.021107>,  <32.803867, 47.026619, 23.198130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717754, 46.678413, 23.021107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041662, 0.460958, -0.886443,
		0.975663, -0.172399, -0.135504,
		-0.215283, -0.870515, -0.442557,
		32.653168, 46.417259, 22.888340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983387, 47.086704, 22.530411>,  <32.803867, 47.026619, 23.198130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983387, 47.086704, 22.530411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.728928, 46.779072, 22.505625>,  <32.576252, 46.594494, 22.490753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.728928, 46.779072, 22.505625>,  <32.983387, 47.086704, 22.530411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728928, 46.779072, 22.505625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300728, 0.321105, -0.898028,
		0.710551, -0.552641, -0.435553,
		-0.636145, -0.769077, -0.061966,
		32.538082, 46.548347, 22.487036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099617, 46.854797, 21.877968>,  <32.983387, 47.086704, 22.530411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099617, 46.854797, 21.877968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.740101, 46.715103, 21.983955>,  <32.524391, 46.631287, 22.047548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.740101, 46.715103, 21.983955>,  <33.099617, 46.854797, 21.877968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740101, 46.715103, 21.983955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358679, 0.238352, -0.902518,
		0.252059, -0.906205, -0.339499,
		-0.898785, -0.349259, 0.264957,
		32.470463, 46.610332, 22.063446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989948, 46.385780, 21.419071>,  <33.099617, 46.854797, 21.877968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989948, 46.385780, 21.419071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618370, 46.464413, 21.544552>,  <32.395424, 46.511593, 21.619841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.618370, 46.464413, 21.544552>,  <32.989948, 46.385780, 21.419071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618370, 46.464413, 21.544552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319124, 0.004310, -0.947703,
		-0.187650, -0.980479, 0.058729,
		-0.928950, 0.196578, 0.313703,
		32.339684, 46.523388, 21.638662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572159, 45.966213, 21.020679>,  <32.989948, 46.385780, 21.419071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572159, 45.966213, 21.020679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.333263, 46.256130, 21.158077>,  <32.189926, 46.430080, 21.240517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.333263, 46.256130, 21.158077>,  <32.572159, 45.966213, 21.020679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333263, 46.256130, 21.158077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407352, 0.094821, -0.908336,
		-0.690924, -0.682413, 0.238614,
		-0.597234, 0.724791, 0.343496,
		32.154095, 46.473568, 21.261126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073868, 45.933662, 20.556650>,  <32.572159, 45.966213, 21.020679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073868, 45.933662, 20.556650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.022797, 46.297493, 20.714825>,  <31.992153, 46.515793, 20.809729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.022797, 46.297493, 20.714825>,  <32.073868, 45.933662, 20.556650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022797, 46.297493, 20.714825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426373, 0.309642, -0.849899,
		-0.895491, -0.277116, 0.348284,
		-0.127677, 0.909576, 0.395436,
		31.984493, 46.570366, 20.833456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422083, 46.071709, 20.472187>,  <32.073868, 45.933662, 20.556650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422083, 46.071709, 20.472187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564314, 46.443752, 20.508986>,  <31.649652, 46.666977, 20.531065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.564314, 46.443752, 20.508986>,  <31.422083, 46.071709, 20.472187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564314, 46.443752, 20.508986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446001, 0.255354, -0.857833,
		-0.821369, 0.263997, 0.505627,
		0.355579, 0.930108, 0.091997,
		31.670988, 46.722786, 20.536585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882311, 45.645252, 20.369324>,  <31.422083, 46.071709, 20.472187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882311, 45.645252, 20.369324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547293, 45.484051, 20.221754>,  <30.346281, 45.387329, 20.133211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.547293, 45.484051, 20.221754>,  <30.882311, 45.645252, 20.369324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547293, 45.484051, 20.221754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006509, -0.667827, 0.744288,
		-0.546328, 0.625777, 0.556713,
		-0.837546, -0.403001, -0.368925,
		30.296028, 45.363152, 20.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355879, 45.655880, 20.898623>,  <30.882311, 45.645252, 20.369324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355879, 45.655880, 20.898623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269651, 45.361843, 20.641512>,  <30.217915, 45.185421, 20.487246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269651, 45.361843, 20.641512>,  <30.355879, 45.655880, 20.898623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269651, 45.361843, 20.641512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062235, -0.646574, 0.760309,
		-0.974504, 0.203901, 0.093632,
		-0.215567, -0.735097, -0.642778,
		30.204981, 45.141315, 20.448679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763878, 45.269466, 21.212706>,  <30.355879, 45.655880, 20.898623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763878, 45.269466, 21.212706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896120, 45.014400, 20.934402>,  <29.975466, 44.861359, 20.767420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.896120, 45.014400, 20.934402>,  <29.763878, 45.269466, 21.212706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896120, 45.014400, 20.934402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073579, -0.752385, 0.654601,
		-0.940897, -0.165220, -0.295661,
		0.330604, -0.637666, -0.695760,
		29.995302, 44.823101, 20.725674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346590, 44.677849, 21.158428>,  <29.763878, 45.269466, 21.212706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346590, 44.677849, 21.158428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699451, 44.551697, 21.018520>,  <29.911169, 44.476006, 20.934576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.699451, 44.551697, 21.018520>,  <29.346590, 44.677849, 21.158428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699451, 44.551697, 21.018520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091112, -0.842924, 0.530261,
		-0.462062, -0.435905, -0.772325,
		0.882155, -0.315382, -0.349767,
		29.964098, 44.457081, 20.913589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198164, 44.030136, 21.112024>,  <29.346590, 44.677849, 21.158428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198164, 44.030136, 21.112024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597790, 44.035900, 21.095711>,  <29.837564, 44.039360, 21.085922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597790, 44.035900, 21.095711>,  <29.198164, 44.030136, 21.112024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597790, 44.035900, 21.095711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038862, -0.713101, 0.699984,
		-0.018992, -0.700913, -0.712993,
		0.999064, 0.014415, -0.040782,
		29.897509, 44.040226, 21.083477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594599, 43.381260, 20.948977>,  <29.198164, 44.030136, 21.112024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594599, 43.381260, 20.948977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824570, 43.617046, 21.175953>,  <29.962553, 43.758518, 21.312138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.824570, 43.617046, 21.175953>,  <29.594599, 43.381260, 20.948977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824570, 43.617046, 21.175953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192174, -0.771402, 0.606637,
		0.795317, -0.239725, -0.556779,
		0.574926, 0.589467, 0.567440,
		29.997047, 43.793888, 21.346186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010242, 42.856354, 21.161188>,  <29.594599, 43.381260, 20.948977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010242, 42.856354, 21.161188> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.084703, 43.166538, 21.402519>,  <30.129381, 43.352650, 21.547318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.084703, 43.166538, 21.402519>,  <30.010242, 42.856354, 21.161188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084703, 43.166538, 21.402519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440468, -0.614762, 0.654259,
		0.878256, 0.143953, -0.456008,
		0.186154, 0.775464, 0.603326,
		30.140551, 43.399178, 21.583517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.707054, 42.753452, 21.337152>,  <30.010242, 42.856354, 21.161188>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.707054, 42.753452, 21.337152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566692, 42.995640, 21.622885>,  <30.482475, 43.140953, 21.794323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566692, 42.995640, 21.622885>,  <30.707054, 42.753452, 21.337152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566692, 42.995640, 21.622885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414524, -0.583585, 0.698283,
		0.839663, 0.541139, -0.046200,
		-0.350907, 0.605473, 0.714329,
		30.461420, 43.177280, 21.837183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.399765, 42.527832, 21.112476>,  <30.707054, 42.753452, 21.337152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.399765, 42.527832, 21.112476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258051, 42.197491, 20.936998>,  <31.173023, 41.999287, 20.831711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.258051, 42.197491, 20.936998>,  <31.399765, 42.527832, 21.112476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258051, 42.197491, 20.936998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452244, 0.561927, -0.692613,
		0.818510, -0.046985, -0.572568,
		-0.354284, -0.825851, -0.438695,
		31.151766, 41.949734, 20.805389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419878, 42.695545, 20.389349>,  <31.399765, 42.527832, 21.112476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419878, 42.695545, 20.389349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.184113, 42.372475, 20.395674>,  <31.042652, 42.178631, 20.399469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.184113, 42.372475, 20.395674>,  <31.419878, 42.695545, 20.389349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184113, 42.372475, 20.395674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452189, 0.313646, -0.834956,
		0.669414, -0.499285, -0.550090,
		-0.589415, -0.807676, 0.015812,
		31.007288, 42.130173, 20.400417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394991, 42.527084, 19.721781>,  <31.419878, 42.695545, 20.389349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394991, 42.527084, 19.721781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.066536, 42.347454, 19.862675>,  <30.869463, 42.239677, 19.947210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.066536, 42.347454, 19.862675>,  <31.394991, 42.527084, 19.721781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066536, 42.347454, 19.862675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480209, 0.210091, -0.851622,
		0.308442, -0.868442, -0.388164,
		-0.821135, -0.449076, 0.352233,
		30.820194, 42.212730, 19.968346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154396, 42.039524, 19.235270>,  <31.394991, 42.527084, 19.721781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154396, 42.039524, 19.235270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836420, 42.157318, 19.447439>,  <30.645634, 42.227993, 19.574741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.836420, 42.157318, 19.447439>,  <31.154396, 42.039524, 19.235270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836420, 42.157318, 19.447439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496777, 0.185916, -0.847731,
		-0.348259, -0.937397, -0.001499,
		-0.794939, 0.294485, 0.530424,
		30.597939, 42.245663, 19.606567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703669, 41.810745, 18.813328>,  <31.154396, 42.039524, 19.235270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703669, 41.810745, 18.813328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501915, 42.056213, 19.056309>,  <30.380863, 42.203495, 19.202097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.501915, 42.056213, 19.056309>,  <30.703669, 41.810745, 18.813328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501915, 42.056213, 19.056309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574458, 0.286744, -0.766666,
		-0.644667, -0.735651, 0.207901,
		-0.504384, 0.613674, 0.607455,
		30.350599, 42.240314, 19.238544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004932, 41.698357, 18.741941>,  <30.703669, 41.810745, 18.813328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004932, 41.698357, 18.741941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.999495, 42.055523, 18.921949>,  <29.996231, 42.269821, 19.029955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.999495, 42.055523, 18.921949>,  <30.004932, 41.698357, 18.741941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999495, 42.055523, 18.921949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577494, 0.360399, -0.732539,
		-0.816282, -0.269844, 0.510753,
		-0.013597, 0.892915, 0.450021,
		29.995415, 42.323399, 19.056955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270218, 41.937840, 18.878716>,  <30.004932, 41.698357, 18.741941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270218, 41.937840, 18.878716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489662, 42.270420, 18.843573>,  <29.621328, 42.469967, 18.822487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489662, 42.270420, 18.843573>,  <29.270218, 41.937840, 18.878716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489662, 42.270420, 18.843573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608423, 0.324946, -0.724038,
		-0.573452, 0.450670, 0.684142,
		0.548611, 0.831449, -0.087857,
		29.654245, 42.519855, 18.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815212, 42.435749, 18.568720>,  <29.270218, 41.937840, 18.878716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815212, 42.435749, 18.568720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162487, 42.628571, 18.521599>,  <29.370852, 42.744263, 18.493326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162487, 42.628571, 18.521599>,  <28.815212, 42.435749, 18.568720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162487, 42.628571, 18.521599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279242, 0.278341, -0.918994,
		-0.410214, 0.830754, 0.376261,
		0.868187, 0.482052, -0.117802,
		29.422943, 42.773186, 18.486258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623034, 43.127182, 18.463528>,  <28.815212, 42.435749, 18.568720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623034, 43.127182, 18.463528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998220, 43.113071, 18.325560>,  <29.223333, 43.104607, 18.242779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.998220, 43.113071, 18.325560>,  <28.623034, 43.127182, 18.463528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998220, 43.113071, 18.325560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282401, 0.499433, -0.819034,
		0.201155, 0.865634, 0.458491,
		0.937969, -0.035274, -0.344920,
		29.279612, 43.102489, 18.222084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.417397, 35.513683, 29.898302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659016, 35.784702, 29.730469>,  <37.803989, 35.947315, 29.629768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.659016, 35.784702, 29.730469>,  <37.417397, 35.513683, 29.898302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659016, 35.784702, 29.730469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759313, 0.329428, -0.561179,
		-0.242002, 0.657577, 0.713462,
		0.604052, 0.677547, -0.419584,
		37.840233, 35.987965, 29.604593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171379, 36.189480, 29.991730>,  <37.417397, 35.513683, 29.898302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171379, 36.189480, 29.991730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394135, 36.152554, 29.661554>,  <37.527790, 36.130398, 29.463449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394135, 36.152554, 29.661554>,  <37.171379, 36.189480, 29.991730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394135, 36.152554, 29.661554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785937, 0.262881, -0.559640,
		0.268654, 0.960402, 0.073844,
		0.556892, -0.092313, -0.825439,
		37.561203, 36.124859, 29.413923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182865, 36.838917, 29.718176>,  <37.171379, 36.189480, 29.991730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182865, 36.838917, 29.718176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267105, 36.584076, 29.421595>,  <37.317650, 36.431171, 29.243647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267105, 36.584076, 29.421595>,  <37.182865, 36.838917, 29.718176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267105, 36.584076, 29.421595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780547, 0.347047, -0.519910,
		0.588552, 0.688234, -0.424195,
		0.210604, -0.637097, -0.741453,
		37.330288, 36.392948, 29.199158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249458, 37.233761, 29.110359>,  <37.182865, 36.838917, 29.718176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249458, 37.233761, 29.110359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186653, 36.870407, 28.955343>,  <37.148972, 36.652393, 28.862333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.186653, 36.870407, 28.955343>,  <37.249458, 37.233761, 29.110359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186653, 36.870407, 28.955343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769216, 0.358591, -0.528884,
		0.619398, 0.215062, -0.755046,
		-0.157010, -0.908384, -0.387540,
		37.139549, 36.597893, 28.839081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044998, 37.466167, 28.458082>,  <37.249458, 37.233761, 29.110359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044998, 37.466167, 28.458082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947449, 37.083973, 28.524502>,  <36.888920, 36.854656, 28.564354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.947449, 37.083973, 28.524502>,  <37.044998, 37.466167, 28.458082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947449, 37.083973, 28.524502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863502, 0.135996, -0.485664,
		0.441462, -0.261826, -0.858230,
		-0.243875, -0.955485, 0.166050,
		36.874287, 36.797329, 28.574318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916126, 37.213730, 27.762987>,  <37.044998, 37.466167, 28.458082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916126, 37.213730, 27.762987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714325, 37.013142, 28.044127>,  <36.593243, 36.892788, 28.212811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714325, 37.013142, 28.044127>,  <36.916126, 37.213730, 27.762987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714325, 37.013142, 28.044127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826969, 0.046662, -0.560307,
		0.248182, -0.863914, -0.438244,
		-0.504507, -0.501472, 0.702850,
		36.562973, 36.862701, 28.254982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585239, 36.828548, 27.321678>,  <36.916126, 37.213730, 27.762987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585239, 36.828548, 27.321678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397488, 36.776241, 27.670982>,  <36.284836, 36.744858, 27.880564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.397488, 36.776241, 27.670982>,  <36.585239, 36.828548, 27.321678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397488, 36.776241, 27.670982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837585, -0.247131, -0.487215,
		0.279523, -0.960117, 0.006466,
		-0.469381, -0.130772, 0.873258,
		36.256672, 36.737011, 27.932961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227791, 36.186321, 27.328564>,  <36.585239, 36.828548, 27.321678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227791, 36.186321, 27.328564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030891, 36.371941, 27.623140>,  <35.912750, 36.483315, 27.799887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.030891, 36.371941, 27.623140>,  <36.227791, 36.186321, 27.328564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030891, 36.371941, 27.623140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865979, -0.175400, -0.468311,
		-0.088145, -0.868272, 0.488195,
		-0.492250, 0.464046, 0.736445,
		35.883217, 36.511154, 27.844072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593826, 35.847839, 27.569698>,  <36.227791, 36.186321, 27.328564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593826, 35.847839, 27.569698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518353, 36.216640, 27.704933>,  <35.473068, 36.437923, 27.786074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.518353, 36.216640, 27.704933>,  <35.593826, 35.847839, 27.569698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518353, 36.216640, 27.704933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880361, -0.006254, -0.474263,
		-0.435158, -0.387126, 0.812878,
		-0.188683, 0.922006, 0.338089,
		35.461746, 36.493240, 27.806360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888138, 35.803818, 27.498072>,  <35.593826, 35.847839, 27.569698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888138, 35.803818, 27.498072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956371, 36.190311, 27.575327>,  <34.997311, 36.422207, 27.621679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956371, 36.190311, 27.575327>,  <34.888138, 35.803818, 27.498072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956371, 36.190311, 27.575327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758192, 0.253900, -0.600566,
		-0.629322, -0.043991, 0.775898,
		0.170581, 0.966230, 0.193138,
		35.007545, 36.480179, 27.633268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180374, 36.144077, 27.710039>,  <34.888138, 35.803818, 27.498072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180374, 36.144077, 27.710039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434673, 36.417767, 27.567118>,  <34.587254, 36.581982, 27.481365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434673, 36.417767, 27.567118>,  <34.180374, 36.144077, 27.710039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434673, 36.417767, 27.567118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739800, 0.408004, -0.535003,
		-0.220279, 0.604460, 0.765575,
		0.635746, 0.684223, -0.357304,
		34.625397, 36.623032, 27.459927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990479, 36.794880, 27.957710>,  <34.180374, 36.144077, 27.710039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990479, 36.794880, 27.957710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187702, 36.867161, 27.617302>,  <34.306038, 36.910530, 27.413057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187702, 36.867161, 27.617302>,  <33.990479, 36.794880, 27.957710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187702, 36.867161, 27.617302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859950, 0.249436, -0.445272,
		0.131816, 0.951383, 0.278379,
		0.493062, 0.180698, -0.851022,
		34.335621, 36.921371, 27.361996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862152, 37.539642, 28.098343>,  <33.990479, 36.794880, 27.957710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862152, 37.539642, 28.098343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523598, 37.690437, 28.248819>,  <33.320465, 37.780914, 28.339106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.523598, 37.690437, 28.248819>,  <33.862152, 37.539642, 28.098343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523598, 37.690437, 28.248819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281682, -0.282602, 0.916947,
		0.451988, 0.882053, 0.132999,
		-0.846382, 0.376985, 0.376191,
		33.269684, 37.803532, 28.361677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081680, 37.994549, 28.649504>,  <33.862152, 37.539642, 28.098343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081680, 37.994549, 28.649504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696030, 37.924820, 28.729570>,  <33.464638, 37.882984, 28.777611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.696030, 37.924820, 28.729570>,  <34.081680, 37.994549, 28.649504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696030, 37.924820, 28.729570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230801, -0.178136, 0.956555,
		-0.131092, 0.968442, 0.211980,
		-0.964130, -0.174322, 0.200165,
		33.406792, 37.872524, 28.789619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905464, 38.425606, 29.251537>,  <34.081680, 37.994549, 28.649504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905464, 38.425606, 29.251537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666283, 38.110577, 29.191967>,  <33.522774, 37.921558, 29.156225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666283, 38.110577, 29.191967>,  <33.905464, 38.425606, 29.251537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666283, 38.110577, 29.191967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006620, -0.180943, 0.983471,
		-0.801503, 0.589056, 0.102981,
		-0.597954, -0.787574, -0.148926,
		33.486897, 37.874306, 29.147289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514683, 38.459789, 29.829775>,  <33.905464, 38.425606, 29.251537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514683, 38.459789, 29.829775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382992, 38.098816, 29.718613>,  <33.303978, 37.882233, 29.651915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382992, 38.098816, 29.718613>,  <33.514683, 38.459789, 29.829775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382992, 38.098816, 29.718613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212977, -0.215761, 0.952937,
		-0.919919, 0.372920, -0.121162,
		-0.329228, -0.902429, -0.277906,
		33.284222, 37.828087, 29.635241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940392, 38.341652, 30.156057>,  <33.514683, 38.459789, 29.829775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940392, 38.341652, 30.156057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080006, 37.977982, 30.065224>,  <33.163776, 37.759777, 30.010723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080006, 37.977982, 30.065224>,  <32.940392, 38.341652, 30.156057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080006, 37.977982, 30.065224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175128, -0.301340, 0.937296,
		-0.920600, -0.287382, -0.264402,
		0.349037, -0.909179, -0.227085,
		33.184715, 37.705227, 29.997099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550701, 37.873848, 30.496141>,  <32.940392, 38.341652, 30.156057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550701, 37.873848, 30.496141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884029, 37.675617, 30.398184>,  <33.084026, 37.556679, 30.339409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.884029, 37.675617, 30.398184>,  <32.550701, 37.873848, 30.496141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884029, 37.675617, 30.398184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020858, -0.470895, 0.881943,
		-0.552396, -0.729834, -0.402743,
		0.833321, -0.495582, -0.244897,
		33.134026, 37.526943, 30.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448322, 37.178329, 30.774088>,  <32.550701, 37.873848, 30.496141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448322, 37.178329, 30.774088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839767, 37.226933, 30.707691>,  <33.074635, 37.256092, 30.667854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839767, 37.226933, 30.707691>,  <32.448322, 37.178329, 30.774088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839767, 37.226933, 30.707691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194852, -0.288851, 0.937335,
		0.065946, -0.949632, -0.306350,
		0.978613, 0.121506, -0.165990,
		33.133350, 37.263386, 30.657894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765842, 36.686546, 31.024256>,  <32.448322, 37.178329, 30.774088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765842, 36.686546, 31.024256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086075, 36.926186, 31.019278>,  <33.278214, 37.069969, 31.016291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.086075, 36.926186, 31.019278>,  <32.765842, 36.686546, 31.024256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086075, 36.926186, 31.019278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360183, -0.464510, 0.809011,
		0.478896, -0.652160, -0.587662,
		0.800579, 0.599098, -0.012445,
		33.326248, 37.105915, 31.015545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408394, 36.279449, 31.110207>,  <32.765842, 36.686546, 31.024256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408394, 36.279449, 31.110207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511391, 36.649895, 31.220486>,  <33.573189, 36.872162, 31.286654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.511391, 36.649895, 31.220486>,  <33.408394, 36.279449, 31.110207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511391, 36.649895, 31.220486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463722, -0.368750, 0.805596,
		0.847737, -0.079590, -0.524411,
		0.257494, 0.926115, 0.275696,
		33.588638, 36.927731, 31.303194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045742, 36.191303, 31.399851>,  <33.408394, 36.279449, 31.110207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045742, 36.191303, 31.399851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988010, 36.570549, 31.513168>,  <33.953369, 36.798096, 31.581160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.988010, 36.570549, 31.513168>,  <34.045742, 36.191303, 31.399851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988010, 36.570549, 31.513168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697160, -0.105742, 0.709075,
		0.702237, 0.299845, -0.645722,
		-0.144332, 0.948110, 0.283295,
		33.944710, 36.854980, 31.598156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723938, 36.335442, 31.697880>,  <34.045742, 36.191303, 31.399851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723938, 36.335442, 31.697880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455673, 36.593349, 31.844566>,  <34.294716, 36.748096, 31.932579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455673, 36.593349, 31.844566>,  <34.723938, 36.335442, 31.697880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455673, 36.593349, 31.844566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496973, 0.023564, 0.867446,
		0.550663, 0.764012, -0.336237,
		-0.670662, 0.644772, 0.366718,
		34.254475, 36.786781, 31.954582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022449, 36.926189, 31.886135>,  <34.723938, 36.335442, 31.697880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022449, 36.926189, 31.886135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687725, 36.931973, 32.105057>,  <34.486893, 36.935444, 32.236408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.687725, 36.931973, 32.105057>,  <35.022449, 36.926189, 31.886135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687725, 36.931973, 32.105057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543909, 0.136172, 0.828022,
		-0.062557, 0.990580, -0.121813,
		-0.836809, 0.014457, 0.547304,
		34.436684, 36.936310, 32.269249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345772, 37.285435, 32.399574>,  <35.022449, 36.926189, 31.886135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345772, 37.285435, 32.399574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008503, 37.122753, 32.540230>,  <34.806141, 37.025143, 32.624622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008503, 37.122753, 32.540230>,  <35.345772, 37.285435, 32.399574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008503, 37.122753, 32.540230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397348, -0.030796, 0.917151,
		-0.362183, 0.913040, 0.187571,
		-0.843172, -0.406707, 0.351640,
		34.755550, 37.000740, 32.645721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213543, 37.660107, 32.963478>,  <35.345772, 37.285435, 32.399574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213543, 37.660107, 32.963478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015617, 37.316284, 33.014584>,  <34.896862, 37.109989, 33.045246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.015617, 37.316284, 33.014584>,  <35.213543, 37.660107, 32.963478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015617, 37.316284, 33.014584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418877, -0.107106, 0.901704,
		-0.761383, 0.499689, 0.413046,
		-0.494811, -0.859558, 0.127759,
		34.867172, 37.058418, 33.052910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876175, 37.851402, 33.217224>,  <35.213543, 37.660107, 32.963478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876175, 37.851402, 33.217224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699032, 37.831078, 33.575283>,  <35.592747, 37.818882, 33.790119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.699032, 37.831078, 33.575283>,  <35.876175, 37.851402, 33.217224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699032, 37.831078, 33.575283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017150, 0.998690, 0.048205,
		-0.896428, 0.005996, -0.443150,
		-0.442858, -0.050813, 0.895151,
		35.566174, 37.815834, 33.843830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768612, 38.613949, 33.264801>,  <35.876175, 37.851402, 33.217224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768612, 38.613949, 33.264801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134830, 38.714802, 33.139450>,  <36.354561, 38.775314, 33.064240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134830, 38.714802, 33.139450>,  <35.768612, 38.613949, 33.264801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134830, 38.714802, 33.139450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401864, 0.540900, -0.738873,
		-0.016789, 0.802407, 0.596541,
		0.915545, 0.252133, -0.313377,
		36.409492, 38.790443, 33.045437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976112, 39.372814, 33.243443>,  <35.768612, 38.613949, 33.264801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976112, 39.372814, 33.243443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115265, 39.136261, 32.952446>,  <36.198757, 38.994328, 32.777847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.115265, 39.136261, 32.952446>,  <35.976112, 39.372814, 33.243443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115265, 39.136261, 32.952446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370243, 0.626227, -0.686120,
		0.861335, 0.508036, -0.001103,
		0.347883, -0.591388, -0.727488,
		36.219631, 38.958843, 32.734200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348122, 39.791039, 32.746059>,  <35.976112, 39.372814, 33.243443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348122, 39.791039, 32.746059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229198, 39.488445, 32.513050>,  <36.157845, 39.306889, 32.373245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.229198, 39.488445, 32.513050>,  <36.348122, 39.791039, 32.746059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229198, 39.488445, 32.513050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217842, 0.647767, -0.730030,
		0.929599, -0.090145, -0.357380,
		-0.297307, -0.756487, -0.582526,
		36.140007, 39.261497, 32.338291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655567, 39.994041, 32.143669>,  <36.348122, 39.791039, 32.746059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.655567, 39.994041, 32.143669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368435, 39.724136, 32.075054>,  <36.196156, 39.562195, 32.033886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.368435, 39.724136, 32.075054>,  <36.655567, 39.994041, 32.143669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368435, 39.724136, 32.075054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243139, 0.473824, -0.846389,
		0.652387, -0.565854, -0.504184,
		-0.717827, -0.674760, -0.171535,
		36.153088, 39.521709, 32.023594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802670, 39.893330, 31.458181>,  <36.655567, 39.994041, 32.143669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802670, 39.893330, 31.458181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426064, 39.763111, 31.492983>,  <36.200100, 39.684982, 31.513865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426064, 39.763111, 31.492983>,  <36.802670, 39.893330, 31.458181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426064, 39.763111, 31.492983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281433, 0.617684, -0.734345,
		0.185319, -0.715883, -0.673177,
		-0.941516, -0.325542, 0.087004,
		36.143608, 39.665447, 31.519085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684578, 39.502823, 30.838903>,  <36.802670, 39.893330, 31.458181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684578, 39.502823, 30.838903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360622, 39.662758, 31.010584>,  <36.166248, 39.758720, 31.113592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.360622, 39.662758, 31.010584>,  <36.684578, 39.502823, 30.838903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360622, 39.662758, 31.010584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168339, 0.542488, -0.823024,
		-0.561914, -0.738807, -0.372045,
		-0.809885, 0.399839, 0.429202,
		36.117657, 39.782711, 31.139345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254559, 39.632706, 30.328804>,  <36.684578, 39.502823, 30.838903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254559, 39.632706, 30.328804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044128, 39.868896, 30.573618>,  <35.917870, 40.010609, 30.720507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.044128, 39.868896, 30.573618>,  <36.254559, 39.632706, 30.328804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044128, 39.868896, 30.573618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373627, 0.486024, -0.790053,
		-0.763968, -0.644300, -0.035069,
		-0.526075, 0.590473, 0.612035,
		35.886307, 40.046040, 30.757229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620880, 39.757523, 29.998068>,  <36.254559, 39.632706, 30.328804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620880, 39.757523, 29.998068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654385, 40.037720, 30.281557>,  <35.674488, 40.205837, 30.451651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.654385, 40.037720, 30.281557>,  <35.620880, 39.757523, 29.998068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654385, 40.037720, 30.281557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396611, 0.675899, -0.621176,
		-0.914157, -0.229057, 0.334439,
		0.083763, 0.700495, 0.708725,
		35.679512, 40.247868, 30.494175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968452, 40.052498, 29.990816>,  <35.620880, 39.757523, 29.998068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968452, 40.052498, 29.990816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212296, 40.312706, 30.172012>,  <35.358601, 40.468830, 30.280731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.212296, 40.312706, 30.172012>,  <34.968452, 40.052498, 29.990816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212296, 40.312706, 30.172012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345379, 0.732325, -0.586868,
		-0.713508, 0.201305, 0.671106,
		0.609607, 0.650521, 0.452993,
		35.395176, 40.507862, 30.307911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482449, 40.660538, 30.176338>,  <34.968452, 40.052498, 29.990816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482449, 40.660538, 30.176338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864281, 40.779213, 30.165325>,  <35.093380, 40.850418, 30.158716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.864281, 40.779213, 30.165325>,  <34.482449, 40.660538, 30.176338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864281, 40.779213, 30.165325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220243, 0.640324, -0.735852,
		-0.200689, 0.708492, 0.676582,
		0.954577, 0.296689, -0.027534,
		35.150654, 40.868221, 30.157064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491322, 41.425495, 30.311687>,  <34.482449, 40.660538, 30.176338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491322, 41.425495, 30.311687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845982, 41.361488, 30.138140>,  <35.058777, 41.323086, 30.034012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845982, 41.361488, 30.138140>,  <34.491322, 41.425495, 30.311687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845982, 41.361488, 30.138140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212229, 0.692777, -0.689216,
		0.410859, 0.703175, 0.580293,
		0.886653, -0.160016, -0.433868,
		35.111977, 41.313484, 30.007978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810223, 42.012272, 30.289015>,  <34.491322, 41.425495, 30.311687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810223, 42.012272, 30.289015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966557, 41.817276, 29.976706>,  <35.060356, 41.700279, 29.789320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.966557, 41.817276, 29.976706>,  <34.810223, 42.012272, 30.289015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966557, 41.817276, 29.976706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122190, 0.813258, -0.568930,
		0.912316, 0.317758, 0.258281,
		0.390831, -0.487485, -0.780775,
		35.083805, 41.671032, 29.742474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186089, 42.512962, 29.933353>,  <34.810223, 42.012272, 30.289015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186089, 42.512962, 29.933353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175339, 42.212616, 29.669392>,  <35.168888, 42.032406, 29.511015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175339, 42.212616, 29.669392>,  <35.186089, 42.512962, 29.933353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175339, 42.212616, 29.669392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054920, 0.658037, -0.750980,
		0.998129, -0.056428, 0.023550,
		-0.026879, -0.750869, -0.659905,
		35.167274, 41.987354, 29.471420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507561, 42.789127, 29.341404>,  <35.186089, 42.512962, 29.933353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507561, 42.789127, 29.341404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324959, 42.465122, 29.194172>,  <35.215397, 42.270718, 29.105833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.324959, 42.465122, 29.194172>,  <35.507561, 42.789127, 29.341404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324959, 42.465122, 29.194172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266645, 0.519241, -0.811966,
		0.848826, -0.272518, -0.453021,
		-0.456503, -0.810014, -0.368079,
		35.188007, 42.222118, 29.083748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749664, 42.761223, 28.535877>,  <35.507561, 42.789127, 29.341404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749664, 42.761223, 28.535877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420044, 42.539879, 28.584427>,  <35.222271, 42.407074, 28.613556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.420044, 42.539879, 28.584427>,  <35.749664, 42.761223, 28.535877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420044, 42.539879, 28.584427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332805, 0.299479, -0.894177,
		0.458454, -0.777241, -0.430947,
		-0.824051, -0.553361, 0.121372,
		35.172829, 42.373871, 28.620838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611813, 42.613945, 27.844702>,  <35.749664, 42.761223, 28.535877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611813, 42.613945, 27.844702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260319, 42.549362, 28.024368>,  <35.049423, 42.510612, 28.132168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260319, 42.549362, 28.024368>,  <35.611813, 42.613945, 27.844702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260319, 42.549362, 28.024368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467186, 0.483691, -0.740122,
		-0.097756, -0.860217, -0.500470,
		-0.878739, -0.161461, 0.449165,
		34.996696, 42.500923, 28.159119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172073, 42.236683, 27.358839>,  <35.611813, 42.613945, 27.844702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172073, 42.236683, 27.358839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965466, 42.448566, 27.627945>,  <34.841499, 42.575699, 27.789408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965466, 42.448566, 27.627945>,  <35.172073, 42.236683, 27.358839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965466, 42.448566, 27.627945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462436, 0.488694, -0.739819,
		-0.720667, -0.693241, -0.007462,
		-0.516520, 0.529712, 0.672765,
		34.810509, 42.607479, 27.829775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419811, 42.205345, 27.139429>,  <35.172073, 42.236683, 27.358839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419811, 42.205345, 27.139429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424847, 42.528233, 27.375479>,  <34.427868, 42.721966, 27.517109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.424847, 42.528233, 27.375479>,  <34.419811, 42.205345, 27.139429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424847, 42.528233, 27.375479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654940, 0.452610, -0.605143,
		-0.755576, -0.378875, 0.534376,
		0.012590, 0.807216, 0.590122,
		34.428623, 42.770397, 27.552515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759453, 42.482922, 27.095581>,  <34.419811, 42.205345, 27.139429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759453, 42.482922, 27.095581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958183, 42.799591, 27.237797>,  <34.077423, 42.989594, 27.323126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958183, 42.799591, 27.237797>,  <33.759453, 42.482922, 27.095581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958183, 42.799591, 27.237797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512222, 0.598211, -0.616256,
		-0.700563, 0.124061, 0.702724,
		0.496830, 0.791677, 0.355538,
		34.107231, 43.037094, 27.344458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258266, 42.948242, 27.218018>,  <33.759453, 42.482922, 27.095581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258266, 42.948242, 27.218018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601974, 43.152668, 27.209444>,  <33.808201, 43.275326, 27.204300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.601974, 43.152668, 27.209444>,  <33.258266, 42.948242, 27.218018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601974, 43.152668, 27.209444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396496, 0.638996, -0.659147,
		-0.323172, 0.574886, 0.751708,
		0.859273, 0.511067, -0.021435,
		33.859756, 43.305988, 27.203014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068020, 43.717743, 27.169111>,  <33.258266, 42.948242, 27.218018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068020, 43.717743, 27.169111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448158, 43.692276, 27.047268>,  <33.676243, 43.676998, 26.974163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.448158, 43.692276, 27.047268>,  <33.068020, 43.717743, 27.169111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448158, 43.692276, 27.047268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210513, 0.589356, -0.779963,
		0.229179, 0.805360, 0.546691,
		0.950348, -0.063666, -0.304607,
		33.733261, 43.673176, 26.955885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342503, 44.394386, 26.968510>,  <33.068020, 43.717743, 27.169111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342503, 44.394386, 26.968510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589191, 44.143906, 26.777710>,  <33.737206, 43.993618, 26.663229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.589191, 44.143906, 26.777710>,  <33.342503, 44.394386, 26.968510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589191, 44.143906, 26.777710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036758, 0.582390, -0.812078,
		0.786325, 0.518357, 0.336153,
		0.616719, -0.626201, -0.477002,
		33.774208, 43.956047, 26.634609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618282, 44.853863, 26.532360>,  <33.342503, 44.394386, 26.968510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618282, 44.853863, 26.532360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735416, 44.494858, 26.400471>,  <33.805698, 44.279453, 26.321337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.735416, 44.494858, 26.400471>,  <33.618282, 44.853863, 26.532360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735416, 44.494858, 26.400471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113126, 0.374937, -0.920122,
		0.949448, 0.232143, 0.211326,
		0.292834, -0.897514, -0.329722,
		33.823265, 44.225605, 26.301554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220325, 44.944759, 26.161016>,  <33.618282, 44.853863, 26.532360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220325, 44.944759, 26.161016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082500, 44.598839, 26.014919>,  <33.999805, 44.391289, 25.927261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082500, 44.598839, 26.014919>,  <34.220325, 44.944759, 26.161016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082500, 44.598839, 26.014919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215250, 0.305921, -0.927405,
		0.913754, -0.398164, 0.080740,
		-0.344560, -0.864799, -0.365241,
		33.979134, 44.339397, 25.905348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552654, 44.900288, 25.612101>,  <34.220325, 44.944759, 26.161016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552654, 44.900288, 25.612101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257603, 44.648163, 25.515266>,  <34.080570, 44.496887, 25.457167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257603, 44.648163, 25.515266>,  <34.552654, 44.900288, 25.612101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257603, 44.648163, 25.515266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050372, 0.408909, -0.911184,
		0.673321, -0.659924, -0.333375,
		-0.737632, -0.630313, -0.242085,
		34.036312, 44.459068, 25.442640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703465, 44.669964, 24.902519>,  <34.552654, 44.900288, 25.612101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703465, 44.669964, 24.902519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316582, 44.603283, 24.979176>,  <34.084454, 44.563274, 25.025169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.316582, 44.603283, 24.979176>,  <34.703465, 44.669964, 24.902519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316582, 44.603283, 24.979176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231975, 0.272416, -0.933797,
		0.103457, -0.947629, -0.302152,
		-0.967204, -0.166699, 0.191643,
		34.026421, 44.553272, 25.036669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402588, 44.372932, 24.287868>,  <34.703465, 44.669964, 24.902519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402588, 44.372932, 24.287868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068398, 44.501774, 24.465961>,  <33.867882, 44.579079, 24.572817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068398, 44.501774, 24.465961>,  <34.402588, 44.372932, 24.287868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068398, 44.501774, 24.465961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299364, 0.412658, -0.860287,
		-0.460829, -0.852035, -0.248340,
		-0.835474, 0.322101, 0.445233,
		33.817757, 44.598404, 24.599531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498619, 43.659771, 24.006945>,  <34.402588, 44.372932, 24.287868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498619, 43.659771, 24.006945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806995, 43.704842, 23.756199>,  <34.992020, 43.731884, 23.605751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.806995, 43.704842, 23.756199>,  <34.498619, 43.659771, 24.006945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.806995, 43.704842, 23.756199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597446, -0.469012, 0.650451,
		-0.220716, -0.875975, -0.428897,
		0.770936, 0.112678, -0.626866,
		35.038277, 43.738644, 23.568138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779076, 43.069172, 24.132889>,  <34.498619, 43.659771, 24.006945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779076, 43.069172, 24.132889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061684, 43.299049, 23.967697>,  <35.231251, 43.436974, 23.868582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.061684, 43.299049, 23.967697>,  <34.779076, 43.069172, 24.132889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061684, 43.299049, 23.967697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654729, -0.309312, 0.689678,
		0.268613, -0.757664, -0.594804,
		0.706524, 0.574692, -0.412980,
		35.273640, 43.471458, 23.843803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387268, 42.667175, 23.913195>,  <34.779076, 43.069172, 24.132889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387268, 42.667175, 23.913195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501816, 43.046696, 23.966511>,  <35.570545, 43.274406, 23.998501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.501816, 43.046696, 23.966511>,  <35.387268, 42.667175, 23.913195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501816, 43.046696, 23.966511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585225, -0.283364, 0.759748,
		0.758620, -0.139565, -0.636410,
		0.286370, 0.948802, 0.133289,
		35.587727, 43.331337, 24.006496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181423, 42.601803, 24.070429>,  <35.387268, 42.667175, 23.913195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181423, 42.601803, 24.070429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063564, 42.966099, 24.186174>,  <35.992847, 43.184677, 24.255623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063564, 42.966099, 24.186174>,  <36.181423, 42.601803, 24.070429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063564, 42.966099, 24.186174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505039, -0.108650, 0.856230,
		0.811243, 0.398430, -0.427946,
		-0.294652, 0.910741, 0.289365,
		35.975170, 43.239323, 24.272984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777508, 42.873013, 24.283047>,  <36.181423, 42.601803, 24.070429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777508, 42.873013, 24.283047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460320, 43.024342, 24.474070>,  <36.270004, 43.115139, 24.588684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.460320, 43.024342, 24.474070>,  <36.777508, 42.873013, 24.283047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460320, 43.024342, 24.474070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461717, -0.138247, 0.876188,
		0.397503, 0.915292, -0.065051,
		-0.792975, 0.378322, 0.477559,
		36.222427, 43.137836, 24.617338>
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
