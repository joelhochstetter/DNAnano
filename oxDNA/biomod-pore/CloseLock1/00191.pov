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
	<24.296177, 35.010532, 34.753590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328699, 34.992378, 35.151852>,  <24.348213, 34.981487, 35.390808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.328699, 34.992378, 35.151852>,  <24.296177, 35.010532, 34.753590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.328699, 34.992378, 35.151852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780883, 0.623677, -0.035338,
		-0.619363, 0.780363, 0.086150,
		0.081306, -0.045386, 0.995655,
		24.353090, 34.978764, 35.450550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.472263, 35.658028, 34.841480>,  <24.296177, 35.010532, 34.753590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.472263, 35.658028, 34.841480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589808, 35.437668, 35.153931>,  <24.660334, 35.305450, 35.341400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.589808, 35.437668, 35.153931>,  <24.472263, 35.658028, 34.841480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.589808, 35.437668, 35.153931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818591, 0.566976, 0.091911,
		-0.493513, 0.612413, 0.617572,
		0.293861, -0.550898, 0.781126,
		24.677965, 35.272400, 35.388268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753466, 36.047188, 35.463360>,  <24.472263, 35.658028, 34.841480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753466, 36.047188, 35.463360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920891, 35.696831, 35.367352>,  <25.021345, 35.486614, 35.309746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.920891, 35.696831, 35.367352>,  <24.753466, 36.047188, 35.463360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.920891, 35.696831, 35.367352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859316, 0.467485, -0.207445,
		0.293908, -0.119426, 0.948344,
		0.418562, -0.875897, -0.240022,
		25.046459, 35.434063, 35.295345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242956, 35.876438, 35.911976>,  <24.753466, 36.047188, 35.463360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242956, 35.876438, 35.911976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285322, 35.731430, 35.541599>,  <25.310741, 35.644424, 35.319374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285322, 35.731430, 35.541599>,  <25.242956, 35.876438, 35.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285322, 35.731430, 35.541599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848536, 0.518430, -0.105914,
		0.518430, -0.774473, 0.362521,
		0.105914, -0.362521, -0.925938,
		25.317097, 35.622673, 35.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882036, 35.571507, 35.732220>,  <25.242956, 35.876438, 35.911976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882036, 35.571507, 35.732220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753736, 35.789169, 35.422119>,  <25.676756, 35.919765, 35.236057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753736, 35.789169, 35.422119>,  <25.882036, 35.571507, 35.732220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753736, 35.789169, 35.422119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905566, 0.416083, -0.082617,
		0.277613, -0.728541, -0.626226,
		-0.320752, 0.544154, -0.775252,
		25.657511, 35.952415, 35.189545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258417, 35.535973, 35.132553>,  <25.882036, 35.571507, 35.732220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258417, 35.535973, 35.132553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081352, 35.894348, 35.117905>,  <25.975113, 36.109375, 35.109116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081352, 35.894348, 35.117905>,  <26.258417, 35.535973, 35.132553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081352, 35.894348, 35.117905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896009, 0.440370, -0.056935,
		-0.034884, -0.058015, -0.997706,
		-0.442663, 0.895940, -0.036620,
		25.948553, 36.163132, 35.106918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073891, 34.741444, 35.272800>,  <26.258417, 35.535973, 35.132553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073891, 34.741444, 35.272800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296795, 34.441135, 35.414680>,  <26.430536, 34.260952, 35.499809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.296795, 34.441135, 35.414680>,  <26.073891, 34.741444, 35.272800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296795, 34.441135, 35.414680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524153, 0.649368, 0.550986,
		-0.643993, -0.121124, 0.755382,
		0.557259, -0.750766, 0.354701,
		26.463972, 34.215904, 35.521091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982334, 34.692245, 35.979023>,  <26.073891, 34.741444, 35.272800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982334, 34.692245, 35.979023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349932, 34.590134, 35.858837>,  <26.570490, 34.528866, 35.786724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349932, 34.590134, 35.858837>,  <25.982334, 34.692245, 35.979023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349932, 34.590134, 35.858837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391806, 0.676322, 0.623760,
		0.043981, -0.690958, 0.721556,
		0.918996, -0.255276, -0.300467,
		26.625631, 34.513550, 35.768696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455475, 34.775238, 36.624622>,  <25.982334, 34.692245, 35.979023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455475, 34.775238, 36.624622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698807, 34.764641, 36.307323>,  <26.844805, 34.758282, 36.116943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698807, 34.764641, 36.307323>,  <26.455475, 34.775238, 36.624622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698807, 34.764641, 36.307323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610812, 0.653810, 0.446588,
		0.506798, -0.756194, 0.413914,
		0.608329, -0.026494, -0.793243,
		26.881306, 34.756691, 36.069351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046066, 34.787148, 36.953663>,  <26.455475, 34.775238, 36.624622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046066, 34.787148, 36.953663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132648, 34.901318, 36.580208>,  <27.184599, 34.969818, 36.356136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.132648, 34.901318, 36.580208>,  <27.046066, 34.787148, 36.953663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.132648, 34.901318, 36.580208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554299, 0.751300, 0.358192,
		0.803679, -0.595047, 0.004412,
		0.216457, 0.285426, -0.933637,
		27.197586, 34.986946, 36.300117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799868, 34.679493, 36.818459>,  <27.046066, 34.787148, 36.953663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799868, 34.679493, 36.818459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640219, 34.961987, 36.584560>,  <27.544430, 35.131485, 36.444221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640219, 34.961987, 36.584560>,  <27.799868, 34.679493, 36.818459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640219, 34.961987, 36.584560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609855, 0.680700, 0.405862,
		0.684673, -0.194623, -0.702385,
		-0.399123, 0.706236, -0.584749,
		27.520481, 35.173859, 36.409134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408422, 35.065262, 36.600643>,  <27.799868, 34.679493, 36.818459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408422, 35.065262, 36.600643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093613, 35.305923, 36.546085>,  <27.904728, 35.450321, 36.513351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093613, 35.305923, 36.546085>,  <28.408422, 35.065262, 36.600643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093613, 35.305923, 36.546085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545782, 0.782104, 0.300724,
		0.287606, 0.162236, -0.943908,
		-0.787023, 0.601658, -0.136393,
		27.857506, 35.486420, 36.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682373, 35.713589, 36.352905>,  <28.408422, 35.065262, 36.600643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682373, 35.713589, 36.352905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313231, 35.772919, 36.495083>,  <28.091745, 35.808517, 36.580387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313231, 35.772919, 36.495083>,  <28.682373, 35.713589, 36.352905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313231, 35.772919, 36.495083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309277, 0.835381, 0.454407,
		-0.229530, 0.529281, -0.816809,
		-0.922856, 0.148321, 0.355439,
		28.036373, 35.817413, 36.601715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669621, 36.385864, 36.177853>,  <28.682373, 35.713589, 36.352905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669621, 36.385864, 36.177853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411751, 36.299522, 36.471191>,  <28.257029, 36.247715, 36.647194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.411751, 36.299522, 36.471191>,  <28.669621, 36.385864, 36.177853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411751, 36.299522, 36.471191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331332, 0.785620, 0.522513,
		-0.688921, 0.579833, -0.434950,
		-0.644676, -0.215857, 0.733347,
		28.218348, 36.234764, 36.691196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435219, 37.053314, 36.406433>,  <28.669621, 36.385864, 36.177853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435219, 37.053314, 36.406433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358639, 36.788849, 36.696594>,  <28.312691, 36.630169, 36.870689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358639, 36.788849, 36.696594>,  <28.435219, 37.053314, 36.406433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358639, 36.788849, 36.696594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310378, 0.660361, 0.683805,
		-0.931135, 0.356063, 0.078785,
		-0.191451, -0.661168, 0.725399,
		28.301203, 36.590500, 36.914215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173891, 37.469025, 36.896713>,  <28.435219, 37.053314, 36.406433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173891, 37.469025, 36.896713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274889, 37.140209, 37.100872>,  <28.335487, 36.942921, 37.223366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274889, 37.140209, 37.100872>,  <28.173891, 37.469025, 36.896713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274889, 37.140209, 37.100872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051081, 0.538072, 0.841349,
		-0.966249, -0.186365, 0.177851,
		0.252495, -0.822038, 0.510392,
		28.350637, 36.893597, 37.253990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.911671, 37.624722, 37.643902>,  <28.173891, 37.469025, 36.896713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.911671, 37.624722, 37.643902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174278, 37.325321, 37.681267>,  <28.331842, 37.145679, 37.703686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174278, 37.325321, 37.681267>,  <27.911671, 37.624722, 37.643902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174278, 37.325321, 37.681267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039399, 0.157691, 0.986702,
		-0.753281, -0.644107, 0.133017,
		0.656518, -0.748505, 0.093409,
		28.371233, 37.100769, 37.709290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.944878, 37.479733, 38.424358>,  <27.911671, 37.624722, 37.643902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.944878, 37.479733, 38.424358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267534, 37.281643, 38.295311>,  <28.461128, 37.162788, 38.217884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267534, 37.281643, 38.295311>,  <27.944878, 37.479733, 38.424358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267534, 37.281643, 38.295311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461848, 0.187517, 0.866910,
		-0.368820, -0.848286, 0.379978,
		0.806640, -0.495226, -0.322619,
		28.509527, 37.133076, 38.198524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.212292, 36.996899, 38.943985>,  <27.944878, 37.479733, 38.424358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.212292, 36.996899, 38.943985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522316, 37.134483, 38.731960>,  <28.708330, 37.217033, 38.604744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522316, 37.134483, 38.731960>,  <28.212292, 36.996899, 38.943985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522316, 37.134483, 38.731960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524335, 0.118054, 0.843289,
		0.352640, -0.931531, -0.088855,
		0.775060, 0.343967, -0.530064,
		28.754833, 37.237675, 38.572941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755924, 36.579926, 39.148235>,  <28.212292, 36.996899, 38.943985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755924, 36.579926, 39.148235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947481, 36.888393, 38.980450>,  <29.062416, 37.073475, 38.879776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947481, 36.888393, 38.980450>,  <28.755924, 36.579926, 39.148235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947481, 36.888393, 38.980450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591600, 0.069526, 0.803228,
		0.648592, -0.632818, -0.422931,
		0.478893, 0.771173, -0.419469,
		29.091148, 37.119747, 38.854610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370522, 36.471294, 39.533566>,  <28.755924, 36.579926, 39.148235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370522, 36.471294, 39.533566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379885, 36.836834, 39.371410>,  <29.385504, 37.056156, 39.274117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379885, 36.836834, 39.371410>,  <29.370522, 36.471294, 39.533566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379885, 36.836834, 39.371410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700670, 0.274241, 0.658675,
		0.713101, -0.299460, -0.633885,
		0.023410, 0.913847, -0.405384,
		29.386908, 37.110989, 39.249794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031742, 36.607845, 39.365620>,  <29.370522, 36.471294, 39.533566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031742, 36.607845, 39.365620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831871, 36.945980, 39.441227>,  <29.711948, 37.148861, 39.486591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.831871, 36.945980, 39.441227>,  <30.031742, 36.607845, 39.365620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831871, 36.945980, 39.441227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714844, 0.279190, 0.641133,
		0.489202, 0.455476, -0.743789,
		-0.499680, 0.845337, 0.189014,
		29.681967, 37.199581, 39.497932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560272, 37.088825, 39.350231>,  <30.031742, 36.607845, 39.365620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560272, 37.088825, 39.350231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250948, 37.257607, 39.539524>,  <30.065353, 37.358875, 39.653099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250948, 37.257607, 39.539524>,  <30.560272, 37.088825, 39.350231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250948, 37.257607, 39.539524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624177, 0.375595, 0.685078,
		0.111330, 0.825156, -0.553826,
		-0.773310, 0.421956, 0.473228,
		30.018955, 37.384193, 39.681492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757126, 37.787685, 39.607224>,  <30.560272, 37.088825, 39.350231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757126, 37.787685, 39.607224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436459, 37.714191, 39.834755>,  <30.244059, 37.670094, 39.971275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436459, 37.714191, 39.834755>,  <30.757126, 37.787685, 39.607224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436459, 37.714191, 39.834755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546276, 0.161200, 0.821947,
		-0.242716, 0.969668, -0.028859,
		-0.801668, -0.183735, 0.568832,
		30.195959, 37.659073, 40.005405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622229, 38.400227, 39.971188>,  <30.757126, 37.787685, 39.607224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622229, 38.400227, 39.971188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527611, 38.047558, 40.134506>,  <30.470840, 37.835957, 40.232498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527611, 38.047558, 40.134506>,  <30.622229, 38.400227, 39.971188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527611, 38.047558, 40.134506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611122, 0.191689, 0.767974,
		-0.755366, 0.431178, 0.493465,
		-0.236542, -0.881669, 0.408298,
		30.456648, 37.783058, 40.256996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381502, 38.522320, 40.585712>,  <30.622229, 38.400227, 39.971188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381502, 38.522320, 40.585712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585718, 38.179546, 40.557419>,  <30.708248, 37.973881, 40.540443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585718, 38.179546, 40.557419>,  <30.381502, 38.522320, 40.585712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585718, 38.179546, 40.557419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671482, 0.345959, 0.655304,
		-0.537083, -0.382059, 0.752045,
		0.510542, -0.856938, -0.070738,
		30.738880, 37.922466, 40.536198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443026, 38.272766, 41.185303>,  <30.381502, 38.522320, 40.585712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443026, 38.272766, 41.185303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760128, 38.153702, 40.972534>,  <30.950390, 38.082264, 40.844872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760128, 38.153702, 40.972534>,  <30.443026, 38.272766, 41.185303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760128, 38.153702, 40.972534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608036, 0.324879, 0.724394,
		-0.042814, -0.897693, 0.438537,
		0.792754, -0.297660, -0.531920,
		30.997953, 38.064404, 40.812958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651470, 38.351002, 41.272617>,  <30.443026, 38.272766, 41.185303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651470, 38.351002, 41.272617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951469, 38.615562, 41.270020>,  <30.131470, 38.774300, 41.268459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.951469, 38.615562, 41.270020>,  <29.651470, 38.351002, 41.272617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951469, 38.615562, 41.270020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026287, -0.039623, -0.998869,
		-0.660916, 0.748981, -0.047103,
		0.750000, 0.661406, -0.006499,
		30.176470, 38.813984, 41.268070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475214, 39.002117, 41.004406>,  <29.651470, 38.351002, 41.272617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475214, 39.002117, 41.004406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084236, 39.002579, 41.088879>,  <28.849649, 39.002853, 41.139561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.084236, 39.002579, 41.088879>,  <29.475214, 39.002117, 41.004406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084236, 39.002579, 41.088879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209470, -0.121760, 0.970205,
		0.026829, 0.992559, 0.118773,
		-0.977447, 0.001151, 0.211178,
		28.791002, 39.002922, 41.152233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.178871, 39.553993, 41.498039>,  <29.475214, 39.002117, 41.004406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.178871, 39.553993, 41.498039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976013, 39.209717, 41.515972>,  <28.854300, 39.003151, 41.526730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.976013, 39.209717, 41.515972>,  <29.178871, 39.553993, 41.498039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976013, 39.209717, 41.515972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226010, -0.082616, 0.970615,
		-0.831700, 0.502373, 0.236424,
		-0.507143, -0.860695, 0.044829,
		28.823870, 38.951508, 41.529423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715298, 39.556290, 42.061932>,  <29.178871, 39.553993, 41.498039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715298, 39.556290, 42.061932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808392, 39.175270, 41.983459>,  <28.864248, 38.946659, 41.936375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808392, 39.175270, 41.983459>,  <28.715298, 39.556290, 42.061932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808392, 39.175270, 41.983459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158442, -0.161887, 0.974006,
		-0.959547, -0.257768, 0.113247,
		0.232734, -0.952548, -0.196179,
		28.878212, 38.889507, 41.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528152, 39.122608, 42.681931>,  <28.715298, 39.556290, 42.061932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528152, 39.122608, 42.681931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751040, 38.854507, 42.485863>,  <28.884771, 38.693645, 42.368221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751040, 38.854507, 42.485863>,  <28.528152, 39.122608, 42.681931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751040, 38.854507, 42.485863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240226, -0.434943, 0.867823,
		-0.794860, -0.601316, -0.081344,
		0.557215, -0.670256, -0.490171,
		28.918203, 38.653431, 42.338810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209282, 38.477100, 42.835991>,  <28.528152, 39.122608, 42.681931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209282, 38.477100, 42.835991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603659, 38.456375, 42.772449>,  <28.840284, 38.443939, 42.734325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.603659, 38.456375, 42.772449>,  <28.209282, 38.477100, 42.835991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603659, 38.456375, 42.772449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132022, -0.341147, 0.930693,
		-0.102409, -0.938581, -0.329511,
		0.985942, -0.051808, -0.158850,
		28.899441, 38.440834, 42.724792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570126, 38.020264, 42.858559>,  <28.209282, 38.477100, 42.835991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570126, 38.020264, 42.858559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796635, 37.747257, 43.043385>,  <27.932541, 37.583454, 43.154282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796635, 37.747257, 43.043385>,  <27.570126, 38.020264, 42.858559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796635, 37.747257, 43.043385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303370, -0.693852, -0.653097,
		0.766356, 0.229654, -0.599965,
		0.566273, -0.682516, 0.462067,
		27.966516, 37.542503, 43.182003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095957, 37.565186, 42.374859>,  <27.570126, 38.020264, 42.858559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095957, 37.565186, 42.374859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945801, 37.369377, 42.689682>,  <27.855707, 37.251892, 42.878574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945801, 37.369377, 42.689682>,  <28.095957, 37.565186, 42.374859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945801, 37.369377, 42.689682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284448, -0.747334, -0.600485,
		0.882141, -0.449291, 0.141298,
		-0.375389, -0.489520, 0.787053,
		27.833183, 37.222523, 42.925797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371704, 36.870552, 42.453091>,  <28.095957, 37.565186, 42.374859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371704, 36.870552, 42.453091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010204, 36.874973, 42.624260>,  <27.793304, 36.877628, 42.726963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010204, 36.874973, 42.624260>,  <28.371704, 36.870552, 42.453091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010204, 36.874973, 42.624260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324325, -0.670124, -0.667643,
		0.279381, -0.742167, 0.609208,
		-0.903748, 0.011055, 0.427923,
		27.739080, 36.878288, 42.752636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299698, 36.196953, 42.695362>,  <28.371704, 36.870552, 42.453091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299698, 36.196953, 42.695362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937614, 36.357513, 42.639549>,  <27.720364, 36.453850, 42.606064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937614, 36.357513, 42.639549>,  <28.299698, 36.196953, 42.695362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937614, 36.357513, 42.639549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210627, -0.708946, -0.673076,
		-0.369094, -0.579887, 0.726292,
		-0.905211, 0.401405, -0.139528,
		27.666052, 36.477936, 42.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.918097, 35.762714, 42.426468>,  <28.299698, 36.196953, 42.695362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.918097, 35.762714, 42.426468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614225, 36.019142, 42.382801>,  <27.431904, 36.173000, 42.356602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614225, 36.019142, 42.382801>,  <27.918097, 35.762714, 42.426468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614225, 36.019142, 42.382801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433440, -0.624297, -0.649910,
		-0.484790, -0.446407, 0.752131,
		-0.759677, 0.641073, -0.109162,
		27.386322, 36.211464, 42.350052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387768, 35.360073, 42.648594>,  <27.918097, 35.762714, 42.426468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387768, 35.360073, 42.648594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301216, 35.655636, 42.393345>,  <27.249285, 35.832973, 42.240196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301216, 35.655636, 42.393345>,  <27.387768, 35.360073, 42.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301216, 35.655636, 42.393345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263912, -0.673542, -0.690428,
		-0.939962, 0.019012, 0.340748,
		-0.216382, 0.738904, -0.638122,
		27.236301, 35.877308, 42.201908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698080, 35.214054, 42.308426>,  <27.387768, 35.360073, 42.648594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698080, 35.214054, 42.308426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866982, 35.477169, 42.058941>,  <26.968323, 35.635036, 41.909248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866982, 35.477169, 42.058941>,  <26.698080, 35.214054, 42.308426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866982, 35.477169, 42.058941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137746, -0.633514, -0.761371,
		-0.895950, 0.407407, -0.176898,
		0.422255, 0.657784, -0.623715,
		26.993658, 35.674503, 41.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199736, 35.464542, 41.879520>,  <26.698080, 35.214054, 42.308426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199736, 35.464542, 41.879520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549871, 35.518089, 41.693676>,  <26.759953, 35.550217, 41.582169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.549871, 35.518089, 41.693676>,  <26.199736, 35.464542, 41.879520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549871, 35.518089, 41.693676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317629, -0.565276, -0.761299,
		-0.364548, 0.813967, -0.452286,
		0.875338, 0.133871, -0.464609,
		26.812473, 35.558250, 41.554295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.972635, 35.569847, 41.230179>,  <26.199736, 35.464542, 41.879520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.972635, 35.569847, 41.230179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353487, 35.449837, 41.206741>,  <26.581999, 35.377831, 41.192680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353487, 35.449837, 41.206741>,  <25.972635, 35.569847, 41.230179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353487, 35.449837, 41.206741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220725, -0.542145, -0.810777,
		0.211487, 0.784899, -0.582415,
		0.952131, -0.300023, -0.058590,
		26.639126, 35.359829, 41.189163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083189, 35.749542, 40.519268>,  <25.972635, 35.569847, 41.230179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083189, 35.749542, 40.519268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378183, 35.507660, 40.639568>,  <26.555180, 35.362530, 40.711750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.378183, 35.507660, 40.639568>,  <26.083189, 35.749542, 40.519268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.378183, 35.507660, 40.639568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037457, -0.408013, -0.912207,
		0.674325, 0.684004, -0.278253,
		0.737484, -0.604701, 0.300754,
		26.599428, 35.326248, 40.729794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695641, 35.716259, 39.946190>,  <26.083189, 35.749542, 40.519268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695641, 35.716259, 39.946190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762199, 35.380531, 40.153206>,  <26.802135, 35.179092, 40.277416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.762199, 35.380531, 40.153206>,  <26.695641, 35.716259, 39.946190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.762199, 35.380531, 40.153206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136872, -0.500119, -0.855071,
		0.976513, 0.213119, 0.031660,
		0.166398, -0.839322, 0.517543,
		26.812119, 35.128735, 40.308468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396328, 35.442783, 39.656841>,  <26.695641, 35.716259, 39.946190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396328, 35.442783, 39.656841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208797, 35.135815, 39.831776>,  <27.096279, 34.951633, 39.936737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208797, 35.135815, 39.831776>,  <27.396328, 35.442783, 39.656841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208797, 35.135815, 39.831776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059216, -0.521317, -0.851306,
		0.881303, -0.373218, 0.289851,
		-0.468827, -0.767422, 0.437338,
		27.068150, 34.905586, 39.962978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772659, 34.773632, 39.514973>,  <27.396328, 35.442783, 39.656841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772659, 34.773632, 39.514973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392206, 34.675419, 39.589867>,  <27.163935, 34.616489, 39.634804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392206, 34.675419, 39.589867>,  <27.772659, 34.773632, 39.514973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392206, 34.675419, 39.589867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011667, -0.577354, -0.816411,
		0.308555, -0.778701, 0.546276,
		-0.951135, -0.245534, 0.187231,
		27.106865, 34.601757, 39.646034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792643, 34.093182, 39.439171>,  <27.772659, 34.773632, 39.514973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792643, 34.093182, 39.439171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397032, 34.149780, 39.422184>,  <27.159666, 34.183739, 39.411991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.397032, 34.149780, 39.422184>,  <27.792643, 34.093182, 39.439171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397032, 34.149780, 39.422184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042838, -0.549761, -0.834223,
		-0.141387, -0.823250, 0.549790,
		-0.989027, 0.141500, -0.042463,
		27.100323, 34.192230, 39.409447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468679, 33.457386, 39.318604>,  <27.792643, 34.093182, 39.439171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468679, 33.457386, 39.318604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199425, 33.725189, 39.192970>,  <27.037872, 33.885872, 39.117588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.199425, 33.725189, 39.192970>,  <27.468679, 33.457386, 39.318604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.199425, 33.725189, 39.192970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056734, -0.470217, -0.880726,
		-0.737340, -0.575028, 0.354503,
		-0.673135, 0.669507, -0.314086,
		26.997484, 33.926041, 39.098743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969194, 33.034523, 39.107090>,  <27.468679, 33.457386, 39.318604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969194, 33.034523, 39.107090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918465, 33.391003, 38.932884>,  <26.888027, 33.604893, 38.828362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918465, 33.391003, 38.932884>,  <26.969194, 33.034523, 39.107090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918465, 33.391003, 38.932884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033941, -0.434906, -0.899836,
		-0.991345, -0.128901, 0.024907,
		-0.126822, 0.891202, -0.435517,
		26.880419, 33.658363, 38.802231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553448, 32.896137, 38.536549>,  <26.969194, 33.034523, 39.107090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553448, 32.896137, 38.536549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721323, 33.243382, 38.430531>,  <26.822048, 33.451729, 38.366920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721323, 33.243382, 38.430531>,  <26.553448, 32.896137, 38.536549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721323, 33.243382, 38.430531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051169, -0.314166, -0.947988,
		-0.906224, 0.384299, -0.176273,
		0.419690, 0.868110, -0.265041,
		26.847229, 33.503815, 38.351017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.215946, 33.024399, 37.904373>,  <26.553448, 32.896137, 38.536549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.215946, 33.024399, 37.904373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554083, 33.238068, 37.907341>,  <26.756966, 33.366268, 37.909122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554083, 33.238068, 37.907341>,  <26.215946, 33.024399, 37.904373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554083, 33.238068, 37.907341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248321, -0.380606, -0.890772,
		-0.473002, 0.754850, -0.454389,
		0.845343, 0.534172, 0.007418,
		26.807686, 33.398319, 37.909565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295094, 33.341671, 37.191994>,  <26.215946, 33.024399, 37.904373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295094, 33.341671, 37.191994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665062, 33.366489, 37.342018>,  <26.887043, 33.381382, 37.432034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.665062, 33.366489, 37.342018>,  <26.295094, 33.341671, 37.191994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.665062, 33.366489, 37.342018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365614, -0.415466, -0.832895,
		0.104145, 0.907490, -0.406960,
		0.924922, 0.062049, 0.375060,
		26.942539, 33.385105, 37.454536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714428, 33.420082, 36.656071>,  <26.295094, 33.341671, 37.191994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714428, 33.420082, 36.656071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979334, 33.328922, 36.941578>,  <27.138277, 33.274227, 37.112885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979334, 33.328922, 36.941578>,  <26.714428, 33.420082, 36.656071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979334, 33.328922, 36.941578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659870, -0.273860, -0.699695,
		0.354936, 0.934377, -0.030980,
		0.662263, -0.227904, 0.713770,
		27.178013, 33.260551, 37.155708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332354, 33.885757, 36.533291>,  <26.714428, 33.420082, 36.656071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332354, 33.885757, 36.533291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408310, 33.546200, 36.730598>,  <27.453884, 33.342464, 36.848984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.408310, 33.546200, 36.730598>,  <27.332354, 33.885757, 36.533291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408310, 33.546200, 36.730598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698687, -0.236128, -0.675337,
		0.689766, 0.472882, 0.548275,
		0.189892, -0.848897, 0.493269,
		27.465277, 33.291531, 36.878578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057104, 33.863052, 36.637905>,  <27.332354, 33.885757, 36.533291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057104, 33.863052, 36.637905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916101, 33.488823, 36.646343>,  <27.831499, 33.264286, 36.651405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.916101, 33.488823, 36.646343>,  <28.057104, 33.863052, 36.637905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.916101, 33.488823, 36.646343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709827, -0.282008, -0.645458,
		0.609822, -0.212553, 0.763504,
		-0.352509, -0.935570, 0.021099,
		27.810349, 33.208153, 36.652672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578518, 33.482784, 36.447720>,  <28.057104, 33.863052, 36.637905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578518, 33.482784, 36.447720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298071, 33.202709, 36.393803>,  <28.129803, 33.034664, 36.361454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298071, 33.202709, 36.393803>,  <28.578518, 33.482784, 36.447720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298071, 33.202709, 36.393803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582010, -0.452744, -0.675490,
		0.411945, -0.552048, 0.724944,
		-0.701118, -0.700190, -0.134792,
		28.087736, 32.992653, 36.353367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932255, 32.859180, 36.278496>,  <28.578518, 33.482784, 36.447720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932255, 32.859180, 36.278496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566038, 32.773388, 36.142387>,  <28.346308, 32.721912, 36.060722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566038, 32.773388, 36.142387>,  <28.932255, 32.859180, 36.278496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566038, 32.773388, 36.142387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401379, -0.542035, -0.738304,
		-0.026083, -0.812523, 0.582344,
		-0.915540, -0.214483, -0.340268,
		28.291376, 32.709042, 36.040306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947500, 32.132439, 36.069515>,  <28.932255, 32.859180, 36.278496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947500, 32.132439, 36.069515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638449, 32.291817, 35.871815>,  <28.453018, 32.387444, 35.753193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638449, 32.291817, 35.871815>,  <28.947500, 32.132439, 36.069515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638449, 32.291817, 35.871815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258850, -0.513164, -0.818327,
		-0.579691, -0.760201, 0.293348,
		-0.772628, 0.398444, -0.494254,
		28.406660, 32.411350, 35.723537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729311, 31.754955, 35.501987>,  <28.947500, 32.132439, 36.069515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729311, 31.754955, 35.501987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608421, 32.088741, 35.317673>,  <28.535887, 32.289013, 35.207085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608421, 32.088741, 35.317673>,  <28.729311, 31.754955, 35.501987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608421, 32.088741, 35.317673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337977, -0.358183, -0.870331,
		-0.891309, -0.418772, -0.173779,
		-0.302225, 0.834467, -0.460787,
		28.517754, 32.339081, 35.179436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292330, 31.486416, 34.870640>,  <28.729311, 31.754955, 35.501987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292330, 31.486416, 34.870640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482195, 31.835398, 34.824139>,  <28.596113, 32.044788, 34.796238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482195, 31.835398, 34.824139>,  <28.292330, 31.486416, 34.870640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482195, 31.835398, 34.824139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579401, -0.409156, -0.704902,
		-0.662562, 0.267232, -0.699713,
		0.474663, 0.872456, -0.116257,
		28.624594, 32.097134, 34.789261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503176, 31.550045, 34.173634>,  <28.292330, 31.486416, 34.870640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503176, 31.550045, 34.173634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744923, 31.800184, 34.371090>,  <28.889971, 31.950268, 34.489563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744923, 31.800184, 34.371090>,  <28.503176, 31.550045, 34.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744923, 31.800184, 34.371090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742959, -0.218647, -0.632618,
		-0.287672, 0.749090, -0.596749,
		0.604365, 0.625346, 0.493644,
		28.926231, 31.987787, 34.519184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.824675, 32.052845, 33.699574>,  <28.503176, 31.550045, 34.173634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.824675, 32.052845, 33.699574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045948, 31.971218, 34.022644>,  <29.178713, 31.922243, 34.216488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.045948, 31.971218, 34.022644>,  <28.824675, 32.052845, 33.699574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045948, 31.971218, 34.022644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772496, -0.237256, -0.589033,
		0.311828, 0.949772, 0.026393,
		0.553185, -0.204065, 0.807678,
		29.211903, 31.909998, 34.264946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398247, 32.530689, 34.082401>,  <28.824675, 32.052845, 33.699574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398247, 32.530689, 34.082401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476646, 32.142876, 34.141163>,  <29.523685, 31.910187, 34.176418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.476646, 32.142876, 34.141163>,  <29.398247, 32.530689, 34.082401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476646, 32.142876, 34.141163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777319, 0.062287, -0.626016,
		0.597797, 0.236887, 0.765848,
		0.195998, -0.969539, 0.146902,
		29.535446, 31.852015, 34.185234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239435, 32.400028, 34.234467>,  <29.398247, 32.530689, 34.082401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239435, 32.400028, 34.234467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015383, 32.123478, 34.051929>,  <29.880951, 31.957548, 33.942406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015383, 32.123478, 34.051929>,  <30.239435, 32.400028, 34.234467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015383, 32.123478, 34.051929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765672, -0.221798, -0.603781,
		0.316225, -0.687606, 0.653605,
		-0.560132, -0.691378, -0.456343,
		29.847343, 31.916065, 33.915028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492702, 31.709759, 34.399502>,  <30.239435, 32.400028, 34.234467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492702, 31.709759, 34.399502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327517, 31.789360, 34.044006>,  <30.228405, 31.837120, 33.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327517, 31.789360, 34.044006>,  <30.492702, 31.709759, 34.399502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327517, 31.789360, 34.044006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812923, -0.359433, -0.458218,
		-0.410629, -0.911705, -0.013341,
		-0.412965, 0.199003, -0.888740,
		30.203627, 31.849060, 33.777386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928997, 32.188213, 34.873417>,  <30.492702, 31.709759, 34.399502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928997, 32.188213, 34.873417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207369, 31.992453, 35.083622>,  <31.374392, 31.874996, 35.209747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207369, 31.992453, 35.083622>,  <30.928997, 32.188213, 34.873417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207369, 31.992453, 35.083622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306576, 0.459279, 0.833711,
		-0.649381, -0.741313, 0.169585,
		0.695928, -0.489405, 0.525516,
		31.416147, 31.845631, 35.241276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595432, 32.057934, 35.497562>,  <30.928997, 32.188213, 34.873417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595432, 32.057934, 35.497562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991634, 32.069561, 35.551304>,  <31.229357, 32.076538, 35.583549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991634, 32.069561, 35.551304>,  <30.595432, 32.057934, 35.497562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991634, 32.069561, 35.551304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128742, 0.538831, 0.832518,
		-0.048195, -0.841912, 0.537459,
		0.990506, 0.029070, 0.134359,
		31.288786, 32.078281, 35.591610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719093, 31.692213, 36.076569>,  <30.595432, 32.057934, 35.497562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719093, 31.692213, 36.076569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024555, 31.945667, 36.027031>,  <31.207832, 32.097740, 35.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024555, 31.945667, 36.027031>,  <30.719093, 31.692213, 36.076569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024555, 31.945667, 36.027031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196591, 0.410921, 0.890222,
		0.614968, -0.655475, 0.438369,
		0.763653, 0.633637, -0.123843,
		31.253651, 32.135757, 35.989880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097822, 31.644203, 36.687614>,  <30.719093, 31.692213, 36.076569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097822, 31.644203, 36.687614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210796, 31.995344, 36.532902>,  <31.278582, 32.206028, 36.440075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210796, 31.995344, 36.532902>,  <31.097822, 31.644203, 36.687614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210796, 31.995344, 36.532902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054321, 0.417190, 0.907195,
		0.957747, -0.235213, 0.165515,
		0.282435, 0.877854, -0.386785,
		31.295527, 32.258701, 36.416866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493267, 31.821526, 37.177010>,  <31.097822, 31.644203, 36.687614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493267, 31.821526, 37.177010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402025, 32.159153, 36.982887>,  <31.347281, 32.361729, 36.866413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402025, 32.159153, 36.982887>,  <31.493267, 31.821526, 37.177010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402025, 32.159153, 36.982887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233982, 0.436316, 0.868839,
		0.945104, 0.311739, 0.097970,
		-0.228105, 0.844066, -0.485305,
		31.333593, 32.412373, 36.837296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005890, 32.449509, 37.450691>,  <31.493267, 31.821526, 37.177010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005890, 32.449509, 37.450691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664894, 32.566601, 37.277451>,  <31.460297, 32.636856, 37.173508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.664894, 32.566601, 37.277451>,  <32.005890, 32.449509, 37.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664894, 32.566601, 37.277451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257083, 0.486615, 0.834933,
		0.455162, 0.823113, -0.339578,
		-0.852488, 0.292730, -0.433097,
		31.409147, 32.654419, 37.147522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966829, 33.196602, 37.539402>,  <32.005890, 32.449509, 37.450691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966829, 33.196602, 37.539402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583376, 33.096272, 37.485577>,  <31.353304, 33.036072, 37.453281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583376, 33.096272, 37.485577>,  <31.966829, 33.196602, 37.539402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583376, 33.096272, 37.485577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247266, 0.499661, 0.830179,
		-0.140998, 0.829110, -0.541014,
		-0.958634, -0.250828, -0.134560,
		31.295786, 33.021023, 37.445210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590912, 33.777542, 37.678688>,  <31.966829, 33.196602, 37.539402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590912, 33.777542, 37.678688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323767, 33.480198, 37.693531>,  <31.163479, 33.301792, 37.702438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.323767, 33.480198, 37.693531>,  <31.590912, 33.777542, 37.678688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323767, 33.480198, 37.693531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182336, 0.211751, 0.960164,
		-0.721603, 0.634493, -0.276962,
		-0.667864, -0.743357, 0.037109,
		31.123407, 33.257191, 37.704662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025457, 34.041771, 38.154995>,  <31.590912, 33.777542, 37.678688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025457, 34.041771, 38.154995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931908, 33.652866, 38.153919>,  <30.875778, 33.419525, 38.153275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.931908, 33.652866, 38.153919>,  <31.025457, 34.041771, 38.154995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931908, 33.652866, 38.153919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266062, 0.061342, 0.962002,
		-0.935154, 0.225703, -0.273029,
		-0.233875, -0.972263, -0.002686,
		30.861746, 33.361187, 38.153114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454405, 34.020672, 38.650158>,  <31.025457, 34.041771, 38.154995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454405, 34.020672, 38.650158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560057, 33.637642, 38.604057>,  <30.623447, 33.407822, 38.576397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.560057, 33.637642, 38.604057>,  <30.454405, 34.020672, 38.650158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560057, 33.637642, 38.604057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407340, -0.219067, 0.886613,
		-0.874249, -0.187233, -0.447921,
		0.264128, -0.957577, -0.115252,
		30.639296, 33.350368, 38.569481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819439, 33.639217, 38.658684>,  <30.454405, 34.020672, 38.650158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819439, 33.639217, 38.658684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134514, 33.417759, 38.766777>,  <30.323559, 33.284885, 38.831635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134514, 33.417759, 38.766777>,  <29.819439, 33.639217, 38.658684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134514, 33.417759, 38.766777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377273, -0.086713, 0.922034,
		-0.487044, -0.828227, -0.277177,
		0.787688, -0.553642, 0.270234,
		30.370821, 33.251667, 38.847847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549036, 33.123787, 39.023315>,  <29.819439, 33.639217, 38.658684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549036, 33.123787, 39.023315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927681, 33.101509, 39.150326>,  <30.154867, 33.088142, 39.226532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927681, 33.101509, 39.150326>,  <29.549036, 33.123787, 39.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927681, 33.101509, 39.150326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321569, -0.232641, 0.917862,
		0.022747, -0.970967, -0.238132,
		0.946613, -0.055697, 0.317525,
		30.211664, 33.084801, 39.245583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569029, 32.584606, 39.547398>,  <29.549036, 33.123787, 39.023315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569029, 32.584606, 39.547398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907642, 32.788307, 39.609417>,  <30.110811, 32.910526, 39.646629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907642, 32.788307, 39.609417>,  <29.569029, 32.584606, 39.547398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907642, 32.788307, 39.609417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058169, -0.201030, 0.977857,
		0.529147, -0.836808, -0.140555,
		0.846534, 0.509254, 0.155051,
		30.161602, 32.941082, 39.655933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065569, 32.129639, 39.698715>,  <29.569029, 32.584606, 39.547398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065569, 32.129639, 39.698715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180429, 32.480560, 39.852539>,  <30.249346, 32.691113, 39.944836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180429, 32.480560, 39.852539>,  <30.065569, 32.129639, 39.698715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180429, 32.480560, 39.852539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249413, -0.319145, 0.914297,
		0.924844, -0.358458, 0.127167,
		0.287152, 0.877299, 0.384564,
		30.266575, 32.743752, 39.967907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565294, 31.961386, 40.180973>,  <30.065569, 32.129639, 39.698715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565294, 31.961386, 40.180973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431349, 32.314613, 40.312462>,  <30.350983, 32.526550, 40.391354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431349, 32.314613, 40.312462>,  <30.565294, 31.961386, 40.180973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431349, 32.314613, 40.312462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153347, -0.395282, 0.905669,
		0.929705, 0.252867, 0.267781,
		-0.334863, 0.883069, 0.328720,
		30.330891, 32.579533, 40.411079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879211, 32.080585, 40.775356>,  <30.565294, 31.961386, 40.180973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879211, 32.080585, 40.775356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566324, 32.327354, 40.810085>,  <30.378592, 32.475418, 40.830921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566324, 32.327354, 40.810085>,  <30.879211, 32.080585, 40.775356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566324, 32.327354, 40.810085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071572, -0.227422, 0.971163,
		0.618879, 0.753448, 0.222048,
		-0.782219, 0.616924, 0.086821,
		30.331659, 32.512432, 40.836132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967659, 32.588123, 41.430164>,  <30.879211, 32.080585, 40.775356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967659, 32.588123, 41.430164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578226, 32.572071, 41.340252>,  <30.344566, 32.562439, 41.286304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578226, 32.572071, 41.340252>,  <30.967659, 32.588123, 41.430164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578226, 32.572071, 41.340252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225166, 0.005220, 0.974306,
		-0.037922, 0.999181, -0.014117,
		-0.973582, -0.040126, -0.224784,
		30.286152, 32.560032, 41.272816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598673, 33.105885, 41.782288>,  <30.967659, 32.588123, 41.430164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598673, 33.105885, 41.782288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321341, 32.829639, 41.699974>,  <30.154942, 32.663891, 41.650585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.321341, 32.829639, 41.699974>,  <30.598673, 33.105885, 41.782288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321341, 32.829639, 41.699974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281567, -0.003239, 0.959536,
		-0.663334, 0.723218, -0.192208,
		-0.693331, -0.690612, -0.205783,
		30.113340, 32.622456, 41.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106833, 33.211212, 42.293140>,  <30.598673, 33.105885, 41.782288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106833, 33.211212, 42.293140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979168, 32.863811, 42.141438>,  <29.902569, 32.655369, 42.050415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979168, 32.863811, 42.141438>,  <30.106833, 33.211212, 42.293140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979168, 32.863811, 42.141438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455296, -0.210462, 0.865108,
		-0.831169, 0.448783, -0.328256,
		-0.319160, -0.868504, -0.379259,
		29.883419, 32.603260, 42.027660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.351934, 33.150200, 42.501698>,  <30.106833, 33.211212, 42.293140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.351934, 33.150200, 42.501698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523804, 32.793941, 42.442192>,  <29.626925, 32.580185, 42.406487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523804, 32.793941, 42.442192>,  <29.351934, 33.150200, 42.501698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523804, 32.793941, 42.442192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199008, -0.254101, 0.946482,
		-0.880782, -0.377072, -0.286426,
		0.429673, -0.890645, -0.148768,
		29.652706, 32.526749, 42.397560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808430, 32.679298, 42.761459>,  <29.351934, 33.150200, 42.501698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808430, 32.679298, 42.761459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146244, 32.465923, 42.742699>,  <29.348932, 32.337898, 42.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146244, 32.465923, 42.742699>,  <28.808430, 32.679298, 42.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146244, 32.465923, 42.742699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216786, -0.420664, 0.880934,
		-0.489658, -0.733812, -0.470909,
		0.844534, -0.533443, -0.046902,
		29.399605, 32.305889, 42.728630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553993, 32.098629, 42.942112>,  <28.808430, 32.679298, 42.761459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553993, 32.098629, 42.942112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944958, 32.097393, 43.026642>,  <29.179537, 32.096649, 43.077362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944958, 32.097393, 43.026642>,  <28.553993, 32.098629, 42.942112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944958, 32.097393, 43.026642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197938, -0.363944, 0.910146,
		0.074095, -0.931416, -0.356335,
		0.977410, -0.003095, 0.211329,
		29.238180, 32.096466, 43.090042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515560, 31.566961, 43.456074>,  <28.553993, 32.098629, 42.942112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515560, 31.566961, 43.456074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882610, 31.725681, 43.465096>,  <29.102840, 31.820913, 43.470509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.882610, 31.725681, 43.465096>,  <28.515560, 31.566961, 43.456074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.882610, 31.725681, 43.465096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, -0.181852, 0.981814,
		0.393686, -0.899711, -0.188499,
		0.917628, 0.396800, 0.022554,
		29.157898, 31.844721, 43.471863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925814, 31.187862, 43.938232>,  <28.515560, 31.566961, 43.456074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925814, 31.187862, 43.938232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093256, 31.550892, 43.925095>,  <29.193722, 31.768709, 43.917213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.093256, 31.550892, 43.925095>,  <28.925814, 31.187862, 43.938232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.093256, 31.550892, 43.925095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032123, 0.021347, 0.999256,
		0.907599, -0.419351, -0.020218,
		0.418607, 0.907573, -0.032845,
		29.218838, 31.823164, 43.915241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539917, 31.143002, 44.396420>,  <28.925814, 31.187862, 43.938232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539917, 31.143002, 44.396420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449648, 31.531200, 44.362457>,  <29.395487, 31.764120, 44.342079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449648, 31.531200, 44.362457>,  <29.539917, 31.143002, 44.396420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449648, 31.531200, 44.362457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053451, 0.074686, 0.995774,
		0.972736, 0.229256, 0.035019,
		-0.225672, 0.970497, -0.084904,
		29.381947, 31.822350, 44.336987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798681, 31.342224, 44.976845>,  <29.539917, 31.143002, 44.396420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798681, 31.342224, 44.976845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582344, 31.662859, 44.874908>,  <29.452541, 31.855240, 44.813747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582344, 31.662859, 44.874908>,  <29.798681, 31.342224, 44.976845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582344, 31.662859, 44.874908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219369, 0.158069, 0.962752,
		0.812013, 0.576603, 0.090352,
		-0.540844, 0.801588, -0.254843,
		29.420092, 31.903336, 44.798454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070272, 31.989717, 45.325645>,  <29.798681, 31.342224, 44.976845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070272, 31.989717, 45.325645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685625, 32.056805, 45.238781>,  <29.454836, 32.097057, 45.186665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685625, 32.056805, 45.238781>,  <30.070272, 31.989717, 45.325645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685625, 32.056805, 45.238781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225188, -0.030209, 0.973847,
		0.156772, 0.985372, 0.066818,
		-0.961620, 0.167719, -0.217158,
		29.397139, 32.107121, 45.173634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916145, 32.387268, 45.866356>,  <30.070272, 31.989717, 45.325645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916145, 32.387268, 45.866356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564999, 32.266956, 45.717289>,  <29.354309, 32.194771, 45.627850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564999, 32.266956, 45.717289>,  <29.916145, 32.387268, 45.866356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564999, 32.266956, 45.717289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385637, -0.017413, 0.922486,
		-0.283954, 0.953535, -0.100705,
		-0.877869, -0.300779, -0.372663,
		29.301638, 32.176723, 45.605492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376059, 32.842697, 46.177242>,  <29.916145, 32.387268, 45.866356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376059, 32.842697, 46.177242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235430, 32.481865, 46.077122>,  <29.151052, 32.265366, 46.017048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235430, 32.481865, 46.077122>,  <29.376059, 32.842697, 46.177242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235430, 32.481865, 46.077122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486675, -0.052290, 0.872017,
		-0.799716, 0.428392, -0.420635,
		-0.351570, -0.902079, -0.250305,
		29.129959, 32.211243, 46.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651657, 32.881905, 46.430202>,  <29.376059, 32.842697, 46.177242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651657, 32.881905, 46.430202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729694, 32.494797, 46.366512>,  <28.776518, 32.262531, 46.328300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729694, 32.494797, 46.366512>,  <28.651657, 32.881905, 46.430202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729694, 32.494797, 46.366512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419696, -0.229105, 0.878275,
		-0.886450, -0.104521, -0.450868,
		0.195095, -0.967774, -0.159223,
		28.788223, 32.204464, 46.318745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.023321, 32.523071, 46.697933>,  <28.651657, 32.881905, 46.430202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.023321, 32.523071, 46.697933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314547, 32.248943, 46.691444>,  <28.489281, 32.084465, 46.687553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314547, 32.248943, 46.691444>,  <28.023321, 32.523071, 46.697933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314547, 32.248943, 46.691444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366296, -0.408922, 0.835829,
		-0.579443, -0.602593, -0.548750,
		0.728061, -0.685321, -0.016220,
		28.532965, 32.043346, 46.686577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.630701, 31.932243, 46.833244>,  <28.023321, 32.523071, 46.697933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.630701, 31.932243, 46.833244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011734, 31.845200, 46.918316>,  <28.240353, 31.792973, 46.969360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011734, 31.845200, 46.918316>,  <27.630701, 31.932243, 46.833244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011734, 31.845200, 46.918316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288690, -0.425455, 0.857698,
		-0.096158, -0.878427, -0.468103,
		0.952581, -0.217611, 0.212682,
		28.297508, 31.779917, 46.982121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545742, 31.289675, 47.359375>,  <27.630701, 31.932243, 46.833244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545742, 31.289675, 47.359375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931482, 31.390120, 47.392765>,  <28.162928, 31.450386, 47.412800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931482, 31.390120, 47.392765>,  <27.545742, 31.289675, 47.359375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931482, 31.390120, 47.392765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030434, -0.418594, 0.907663,
		0.262868, -0.872766, -0.411314,
		0.964352, 0.251113, 0.083473,
		28.220787, 31.465454, 47.417809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962713, 30.650520, 47.387997>,  <27.545742, 31.289675, 47.359375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962713, 30.650520, 47.387997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151131, 30.947578, 47.578407>,  <28.264181, 31.125813, 47.692654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151131, 30.947578, 47.578407>,  <27.962713, 30.650520, 47.387997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151131, 30.947578, 47.578407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092372, -0.578202, 0.810648,
		0.877262, -0.337877, -0.340956,
		0.471041, 0.742645, 0.476024,
		28.292442, 31.170372, 47.721214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248974, 30.300396, 47.933514>,  <27.962713, 30.650520, 47.387997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248974, 30.300396, 47.933514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332050, 30.676439, 48.041630>,  <28.381897, 30.902065, 48.106499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.332050, 30.676439, 48.041630>,  <28.248974, 30.300396, 47.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332050, 30.676439, 48.041630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248724, -0.317991, 0.914887,
		0.946045, -0.122786, -0.299872,
		0.207692, 0.940109, 0.270293,
		28.394358, 30.958471, 48.122719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928062, 30.300896, 48.343224>,  <28.248974, 30.300396, 47.933514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928062, 30.300896, 48.343224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718960, 30.619076, 48.465847>,  <28.593498, 30.809984, 48.539421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718960, 30.619076, 48.465847>,  <28.928062, 30.300896, 48.343224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718960, 30.619076, 48.465847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180861, -0.247938, 0.951744,
		0.833075, 0.552976, -0.014255,
		-0.522757, 0.795452, 0.306563,
		28.562132, 30.857712, 48.557816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292336, 30.586260, 48.850891>,  <28.928062, 30.300896, 48.343224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292336, 30.586260, 48.850891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922968, 30.726143, 48.914135>,  <28.701347, 30.810072, 48.952084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922968, 30.726143, 48.914135>,  <29.292336, 30.586260, 48.850891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922968, 30.726143, 48.914135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028374, -0.348642, 0.936826,
		0.382739, 0.869571, 0.312021,
		-0.923421, 0.349707, 0.158112,
		28.645941, 30.831055, 48.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316961, 31.023155, 49.439434>,  <29.292336, 30.586260, 48.850891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316961, 31.023155, 49.439434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938320, 30.894325, 49.433559>,  <28.711136, 30.817028, 49.430035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938320, 30.894325, 49.433559>,  <29.316961, 31.023155, 49.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938320, 30.894325, 49.433559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125655, -0.410486, 0.903168,
		-0.296913, 0.853095, 0.429036,
		-0.946601, -0.322073, -0.014683,
		28.654341, 30.797703, 49.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136869, 31.033770, 50.113354>,  <29.316961, 31.023155, 49.439434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136869, 31.033770, 50.113354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826332, 30.828045, 49.967598>,  <28.640009, 30.704611, 49.880146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826332, 30.828045, 49.967598>,  <29.136869, 31.033770, 50.113354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826332, 30.828045, 49.967598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055526, -0.631661, 0.773254,
		-0.627860, 0.580077, 0.518943,
		-0.776343, -0.514310, -0.364385,
		28.593430, 30.673752, 49.858284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.635883, 30.847193, 50.686481>,  <29.136869, 31.033770, 50.113354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.635883, 30.847193, 50.686481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566797, 30.565458, 50.411068>,  <28.525345, 30.396418, 50.245819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566797, 30.565458, 50.411068>,  <28.635883, 30.847193, 50.686481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566797, 30.565458, 50.411068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135753, -0.709389, 0.691620,
		-0.975572, 0.025984, 0.218139,
		-0.172717, -0.704338, -0.688533,
		28.514982, 30.354156, 50.204510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969875, 30.353691, 50.772263>,  <28.635883, 30.847193, 50.686481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969875, 30.353691, 50.772263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253973, 30.179468, 50.551052>,  <28.424433, 30.074934, 50.418324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253973, 30.179468, 50.551052>,  <27.969875, 30.353691, 50.772263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253973, 30.179468, 50.551052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128596, -0.692108, 0.710246,
		-0.692108, -0.575567, -0.435556,
		-0.710246, 0.435556, 0.553029,
		28.467047, 30.048801, 50.385143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.326954, 29.922297, 50.803120>,  <27.969875, 30.353691, 50.772263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.326954, 29.922297, 50.803120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024502, 29.845209, 51.053280>,  <26.843031, 29.798956, 51.203377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.024502, 29.845209, 51.053280>,  <27.326954, 29.922297, 50.803120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024502, 29.845209, 51.053280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568215, -0.280744, -0.773508,
		0.324647, -0.940235, 0.102773,
		-0.756132, -0.192719, 0.625399,
		26.797663, 29.787394, 51.240898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955439, 29.188957, 50.635223>,  <27.326954, 29.922297, 50.803120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955439, 29.188957, 50.635223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729156, 29.439219, 50.850086>,  <26.593388, 29.589375, 50.979004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.729156, 29.439219, 50.850086>,  <26.955439, 29.188957, 50.635223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729156, 29.439219, 50.850086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753741, -0.128132, -0.644560,
		-0.334443, -0.769508, 0.544064,
		-0.565705, 0.625651, 0.537157,
		26.559444, 29.626913, 51.011234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.956553, 29.138258, 49.986412>,  <26.955439, 29.188957, 50.635223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.956553, 29.138258, 49.986412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692633, 28.980543, 49.730537>,  <26.534281, 28.885914, 49.577011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.692633, 28.980543, 49.730537>,  <26.956553, 29.138258, 49.986412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.692633, 28.980543, 49.730537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013370, -0.844986, 0.534621,
		-0.751321, 0.361296, 0.552252,
		-0.659802, -0.394288, -0.639686,
		26.494692, 28.862257, 49.538631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853115, 28.424295, 49.981339>,  <26.956553, 29.138258, 49.986412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853115, 28.424295, 49.981339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539536, 28.241213, 49.813560>,  <26.351387, 28.131363, 49.712894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.539536, 28.241213, 49.813560>,  <26.853115, 28.424295, 49.981339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.539536, 28.241213, 49.813560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062592, -0.730447, 0.680095,
		-0.617663, 0.506905, 0.601281,
		-0.783948, -0.457705, -0.419442,
		26.304352, 28.103901, 49.687729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.197607, 28.478453, 50.405968>,  <26.853115, 28.424295, 49.981339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.197607, 28.478453, 50.405968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246880, 28.137955, 50.201923>,  <26.276443, 27.933657, 50.079498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246880, 28.137955, 50.201923>,  <26.197607, 28.478453, 50.405968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246880, 28.137955, 50.201923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100249, -0.500719, 0.859785,
		-0.987307, -0.157049, 0.023656,
		0.123183, -0.851244, -0.510108,
		26.283834, 27.882582, 50.048893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017630, 27.828396, 50.682659>,  <26.197607, 28.478453, 50.405968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017630, 27.828396, 50.682659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331320, 27.883398, 50.440639>,  <26.519533, 27.916399, 50.295429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331320, 27.883398, 50.440639>,  <26.017630, 27.828396, 50.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331320, 27.883398, 50.440639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615960, -0.289988, 0.732461,
		-0.074739, -0.947100, -0.312115,
		0.784224, 0.137507, -0.605049,
		26.566587, 27.924650, 50.259125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513365, 27.243532, 50.629215>,  <26.017630, 27.828396, 50.682659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513365, 27.243532, 50.629215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717911, 27.578331, 50.551304>,  <26.840639, 27.779211, 50.504555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717911, 27.578331, 50.551304>,  <26.513365, 27.243532, 50.629215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717911, 27.578331, 50.551304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760810, -0.335549, 0.555494,
		0.399588, -0.432253, -0.808385,
		0.511367, 0.836997, -0.194782,
		26.871321, 27.829430, 50.492870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191107, 26.934055, 50.664246>,  <26.513365, 27.243532, 50.629215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191107, 26.934055, 50.664246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243719, 27.330498, 50.656166>,  <27.275286, 27.568363, 50.651318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243719, 27.330498, 50.656166>,  <27.191107, 26.934055, 50.664246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243719, 27.330498, 50.656166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909735, -0.112587, 0.399633,
		0.393805, -0.070939, -0.916452,
		0.131530, 0.991106, -0.020198,
		27.283178, 27.627831, 50.650108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924164, 27.180470, 50.383167>,  <27.191107, 26.934055, 50.664246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924164, 27.180470, 50.383167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770605, 27.533913, 50.275940>,  <27.678469, 27.745977, 50.211605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.770605, 27.533913, 50.275940>,  <27.924164, 27.180470, 50.383167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.770605, 27.533913, 50.275940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321806, -0.144084, -0.935778,
		-0.865485, -0.445510, -0.229036,
		-0.383898, 0.883607, -0.268070,
		27.655436, 27.798994, 50.195518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497196, 27.125771, 49.789574>,  <27.924164, 27.180470, 50.383167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497196, 27.125771, 49.789574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595158, 27.513584, 49.787525>,  <27.653934, 27.746273, 49.786297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.595158, 27.513584, 49.787525>,  <27.497196, 27.125771, 49.789574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595158, 27.513584, 49.787525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154470, -0.044232, -0.987007,
		-0.957163, 0.240931, -0.160596,
		0.244904, 0.969534, -0.005120,
		27.668629, 27.804443, 49.785988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.076704, 27.408884, 49.272720>,  <27.497196, 27.125771, 49.789574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.076704, 27.408884, 49.272720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400589, 27.638208, 49.322811>,  <27.594919, 27.775803, 49.352867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.400589, 27.638208, 49.322811>,  <27.076704, 27.408884, 49.272720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.400589, 27.638208, 49.322811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152022, 0.001186, -0.988376,
		-0.566795, 0.819337, -0.086195,
		0.809711, 0.573311, 0.125230,
		27.643503, 27.810202, 49.360378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961222, 27.917986, 48.710659>,  <27.076704, 27.408884, 49.272720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961222, 27.917986, 48.710659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335159, 27.912556, 48.852577>,  <27.559523, 27.909298, 48.937729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335159, 27.912556, 48.852577>,  <26.961222, 27.917986, 48.710659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335159, 27.912556, 48.852577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354712, 0.079503, -0.931589,
		-0.015561, 0.996742, 0.079138,
		0.934846, -0.013575, 0.354794,
		27.615614, 27.908484, 48.959015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339905, 28.448353, 48.420925>,  <26.961222, 27.917986, 48.710659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339905, 28.448353, 48.420925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641710, 28.212372, 48.535931>,  <27.822794, 28.070784, 48.604935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.641710, 28.212372, 48.535931>,  <27.339905, 28.448353, 48.420925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641710, 28.212372, 48.535931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322701, -0.047972, -0.945284,
		0.571467, 0.806010, 0.154184,
		0.754513, -0.589954, 0.287515,
		27.868065, 28.035385, 48.622185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932034, 28.760309, 48.215893>,  <27.339905, 28.448353, 48.420925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932034, 28.760309, 48.215893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069214, 28.385033, 48.234600>,  <28.151522, 28.159866, 48.245823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.069214, 28.385033, 48.234600>,  <27.932034, 28.760309, 48.215893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.069214, 28.385033, 48.234600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325563, 0.072012, -0.942774,
		0.881133, 0.338549, 0.330136,
		0.342949, -0.938189, 0.046767,
		28.172098, 28.103577, 48.248631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656906, 28.659496, 47.896042>,  <27.932034, 28.760309, 48.215893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656906, 28.659496, 47.896042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547386, 28.275755, 47.923401>,  <28.481674, 28.045511, 47.939816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547386, 28.275755, 47.923401>,  <28.656906, 28.659496, 47.896042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547386, 28.275755, 47.923401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271194, -0.145233, -0.951505,
		0.922760, -0.241976, 0.299935,
		-0.273801, -0.959351, 0.068393,
		28.465246, 27.987949, 47.943920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257631, 28.240116, 47.688755>,  <28.656906, 28.659496, 47.896042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257631, 28.240116, 47.688755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915714, 28.037376, 47.644154>,  <28.710564, 27.915733, 47.617393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915714, 28.037376, 47.644154>,  <29.257631, 28.240116, 47.688755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915714, 28.037376, 47.644154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194198, -0.113145, -0.974415,
		0.481265, -0.854577, 0.195144,
		-0.854793, -0.506849, -0.111505,
		28.659277, 27.885323, 47.610703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503372, 27.705334, 47.394115>,  <29.257631, 28.240116, 47.688755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503372, 27.705334, 47.394115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115799, 27.731161, 47.298615>,  <28.883255, 27.746658, 47.241314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115799, 27.731161, 47.298615>,  <29.503372, 27.705334, 47.394115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115799, 27.731161, 47.298615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234624, -0.065399, -0.969884,
		-0.078243, -0.995768, 0.048217,
		-0.968932, 0.064574, -0.238748,
		28.825119, 27.750532, 47.226990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437126, 27.201490, 46.883934>,  <29.503372, 27.705334, 47.394115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437126, 27.201490, 46.883934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115494, 27.435148, 46.839695>,  <28.922514, 27.575342, 46.813152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115494, 27.435148, 46.839695>,  <29.437126, 27.201490, 46.883934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115494, 27.435148, 46.839695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162895, 0.037553, -0.985928,
		-0.571770, -0.810781, -0.125350,
		-0.804080, 0.584143, -0.110601,
		28.874269, 27.610392, 46.806515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099226, 26.922695, 46.322540>,  <29.437126, 27.201490, 46.883934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099226, 26.922695, 46.322540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960388, 27.297516, 46.337822>,  <28.877085, 27.522408, 46.346992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960388, 27.297516, 46.337822>,  <29.099226, 26.922695, 46.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960388, 27.297516, 46.337822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175272, 0.104838, -0.978922,
		-0.921306, -0.333082, -0.200628,
		-0.347095, 0.937051, 0.038208,
		28.856260, 27.578630, 46.349285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785376, 26.972157, 45.629753>,  <29.099226, 26.922695, 46.322540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785376, 26.972157, 45.629753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794304, 27.348114, 45.766048>,  <28.799660, 27.573689, 45.847824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.794304, 27.348114, 45.766048>,  <28.785376, 26.972157, 45.629753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.794304, 27.348114, 45.766048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055766, 0.341462, -0.938240,
		-0.998194, 0.001939, 0.060036,
		0.022319, 0.939893, 0.340738,
		28.800999, 27.630081, 45.868271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199421, 27.346622, 45.305111>,  <28.785376, 26.972157, 45.629753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199421, 27.346622, 45.305111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485435, 27.607334, 45.406231>,  <28.657043, 27.763762, 45.466904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485435, 27.607334, 45.406231>,  <28.199421, 27.346622, 45.305111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485435, 27.607334, 45.406231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067010, 0.423845, -0.903252,
		-0.695868, 0.628919, 0.346741,
		0.715037, 0.651779, 0.252796,
		28.699947, 27.802868, 45.482071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935162, 27.836582, 44.850410>,  <28.199421, 27.346622, 45.305111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935162, 27.836582, 44.850410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308199, 27.940147, 44.950996>,  <28.532021, 28.002287, 45.011349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.308199, 27.940147, 44.950996>,  <27.935162, 27.836582, 44.850410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.308199, 27.940147, 44.950996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166250, 0.310256, -0.936003,
		-0.320364, 0.914716, 0.246297,
		0.932592, 0.258915, 0.251466,
		28.587976, 28.017822, 45.026436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039528, 28.495815, 44.521328>,  <27.935162, 27.836582, 44.850410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039528, 28.495815, 44.521328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417585, 28.388285, 44.595558>,  <28.644421, 28.323767, 44.640095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417585, 28.388285, 44.595558>,  <28.039528, 28.495815, 44.521328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417585, 28.388285, 44.595558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315979, 0.608342, -0.728064,
		0.082830, 0.746763, 0.659913,
		0.945144, -0.268824, 0.185573,
		28.701128, 28.307638, 44.651230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361755, 29.143368, 44.627987>,  <28.039528, 28.495815, 44.521328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361755, 29.143368, 44.627987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624495, 28.862185, 44.518883>,  <28.782139, 28.693474, 44.453419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624495, 28.862185, 44.518883>,  <28.361755, 29.143368, 44.627987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624495, 28.862185, 44.518883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371727, 0.616621, -0.693972,
		0.656024, 0.354442, 0.666336,
		0.656850, -0.702958, -0.272763,
		28.821548, 28.651297, 44.437054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039539, 29.475000, 44.489441>,  <28.361755, 29.143368, 44.627987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039539, 29.475000, 44.489441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061165, 29.133209, 44.282772>,  <29.074141, 28.928135, 44.158772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061165, 29.133209, 44.282772>,  <29.039539, 29.475000, 44.489441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061165, 29.133209, 44.282772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387648, 0.494804, -0.777752,
		0.920220, -0.158237, 0.357988,
		0.054064, -0.854477, -0.516669,
		29.077385, 28.876865, 44.127769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689020, 29.574724, 44.041615>,  <29.039539, 29.475000, 44.489441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689020, 29.574724, 44.041615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509045, 29.254669, 43.882954>,  <29.401060, 29.062635, 43.787758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.509045, 29.254669, 43.882954>,  <29.689020, 29.574724, 44.041615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509045, 29.254669, 43.882954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262217, 0.306214, -0.915137,
		0.853697, -0.515764, 0.072033,
		-0.449937, -0.800138, -0.396656,
		29.374063, 29.014627, 43.763958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146036, 29.124203, 43.596130>,  <29.689020, 29.574724, 44.041615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146036, 29.124203, 43.596130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781136, 29.045574, 43.452377>,  <29.562195, 28.998398, 43.366123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781136, 29.045574, 43.452377>,  <30.146036, 29.124203, 43.596130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781136, 29.045574, 43.452377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356169, 0.052740, -0.932932,
		0.202341, -0.979070, 0.021900,
		-0.912251, -0.196571, -0.359387,
		29.507460, 28.986603, 43.344563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310427, 28.783157, 42.946682>,  <30.146036, 29.124203, 43.596130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310427, 28.783157, 42.946682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920208, 28.862492, 42.908802>,  <29.686077, 28.910091, 42.886074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.920208, 28.862492, 42.908802>,  <30.310427, 28.783157, 42.946682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.920208, 28.862492, 42.908802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104465, 0.039320, -0.993751,
		-0.193373, -0.979345, -0.059078,
		-0.975548, 0.198336, -0.094704,
		29.627544, 28.921991, 42.880390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217480, 28.409664, 42.371410>,  <30.310427, 28.783157, 42.946682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217480, 28.409664, 42.371410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894699, 28.643682, 42.403782>,  <29.701031, 28.784094, 42.423206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.894699, 28.643682, 42.403782>,  <30.217480, 28.409664, 42.371410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.894699, 28.643682, 42.403782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002812, 0.133217, -0.991083,
		-0.590612, -0.799983, -0.105854,
		-0.806951, 0.585048, 0.080929,
		29.652615, 28.819197, 42.428062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763657, 28.155230, 41.963768>,  <30.217480, 28.409664, 42.371410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763657, 28.155230, 41.963768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662830, 28.541378, 41.990669>,  <29.602335, 28.773067, 42.006809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.662830, 28.541378, 41.990669>,  <29.763657, 28.155230, 41.963768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.662830, 28.541378, 41.990669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126796, 0.035954, -0.991277,
		-0.959368, -0.258393, 0.113342,
		-0.252064, 0.965371, 0.067256,
		29.587212, 28.830990, 42.010845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138794, 28.238426, 41.579819>,  <29.763657, 28.155230, 41.963768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138794, 28.238426, 41.579819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326298, 28.591320, 41.597385>,  <29.438801, 28.803057, 41.607925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326298, 28.591320, 41.597385>,  <29.138794, 28.238426, 41.579819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326298, 28.591320, 41.597385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092103, 0.000634, -0.995749,
		-0.878511, 0.470812, -0.080959,
		0.468759, 0.882233, 0.043920,
		29.466925, 28.855989, 41.610561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780533, 28.592575, 41.038509>,  <29.138794, 28.238426, 41.579819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780533, 28.592575, 41.038509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120577, 28.788250, 41.116497>,  <29.324604, 28.905655, 41.163288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120577, 28.788250, 41.116497>,  <28.780533, 28.592575, 41.038509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120577, 28.788250, 41.116497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141914, 0.143717, -0.979391,
		-0.507123, 0.860258, 0.052753,
		0.850110, 0.489185, 0.194965,
		29.375610, 28.935005, 41.174988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828909, 29.110340, 40.440445>,  <28.780533, 28.592575, 41.038509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828909, 29.110340, 40.440445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198786, 29.107925, 40.592709>,  <29.420712, 29.106478, 40.684067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198786, 29.107925, 40.592709>,  <28.828909, 29.110340, 40.440445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198786, 29.107925, 40.592709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368828, 0.262060, -0.891791,
		-0.094374, 0.965033, 0.244552,
		0.924694, -0.006035, 0.380663,
		29.476194, 29.106115, 40.706909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.228996, 29.790133, 40.148109>,  <28.828909, 29.110340, 40.440445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.228996, 29.790133, 40.148109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491362, 29.510113, 40.261040>,  <29.648781, 29.342100, 40.328796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491362, 29.510113, 40.261040>,  <29.228996, 29.790133, 40.148109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491362, 29.510113, 40.261040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532619, 0.164193, -0.830276,
		0.534878, 0.694961, 0.480556,
		0.655913, -0.700050, 0.282326,
		29.688135, 29.300098, 40.345737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907801, 30.059305, 39.846195>,  <29.228996, 29.790133, 40.148109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907801, 30.059305, 39.846195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022974, 29.691719, 39.953972>,  <30.092077, 29.471167, 40.018639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022974, 29.691719, 39.953972>,  <29.907801, 30.059305, 39.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022974, 29.691719, 39.953972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659081, -0.013967, -0.751943,
		0.694772, 0.394092, 0.601650,
		0.287931, -0.918965, 0.269442,
		30.109354, 29.416029, 40.034805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659986, 30.114090, 39.908794>,  <29.907801, 30.059305, 39.846195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659986, 30.114090, 39.908794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565313, 29.732601, 39.834606>,  <30.508509, 29.503708, 39.790092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565313, 29.732601, 39.834606>,  <30.659986, 30.114090, 39.908794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565313, 29.732601, 39.834606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764665, -0.065083, -0.641133,
		0.599391, -0.293568, 0.744680,
		-0.236682, -0.953720, -0.185471,
		30.494308, 29.446486, 39.778965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306456, 29.761496, 39.678780>,  <30.659986, 30.114090, 39.908794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306456, 29.761496, 39.678780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027418, 29.504808, 39.551308>,  <30.859995, 29.350796, 39.474823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027418, 29.504808, 39.551308>,  <31.306456, 29.761496, 39.678780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027418, 29.504808, 39.551308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556437, -0.205023, -0.805198,
		0.451374, -0.739028, 0.500100,
		-0.697596, -0.641719, -0.318680,
		30.818140, 29.312292, 39.455704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636778, 29.277069, 39.379227>,  <31.306456, 29.761496, 39.678780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636778, 29.277069, 39.379227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268171, 29.240944, 39.228149>,  <31.047009, 29.219269, 39.137501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268171, 29.240944, 39.228149>,  <31.636778, 29.277069, 39.379227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268171, 29.240944, 39.228149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385879, -0.103527, -0.916722,
		0.043689, -0.990518, 0.130251,
		-0.921514, -0.090312, -0.377697,
		30.991716, 29.213850, 39.114841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656393, 28.716927, 38.955059>,  <31.636778, 29.277069, 39.379227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656393, 28.716927, 38.955059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325123, 28.907690, 38.837292>,  <31.126360, 29.022148, 38.766632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325123, 28.907690, 38.837292>,  <31.656393, 28.716927, 38.955059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325123, 28.907690, 38.837292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288758, -0.087146, -0.953428,
		-0.480357, -0.874621, -0.065540,
		-0.828176, 0.476911, -0.294415,
		31.076670, 29.050764, 38.748966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165007, 28.326231, 38.453735>,  <31.656393, 28.716927, 38.955059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165007, 28.326231, 38.453735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121338, 28.716864, 38.379581>,  <31.095137, 28.951244, 38.335091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.121338, 28.716864, 38.379581>,  <31.165007, 28.326231, 38.453735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121338, 28.716864, 38.379581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118923, -0.197988, -0.972964,
		-0.986883, -0.084173, 0.137753,
		-0.109171, 0.976584, -0.185381,
		31.088587, 29.009838, 38.323967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588961, 28.359468, 37.868362>,  <31.165007, 28.326231, 38.453735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588961, 28.359468, 37.868362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789639, 28.705469, 37.871716>,  <30.910046, 28.913071, 37.873726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789639, 28.705469, 37.871716>,  <30.588961, 28.359468, 37.868362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789639, 28.705469, 37.871716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152520, -0.078916, -0.985145,
		-0.851492, 0.495521, -0.171522,
		0.501696, 0.865004, 0.008380,
		30.940147, 28.964970, 37.874229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362045, 28.670416, 37.278351>,  <30.588961, 28.359468, 37.868362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362045, 28.670416, 37.278351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690218, 28.883116, 37.362385>,  <30.887121, 29.010735, 37.412804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690218, 28.883116, 37.362385>,  <30.362045, 28.670416, 37.278351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690218, 28.883116, 37.362385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184575, 0.101442, -0.977569,
		-0.541131, 0.840806, -0.014921,
		0.820432, 0.531747, 0.210085,
		30.936348, 29.042641, 37.425411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352205, 29.381443, 37.033119>,  <30.362045, 28.670416, 37.278351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352205, 29.381443, 37.033119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734867, 29.266077, 37.049236>,  <30.964464, 29.196857, 37.058907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734867, 29.266077, 37.049236>,  <30.352205, 29.381443, 37.033119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734867, 29.266077, 37.049236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120255, 0.265229, -0.956657,
		0.265229, 0.920038, 0.288417,
		0.956657, -0.288417, 0.040293,
		31.021864, 29.179552, 37.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647722, 29.942116, 36.560028>,  <30.352205, 29.381443, 37.033119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647722, 29.942116, 36.560028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911491, 29.649178, 36.627953>,  <31.069752, 29.473415, 36.668705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911491, 29.649178, 36.627953>,  <30.647722, 29.942116, 36.560028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911491, 29.649178, 36.627953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360243, 0.109568, -0.926402,
		0.659839, 0.672061, 0.336073,
		0.659422, -0.732344, 0.169808,
		31.109318, 29.429474, 36.678894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275875, 30.223234, 36.239433>,  <30.647722, 29.942116, 36.560028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275875, 30.223234, 36.239433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329792, 29.827553, 36.262436>,  <31.362143, 29.590143, 36.276237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329792, 29.827553, 36.262436>,  <31.275875, 30.223234, 36.239433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329792, 29.827553, 36.262436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150001, -0.036993, -0.987993,
		0.979454, 0.141801, 0.143396,
		0.134794, -0.989204, 0.057503,
		31.370230, 29.530792, 36.279686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916956, 30.162107, 35.878479>,  <31.275875, 30.223234, 36.239433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916956, 30.162107, 35.878479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713409, 29.818163, 35.894932>,  <31.591282, 29.611795, 35.904804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713409, 29.818163, 35.894932>,  <31.916956, 30.162107, 35.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713409, 29.818163, 35.894932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222571, -0.177570, -0.958609,
		0.831575, -0.478650, 0.281740,
		-0.508867, -0.859862, 0.041129,
		31.560749, 29.560204, 35.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398060, 29.672544, 35.788200>,  <31.916956, 30.162107, 35.878479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398060, 29.672544, 35.788200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053524, 29.499643, 35.681427>,  <31.846802, 29.395903, 35.617363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053524, 29.499643, 35.681427>,  <32.398060, 29.672544, 35.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053524, 29.499643, 35.681427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309649, -0.030135, -0.950373,
		0.402757, -0.901249, 0.159803,
		-0.861339, -0.432252, -0.266933,
		31.795122, 29.369968, 35.601345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611656, 29.347620, 35.240440>,  <32.398060, 29.672544, 35.788200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611656, 29.347620, 35.240440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217587, 29.298037, 35.193005>,  <31.981144, 29.268286, 35.164543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217587, 29.298037, 35.193005>,  <32.611656, 29.347620, 35.240440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217587, 29.298037, 35.193005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134806, -0.131881, -0.982056,
		0.106096, -0.983484, 0.146637,
		-0.985176, -0.123960, -0.118588,
		31.922033, 29.260849, 35.157429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619549, 28.768641, 34.750919>,  <32.611656, 29.347620, 35.240440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619549, 28.768641, 34.750919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274353, 28.966528, 34.709938>,  <32.067234, 29.085260, 34.685349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274353, 28.966528, 34.709938>,  <32.619549, 28.768641, 34.750919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274353, 28.966528, 34.709938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107196, -0.018872, -0.994059,
		-0.493713, -0.868848, -0.036745,
		-0.862993, 0.494719, -0.102454,
		32.015453, 29.114943, 34.679203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290470, 28.962370, 34.899117>,  <32.619549, 28.768641, 34.750919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290470, 28.962370, 34.899117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652527, 29.088049, 35.013664>,  <33.869759, 29.163456, 35.082394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652527, 29.088049, 35.013664>,  <33.290470, 28.962370, 34.899117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652527, 29.088049, 35.013664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292722, -0.027856, 0.955792,
		0.308286, -0.948948, 0.066760,
		0.905137, 0.314199, 0.286365,
		33.924068, 29.182308, 35.099575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435013, 28.565624, 35.455708>,  <33.290470, 28.962370, 34.899117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435013, 28.565624, 35.455708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715168, 28.848230, 35.496284>,  <33.883263, 29.017794, 35.520630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715168, 28.848230, 35.496284>,  <33.435013, 28.565624, 35.455708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715168, 28.848230, 35.496284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120961, -0.022578, 0.992401,
		0.703438, -0.707336, 0.069648,
		0.700388, 0.706517, 0.101442,
		33.925285, 29.060184, 35.526718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875462, 28.287264, 36.018311>,  <33.435013, 28.565624, 35.455708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875462, 28.287264, 36.018311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947533, 28.680052, 35.995426>,  <33.990776, 28.915724, 35.981697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.947533, 28.680052, 35.995426>,  <33.875462, 28.287264, 36.018311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947533, 28.680052, 35.995426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125651, 0.034709, 0.991467,
		0.975575, -0.185830, -0.117132,
		0.180179, 0.981969, -0.057211,
		34.001587, 28.974642, 35.978264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567257, 28.410753, 36.357643>,  <33.875462, 28.287264, 36.018311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567257, 28.410753, 36.357643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346550, 28.744251, 36.365894>,  <34.214127, 28.944349, 36.370846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346550, 28.744251, 36.365894>,  <34.567257, 28.410753, 36.357643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346550, 28.744251, 36.365894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096321, 0.039139, 0.994581,
		0.828418, 0.550763, -0.101902,
		-0.551766, 0.833744, 0.020627,
		34.181019, 28.994375, 36.372082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978043, 28.887129, 36.930901>,  <34.567257, 28.410753, 36.357643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978043, 28.887129, 36.930901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603104, 29.022417, 36.897465>,  <34.378139, 29.103590, 36.877403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603104, 29.022417, 36.897465>,  <34.978043, 28.887129, 36.930901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603104, 29.022417, 36.897465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002393, 0.246164, 0.969225,
		0.348387, 0.908301, -0.231550,
		-0.937348, 0.338220, -0.083587,
		34.321899, 29.123882, 36.872387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000835, 29.341406, 37.431965>,  <34.978043, 28.887129, 36.930901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000835, 29.341406, 37.431965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616631, 29.295387, 37.330624>,  <34.386108, 29.267776, 37.269817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616631, 29.295387, 37.330624>,  <35.000835, 29.341406, 37.431965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616631, 29.295387, 37.330624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268097, 0.138891, 0.953328,
		-0.074487, 0.983602, -0.164249,
		-0.960508, -0.115046, -0.253355,
		34.328480, 29.260874, 37.254616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720406, 29.794821, 37.820324>,  <35.000835, 29.341406, 37.431965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720406, 29.794821, 37.820324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430435, 29.533409, 37.733257>,  <34.256451, 29.376562, 37.681015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430435, 29.533409, 37.733257>,  <34.720406, 29.794821, 37.820324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430435, 29.533409, 37.733257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134439, -0.175687, 0.975223,
		-0.675578, 0.736230, 0.039501,
		-0.724928, -0.653529, -0.217668,
		34.212955, 29.337351, 37.667957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091595, 29.966835, 38.286182>,  <34.720406, 29.794821, 37.820324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091595, 29.966835, 38.286182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073574, 29.585695, 38.166149>,  <34.062763, 29.357012, 38.094128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073574, 29.585695, 38.166149>,  <34.091595, 29.966835, 38.286182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073574, 29.585695, 38.166149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276360, -0.276778, 0.920336,
		-0.959998, 0.124394, -0.250860,
		-0.045051, -0.952849, -0.300084,
		34.060059, 29.299841, 38.076122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505882, 29.719727, 38.614491>,  <34.091595, 29.966835, 38.286182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505882, 29.719727, 38.614491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762665, 29.425310, 38.528580>,  <33.916737, 29.248659, 38.477032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762665, 29.425310, 38.528580>,  <33.505882, 29.719727, 38.614491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762665, 29.425310, 38.528580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170284, -0.409987, 0.896055,
		-0.747591, -0.538658, -0.388531,
		0.641959, -0.736043, -0.214777,
		33.955254, 29.204498, 38.464146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091801, 29.176601, 38.651348>,  <33.505882, 29.719727, 38.614491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091801, 29.176601, 38.651348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459644, 29.024347, 38.690212>,  <33.680351, 28.932995, 38.713531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459644, 29.024347, 38.690212>,  <33.091801, 29.176601, 38.651348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459644, 29.024347, 38.690212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268299, -0.427897, 0.863087,
		-0.286944, -0.819770, -0.495621,
		0.919608, -0.380632, 0.097161,
		33.735527, 28.910158, 38.719360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943954, 28.579691, 39.076275>,  <33.091801, 29.176601, 38.651348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943954, 28.579691, 39.076275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337780, 28.631771, 39.123051>,  <33.574078, 28.663019, 39.151115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337780, 28.631771, 39.123051>,  <32.943954, 28.579691, 39.076275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337780, 28.631771, 39.123051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059743, -0.378005, 0.923874,
		0.164492, -0.916603, -0.364393,
		0.984567, 0.130199, 0.116939,
		33.633152, 28.670832, 39.158131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150551, 27.922741, 39.213627>,  <32.943954, 28.579691, 39.076275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150551, 27.922741, 39.213627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394924, 28.199642, 39.367271>,  <33.541550, 28.365784, 39.459457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394924, 28.199642, 39.367271>,  <33.150551, 27.922741, 39.213627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394924, 28.199642, 39.367271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161594, -0.365930, 0.916506,
		0.775011, -0.621998, -0.111696,
		0.610938, 0.692253, 0.384111,
		33.578205, 28.407318, 39.482506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527164, 27.550396, 39.620518>,  <33.150551, 27.922741, 39.213627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527164, 27.550396, 39.620518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618977, 27.913095, 39.762009>,  <33.674065, 28.130714, 39.846905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618977, 27.913095, 39.762009>,  <33.527164, 27.550396, 39.620518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618977, 27.913095, 39.762009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440780, -0.227188, 0.868389,
		0.867774, -0.355234, 0.347531,
		0.229526, 0.906749, 0.353728,
		33.687836, 28.185120, 39.868126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881229, 27.421705, 40.315865>,  <33.527164, 27.550396, 39.620518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881229, 27.421705, 40.315865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735886, 27.794355, 40.318340>,  <33.648678, 28.017946, 40.319824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735886, 27.794355, 40.318340>,  <33.881229, 27.421705, 40.315865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735886, 27.794355, 40.318340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315408, -0.129261, 0.940112,
		0.876633, 0.339650, 0.340811,
		-0.363362, 0.931628, 0.006186,
		33.626877, 28.073843, 40.320194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126614, 27.713238, 40.973930>,  <33.881229, 27.421705, 40.315865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126614, 27.713238, 40.973930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805187, 27.932884, 40.882053>,  <33.612331, 28.064672, 40.826927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805187, 27.932884, 40.882053>,  <34.126614, 27.713238, 40.973930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805187, 27.932884, 40.882053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370376, -0.159201, 0.915137,
		0.465951, 0.820442, 0.331309,
		-0.803562, 0.549118, -0.229692,
		33.564117, 28.097620, 40.813145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084751, 28.061638, 41.545475>,  <34.126614, 27.713238, 40.973930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084751, 28.061638, 41.545475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736008, 28.103098, 41.354008>,  <33.526764, 28.127974, 41.239128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736008, 28.103098, 41.354008>,  <34.084751, 28.061638, 41.545475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736008, 28.103098, 41.354008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461935, 0.150726, 0.874012,
		0.162738, 0.983127, -0.083532,
		-0.871856, 0.103648, -0.478670,
		33.474449, 28.134192, 41.210407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782639, 28.516674, 41.954456>,  <34.084751, 28.061638, 41.545475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782639, 28.516674, 41.954456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475864, 28.367222, 41.745762>,  <33.291798, 28.277552, 41.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475864, 28.367222, 41.745762>,  <33.782639, 28.516674, 41.954456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475864, 28.367222, 41.745762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603957, 0.145466, 0.783630,
		-0.216893, 0.916101, -0.337219,
		-0.766938, -0.373629, -0.521735,
		33.245785, 28.255133, 41.589241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167362, 28.903997, 42.057449>,  <33.782639, 28.516674, 41.954456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167362, 28.903997, 42.057449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033100, 28.548311, 41.933109>,  <32.952541, 28.334900, 41.858505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033100, 28.548311, 41.933109>,  <33.167362, 28.903997, 42.057449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033100, 28.548311, 41.933109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698722, 0.013714, 0.715261,
		-0.631760, 0.457279, -0.625920,
		-0.335658, -0.889217, -0.310847,
		32.932404, 28.281546, 41.839855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405907, 28.884388, 42.137840>,  <33.167362, 28.903997, 42.057449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405907, 28.884388, 42.137840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540127, 28.507578, 42.137852>,  <32.620659, 28.281492, 42.137859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540127, 28.507578, 42.137852>,  <32.405907, 28.884388, 42.137840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540127, 28.507578, 42.137852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496239, -0.176730, 0.850008,
		-0.800722, -0.285234, -0.526770,
		0.335547, -0.942023, 0.000033,
		32.640789, 28.224972, 42.137863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781677, 28.427469, 42.167950>,  <32.405907, 28.884388, 42.137840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781677, 28.427469, 42.167950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083027, 28.196413, 42.293655>,  <32.263836, 28.057779, 42.369080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083027, 28.196413, 42.293655>,  <31.781677, 28.427469, 42.167950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083027, 28.196413, 42.293655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521696, -0.234079, 0.820391,
		-0.400331, -0.782008, -0.477702,
		0.753372, -0.577643, 0.314261,
		32.309040, 28.023121, 42.387932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429474, 27.802799, 42.457714>,  <31.781677, 28.427469, 42.167950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429474, 27.802799, 42.457714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789703, 27.836121, 42.628372>,  <32.005840, 27.856113, 42.730766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789703, 27.836121, 42.628372>,  <31.429474, 27.802799, 42.457714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789703, 27.836121, 42.628372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389642, -0.280440, 0.877230,
		0.192725, -0.956250, -0.220098,
		0.900575, 0.083305, 0.426643,
		32.059875, 27.861113, 42.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469063, 27.259895, 42.906467>,  <31.429474, 27.802799, 42.457714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469063, 27.259895, 42.906467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752218, 27.497238, 43.059738>,  <31.922112, 27.639643, 43.151699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752218, 27.497238, 43.059738>,  <31.469063, 27.259895, 42.906467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752218, 27.497238, 43.059738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246998, -0.300286, 0.921314,
		0.661729, -0.746832, -0.066011,
		0.707889, 0.593356, 0.383174,
		31.964584, 27.675245, 43.174690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849771, 26.927164, 43.481434>,  <31.469063, 27.259895, 42.906467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849771, 26.927164, 43.481434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872290, 27.323191, 43.532967>,  <31.885801, 27.560806, 43.563889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872290, 27.323191, 43.532967>,  <31.849771, 26.927164, 43.481434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872290, 27.323191, 43.532967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239415, -0.111887, 0.964449,
		0.969284, -0.085139, 0.230738,
		0.056296, 0.990067, 0.128834,
		31.889179, 27.620211, 43.571617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606623, 26.964594, 44.135868>,  <31.849771, 26.927164, 43.481434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606623, 26.964594, 44.135868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735170, 27.341284, 44.096111>,  <31.812300, 27.567297, 44.072258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.735170, 27.341284, 44.096111>,  <31.606623, 26.964594, 44.135868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.735170, 27.341284, 44.096111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244836, 0.184026, 0.951940,
		0.914754, -0.281591, 0.289708,
		0.321371, 0.941722, -0.099395,
		31.831581, 27.623800, 44.066292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174541, 27.174286, 44.632595>,  <31.606623, 26.964594, 44.135868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174541, 27.174286, 44.632595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952011, 27.484518, 44.513275>,  <31.818493, 27.670656, 44.441685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952011, 27.484518, 44.513275>,  <32.174541, 27.174286, 44.632595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952011, 27.484518, 44.513275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205519, 0.219406, 0.953742,
		0.805150, 0.591895, 0.037336,
		-0.556323, 0.775578, -0.298300,
		31.785114, 27.717192, 44.423786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312958, 27.765114, 45.092564>,  <32.174541, 27.174286, 44.632595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312958, 27.765114, 45.092564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956463, 27.837803, 44.926350>,  <31.742565, 27.881416, 44.826622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956463, 27.837803, 44.926350>,  <32.312958, 27.765114, 45.092564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956463, 27.837803, 44.926350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375536, 0.218033, 0.900796,
		0.254295, 0.958874, -0.126077,
		-0.891239, 0.181722, -0.415537,
		31.689091, 27.892319, 44.801689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077518, 28.414858, 45.317440>,  <32.312958, 27.765114, 45.092564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077518, 28.414858, 45.317440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751263, 28.208172, 45.213333>,  <31.555510, 28.084160, 45.150867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751263, 28.208172, 45.213333>,  <32.077518, 28.414858, 45.317440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751263, 28.208172, 45.213333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439053, 0.259839, 0.860067,
		-0.376782, 0.815776, -0.438800,
		-0.815639, -0.516714, -0.260266,
		31.506571, 28.053158, 45.135254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544863, 28.870188, 45.414501>,  <32.077518, 28.414858, 45.317440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544863, 28.870188, 45.414501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382761, 28.506609, 45.453659>,  <31.285500, 28.288462, 45.477154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382761, 28.506609, 45.453659>,  <31.544863, 28.870188, 45.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382761, 28.506609, 45.453659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393509, 0.270093, 0.878749,
		-0.825177, 0.317595, -0.467135,
		-0.405257, -0.908946, 0.097898,
		31.261185, 28.233925, 45.483028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022038, 28.939545, 45.879055>,  <31.544863, 28.870188, 45.414501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022038, 28.939545, 45.879055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027769, 28.539587, 45.880245>,  <31.031208, 28.299612, 45.880959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027769, 28.539587, 45.880245>,  <31.022038, 28.939545, 45.879055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027769, 28.539587, 45.880245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318773, -0.001747, 0.947829,
		-0.947723, -0.014532, -0.318764,
		0.014331, -0.999893, 0.002976,
		31.032068, 28.239618, 45.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539009, 28.817640, 46.270329>,  <31.022038, 28.939545, 45.879055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539009, 28.817640, 46.270329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736259, 28.469679, 46.274200>,  <30.854610, 28.260902, 46.276524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736259, 28.469679, 46.274200>,  <30.539009, 28.817640, 46.270329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736259, 28.469679, 46.274200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179248, -0.090714, 0.979613,
		-0.851290, -0.484809, -0.200662,
		0.493128, -0.869903, 0.009677,
		30.884197, 28.208708, 46.277103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149033, 28.381580, 46.612415>,  <30.539009, 28.817640, 46.270329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149033, 28.381580, 46.612415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511263, 28.212769, 46.629486>,  <30.728601, 28.111481, 46.639729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.511263, 28.212769, 46.629486>,  <30.149033, 28.381580, 46.612415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511263, 28.212769, 46.629486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143896, -0.210991, 0.966838,
		-0.399030, -0.881688, -0.251797,
		0.905577, -0.422030, 0.042679,
		30.782936, 28.086161, 46.642288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088165, 27.715981, 46.751999>,  <30.149033, 28.381580, 46.612415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088165, 27.715981, 46.751999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457108, 27.806820, 46.877014>,  <30.678474, 27.861324, 46.952023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457108, 27.806820, 46.877014>,  <30.088165, 27.715981, 46.751999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457108, 27.806820, 46.877014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275311, -0.181170, 0.944130,
		0.271035, -0.956872, -0.104580,
		0.922358, 0.227100, 0.312540,
		30.733814, 27.874950, 46.970776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202190, 27.172745, 47.207592>,  <30.088165, 27.715981, 46.751999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202190, 27.172745, 47.207592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496197, 27.429630, 47.294598>,  <30.672602, 27.583761, 47.346802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496197, 27.429630, 47.294598>,  <30.202190, 27.172745, 47.207592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496197, 27.429630, 47.294598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193306, -0.109011, 0.975064,
		0.649909, -0.758736, 0.044019,
		0.735018, 0.642212, 0.217515,
		30.716702, 27.622293, 47.359852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505409, 26.869722, 47.742069>,  <30.202190, 27.172745, 47.207592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505409, 26.869722, 47.742069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649982, 27.241186, 47.775429>,  <30.736727, 27.464066, 47.795444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649982, 27.241186, 47.775429>,  <30.505409, 26.869722, 47.742069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649982, 27.241186, 47.775429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014143, -0.094891, 0.995387,
		0.932290, -0.358587, -0.047430,
		0.361434, 0.928661, 0.083394,
		30.758413, 27.519785, 47.800446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.019674, 26.835299, 48.273865>,  <30.505409, 26.869722, 47.742069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.019674, 26.835299, 48.273865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904747, 27.217768, 48.251289>,  <30.835791, 27.447248, 48.237743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904747, 27.217768, 48.251289>,  <31.019674, 26.835299, 48.273865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904747, 27.217768, 48.251289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148405, 0.013775, 0.988831,
		0.946269, 0.292483, 0.137943,
		-0.287316, 0.956171, -0.056441,
		30.818552, 27.504620, 48.234356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388132, 27.202967, 48.790638>,  <31.019674, 26.835299, 48.273865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388132, 27.202967, 48.790638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074760, 27.445856, 48.737694>,  <30.886738, 27.591591, 48.705925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.074760, 27.445856, 48.737694>,  <31.388132, 27.202967, 48.790638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074760, 27.445856, 48.737694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152841, 0.018191, 0.988083,
		0.602397, 0.794322, 0.078557,
		-0.783427, 0.607225, -0.132363,
		30.839733, 27.628023, 48.697987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446541, 27.857141, 49.279774>,  <31.388132, 27.202967, 48.790638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446541, 27.857141, 49.279774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068285, 27.789261, 49.168804>,  <30.841331, 27.748531, 49.102222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.068285, 27.789261, 49.168804>,  <31.446541, 27.857141, 49.279774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068285, 27.789261, 49.168804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243612, -0.195494, 0.949966,
		-0.215447, 0.965910, 0.143525,
		-0.945640, -0.169703, -0.277426,
		30.784594, 27.738350, 49.085575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002886, 28.265894, 49.765377>,  <31.446541, 27.857141, 49.279774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002886, 28.265894, 49.765377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729830, 28.015490, 49.614586>,  <30.565996, 27.865246, 49.524113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729830, 28.015490, 49.614586>,  <31.002886, 28.265894, 49.765377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729830, 28.015490, 49.614586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252662, -0.281861, 0.925590,
		-0.685686, 0.727092, 0.034240,
		-0.682640, -0.626012, -0.376976,
		30.525038, 27.827686, 49.501492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732885, 28.538401, 49.937748>,  <31.002886, 28.265894, 49.765377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732885, 28.538401, 49.937748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870581, 28.883532, 50.085815>,  <31.953197, 29.090611, 50.174656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870581, 28.883532, 50.085815>,  <31.732885, 28.538401, 49.937748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870581, 28.883532, 50.085815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148676, 0.339197, -0.928892,
		-0.927037, 0.374794, -0.011518,
		0.344237, 0.862829, 0.370171,
		31.973852, 29.142380, 50.196865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203915, 29.139210, 49.646137>,  <31.732885, 28.538401, 49.937748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203915, 29.139210, 49.646137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575424, 29.263548, 49.726891>,  <31.798330, 29.338150, 49.775345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575424, 29.263548, 49.726891>,  <31.203915, 29.139210, 49.646137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575424, 29.263548, 49.726891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047119, 0.441246, -0.896149,
		-0.367644, 0.841831, 0.395170,
		0.928772, 0.310843, 0.201887,
		31.854055, 29.356800, 49.787457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137583, 29.719582, 49.402267>,  <31.203915, 29.139210, 49.646137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137583, 29.719582, 49.402267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533863, 29.673111, 49.430584>,  <31.771631, 29.645227, 49.447575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.533863, 29.673111, 49.430584>,  <31.137583, 29.719582, 49.402267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533863, 29.673111, 49.430584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124953, 0.571234, -0.811221,
		0.053808, 0.812524, 0.580440,
		0.990703, -0.116178, 0.070791,
		31.831074, 29.638258, 49.451820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405930, 30.404284, 49.335800>,  <31.137583, 29.719582, 49.402267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405930, 30.404284, 49.335800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694288, 30.142588, 49.244343>,  <31.867304, 29.985569, 49.189468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.694288, 30.142588, 49.244343>,  <31.405930, 30.404284, 49.335800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694288, 30.142588, 49.244343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245137, 0.549297, -0.798862,
		0.648242, 0.519847, 0.556364,
		0.720895, -0.654242, -0.228644,
		31.910557, 29.946316, 49.175751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779684, 30.840816, 48.850883>,  <31.405930, 30.404284, 49.335800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779684, 30.840816, 48.850883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911358, 30.467104, 48.796104>,  <31.990362, 30.242876, 48.763237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.911358, 30.467104, 48.796104>,  <31.779684, 30.840816, 48.850883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.911358, 30.467104, 48.796104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426894, 0.276609, -0.860958,
		0.842258, 0.224954, 0.489896,
		0.329186, -0.934282, -0.136945,
		32.010113, 30.186819, 48.755020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374924, 30.982536, 48.538319>,  <31.779684, 30.840816, 48.850883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374924, 30.982536, 48.538319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300190, 30.591381, 48.500725>,  <32.255352, 30.356688, 48.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300190, 30.591381, 48.500725>,  <32.374924, 30.982536, 48.538319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300190, 30.591381, 48.500725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431744, 0.004202, -0.901986,
		0.882435, -0.209097, 0.421411,
		-0.186832, -0.977886, -0.093985,
		32.244141, 30.298016, 48.472530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012341, 30.599689, 48.391129>,  <32.374924, 30.982536, 48.538319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012341, 30.599689, 48.391129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727585, 30.363419, 48.239170>,  <32.556732, 30.221657, 48.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727585, 30.363419, 48.239170>,  <33.012341, 30.599689, 48.391129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727585, 30.363419, 48.239170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385349, 0.123700, -0.914442,
		0.587134, -0.797369, 0.139557,
		-0.711885, -0.590678, -0.379894,
		32.514019, 30.186214, 48.125202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276726, 30.350578, 47.825752>,  <33.012341, 30.599689, 48.391129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276726, 30.350578, 47.825752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883854, 30.334711, 47.752266>,  <32.648132, 30.325191, 47.708172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883854, 30.334711, 47.752266>,  <33.276726, 30.350578, 47.825752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883854, 30.334711, 47.752266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181792, 0.047728, -0.982178,
		0.047728, -0.998072, -0.039666,
		0.982178, 0.039666, 0.183719,
		32.589199, 30.322811, 47.697151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301636, 29.967028, 47.155895>,  <33.276726, 30.350578, 47.825752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301636, 29.967028, 47.155895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929951, 30.114830, 47.153934>,  <32.706940, 30.203512, 47.152760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929951, 30.114830, 47.153934>,  <33.301636, 29.967028, 47.155895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929951, 30.114830, 47.153934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017506, -0.057253, -0.998206,
		-0.369126, -0.927462, 0.059669,
		-0.929215, 0.369509, -0.004898,
		32.651188, 30.225683, 47.152466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932041, 29.565163, 46.713757>,  <33.301636, 29.967028, 47.155895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932041, 29.565163, 46.713757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711445, 29.897812, 46.739868>,  <32.579086, 30.097401, 46.755535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711445, 29.897812, 46.739868>,  <32.932041, 29.565163, 46.713757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711445, 29.897812, 46.739868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088159, 0.019715, -0.995911,
		-0.829508, -0.554993, 0.062442,
		-0.551493, 0.831621, 0.065281,
		32.545998, 30.147299, 46.759453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229504, 29.536005, 46.350605>,  <32.932041, 29.565163, 46.713757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229504, 29.536005, 46.350605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288536, 29.931570, 46.357178>,  <32.323956, 30.168909, 46.361122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288536, 29.931570, 46.357178>,  <32.229504, 29.536005, 46.350605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288536, 29.931570, 46.357178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063299, 0.026026, -0.997655,
		-0.987022, 0.146196, 0.066438,
		0.147582, 0.988913, 0.016435,
		32.332809, 30.228245, 46.362106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773497, 29.732956, 45.952660>,  <32.229504, 29.536005, 46.350605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773497, 29.732956, 45.952660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028622, 30.040796, 45.964706>,  <32.181698, 30.225500, 45.971935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028622, 30.040796, 45.964706>,  <31.773497, 29.732956, 45.952660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028622, 30.040796, 45.964706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167134, -0.100133, -0.980836,
		-0.751839, 0.630623, -0.192493,
		0.637813, 0.769603, 0.030114,
		32.219967, 30.271677, 45.973740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.525185, 30.238857, 45.481506>,  <31.773497, 29.732956, 45.952660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.525185, 30.238857, 45.481506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915121, 30.316734, 45.524925>,  <32.149082, 30.363461, 45.550976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915121, 30.316734, 45.524925>,  <31.525185, 30.238857, 45.481506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915121, 30.316734, 45.524925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097271, 0.066612, -0.993026,
		-0.200566, 0.978600, 0.045998,
		0.974839, 0.194693, 0.108550,
		32.207573, 30.375143, 45.557491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702480, 30.781284, 45.066471>,  <31.525185, 30.238857, 45.481506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702480, 30.781284, 45.066471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056072, 30.601313, 45.117287>,  <32.268227, 30.493330, 45.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056072, 30.601313, 45.117287>,  <31.702480, 30.781284, 45.066471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056072, 30.601313, 45.117287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207208, 0.133450, -0.969152,
		0.419096, 0.883037, 0.211196,
		0.883981, -0.449930, 0.127044,
		32.321266, 30.466333, 45.155399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200527, 31.194780, 44.758663>,  <31.702480, 30.781284, 45.066471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200527, 31.194780, 44.758663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392914, 30.844097, 44.755806>,  <32.508347, 30.633688, 44.754093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392914, 30.844097, 44.755806>,  <32.200527, 31.194780, 44.758663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392914, 30.844097, 44.755806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389178, 0.220788, -0.894311,
		0.785626, 0.427358, 0.447388,
		0.480969, -0.876708, -0.007139,
		32.537205, 30.581085, 44.753666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945045, 31.393753, 44.439377>,  <32.200527, 31.194780, 44.758663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945045, 31.393753, 44.439377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908340, 30.997591, 44.398037>,  <32.886318, 30.759893, 44.373234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908340, 30.997591, 44.398037>,  <32.945045, 31.393753, 44.439377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908340, 30.997591, 44.398037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233978, 0.079440, -0.968991,
		0.967902, -0.113100, 0.224443,
		-0.091763, -0.990403, -0.103353,
		32.880810, 30.700470, 44.367031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605278, 31.108120, 44.163853>,  <32.945045, 31.393753, 44.439377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605278, 31.108120, 44.163853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308853, 30.851622, 44.084221>,  <33.131001, 30.697723, 44.036442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308853, 30.851622, 44.084221>,  <33.605278, 31.108120, 44.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308853, 30.851622, 44.084221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252924, 0.008066, -0.967453,
		0.621981, -0.767293, 0.156209,
		-0.741060, -0.641245, -0.199083,
		33.086536, 30.659248, 44.024494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909706, 30.609020, 43.669552>,  <33.605278, 31.108120, 44.163853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909706, 30.609020, 43.669552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517956, 30.542471, 43.623695>,  <33.282906, 30.502542, 43.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517956, 30.542471, 43.623695>,  <33.909706, 30.609020, 43.669552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517956, 30.542471, 43.623695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122024, -0.034809, -0.991917,
		0.161036, -0.985448, 0.054392,
		-0.979376, -0.166372, -0.114643,
		33.224144, 30.492559, 43.589302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736763, 29.947277, 43.391907>,  <33.909706, 30.609020, 43.669552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736763, 29.947277, 43.391907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407593, 30.163336, 43.321430>,  <33.210091, 30.292971, 43.279144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.407593, 30.163336, 43.321430>,  <33.736763, 29.947277, 43.391907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407593, 30.163336, 43.321430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133258, -0.117960, -0.984036,
		-0.552307, -0.833263, 0.025093,
		-0.822921, 0.540147, -0.176189,
		33.160717, 30.325380, 43.268574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306423, 29.537127, 42.936687>,  <33.736763, 29.947277, 43.391907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306423, 29.537127, 42.936687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186623, 29.916636, 42.896439>,  <33.114742, 30.144341, 42.872288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186623, 29.916636, 42.896439>,  <33.306423, 29.537127, 42.936687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186623, 29.916636, 42.896439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295635, -0.007984, -0.955268,
		-0.907137, -0.315854, -0.278099,
		-0.299505, 0.948774, -0.100621,
		33.096771, 30.201267, 42.866253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931988, 29.542013, 42.302361>,  <33.306423, 29.537127, 42.936687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931988, 29.542013, 42.302361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048611, 29.917528, 42.375759>,  <33.118584, 30.142838, 42.419800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048611, 29.917528, 42.375759>,  <32.931988, 29.542013, 42.302361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048611, 29.917528, 42.375759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197110, 0.128750, -0.971890,
		-0.936025, 0.319528, -0.147508,
		0.291554, 0.938789, 0.183495,
		33.136078, 30.199165, 42.430809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861858, 29.763071, 41.635426>,  <32.931988, 29.542013, 42.302361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861858, 29.763071, 41.635426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064312, 30.065725, 41.800995>,  <33.185783, 30.247318, 41.900337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.064312, 30.065725, 41.800995>,  <32.861858, 29.763071, 41.635426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064312, 30.065725, 41.800995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418237, 0.204396, -0.885042,
		-0.754257, 0.621070, -0.213000,
		0.506137, 0.756634, 0.413922,
		33.216152, 30.292715, 41.925171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824581, 30.427679, 41.143242>,  <32.861858, 29.763071, 41.635426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824581, 30.427679, 41.143242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144608, 30.474464, 41.378601>,  <33.336624, 30.502535, 41.519817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144608, 30.474464, 41.378601>,  <32.824581, 30.427679, 41.143242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144608, 30.474464, 41.378601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553195, 0.235626, -0.799035,
		-0.232100, 0.964780, 0.123812,
		0.800066, 0.116964, 0.588400,
		33.384628, 30.509554, 41.555122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203938, 31.003311, 40.880405>,  <32.824581, 30.427679, 41.143242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203938, 31.003311, 40.880405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459854, 30.805786, 41.115971>,  <33.613403, 30.687271, 41.257309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459854, 30.805786, 41.115971>,  <33.203938, 31.003311, 40.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459854, 30.805786, 41.115971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746053, 0.214994, -0.630224,
		0.184599, 0.842572, 0.505961,
		0.639788, -0.493812, 0.588915,
		33.651791, 30.657642, 41.292645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662006, 31.458273, 40.881939>,  <33.203938, 31.003311, 40.880405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662006, 31.458273, 40.881939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815872, 31.101007, 40.975143>,  <33.908192, 30.886648, 41.031067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.815872, 31.101007, 40.975143>,  <33.662006, 31.458273, 40.881939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815872, 31.101007, 40.975143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697844, 0.116162, -0.706767,
		0.604191, 0.434474, 0.667971,
		0.384665, -0.893162, 0.233011,
		33.931271, 30.833059, 41.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378498, 31.595192, 41.053883>,  <33.662006, 31.458273, 40.881939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378498, 31.595192, 41.053883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389534, 31.203089, 40.975571>,  <34.396156, 30.967827, 40.928585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389534, 31.203089, 40.975571>,  <34.378498, 31.595192, 41.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389534, 31.203089, 40.975571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917468, 0.102591, -0.384354,
		0.396852, -0.169016, 0.902187,
		0.027594, -0.980260, -0.195780,
		34.397812, 30.909010, 40.916836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031467, 31.334230, 41.343975>,  <34.378498, 31.595192, 41.053883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031467, 31.334230, 41.343975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909393, 31.076180, 41.063782>,  <34.836147, 30.921349, 40.895668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909393, 31.076180, 41.063782>,  <35.031467, 31.334230, 41.343975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909393, 31.076180, 41.063782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902631, 0.038474, -0.428693,
		0.303512, -0.763105, 0.570571,
		-0.305186, -0.645128, -0.700479,
		34.817837, 30.882641, 40.853638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603096, 30.739416, 41.279854>,  <35.031467, 31.334230, 41.343975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603096, 30.739416, 41.279854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388271, 30.738962, 40.942436>,  <35.259377, 30.738689, 40.739986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388271, 30.738962, 40.942436>,  <35.603096, 30.739416, 41.279854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388271, 30.738962, 40.942436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843261, 0.025154, -0.536916,
		0.021823, -0.999683, -0.012561,
		-0.537061, -0.001125, -0.843543,
		35.227154, 30.738623, 40.689373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091251, 30.463917, 40.915653>,  <35.603096, 30.739416, 41.279854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091251, 30.463917, 40.915653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840233, 30.626583, 40.650078>,  <35.689621, 30.724182, 40.490734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.840233, 30.626583, 40.650078>,  <36.091251, 30.463917, 40.915653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840233, 30.626583, 40.650078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761938, 0.145409, -0.631115,
		-0.160110, -0.901931, -0.401104,
		-0.627547, 0.406665, -0.663934,
		35.651970, 30.748583, 40.450897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288116, 30.207371, 40.248672>,  <36.091251, 30.463917, 40.915653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288116, 30.207371, 40.248672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083782, 30.543154, 40.174534>,  <35.961182, 30.744623, 40.130051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083782, 30.543154, 40.174534>,  <36.288116, 30.207371, 40.248672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083782, 30.543154, 40.174534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797515, 0.382259, -0.466742,
		-0.320959, -0.386248, -0.864753,
		-0.510838, 0.839458, -0.185349,
		35.930531, 30.794991, 40.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250618, 30.228714, 39.552429>,  <36.288116, 30.207371, 40.248672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250618, 30.228714, 39.552429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224876, 30.596001, 39.708755>,  <36.209431, 30.816374, 39.802551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.224876, 30.596001, 39.708755>,  <36.250618, 30.228714, 39.552429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224876, 30.596001, 39.708755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774359, 0.292973, -0.560835,
		-0.629466, 0.266539, -0.729883,
		-0.064352, 0.918218, 0.390813,
		36.205570, 30.871466, 39.826000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462906, 30.624470, 38.962990>,  <36.250618, 30.228714, 39.552429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462906, 30.624470, 38.962990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526073, 30.858124, 39.281448>,  <36.563976, 30.998316, 39.472523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526073, 30.858124, 39.281448>,  <36.462906, 30.624470, 38.962990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526073, 30.858124, 39.281448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814035, 0.379362, -0.439809,
		-0.558935, 0.717546, -0.415596,
		0.157922, 0.584135, 0.796145,
		36.573448, 31.033363, 39.520290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731842, 31.193506, 38.555862>,  <36.462906, 30.624470, 38.962990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731842, 31.193506, 38.555862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813381, 31.251581, 38.943134>,  <36.862305, 31.286427, 39.175495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813381, 31.251581, 38.943134>,  <36.731842, 31.193506, 38.555862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813381, 31.251581, 38.943134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780794, 0.572484, -0.250247,
		-0.590598, 0.806959, 0.003341,
		0.203852, 0.145186, 0.968176,
		36.874538, 31.295137, 39.233585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815426, 31.954676, 38.685486>,  <36.731842, 31.193506, 38.555862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815426, 31.954676, 38.685486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024002, 31.754328, 38.961815>,  <37.149147, 31.634119, 39.127613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024002, 31.754328, 38.961815>,  <36.815426, 31.954676, 38.685486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024002, 31.754328, 38.961815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841256, 0.437244, -0.317972,
		-0.142795, 0.746960, 0.649354,
		0.521439, -0.500868, 0.690820,
		37.180435, 31.604067, 39.169060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274761, 32.430843, 39.125271>,  <36.815426, 31.954676, 38.685486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274761, 32.430843, 39.125271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451103, 32.077644, 39.189724>,  <37.556908, 31.865725, 39.228394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.451103, 32.077644, 39.189724>,  <37.274761, 32.430843, 39.125271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451103, 32.077644, 39.189724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894346, 0.416910, -0.162270,
		0.076107, 0.215642, 0.973502,
		0.440855, -0.882997, 0.161129,
		37.583359, 31.812746, 39.238064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941761, 32.551643, 39.290131>,  <37.274761, 32.430843, 39.125271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941761, 32.551643, 39.290131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961613, 32.165581, 39.187363>,  <37.973522, 31.933943, 39.125702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961613, 32.165581, 39.187363>,  <37.941761, 32.551643, 39.290131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961613, 32.165581, 39.187363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934660, 0.135555, -0.328686,
		0.352061, -0.223818, 0.908823,
		0.049630, -0.965158, -0.256918,
		37.976501, 31.876034, 39.110287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665337, 32.307419, 39.554817>,  <37.941761, 32.551643, 39.290131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665337, 32.307419, 39.554817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535702, 32.069340, 39.260685>,  <38.457920, 31.926493, 39.084206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535702, 32.069340, 39.260685>,  <38.665337, 32.307419, 39.554817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535702, 32.069340, 39.260685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894087, 0.061299, -0.443679,
		0.309152, -0.801237, 0.512293,
		-0.324089, -0.595199, -0.735326,
		38.438477, 31.890779, 39.040089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121246, 31.720556, 39.525932>,  <38.665337, 32.307419, 39.554817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121246, 31.720556, 39.525932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947559, 31.735298, 39.165913>,  <38.843346, 31.744144, 38.949902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947559, 31.735298, 39.165913>,  <39.121246, 31.720556, 39.525932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947559, 31.735298, 39.165913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890218, 0.170308, -0.422500,
		0.137715, -0.984702, -0.106761,
		-0.434219, 0.036856, -0.900053,
		38.817295, 31.746355, 38.895897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614040, 31.514599, 39.060799>,  <39.121246, 31.720556, 39.525932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614040, 31.514599, 39.060799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356773, 31.669724, 38.796696>,  <39.202412, 31.762798, 38.638233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356773, 31.669724, 38.796696>,  <39.614040, 31.514599, 39.060799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356773, 31.669724, 38.796696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764851, 0.284147, -0.578155,
		-0.036605, -0.876848, -0.479372,
		-0.643166, 0.387812, -0.660257,
		39.163822, 31.786068, 38.598618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923122, 31.304626, 38.388477>,  <39.614040, 31.514599, 39.060799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923122, 31.304626, 38.388477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664352, 31.608223, 38.359013>,  <39.509090, 31.790380, 38.341335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.664352, 31.608223, 38.359013>,  <39.923122, 31.304626, 38.388477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664352, 31.608223, 38.359013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688046, 0.539332, -0.485503,
		-0.328765, -0.364764, -0.871126,
		-0.646921, 0.758991, -0.073661,
		39.470276, 31.835920, 38.336914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124683, 31.637205, 37.790970>,  <39.923122, 31.304626, 38.388477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124683, 31.637205, 37.790970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956783, 31.912567, 38.027580>,  <39.856045, 32.077785, 38.169548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956783, 31.912567, 38.027580>,  <40.124683, 31.637205, 37.790970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956783, 31.912567, 38.027580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700719, 0.660014, -0.270877,
		-0.576891, 0.300795, -0.759420,
		-0.419749, 0.688407, 0.591529,
		39.830860, 32.119091, 38.205040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818016, 32.228226, 37.378979>,  <40.124683, 31.637205, 37.790970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818016, 32.228226, 37.378979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907600, 32.334446, 37.754066>,  <39.961349, 32.398178, 37.979118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907600, 32.334446, 37.754066>,  <39.818016, 32.228226, 37.378979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907600, 32.334446, 37.754066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630607, 0.694119, -0.347179,
		-0.743086, 0.669088, -0.012005,
		0.223960, 0.265555, 0.937722,
		39.974789, 32.414112, 38.035381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184780, 32.078041, 36.729507>,  <39.818016, 32.228226, 37.378979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184780, 32.078041, 36.729507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150249, 32.445637, 36.575619>,  <40.129532, 32.666195, 36.483284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150249, 32.445637, 36.575619>,  <40.184780, 32.078041, 36.729507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150249, 32.445637, 36.575619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755087, 0.312266, 0.576484,
		0.649917, -0.240736, -0.720871,
		-0.086323, 0.918986, -0.384724,
		40.124352, 32.721333, 36.460201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855907, 32.284626, 36.438934>,  <40.184780, 32.078041, 36.729507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855907, 32.284626, 36.438934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607956, 32.542355, 36.618088>,  <40.459187, 32.696991, 36.725578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.607956, 32.542355, 36.618088>,  <40.855907, 32.284626, 36.438934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607956, 32.542355, 36.618088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756361, 0.338612, 0.559695,
		0.208964, 0.685706, -0.697238,
		-0.619880, 0.644320, 0.447884,
		40.421993, 32.735649, 36.752453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.233639, 33.027382, 36.472897>,  <40.855907, 32.284626, 36.438934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.233639, 33.027382, 36.472897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970524, 32.937386, 36.760422>,  <40.812656, 32.883389, 36.932938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970524, 32.937386, 36.760422>,  <41.233639, 33.027382, 36.472897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970524, 32.937386, 36.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641134, 0.333616, 0.691120,
		-0.395302, 0.915468, -0.075201,
		-0.657786, -0.224987, 0.718817,
		40.773190, 32.869888, 36.976067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.670631, 33.599911, 36.046631>,  <41.233639, 33.027382, 36.472897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.670631, 33.599911, 36.046631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338886, 33.633583, 36.267563>,  <41.139839, 33.653786, 36.400124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338886, 33.633583, 36.267563>,  <41.670631, 33.599911, 36.046631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338886, 33.633583, 36.267563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467437, -0.436955, 0.768487,
		0.306033, 0.895536, 0.323047,
		-0.829365, 0.084179, 0.552330,
		41.090076, 33.658836, 36.433262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978703, 33.023064, 35.729702>,  <41.670631, 33.599911, 36.046631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978703, 33.023064, 35.729702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325737, 33.210934, 35.664345>,  <42.533958, 33.323654, 35.625130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325737, 33.210934, 35.664345>,  <41.978703, 33.023064, 35.729702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325737, 33.210934, 35.664345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164221, 0.580744, 0.797351,
		0.469381, -0.664941, 0.580977,
		0.867590, 0.469670, -0.163393,
		42.586014, 33.351837, 35.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301533, 33.080734, 36.458164>,  <41.978703, 33.023064, 35.729702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301533, 33.080734, 36.458164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417957, 33.349998, 36.186241>,  <42.487812, 33.511559, 36.023087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417957, 33.349998, 36.186241>,  <42.301533, 33.080734, 36.458164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417957, 33.349998, 36.186241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382277, 0.733213, 0.562373,
		0.877011, 0.096191, 0.470742,
		0.291059, 0.673161, -0.679808,
		42.505276, 33.551949, 35.982300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660480, 33.591122, 36.830803>,  <42.301533, 33.080734, 36.458164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660480, 33.591122, 36.830803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526665, 33.767357, 36.497585>,  <42.446373, 33.873096, 36.297653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526665, 33.767357, 36.497585>,  <42.660480, 33.591122, 36.830803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526665, 33.767357, 36.497585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272157, 0.801143, 0.533011,
		0.902226, 0.405034, -0.148106,
		-0.334542, 0.440589, -0.833045,
		42.426304, 33.899532, 36.247673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809280, 34.428455, 36.836227>,  <42.660480, 33.591122, 36.830803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809280, 34.428455, 36.836227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517002, 34.358868, 36.572163>,  <42.341633, 34.317116, 36.413723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.517002, 34.358868, 36.572163>,  <42.809280, 34.428455, 36.836227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517002, 34.358868, 36.572163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561294, 0.703541, 0.435866,
		0.388625, 0.689032, -0.611724,
		-0.730698, -0.173968, -0.660163,
		42.297794, 34.306679, 36.374115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.661133, 35.045631, 36.630474>,  <42.809280, 34.428455, 36.836227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.661133, 35.045631, 36.630474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343575, 34.822723, 36.533165>,  <42.153042, 34.688976, 36.474781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343575, 34.822723, 36.533165>,  <42.661133, 35.045631, 36.630474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343575, 34.822723, 36.533165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607850, 0.716878, 0.341473,
		-0.015898, 0.418964, -0.907864,
		-0.793893, -0.557274, -0.243270,
		42.105408, 34.655540, 36.460182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329819, 35.474800, 36.309158>,  <42.661133, 35.045631, 36.630474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329819, 35.474800, 36.309158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051624, 35.196209, 36.379841>,  <41.884708, 35.029057, 36.422249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.051624, 35.196209, 36.379841>,  <42.329819, 35.474800, 36.309158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.051624, 35.196209, 36.379841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680726, 0.717375, 0.148275,
		-0.230035, -0.017166, -0.973031,
		-0.695482, -0.696476, 0.176707,
		41.842979, 34.987267, 36.432854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786968, 35.504101, 35.899788>,  <42.329819, 35.474800, 36.309158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786968, 35.504101, 35.899788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637207, 35.337399, 36.231121>,  <41.547348, 35.237377, 36.429920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637207, 35.337399, 36.231121>,  <41.786968, 35.504101, 35.899788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637207, 35.337399, 36.231121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691731, 0.720435, 0.049809,
		-0.617517, -0.554334, -0.558021,
		-0.374407, -0.416758, 0.828330,
		41.524883, 35.212372, 36.479622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102348, 35.599976, 35.762539>,  <41.786968, 35.504101, 35.899788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102348, 35.599976, 35.762539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125450, 35.538727, 36.157146>,  <41.139313, 35.501976, 36.393909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125450, 35.538727, 36.157146>,  <41.102348, 35.599976, 35.762539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125450, 35.538727, 36.157146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724521, 0.673409, 0.146938,
		-0.686830, -0.723239, -0.072050,
		0.057752, -0.153123, 0.986518,
		41.142776, 35.492790, 36.453102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373821, 35.623894, 35.981663>,  <41.102348, 35.599976, 35.762539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373821, 35.623894, 35.981663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576435, 35.671806, 36.323208>,  <40.698002, 35.700554, 36.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576435, 35.671806, 36.323208>,  <40.373821, 35.623894, 35.981663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576435, 35.671806, 36.323208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724263, 0.596441, 0.345978,
		-0.467835, -0.793669, 0.388870,
		0.506530, 0.119784, 0.853861,
		40.728394, 35.707741, 36.579365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871696, 35.570610, 36.510578>,  <40.373821, 35.623894, 35.981663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871696, 35.570610, 36.510578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171288, 35.752663, 36.703197>,  <40.351044, 35.861893, 36.818771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171288, 35.752663, 36.703197>,  <39.871696, 35.570610, 36.510578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171288, 35.752663, 36.703197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662367, 0.533369, 0.526106,
		-0.017400, -0.713006, 0.700943,
		0.748978, 0.455127, 0.481552,
		40.395981, 35.889202, 36.847664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584610, 35.714397, 37.181244>,  <39.871696, 35.570610, 36.510578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584610, 35.714397, 37.181244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879112, 35.979321, 37.125702>,  <40.055813, 36.138275, 37.092377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879112, 35.979321, 37.125702>,  <39.584610, 35.714397, 37.181244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879112, 35.979321, 37.125702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529740, 0.691773, 0.490740,
		0.421076, -0.287752, 0.860171,
		0.736254, 0.662306, -0.138855,
		40.099987, 36.178013, 37.084045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762623, 36.065735, 37.828278>,  <39.584610, 35.714397, 37.181244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762623, 36.065735, 37.828278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874092, 36.304043, 37.526974>,  <39.940975, 36.447029, 37.346191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874092, 36.304043, 37.526974>,  <39.762623, 36.065735, 37.828278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874092, 36.304043, 37.526974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673402, 0.680431, 0.289041,
		0.684746, 0.426706, 0.590800,
		0.278663, 0.595765, -0.753267,
		39.957695, 36.482773, 37.300999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061211, 36.719810, 38.128372>,  <39.762623, 36.065735, 37.828278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061211, 36.719810, 38.128372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989735, 36.835144, 37.752090>,  <39.946850, 36.904343, 37.526321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989735, 36.835144, 37.752090>,  <40.061211, 36.719810, 38.128372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989735, 36.835144, 37.752090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387659, 0.858126, 0.336660,
		0.904317, 0.424833, -0.041567,
		-0.178694, 0.288333, -0.940708,
		39.936127, 36.921642, 37.469879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275604, 37.389988, 38.135437>,  <40.061211, 36.719810, 38.128372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275604, 37.389988, 38.135437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059765, 37.367970, 37.799389>,  <39.930260, 37.354759, 37.597759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059765, 37.367970, 37.799389>,  <40.275604, 37.389988, 38.135437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059765, 37.367970, 37.799389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451281, 0.861313, 0.233421,
		0.710757, 0.505085, -0.489606,
		-0.539601, -0.055044, -0.840119,
		39.897884, 37.351456, 37.547352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.393028, 38.041267, 37.798504>,  <40.275604, 37.389988, 38.135437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.393028, 38.041267, 37.798504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054508, 37.895557, 37.643024>,  <39.851398, 37.808132, 37.549736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054508, 37.895557, 37.643024>,  <40.393028, 38.041267, 37.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054508, 37.895557, 37.643024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432088, 0.896167, 0.100921,
		0.311576, 0.253361, -0.915821,
		-0.846298, -0.364271, -0.388698,
		39.800617, 37.786278, 37.526417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129814, 38.557270, 37.284210>,  <40.393028, 38.041267, 37.798504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129814, 38.557270, 37.284210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809425, 38.348850, 37.402161>,  <39.617191, 38.223797, 37.472931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809425, 38.348850, 37.402161>,  <40.129814, 38.557270, 37.284210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809425, 38.348850, 37.402161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519701, 0.849631, 0.089651,
		-0.297249, -0.081439, -0.951321,
		-0.800971, -0.521051, 0.294876,
		39.569134, 38.192535, 37.490623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500732, 38.777370, 36.877975>,  <40.129814, 38.557270, 37.284210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500732, 38.777370, 36.877975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329906, 38.569530, 37.173981>,  <39.227409, 38.444824, 37.351585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.329906, 38.569530, 37.173981>,  <39.500732, 38.777370, 36.877975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329906, 38.569530, 37.173981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751546, 0.659042, 0.029024,
		-0.502783, -0.543763, -0.671961,
		-0.427068, -0.519602, 0.740018,
		39.201786, 38.413651, 37.395985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752090, 38.843502, 36.647194>,  <39.500732, 38.777370, 36.877975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752090, 38.843502, 36.647194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736160, 38.719940, 37.027298>,  <38.726601, 38.645802, 37.255360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736160, 38.719940, 37.027298>,  <38.752090, 38.843502, 36.647194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736160, 38.719940, 37.027298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820551, 0.552794, 0.145311,
		-0.570184, -0.773948, -0.275490,
		-0.039826, -0.308908, 0.950258,
		38.724213, 38.627270, 37.312374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119095, 38.648457, 36.764584>,  <38.752090, 38.843502, 36.647194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119095, 38.648457, 36.764584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260170, 38.724907, 37.130989>,  <38.344814, 38.770779, 37.350834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260170, 38.724907, 37.130989>,  <38.119095, 38.648457, 36.764584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260170, 38.724907, 37.130989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804937, 0.561153, 0.192833,
		-0.477169, -0.805344, 0.351754,
		0.352684, 0.191126, 0.916016,
		38.365974, 38.782246, 37.405792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579742, 38.391399, 37.233059>,  <38.119095, 38.648457, 36.764584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579742, 38.391399, 37.233059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793804, 38.670952, 37.422867>,  <37.922241, 38.838684, 37.536751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793804, 38.670952, 37.422867>,  <37.579742, 38.391399, 37.233059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793804, 38.670952, 37.422867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844684, 0.435600, 0.311065,
		0.010697, -0.567288, 0.823450,
		0.535158, 0.698883, 0.474520,
		37.954353, 38.880615, 37.565224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222797, 38.540882, 37.883873>,  <37.579742, 38.391399, 37.233059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222797, 38.540882, 37.883873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445702, 38.866264, 37.817245>,  <37.579445, 39.061493, 37.777267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445702, 38.866264, 37.817245>,  <37.222797, 38.540882, 37.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445702, 38.866264, 37.817245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813753, 0.574925, 0.085249,
		0.165112, 0.088041, 0.982338,
		0.557265, 0.813456, -0.166570,
		37.612881, 39.110302, 37.767273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000481, 39.128235, 38.292606>,  <37.222797, 38.540882, 37.883873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000481, 39.128235, 38.292606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200134, 39.311684, 37.998524>,  <37.319927, 39.421753, 37.822075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.200134, 39.311684, 37.998524>,  <37.000481, 39.128235, 38.292606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200134, 39.311684, 37.998524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675378, 0.737470, 0.001520,
		0.542891, 0.495785, 0.677840,
		0.499133, 0.458624, -0.735208,
		37.349873, 39.449272, 37.777962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332100, 39.878769, 38.455059>,  <37.000481, 39.128235, 38.292606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332100, 39.878769, 38.455059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176476, 39.791023, 38.097176>,  <37.083099, 39.738377, 37.882446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176476, 39.791023, 38.097176>,  <37.332100, 39.878769, 38.455059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176476, 39.791023, 38.097176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785863, 0.585814, 0.198097,
		0.480679, 0.780193, -0.400309,
		-0.389060, -0.219367, -0.894713,
		37.059757, 39.725212, 37.828762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035976, 40.476170, 38.336670>,  <37.332100, 39.878769, 38.455059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035976, 40.476170, 38.336670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862541, 40.175564, 38.137783>,  <36.758480, 39.995201, 38.018452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862541, 40.175564, 38.137783>,  <37.035976, 40.476170, 38.336670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862541, 40.175564, 38.137783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900145, 0.386746, 0.200414,
		0.041681, 0.534463, -0.844163,
		-0.433590, -0.751516, -0.497215,
		36.732464, 39.950108, 37.988617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566879, 41.164246, 38.453968>,  <37.035976, 40.476170, 38.336670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566879, 41.164246, 38.453968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867485, 41.423306, 38.504215>,  <38.047848, 41.578739, 38.534363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867485, 41.423306, 38.504215>,  <37.566879, 41.164246, 38.453968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867485, 41.423306, 38.504215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627372, -0.760485, 0.167532,
		0.204033, -0.047093, -0.977831,
		0.751515, 0.647646, 0.125619,
		38.092941, 41.617599, 38.541901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198360, 40.897099, 38.202576>,  <37.566879, 41.164246, 38.453968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198360, 40.897099, 38.202576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320000, 41.142181, 38.494362>,  <38.392982, 41.289230, 38.669434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320000, 41.142181, 38.494362>,  <38.198360, 40.897099, 38.202576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320000, 41.142181, 38.494362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740886, -0.633458, 0.223202,
		0.598840, 0.472571, -0.646581,
		0.304103, 0.612705, 0.729461,
		38.411232, 41.325993, 38.713200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871086, 41.240959, 38.204685>,  <38.198360, 40.897099, 38.202576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871086, 41.240959, 38.204685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764481, 41.147381, 38.578690>,  <38.700516, 41.091232, 38.803093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764481, 41.147381, 38.578690>,  <38.871086, 41.240959, 38.204685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764481, 41.147381, 38.578690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794749, -0.602178, 0.075863,
		0.545293, 0.763315, 0.346418,
		-0.266513, -0.233948, 0.935008,
		38.684528, 41.077198, 38.859192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435539, 41.408836, 38.704666>,  <38.871086, 41.240959, 38.204685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435539, 41.408836, 38.704666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194572, 41.099480, 38.783607>,  <39.049992, 40.913864, 38.830975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194572, 41.099480, 38.783607>,  <39.435539, 41.408836, 38.704666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194572, 41.099480, 38.783607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780202, -0.622750, -0.058884,
		0.168445, 0.118505, 0.978562,
		-0.602421, -0.773395, 0.197357,
		39.013847, 40.867462, 38.842815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608047, 41.043911, 39.291710>,  <39.435539, 41.408836, 38.704666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608047, 41.043911, 39.291710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458969, 40.762897, 39.049206>,  <39.369522, 40.594288, 38.903706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458969, 40.762897, 39.049206>,  <39.608047, 41.043911, 39.291710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458969, 40.762897, 39.049206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838034, -0.535375, 0.105222,
		-0.398496, -0.468849, 0.788278,
		-0.372691, -0.702534, -0.606256,
		39.347160, 40.552135, 38.867329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031906, 40.557377, 39.494492>,  <39.608047, 41.043911, 39.291710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031906, 40.557377, 39.494492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835701, 40.408123, 39.179489>,  <39.717979, 40.318569, 38.990486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835701, 40.408123, 39.179489>,  <40.031906, 40.557377, 39.494492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835701, 40.408123, 39.179489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689952, -0.718313, -0.089397,
		-0.532322, -0.587193, 0.609785,
		-0.490510, -0.373135, -0.787509,
		39.688549, 40.296181, 38.943237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402035, 40.558983, 40.223396>,  <40.031906, 40.557377, 39.494492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402035, 40.558983, 40.223396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294846, 40.186016, 40.320389>,  <40.230534, 39.962238, 40.378582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294846, 40.186016, 40.320389>,  <40.402035, 40.558983, 40.223396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294846, 40.186016, 40.320389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841831, -0.349008, -0.411722,
		0.468522, 0.093796, 0.878459,
		-0.267971, -0.932414, 0.242478,
		40.214455, 39.906292, 40.393131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028332, 40.278049, 40.263901>,  <40.402035, 40.558983, 40.223396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028332, 40.278049, 40.263901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773533, 39.973793, 40.213844>,  <40.620655, 39.791241, 40.183811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773533, 39.973793, 40.213844>,  <41.028332, 40.278049, 40.263901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773533, 39.973793, 40.213844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696046, -0.497768, -0.517443,
		0.331295, -0.416717, 0.846517,
		-0.636997, -0.760641, -0.125146,
		40.582436, 39.745602, 40.176300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238762, 39.570229, 40.533875>,  <41.028332, 40.278049, 40.263901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238762, 39.570229, 40.533875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004539, 39.560345, 40.209774>,  <40.864006, 39.554413, 40.015312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.004539, 39.560345, 40.209774>,  <41.238762, 39.570229, 40.533875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004539, 39.560345, 40.209774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615032, -0.664671, -0.424203,
		-0.528072, -0.746728, 0.404399,
		-0.585556, -0.024709, -0.810255,
		40.828873, 39.552933, 39.966698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238968, 38.895393, 40.429924>,  <41.238762, 39.570229, 40.533875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238968, 38.895393, 40.429924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105953, 39.042423, 40.082520>,  <41.026142, 39.130642, 39.874077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.105953, 39.042423, 40.082520>,  <41.238968, 38.895393, 40.429924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105953, 39.042423, 40.082520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580890, -0.645660, -0.495670,
		-0.742956, -0.669339, 0.001190,
		-0.332540, 0.367571, -0.868510,
		41.006191, 39.152695, 39.821968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286903, 38.333065, 39.997845>,  <41.238968, 38.895393, 40.429924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286903, 38.333065, 39.997845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252098, 38.640423, 39.744228>,  <41.231213, 38.824837, 39.592060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252098, 38.640423, 39.744228>,  <41.286903, 38.333065, 39.997845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252098, 38.640423, 39.744228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599959, -0.467666, -0.649105,
		-0.795284, -0.436880, -0.420309,
		-0.087017, 0.768391, -0.634038,
		41.225994, 38.870941, 39.554016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027119, 38.072834, 39.278530>,  <41.286903, 38.333065, 39.997845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027119, 38.072834, 39.278530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204811, 38.427055, 39.224197>,  <41.311424, 38.639587, 39.191597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204811, 38.427055, 39.224197>,  <41.027119, 38.072834, 39.278530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204811, 38.427055, 39.224197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575530, -0.398262, -0.714249,
		-0.686606, 0.239113, -0.686584,
		0.444227, 0.885557, -0.135833,
		41.338078, 38.692722, 39.183449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151234, 38.012543, 38.586311>,  <41.027119, 38.072834, 39.278530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151234, 38.012543, 38.586311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393387, 38.309811, 38.700306>,  <41.538677, 38.488171, 38.768703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393387, 38.309811, 38.700306>,  <41.151234, 38.012543, 38.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393387, 38.309811, 38.700306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651061, -0.256386, -0.714413,
		-0.457860, 0.618037, -0.639058,
		0.605379, 0.743166, 0.284991,
		41.575001, 38.532761, 38.785805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368282, 38.345642, 38.031239>,  <41.151234, 38.012543, 38.586311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368282, 38.345642, 38.031239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660797, 38.415852, 38.294876>,  <41.836308, 38.457977, 38.453060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.660797, 38.415852, 38.294876>,  <41.368282, 38.345642, 38.031239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660797, 38.415852, 38.294876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674559, -0.329114, -0.660798,
		0.100929, 0.927833, -0.359081,
		0.731289, 0.175528, 0.659095,
		41.880184, 38.468510, 38.492603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873085, 38.510040, 37.548237>,  <41.368282, 38.345642, 38.031239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873085, 38.510040, 37.548237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068745, 38.464306, 37.894108>,  <42.186142, 38.436867, 38.101631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068745, 38.464306, 37.894108>,  <41.873085, 38.510040, 37.548237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068745, 38.464306, 37.894108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767702, -0.414089, -0.489045,
		0.413965, 0.903028, -0.114779,
		0.489149, -0.114332, 0.864674,
		42.215488, 38.430008, 38.153511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591862, 38.796467, 37.461044>,  <41.873085, 38.510040, 37.548237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591862, 38.796467, 37.461044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604748, 38.525051, 37.754585>,  <42.612480, 38.362202, 37.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604748, 38.525051, 37.754585>,  <42.591862, 38.796467, 37.461044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604748, 38.525051, 37.754585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644248, -0.547251, -0.534286,
		0.764138, 0.490000, 0.419516,
		0.032220, -0.678540, 0.733856,
		42.614414, 38.321487, 37.974743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.228561, 38.662098, 37.446678>,  <42.591862, 38.796467, 37.461044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.228561, 38.662098, 37.446678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088764, 38.354187, 37.660332>,  <43.004887, 38.169441, 37.788525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088764, 38.354187, 37.660332>,  <43.228561, 38.662098, 37.446678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088764, 38.354187, 37.660332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639395, -0.612655, -0.464573,
		0.684855, 0.179153, 0.706313,
		-0.349497, -0.769778, 0.534129,
		42.983913, 38.123253, 37.820572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824097, 38.358959, 37.731739>,  <43.228561, 38.662098, 37.446678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824097, 38.358959, 37.731739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545425, 38.072151, 37.722614>,  <43.378223, 37.900066, 37.717140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.545425, 38.072151, 37.722614>,  <43.824097, 38.358959, 37.731739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.545425, 38.072151, 37.722614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678795, -0.648580, -0.344357,
		0.232119, -0.255387, 0.938562,
		-0.696676, -0.717023, -0.022808,
		43.336422, 37.857044, 37.715771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087975, 37.723858, 37.876022>,  <43.824097, 38.358959, 37.731739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087975, 37.723858, 37.876022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750332, 37.593307, 37.705864>,  <43.547745, 37.514977, 37.603771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.750332, 37.593307, 37.705864>,  <44.087975, 37.723858, 37.876022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750332, 37.593307, 37.705864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503629, -0.754838, -0.420212,
		-0.183954, -0.568944, 0.801538,
		-0.844108, -0.326378, -0.425392,
		43.497101, 37.495396, 37.578247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992268, 36.978004, 38.089241>,  <44.087975, 37.723858, 37.876022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992268, 36.978004, 38.089241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801563, 37.032497, 37.741875>,  <43.687141, 37.065193, 37.533455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.801563, 37.032497, 37.741875>,  <43.992268, 36.978004, 38.089241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.801563, 37.032497, 37.741875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473019, -0.792929, -0.384079,
		-0.740912, -0.593890, 0.313599,
		-0.476763, 0.136230, -0.868412,
		43.658535, 37.073368, 37.481350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898361, 36.321140, 37.738899>,  <43.992268, 36.978004, 38.089241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898361, 36.321140, 37.738899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860470, 36.585823, 37.441399>,  <43.837734, 36.744633, 37.262897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860470, 36.585823, 37.441399>,  <43.898361, 36.321140, 37.738899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860470, 36.585823, 37.441399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270932, -0.701773, -0.658871,
		-0.957926, -0.263917, -0.112804,
		-0.094725, 0.661712, -0.743751,
		43.832054, 36.784336, 37.218273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562244, 35.932693, 37.249771>,  <43.898361, 36.321140, 37.738899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562244, 35.932693, 37.249771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724037, 36.245773, 37.060551>,  <43.821114, 36.433620, 36.947018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.724037, 36.245773, 37.060551>,  <43.562244, 35.932693, 37.249771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.724037, 36.245773, 37.060551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324494, -0.606420, -0.725919,
		-0.855044, 0.140118, -0.499267,
		0.404479, 0.782702, -0.473048,
		43.845383, 36.480583, 36.918636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368034, 35.746178, 36.535603>,  <43.562244, 35.932693, 37.249771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368034, 35.746178, 36.535603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641151, 36.037884, 36.517868>,  <43.805023, 36.212906, 36.507229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641151, 36.037884, 36.517868>,  <43.368034, 35.746178, 36.535603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641151, 36.037884, 36.517868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310664, -0.344721, -0.885808,
		-0.661272, 0.591050, -0.461929,
		0.682794, 0.729265, -0.044337,
		43.845989, 36.256664, 36.504566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349232, 36.082581, 35.820408>,  <43.368034, 35.746178, 36.535603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349232, 36.082581, 35.820408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717045, 36.120472, 35.972977>,  <43.937733, 36.143208, 36.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.717045, 36.120472, 35.972977>,  <43.349232, 36.082581, 35.820408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.717045, 36.120472, 35.972977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391197, -0.313668, -0.865204,
		0.037684, 0.944796, -0.325484,
		0.919535, 0.094724, 0.381422,
		43.992905, 36.148888, 36.087402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705132, 36.389374, 35.325317>,  <43.349232, 36.082581, 35.820408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705132, 36.389374, 35.325317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003220, 36.248169, 35.551601>,  <44.182072, 36.163445, 35.687370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003220, 36.248169, 35.551601>,  <43.705132, 36.389374, 35.325317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003220, 36.248169, 35.551601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429380, -0.395042, -0.812142,
		0.510174, 0.848130, -0.142818,
		0.745222, -0.353011, 0.565710,
		44.226788, 36.142265, 35.721313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322342, 36.556522, 35.065193>,  <43.705132, 36.389374, 35.325317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322342, 36.556522, 35.065193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454708, 36.244602, 35.277763>,  <44.534126, 36.057449, 35.405304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.454708, 36.244602, 35.277763>,  <44.322342, 36.556522, 35.065193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454708, 36.244602, 35.277763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375389, -0.407893, -0.832290,
		0.865783, 0.474904, 0.157752,
		0.330912, -0.779801, 0.531421,
		44.553982, 36.010662, 35.437191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.994495, 36.384186, 34.794540>,  <44.322342, 36.556522, 35.065193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.994495, 36.384186, 34.794540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877117, 36.048073, 34.976891>,  <44.806690, 35.846405, 35.086300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877117, 36.048073, 34.976891>,  <44.994495, 36.384186, 34.794540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877117, 36.048073, 34.976891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317096, -0.535424, -0.782797,
		0.901852, -0.085157, 0.423569,
		-0.293450, -0.840279, 0.455871,
		44.789082, 35.795990, 35.113651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582199, 35.828007, 34.938175>,  <44.994495, 36.384186, 34.794540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582199, 35.828007, 34.938175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242180, 35.642780, 34.837788>,  <45.038170, 35.531643, 34.777557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.242180, 35.642780, 34.837788>,  <45.582199, 35.828007, 34.938175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242180, 35.642780, 34.837788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466997, -0.442277, -0.765705,
		0.243580, -0.768086, 0.592209,
		-0.850048, -0.463071, -0.250964,
		44.987164, 35.503860, 34.762497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715286, 35.073921, 34.974007>,  <45.582199, 35.828007, 34.938175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715286, 35.073921, 34.974007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411953, 35.153706, 34.725769>,  <45.229954, 35.201576, 34.576824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411953, 35.153706, 34.725769>,  <45.715286, 35.073921, 34.974007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411953, 35.153706, 34.725769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378687, -0.640118, -0.668465,
		-0.530585, -0.741934, 0.409894,
		-0.758338, 0.199456, -0.620598,
		45.184452, 35.213543, 34.539589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.194027, 34.600796, 34.773518>,  <45.715286, 35.073921, 34.974007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.194027, 34.600796, 34.773518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531929, 34.640953, 34.563255>,  <46.734669, 34.665047, 34.437096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.531929, 34.640953, 34.563255>,  <46.194027, 34.600796, 34.773518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.531929, 34.640953, 34.563255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427427, 0.717626, -0.549835,
		0.322026, 0.689155, 0.649126,
		0.844751, 0.100393, -0.525658,
		46.785355, 34.671070, 34.405560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.672150, 35.235107, 34.888645>,  <46.194027, 34.600796, 34.773518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.672150, 35.235107, 34.888645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696655, 35.127747, 34.504101>,  <46.711361, 35.063332, 34.273376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696655, 35.127747, 34.504101>,  <46.672150, 35.235107, 34.888645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696655, 35.127747, 34.504101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555574, 0.790997, -0.256245,
		0.829207, 0.549804, -0.100656,
		0.061266, -0.268402, -0.961357,
		46.715034, 35.047226, 34.215694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.836819, 35.763477, 34.379097>,  <46.672150, 35.235107, 34.888645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.836819, 35.763477, 34.379097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631561, 35.521099, 34.135948>,  <46.508408, 35.375671, 33.990059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631561, 35.521099, 34.135948>,  <46.836819, 35.763477, 34.379097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.631561, 35.521099, 34.135948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631037, 0.746409, -0.211341,
		0.581786, 0.275144, -0.765389,
		-0.513144, -0.605944, -0.607877,
		46.477619, 35.339317, 33.953587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379543, 35.415405, 34.767433>,  <46.836819, 35.763477, 34.379097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379543, 35.415405, 34.767433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599979, 35.086220, 34.822609>,  <47.732239, 34.888706, 34.855713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599979, 35.086220, 34.822609>,  <47.379543, 35.415405, 34.767433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599979, 35.086220, 34.822609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803032, 0.567975, 0.180401,
		-0.226809, 0.011351, 0.973873,
		0.551087, -0.822968, 0.137938,
		47.765305, 34.839329, 34.863991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.039417, 34.796940, 44.043697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668095, 34.678703, 43.953480>,  <31.445301, 34.607761, 43.899349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668095, 34.678703, 43.953480>,  <32.039417, 34.796940, 44.043697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668095, 34.678703, 43.953480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216880, 0.062250, -0.974211,
		0.302009, -0.953284, 0.006321,
		-0.928307, -0.295591, -0.225549,
		31.389603, 34.590027, 43.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116398, 34.253746, 43.481258>,  <32.039417, 34.796940, 44.043697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116398, 34.253746, 43.481258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736059, 34.372391, 43.445698>,  <31.507854, 34.443577, 43.424362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.736059, 34.372391, 43.445698>,  <32.116398, 34.253746, 43.481258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736059, 34.372391, 43.445698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035981, -0.179323, -0.983132,
		-0.307551, -0.938011, 0.159837,
		-0.950851, 0.296613, -0.088902,
		31.450804, 34.461372, 43.419025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952374, 33.751019, 43.119820>,  <32.116398, 34.253746, 43.481258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952374, 33.751019, 43.119820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713190, 34.070610, 43.094280>,  <31.569679, 34.262363, 43.078957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.713190, 34.070610, 43.094280>,  <31.952374, 33.751019, 43.119820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713190, 34.070610, 43.094280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035222, -0.053388, -0.997952,
		-0.800753, -0.598983, 0.003782,
		-0.597959, 0.798980, -0.063848,
		31.533802, 34.310303, 43.075127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600847, 33.562759, 42.434151>,  <31.952374, 33.751019, 43.119820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600847, 33.562759, 42.434151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523970, 33.950962, 42.492352>,  <31.477842, 34.183884, 42.527271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.523970, 33.950962, 42.492352>,  <31.600847, 33.562759, 42.434151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523970, 33.950962, 42.492352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197516, 0.183490, -0.962974,
		-0.961275, -0.156338, -0.226956,
		-0.192193, 0.970510, 0.145505,
		31.466312, 34.242115, 42.536003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966671, 33.749741, 41.881504>,  <31.600847, 33.562759, 42.434151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966671, 33.749741, 41.881504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185703, 34.065132, 41.993542>,  <31.317123, 34.254368, 42.060764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185703, 34.065132, 41.993542>,  <30.966671, 33.749741, 41.881504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185703, 34.065132, 41.993542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263138, 0.155492, -0.952145,
		-0.794300, 0.595081, -0.122334,
		0.547582, 0.788480, 0.280096,
		31.349977, 34.301678, 42.077572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823328, 34.210598, 41.349819>,  <30.966671, 33.749741, 41.881504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823328, 34.210598, 41.349819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157284, 34.365845, 41.505936>,  <31.357656, 34.458992, 41.599606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.157284, 34.365845, 41.505936>,  <30.823328, 34.210598, 41.349819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157284, 34.365845, 41.505936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347604, 0.178004, -0.920590,
		-0.426767, 0.904258, 0.013704,
		0.834890, 0.388114, 0.390290,
		31.407751, 34.482281, 41.623024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.892464, 34.821419, 40.927078>,  <30.823328, 34.210598, 41.349819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.892464, 34.821419, 40.927078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240913, 34.705898, 41.085941>,  <31.449984, 34.636585, 41.181259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.240913, 34.705898, 41.085941>,  <30.892464, 34.821419, 40.927078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240913, 34.705898, 41.085941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465196, 0.226303, -0.855792,
		0.157272, 0.930260, 0.331485,
		0.871125, -0.288798, 0.397162,
		31.502251, 34.619259, 41.205090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.422373, 35.263626, 40.658978>,  <30.892464, 34.821419, 40.927078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.422373, 35.263626, 40.658978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613083, 34.934891, 40.783726>,  <31.727509, 34.737648, 40.858574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.613083, 34.934891, 40.783726>,  <31.422373, 35.263626, 40.658978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613083, 34.934891, 40.783726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615157, 0.058520, -0.786229,
		0.627905, 0.566703, 0.533463,
		0.476777, -0.821841, 0.311867,
		31.756117, 34.688339, 40.877285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096294, 35.435101, 40.626289>,  <31.422373, 35.263626, 40.658978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096294, 35.435101, 40.626289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.064411, 35.036999, 40.603951>,  <32.045280, 34.798138, 40.590546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.064411, 35.036999, 40.603951>,  <32.096294, 35.435101, 40.626289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064411, 35.036999, 40.603951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734135, -0.020713, -0.678688,
		0.674309, -0.095100, 0.732300,
		-0.079711, -0.995252, -0.055849,
		32.040497, 34.738422, 40.587196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710316, 35.243317, 40.315418>,  <32.096294, 35.435101, 40.626289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710316, 35.243317, 40.315418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.535137, 34.885509, 40.279549>,  <32.430031, 34.670826, 40.258026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.535137, 34.885509, 40.279549>,  <32.710316, 35.243317, 40.315418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535137, 34.885509, 40.279549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624481, -0.230944, -0.746116,
		0.646702, -0.382763, 0.659750,
		-0.437951, -0.894515, -0.089676,
		32.403751, 34.617153, 40.252647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332954, 34.757633, 40.239487>,  <32.710316, 35.243317, 40.315418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332954, 34.757633, 40.239487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.012173, 34.564785, 40.098389>,  <32.819702, 34.449078, 40.013729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.012173, 34.564785, 40.098389>,  <33.332954, 34.757633, 40.239487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.012173, 34.564785, 40.098389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570223, -0.441761, -0.692598,
		0.178085, -0.756577, 0.629188,
		-0.801955, -0.482118, -0.352747,
		32.771587, 34.420151, 39.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557930, 34.016418, 40.208286>,  <33.332954, 34.757633, 40.239487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557930, 34.016418, 40.208286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.247284, 34.060760, 39.960228>,  <33.060898, 34.087364, 39.811394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.247284, 34.060760, 39.960228>,  <33.557930, 34.016418, 40.208286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247284, 34.060760, 39.960228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525625, -0.428610, -0.734855,
		-0.347263, -0.896663, 0.274596,
		-0.776612, 0.110854, -0.620150,
		33.014301, 34.094017, 39.774181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547394, 33.456287, 39.847546>,  <33.557930, 34.016418, 40.208286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547394, 33.456287, 39.847546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.339275, 33.694508, 39.602722>,  <33.214405, 33.837440, 39.455830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.339275, 33.694508, 39.602722>,  <33.547394, 33.456287, 39.847546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339275, 33.694508, 39.602722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560688, -0.302376, -0.770842,
		-0.644147, -0.744237, -0.176594,
		-0.520292, 0.595550, -0.612059,
		33.183189, 33.873173, 39.419106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418285, 33.062744, 39.329788>,  <33.547394, 33.456287, 39.847546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418285, 33.062744, 39.329788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327400, 33.406094, 39.145802>,  <33.272869, 33.612103, 39.035408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.327400, 33.406094, 39.145802>,  <33.418285, 33.062744, 39.329788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327400, 33.406094, 39.145802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449830, -0.326403, -0.831333,
		-0.863728, -0.395798, -0.311958,
		-0.227216, 0.858373, -0.459965,
		33.259235, 33.663605, 39.007812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108822, 32.919838, 38.671188>,  <33.418285, 33.062744, 39.329788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108822, 32.919838, 38.671188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278816, 33.281326, 38.650539>,  <33.380814, 33.498219, 38.638149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.278816, 33.281326, 38.650539>,  <33.108822, 32.919838, 38.671188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278816, 33.281326, 38.650539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343945, -0.213972, -0.914285,
		-0.837309, 0.370806, -0.401768,
		0.424989, 0.903725, -0.051624,
		33.406311, 33.552444, 38.635052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019474, 33.020958, 38.005669>,  <33.108822, 32.919838, 38.671188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019474, 33.020958, 38.005669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.284489, 33.284695, 38.147827>,  <33.443497, 33.442936, 38.233124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.284489, 33.284695, 38.147827>,  <33.019474, 33.020958, 38.005669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284489, 33.284695, 38.147827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475015, -0.002994, -0.879973,
		-0.579137, 0.751839, -0.315180,
		0.662541, 0.659340, 0.355400,
		33.483250, 33.482498, 38.254448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129063, 33.525425, 37.547112>,  <33.019474, 33.020958, 38.005669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129063, 33.525425, 37.547112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.460804, 33.539295, 37.770168>,  <33.659851, 33.547619, 37.904003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.460804, 33.539295, 37.770168>,  <33.129063, 33.525425, 37.547112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460804, 33.539295, 37.770168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557376, 0.017819, -0.830069,
		-0.038720, 0.999240, -0.004549,
		0.829357, 0.034676, 0.557642,
		33.709610, 33.549698, 37.937462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598717, 34.017891, 37.214973>,  <33.129063, 33.525425, 37.547112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598717, 34.017891, 37.214973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.876118, 33.866348, 37.460091>,  <34.042561, 33.775425, 37.607162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.876118, 33.866348, 37.460091>,  <33.598717, 34.017891, 37.214973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876118, 33.866348, 37.460091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612954, -0.136708, -0.778202,
		0.378597, 0.915304, 0.137411,
		0.693506, -0.378852, 0.612797,
		34.084171, 33.752693, 37.643929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177277, 34.459423, 37.193798>,  <33.598717, 34.017891, 37.214973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177277, 34.459423, 37.193798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292274, 34.090199, 37.296013>,  <34.361275, 33.868664, 37.357342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292274, 34.090199, 37.296013>,  <34.177277, 34.459423, 37.193798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292274, 34.090199, 37.296013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670907, 0.003676, -0.741532,
		0.683542, 0.384629, 0.620347,
		0.287495, -0.923064, 0.255538,
		34.378525, 33.813278, 37.372673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844353, 34.526184, 37.073116>,  <34.177277, 34.459423, 37.193798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844353, 34.526184, 37.073116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805820, 34.138550, 37.163979>,  <34.782700, 33.905972, 37.218494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.805820, 34.138550, 37.163979>,  <34.844353, 34.526184, 37.073116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805820, 34.138550, 37.163979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681148, -0.230593, -0.694884,
		0.725780, 0.087786, 0.682302,
		-0.096333, -0.969082, 0.227155,
		34.776920, 33.847824, 37.232124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519157, 34.243534, 37.184486>,  <34.844353, 34.526184, 37.073116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519157, 34.243534, 37.184486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274132, 33.942829, 37.086823>,  <35.127117, 33.762405, 37.028225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.274132, 33.942829, 37.086823>,  <35.519157, 34.243534, 37.184486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274132, 33.942829, 37.086823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726350, -0.413560, -0.548984,
		0.311731, -0.513635, 0.799376,
		-0.612568, -0.751762, -0.244159,
		35.090363, 33.717300, 37.013577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792263, 33.633640, 37.425835>,  <35.519157, 34.243534, 37.184486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792263, 33.633640, 37.425835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554790, 33.572773, 37.109764>,  <35.412308, 33.536251, 36.920120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554790, 33.572773, 37.109764>,  <35.792263, 33.633640, 37.425835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554790, 33.572773, 37.109764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798045, -0.237349, -0.553886,
		-0.103264, -0.959432, 0.262348,
		-0.593683, -0.152169, -0.790180,
		35.376686, 33.527122, 36.872711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521847, 33.905037, 37.478470>,  <35.792263, 33.633640, 37.425835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521847, 33.905037, 37.478470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896320, 33.999512, 37.582600>,  <37.121006, 34.056198, 37.645077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896320, 33.999512, 37.582600>,  <36.521847, 33.905037, 37.478470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896320, 33.999512, 37.582600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298394, 0.142563, 0.943736,
		0.185787, -0.961192, 0.203943,
		0.936186, 0.236189, 0.260327,
		37.177177, 34.070366, 37.660698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648914, 33.689144, 38.282272>,  <36.521847, 33.905037, 37.478470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648914, 33.689144, 38.282272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960983, 33.929844, 38.213886>,  <37.148224, 34.074265, 38.172855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960983, 33.929844, 38.213886>,  <36.648914, 33.689144, 38.282272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960983, 33.929844, 38.213886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003098, 0.269582, 0.962973,
		0.625557, -0.751814, 0.208456,
		0.780173, 0.601748, -0.170968,
		37.195034, 34.110367, 38.162598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100109, 33.603123, 38.806595>,  <36.648914, 33.689144, 38.282272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100109, 33.603123, 38.806595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145962, 33.967468, 38.648006>,  <37.173473, 34.186077, 38.552853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145962, 33.967468, 38.648006>,  <37.100109, 33.603123, 38.806595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145962, 33.967468, 38.648006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136925, 0.409777, 0.901850,
		0.983927, -0.049091, 0.171693,
		0.114629, 0.910864, -0.396469,
		37.180351, 34.240726, 38.529064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352886, 34.016552, 39.288921>,  <37.100109, 33.603123, 38.806595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352886, 34.016552, 39.288921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268780, 34.322689, 39.045597>,  <37.218315, 34.506371, 38.899601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.268780, 34.322689, 39.045597>,  <37.352886, 34.016552, 39.288921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268780, 34.322689, 39.045597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302425, 0.540781, 0.784917,
		0.929691, 0.349012, 0.117748,
		-0.210270, 0.765341, -0.608310,
		37.205700, 34.552292, 38.863106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628944, 34.619370, 39.558300>,  <37.352886, 34.016552, 39.288921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628944, 34.619370, 39.558300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330471, 34.743587, 39.322750>,  <37.151386, 34.818119, 39.181419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.330471, 34.743587, 39.322750>,  <37.628944, 34.619370, 39.558300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330471, 34.743587, 39.322750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252182, 0.686778, 0.681719,
		0.616134, 0.657189, -0.434145,
		-0.746179, 0.310547, -0.588879,
		37.106617, 34.836750, 39.146088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587303, 35.308243, 39.645222>,  <37.628944, 34.619370, 39.558300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587303, 35.308243, 39.645222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221104, 35.221809, 39.509476>,  <37.001385, 35.169949, 39.428028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221104, 35.221809, 39.509476>,  <37.587303, 35.308243, 39.645222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221104, 35.221809, 39.509476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402291, 0.481651, 0.778572,
		-0.004782, 0.849305, -0.527880,
		-0.915499, -0.216085, -0.339365,
		36.946453, 35.156982, 39.407665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110458, 35.917892, 39.780418>,  <37.587303, 35.308243, 39.645222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110458, 35.917892, 39.780418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852085, 35.617504, 39.725544>,  <36.697063, 35.437271, 39.692619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852085, 35.617504, 39.725544>,  <37.110458, 35.917892, 39.780418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852085, 35.617504, 39.725544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631179, 0.424277, 0.649309,
		-0.429406, 0.505998, -0.748049,
		-0.645929, -0.750970, -0.137188,
		36.658306, 35.392212, 39.684387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419567, 36.315498, 39.663040>,  <37.110458, 35.917892, 39.780418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419567, 36.315498, 39.663040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358372, 35.933582, 39.764996>,  <36.321655, 35.704433, 39.826168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.358372, 35.933582, 39.764996>,  <36.419567, 36.315498, 39.663040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358372, 35.933582, 39.764996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584149, 0.295416, 0.755975,
		-0.797097, -0.033236, -0.602936,
		-0.152991, -0.954791, 0.254890,
		36.312473, 35.647144, 39.841461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808231, 36.359043, 39.849846>,  <36.419567, 36.315498, 39.663040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808231, 36.359043, 39.849846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911831, 36.005329, 40.005257>,  <35.973991, 35.793098, 40.098503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911831, 36.005329, 40.005257>,  <35.808231, 36.359043, 39.849846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911831, 36.005329, 40.005257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474883, 0.233696, 0.848453,
		-0.841074, -0.404256, -0.359405,
		0.259000, -0.884287, 0.388530,
		35.989532, 35.740044, 40.121815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180672, 36.122887, 40.128292>,  <35.808231, 36.359043, 39.849846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180672, 36.122887, 40.128292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449348, 35.894520, 40.317135>,  <35.610554, 35.757500, 40.430439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449348, 35.894520, 40.317135>,  <35.180672, 36.122887, 40.128292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449348, 35.894520, 40.317135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469683, 0.164637, 0.867348,
		-0.572909, -0.804331, -0.157564,
		0.671694, -0.570917, 0.472102,
		35.650856, 35.723244, 40.458767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810410, 35.554996, 40.472908>,  <35.180672, 36.122887, 40.128292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810410, 35.554996, 40.472908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166744, 35.584728, 40.652191>,  <35.380547, 35.602566, 40.759762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.166744, 35.584728, 40.652191>,  <34.810410, 35.554996, 40.472908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166744, 35.584728, 40.652191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445579, -0.049720, 0.893861,
		0.088726, -0.995993, -0.011172,
		0.890835, 0.074331, 0.448205,
		35.433994, 35.607025, 40.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.968369, 34.945156, 40.869350>,  <34.810410, 35.554996, 40.472908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.968369, 34.945156, 40.869350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176014, 35.238880, 41.044308>,  <35.300602, 35.415115, 41.149281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.176014, 35.238880, 41.044308>,  <34.968369, 34.945156, 40.869350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176014, 35.238880, 41.044308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288883, -0.330888, 0.898365,
		0.804408, -0.592705, 0.040363,
		0.519109, 0.734312, 0.437392,
		35.331745, 35.459175, 41.175526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217983, 34.654434, 41.513687>,  <34.968369, 34.945156, 40.869350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217983, 34.654434, 41.513687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255291, 35.046509, 41.583591>,  <35.277676, 35.281754, 41.625534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.255291, 35.046509, 41.583591>,  <35.217983, 34.654434, 41.513687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255291, 35.046509, 41.583591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274519, -0.143409, 0.950827,
		0.957048, -0.136657, 0.255704,
		0.093267, 0.980183, 0.174764,
		35.283272, 35.340565, 41.636021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532223, 34.623848, 42.088081>,  <35.217983, 34.654434, 41.513687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532223, 34.623848, 42.088081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397015, 35.000137, 42.076889>,  <35.315887, 35.225910, 42.070175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.397015, 35.000137, 42.076889>,  <35.532223, 34.623848, 42.088081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397015, 35.000137, 42.076889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183873, -0.036858, 0.982259,
		0.923001, 0.337172, 0.185432,
		-0.338024, 0.940721, -0.027977,
		35.295609, 35.282352, 42.068497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826508, 34.935963, 42.633495>,  <35.532223, 34.623848, 42.088081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826508, 34.935963, 42.633495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484543, 35.132023, 42.565510>,  <35.279366, 35.249657, 42.524719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484543, 35.132023, 42.565510>,  <35.826508, 34.935963, 42.633495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484543, 35.132023, 42.565510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163604, 0.056184, 0.984925,
		0.492309, 0.869827, 0.032158,
		-0.854907, 0.490148, -0.169967,
		35.228069, 35.279068, 42.514519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718338, 35.323498, 43.270927>,  <35.826508, 34.935963, 42.633495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718338, 35.323498, 43.270927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356602, 35.323612, 43.100204>,  <35.139561, 35.323681, 42.997768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.356602, 35.323612, 43.100204>,  <35.718338, 35.323498, 43.270927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356602, 35.323612, 43.100204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424519, -0.104054, 0.899420,
		-0.044151, 0.994572, 0.094223,
		-0.904342, 0.000289, -0.426809,
		35.085300, 35.323700, 42.972160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303261, 35.757973, 43.723061>,  <35.718338, 35.323498, 43.270927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303261, 35.757973, 43.723061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019093, 35.582825, 43.502674>,  <34.848591, 35.477737, 43.370441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.019093, 35.582825, 43.502674>,  <35.303261, 35.757973, 43.723061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019093, 35.582825, 43.502674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544656, -0.153722, 0.824451,
		-0.445697, 0.885800, -0.129280,
		-0.710425, -0.437868, -0.550970,
		34.805965, 35.451466, 43.337383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580475, 36.078617, 43.742130>,  <35.303261, 35.757973, 43.723061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580475, 36.078617, 43.742130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517422, 35.701874, 43.623440>,  <34.479588, 35.475826, 43.552227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.517422, 35.701874, 43.623440>,  <34.580475, 36.078617, 43.742130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517422, 35.701874, 43.623440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572934, -0.157506, 0.804325,
		-0.804299, 0.296797, -0.514796,
		-0.157638, -0.941862, -0.296727,
		34.470131, 35.419315, 43.534420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.736187, 36.024666, 43.843071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891315, 35.660088, 43.788143>,  <33.984394, 35.441341, 43.755184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.891315, 35.660088, 43.788143>,  <33.736187, 36.024666, 43.843071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891315, 35.660088, 43.788143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410236, -0.304096, 0.859786,
		-0.825408, -0.277112, -0.491844,
		0.387825, -0.911446, -0.137323,
		34.007664, 35.386654, 43.746948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178028, 35.599487, 44.186558>,  <33.736187, 36.024666, 43.843071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178028, 35.599487, 44.186558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484314, 35.344284, 44.154003>,  <33.668087, 35.191162, 44.134468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.484314, 35.344284, 44.154003>,  <33.178028, 35.599487, 44.186558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484314, 35.344284, 44.154003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353583, -0.523274, 0.775347,
		-0.537274, -0.564912, -0.626267,
		0.765713, -0.638011, -0.081398,
		33.714031, 35.152882, 44.129585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924221, 34.957600, 44.226521>,  <33.178028, 35.599487, 44.186558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924221, 34.957600, 44.226521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308739, 34.905869, 44.323830>,  <33.539452, 34.874832, 44.382217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.308739, 34.905869, 44.323830>,  <32.924221, 34.957600, 44.226521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308739, 34.905869, 44.323830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275158, -0.495456, 0.823900,
		0.013983, -0.858952, -0.511865,
		0.961297, -0.129323, 0.243275,
		33.597130, 34.867073, 44.396812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986668, 34.202190, 44.358162>,  <32.924221, 34.957600, 44.226521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986668, 34.202190, 44.358162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283222, 34.403049, 44.536236>,  <33.461155, 34.523567, 44.643082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.283222, 34.403049, 44.536236>,  <32.986668, 34.202190, 44.358162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283222, 34.403049, 44.536236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227386, -0.436177, 0.870658,
		0.631383, -0.746722, -0.209192,
		0.741384, 0.502151, 0.445189,
		33.505638, 34.553696, 44.669792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395702, 33.726513, 44.740574>,  <32.986668, 34.202190, 44.358162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395702, 33.726513, 44.740574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450874, 34.083195, 44.913010>,  <33.483978, 34.297203, 45.016472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450874, 34.083195, 44.913010>,  <33.395702, 33.726513, 44.740574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450874, 34.083195, 44.913010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042156, -0.429570, 0.902049,
		0.989544, -0.142596, -0.021662,
		0.137934, 0.891704, 0.431090,
		33.492256, 34.350704, 45.042336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741547, 33.602409, 45.325214>,  <33.395702, 33.726513, 44.740574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741547, 33.602409, 45.325214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596748, 33.963585, 45.417870>,  <33.509869, 34.180290, 45.473465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.596748, 33.963585, 45.417870>,  <33.741547, 33.602409, 45.325214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596748, 33.963585, 45.417870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195978, -0.316657, 0.928074,
		0.911347, 0.290561, 0.291585,
		-0.361994, 0.902941, 0.231640,
		33.488152, 34.234467, 45.487362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831242, 33.666805, 46.085041>,  <33.741547, 33.602409, 45.325214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831242, 33.666805, 46.085041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593189, 33.974770, 45.992901>,  <33.450359, 34.159550, 45.937618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.593189, 33.974770, 45.992901>,  <33.831242, 33.666805, 46.085041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593189, 33.974770, 45.992901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296593, 0.055972, 0.953362,
		0.746897, 0.635692, 0.195039,
		-0.595128, 0.769911, -0.230347,
		33.414650, 34.205742, 45.923798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030270, 34.162254, 46.518013>,  <33.831242, 33.666805, 46.085041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030270, 34.162254, 46.518013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663250, 34.276249, 46.407104>,  <33.443039, 34.344646, 46.340557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663250, 34.276249, 46.407104>,  <34.030270, 34.162254, 46.518013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663250, 34.276249, 46.407104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217625, 0.223680, 0.950056,
		0.332773, 0.932068, -0.143218,
		-0.917552, 0.284985, -0.277276,
		33.387985, 34.361744, 46.323921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880238, 34.889454, 46.791637>,  <34.030270, 34.162254, 46.518013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880238, 34.889454, 46.791637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539043, 34.692677, 46.721886>,  <33.334328, 34.574612, 46.680035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.539043, 34.692677, 46.721886>,  <33.880238, 34.889454, 46.791637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539043, 34.692677, 46.721886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302423, 0.193536, 0.933319,
		-0.425391, 0.848844, -0.313858,
		-0.852985, -0.491943, -0.174382,
		33.283150, 34.545094, 46.669571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488464, 35.281212, 47.076488>,  <33.880238, 34.889454, 46.791637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488464, 35.281212, 47.076488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294983, 34.931126, 47.078121>,  <33.178894, 34.721073, 47.079102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.294983, 34.931126, 47.078121>,  <33.488464, 35.281212, 47.076488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294983, 34.931126, 47.078121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203069, 0.116759, 0.972178,
		-0.851346, 0.469422, -0.234208,
		-0.483708, -0.875220, 0.004077,
		33.149872, 34.668560, 47.079346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020870, 35.348602, 47.605648>,  <33.488464, 35.281212, 47.076488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020870, 35.348602, 47.605648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019875, 34.951496, 47.557640>,  <33.019276, 34.713230, 47.528835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019875, 34.951496, 47.557640>,  <33.020870, 35.348602, 47.605648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019875, 34.951496, 47.557640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333080, -0.112342, 0.936182,
		-0.942895, 0.042309, -0.330391,
		-0.002492, -0.992769, -0.120019,
		33.019127, 34.653667, 47.521633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515846, 35.086784, 48.074863>,  <33.020870, 35.348602, 47.605648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515846, 35.086784, 48.074863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721195, 34.752174, 47.998253>,  <32.844402, 34.551411, 47.952286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721195, 34.752174, 47.998253>,  <32.515846, 35.086784, 48.074863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721195, 34.752174, 47.998253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256299, -0.362454, 0.896068,
		-0.819001, -0.410925, -0.400472,
		0.513370, -0.836521, -0.191530,
		32.875206, 34.501217, 47.940792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020035, 34.533707, 48.074421>,  <32.515846, 35.086784, 48.074863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020035, 34.533707, 48.074421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394600, 34.421227, 48.158382>,  <32.619339, 34.353741, 48.208759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.394600, 34.421227, 48.158382>,  <32.020035, 34.533707, 48.074421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394600, 34.421227, 48.158382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327479, -0.485436, 0.810623,
		-0.126049, -0.827817, -0.546655,
		0.936413, -0.281196, 0.209903,
		32.675526, 34.336868, 48.221352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857372, 33.885719, 48.229435>,  <32.020035, 34.533707, 48.074421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857372, 33.885719, 48.229435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227245, 33.915535, 48.378784>,  <32.449169, 33.933422, 48.468395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227245, 33.915535, 48.378784>,  <31.857372, 33.885719, 48.229435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227245, 33.915535, 48.378784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223537, -0.687570, 0.690853,
		0.308216, -0.722282, -0.619121,
		0.924680, 0.074535, 0.373378,
		32.504650, 33.937897, 48.490799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102406, 33.263924, 48.291985>,  <31.857372, 33.885719, 48.229435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102406, 33.263924, 48.291985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361897, 33.462856, 48.522396>,  <32.517590, 33.582214, 48.660645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.361897, 33.462856, 48.522396>,  <32.102406, 33.263924, 48.291985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361897, 33.462856, 48.522396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018560, -0.746357, 0.665287,
		0.760794, -0.442282, -0.474952,
		0.648728, 0.497332, 0.576032,
		32.556515, 33.612057, 48.695206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491478, 32.807968, 48.475018>,  <32.102406, 33.263924, 48.291985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491478, 32.807968, 48.475018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553490, 33.084213, 48.757584>,  <32.590698, 33.249962, 48.927124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553490, 33.084213, 48.757584>,  <32.491478, 32.807968, 48.475018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553490, 33.084213, 48.757584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028746, -0.717908, 0.695544,
		0.987491, -0.087524, -0.131151,
		0.155031, 0.690614, 0.706412,
		32.599998, 33.291397, 48.969505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031940, 32.501129, 48.839886>,  <32.491478, 32.807968, 48.475018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031940, 32.501129, 48.839886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855095, 32.776112, 49.070343>,  <32.748989, 32.941101, 49.208618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.855095, 32.776112, 49.070343>,  <33.031940, 32.501129, 48.839886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855095, 32.776112, 49.070343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110130, -0.679078, 0.725758,
		0.890172, 0.257417, 0.375939,
		-0.442114, 0.687452, 0.576147,
		32.722462, 32.982346, 49.243187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263515, 32.369637, 49.546745>,  <33.031940, 32.501129, 48.839886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263515, 32.369637, 49.546745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943085, 32.597588, 49.619972>,  <32.750828, 32.734360, 49.663906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.943085, 32.597588, 49.619972>,  <33.263515, 32.369637, 49.546745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943085, 32.597588, 49.619972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240646, -0.586665, 0.773249,
		0.548058, 0.575377, 0.607103,
		-0.801076, 0.569882, 0.183064,
		32.702763, 32.768551, 49.674892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174915, 32.463787, 50.288391>,  <33.263515, 32.369637, 49.546745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174915, 32.463787, 50.288391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806923, 32.579716, 50.182831>,  <32.586128, 32.649273, 50.119495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.806923, 32.579716, 50.182831>,  <33.174915, 32.463787, 50.288391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806923, 32.579716, 50.182831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376908, -0.469229, 0.798602,
		0.107624, 0.834162, 0.540917,
		-0.919977, 0.289825, -0.263902,
		32.530930, 32.666664, 50.103661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949100, 32.574059, 50.872303>,  <33.174915, 32.463787, 50.288391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949100, 32.574059, 50.872303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632263, 32.504986, 50.638115>,  <32.442162, 32.463543, 50.497601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.632263, 32.504986, 50.638115>,  <32.949100, 32.574059, 50.872303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632263, 32.504986, 50.638115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465758, -0.448978, 0.762554,
		-0.394541, 0.876698, 0.275204,
		-0.792090, -0.172680, -0.585469,
		32.394634, 32.453182, 50.462475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321762, 32.712502, 51.318077>,  <32.949100, 32.574059, 50.872303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321762, 32.712502, 51.318077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158913, 32.496883, 51.023140>,  <32.061203, 32.367512, 50.846176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.158913, 32.496883, 51.023140>,  <32.321762, 32.712502, 51.318077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158913, 32.496883, 51.023140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673519, -0.368108, 0.640991,
		-0.616946, 0.757580, -0.213191,
		-0.407125, -0.539044, -0.737347,
		32.036774, 32.335171, 50.801937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708384, 32.790615, 51.366913>,  <32.321762, 32.712502, 51.318077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708384, 32.790615, 51.366913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673044, 32.462605, 51.140728>,  <31.651840, 32.265797, 51.005016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673044, 32.462605, 51.140728>,  <31.708384, 32.790615, 51.366913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673044, 32.462605, 51.140728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725264, -0.336162, 0.600822,
		-0.682778, 0.463191, -0.565038,
		-0.088351, -0.820030, -0.565460,
		31.646540, 32.216595, 50.971088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177961, 32.935287, 51.922691>,  <31.708384, 32.790615, 51.366913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177961, 32.935287, 51.922691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209194, 33.022411, 51.533546>,  <31.227934, 33.074688, 51.300060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209194, 33.022411, 51.533546>,  <31.177961, 32.935287, 51.922691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209194, 33.022411, 51.533546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854142, 0.517876, 0.047393,
		0.514144, 0.827262, 0.226479,
		0.078081, 0.217813, -0.972862,
		31.232618, 33.087753, 51.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796206, 33.420700, 51.839516>,  <31.177961, 32.935287, 51.922691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796206, 33.420700, 51.839516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859055, 33.411118, 51.444599>,  <30.896765, 33.405369, 51.207649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.859055, 33.411118, 51.444599>,  <30.796206, 33.420700, 51.839516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859055, 33.411118, 51.444599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797793, 0.586167, -0.141190,
		0.582098, 0.809836, 0.072988,
		0.157124, -0.023958, -0.987288,
		30.906191, 33.403931, 51.148411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101910, 33.437466, 51.597816>,  <30.796206, 33.420700, 51.839516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101910, 33.437466, 51.597816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723940, 33.327263, 51.527153>,  <29.497158, 33.261143, 51.484753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.723940, 33.327263, 51.527153>,  <30.101910, 33.437466, 51.597816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.723940, 33.327263, 51.527153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197753, -0.050518, -0.978949,
		0.260785, -0.959970, 0.102218,
		-0.944926, -0.275509, -0.176663,
		29.440462, 33.244610, 51.474155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113211, 32.835846, 51.279873>,  <30.101910, 33.437466, 51.597816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113211, 32.835846, 51.279873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755049, 32.981071, 51.176773>,  <29.540152, 33.068207, 51.114914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.755049, 32.981071, 51.176773>,  <30.113211, 32.835846, 51.279873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755049, 32.981071, 51.176773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193838, -0.203286, -0.959740,
		-0.400845, -0.909317, 0.111648,
		-0.895405, 0.363065, -0.257747,
		29.486427, 33.089993, 51.099449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992453, 32.398594, 50.732422>,  <30.113211, 32.835846, 51.279873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992453, 32.398594, 50.732422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718756, 32.686378, 50.684784>,  <29.554537, 32.859051, 50.656200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.718756, 32.686378, 50.684784>,  <29.992453, 32.398594, 50.732422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718756, 32.686378, 50.684784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000684, -0.163941, -0.986470,
		-0.729254, -0.674903, 0.112668,
		-0.684243, 0.719464, -0.119093,
		29.513483, 32.902218, 50.649055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360172, 32.125828, 50.362335>,  <29.992453, 32.398594, 50.732422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360172, 32.125828, 50.362335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370808, 32.520889, 50.300594>,  <29.377190, 32.757927, 50.263550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370808, 32.520889, 50.300594>,  <29.360172, 32.125828, 50.362335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370808, 32.520889, 50.300594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116780, -0.150279, -0.981722,
		-0.992802, 0.044128, 0.111343,
		0.026589, 0.987659, -0.154350,
		29.378784, 32.817188, 50.254288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889656, 32.324623, 49.783394>,  <29.360172, 32.125828, 50.362335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889656, 32.324623, 49.783394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121294, 32.650215, 49.801670>,  <29.260277, 32.845570, 49.812637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.121294, 32.650215, 49.801670>,  <28.889656, 32.324623, 49.783394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121294, 32.650215, 49.801670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106335, -0.019847, -0.994132,
		-0.808296, 0.580555, -0.098048,
		0.579094, 0.813979, 0.045691,
		29.295023, 32.894409, 49.815376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654451, 32.709660, 49.237759>,  <28.889656, 32.324623, 49.783394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654451, 32.709660, 49.237759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019178, 32.851871, 49.319912>,  <29.238014, 32.937199, 49.369205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.019178, 32.851871, 49.319912>,  <28.654451, 32.709660, 49.237759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019178, 32.851871, 49.319912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191699, 0.073729, -0.978680,
		-0.363094, 0.931752, -0.000928,
		0.911819, 0.355531, 0.205387,
		29.292725, 32.958530, 49.381527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650768, 33.290890, 48.843342>,  <28.654451, 32.709660, 49.237759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650768, 33.290890, 48.843342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.023785, 33.161312, 48.907127>,  <29.247595, 33.083565, 48.945400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.023785, 33.161312, 48.907127>,  <28.650768, 33.290890, 48.843342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023785, 33.161312, 48.907127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233018, 0.202573, -0.951140,
		0.275813, 0.924134, 0.264393,
		0.932539, -0.323945, 0.159468,
		29.303547, 33.064129, 48.954967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098574, 33.840504, 48.490189>,  <28.650768, 33.290890, 48.843342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098574, 33.840504, 48.490189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367672, 33.550140, 48.547413>,  <29.529131, 33.375923, 48.581749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.367672, 33.550140, 48.547413>,  <29.098574, 33.840504, 48.490189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.367672, 33.550140, 48.547413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349585, 0.141450, -0.926165,
		0.652078, 0.673085, 0.348928,
		0.672744, -0.725912, 0.143064,
		29.569494, 33.332367, 48.590332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820683, 34.145851, 48.280964>,  <29.098574, 33.840504, 48.490189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820683, 34.145851, 48.280964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815615, 33.747017, 48.250847>,  <29.812574, 33.507717, 48.232777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.815615, 33.747017, 48.250847>,  <29.820683, 34.145851, 48.280964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.815615, 33.747017, 48.250847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442620, 0.061926, -0.894569,
		0.896620, -0.044659, 0.440544,
		-0.012669, -0.997081, -0.075291,
		29.811813, 33.447891, 48.228260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621719, 33.896225, 48.130211>,  <29.820683, 34.145851, 48.280964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621719, 33.896225, 48.130211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377661, 33.597370, 48.024754>,  <30.231226, 33.418056, 47.961479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.377661, 33.597370, 48.024754>,  <30.621719, 33.896225, 48.130211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377661, 33.597370, 48.024754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385688, 0.010580, -0.922568,
		0.692074, -0.664586, 0.281707,
		-0.610146, -0.747137, -0.263645,
		30.194616, 33.373230, 47.945660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006914, 33.250084, 47.823189>,  <30.621719, 33.896225, 48.130211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006914, 33.250084, 47.823189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630171, 33.233978, 47.689754>,  <30.404125, 33.224316, 47.609695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630171, 33.233978, 47.689754>,  <31.006914, 33.250084, 47.823189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630171, 33.233978, 47.689754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331151, 0.056906, -0.941860,
		0.056906, -0.997567, -0.040264,
		0.941860, 0.040264, 0.333583,
		30.347612, 33.221901, 47.589680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.095718, 32.954632, 47.206341>,  <31.006914, 33.250084, 47.823189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.095718, 32.954632, 47.206341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711643, 33.052494, 47.152409>,  <30.481197, 33.111210, 47.120049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.711643, 33.052494, 47.152409>,  <31.095718, 32.954632, 47.206341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711643, 33.052494, 47.152409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183221, 0.187233, -0.965077,
		-0.210867, -0.951361, -0.224605,
		-0.960190, 0.244656, -0.134828,
		30.423586, 33.125889, 47.111961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807140, 32.664604, 46.679108>,  <31.095718, 32.954632, 47.206341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807140, 32.664604, 46.679108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.611126, 33.012928, 46.694847>,  <30.493517, 33.221924, 46.704288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.611126, 33.012928, 46.694847>,  <30.807140, 32.664604, 46.679108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.611126, 33.012928, 46.694847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410700, 0.270458, -0.870734,
		-0.768888, -0.410533, -0.490178,
		-0.490037, 0.870813, 0.039346,
		30.464115, 33.274174, 46.706650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653755, 32.737679, 46.060055>,  <30.807140, 32.664604, 46.679108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653755, 32.737679, 46.060055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552389, 33.104763, 46.182419>,  <30.491570, 33.325016, 46.255836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.552389, 33.104763, 46.182419>,  <30.653755, 32.737679, 46.060055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552389, 33.104763, 46.182419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257801, 0.368863, -0.893017,
		-0.932373, -0.147442, -0.330064,
		-0.253416, 0.917715, 0.305907,
		30.476364, 33.380077, 46.274189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275272, 33.007656, 45.552460>,  <30.653755, 32.737679, 46.060055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275272, 33.007656, 45.552460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370268, 33.351189, 45.734013>,  <30.427265, 33.557308, 45.842945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.370268, 33.351189, 45.734013>,  <30.275272, 33.007656, 45.552460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370268, 33.351189, 45.734013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213359, 0.409718, -0.886910,
		-0.947670, 0.307469, -0.085937,
		0.237488, 0.858833, 0.453878,
		30.441515, 33.608837, 45.870174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788664, 33.614319, 45.253056>,  <30.275272, 33.007656, 45.552460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788664, 33.614319, 45.253056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.110531, 33.786465, 45.416660>,  <30.303652, 33.889751, 45.514824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.110531, 33.786465, 45.416660>,  <29.788664, 33.614319, 45.253056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110531, 33.786465, 45.416660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197466, 0.455691, -0.867959,
		-0.559925, 0.779186, 0.281698,
		0.804668, 0.430366, 0.409016,
		30.351931, 33.915573, 45.539364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787680, 34.254055, 45.245918>,  <29.788664, 33.614319, 45.253056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787680, 34.254055, 45.245918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185589, 34.227665, 45.277081>,  <30.424335, 34.211830, 45.295780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.185589, 34.227665, 45.277081>,  <29.787680, 34.254055, 45.245918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.185589, 34.227665, 45.277081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098608, 0.423275, -0.900619,
		0.026443, 0.903596, 0.427569,
		0.994775, -0.065977, 0.077909,
		30.484022, 34.207870, 45.300453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018848, 34.813686, 44.866791>,  <29.787680, 34.254055, 45.245918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018848, 34.813686, 44.866791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344629, 34.583988, 44.900051>,  <30.540098, 34.446171, 44.920006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.344629, 34.583988, 44.900051>,  <30.018848, 34.813686, 44.866791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344629, 34.583988, 44.900051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352168, 0.375332, -0.857382,
		0.461135, 0.727580, 0.507920,
		0.814452, -0.574242, 0.083152,
		30.588964, 34.411716, 44.924995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698664, 35.265820, 44.761486>,  <30.018848, 34.813686, 44.866791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698664, 35.265820, 44.761486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779417, 34.880650, 44.689903>,  <30.827869, 34.649548, 44.646954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.779417, 34.880650, 44.689903>,  <30.698664, 35.265820, 44.761486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779417, 34.880650, 44.689903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321467, 0.237747, -0.916589,
		0.925149, 0.127517, 0.357545,
		0.201886, -0.962920, -0.178959,
		30.839983, 34.591774, 44.636215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432333, 35.119587, 44.662846>,  <30.698664, 35.265820, 44.761486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432333, 35.119587, 44.662846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247091, 34.827358, 44.462128>,  <31.135946, 34.652020, 44.341698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.247091, 34.827358, 44.462128>,  <31.432333, 35.119587, 44.662846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247091, 34.827358, 44.462128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436753, 0.304542, -0.846464,
		0.771222, -0.611160, 0.178046,
		-0.463103, -0.730574, -0.501795,
		31.108160, 34.608185, 44.311588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.233578, 39.923843, 37.319473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383114, 39.553963, 37.348221>,  <39.472836, 39.332035, 37.365471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.383114, 39.553963, 37.348221>,  <39.233578, 39.923843, 37.319473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383114, 39.553963, 37.348221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927387, -0.373843, 0.013950,
		0.013968, -0.071867, -0.997316,
		0.373842, -0.924704, 0.071870,
		39.495266, 39.276550, 37.369781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550415, 40.051685, 37.672192>,  <39.233578, 39.923843, 37.319473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550415, 40.051685, 37.672192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275166, 39.765076, 37.717934>,  <38.110016, 39.593109, 37.745380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275166, 39.765076, 37.717934>,  <38.550415, 40.051685, 37.672192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275166, 39.765076, 37.717934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720159, -0.655182, 0.228271,
		-0.088636, 0.239435, 0.966858,
		-0.688124, -0.716524, 0.114359,
		38.068729, 39.550117, 37.752243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803150, 39.685852, 38.215130>,  <38.550415, 40.051685, 37.672192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803150, 39.685852, 38.215130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547855, 39.447769, 38.019833>,  <38.394680, 39.304920, 37.902653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.547855, 39.447769, 38.019833>,  <38.803150, 39.685852, 38.215130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547855, 39.447769, 38.019833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552755, -0.795739, 0.247510,
		-0.535836, -0.111912, 0.836872,
		-0.638232, -0.595210, -0.488246,
		38.356384, 39.269207, 37.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880337, 38.994335, 38.584316>,  <38.803150, 39.685852, 38.215130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880337, 38.994335, 38.584316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709595, 38.917450, 38.230854>,  <38.607151, 38.871319, 38.018776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.709595, 38.917450, 38.230854>,  <38.880337, 38.994335, 38.584316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709595, 38.917450, 38.230854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565597, -0.819189, -0.095022,
		-0.705620, -0.540355, 0.458386,
		-0.426850, -0.192212, -0.883659,
		38.581539, 38.859787, 37.965755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712246, 38.302734, 38.543644>,  <38.880337, 38.994335, 38.584316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712246, 38.302734, 38.543644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722454, 38.385845, 38.152508>,  <38.728577, 38.435711, 37.917824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.722454, 38.385845, 38.152508>,  <38.712246, 38.302734, 38.543644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722454, 38.385845, 38.152508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576675, -0.802062, -0.155377,
		-0.816575, -0.559933, -0.140286,
		0.025518, 0.207777, -0.977843,
		38.730110, 38.448177, 37.859154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607769, 37.678097, 38.266678>,  <38.712246, 38.302734, 38.543644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607769, 37.678097, 38.266678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773918, 37.909336, 37.985748>,  <38.873608, 38.048080, 37.817188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773918, 37.909336, 37.985748>,  <38.607769, 37.678097, 38.266678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773918, 37.909336, 37.985748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684112, -0.707404, -0.177681,
		-0.599547, -0.406666, -0.689323,
		0.415373, 0.578102, -0.702327,
		38.898529, 38.082767, 37.775051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516273, 37.350586, 37.633167>,  <38.607769, 37.678097, 38.266678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516273, 37.350586, 37.633167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829151, 37.598747, 37.610279>,  <39.016876, 37.747646, 37.596546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829151, 37.598747, 37.610279>,  <38.516273, 37.350586, 37.633167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829151, 37.598747, 37.610279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559809, -0.740153, -0.372542,
		-0.273478, 0.259367, -0.926250,
		0.782192, 0.620405, -0.057219,
		39.063808, 37.784870, 37.593113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746590, 37.215462, 37.032959>,  <38.516273, 37.350586, 37.633167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746590, 37.215462, 37.032959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066742, 37.389816, 37.197594>,  <39.258831, 37.494427, 37.296375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.066742, 37.389816, 37.197594>,  <38.746590, 37.215462, 37.032959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066742, 37.389816, 37.197594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569668, -0.766847, -0.295675,
		0.186741, 0.471118, -0.862077,
		0.800379, 0.435883, 0.411582,
		39.306854, 37.520580, 37.321068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155312, 37.210621, 36.503220>,  <38.746590, 37.215462, 37.032959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155312, 37.210621, 36.503220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380951, 37.260826, 36.829666>,  <39.516335, 37.290951, 37.025536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.380951, 37.260826, 36.829666>,  <39.155312, 37.210621, 36.503220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380951, 37.260826, 36.829666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598457, -0.743123, -0.299362,
		0.568900, 0.657279, -0.494306,
		0.564094, 0.125514, 0.816115,
		39.550179, 37.298481, 37.074501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804131, 37.249020, 36.254425>,  <39.155312, 37.210621, 36.503220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804131, 37.249020, 36.254425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829914, 37.123562, 36.633366>,  <39.845383, 37.048286, 36.860729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.829914, 37.123562, 36.633366>,  <39.804131, 37.249020, 36.254425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829914, 37.123562, 36.633366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676036, -0.684573, -0.272646,
		0.734044, 0.658016, 0.167910,
		0.064459, -0.313647, 0.947349,
		39.849251, 37.029469, 36.917572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562054, 37.178978, 36.398319>,  <39.804131, 37.249020, 36.254425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562054, 37.178978, 36.398319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355061, 36.959972, 36.661358>,  <40.230865, 36.828568, 36.819183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.355061, 36.959972, 36.661358>,  <40.562054, 37.178978, 36.398319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355061, 36.959972, 36.661358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688985, -0.722350, -0.059244,
		0.507454, 0.422417, 0.751036,
		-0.517485, -0.547516, 0.657598,
		40.199814, 36.795719, 36.858639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165649, 36.931480, 36.816345>,  <40.562054, 37.178978, 36.398319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165649, 36.931480, 36.816345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844933, 36.702991, 36.886589>,  <40.652504, 36.565899, 36.928738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844933, 36.702991, 36.886589>,  <41.165649, 36.931480, 36.816345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844933, 36.702991, 36.886589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535229, -0.817111, -0.214149,
		0.265822, -0.077709, 0.960885,
		-0.801791, -0.571219, 0.175614,
		40.604397, 36.531628, 36.939274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360939, 36.516331, 37.447216>,  <41.165649, 36.931480, 36.816345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360939, 36.516331, 37.447216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058315, 36.326836, 37.266907>,  <40.876743, 36.213139, 37.158722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.058315, 36.326836, 37.266907>,  <41.360939, 36.516331, 37.447216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058315, 36.326836, 37.266907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579503, -0.805091, -0.126510,
		-0.302983, -0.356938, 0.883627,
		-0.756557, -0.473734, -0.450775,
		40.831348, 36.184715, 37.131676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384789, 35.819752, 37.735729>,  <41.360939, 36.516331, 37.447216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384789, 35.819752, 37.735729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185085, 35.791672, 37.390285>,  <41.065262, 35.774822, 37.183022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.185085, 35.791672, 37.390285>,  <41.384789, 35.819752, 37.735729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.185085, 35.791672, 37.390285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472604, -0.857454, -0.203513,
		-0.726215, -0.509748, 0.461268,
		-0.499257, -0.070203, -0.863605,
		41.035309, 35.770611, 37.131203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190060, 35.135799, 37.776157>,  <41.384789, 35.819752, 37.735729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190060, 35.135799, 37.776157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192734, 35.263588, 37.397129>,  <41.194336, 35.340260, 37.169712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.192734, 35.263588, 37.397129>,  <41.190060, 35.135799, 37.776157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192734, 35.263588, 37.397129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435621, -0.853883, -0.284810,
		-0.900105, -0.410880, -0.144873,
		0.006682, 0.319469, -0.947573,
		41.194736, 35.359428, 37.112858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869816, 34.572765, 37.386013>,  <41.190060, 35.135799, 37.776157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869816, 34.572765, 37.386013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088619, 34.789009, 37.130348>,  <41.219902, 34.918755, 36.976952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.088619, 34.789009, 37.130348>,  <40.869816, 34.572765, 37.386013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088619, 34.789009, 37.130348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456469, -0.832641, -0.313599,
		-0.701724, -0.120215, -0.702233,
		0.547009, 0.540608, -0.639159,
		41.252724, 34.951191, 36.938599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004673, 34.059242, 36.848995>,  <40.869816, 34.572765, 37.386013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004673, 34.059242, 36.848995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248875, 34.341949, 36.706013>,  <41.395393, 34.511574, 36.620224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.248875, 34.341949, 36.706013>,  <41.004673, 34.059242, 36.848995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248875, 34.341949, 36.706013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439798, -0.677858, -0.589140,
		-0.658686, 0.202463, -0.724666,
		0.610500, 0.706765, -0.357453,
		41.432026, 34.553978, 36.598778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006138, 34.047283, 36.094810>,  <41.004673, 34.059242, 36.848995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006138, 34.047283, 36.094810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351231, 34.226276, 36.189011>,  <41.558285, 34.333672, 36.245529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.351231, 34.226276, 36.189011>,  <41.006138, 34.047283, 36.094810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351231, 34.226276, 36.189011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500982, -0.693161, -0.518213,
		-0.068652, 0.565059, -0.822190,
		0.862731, 0.447478, 0.235497,
		41.610050, 34.360519, 36.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406307, 34.128765, 35.475098>,  <41.006138, 34.047283, 36.094810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406307, 34.128765, 35.475098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676102, 34.153549, 35.769371>,  <41.837978, 34.168419, 35.945934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.676102, 34.153549, 35.769371>,  <41.406307, 34.128765, 35.475098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676102, 34.153549, 35.769371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609540, -0.608972, -0.507557,
		0.416562, 0.790769, -0.448510,
		0.674490, 0.061956, 0.735680,
		41.878448, 34.172134, 35.990074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921875, 34.404408, 35.118149>,  <41.406307, 34.128765, 35.475098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921875, 34.404408, 35.118149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061977, 34.247971, 35.458588>,  <42.146038, 34.154106, 35.662849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.061977, 34.247971, 35.458588>,  <41.921875, 34.404408, 35.118149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061977, 34.247971, 35.458588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748300, -0.429675, -0.505397,
		0.563353, 0.813895, 0.142158,
		0.350258, -0.391094, 0.851096,
		42.167053, 34.130642, 35.713917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683243, 34.476398, 35.023708>,  <41.921875, 34.404408, 35.118149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683243, 34.476398, 35.023708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637943, 34.195492, 35.304848>,  <42.610764, 34.026947, 35.473530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.637943, 34.195492, 35.304848>,  <42.683243, 34.476398, 35.023708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637943, 34.195492, 35.304848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703762, -0.556048, -0.442187,
		0.701351, 0.444559, 0.557202,
		-0.113253, -0.702266, 0.702849,
		42.603966, 33.984814, 35.515701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.344700, 34.311310, 35.263691>,  <42.683243, 34.476398, 35.023708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.344700, 34.311310, 35.263691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096817, 34.002697, 35.321255>,  <42.948090, 33.817532, 35.355793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.096817, 34.002697, 35.321255>,  <43.344700, 34.311310, 35.263691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096817, 34.002697, 35.321255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656845, -0.610208, -0.442945,
		0.429561, -0.179966, 0.884923,
		-0.619702, -0.771530, 0.143912,
		42.910908, 33.771236, 35.364429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056419, 34.599007, 35.086311>,  <43.344700, 34.311310, 35.263691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056419, 34.599007, 35.086311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.387276, 34.819836, 35.044250>,  <44.585789, 34.952332, 35.019016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.387276, 34.819836, 35.044250>,  <44.056419, 34.599007, 35.086311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387276, 34.819836, 35.044250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144973, 0.390369, 0.909173,
		0.542977, -0.736768, 0.402925,
		0.827139, 0.552073, -0.105150,
		44.635418, 34.985458, 35.012707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490345, 34.703682, 35.713200>,  <44.056419, 34.599007, 35.086311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490345, 34.703682, 35.713200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592327, 35.037308, 35.517513>,  <44.653515, 35.237484, 35.400101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592327, 35.037308, 35.517513>,  <44.490345, 34.703682, 35.713200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592327, 35.037308, 35.517513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056447, 0.517911, 0.853570,
		0.965304, -0.190007, 0.179125,
		0.254955, 0.834066, -0.489216,
		44.668812, 35.287529, 35.370747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883133, 35.077515, 36.220348>,  <44.490345, 34.703682, 35.713200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883133, 35.077515, 36.220348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749306, 35.345089, 35.954842>,  <44.669010, 35.505634, 35.795540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.749306, 35.345089, 35.954842>,  <44.883133, 35.077515, 36.220348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.749306, 35.345089, 35.954842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113160, 0.670741, 0.733008,
		0.935553, 0.320353, -0.148711,
		-0.334568, 0.668940, -0.663765,
		44.648937, 35.545773, 35.755711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106182, 35.648846, 36.544666>,  <44.883133, 35.077515, 36.220348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106182, 35.648846, 36.544666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852283, 35.815159, 36.284134>,  <44.699944, 35.914948, 36.127815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.852283, 35.815159, 36.284134>,  <45.106182, 35.648846, 36.544666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852283, 35.815159, 36.284134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292339, 0.651039, 0.700490,
		0.715289, 0.635040, -0.291696,
		-0.634744, 0.415778, -0.651328,
		44.661861, 35.939892, 36.088734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171719, 36.340015, 36.565636>,  <45.106182, 35.648846, 36.544666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171719, 36.340015, 36.565636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801361, 36.267914, 36.432835>,  <44.579147, 36.224651, 36.353153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.801361, 36.267914, 36.432835>,  <45.171719, 36.340015, 36.565636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801361, 36.267914, 36.432835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373110, 0.574100, 0.728833,
		0.059226, 0.798697, -0.598812,
		-0.925895, -0.180257, -0.332003,
		44.523594, 36.213837, 36.333233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809032, 37.066875, 36.363560>,  <45.171719, 36.340015, 36.565636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809032, 37.066875, 36.363560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512867, 36.801960, 36.409462>,  <44.335167, 36.643009, 36.437004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512867, 36.801960, 36.409462>,  <44.809032, 37.066875, 36.363560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512867, 36.801960, 36.409462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471177, 0.633155, 0.614090,
		-0.479361, 0.400609, -0.780849,
		-0.740409, -0.662289, 0.114752,
		44.290745, 36.603271, 36.443886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256420, 37.509968, 36.230400>,  <44.809032, 37.066875, 36.363560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256420, 37.509968, 36.230400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136135, 37.192970, 36.442635>,  <44.063965, 37.002769, 36.569977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.136135, 37.192970, 36.442635>,  <44.256420, 37.509968, 36.230400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136135, 37.192970, 36.442635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586327, 0.592402, 0.552521,
		-0.752191, -0.144947, -0.642805,
		-0.300713, -0.792496, 0.530586,
		44.045921, 36.955223, 36.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.532398, 37.658504, 36.298450>,  <44.256420, 37.509968, 36.230400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.532398, 37.658504, 36.298450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637344, 37.390228, 36.575966>,  <43.700314, 37.229263, 36.742474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637344, 37.390228, 36.575966>,  <43.532398, 37.658504, 36.298450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637344, 37.390228, 36.575966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644881, 0.412977, 0.643101,
		-0.717839, -0.616136, -0.324166,
		0.262364, -0.670692, 0.693785,
		43.716053, 37.189022, 36.784103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929245, 37.296959, 36.451431>,  <43.532398, 37.658504, 36.298450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929245, 37.296959, 36.451431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150120, 37.214405, 36.774540>,  <43.282646, 37.164875, 36.968407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.150120, 37.214405, 36.774540>,  <42.929245, 37.296959, 36.451431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150120, 37.214405, 36.774540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595287, 0.580746, 0.555308,
		-0.583716, -0.787491, 0.197824,
		0.552185, -0.206380, 0.807774,
		43.315777, 37.152493, 37.016872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.436604, 37.128719, 37.037552>,  <42.929245, 37.296959, 36.451431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.436604, 37.128719, 37.037552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785110, 37.221287, 37.210686>,  <42.994213, 37.276829, 37.314568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785110, 37.221287, 37.210686>,  <42.436604, 37.128719, 37.037552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785110, 37.221287, 37.210686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488782, 0.489285, 0.722283,
		-0.044631, -0.840860, 0.539409,
		0.871264, 0.231417, 0.432835,
		43.046490, 37.290710, 37.340534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432705, 36.905270, 37.726757>,  <42.436604, 37.128719, 37.037552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432705, 36.905270, 37.726757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706470, 37.196896, 37.724525>,  <42.870731, 37.371872, 37.723186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706470, 37.196896, 37.724525>,  <42.432705, 36.905270, 37.726757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706470, 37.196896, 37.724525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551527, 0.522724, 0.650059,
		0.476852, -0.441837, 0.759863,
		0.684419, 0.729068, -0.005577,
		42.911797, 37.415615, 37.722851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.464252, 37.054497, 38.425209>,  <42.432705, 36.905270, 37.726757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.464252, 37.054497, 38.425209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603382, 37.373005, 38.227230>,  <42.686859, 37.564110, 38.108444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603382, 37.373005, 38.227230>,  <42.464252, 37.054497, 38.425209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603382, 37.373005, 38.227230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323473, 0.597414, 0.733799,
		0.879989, -0.095135, 0.465370,
		0.347828, 0.796270, -0.494944,
		42.707729, 37.611885, 38.078747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820175, 37.455910, 38.913441>,  <42.464252, 37.054497, 38.425209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820175, 37.455910, 38.913441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.741936, 37.720940, 38.624237>,  <42.694992, 37.879959, 38.450714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.741936, 37.720940, 38.624237>,  <42.820175, 37.455910, 38.913441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741936, 37.720940, 38.624237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455109, 0.591724, 0.665386,
		0.868688, 0.459193, 0.185805,
		-0.195596, 0.662574, -0.723006,
		42.683258, 37.919712, 38.407333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976696, 38.096050, 39.153969>,  <42.820175, 37.455910, 38.913441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976696, 38.096050, 39.153969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717716, 38.192257, 38.864704>,  <42.562328, 38.249981, 38.691147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717716, 38.192257, 38.864704>,  <42.976696, 38.096050, 39.153969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717716, 38.192257, 38.864704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531796, 0.537112, 0.654755,
		0.545899, 0.808494, -0.219845,
		-0.647447, 0.240518, -0.723162,
		42.523483, 38.264412, 38.647755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800137, 38.834728, 39.294968>,  <42.976696, 38.096050, 39.153969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800137, 38.834728, 39.294968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521130, 38.707691, 39.038033>,  <42.353725, 38.631470, 38.883869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.521130, 38.707691, 39.038033>,  <42.800137, 38.834728, 39.294968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521130, 38.707691, 39.038033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674119, 0.594775, 0.437957,
		0.242957, 0.738497, -0.628962,
		-0.697521, -0.317591, -0.642340,
		42.311874, 38.612415, 38.845329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.343067, 39.350773, 39.402348>,  <42.800137, 38.834728, 39.294968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.343067, 39.350773, 39.402348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115273, 39.092091, 39.199387>,  <41.978596, 38.936882, 39.077610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.115273, 39.092091, 39.199387>,  <42.343067, 39.350773, 39.402348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115273, 39.092091, 39.199387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821981, 0.443693, 0.357050,
		-0.005774, 0.620410, -0.784256,
		-0.569486, -0.646705, -0.507403,
		41.944427, 38.898079, 39.047165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918835, 39.765907, 38.893536>,  <42.343067, 39.350773, 39.402348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918835, 39.765907, 38.893536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754208, 39.419296, 39.006496>,  <41.655430, 39.211330, 39.074272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.754208, 39.419296, 39.006496>,  <41.918835, 39.765907, 38.893536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754208, 39.419296, 39.006496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819866, 0.487348, 0.300519,
		-0.398033, -0.107843, -0.911010,
		-0.411570, -0.866523, 0.282397,
		41.630737, 39.159340, 39.091217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271008, 39.874409, 38.693722>,  <41.918835, 39.765907, 38.893536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271008, 39.874409, 38.693722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266605, 39.571503, 38.954926>,  <41.263962, 39.389759, 39.111649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.266605, 39.571503, 38.954926>,  <41.271008, 39.874409, 38.693722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266605, 39.571503, 38.954926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803982, 0.395000, 0.444509,
		-0.594552, -0.520117, -0.613177,
		-0.011009, -0.757267, 0.653012,
		41.263302, 39.344322, 39.150829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583641, 39.748138, 38.703880>,  <41.271008, 39.874409, 38.693722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583641, 39.748138, 38.703880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717407, 39.561092, 39.031174>,  <40.797668, 39.448864, 39.227551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.717407, 39.561092, 39.031174>,  <40.583641, 39.748138, 38.703880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717407, 39.561092, 39.031174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787507, 0.338267, 0.515178,
		-0.517685, -0.816647, -0.255129,
		0.334417, -0.467616, 0.818231,
		40.817734, 39.420807, 39.276642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961479, 39.460823, 38.996578>,  <40.583641, 39.748138, 38.703880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961479, 39.460823, 38.996578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232227, 39.506893, 39.287395>,  <40.394676, 39.534534, 39.461884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232227, 39.506893, 39.287395>,  <39.961479, 39.460823, 38.996578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232227, 39.506893, 39.287395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731602, 0.214343, 0.647160,
		-0.081301, -0.969945, 0.229341,
		0.676867, 0.115171, 0.727040,
		40.435287, 39.541443, 39.505508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.155529, 36.381237, 41.506245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904305, 36.079529, 41.429695>,  <35.753571, 35.898506, 41.383766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904305, 36.079529, 41.429695>,  <36.155529, 36.381237, 41.506245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904305, 36.079529, 41.429695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556579, -0.263540, -0.787887,
		0.543842, -0.601355, 0.585328,
		-0.628058, -0.754267, -0.191377,
		35.715889, 35.853249, 41.372280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544617, 35.816185, 41.404797>,  <36.155529, 36.381237, 41.506245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544617, 35.816185, 41.404797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192242, 35.744480, 41.229607>,  <35.980816, 35.701458, 41.124493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192242, 35.744480, 41.229607>,  <36.544617, 35.816185, 41.404797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192242, 35.744480, 41.229607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473120, -0.312780, -0.823606,
		0.010652, -0.932756, 0.360351,
		-0.880934, -0.179262, -0.437974,
		35.927963, 35.690701, 41.098213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621857, 35.161640, 41.113522>,  <36.544617, 35.816185, 41.404797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621857, 35.161640, 41.113522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322498, 35.327713, 40.906631>,  <36.142883, 35.427357, 40.782497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322498, 35.327713, 40.906631>,  <36.621857, 35.161640, 41.113522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322498, 35.327713, 40.906631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361730, -0.398143, -0.842991,
		-0.555925, -0.817990, 0.147785,
		-0.748397, 0.415182, -0.517229,
		36.097980, 35.452267, 40.751461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419254, 34.642365, 40.734024>,  <36.621857, 35.161640, 41.113522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419254, 34.642365, 40.734024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294899, 34.966267, 40.534969>,  <36.220287, 35.160610, 40.415539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294899, 34.966267, 40.534969>,  <36.419254, 34.642365, 40.734024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294899, 34.966267, 40.534969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373121, -0.377566, -0.847481,
		-0.874146, -0.449147, -0.184759,
		-0.310885, 0.809759, -0.497634,
		36.201633, 35.209194, 40.385677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039619, 34.378910, 40.179798>,  <36.419254, 34.642365, 40.734024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039619, 34.378910, 40.179798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128048, 34.754406, 40.074051>,  <36.181103, 34.979706, 40.010601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128048, 34.754406, 40.074051>,  <36.039619, 34.378910, 40.179798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128048, 34.754406, 40.074051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196658, -0.308419, -0.930701,
		-0.955225, 0.153757, -0.252792,
		0.221068, 0.938742, -0.264372,
		36.194366, 35.036030, 39.994740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733856, 34.499874, 39.461441>,  <36.039619, 34.378910, 40.179798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733856, 34.499874, 39.461441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021309, 34.772499, 39.516636>,  <36.193779, 34.936073, 39.549751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021309, 34.772499, 39.516636>,  <35.733856, 34.499874, 39.461441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021309, 34.772499, 39.516636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390601, -0.231460, -0.890987,
		-0.575328, 0.694186, -0.432554,
		0.718630, 0.681565, 0.137985,
		36.236897, 34.976967, 39.558033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801754, 34.856926, 38.810387>,  <35.733856, 34.499874, 39.461441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801754, 34.856926, 38.810387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142269, 34.952129, 38.997429>,  <36.346577, 35.009251, 39.109653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142269, 34.952129, 38.997429>,  <35.801754, 34.856926, 38.810387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142269, 34.952129, 38.997429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521302, -0.282451, -0.805273,
		-0.059588, 0.929285, -0.364524,
		0.851289, 0.238012, 0.467608,
		36.397655, 35.023533, 39.137711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152733, 35.327866, 38.349873>,  <35.801754, 34.856926, 38.810387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152733, 35.327866, 38.349873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434959, 35.177097, 38.589912>,  <36.604294, 35.086636, 38.733936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434959, 35.177097, 38.589912>,  <36.152733, 35.327866, 38.349873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434959, 35.177097, 38.589912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469397, -0.385828, -0.794232,
		0.530894, 0.842063, -0.095301,
		0.705563, -0.376919, 0.600095,
		36.646629, 35.064022, 38.769939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737122, 35.489964, 38.089260>,  <36.152733, 35.327866, 38.349873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737122, 35.489964, 38.089260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897102, 35.210529, 38.326584>,  <36.993092, 35.042870, 38.468979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897102, 35.210529, 38.326584>,  <36.737122, 35.489964, 38.089260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897102, 35.210529, 38.326584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641234, -0.249253, -0.725735,
		0.654873, 0.670709, 0.348269,
		0.399950, -0.698586, 0.593310,
		37.017086, 35.000954, 38.504578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465675, 35.365234, 37.910183>,  <36.737122, 35.489964, 38.089260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465675, 35.365234, 37.910183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405991, 35.033764, 38.125969>,  <37.370178, 34.834881, 38.255440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405991, 35.033764, 38.125969>,  <37.465675, 35.365234, 37.910183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405991, 35.033764, 38.125969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635196, -0.498450, -0.589978,
		0.757800, 0.254635, 0.600749,
		-0.149214, -0.828679, 0.539469,
		37.361225, 34.785160, 38.287811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038586, 35.048595, 37.999290>,  <37.465675, 35.365234, 37.910183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038586, 35.048595, 37.999290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810944, 34.726257, 38.064686>,  <37.674358, 34.532852, 38.103924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810944, 34.726257, 38.064686>,  <38.038586, 35.048595, 37.999290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810944, 34.726257, 38.064686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582000, -0.535228, -0.612215,
		0.580858, -0.253262, 0.773604,
		-0.569105, -0.805847, 0.163493,
		37.640213, 34.484505, 38.113735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382641, 34.409256, 37.948093>,  <38.038586, 35.048595, 37.999290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382641, 34.409256, 37.948093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007324, 34.315636, 37.846249>,  <37.782135, 34.259464, 37.785141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007324, 34.315636, 37.846249>,  <38.382641, 34.409256, 37.948093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007324, 34.315636, 37.846249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340654, -0.498415, -0.797206,
		0.059684, -0.834747, 0.547389,
		-0.938293, -0.234050, -0.254613,
		37.725838, 34.245422, 37.769863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317165, 33.709984, 37.784576>,  <38.382641, 34.409256, 37.948093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317165, 33.709984, 37.784576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993759, 33.839161, 37.587799>,  <37.799717, 33.916668, 37.469734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993759, 33.839161, 37.587799>,  <38.317165, 33.709984, 37.784576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993759, 33.839161, 37.587799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149448, -0.695875, -0.702441,
		-0.569183, -0.641454, 0.514362,
		-0.808515, 0.322947, -0.491944,
		37.751205, 33.936047, 37.440216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979485, 33.061073, 37.643723>,  <38.317165, 33.709984, 37.784576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979485, 33.061073, 37.643723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782593, 33.324497, 37.416035>,  <37.664459, 33.482552, 37.279423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782593, 33.324497, 37.416035>,  <37.979485, 33.061073, 37.643723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782593, 33.324497, 37.416035> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257035, -0.734732, -0.627775,
		-0.831654, -0.162696, 0.530926,
		-0.492225, 0.658558, -0.569224,
		37.634926, 33.522064, 37.245266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710392, 32.933842, 37.987267>,  <37.979485, 33.061073, 37.643723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710392, 32.933842, 37.987267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925301, 32.605434, 38.064480>,  <39.054245, 32.408390, 38.110809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925301, 32.605434, 38.064480>,  <38.710392, 32.933842, 37.987267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925301, 32.605434, 38.064480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820904, -0.456533, 0.343067,
		-0.193540, -0.342781, -0.919262,
		0.537271, -0.821023, 0.193033,
		39.086483, 32.359127, 38.122391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283321, 32.303246, 37.821087>,  <38.710392, 32.933842, 37.987267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283321, 32.303246, 37.821087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571831, 32.157478, 38.056702>,  <38.744934, 32.070019, 38.198071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571831, 32.157478, 38.056702>,  <38.283321, 32.303246, 37.821087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571831, 32.157478, 38.056702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656880, -0.629642, 0.414802,
		0.219721, -0.686111, -0.693523,
		0.721271, -0.364421, 0.589038,
		38.788212, 32.048153, 38.233414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252983, 31.596853, 37.749039>,  <38.283321, 32.303246, 37.821087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252983, 31.596853, 37.749039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404610, 31.682186, 38.109215>,  <38.495586, 31.733385, 38.325321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404610, 31.682186, 38.109215>,  <38.252983, 31.596853, 37.749039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404610, 31.682186, 38.109215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707334, -0.560602, 0.430587,
		0.596648, -0.800135, -0.061609,
		0.379065, 0.213331, 0.900444,
		38.518330, 31.746185, 38.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976460, 31.083141, 38.102852>,  <38.252983, 31.596853, 37.749039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976460, 31.083141, 38.102852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136230, 31.312702, 38.388813>,  <38.232094, 31.450439, 38.560390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136230, 31.312702, 38.388813>,  <37.976460, 31.083141, 38.102852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136230, 31.312702, 38.388813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639617, -0.384205, 0.665790,
		0.656770, -0.723202, 0.213617,
		0.399428, 0.573904, 0.714907,
		38.256058, 31.484873, 38.603287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028625, 30.655090, 38.780003>,  <37.976460, 31.083141, 38.102852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028625, 30.655090, 38.780003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036434, 31.036335, 38.900799>,  <38.041119, 31.265081, 38.973274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036434, 31.036335, 38.900799>,  <38.028625, 30.655090, 38.780003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036434, 31.036335, 38.900799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746710, -0.186962, 0.638333,
		0.664863, -0.237956, 0.708049,
		0.019517, 0.953112, 0.301988,
		38.042290, 31.322269, 38.991394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978035, 30.605072, 39.539909>,  <38.028625, 30.655090, 38.780003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978035, 30.605072, 39.539909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859573, 30.971437, 39.431545>,  <37.788498, 31.191257, 39.366528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859573, 30.971437, 39.431545>,  <37.978035, 30.605072, 39.539909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859573, 30.971437, 39.431545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895185, -0.167255, 0.413122,
		0.333074, 0.364862, 0.869447,
		-0.296152, 0.915916, -0.270911,
		37.770729, 31.246212, 39.350273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764732, 31.035969, 40.184887>,  <37.978035, 30.605072, 39.539909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764732, 31.035969, 40.184887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567017, 31.177166, 39.867126>,  <37.448387, 31.261885, 39.676472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567017, 31.177166, 39.867126>,  <37.764732, 31.035969, 40.184887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567017, 31.177166, 39.867126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860566, -0.069519, 0.504573,
		0.122886, 0.933039, 0.338138,
		-0.494293, 0.352995, -0.794398,
		37.418728, 31.283064, 39.628807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293125, 31.395393, 40.461578>,  <37.764732, 31.035969, 40.184887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293125, 31.395393, 40.461578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157181, 31.364101, 40.086693>,  <37.075615, 31.345325, 39.861759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157181, 31.364101, 40.086693>,  <37.293125, 31.395393, 40.461578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157181, 31.364101, 40.086693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910366, -0.222777, 0.348719,
		-0.236071, 0.971726, 0.004494,
		-0.339860, -0.078231, -0.937217,
		37.055222, 31.340631, 39.805527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671787, 31.858500, 40.468765>,  <37.293125, 31.395393, 40.461578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671787, 31.858500, 40.468765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630169, 31.594503, 40.171154>,  <36.605198, 31.436106, 39.992588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630169, 31.594503, 40.171154>,  <36.671787, 31.858500, 40.468765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630169, 31.594503, 40.171154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949216, -0.157442, 0.272398,
		-0.296922, 0.734590, -0.610094,
		-0.104046, -0.659992, -0.744033,
		36.598953, 31.396505, 39.947945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064674, 32.064049, 40.224945>,  <36.671787, 31.858500, 40.468765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064674, 32.064049, 40.224945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115070, 31.686895, 40.101597>,  <36.145306, 31.460602, 40.027588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115070, 31.686895, 40.101597>,  <36.064674, 32.064049, 40.224945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115070, 31.686895, 40.101597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947571, -0.206396, 0.243948,
		-0.293662, 0.261470, -0.919454,
		0.125986, -0.942886, -0.308372,
		36.152866, 31.404030, 40.009087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393570, 31.901443, 39.843605>,  <36.064674, 32.064049, 40.224945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393570, 31.901443, 39.843605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549545, 31.551310, 39.957962>,  <35.643131, 31.341228, 40.026577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549545, 31.551310, 39.957962>,  <35.393570, 31.901443, 39.843605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549545, 31.551310, 39.957962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918487, -0.347545, 0.188663,
		-0.065783, -0.336157, -0.939506,
		0.389941, -0.875335, 0.285893,
		35.666527, 31.288710, 40.043732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921158, 31.412771, 39.618427>,  <35.393570, 31.901443, 39.843605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921158, 31.412771, 39.618427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130558, 31.194162, 39.879890>,  <35.256199, 31.062998, 40.036766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130558, 31.194162, 39.879890>,  <34.921158, 31.412771, 39.618427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130558, 31.194162, 39.879890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852024, -0.338215, 0.399582,
		0.002696, -0.766111, -0.642703,
		0.523496, -0.546521, 0.653656,
		35.287605, 31.030207, 40.075989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605091, 30.685593, 39.565521>,  <34.921158, 31.412771, 39.618427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605091, 30.685593, 39.565521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789379, 30.687595, 39.920532>,  <34.899952, 30.688797, 40.133537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789379, 30.687595, 39.920532>,  <34.605091, 30.685593, 39.565521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789379, 30.687595, 39.920532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857788, -0.254244, 0.446720,
		0.227886, -0.967127, -0.112842,
		0.460725, 0.005007, 0.887529,
		34.927597, 30.689096, 40.186790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451763, 29.989378, 39.999149>,  <34.605091, 30.685593, 39.565521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451763, 29.989378, 39.999149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578468, 30.263525, 40.261425>,  <34.654491, 30.428013, 40.418793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578468, 30.263525, 40.261425>,  <34.451763, 29.989378, 39.999149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578468, 30.263525, 40.261425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821948, -0.146644, 0.550362,
		0.473354, -0.713279, 0.516885,
		0.316763, 0.685368, 0.655692,
		34.673496, 30.469135, 40.458134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494007, 29.237291, 39.896706>,  <34.451763, 29.989378, 39.999149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494007, 29.237291, 39.896706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196774, 28.997746, 39.777248>,  <34.018433, 28.854017, 39.705574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196774, 28.997746, 39.777248>,  <34.494007, 29.237291, 39.896706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196774, 28.997746, 39.777248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362846, 0.014418, -0.931737,
		0.562293, -0.800719, 0.206583,
		-0.743081, -0.598867, -0.298645,
		33.973850, 28.818085, 39.687656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880836, 28.857792, 39.348824>,  <34.494007, 29.237291, 39.896706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880836, 28.857792, 39.348824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490032, 28.806942, 39.280365>,  <34.255550, 28.776432, 39.239288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490032, 28.806942, 39.280365>,  <34.880836, 28.857792, 39.348824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490032, 28.806942, 39.280365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158318, 0.105029, -0.981786,
		0.142791, -0.986310, -0.082488,
		-0.977009, -0.127131, -0.171147,
		34.196930, 28.768805, 39.229019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994022, 28.605934, 38.706890>,  <34.880836, 28.857792, 39.348824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994022, 28.605934, 38.706890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604542, 28.694780, 38.727192>,  <34.370853, 28.748087, 38.739372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604542, 28.694780, 38.727192>,  <34.994022, 28.605934, 38.706890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604542, 28.694780, 38.727192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026346, 0.111520, -0.993413,
		-0.226311, -0.968622, -0.102735,
		-0.973699, 0.222114, 0.050758,
		34.312431, 28.761414, 38.742420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614353, 28.156158, 38.126301>,  <34.994022, 28.605934, 38.706890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614353, 28.156158, 38.126301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387604, 28.471064, 38.223354>,  <34.251553, 28.660007, 38.281586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387604, 28.471064, 38.223354>,  <34.614353, 28.156158, 38.126301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387604, 28.471064, 38.223354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076132, 0.243201, -0.966983,
		-0.820280, -0.566628, -0.077928,
		-0.566872, 0.787264, 0.242632,
		34.217541, 28.707243, 38.296143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025928, 28.086954, 37.734383>,  <34.614353, 28.156158, 38.126301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025928, 28.086954, 37.734383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991165, 28.468393, 37.849689>,  <33.970306, 28.697256, 37.918873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991165, 28.468393, 37.849689>,  <34.025928, 28.086954, 37.734383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991165, 28.468393, 37.849689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119325, 0.277316, -0.953340,
		-0.989044, -0.117248, 0.089688,
		-0.086906, 0.953598, 0.288268,
		33.965092, 28.754473, 37.936169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304192, 28.430044, 37.486118>,  <34.025928, 28.086954, 37.734383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304192, 28.430044, 37.486118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588898, 28.707687, 37.529202>,  <33.759724, 28.874273, 37.555050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588898, 28.707687, 37.529202>,  <33.304192, 28.430044, 37.486118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588898, 28.707687, 37.529202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094215, 0.246289, -0.964606,
		-0.696068, 0.676428, 0.240696,
		0.711767, 0.694109, 0.107704,
		33.802429, 28.915920, 37.561512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068298, 28.987581, 37.055962>,  <33.304192, 28.430044, 37.486118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068298, 28.987581, 37.055962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459023, 29.056757, 37.106453>,  <33.693459, 29.098263, 37.136749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459023, 29.056757, 37.106453>,  <33.068298, 28.987581, 37.055962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459023, 29.056757, 37.106453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106823, 0.117288, -0.987336,
		-0.185556, 0.977924, 0.096094,
		0.976810, 0.172941, 0.126229,
		33.752064, 29.108639, 37.144321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105846, 29.580471, 36.709007>,  <33.068298, 28.987581, 37.055962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105846, 29.580471, 36.709007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480701, 29.450527, 36.759983>,  <33.705612, 29.372561, 36.790569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480701, 29.450527, 36.759983>,  <33.105846, 29.580471, 36.709007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480701, 29.450527, 36.759983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232324, 0.308312, -0.922480,
		0.260388, 0.894096, 0.364403,
		0.937136, -0.324862, 0.127439,
		33.761841, 29.353069, 36.798214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654842, 30.109646, 36.489662>,  <33.105846, 29.580471, 36.709007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654842, 30.109646, 36.489662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826962, 29.751131, 36.446743>,  <33.930233, 29.536022, 36.420990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826962, 29.751131, 36.446743>,  <33.654842, 30.109646, 36.489662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826962, 29.751131, 36.446743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254461, 0.234488, -0.938224,
		0.866077, 0.376416, 0.328970,
		0.430302, -0.896285, -0.107302,
		33.956051, 29.482246, 36.414551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243027, 30.229277, 36.140358>,  <33.654842, 30.109646, 36.489662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243027, 30.229277, 36.140358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173275, 29.840862, 36.075020>,  <34.131424, 29.607815, 36.035816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173275, 29.840862, 36.075020>,  <34.243027, 30.229277, 36.140358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173275, 29.840862, 36.075020> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415329, 0.077879, -0.906331,
		0.892801, -0.225891, 0.389718,
		-0.174381, -0.971034, -0.163349,
		34.120960, 29.549551, 36.026016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760571, 29.984613, 35.687965>,  <34.243027, 30.229277, 36.140358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760571, 29.984613, 35.687965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500656, 29.684149, 35.641430>,  <34.344707, 29.503870, 35.613510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500656, 29.684149, 35.641430>,  <34.760571, 29.984613, 35.687965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500656, 29.684149, 35.641430> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308304, -0.120550, -0.943619,
		0.694784, -0.649020, 0.309917,
		-0.649788, -0.751160, -0.116339,
		34.305721, 29.458801, 35.606529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172169, 29.543982, 35.433922>,  <34.760571, 29.984613, 35.687965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172169, 29.543982, 35.433922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798519, 29.452202, 35.324543>,  <34.574329, 29.397135, 35.258915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798519, 29.452202, 35.324543>,  <35.172169, 29.543982, 35.433922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798519, 29.452202, 35.324543> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297151, -0.075389, -0.951850,
		0.197788, -0.970396, 0.138604,
		-0.934121, -0.229451, -0.273443,
		34.518284, 29.383368, 35.242512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.232010, 28.115871, 43.290073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891567, 28.032040, 43.097534>,  <32.687302, 27.981741, 42.982010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.891567, 28.032040, 43.097534>,  <33.232010, 28.115871, 43.290073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891567, 28.032040, 43.097534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511481, -0.124335, -0.850252,
		0.118346, -0.969854, 0.213017,
		-0.851106, -0.209578, -0.481347,
		32.636234, 27.969166, 42.953129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339222, 27.391474, 42.873817>,  <33.232010, 28.115871, 43.290073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339222, 27.391474, 42.873817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.037743, 27.601929, 42.716274>,  <32.856853, 27.728201, 42.621750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.037743, 27.601929, 42.716274>,  <33.339222, 27.391474, 42.873817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037743, 27.601929, 42.716274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381819, -0.137233, -0.913992,
		-0.534934, -0.839254, -0.097457,
		-0.753697, 0.526137, -0.393854,
		32.811634, 27.759769, 42.598118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147453, 27.103975, 42.210861>,  <33.339222, 27.391474, 42.873817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147453, 27.103975, 42.210861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959602, 27.454906, 42.171371>,  <32.846893, 27.665464, 42.147678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.959602, 27.454906, 42.171371>,  <33.147453, 27.103975, 42.210861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959602, 27.454906, 42.171371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187050, -0.010406, -0.982295,
		-0.862822, -0.479780, -0.159217,
		-0.469629, 0.877327, -0.098721,
		32.818714, 27.718105, 42.141754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716846, 27.080391, 41.488487>,  <33.147453, 27.103975, 42.210861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716846, 27.080391, 41.488487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778809, 27.462755, 41.588276>,  <32.815987, 27.692175, 41.648148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778809, 27.462755, 41.588276>,  <32.716846, 27.080391, 41.488487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778809, 27.462755, 41.588276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157182, 0.225456, -0.961490,
		-0.975345, 0.188153, -0.115327,
		0.154906, 0.955912, 0.249472,
		32.825279, 27.749529, 41.663116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267162, 27.582565, 41.129303>,  <32.716846, 27.080391, 41.488487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267162, 27.582565, 41.129303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571804, 27.810957, 41.251904>,  <32.754589, 27.947992, 41.325462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.571804, 27.810957, 41.251904>,  <32.267162, 27.582565, 41.129303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571804, 27.810957, 41.251904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221501, 0.215118, -0.951137,
		-0.609013, 0.792280, 0.037362,
		0.761604, 0.570979, 0.306500,
		32.800285, 27.982250, 41.343853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262478, 28.228188, 40.676617>,  <32.267162, 27.582565, 41.129303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262478, 28.228188, 40.676617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.628090, 28.198082, 40.836060>,  <32.847458, 28.180019, 40.931725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.628090, 28.198082, 40.836060>,  <32.262478, 28.228188, 40.676617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628090, 28.198082, 40.836060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403101, 0.278587, -0.871722,
		-0.045439, 0.957457, 0.284975,
		0.914027, -0.075263, 0.398611,
		32.902298, 28.175503, 40.955643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551102, 28.843113, 40.530338>,  <32.262478, 28.228188, 40.676617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551102, 28.843113, 40.530338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854328, 28.594116, 40.608154>,  <33.036263, 28.444717, 40.654842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854328, 28.594116, 40.608154>,  <32.551102, 28.843113, 40.530338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854328, 28.594116, 40.608154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471557, 0.317105, -0.822848,
		0.450527, 0.715506, 0.533925,
		0.758063, -0.622491, 0.194537,
		33.081749, 28.407370, 40.666515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264618, 29.278351, 40.528679>,  <32.551102, 28.843113, 40.530338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264618, 29.278351, 40.528679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.355289, 28.901043, 40.431637>,  <33.409695, 28.674658, 40.373413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.355289, 28.901043, 40.431637>,  <33.264618, 29.278351, 40.528679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355289, 28.901043, 40.431637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394764, 0.316694, -0.862477,
		0.890380, 0.099737, 0.444158,
		0.226683, -0.943269, -0.242606,
		33.423294, 28.618063, 40.358856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856869, 29.356035, 40.334663>,  <33.264618, 29.278351, 40.528679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856869, 29.356035, 40.334663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769619, 28.993900, 40.188908>,  <33.717270, 28.776619, 40.101452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.769619, 28.993900, 40.188908>,  <33.856869, 29.356035, 40.334663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769619, 28.993900, 40.188908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491229, 0.220783, -0.842585,
		0.843277, -0.362789, 0.396571,
		-0.218124, -0.905339, -0.364394,
		33.704182, 28.722298, 40.079590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335579, 29.655342, 40.700977>,  <33.856869, 29.356035, 40.334663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335579, 29.655342, 40.700977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372803, 30.046106, 40.777901>,  <34.395138, 30.280565, 40.824055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.372803, 30.046106, 40.777901>,  <34.335579, 29.655342, 40.700977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372803, 30.046106, 40.777901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557113, -0.108989, 0.823254,
		0.825206, -0.183751, 0.534108,
		0.093062, 0.976912, 0.192309,
		34.400723, 30.339180, 40.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492290, 29.680443, 41.345486>,  <34.335579, 29.655342, 40.700977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492290, 29.680443, 41.345486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338634, 30.041454, 41.267632>,  <34.246441, 30.258060, 41.220921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.338634, 30.041454, 41.267632>,  <34.492290, 29.680443, 41.345486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338634, 30.041454, 41.267632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556673, -0.058220, 0.828689,
		0.736583, 0.426678, 0.524778,
		-0.384136, 0.902528, -0.194637,
		34.223392, 30.312212, 41.209240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532993, 30.041164, 41.987148>,  <34.492290, 29.680443, 41.345486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532993, 30.041164, 41.987148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263828, 30.255520, 41.783184>,  <34.102329, 30.384134, 41.660805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263828, 30.255520, 41.783184>,  <34.532993, 30.041164, 41.987148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263828, 30.255520, 41.783184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565128, 0.072349, 0.821825,
		0.477300, 0.841182, 0.254162,
		-0.672916, 0.535891, -0.509907,
		34.061954, 30.416286, 41.630211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379742, 30.639956, 42.337437>,  <34.532993, 30.041164, 41.987148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379742, 30.639956, 42.337437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056820, 30.628965, 42.101639>,  <33.863068, 30.622372, 41.960159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.056820, 30.628965, 42.101639>,  <34.379742, 30.639956, 42.337437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056820, 30.628965, 42.101639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581249, 0.209685, 0.786245,
		0.102004, 0.977383, -0.185251,
		-0.807307, -0.027477, -0.589492,
		33.814629, 30.620722, 41.924789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908306, 31.252245, 42.486717>,  <34.379742, 30.639956, 42.337437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908306, 31.252245, 42.486717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.675137, 30.973040, 42.320354>,  <33.535236, 30.805517, 42.220535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.675137, 30.973040, 42.320354>,  <33.908306, 31.252245, 42.486717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675137, 30.973040, 42.320354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599614, 0.024117, 0.799926,
		-0.548327, 0.715681, -0.432596,
		-0.582925, -0.698011, -0.415908,
		33.500259, 30.763636, 42.195583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311440, 31.472754, 42.633640>,  <33.908306, 31.252245, 42.486717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311440, 31.472754, 42.633640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212311, 31.093956, 42.551876>,  <33.152832, 30.866676, 42.502819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.212311, 31.093956, 42.551876>,  <33.311440, 31.472754, 42.633640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.212311, 31.093956, 42.551876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616931, -0.008421, 0.786972,
		-0.746980, 0.321135, -0.582144,
		-0.247822, -0.946996, -0.204409,
		33.137962, 30.809856, 42.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617592, 31.376501, 42.743477>,  <33.311440, 31.472754, 42.633640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617592, 31.376501, 42.743477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.762756, 31.004780, 42.770889>,  <32.849854, 30.781748, 42.787334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.762756, 31.004780, 42.770889>,  <32.617592, 31.376501, 42.743477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762756, 31.004780, 42.770889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437240, -0.104884, 0.893208,
		-0.822872, -0.354117, -0.444391,
		0.362910, -0.929301, 0.068528,
		32.871628, 30.725990, 42.791447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090015, 30.884922, 42.991848>,  <32.617592, 31.376501, 42.743477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090015, 30.884922, 42.991848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.450459, 30.735304, 43.079575>,  <32.666725, 30.645533, 43.132210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.450459, 30.735304, 43.079575>,  <32.090015, 30.884922, 42.991848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450459, 30.735304, 43.079575> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341373, -0.300142, 0.890718,
		-0.267339, -0.877501, -0.398147,
		0.901107, -0.374041, 0.219316,
		32.720791, 30.623091, 43.145367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974293, 30.308474, 43.401100>,  <32.090015, 30.884922, 42.991848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974293, 30.308474, 43.401100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.363667, 30.367735, 43.470924>,  <32.597290, 30.403292, 43.512821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.363667, 30.367735, 43.470924>,  <31.974293, 30.308474, 43.401100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.363667, 30.367735, 43.470924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129966, -0.270142, 0.954009,
		0.188496, -0.951354, -0.243711,
		0.973436, 0.148152, 0.174564,
		32.655697, 30.412180, 43.523293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191242, 29.745560, 43.761116>,  <31.974293, 30.308474, 43.401100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191242, 29.745560, 43.761116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.470367, 30.022327, 43.835194>,  <32.637844, 30.188389, 43.879642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.470367, 30.022327, 43.835194>,  <32.191242, 29.745560, 43.761116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470367, 30.022327, 43.835194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009254, -0.249824, 0.968247,
		0.716217, -0.677373, -0.167928,
		0.697817, 0.691921, 0.185197,
		32.679714, 30.229904, 43.890751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.699280, 29.403225, 44.213692>,  <32.191242, 29.745560, 43.761116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.699280, 29.403225, 44.213692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745903, 29.794588, 44.281971>,  <32.773876, 30.029406, 44.322937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.745903, 29.794588, 44.281971>,  <32.699280, 29.403225, 44.213692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745903, 29.794588, 44.281971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086440, -0.181207, 0.979639,
		0.989415, -0.099431, -0.105695,
		0.116559, 0.978406, 0.170694,
		32.780872, 30.088110, 44.333179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069805, 29.416534, 44.805298>,  <32.699280, 29.403225, 44.213692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069805, 29.416534, 44.805298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908314, 29.781284, 44.775665>,  <32.811420, 30.000134, 44.757885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.908314, 29.781284, 44.775665>,  <33.069805, 29.416534, 44.805298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908314, 29.781284, 44.775665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191259, -0.004941, 0.981527,
		0.894663, 0.410440, 0.176399,
		-0.403730, 0.911874, -0.074080,
		32.787193, 30.054846, 44.753441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468067, 29.820929, 45.287151>,  <33.069805, 29.416534, 44.805298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468067, 29.820929, 45.287151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132301, 30.032835, 45.238594>,  <32.930843, 30.159979, 45.209461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.132301, 30.032835, 45.238594>,  <33.468067, 29.820929, 45.287151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132301, 30.032835, 45.238594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108424, 0.055639, 0.992547,
		0.532572, 0.846317, 0.010736,
		-0.839412, 0.529766, -0.121392,
		32.880478, 30.191765, 45.202175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496586, 30.390446, 45.667416>,  <33.468067, 29.820929, 45.287151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496586, 30.390446, 45.667416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098877, 30.386646, 45.624817>,  <32.860252, 30.384367, 45.599258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.098877, 30.386646, 45.624817>,  <33.496586, 30.390446, 45.667416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098877, 30.386646, 45.624817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106789, 0.136639, 0.984848,
		0.005194, 0.990575, -0.136870,
		-0.994268, -0.009501, -0.106493,
		32.800598, 30.383797, 45.592869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.609964, 32.851402, 44.541588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855032, 32.543713, 44.614170>,  <29.002073, 32.359097, 44.657719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855032, 32.543713, 44.614170>,  <28.609964, 32.851402, 44.541588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855032, 32.543713, 44.614170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342455, 0.051461, -0.938124,
		0.712293, 0.636899, 0.294955,
		0.612669, -0.769228, 0.181453,
		29.038832, 32.312943, 44.668606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168882, 33.090370, 44.158321>,  <28.609964, 32.851402, 44.541588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168882, 33.090370, 44.158321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.223513, 32.699585, 44.223919>,  <29.256290, 32.465115, 44.263279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.223513, 32.699585, 44.223919>,  <29.168882, 33.090370, 44.158321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223513, 32.699585, 44.223919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362375, -0.104800, -0.926122,
		0.921972, 0.185913, 0.339713,
		0.136576, -0.976961, 0.163992,
		29.264486, 32.406498, 44.273117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771166, 33.008358, 43.805813>,  <29.168882, 33.090370, 44.158321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771166, 33.008358, 43.805813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599274, 32.648468, 43.836361>,  <29.496140, 32.432533, 43.854691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.599274, 32.648468, 43.836361>,  <29.771166, 33.008358, 43.805813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599274, 32.648468, 43.836361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282579, -0.214333, -0.934992,
		0.857603, -0.380212, 0.346348,
		-0.429729, -0.899722, 0.076372,
		29.470354, 32.378551, 43.859272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262676, 32.449635, 43.785980>,  <29.771166, 33.008358, 43.805813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262676, 32.449635, 43.785980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.916445, 32.276566, 43.685123>,  <29.708706, 32.172726, 43.624611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.916445, 32.276566, 43.685123>,  <30.262676, 32.449635, 43.785980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916445, 32.276566, 43.685123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338327, -0.134049, -0.931432,
		0.369205, -0.891530, 0.262414,
		-0.865576, -0.432671, -0.252138,
		29.656773, 32.146763, 43.609482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507265, 32.050953, 43.268864>,  <30.262676, 32.449635, 43.785980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507265, 32.050953, 43.268864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114403, 32.105164, 43.216709>,  <29.878685, 32.137691, 43.185417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.114403, 32.105164, 43.216709>,  <30.507265, 32.050953, 43.268864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114403, 32.105164, 43.216709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138910, 0.055395, -0.988755,
		-0.126780, -0.989224, -0.073232,
		-0.982156, 0.135527, -0.130390,
		29.819756, 32.145821, 43.177593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476137, 31.641136, 42.607430>,  <30.507265, 32.050953, 43.268864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476137, 31.641136, 42.607430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.133533, 31.844858, 42.640884>,  <29.927971, 31.967093, 42.660957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.133533, 31.844858, 42.640884>,  <30.476137, 31.641136, 42.607430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133533, 31.844858, 42.640884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108561, -0.019353, -0.993901,
		-0.504583, -0.860367, 0.071867,
		-0.856511, 0.509307, 0.083638,
		29.876579, 31.997650, 42.665977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142746, 31.334326, 42.119476>,  <30.476137, 31.641136, 42.607430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142746, 31.334326, 42.119476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957487, 31.676697, 42.211464>,  <29.846331, 31.882118, 42.266655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.957487, 31.676697, 42.211464>,  <30.142746, 31.334326, 42.119476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957487, 31.676697, 42.211464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152023, 0.178908, -0.972050,
		-0.873145, -0.485163, 0.047260,
		-0.463148, 0.855926, 0.229969,
		29.818542, 31.933474, 42.280457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.452059, 31.443052, 41.675030>,  <30.142746, 31.334326, 42.119476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.452059, 31.443052, 41.675030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556633, 31.815666, 41.776138>,  <29.619377, 32.039234, 41.836803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.556633, 31.815666, 41.776138>,  <29.452059, 31.443052, 41.675030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556633, 31.815666, 41.776138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107249, 0.232223, -0.966732,
		-0.959244, 0.279848, -0.039195,
		0.261436, 0.931535, 0.252772,
		29.635063, 32.095127, 41.851971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047153, 31.943504, 41.279167>,  <29.452059, 31.443052, 41.675030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047153, 31.943504, 41.279167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377924, 32.136887, 41.394032>,  <29.576385, 32.252914, 41.462952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377924, 32.136887, 41.394032>,  <29.047153, 31.943504, 41.279167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377924, 32.136887, 41.394032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130182, 0.332213, -0.934177,
		-0.547034, 0.809879, 0.211778,
		0.826926, 0.483457, 0.287164,
		29.626001, 32.281925, 41.480179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046242, 32.629826, 40.931587>,  <29.047153, 31.943504, 41.279167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046242, 32.629826, 40.931587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428722, 32.582474, 41.038666>,  <29.658211, 32.554062, 41.102913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.428722, 32.582474, 41.038666>,  <29.046242, 32.629826, 40.931587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.428722, 32.582474, 41.038666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292593, 0.361265, -0.885368,
		0.008099, 0.924918, 0.380080,
		0.956203, -0.118380, 0.267699,
		29.715584, 32.546959, 41.118977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352560, 33.309471, 40.834843>,  <29.046242, 32.629826, 40.931587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352560, 33.309471, 40.834843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.655523, 33.048336, 40.839619>,  <29.837301, 32.891655, 40.842484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.655523, 33.048336, 40.839619>,  <29.352560, 33.309471, 40.834843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655523, 33.048336, 40.839619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351034, 0.391713, -0.850492,
		0.550555, 0.648358, 0.525853,
		0.757406, -0.652835, 0.011936,
		29.882746, 32.852486, 40.843201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869812, 33.721752, 40.760944>,  <29.352560, 33.309471, 40.834843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869812, 33.721752, 40.760944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005703, 33.360710, 40.655205>,  <30.087238, 33.144085, 40.591759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.005703, 33.360710, 40.655205>,  <29.869812, 33.721752, 40.760944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005703, 33.360710, 40.655205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359597, 0.384370, -0.850264,
		0.869065, 0.193799, 0.455157,
		0.339729, -0.902608, -0.264353,
		30.107622, 33.089928, 40.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534386, 33.916172, 40.375320>,  <29.869812, 33.721752, 40.760944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534386, 33.916172, 40.375320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449886, 33.540462, 40.267147>,  <30.399187, 33.315037, 40.202244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.449886, 33.540462, 40.267147>,  <30.534386, 33.916172, 40.375320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449886, 33.540462, 40.267147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384440, 0.174531, -0.906501,
		0.898655, -0.295460, 0.324227,
		-0.211247, -0.939278, -0.270429,
		30.386513, 33.258678, 40.186020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135233, 33.719440, 39.952263>,  <30.534386, 33.916172, 40.375320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135233, 33.719440, 39.952263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.841042, 33.461262, 39.869820>,  <30.664528, 33.306355, 39.820354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.841042, 33.461262, 39.869820>,  <31.135233, 33.719440, 39.952263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841042, 33.461262, 39.869820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272327, -0.003062, -0.962200,
		0.620413, -0.763803, 0.178024,
		-0.735476, -0.645442, -0.206105,
		30.620399, 33.267628, 39.807987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792269, 33.457428, 40.220867>,  <31.135233, 33.719440, 39.952263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792269, 33.457428, 40.220867> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995398, 33.801666, 40.236351>,  <32.117275, 34.008209, 40.245644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.995398, 33.801666, 40.236351>,  <31.792269, 33.457428, 40.220867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.995398, 33.801666, 40.236351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484298, 0.248033, 0.839009,
		0.712443, -0.444814, 0.542739,
		0.507820, 0.860593, 0.038713,
		32.147743, 34.059845, 40.247967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092987, 33.460033, 40.715088>,  <31.792269, 33.457428, 40.220867>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092987, 33.460033, 40.715088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066494, 33.857574, 40.679592>,  <32.050598, 34.096100, 40.658295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.066494, 33.857574, 40.679592>,  <32.092987, 33.460033, 40.715088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066494, 33.857574, 40.679592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223610, 0.071889, 0.972024,
		0.972426, 0.084219, 0.217474,
		-0.066229, 0.993851, -0.088739,
		32.046627, 34.155731, 40.652969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463108, 33.694508, 41.307095>,  <32.092987, 33.460033, 40.715088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463108, 33.694508, 41.307095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224808, 33.990128, 41.181313>,  <32.081825, 34.167500, 41.105843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.224808, 33.990128, 41.181313>,  <32.463108, 33.694508, 41.307095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224808, 33.990128, 41.181313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213042, 0.232083, 0.949079,
		0.774397, 0.632409, 0.019184,
		-0.595753, 0.739051, -0.314454,
		32.046082, 34.211842, 41.086975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670197, 34.216099, 41.691589>,  <32.463108, 33.694508, 41.307095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670197, 34.216099, 41.691589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306053, 34.321079, 41.563614>,  <32.087566, 34.384068, 41.486828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.306053, 34.321079, 41.563614>,  <32.670197, 34.216099, 41.691589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306053, 34.321079, 41.563614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242925, 0.286976, 0.926624,
		0.335007, 0.921285, -0.197497,
		-0.910362, 0.262448, -0.319942,
		32.032944, 34.399815, 41.467632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526215, 34.800900, 42.122719>,  <32.670197, 34.216099, 41.691589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526215, 34.800900, 42.122719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.175308, 34.686733, 41.968346>,  <31.964764, 34.618233, 41.875721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.175308, 34.686733, 41.968346>,  <32.526215, 34.800900, 42.122719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175308, 34.686733, 41.968346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428536, 0.103491, 0.897578,
		-0.216245, 0.952799, -0.213101,
		-0.877266, -0.285418, -0.385929,
		31.912128, 34.601109, 41.852566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000053, 35.400635, 42.389503>,  <32.526215, 34.800900, 42.122719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000053, 35.400635, 42.389503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818130, 35.058235, 42.291180>,  <31.708977, 34.852795, 42.232185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.818130, 35.058235, 42.291180>,  <32.000053, 35.400635, 42.389503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818130, 35.058235, 42.291180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364077, -0.073189, 0.928489,
		-0.812774, 0.511775, -0.278362,
		-0.454804, -0.855997, -0.245811,
		31.681690, 34.801437, 42.217438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341463, 35.494553, 42.732723>,  <32.000053, 35.400635, 42.389503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341463, 35.494553, 42.732723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377523, 35.101109, 42.670250>,  <31.399158, 34.865044, 42.632767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377523, 35.101109, 42.670250>,  <31.341463, 35.494553, 42.732723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377523, 35.101109, 42.670250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552741, -0.179864, 0.813711,
		-0.828463, 0.012973, -0.559894,
		0.090149, -0.983606, -0.156182,
		31.404568, 34.806026, 42.623394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.665462, 35.231018, 42.828972>,  <31.341463, 35.494553, 42.732723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.665462, 35.231018, 42.828972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.930264, 34.946003, 42.921959>,  <31.089144, 34.774994, 42.977753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.930264, 34.946003, 42.921959>,  <30.665462, 35.231018, 42.828972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930264, 34.946003, 42.921959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384765, -0.056913, 0.921259,
		-0.643201, -0.699322, -0.311836,
		0.662004, -0.712537, 0.232468,
		31.128864, 34.732243, 42.991699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256348, 34.873119, 43.373329>,  <30.665462, 35.231018, 42.828972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256348, 34.873119, 43.373329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635635, 34.746693, 43.385838>,  <30.863209, 34.670837, 43.393341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635635, 34.746693, 43.385838>,  <30.256348, 34.873119, 43.373329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635635, 34.746693, 43.385838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098115, -0.197857, 0.975308,
		-0.302078, -0.927876, -0.218623,
		0.948221, -0.316069, 0.031270,
		30.920101, 34.651871, 43.395218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205364, 34.152096, 43.479679>,  <30.256348, 34.873119, 43.373329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205364, 34.152096, 43.479679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.568396, 34.269329, 43.599953>,  <30.786215, 34.339668, 43.672115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.568396, 34.269329, 43.599953>,  <30.205364, 34.152096, 43.479679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568396, 34.269329, 43.599953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226507, -0.261234, 0.938324,
		0.353553, -0.919706, -0.170705,
		0.907576, 0.293082, 0.300680,
		30.840668, 34.357254, 43.690155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514784, 33.550251, 43.840832>,  <30.205364, 34.152096, 43.479679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514784, 33.550251, 43.840832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714468, 33.874416, 43.963482>,  <30.834278, 34.068916, 44.037071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.714468, 33.874416, 43.963482>,  <30.514784, 33.550251, 43.840832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714468, 33.874416, 43.963482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181976, -0.247921, 0.951535,
		0.847157, -0.530813, 0.023712,
		0.499209, 0.810415, 0.306624,
		30.864231, 34.117542, 44.055470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079702, 33.356091, 44.329243>,  <30.514784, 33.550251, 43.840832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079702, 33.356091, 44.329243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989147, 33.735737, 44.416817>,  <30.934814, 33.963524, 44.469360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.989147, 33.735737, 44.416817>,  <31.079702, 33.356091, 44.329243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989147, 33.735737, 44.416817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118442, -0.249930, 0.960992,
		0.966809, 0.191626, 0.168996,
		-0.226388, 0.949112, 0.218938,
		30.921230, 34.020470, 44.482498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601034, 33.623016, 44.874294>,  <31.079702, 33.356091, 44.329243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601034, 33.623016, 44.874294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277000, 33.855255, 44.906963>,  <31.082581, 33.994598, 44.926567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.277000, 33.855255, 44.906963>,  <31.601034, 33.623016, 44.874294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277000, 33.855255, 44.906963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018513, -0.113906, 0.993319,
		0.586018, 0.806186, 0.081525,
		-0.810086, 0.580594, 0.081676,
		31.033974, 34.029434, 44.931465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699062, 33.931782, 45.510933>,  <31.601034, 33.623016, 44.874294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699062, 33.931782, 45.510933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332949, 34.085464, 45.462528>,  <31.113281, 34.177673, 45.433487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.332949, 34.085464, 45.462528>,  <31.699062, 33.931782, 45.510933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332949, 34.085464, 45.462528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174434, -0.107264, 0.978809,
		0.363086, 0.916995, 0.165195,
		-0.915282, 0.384208, -0.121009,
		31.058365, 34.200726, 45.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177170, 34.430210, 45.864040>,  <31.699062, 33.931782, 45.510933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177170, 34.430210, 45.864040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543407, 34.419334, 46.024509>,  <32.763149, 34.412807, 46.120792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.543407, 34.419334, 46.024509>,  <32.177170, 34.430210, 45.864040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543407, 34.419334, 46.024509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377153, 0.404005, -0.833388,
		-0.139418, 0.914353, 0.380160,
		0.915597, -0.027189, 0.401176,
		32.818085, 34.411179, 46.144863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456032, 34.968735, 45.584869>,  <32.177170, 34.430210, 45.864040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456032, 34.968735, 45.584869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754429, 34.728004, 45.698929>,  <32.933468, 34.583569, 45.767365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.754429, 34.728004, 45.698929>,  <32.456032, 34.968735, 45.584869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754429, 34.728004, 45.698929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466371, 0.166454, -0.868788,
		0.475391, 0.781091, 0.404845,
		0.745990, -0.601822, 0.285147,
		32.978226, 34.547459, 45.784473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024822, 35.395184, 45.559837>,  <32.456032, 34.968735, 45.584869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024822, 35.395184, 45.559837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156975, 35.018009, 45.543251>,  <33.236267, 34.791706, 45.533298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.156975, 35.018009, 45.543251>,  <33.024822, 35.395184, 45.559837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156975, 35.018009, 45.543251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408409, 0.182424, -0.894385,
		0.850911, 0.278555, 0.445373,
		0.330382, -0.942936, -0.041462,
		33.256088, 34.735126, 45.530811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684303, 35.538906, 45.494366>,  <33.024822, 35.395184, 45.559837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684303, 35.538906, 45.494366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626408, 35.170914, 45.348660>,  <33.591671, 34.950119, 45.261234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.626408, 35.170914, 45.348660>,  <33.684303, 35.538906, 45.494366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626408, 35.170914, 45.348660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573834, 0.221867, -0.788346,
		0.806080, -0.323134, 0.495802,
		-0.144739, -0.919978, -0.364268,
		33.582985, 34.894920, 45.239380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436386, 35.243172, 45.303425>,  <33.684303, 35.538906, 45.494366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436386, 35.243172, 45.303425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155399, 35.026024, 45.119324>,  <33.986805, 34.895737, 45.008862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.155399, 35.026024, 45.119324>,  <34.436386, 35.243172, 45.303425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155399, 35.026024, 45.119324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456145, 0.152993, -0.876656,
		0.546323, -0.825766, 0.140153,
		-0.702469, -0.542867, -0.460252,
		33.944660, 34.863163, 44.981247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847862, 34.833546, 44.866493>,  <34.436386, 35.243172, 45.303425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847862, 34.833546, 44.866493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483875, 34.828957, 44.700687>,  <34.265484, 34.826202, 44.601204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483875, 34.828957, 44.700687>,  <34.847862, 34.833546, 44.866493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483875, 34.828957, 44.700687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409665, 0.130035, -0.902921,
		0.064260, -0.991443, -0.113628,
		-0.909970, -0.011473, -0.414515,
		34.210884, 34.825516, 44.576332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983696, 34.696342, 44.173565>,  <34.847862, 34.833546, 44.866493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983696, 34.696342, 44.173565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600307, 34.802952, 44.132988>,  <34.370274, 34.866917, 44.108643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600307, 34.802952, 44.132988>,  <34.983696, 34.696342, 44.173565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600307, 34.802952, 44.132988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159853, 0.207556, -0.965074,
		-0.236159, -0.941215, -0.241542,
		-0.958476, 0.266522, -0.101440,
		34.312763, 34.882908, 44.102554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711319, 34.281330, 43.750046>,  <34.983696, 34.696342, 44.173565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711319, 34.281330, 43.750046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485455, 34.611008, 43.732754>,  <34.349937, 34.808815, 43.722378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.485455, 34.611008, 43.732754>,  <34.711319, 34.281330, 43.750046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485455, 34.611008, 43.732754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223083, 0.101993, -0.969449,
		-0.794601, -0.557054, -0.241454,
		-0.564662, 0.824190, -0.043226,
		34.316055, 34.858265, 43.719788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170494, 34.203888, 43.128960>,  <34.711319, 34.281330, 43.750046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170494, 34.203888, 43.128960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246117, 34.582062, 43.235096>,  <34.291489, 34.808968, 43.298779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.246117, 34.582062, 43.235096>,  <34.170494, 34.203888, 43.128960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246117, 34.582062, 43.235096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211914, 0.224561, -0.951139,
		-0.958828, 0.236045, -0.157897,
		0.189054, 0.945439, 0.265336,
		34.302834, 34.865692, 43.314697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890289, 34.658978, 42.704941>,  <34.170494, 34.203888, 43.128960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890289, 34.658978, 42.704941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173855, 34.892464, 42.863289>,  <34.343994, 35.032555, 42.958298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.173855, 34.892464, 42.863289>,  <33.890289, 34.658978, 42.704941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173855, 34.892464, 42.863289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229716, 0.339585, -0.912092,
		-0.666838, 0.737532, 0.106646,
		0.708913, 0.583719, 0.395871,
		34.386528, 35.067581, 42.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858654, 35.367432, 42.434422>,  <33.890289, 34.658978, 42.704941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858654, 35.367432, 42.434422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227409, 35.334229, 42.585808>,  <34.448662, 35.314304, 42.676640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.227409, 35.334229, 42.585808>,  <33.858654, 35.367432, 42.434422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227409, 35.334229, 42.585808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376294, 0.424640, -0.823458,
		-0.092354, 0.901549, 0.422707,
		0.921886, -0.083012, 0.378464,
		34.503975, 35.309326, 42.699348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162289, 35.892834, 42.199486>,  <33.858654, 35.367432, 42.434422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162289, 35.892834, 42.199486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499004, 35.708710, 42.312275>,  <34.701035, 35.598236, 42.379948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.499004, 35.708710, 42.312275>,  <34.162289, 35.892834, 42.199486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499004, 35.708710, 42.312275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497901, 0.460309, -0.734990,
		0.208529, 0.759099, 0.616672,
		0.841790, -0.460308, 0.281969,
		34.751541, 35.570618, 42.396866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674805, 36.394203, 42.022018>,  <34.162289, 35.892834, 42.199486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674805, 36.394203, 42.022018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894363, 36.060856, 42.047993>,  <35.026096, 35.860847, 42.063580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894363, 36.060856, 42.047993>,  <34.674805, 36.394203, 42.022018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894363, 36.060856, 42.047993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524966, 0.283224, -0.802617,
		0.650481, 0.474642, 0.592949,
		0.548894, -0.833366, 0.064939,
		35.059032, 35.810844, 42.067474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375973, 36.617352, 41.927238>,  <34.674805, 36.394203, 42.022018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375973, 36.617352, 41.927238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330894, 36.235180, 41.818089>,  <35.303848, 36.005878, 41.752598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330894, 36.235180, 41.818089>,  <35.375973, 36.617352, 41.927238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330894, 36.235180, 41.818089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524653, 0.176007, -0.832923,
		0.843825, -0.237029, 0.481432,
		-0.112692, -0.955426, -0.272877,
		35.297089, 35.948551, 41.736225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.592222, 37.074890, 41.013458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793299, 37.385262, 40.861015>,  <29.913944, 37.571484, 40.769550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.793299, 37.385262, 40.861015>,  <29.592222, 37.074890, 41.013458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.793299, 37.385262, 40.861015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452530, -0.139428, -0.880782,
		-0.736559, 0.615220, 0.281042,
		0.502689, 0.775928, -0.381103,
		29.944105, 37.618038, 40.746685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128027, 37.610497, 40.771854>,  <29.592222, 37.074890, 41.013458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128027, 37.610497, 40.771854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451229, 37.632935, 40.537254>,  <29.645149, 37.646397, 40.396496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.451229, 37.632935, 40.537254>,  <29.128027, 37.610497, 40.771854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451229, 37.632935, 40.537254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575154, -0.140794, -0.805838,
		-0.127781, 0.988448, -0.081497,
		0.808003, 0.056097, -0.586501,
		29.693630, 37.649765, 40.361305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905075, 37.851997, 40.162956>,  <29.128027, 37.610497, 40.771854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905075, 37.851997, 40.162956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252514, 37.725777, 40.010132>,  <29.460978, 37.650043, 39.918438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.252514, 37.725777, 40.010132>,  <28.905075, 37.851997, 40.162956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252514, 37.725777, 40.010132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434562, -0.114575, -0.893324,
		0.238114, 0.941966, -0.236646,
		0.868595, -0.315551, -0.382061,
		29.513092, 37.631111, 39.895515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044806, 38.316071, 39.496685>,  <28.905075, 37.851997, 40.162956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044806, 38.316071, 39.496685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228962, 37.961617, 39.517876>,  <29.339455, 37.748943, 39.530590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228962, 37.961617, 39.517876>,  <29.044806, 38.316071, 39.496685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228962, 37.961617, 39.517876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343338, -0.232779, -0.909908,
		0.818633, 0.400723, -0.411413,
		0.460390, -0.886135, 0.052977,
		29.367079, 37.695778, 39.533768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523979, 38.374058, 38.941357>,  <29.044806, 38.316071, 39.496685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523979, 38.374058, 38.941357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495626, 37.979263, 38.999092>,  <29.478615, 37.742386, 39.033733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495626, 37.979263, 38.999092>,  <29.523979, 38.374058, 38.941357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495626, 37.979263, 38.999092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255850, -0.121872, -0.959004,
		0.964115, -0.104902, -0.243882,
		-0.070879, -0.986987, 0.144338,
		29.474363, 37.683167, 39.042393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708229, 38.087612, 38.276611>,  <29.523979, 38.374058, 38.941357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708229, 38.087612, 38.276611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509493, 37.794418, 38.462463>,  <29.390251, 37.618500, 38.573975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.509493, 37.794418, 38.462463>,  <29.708229, 38.087612, 38.276611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.509493, 37.794418, 38.462463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374004, -0.302266, -0.876787,
		0.783116, -0.609395, -0.123962,
		-0.496840, -0.732989, 0.464626,
		29.360441, 37.574520, 38.601852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817791, 37.474873, 37.896793>,  <29.708229, 38.087612, 38.276611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817791, 37.474873, 37.896793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481617, 37.412743, 38.104462>,  <29.279913, 37.375465, 38.229061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.481617, 37.412743, 38.104462>,  <29.817791, 37.474873, 37.896793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481617, 37.412743, 38.104462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427473, -0.398805, -0.811309,
		0.333067, -0.903785, 0.268772,
		-0.840437, -0.155327, 0.519172,
		29.229486, 37.366146, 38.260212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617893, 36.687408, 37.674942>,  <29.817791, 37.474873, 37.896793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617893, 36.687408, 37.674942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283255, 36.817017, 37.851631>,  <29.082472, 36.894779, 37.957645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283255, 36.817017, 37.851631>,  <29.617893, 36.687408, 37.674942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283255, 36.817017, 37.851631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547800, -0.502020, -0.669247,
		0.004909, -0.801866, 0.597483,
		-0.836595, 0.324016, 0.441727,
		29.032276, 36.914223, 37.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188641, 36.110054, 37.970119>,  <29.617893, 36.687408, 37.674942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188641, 36.110054, 37.970119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972166, 36.429806, 37.865730>,  <28.842281, 36.621658, 37.803097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972166, 36.429806, 37.865730>,  <29.188641, 36.110054, 37.970119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972166, 36.429806, 37.865730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558823, -0.573793, -0.598730,
		-0.628357, -0.178189, 0.757242,
		-0.541188, 0.799381, -0.260972,
		28.809809, 36.669621, 37.787437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542887, 35.781586, 37.895596>,  <29.188641, 36.110054, 37.970119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542887, 35.781586, 37.895596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483707, 36.131954, 37.711910>,  <28.448200, 36.342175, 37.601700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.483707, 36.131954, 37.711910>,  <28.542887, 35.781586, 37.895596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483707, 36.131954, 37.711910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566539, -0.455653, -0.686596,
		-0.810645, 0.158585, 0.563654,
		-0.147947, 0.875917, -0.459217,
		28.439323, 36.394730, 37.574146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.849333, 35.858166, 37.851761>,  <28.542887, 35.781586, 37.895596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.849333, 35.858166, 37.851761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969894, 36.115265, 37.570042>,  <28.042231, 36.269524, 37.401009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.969894, 36.115265, 37.570042>,  <27.849333, 35.858166, 37.851761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.969894, 36.115265, 37.570042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645324, -0.406261, -0.646923,
		-0.701935, 0.649485, 0.292330,
		0.301404, 0.642746, -0.704296,
		28.060316, 36.308090, 37.358753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253443, 36.063702, 37.592209>,  <27.849333, 35.858166, 37.851761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253443, 36.063702, 37.592209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546272, 36.122429, 37.326122>,  <27.721970, 36.157665, 37.166470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.546272, 36.122429, 37.326122>,  <27.253443, 36.063702, 37.592209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546272, 36.122429, 37.326122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563210, -0.418885, -0.712271,
		-0.383223, 0.896092, -0.223965,
		0.732075, 0.146819, -0.665214,
		27.765896, 36.166473, 37.126556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898115, 36.146862, 37.016575>,  <27.253443, 36.063702, 37.592209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898115, 36.146862, 37.016575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262978, 36.060974, 36.876942>,  <27.481895, 36.009441, 36.793159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.262978, 36.060974, 36.876942>,  <26.898115, 36.146862, 37.016575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.262978, 36.060974, 36.876942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407081, -0.573322, -0.711047,
		-0.047461, 0.790693, -0.610370,
		0.912158, -0.214723, -0.349087,
		27.536625, 35.996559, 36.772217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.878073, 36.314548, 36.299194>,  <26.898115, 36.146862, 37.016575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.878073, 36.314548, 36.299194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167307, 36.044334, 36.356892>,  <27.340847, 35.882206, 36.391510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.167307, 36.044334, 36.356892>,  <26.878073, 36.314548, 36.299194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167307, 36.044334, 36.356892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397853, -0.577995, -0.712485,
		0.564679, 0.457798, -0.686701,
		0.723084, -0.675531, 0.144245,
		27.384232, 35.841675, 36.400166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108101, 36.131130, 35.638115>,  <26.878073, 36.314548, 36.299194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108101, 36.131130, 35.638115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220383, 35.840408, 35.888859>,  <27.287752, 35.665974, 36.039307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.220383, 35.840408, 35.888859>,  <27.108101, 36.131130, 35.638115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220383, 35.840408, 35.888859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328358, -0.686431, -0.648840,
		0.901879, -0.023703, -0.431337,
		0.280704, -0.726809, 0.626861,
		27.304594, 35.622364, 36.076916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398531, 35.550598, 35.194386>,  <27.108101, 36.131130, 35.638115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398531, 35.550598, 35.194386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318155, 35.356098, 35.534546>,  <27.269930, 35.239399, 35.738644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318155, 35.356098, 35.534546>,  <27.398531, 35.550598, 35.194386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318155, 35.356098, 35.534546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188206, -0.832771, -0.520645,
		0.961354, -0.264669, 0.075822,
		-0.200941, -0.486254, 0.850400,
		27.257874, 35.210220, 35.789665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631405, 34.851055, 35.061543>,  <27.398531, 35.550598, 35.194386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631405, 34.851055, 35.061543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.404942, 34.800499, 35.387363>,  <27.269064, 34.770164, 35.582855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.404942, 34.800499, 35.387363>,  <27.631405, 34.851055, 35.061543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.404942, 34.800499, 35.387363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372236, -0.842478, -0.389448,
		0.735461, -0.523695, 0.429932,
		-0.566160, -0.126388, 0.814548,
		27.235094, 34.762581, 35.631729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754023, 34.158459, 35.282669>,  <27.631405, 34.851055, 35.061543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754023, 34.158459, 35.282669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403040, 34.284554, 35.427277>,  <27.192450, 34.360210, 35.514042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.403040, 34.284554, 35.427277>,  <27.754023, 34.158459, 35.282669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.403040, 34.284554, 35.427277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472195, -0.700117, -0.535601,
		0.084261, -0.640673, 0.763176,
		-0.877458, 0.315238, 0.361515,
		27.139803, 34.379124, 35.535732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473288, 33.539692, 35.483166>,  <27.754023, 34.158459, 35.282669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473288, 33.539692, 35.483166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168745, 33.791973, 35.423092>,  <26.986019, 33.943340, 35.387047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.168745, 33.791973, 35.423092>,  <27.473288, 33.539692, 35.483166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.168745, 33.791973, 35.423092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459150, -0.688070, -0.561908,
		-0.457733, -0.358855, 0.813452,
		-0.761355, 0.630701, -0.150183,
		26.940338, 33.981182, 35.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321812, 32.982277, 35.197399>,  <27.473288, 33.539692, 35.483166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321812, 32.982277, 35.197399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.643955, 32.804436, 35.354229>,  <27.837242, 32.697731, 35.448326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.643955, 32.804436, 35.354229>,  <27.321812, 32.982277, 35.197399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643955, 32.804436, 35.354229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442240, -0.010201, 0.896839,
		-0.394740, -0.895669, -0.204837,
		0.805360, -0.444605, 0.392073,
		27.885563, 32.671055, 35.471851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100454, 32.420670, 35.566910>,  <27.321812, 32.982277, 35.197399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100454, 32.420670, 35.566910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461767, 32.507767, 35.714783>,  <27.678555, 32.560024, 35.803505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.461767, 32.507767, 35.714783>,  <27.100454, 32.420670, 35.566910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461767, 32.507767, 35.714783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371319, -0.034921, 0.927848,
		0.214943, -0.975381, 0.049309,
		0.903284, 0.217744, 0.369683,
		27.732752, 32.573090, 35.825687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.100828, 32.162468, 36.213486>,  <27.100454, 32.420670, 35.566910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.100828, 32.162468, 36.213486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420954, 32.393147, 36.279110>,  <27.613029, 32.531555, 36.318485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.420954, 32.393147, 36.279110>,  <27.100828, 32.162468, 36.213486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420954, 32.393147, 36.279110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302988, 0.152877, 0.940652,
		0.517392, -0.802526, 0.297082,
		0.800315, 0.576698, 0.164059,
		27.661049, 32.566154, 36.328327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461838, 31.988735, 36.922909>,  <27.100828, 32.162468, 36.213486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461838, 31.988735, 36.922909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552477, 32.365574, 36.824032>,  <27.606861, 32.591679, 36.764706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.552477, 32.365574, 36.824032>,  <27.461838, 31.988735, 36.922909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.552477, 32.365574, 36.824032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209325, 0.294973, 0.932295,
		0.951229, -0.159512, 0.264045,
		0.226598, 0.942097, -0.247197,
		27.620457, 32.648205, 36.749874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883013, 32.226528, 37.466717>,  <27.461838, 31.988735, 36.922909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883013, 32.226528, 37.466717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752998, 32.563675, 37.295166>,  <27.674990, 32.765961, 37.192238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.752998, 32.563675, 37.295166>,  <27.883013, 32.226528, 37.466717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752998, 32.563675, 37.295166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231983, 0.368581, 0.900184,
		0.916807, 0.392084, 0.075727,
		-0.325036, 0.842863, -0.428875,
		27.655487, 32.816532, 37.166504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141312, 32.794933, 37.874413>,  <27.883013, 32.226528, 37.466717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141312, 32.794933, 37.874413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849730, 32.953281, 37.651016>,  <27.674780, 33.048290, 37.516979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.849730, 32.953281, 37.651016>,  <28.141312, 32.794933, 37.874413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849730, 32.953281, 37.651016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225384, 0.631559, 0.741845,
		0.646397, 0.666645, -0.371154,
		-0.728954, 0.395874, -0.558489,
		27.631044, 33.072044, 37.483471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101393, 33.528572, 37.988827>,  <28.141312, 32.794933, 37.874413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101393, 33.528572, 37.988827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735792, 33.460339, 37.841587>,  <27.516432, 33.419399, 37.753242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.735792, 33.460339, 37.841587>,  <28.101393, 33.528572, 37.988827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735792, 33.460339, 37.841587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390396, 0.616706, 0.683568,
		0.110403, 0.768488, -0.630267,
		-0.914003, -0.170586, -0.368101,
		27.461592, 33.409164, 37.731155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865164, 34.121964, 37.915668>,  <28.101393, 33.528572, 37.988827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865164, 34.121964, 37.915668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540236, 33.889721, 37.937683>,  <27.345278, 33.750374, 37.950893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540236, 33.889721, 37.937683>,  <27.865164, 34.121964, 37.915668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540236, 33.889721, 37.937683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354813, 0.566890, 0.743467,
		-0.462865, 0.584405, -0.666504,
		-0.812320, -0.580609, 0.055039,
		27.296539, 33.715538, 37.954193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274632, 34.598511, 37.870872>,  <27.865164, 34.121964, 37.915668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274632, 34.598511, 37.870872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162539, 34.261864, 38.055542>,  <27.095282, 34.059875, 38.166344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.162539, 34.261864, 38.055542>,  <27.274632, 34.598511, 37.870872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162539, 34.261864, 38.055542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411932, 0.539844, 0.734085,
		-0.867053, 0.015537, -0.497973,
		-0.280234, -0.841622, 0.461674,
		27.078468, 34.009377, 38.194042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611460, 34.790287, 38.220284>,  <27.274632, 34.598511, 37.870872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611460, 34.790287, 38.220284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702991, 34.442753, 38.395905>,  <26.757910, 34.234234, 38.501278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.702991, 34.442753, 38.395905>,  <26.611460, 34.790287, 38.220284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702991, 34.442753, 38.395905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335655, 0.352939, 0.873367,
		-0.913769, -0.347220, -0.210867,
		0.228827, -0.868834, 0.439051,
		26.771639, 34.182102, 38.527618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.168737, 34.835468, 38.717487>,  <26.611460, 34.790287, 38.220284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.168737, 34.835468, 38.717487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425030, 34.550442, 38.831825>,  <26.578804, 34.379425, 38.900429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425030, 34.550442, 38.831825>,  <26.168737, 34.835468, 38.717487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425030, 34.550442, 38.831825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061486, 0.323490, 0.944232,
		-0.765300, -0.622573, 0.163457,
		0.640730, -0.712570, 0.285847,
		26.617249, 34.336670, 38.917580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832436, 34.422375, 39.298241>,  <26.168737, 34.835468, 38.717487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832436, 34.422375, 39.298241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228174, 34.377007, 39.334740>,  <26.465618, 34.349785, 39.356640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.228174, 34.377007, 39.334740>,  <25.832436, 34.422375, 39.298241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.228174, 34.377007, 39.334740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049504, 0.327310, 0.943619,
		-0.136894, -0.938085, 0.318209,
		0.989348, -0.113424, 0.091246,
		26.524979, 34.342979, 39.362114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864141, 34.224453, 39.998821>,  <25.832436, 34.422375, 39.298241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864141, 34.224453, 39.998821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234024, 34.338055, 39.897423>,  <26.455954, 34.406216, 39.836586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.234024, 34.338055, 39.897423>,  <25.864141, 34.224453, 39.998821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234024, 34.338055, 39.897423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131120, 0.387525, 0.912486,
		0.357382, -0.877022, 0.321110,
		0.924709, 0.284002, -0.253490,
		26.511436, 34.423256, 39.821377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263285, 34.060886, 40.602444>,  <25.864141, 34.224453, 39.998821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263285, 34.060886, 40.602444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509031, 34.303711, 40.400841>,  <26.656479, 34.449406, 40.279877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509031, 34.303711, 40.400841>,  <26.263285, 34.060886, 40.602444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509031, 34.303711, 40.400841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242035, 0.462985, 0.852681,
		0.750980, -0.645848, 0.137513,
		0.614368, 0.607063, -0.504010,
		26.693342, 34.485828, 40.249638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942568, 34.045975, 40.940090>,  <26.263285, 34.060886, 40.602444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942568, 34.045975, 40.940090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871815, 34.379333, 40.730644>,  <26.829363, 34.579350, 40.604977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.871815, 34.379333, 40.730644>,  <26.942568, 34.045975, 40.940090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.871815, 34.379333, 40.730644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174778, 0.550141, 0.816577,
		0.968589, 0.052923, -0.242969,
		-0.176883, 0.833393, -0.523611,
		26.818750, 34.629353, 40.573563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465508, 34.360332, 41.161476>,  <26.942568, 34.045975, 40.940090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465508, 34.360332, 41.161476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270966, 34.673664, 41.006630>,  <27.154240, 34.861664, 40.913723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.270966, 34.673664, 41.006630>,  <27.465508, 34.360332, 41.161476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270966, 34.673664, 41.006630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270637, 0.556308, 0.785670,
		0.830790, 0.277349, -0.482561,
		-0.486357, 0.783326, -0.387114,
		27.125059, 34.908661, 40.890495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885687, 34.997463, 41.055084>,  <27.465508, 34.360332, 41.161476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885687, 34.997463, 41.055084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514301, 35.144138, 41.078732>,  <27.291470, 35.232143, 41.092918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514301, 35.144138, 41.078732>,  <27.885687, 34.997463, 41.055084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514301, 35.144138, 41.078732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275985, 0.574593, 0.770503,
		0.248562, 0.731701, -0.634689,
		-0.928466, 0.366683, 0.059117,
		27.235762, 35.254143, 41.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990646, 35.707443, 41.009232>,  <27.885687, 34.997463, 41.055084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990646, 35.707443, 41.009232> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628284, 35.653221, 41.169712>,  <27.410868, 35.620689, 41.265999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628284, 35.653221, 41.169712>,  <27.990646, 35.707443, 41.009232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628284, 35.653221, 41.169712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134932, 0.805616, 0.576867,
		-0.401411, 0.576721, -0.711521,
		-0.905904, -0.135554, 0.401201,
		27.356514, 35.612556, 41.290073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785694, 36.423847, 41.115860>,  <27.990646, 35.707443, 41.009232>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785694, 36.423847, 41.115860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570343, 36.172737, 41.340733>,  <27.441132, 36.022072, 41.475655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.570343, 36.172737, 41.340733>,  <27.785694, 36.423847, 41.115860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570343, 36.172737, 41.340733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205319, 0.744732, 0.634995,
		-0.817308, 0.226441, -0.529842,
		-0.538379, -0.627773, 0.562182,
		27.408829, 35.984406, 41.509388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065145, 36.800709, 41.351768>,  <27.785694, 36.423847, 41.115860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065145, 36.800709, 41.351768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112190, 36.512684, 41.625317>,  <27.140417, 36.339870, 41.789444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112190, 36.512684, 41.625317>,  <27.065145, 36.800709, 41.351768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112190, 36.512684, 41.625317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346362, 0.615662, 0.707809,
		-0.930699, -0.320114, -0.176993,
		0.117612, -0.720061, 0.683871,
		27.147474, 36.296665, 41.830479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.531050, 36.940495, 41.870003>,  <27.065145, 36.800709, 41.351768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.531050, 36.940495, 41.870003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791039, 36.706234, 42.063725>,  <26.947031, 36.565678, 42.179958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.791039, 36.706234, 42.063725>,  <26.531050, 36.940495, 41.870003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.791039, 36.706234, 42.063725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065177, 0.677888, 0.732270,
		-0.757158, -0.444390, 0.478779,
		0.649972, -0.585650, 0.484304,
		26.986031, 36.530540, 42.209015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574169, 37.224735, 42.481789>,  <26.531050, 36.940495, 41.870003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574169, 37.224735, 42.481789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890078, 36.980476, 42.505001>,  <27.079622, 36.833920, 42.518929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890078, 36.980476, 42.505001>,  <26.574169, 37.224735, 42.481789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890078, 36.980476, 42.505001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408362, 0.594015, 0.693099,
		-0.457713, -0.523692, 0.718502,
		0.789772, -0.610649, 0.058033,
		27.127008, 36.797283, 42.522411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622852, 36.875645, 43.184044>,  <26.574169, 37.224735, 42.481789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622852, 36.875645, 43.184044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972164, 36.920033, 42.994278>,  <27.181751, 36.946667, 42.880421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972164, 36.920033, 42.994278>,  <26.622852, 36.875645, 43.184044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972164, 36.920033, 42.994278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340465, 0.557530, 0.757129,
		0.348519, -0.822706, 0.449098,
		0.873280, 0.110971, -0.474413,
		27.234148, 36.953323, 42.851955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.987244, 31.273554, 46.018059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759075, 30.945215, 46.006470>,  <32.622173, 30.748213, 45.999516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759075, 30.945215, 46.006470>,  <32.987244, 31.273554, 46.018059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759075, 30.945215, 46.006470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148165, 0.068143, 0.986612,
		-0.807881, 0.567072, -0.160490,
		-0.570417, -0.820844, -0.028969,
		32.587952, 30.698961, 45.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539089, 31.487059, 46.528191>,  <32.987244, 31.273554, 46.018059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539089, 31.487059, 46.528191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455250, 31.100315, 46.469875>,  <32.404945, 30.868269, 46.434887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455250, 31.100315, 46.469875>,  <32.539089, 31.487059, 46.528191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455250, 31.100315, 46.469875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363754, -0.061293, 0.929476,
		-0.907608, 0.247847, -0.338851,
		-0.209599, -0.966858, -0.145786,
		32.392368, 30.810257, 46.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845476, 31.335976, 46.760544>,  <32.539089, 31.487059, 46.528191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845476, 31.335976, 46.760544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048759, 30.991722, 46.773426>,  <32.170731, 30.785170, 46.781155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048759, 30.991722, 46.773426>,  <31.845476, 31.335976, 46.760544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048759, 30.991722, 46.773426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186132, -0.073248, 0.979791,
		-0.840880, -0.503932, -0.197417,
		0.508208, -0.860632, 0.032205,
		32.201221, 30.733532, 46.783089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488329, 30.835995, 47.123745>,  <31.845476, 31.335976, 46.760544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488329, 30.835995, 47.123745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846441, 30.659662, 47.149479>,  <32.061310, 30.553864, 47.164921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.846441, 30.659662, 47.149479>,  <31.488329, 30.835995, 47.123745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846441, 30.659662, 47.149479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192217, -0.251955, 0.948457,
		-0.401902, -0.861501, -0.310306,
		0.895280, -0.440833, 0.064334,
		32.115025, 30.527412, 47.168777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357225, 30.120079, 47.361889>,  <31.488329, 30.835995, 47.123745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357225, 30.120079, 47.361889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739487, 30.160316, 47.472599>,  <31.968843, 30.184460, 47.539024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.739487, 30.160316, 47.472599>,  <31.357225, 30.120079, 47.361889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739487, 30.160316, 47.472599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231900, -0.322239, 0.917815,
		0.181517, -0.941299, -0.284620,
		0.955653, 0.100596, 0.276779,
		32.026184, 30.190495, 47.555634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469076, 29.542202, 47.774189>,  <31.357225, 30.120079, 47.361889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469076, 29.542202, 47.774189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796656, 29.751913, 47.867527>,  <31.993204, 29.877741, 47.923531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796656, 29.751913, 47.867527>,  <31.469076, 29.542202, 47.774189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796656, 29.751913, 47.867527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035108, -0.360089, 0.932257,
		0.572789, -0.771665, -0.276489,
		0.818950, 0.524280, 0.233346,
		32.042339, 29.909197, 47.937531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864096, 29.018158, 48.155640>,  <31.469076, 29.542202, 47.774189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864096, 29.018158, 48.155640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013268, 29.377882, 48.246998>,  <32.102772, 29.593716, 48.301815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013268, 29.377882, 48.246998>,  <31.864096, 29.018158, 48.155640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013268, 29.377882, 48.246998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172148, -0.308944, 0.935371,
		0.911750, -0.309510, -0.270028,
		0.372930, 0.899310, 0.228398,
		32.125145, 29.647675, 48.315517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449863, 28.932482, 48.568974>,  <31.864096, 29.018158, 48.155640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449863, 28.932482, 48.568974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348595, 29.314880, 48.628262>,  <32.287834, 29.544319, 48.663834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.348595, 29.314880, 48.628262>,  <32.449863, 28.932482, 48.568974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348595, 29.314880, 48.628262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290328, -0.071066, 0.954285,
		0.922828, 0.284634, -0.259561,
		-0.253176, 0.955998, 0.148219,
		32.272640, 29.601681, 48.672726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012108, 29.303738, 48.831707>,  <32.449863, 28.932482, 48.568974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012108, 29.303738, 48.831707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668594, 29.474581, 48.944889>,  <32.462486, 29.577087, 49.012798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668594, 29.474581, 48.944889>,  <33.012108, 29.303738, 48.831707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668594, 29.474581, 48.944889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200309, -0.228422, 0.952733,
		0.471555, 0.874871, 0.110612,
		-0.858785, 0.427110, 0.282958,
		32.410957, 29.602715, 49.029778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155388, 29.374437, 49.544464>,  <33.012108, 29.303738, 48.831707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155388, 29.374437, 49.544464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767410, 29.464602, 49.507809>,  <32.534622, 29.518700, 49.485813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767410, 29.464602, 49.507809>,  <33.155388, 29.374437, 49.544464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767410, 29.464602, 49.507809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141875, -0.217915, 0.965601,
		0.197685, 0.949581, 0.243346,
		-0.969944, 0.225409, -0.091643,
		32.476425, 29.532225, 49.480316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071732, 29.834330, 50.096756>,  <33.155388, 29.374437, 49.544464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071732, 29.834330, 50.096756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703461, 29.707130, 50.006214>,  <32.482498, 29.630812, 49.951889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.703461, 29.707130, 50.006214>,  <33.071732, 29.834330, 50.096756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703461, 29.707130, 50.006214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159000, -0.224090, 0.961511,
		-0.356482, 0.921228, 0.155752,
		-0.920673, -0.317997, -0.226359,
		32.427258, 29.611731, 49.938305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646236, 30.195538, 50.542610>,  <33.071732, 29.834330, 50.096756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646236, 30.195538, 50.542610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424534, 29.879835, 50.436878>,  <32.291512, 29.690413, 50.373440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.424534, 29.879835, 50.436878>,  <32.646236, 30.195538, 50.542610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.424534, 29.879835, 50.436878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142905, -0.222619, 0.964375,
		-0.819984, 0.572288, 0.010600,
		-0.554260, -0.789258, -0.264327,
		32.258255, 29.643059, 50.357578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890173, 30.208584, 50.841915>,  <32.646236, 30.195538, 50.542610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890173, 30.208584, 50.841915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047234, 29.845915, 50.780239>,  <32.141468, 29.628313, 50.743233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.047234, 29.845915, 50.780239>,  <31.890173, 30.208584, 50.841915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047234, 29.845915, 50.780239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213064, -0.252768, 0.943776,
		-0.894667, -0.337723, -0.292429,
		0.392651, -0.906671, -0.154186,
		32.165028, 29.573914, 50.733982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728500, 30.961725, 50.906734>,  <31.890173, 30.208584, 50.841915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728500, 30.961725, 50.906734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510473, 31.295691, 50.937252>,  <31.379656, 31.496069, 50.955563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.510473, 31.295691, 50.937252>,  <31.728500, 30.961725, 50.906734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510473, 31.295691, 50.937252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623816, 0.464681, -0.628431,
		-0.560137, -0.294945, -0.774115,
		-0.545069, 0.834913, 0.076294,
		31.346952, 31.546164, 50.960140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418148, 31.165426, 50.324986>,  <31.728500, 30.961725, 50.906734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418148, 31.165426, 50.324986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480694, 31.509481, 50.519188>,  <31.518221, 31.715914, 50.635708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.480694, 31.509481, 50.519188>,  <31.418148, 31.165426, 50.324986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480694, 31.509481, 50.519188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523177, 0.344804, -0.779356,
		-0.837757, 0.375868, -0.396088,
		0.156362, 0.860136, 0.485507,
		31.527603, 31.767523, 50.664841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520679, 31.567869, 49.865009>,  <31.418148, 31.165426, 50.324986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520679, 31.567869, 49.865009> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675579, 31.791563, 50.158211>,  <31.768518, 31.925779, 50.334133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.675579, 31.791563, 50.158211>,  <31.520679, 31.567869, 49.865009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675579, 31.791563, 50.158211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510032, 0.532368, -0.675612,
		-0.768054, 0.635485, -0.079069,
		0.387247, 0.559234, 0.733005,
		31.791754, 31.959333, 50.378113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.432617, 32.156498, 49.647964>,  <31.520679, 31.567869, 49.865009>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.432617, 32.156498, 49.647964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724258, 32.230297, 49.911591>,  <31.899242, 32.274578, 50.069767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724258, 32.230297, 49.911591>,  <31.432617, 32.156498, 49.647964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724258, 32.230297, 49.911591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427607, 0.629086, -0.649155,
		-0.534381, 0.755122, 0.379773,
		0.729101, 0.184503, 0.659067,
		31.942989, 32.285648, 50.109310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319851, 32.873894, 49.742985>,  <31.432617, 32.156498, 49.647964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319851, 32.873894, 49.742985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700508, 32.798630, 49.840122>,  <31.928902, 32.753471, 49.898403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.700508, 32.798630, 49.840122>,  <31.319851, 32.873894, 49.742985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700508, 32.798630, 49.840122> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304150, 0.688269, -0.658619,
		-0.043217, 0.700630, 0.712214,
		0.951643, -0.188157, 0.242842,
		31.986002, 32.742184, 49.912975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599674, 33.497810, 49.908371>,  <31.319851, 32.873894, 49.742985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599674, 33.497810, 49.908371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908081, 33.265106, 49.804768>,  <32.093124, 33.125484, 49.742607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.908081, 33.265106, 49.804768>,  <31.599674, 33.497810, 49.908371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908081, 33.265106, 49.804768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416618, 0.768414, -0.485766,
		0.481626, 0.266627, 0.834833,
		0.771016, -0.581764, -0.259007,
		32.139385, 33.090576, 49.727066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128635, 33.878338, 49.976562>,  <31.599674, 33.497810, 49.908371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128635, 33.878338, 49.976562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275799, 33.598373, 49.731689>,  <32.364098, 33.430393, 49.584766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.275799, 33.598373, 49.731689>,  <32.128635, 33.878338, 49.976562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275799, 33.598373, 49.731689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421103, 0.712389, -0.561405,
		0.829047, -0.051249, 0.556826,
		0.367905, -0.699912, -0.612184,
		32.386169, 33.388401, 49.548035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724201, 34.261169, 49.834202>,  <32.128635, 33.878338, 49.976562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724201, 34.261169, 49.834202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704239, 33.968063, 49.562740>,  <32.692261, 33.792202, 49.399864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704239, 33.968063, 49.562740>,  <32.724201, 34.261169, 49.834202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704239, 33.968063, 49.562740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486670, 0.575530, -0.657204,
		0.872159, -0.363078, 0.327891,
		-0.049905, -0.732761, -0.678653,
		32.689266, 33.748234, 49.359146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.371956, 34.274704, 49.433498>,  <32.724201, 34.261169, 49.834202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.371956, 34.274704, 49.433498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121883, 34.052715, 49.213985>,  <32.971840, 33.919521, 49.082279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121883, 34.052715, 49.213985>,  <33.371956, 34.274704, 49.433498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121883, 34.052715, 49.213985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275309, 0.501126, -0.820413,
		0.730314, -0.663987, -0.160503,
		-0.625176, -0.554971, -0.548782,
		32.934330, 33.886223, 49.049351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759865, 33.965485, 48.960976>,  <33.371956, 34.274704, 49.433498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759865, 33.965485, 48.960976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391781, 33.965801, 48.804409>,  <33.170929, 33.965992, 48.710468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391781, 33.965801, 48.804409>,  <33.759865, 33.965485, 48.960976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391781, 33.965801, 48.804409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377988, 0.261540, -0.888100,
		0.101663, -0.965192, -0.240974,
		-0.920212, 0.000798, -0.391420,
		33.115719, 33.966042, 48.686981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874870, 33.693069, 48.299282>,  <33.759865, 33.965485, 48.960976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874870, 33.693069, 48.299282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517433, 33.872036, 48.284855>,  <33.302971, 33.979416, 48.276199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517433, 33.872036, 48.284855>,  <33.874870, 33.693069, 48.299282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517433, 33.872036, 48.284855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126462, 0.173837, -0.976621,
		-0.430690, -0.877266, -0.211922,
		-0.893596, 0.447420, -0.036071,
		33.249355, 34.006264, 48.274033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634300, 33.441525, 47.647179>,  <33.874870, 33.693069, 48.299282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634300, 33.441525, 47.647179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400360, 33.759075, 47.713764>,  <33.259995, 33.949604, 47.753716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.400360, 33.759075, 47.713764>,  <33.634300, 33.441525, 47.647179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400360, 33.759075, 47.713764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014751, 0.194779, -0.980736,
		-0.811008, -0.576038, -0.102206,
		-0.584849, 0.793878, 0.166464,
		33.224907, 33.997238, 47.763702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105507, 33.400719, 47.287773>,  <33.634300, 33.441525, 47.647179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105507, 33.400719, 47.287773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064667, 33.791874, 47.360779>,  <33.040165, 34.026566, 47.404583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064667, 33.791874, 47.360779>,  <33.105507, 33.400719, 47.287773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064667, 33.791874, 47.360779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228652, 0.155488, -0.961011,
		-0.968140, -0.139849, 0.207721,
		-0.102099, 0.977888, 0.182511,
		33.034039, 34.085239, 47.415531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575596, 33.572762, 46.880825>,  <33.105507, 33.400719, 47.287773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575596, 33.572762, 46.880825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733532, 33.926960, 46.978802>,  <32.828293, 34.139481, 47.037590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733532, 33.926960, 46.978802>,  <32.575596, 33.572762, 46.880825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733532, 33.926960, 46.978802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116187, 0.312592, -0.942755,
		-0.911374, 0.343776, 0.226306,
		0.394838, 0.885497, 0.244946,
		32.851982, 34.192608, 47.052284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089943, 34.095470, 46.547279>,  <32.575596, 33.572762, 46.880825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089943, 34.095470, 46.547279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466217, 34.220810, 46.599319>,  <32.691982, 34.296013, 46.630543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.466217, 34.220810, 46.599319>,  <32.089943, 34.095470, 46.547279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466217, 34.220810, 46.599319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109718, 0.081899, -0.990583,
		-0.321049, 0.946101, 0.042662,
		0.940686, 0.313345, 0.130098,
		32.748425, 34.314812, 46.638348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442141, 34.432148, 46.124382>,  <32.089943, 34.095470, 46.547279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442141, 34.432148, 46.124382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124359, 34.283638, 45.932133>,  <30.933691, 34.194534, 45.816784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.124359, 34.283638, 45.932133>,  <31.442141, 34.432148, 46.124382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124359, 34.283638, 45.932133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352088, -0.363262, 0.862598,
		-0.494850, 0.854517, 0.157876,
		-0.794454, -0.371271, -0.480625,
		30.886023, 34.172256, 45.787945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837702, 34.640827, 46.500145>,  <31.442141, 34.432148, 46.124382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837702, 34.640827, 46.500145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713797, 34.315063, 46.303867>,  <30.639454, 34.119606, 46.186100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.713797, 34.315063, 46.303867>,  <30.837702, 34.640827, 46.500145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713797, 34.315063, 46.303867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481524, -0.310636, 0.819537,
		-0.819866, 0.490146, -0.295934,
		-0.309765, -0.814409, -0.490697,
		30.620867, 34.070740, 46.156658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133804, 34.574608, 46.624020>,  <30.837702, 34.640827, 46.500145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133804, 34.574608, 46.624020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257046, 34.206867, 46.526146>,  <30.330992, 33.986225, 46.467422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.257046, 34.206867, 46.526146>,  <30.133804, 34.574608, 46.624020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257046, 34.206867, 46.526146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463343, -0.369639, 0.805407,
		-0.830894, -0.134778, -0.539861,
		0.308104, -0.919349, -0.244683,
		30.349478, 33.931061, 46.452740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569378, 34.197254, 46.731342>,  <30.133804, 34.574608, 46.624020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569378, 34.197254, 46.731342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861887, 33.924442, 46.734947>,  <30.037392, 33.760757, 46.737110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.861887, 33.924442, 46.734947>,  <29.569378, 34.197254, 46.731342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861887, 33.924442, 46.734947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463419, -0.487100, 0.740254,
		-0.500496, -0.545492, -0.672267,
		0.731264, -0.682035, 0.008999,
		30.081268, 33.719833, 46.737652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244993, 33.709461, 47.072296>,  <29.569378, 34.197254, 46.731342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244993, 33.709461, 47.072296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610172, 33.546307, 47.077305>,  <29.829279, 33.448414, 47.080311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610172, 33.546307, 47.077305>,  <29.244993, 33.709461, 47.072296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610172, 33.546307, 47.077305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226649, -0.481309, 0.846742,
		-0.339346, -0.775869, -0.531856,
		0.912948, -0.407883, 0.012520,
		29.884056, 33.423943, 47.081062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098778, 33.075474, 47.273445>,  <29.244993, 33.709461, 47.072296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098778, 33.075474, 47.273445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.485809, 33.129711, 47.358677>,  <29.718029, 33.162254, 47.409817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.485809, 33.129711, 47.358677>,  <29.098778, 33.075474, 47.273445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485809, 33.129711, 47.358677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140215, -0.413296, 0.899737,
		0.210066, -0.900444, -0.380884,
		0.967580, 0.135598, 0.213075,
		29.776083, 33.170391, 47.422600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362862, 32.460339, 47.552956>,  <29.098778, 33.075474, 47.273445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362862, 32.460339, 47.552956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610970, 32.748192, 47.677784>,  <29.759834, 32.920902, 47.752682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.610970, 32.748192, 47.677784>,  <29.362862, 32.460339, 47.552956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610970, 32.748192, 47.677784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132163, -0.296288, 0.945910,
		0.773172, -0.627966, -0.088670,
		0.620272, 0.719633, 0.312075,
		29.797050, 32.964081, 47.771408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509573, 31.835686, 47.656429>,  <29.362862, 32.460339, 47.552956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509573, 31.835686, 47.656429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136347, 31.720875, 47.569702>,  <28.912411, 31.651989, 47.517666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.136347, 31.720875, 47.569702>,  <29.509573, 31.835686, 47.656429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136347, 31.720875, 47.569702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136850, 0.274172, -0.951894,
		0.332665, -0.917848, -0.216540,
		-0.933063, -0.287028, -0.216815,
		28.856428, 31.634768, 47.504658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614164, 31.453600, 47.110458>,  <29.509573, 31.835686, 47.656429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614164, 31.453600, 47.110458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223547, 31.536873, 47.088478>,  <28.989176, 31.586836, 47.075291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223547, 31.536873, 47.088478>,  <29.614164, 31.453600, 47.110458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223547, 31.536873, 47.088478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043075, -0.061151, -0.997199,
		-0.210961, -0.976176, 0.050750,
		-0.976545, 0.208184, -0.054949,
		28.930584, 31.599327, 47.071995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305769, 30.993099, 46.605228>,  <29.614164, 31.453600, 47.110458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305769, 30.993099, 46.605228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058897, 31.307468, 46.620266>,  <28.910774, 31.496090, 46.629288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.058897, 31.307468, 46.620266>,  <29.305769, 30.993099, 46.605228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058897, 31.307468, 46.620266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036965, 0.076685, -0.996370,
		-0.785955, -0.613548, -0.076380,
		-0.617177, 0.785925, 0.037591,
		28.873743, 31.543245, 46.631542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908468, 30.899197, 46.086952>,  <29.305769, 30.993099, 46.605228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908468, 30.899197, 46.086952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.844532, 31.286243, 46.165096>,  <28.806171, 31.518473, 46.211983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.844532, 31.286243, 46.165096>,  <28.908468, 30.899197, 46.086952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844532, 31.286243, 46.165096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085562, 0.210744, -0.973790,
		-0.983428, -0.138934, -0.116476,
		-0.159839, 0.967618, 0.195364,
		28.796581, 31.576529, 46.223705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.472645, 31.160378, 45.578575>,  <28.908468, 30.899197, 46.086952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.472645, 31.160378, 45.578575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.676643, 31.481400, 45.702389>,  <28.799044, 31.674013, 45.776676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.676643, 31.481400, 45.702389>,  <28.472645, 31.160378, 45.578575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676643, 31.481400, 45.702389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031405, 0.342232, -0.939090,
		-0.859602, 0.488655, 0.149333,
		0.509998, 0.802554, 0.309530,
		28.829643, 31.722166, 45.795246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163601, 31.720680, 45.317173>,  <28.472645, 31.160378, 45.578575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163601, 31.720680, 45.317173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.533558, 31.855623, 45.387333>,  <28.755531, 31.936590, 45.429428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.533558, 31.855623, 45.387333>,  <28.163601, 31.720680, 45.317173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533558, 31.855623, 45.387333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075701, 0.288676, -0.954429,
		-0.372619, 0.896022, 0.241455,
		0.924892, 0.337360, 0.175396,
		28.811026, 31.956831, 45.439953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187973, 32.214760, 44.838810>,  <28.163601, 31.720680, 45.317173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187973, 32.214760, 44.838810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.573841, 32.209038, 44.944038>,  <28.805363, 32.205605, 45.007175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.573841, 32.209038, 44.944038>,  <28.187973, 32.214760, 44.838810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573841, 32.209038, 44.944038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250435, 0.359885, -0.898758,
		-0.081816, 0.932887, 0.350753,
		0.964670, -0.014308, 0.263072,
		28.863241, 32.204746, 45.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<29.761591, 26.925364, 49.083736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973183, 27.240227, 49.210583>,  <30.100138, 27.429144, 49.286690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.973183, 27.240227, 49.210583>,  <29.761591, 26.925364, 49.083736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973183, 27.240227, 49.210583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035916, 0.352580, -0.935092,
		-0.847874, 0.506035, 0.158237,
		0.528980, 0.787157, 0.317118,
		30.131876, 27.476374, 49.305717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532541, 27.539583, 48.639538>,  <29.761591, 26.925364, 49.083736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532541, 27.539583, 48.639538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.891975, 27.640358, 48.783241>,  <30.107635, 27.700823, 48.869465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.891975, 27.640358, 48.783241>,  <29.532541, 27.539583, 48.639538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891975, 27.640358, 48.783241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256881, 0.361740, -0.896190,
		-0.355744, 0.897592, 0.260337,
		0.898587, 0.251938, 0.359262,
		30.161551, 27.715939, 48.891018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758524, 28.177206, 48.281796>,  <29.532541, 27.539583, 48.639538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758524, 28.177206, 48.281796> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.100122, 28.031776, 48.430660>,  <30.305082, 27.944519, 48.519978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.100122, 28.031776, 48.430660>,  <29.758524, 28.177206, 48.281796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100122, 28.031776, 48.430660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490343, 0.323312, -0.809341,
		0.173931, 0.873661, 0.454383,
		0.853997, -0.363573, 0.372160,
		30.356321, 27.922705, 48.542309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286566, 28.666536, 48.204674>,  <29.758524, 28.177206, 48.281796>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286566, 28.666536, 48.204674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.470602, 28.311514, 48.214153>,  <30.581024, 28.098501, 48.219841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.470602, 28.311514, 48.214153>,  <30.286566, 28.666536, 48.204674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470602, 28.311514, 48.214153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518376, 0.246851, -0.818750,
		0.720834, 0.388987, 0.573661,
		0.460092, -0.887555, 0.023703,
		30.608629, 28.045248, 48.221264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963924, 28.818968, 47.825531>,  <30.286566, 28.666536, 48.204674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963924, 28.818968, 47.825531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926989, 28.420689, 47.822441>,  <30.904827, 28.181721, 47.820587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.926989, 28.420689, 47.822441>,  <30.963924, 28.818968, 47.825531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.926989, 28.420689, 47.822441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575399, -0.047025, -0.816520,
		0.812644, -0.079843, 0.577265,
		-0.092339, -0.995698, -0.007727,
		30.899286, 28.121979, 47.820122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584270, 28.555950, 47.657711>,  <30.963924, 28.818968, 47.825531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584270, 28.555950, 47.657711> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335003, 28.258291, 47.561455>,  <31.185442, 28.079697, 47.503700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.335003, 28.258291, 47.561455>,  <31.584270, 28.555950, 47.657711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335003, 28.258291, 47.561455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389090, -0.028081, -0.920771,
		0.678431, -0.667427, 0.307039,
		-0.623169, -0.744146, -0.240639,
		31.148052, 28.035048, 47.489262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947182, 27.928606, 47.268162>,  <31.584270, 28.555950, 47.657711>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947182, 27.928606, 47.268162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561625, 27.919506, 47.162037>,  <31.330290, 27.914045, 47.098362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.561625, 27.919506, 47.162037>,  <31.947182, 27.928606, 47.268162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561625, 27.919506, 47.162037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265757, -0.144924, -0.953085,
		-0.016767, -0.989181, 0.145737,
		-0.963894, -0.022750, -0.265311,
		31.272457, 27.912682, 47.082443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961979, 27.560860, 46.669159>,  <31.947182, 27.928606, 47.268162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961979, 27.560860, 46.669159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587057, 27.699945, 46.659721>,  <31.362104, 27.783398, 46.654060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.587057, 27.699945, 46.659721>,  <31.961979, 27.560860, 46.669159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587057, 27.699945, 46.659721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013733, -0.030788, -0.999432,
		-0.348245, -0.937094, 0.024083,
		-0.937303, 0.347717, -0.023591,
		31.305866, 27.804260, 46.652645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523930, 27.057098, 46.283669>,  <31.961979, 27.560860, 46.669159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523930, 27.057098, 46.283669> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352179, 27.418306, 46.278229>,  <31.249128, 27.635031, 46.274963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.352179, 27.418306, 46.278229>,  <31.523930, 27.057098, 46.283669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352179, 27.418306, 46.278229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007883, -0.011312, -0.999905,
		-0.903090, -0.429445, -0.002262,
		-0.429378, 0.903022, -0.013601,
		31.223366, 27.689213, 46.274147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041609, 26.934603, 45.807549>,  <31.523930, 27.057098, 46.283669>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041609, 26.934603, 45.807549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.043093, 27.333256, 45.840317>,  <31.043983, 27.572447, 45.859978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.043093, 27.333256, 45.840317>,  <31.041609, 26.934603, 45.807549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043093, 27.333256, 45.840317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092506, 0.081229, -0.992393,
		-0.995705, 0.011262, -0.091893,
		0.003712, 0.996632, 0.081922,
		31.044207, 27.632246, 45.864895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689426, 27.039501, 45.297863>,  <31.041609, 26.934603, 45.807549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689426, 27.039501, 45.297863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879744, 27.385813, 45.359890>,  <30.993935, 27.593599, 45.397106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879744, 27.385813, 45.359890>,  <30.689426, 27.039501, 45.297863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879744, 27.385813, 45.359890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011334, 0.182325, -0.983173,
		-0.879484, 0.466031, 0.096562,
		0.475794, 0.865779, 0.155070,
		31.022482, 27.645546, 45.406410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427803, 27.371283, 44.739231>,  <30.689426, 27.039501, 45.297863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427803, 27.371283, 44.739231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741615, 27.590933, 44.854450>,  <30.929903, 27.722723, 44.923584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.741615, 27.590933, 44.854450>,  <30.427803, 27.371283, 44.739231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741615, 27.590933, 44.854450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282847, 0.096489, -0.954300,
		-0.551823, 0.830152, -0.079620,
		0.784531, 0.549124, 0.288051,
		30.976974, 27.755671, 44.940865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865591, 27.833445, 44.869125>,  <30.427803, 27.371283, 44.739231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865591, 27.833445, 44.869125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.526201, 28.038815, 44.817768>,  <29.322567, 28.162037, 44.786953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.526201, 28.038815, 44.817768>,  <29.865591, 27.833445, 44.869125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526201, 28.038815, 44.817768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178614, -0.049437, 0.982677,
		0.498184, 0.856709, 0.133651,
		-0.848475, 0.513426, -0.128391,
		29.271658, 28.192842, 44.779251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849981, 28.387661, 45.327606>,  <29.865591, 27.833445, 44.869125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849981, 28.387661, 45.327606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463907, 28.303488, 45.265469>,  <29.232262, 28.252985, 45.228188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.463907, 28.303488, 45.265469>,  <29.849981, 28.387661, 45.327606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463907, 28.303488, 45.265469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123111, -0.158518, 0.979651,
		-0.230774, 0.964671, 0.127094,
		-0.965188, -0.210432, -0.155343,
		29.174351, 28.240358, 45.218864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403208, 28.835550, 45.689522>,  <29.849981, 28.387661, 45.327606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403208, 28.835550, 45.689522> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.200529, 28.494802, 45.636482>,  <29.078922, 28.290354, 45.604660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.200529, 28.494802, 45.636482>,  <29.403208, 28.835550, 45.689522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200529, 28.494802, 45.636482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130967, -0.075961, 0.988472,
		-0.852120, 0.518219, -0.073078,
		-0.506695, -0.851868, -0.132597,
		29.048521, 28.239243, 45.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.887922, 28.924200, 46.153458>,  <29.403208, 28.835550, 45.689522>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.887922, 28.924200, 46.153458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.853823, 28.532076, 46.082214>,  <28.833363, 28.296801, 46.039467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.853823, 28.532076, 46.082214>,  <28.887922, 28.924200, 46.153458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853823, 28.532076, 46.082214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214041, -0.156567, 0.964196,
		-0.973098, 0.120319, -0.196479,
		-0.085249, -0.980311, -0.178108,
		28.828247, 28.237982, 46.028782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.316517, 28.755615, 46.434612>,  <28.887922, 28.924200, 46.153458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.316517, 28.755615, 46.434612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.481907, 28.391916, 46.415409>,  <28.581141, 28.173697, 46.403889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.481907, 28.391916, 46.415409>,  <28.316517, 28.755615, 46.434612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481907, 28.391916, 46.415409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406778, -0.231634, 0.883673,
		-0.814599, -0.345848, -0.465637,
		0.413474, -0.909250, -0.048005,
		28.605949, 28.119141, 46.401009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816841, 28.322416, 46.597618>,  <28.316517, 28.755615, 46.434612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816841, 28.322416, 46.597618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.135372, 28.091944, 46.671242>,  <28.326490, 27.953659, 46.715416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.135372, 28.091944, 46.671242>,  <27.816841, 28.322416, 46.597618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135372, 28.091944, 46.671242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303775, -0.117820, 0.945431,
		-0.523055, -0.808784, -0.268853,
		0.796326, -0.576183, 0.184062,
		28.374269, 27.919088, 46.726460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548229, 27.755426, 46.994678>,  <27.816841, 28.322416, 46.597618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548229, 27.755426, 46.994678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944195, 27.761057, 47.051067>,  <28.181774, 27.764435, 47.084900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944195, 27.761057, 47.051067>,  <27.548229, 27.755426, 46.994678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944195, 27.761057, 47.051067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134171, -0.226314, 0.964769,
		0.045482, -0.973953, -0.222143,
		0.989914, 0.014075, 0.140970,
		28.241169, 27.765280, 47.093357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618937, 27.142702, 47.431915>,  <27.548229, 27.755426, 46.994678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618937, 27.142702, 47.431915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.959934, 27.347549, 47.473835>,  <28.164534, 27.470459, 47.498985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.959934, 27.347549, 47.473835>,  <27.618937, 27.142702, 47.431915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959934, 27.347549, 47.473835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070185, -0.086531, 0.993774,
		0.518001, -0.854543, -0.037825,
		0.852496, 0.512121, 0.104799,
		28.215683, 27.501186, 47.505276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086342, 26.767050, 47.959606>,  <27.618937, 27.142702, 47.431915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086342, 26.767050, 47.959606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156887, 27.160765, 47.963146>,  <28.199215, 27.396994, 47.965271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.156887, 27.160765, 47.963146>,  <28.086342, 26.767050, 47.959606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156887, 27.160765, 47.963146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022292, -0.004999, 0.999739,
		0.984073, -0.176515, 0.021060,
		0.176364, 0.984285, 0.008854,
		28.209797, 27.456051, 47.965801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.426870, 26.780315, 48.512360>,  <28.086342, 26.767050, 47.959606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.426870, 26.780315, 48.512360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.358160, 27.168501, 48.444603>,  <28.316935, 27.401413, 48.403950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.358160, 27.168501, 48.444603>,  <28.426870, 26.780315, 48.512360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358160, 27.168501, 48.444603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155052, 0.143169, 0.977477,
		0.972857, 0.194172, 0.125879,
		-0.171776, 0.970464, -0.169390,
		28.306627, 27.459641, 48.393787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675987, 27.112427, 49.085533>,  <28.426870, 26.780315, 48.512360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675987, 27.112427, 49.085533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.471558, 27.422312, 48.936604>,  <28.348900, 27.608242, 48.847244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.471558, 27.422312, 48.936604>,  <28.675987, 27.112427, 49.085533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.471558, 27.422312, 48.936604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177556, 0.328670, 0.927604,
		0.840997, 0.540183, -0.030420,
		-0.511075, 0.774712, -0.372323,
		28.318235, 27.654726, 48.824905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863552, 27.753096, 49.488495>,  <28.675987, 27.112427, 49.085533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863552, 27.753096, 49.488495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.506624, 27.831789, 49.325981>,  <28.292467, 27.879005, 49.228474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.506624, 27.831789, 49.325981>,  <28.863552, 27.753096, 49.488495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506624, 27.831789, 49.325981> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297140, 0.421551, 0.856739,
		0.339817, 0.885207, -0.317701,
		-0.892318, 0.196733, -0.406281,
		28.238928, 27.890808, 49.204098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700142, 28.525463, 49.657684>,  <28.863552, 27.753096, 49.488495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700142, 28.525463, 49.657684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.379353, 28.306789, 49.561371>,  <28.186880, 28.175585, 49.503582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.379353, 28.306789, 49.561371>,  <28.700142, 28.525463, 49.657684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379353, 28.306789, 49.561371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475680, 0.340613, 0.810994,
		-0.361343, 0.764931, -0.533209,
		-0.801972, -0.546684, -0.240784,
		28.138762, 28.142784, 49.489136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081203, 29.001453, 49.750271>,  <28.700142, 28.525463, 49.657684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081203, 29.001453, 49.750271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.941452, 28.627390, 49.773636>,  <27.857601, 28.402952, 49.787655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.941452, 28.627390, 49.773636>,  <28.081203, 29.001453, 49.750271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.941452, 28.627390, 49.773636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519001, 0.245052, 0.818894,
		-0.780111, 0.255784, -0.570964,
		-0.349377, -0.935160, 0.058416,
		27.836639, 28.346842, 49.791161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319567, 29.620937, 49.365055>,  <28.081203, 29.001453, 49.750271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319567, 29.620937, 49.365055> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238232, 29.877516, 49.660946>,  <28.189430, 30.031464, 49.838482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.238232, 29.877516, 49.660946>,  <28.319567, 29.620937, 49.365055>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.238232, 29.877516, 49.660946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150924, 0.767018, -0.623623,
		-0.967407, -0.015162, -0.252773,
		-0.203336, 0.641447, 0.739730,
		28.177231, 30.069950, 49.882866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694458, 30.069628, 49.169044>,  <28.319567, 29.620937, 49.365055>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694458, 30.069628, 49.169044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944086, 30.259203, 49.417534>,  <28.093863, 30.372948, 49.566628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.944086, 30.259203, 49.417534>,  <27.694458, 30.069628, 49.169044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944086, 30.259203, 49.417534> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137516, 0.716017, -0.684404,
		-0.769171, 0.512545, 0.381672,
		0.624071, 0.473938, 0.621223,
		28.131308, 30.401384, 49.603901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391811, 30.658812, 49.343819>,  <27.694458, 30.069628, 49.169044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391811, 30.658812, 49.343819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.787579, 30.714058, 49.361591>,  <28.025040, 30.747206, 49.372253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.787579, 30.714058, 49.361591>,  <27.391811, 30.658812, 49.343819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.787579, 30.714058, 49.361591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057377, 0.653764, -0.754520,
		-0.133257, 0.743988, 0.654771,
		0.989419, 0.138114, 0.044431,
		28.084404, 30.755491, 49.374920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586004, 31.427744, 49.350353>,  <27.391811, 30.658812, 49.343819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586004, 31.427744, 49.350353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.907597, 31.238617, 49.206097>,  <28.100552, 31.125141, 49.119541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.907597, 31.238617, 49.206097>,  <27.586004, 31.427744, 49.350353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.907597, 31.238617, 49.206097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002014, 0.604302, -0.796753,
		0.594655, 0.641299, 0.484894,
		0.803979, -0.472816, -0.360642,
		28.148790, 31.096771, 49.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813597, 31.891726, 48.948997>,  <27.586004, 31.427744, 49.350353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813597, 31.891726, 48.948997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.062002, 31.601707, 48.829903>,  <28.211046, 31.427696, 48.758446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.062002, 31.601707, 48.829903>,  <27.813597, 31.891726, 48.948997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062002, 31.601707, 48.829903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167254, 0.493705, -0.853394,
		0.765746, 0.480172, 0.427865,
		0.621015, -0.725045, -0.297742,
		28.248306, 31.384193, 48.740582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350494, 32.237118, 48.542332>,  <27.813597, 31.891726, 48.948997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350494, 32.237118, 48.542332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.363007, 31.860271, 48.408806>,  <28.370514, 31.634163, 48.328690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.363007, 31.860271, 48.408806>,  <28.350494, 32.237118, 48.542332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363007, 31.860271, 48.408806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313636, 0.326362, -0.891695,
		0.949028, -0.076804, 0.305691,
		0.031280, -0.942119, -0.333816,
		28.372391, 31.577635, 48.308662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019365, 32.154030, 48.106667>,  <28.350494, 32.237118, 48.542332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019365, 32.154030, 48.106667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764498, 31.866705, 47.994926>,  <28.611576, 31.694309, 47.927883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.764498, 31.866705, 47.994926>,  <29.019365, 32.154030, 48.106667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764498, 31.866705, 47.994926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171627, 0.221108, -0.960029,
		0.751370, -0.659646, -0.017601,
		-0.637171, -0.718316, -0.279347,
		28.573347, 31.651211, 47.911121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773941, 32.088753, 48.379574>,  <29.019365, 32.154030, 48.106667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773941, 32.088753, 48.379574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.810656, 32.481270, 48.311890>,  <29.832684, 32.716782, 48.271278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.810656, 32.481270, 48.311890>,  <29.773941, 32.088753, 48.379574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810656, 32.481270, 48.311890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163312, 0.152791, 0.974671,
		0.982296, -0.117093, -0.146234,
		0.091784, 0.981297, -0.169209,
		29.838190, 32.775658, 48.261127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397285, 32.321529, 48.689041>,  <29.773941, 32.088753, 48.379574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397285, 32.321529, 48.689041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.152855, 32.637867, 48.675461>,  <30.006197, 32.827667, 48.667313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.152855, 32.637867, 48.675461>,  <30.397285, 32.321529, 48.689041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152855, 32.637867, 48.675461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088041, -0.025285, 0.995796,
		0.786659, 0.611498, 0.085077,
		-0.611078, 0.790842, -0.033947,
		29.969532, 32.875118, 48.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577559, 32.838795, 49.249172>,  <30.397285, 32.321529, 48.689041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577559, 32.838795, 49.249172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196016, 32.882801, 49.137417>,  <29.967091, 32.909206, 49.070362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.196016, 32.882801, 49.137417>,  <30.577559, 32.838795, 49.249172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196016, 32.882801, 49.137417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270869, 0.086307, 0.958739,
		0.129592, 0.990175, -0.052524,
		-0.953853, 0.110018, -0.279392,
		29.909861, 32.915806, 49.053600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399448, 33.526302, 49.656109>,  <30.577559, 32.838795, 49.249172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399448, 33.526302, 49.656109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.048195, 33.360004, 49.561413>,  <29.837442, 33.260227, 49.504597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.048195, 33.360004, 49.561413>,  <30.399448, 33.526302, 49.656109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048195, 33.360004, 49.561413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347806, 0.214984, 0.912586,
		-0.328505, 0.883709, -0.333382,
		-0.878132, -0.415741, -0.236736,
		29.784756, 33.235283, 49.490391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984627, 33.956985, 50.002598>,  <30.399448, 33.526302, 49.656109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984627, 33.956985, 50.002598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.749643, 33.640739, 49.933529>,  <29.608652, 33.450993, 49.892086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.749643, 33.640739, 49.933529>,  <29.984627, 33.956985, 50.002598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749643, 33.640739, 49.933529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320047, 0.031003, 0.946894,
		-0.743277, 0.611526, -0.271248,
		-0.587460, -0.790617, -0.172673,
		29.573406, 33.403553, 49.881725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430838, 34.135971, 50.298916>,  <29.984627, 33.956985, 50.002598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430838, 34.135971, 50.298916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376701, 33.742157, 50.254414>,  <29.344219, 33.505871, 50.227711>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.376701, 33.742157, 50.254414>,  <29.430838, 34.135971, 50.298916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376701, 33.742157, 50.254414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321760, -0.062531, 0.944754,
		-0.937099, 0.163660, -0.308321,
		-0.135338, -0.984533, -0.111257,
		29.336100, 33.446796, 50.221035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712845, 33.926376, 50.378693>,  <29.430838, 34.135971, 50.298916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712845, 33.926376, 50.378693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.976969, 33.648769, 50.493469>,  <29.135443, 33.482204, 50.562336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.976969, 33.648769, 50.493469>,  <28.712845, 33.926376, 50.378693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976969, 33.648769, 50.493469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430806, -0.037088, 0.901682,
		-0.615138, -0.719006, -0.323475,
		0.660312, -0.694014, 0.286938,
		29.175062, 33.440567, 50.579552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315218, 33.358540, 50.778030>,  <28.712845, 33.926376, 50.378693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315218, 33.358540, 50.778030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.688652, 33.279160, 50.897385>,  <28.912712, 33.231529, 50.968998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.688652, 33.279160, 50.897385>,  <28.315218, 33.358540, 50.778030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688652, 33.279160, 50.897385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340441, -0.231193, 0.911400,
		-0.111885, -0.952453, -0.283400,
		0.933586, -0.198453, 0.298387,
		28.968727, 33.219624, 50.986900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161119, 32.921879, 51.278725>,  <28.315218, 33.358540, 50.778030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161119, 32.921879, 51.278725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.540318, 33.029213, 51.347191>,  <28.767838, 33.093613, 51.388271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.540318, 33.029213, 51.347191>,  <28.161119, 32.921879, 51.278725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.540318, 33.029213, 51.347191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160779, -0.060405, 0.985140,
		0.274687, -0.961430, -0.014122,
		0.947996, 0.268335, 0.171170,
		28.824717, 33.109715, 51.398540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.485542, 33.055130, 35.975739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761501, 33.205296, 36.223324>,  <34.927074, 33.295395, 36.371876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761501, 33.205296, 36.223324>,  <34.485542, 33.055130, 35.975739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761501, 33.205296, 36.223324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703798, 0.147693, 0.694878,
		0.169460, -0.915010, 0.366116,
		0.689893, 0.375425, 0.618953,
		34.968472, 33.317921, 36.409012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455505, 32.674950, 36.523819>,  <34.485542, 33.055130, 35.975739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455505, 32.674950, 36.523819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628979, 33.012272, 36.650787>,  <34.733063, 33.214664, 36.726967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628979, 33.012272, 36.650787>,  <34.455505, 32.674950, 36.523819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628979, 33.012272, 36.650787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621896, 0.025212, 0.782694,
		0.652049, -0.536839, 0.535384,
		0.433679, 0.843308, 0.317419,
		34.759083, 33.265263, 36.746014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688725, 32.464729, 37.224110>,  <34.455505, 32.674950, 36.523819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688725, 32.464729, 37.224110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701744, 32.864483, 37.229385>,  <34.709557, 33.104336, 37.232552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701744, 32.864483, 37.229385>,  <34.688725, 32.464729, 37.224110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701744, 32.864483, 37.229385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542919, 0.006598, 0.839759,
		0.839154, -0.034500, 0.542799,
		0.032553, 0.999383, 0.013194,
		34.711510, 33.164299, 37.233345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720631, 32.638161, 37.867817>,  <34.688725, 32.464729, 37.224110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720631, 32.638161, 37.867817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619480, 32.994465, 37.716770>,  <34.558792, 33.208248, 37.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619480, 32.994465, 37.716770>,  <34.720631, 32.638161, 37.867817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619480, 32.994465, 37.716770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452862, 0.235933, 0.859797,
		0.854969, 0.388428, 0.343732,
		-0.252872, 0.890763, -0.377620,
		34.543617, 33.261692, 37.603485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903175, 33.079124, 38.419281>,  <34.720631, 32.638161, 37.867817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903175, 33.079124, 38.419281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637535, 33.263611, 38.183907>,  <34.478153, 33.374302, 38.042683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637535, 33.263611, 38.183907>,  <34.903175, 33.079124, 38.419281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637535, 33.263611, 38.183907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432291, 0.405270, 0.805531,
		0.609997, 0.789327, -0.069760,
		-0.664099, 0.461215, -0.588433,
		34.438305, 33.401974, 38.007378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773308, 33.764175, 38.629856>,  <34.903175, 33.079124, 38.419281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773308, 33.764175, 38.629856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436768, 33.708843, 38.420864>,  <34.234844, 33.675644, 38.295467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436768, 33.708843, 38.420864>,  <34.773308, 33.764175, 38.629856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436768, 33.708843, 38.420864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532409, 0.378595, 0.757104,
		0.093082, 0.915168, -0.392178,
		-0.841354, -0.138326, -0.522484,
		34.184361, 33.667347, 38.264118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358261, 34.371044, 38.681313>,  <34.773308, 33.764175, 38.629856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358261, 34.371044, 38.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089779, 34.107323, 38.545780>,  <33.928688, 33.949089, 38.464458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089779, 34.107323, 38.545780>,  <34.358261, 34.371044, 38.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089779, 34.107323, 38.545780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689553, 0.387584, 0.611797,
		-0.272031, 0.644285, -0.714770,
		-0.671205, -0.659300, -0.338833,
		33.888416, 33.909534, 38.444130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749001, 34.737366, 38.520905>,  <34.358261, 34.371044, 38.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749001, 34.737366, 38.520905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637047, 34.353474, 38.530594>,  <33.569874, 34.123138, 38.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637047, 34.353474, 38.530594>,  <33.749001, 34.737366, 38.520905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637047, 34.353474, 38.530594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701966, 0.221792, 0.676796,
		-0.654913, 0.172417, -0.735772,
		-0.279880, -0.959729, 0.024224,
		33.553082, 34.065556, 38.537861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035480, 34.798683, 38.362862>,  <33.749001, 34.737366, 38.520905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035480, 34.798683, 38.362862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116085, 34.466431, 38.570496>,  <33.164448, 34.267078, 38.695076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116085, 34.466431, 38.570496>,  <33.035480, 34.798683, 38.362862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116085, 34.466431, 38.570496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618620, 0.302957, 0.724932,
		-0.759410, -0.467197, -0.452795,
		0.201508, -0.830629, 0.519086,
		33.176537, 34.217243, 38.726223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371765, 34.619423, 38.683270>,  <33.035480, 34.798683, 38.362862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371765, 34.619423, 38.683270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633823, 34.412193, 38.903229>,  <32.791058, 34.287857, 39.035206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633823, 34.412193, 38.903229>,  <32.371765, 34.619423, 38.683270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633823, 34.412193, 38.903229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561656, 0.152827, 0.813134,
		-0.505304, -0.841571, -0.190857,
		0.655142, -0.518076, 0.549898,
		32.830364, 34.256771, 39.068199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918007, 34.086975, 38.929821>,  <32.371765, 34.619423, 38.683270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918007, 34.086975, 38.929821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231567, 34.120327, 39.175926>,  <32.419704, 34.140339, 39.323589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231567, 34.120327, 39.175926>,  <31.918007, 34.086975, 38.929821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231567, 34.120327, 39.175926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620789, 0.087681, 0.779059,
		0.011011, -0.992653, 0.120495,
		0.783900, 0.083380, 0.615263,
		32.466736, 34.145340, 39.360504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828478, 33.729927, 39.509319>,  <31.918007, 34.086975, 38.929821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828478, 33.729927, 39.509319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113754, 33.969456, 39.655071>,  <32.284920, 34.113174, 39.742523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113754, 33.969456, 39.655071>,  <31.828478, 33.729927, 39.509319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113754, 33.969456, 39.655071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476276, 0.032561, 0.878693,
		0.514316, -0.800220, 0.308427,
		0.713190, 0.598822, 0.364379,
		32.327713, 34.149101, 39.764385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442602, 33.078037, 39.676277>,  <31.828478, 33.729927, 39.509319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442602, 33.078037, 39.676277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078413, 33.082043, 39.510899>,  <30.859900, 33.084446, 39.411671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.078413, 33.082043, 39.510899>,  <31.442602, 33.078037, 39.676277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078413, 33.082043, 39.510899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412444, 0.095758, -0.905936,
		0.030520, -0.995354, -0.091315,
		-0.910471, 0.010013, -0.413450,
		30.805271, 33.085045, 39.386864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471079, 32.655609, 39.162292>,  <31.442602, 33.078037, 39.676277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471079, 32.655609, 39.162292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133509, 32.843506, 39.058655>,  <30.930965, 32.956245, 38.996471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133509, 32.843506, 39.058655>,  <31.471079, 32.655609, 39.162292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133509, 32.843506, 39.058655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255642, -0.072466, -0.964052,
		-0.471630, -0.879825, -0.058929,
		-0.843926, 0.469741, -0.259098,
		30.880331, 32.984428, 38.980927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151529, 32.175621, 38.748363>,  <31.471079, 32.655609, 39.162292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151529, 32.175621, 38.748363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977983, 32.529469, 38.679993>,  <30.873856, 32.741776, 38.638969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.977983, 32.529469, 38.679993>,  <31.151529, 32.175621, 38.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977983, 32.529469, 38.679993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072879, -0.154634, -0.985280,
		-0.898027, -0.439933, 0.002620,
		-0.433862, 0.884617, -0.170927,
		30.847824, 32.794853, 38.628716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730410, 32.083607, 38.192642>,  <31.151529, 32.175621, 38.748363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730410, 32.083607, 38.192642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770859, 32.481297, 38.178246>,  <30.795128, 32.719910, 38.169605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770859, 32.481297, 38.178246>,  <30.730410, 32.083607, 38.192642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770859, 32.481297, 38.178246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150542, -0.051055, -0.987284,
		-0.983418, 0.094421, -0.154835,
		0.101125, 0.994222, -0.035995,
		30.801197, 32.779564, 38.167446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215006, 32.361797, 37.731888>,  <30.730410, 32.083607, 38.192642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215006, 32.361797, 37.731888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516466, 32.624561, 37.740711>,  <30.697342, 32.782219, 37.746006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.516466, 32.624561, 37.740711>,  <30.215006, 32.361797, 37.731888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516466, 32.624561, 37.740711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085107, -0.064251, -0.994298,
		-0.651743, 0.751229, -0.104330,
		0.753649, 0.656906, 0.022059,
		30.742561, 32.821632, 37.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.039879, 32.807362, 37.191826>,  <30.215006, 32.361797, 37.731888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.039879, 32.807362, 37.191826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428036, 32.868710, 37.266460>,  <30.660931, 32.905518, 37.311241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428036, 32.868710, 37.266460>,  <30.039879, 32.807362, 37.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428036, 32.868710, 37.266460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211302, -0.164845, -0.963420,
		-0.117002, 0.974322, -0.192372,
		0.970393, 0.153370, 0.186589,
		30.719154, 32.914722, 37.322437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270605, 33.235500, 36.727283>,  <30.039879, 32.807362, 37.191826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270605, 33.235500, 36.727283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603111, 33.052765, 36.853958>,  <30.802616, 32.943123, 36.929962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603111, 33.052765, 36.853958>,  <30.270605, 33.235500, 36.727283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603111, 33.052765, 36.853958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225626, -0.243377, -0.943324,
		0.508023, 0.855608, -0.099236,
		0.831267, -0.456840, 0.316689,
		30.852491, 32.915714, 36.948963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857330, 33.509644, 36.300262>,  <30.270605, 33.235500, 36.727283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857330, 33.509644, 36.300262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016018, 33.175594, 36.452675>,  <31.111231, 32.975166, 36.544121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016018, 33.175594, 36.452675>,  <30.857330, 33.509644, 36.300262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016018, 33.175594, 36.452675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333426, -0.255640, -0.907455,
		0.855244, 0.487049, 0.177035,
		0.396719, -0.835123, 0.381029,
		31.135033, 32.925056, 36.566982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533350, 33.443623, 35.996925>,  <30.857330, 33.509644, 36.300262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533350, 33.443623, 35.996925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447220, 33.078739, 36.136356>,  <31.395542, 32.859810, 36.220013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447220, 33.078739, 36.136356>,  <31.533350, 33.443623, 35.996925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447220, 33.078739, 36.136356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353043, -0.405522, -0.843156,
		0.910492, -0.058489, 0.409369,
		-0.215323, -0.912212, 0.348576,
		31.382624, 32.805077, 36.240929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156704, 33.066273, 35.826889>,  <31.533350, 33.443623, 35.996925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156704, 33.066273, 35.826889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890406, 32.772270, 35.878342>,  <31.730625, 32.595871, 35.909214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890406, 32.772270, 35.878342>,  <32.156704, 33.066273, 35.826889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890406, 32.772270, 35.878342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383135, -0.484649, -0.786335,
		0.640301, -0.474219, 0.604260,
		-0.665749, -0.735004, 0.128632,
		31.690681, 32.551769, 35.916931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572586, 32.468414, 35.772041>,  <32.156704, 33.066273, 35.826889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572586, 32.468414, 35.772041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192101, 32.372986, 35.693794>,  <31.963808, 32.315731, 35.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192101, 32.372986, 35.693794>,  <32.572586, 32.468414, 35.772041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192101, 32.372986, 35.693794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307423, -0.679586, -0.666074,
		0.025963, -0.693720, 0.719776,
		-0.951219, -0.238570, -0.195622,
		31.906734, 32.301414, 35.635109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560482, 31.703173, 35.738125>,  <32.572586, 32.468414, 35.772041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560482, 31.703173, 35.738125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232628, 31.825706, 35.544483>,  <32.035915, 31.899227, 35.428299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.232628, 31.825706, 35.544483>,  <32.560482, 31.703173, 35.738125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232628, 31.825706, 35.544483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088767, -0.766916, -0.635579,
		-0.565970, -0.563915, 0.601397,
		-0.819633, 0.306335, -0.484108,
		31.986738, 31.917606, 35.399250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189785, 31.129753, 35.601421>,  <32.560482, 31.703173, 35.738125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189785, 31.129753, 35.601421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107296, 31.412748, 35.331036>,  <32.057800, 31.582546, 35.168804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107296, 31.412748, 35.331036>,  <32.189785, 31.129753, 35.601421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107296, 31.412748, 35.331036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196346, -0.706684, -0.679740,
		-0.958603, -0.007456, 0.284649,
		-0.206225, 0.707490, -0.675965,
		32.045429, 31.624996, 35.128246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027573, 30.784929, 35.001293>,  <32.189785, 31.129753, 35.601421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027573, 30.784929, 35.001293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967735, 31.155499, 34.863094>,  <31.931833, 31.377840, 34.780174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967735, 31.155499, 34.863094>,  <32.027573, 30.784929, 35.001293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967735, 31.155499, 34.863094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197977, -0.370413, -0.907524,
		-0.968725, -0.067358, 0.238821,
		-0.149591, 0.926422, -0.345493,
		31.922857, 31.433426, 34.759445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443129, 30.725735, 34.628956>,  <32.027573, 30.784929, 35.001293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443129, 30.725735, 34.628956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672979, 31.028042, 34.503342>,  <31.810890, 31.209427, 34.427975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.672979, 31.028042, 34.503342>,  <31.443129, 30.725735, 34.628956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672979, 31.028042, 34.503342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054353, -0.418104, -0.906772,
		-0.816608, 0.503988, -0.281333,
		0.574628, 0.755768, -0.314034,
		31.845367, 31.254772, 34.409130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446585, 30.168720, 34.166836>,  <31.443129, 30.725735, 34.628956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446585, 30.168720, 34.166836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565781, 29.789537, 34.211697>,  <31.637299, 29.562027, 34.238613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565781, 29.789537, 34.211697>,  <31.446585, 30.168720, 34.166836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565781, 29.789537, 34.211697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422944, -0.025788, 0.905789,
		-0.855757, -0.317351, -0.408617,
		0.297991, -0.947958, 0.112153,
		31.655178, 29.505150, 34.245342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947773, 29.856613, 34.491585>,  <31.446585, 30.168720, 34.166836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947773, 29.856613, 34.491585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241949, 29.594881, 34.561981>,  <31.418455, 29.437841, 34.604221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241949, 29.594881, 34.561981>,  <30.947773, 29.856613, 34.491585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241949, 29.594881, 34.561981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289539, -0.068646, 0.954702,
		-0.612611, -0.753084, -0.239940,
		0.735442, -0.654333, 0.175994,
		31.462582, 29.398581, 34.614780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662148, 29.187075, 34.887260>,  <30.947773, 29.856613, 34.491585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662148, 29.187075, 34.887260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054182, 29.208939, 34.963619>,  <31.289402, 29.222057, 35.009434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054182, 29.208939, 34.963619>,  <30.662148, 29.187075, 34.887260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054182, 29.208939, 34.963619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176786, -0.197618, 0.964206,
		0.090428, -0.978754, -0.184020,
		0.980086, 0.054659, 0.190900,
		31.348207, 29.225336, 35.020889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861694, 28.612865, 35.273026>,  <30.662148, 29.187075, 34.887260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861694, 28.612865, 35.273026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119886, 28.896980, 35.385345>,  <31.274801, 29.067450, 35.452736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119886, 28.896980, 35.385345>,  <30.861694, 28.612865, 35.273026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119886, 28.896980, 35.385345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209664, -0.188737, 0.959385,
		0.734436, -0.678137, 0.027095,
		0.645481, 0.710287, 0.280796,
		31.313530, 29.110067, 35.469585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071951, 28.356735, 35.861916>,  <30.861694, 28.612865, 35.273026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071951, 28.356735, 35.861916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201286, 28.734964, 35.876575>,  <31.278887, 28.961903, 35.885372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201286, 28.734964, 35.876575>,  <31.071951, 28.356735, 35.861916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201286, 28.734964, 35.876575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130142, 0.006070, 0.991477,
		0.937292, -0.325350, 0.125021,
		0.323336, 0.945574, 0.036652,
		31.298286, 29.018637, 35.887569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608864, 28.258404, 36.296040>,  <31.071951, 28.356735, 35.861916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608864, 28.258404, 36.296040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525331, 28.649553, 36.291065>,  <31.475212, 28.884243, 36.288078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.525331, 28.649553, 36.291065>,  <31.608864, 28.258404, 36.296040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525331, 28.649553, 36.291065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020739, 0.008288, 0.999750,
		0.977732, 0.209035, 0.018549,
		-0.208829, 0.977873, -0.012438,
		31.462683, 28.942915, 36.287334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057896, 28.558016, 36.792435>,  <31.608864, 28.258404, 36.296040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057896, 28.558016, 36.792435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742043, 28.800747, 36.756123>,  <31.552530, 28.946384, 36.734337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742043, 28.800747, 36.756123>,  <32.057896, 28.558016, 36.792435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742043, 28.800747, 36.756123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068732, 0.234499, 0.969683,
		0.609718, 0.759455, -0.226877,
		-0.789633, 0.606827, -0.090780,
		31.505152, 28.982796, 36.728889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232010, 29.052219, 37.361988>,  <32.057896, 28.558016, 36.792435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232010, 29.052219, 37.361988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849079, 29.099554, 37.256527>,  <31.619320, 29.127954, 37.193249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.849079, 29.099554, 37.256527>,  <32.232010, 29.052219, 37.361988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849079, 29.099554, 37.256527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213481, 0.325339, 0.921184,
		0.194787, 0.938163, -0.286195,
		-0.957332, 0.118337, -0.263652,
		31.561880, 29.135056, 37.177433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010159, 29.667421, 37.737858>,  <32.232010, 29.052219, 37.361988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010159, 29.667421, 37.737858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665905, 29.491985, 37.634357>,  <31.459354, 29.386723, 37.572258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665905, 29.491985, 37.634357>,  <32.010159, 29.667421, 37.737858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665905, 29.491985, 37.634357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366680, 0.181166, 0.912537,
		-0.353355, 0.880236, -0.316740,
		-0.860631, -0.438592, -0.258749,
		31.407715, 29.360407, 37.556732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404579, 30.156130, 37.896034>,  <32.010159, 29.667421, 37.737858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404579, 30.156130, 37.896034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295450, 29.771355, 37.889828>,  <31.229973, 29.540489, 37.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295450, 29.771355, 37.889828>,  <31.404579, 30.156130, 37.896034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295450, 29.771355, 37.889828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409912, 0.101634, 0.906446,
		-0.870368, 0.253661, -0.422038,
		-0.272823, -0.961939, -0.015519,
		31.213604, 29.482773, 37.885174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698669, 30.183481, 38.115730>,  <31.404579, 30.156130, 37.896034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698669, 30.183481, 38.115730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849232, 29.819130, 38.183399>,  <30.939569, 29.600519, 38.223999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849232, 29.819130, 38.183399>,  <30.698669, 30.183481, 38.115730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849232, 29.819130, 38.183399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317127, 0.044892, 0.947320,
		-0.870489, -0.410224, -0.271967,
		0.376404, -0.910880, 0.169171,
		30.962152, 29.545866, 38.234150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118437, 29.784704, 38.322819>,  <30.698669, 30.183481, 38.115730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118437, 29.784704, 38.322819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418982, 29.558126, 38.458225>,  <30.599308, 29.422180, 38.539467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418982, 29.558126, 38.458225>,  <30.118437, 29.784704, 38.322819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418982, 29.558126, 38.458225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540824, -0.234665, 0.807739,
		-0.378104, -0.789982, -0.482666,
		0.751364, -0.566446, 0.338513,
		30.644390, 29.388193, 38.559780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899134, 29.045429, 38.432861>,  <30.118437, 29.784704, 38.322819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899134, 29.045429, 38.432861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215874, 29.116205, 38.666672>,  <30.405918, 29.158670, 38.806957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.215874, 29.116205, 38.666672>,  <29.899134, 29.045429, 38.432861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215874, 29.116205, 38.666672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493973, -0.377237, 0.783379,
		0.359116, -0.909056, -0.211311,
		0.791850, 0.176942, 0.584522,
		30.453428, 29.169289, 38.842030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896116, 28.502106, 38.954853>,  <29.899134, 29.045429, 38.432861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896116, 28.502106, 38.954853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161892, 28.758282, 39.108921>,  <30.321358, 28.911987, 39.201363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161892, 28.758282, 39.108921>,  <29.896116, 28.502106, 38.954853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161892, 28.758282, 39.108921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366755, -0.169630, 0.914722,
		0.651160, -0.749042, 0.122175,
		0.664440, 0.640439, 0.385171,
		30.361223, 28.950413, 39.224472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228838, 28.164793, 39.594776>,  <29.896116, 28.502106, 38.954853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228838, 28.164793, 39.594776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276342, 28.558004, 39.650707>,  <30.304846, 28.793930, 39.684265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276342, 28.558004, 39.650707>,  <30.228838, 28.164793, 39.594776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276342, 28.558004, 39.650707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234496, -0.109077, 0.965978,
		0.964836, -0.147510, 0.217562,
		0.118761, 0.983028, 0.139831,
		30.311970, 28.852913, 39.692657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328394, 28.186918, 40.289558>,  <30.228838, 28.164793, 39.594776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328394, 28.186918, 40.289558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246229, 28.567520, 40.197952>,  <30.196930, 28.795881, 40.142990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246229, 28.567520, 40.197952>,  <30.328394, 28.186918, 40.289558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246229, 28.567520, 40.197952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378107, 0.138680, 0.915316,
		0.902686, 0.274608, 0.331284,
		-0.205410, 0.951503, -0.229015,
		30.184607, 28.852972, 40.129246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697220, 28.580187, 40.783443>,  <30.328394, 28.186918, 40.289558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697220, 28.580187, 40.783443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392567, 28.802471, 40.650116>,  <30.209774, 28.935841, 40.570122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392567, 28.802471, 40.650116>,  <30.697220, 28.580187, 40.783443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392567, 28.802471, 40.650116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229420, 0.249813, 0.940723,
		0.606035, 0.792957, -0.062776,
		-0.761635, 0.555709, -0.333316,
		30.164076, 28.969183, 40.550121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719149, 29.009808, 41.253796>,  <30.697220, 28.580187, 40.783443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719149, 29.009808, 41.253796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365467, 29.066309, 41.075706>,  <30.153257, 29.100210, 40.968853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365467, 29.066309, 41.075706>,  <30.719149, 29.009808, 41.253796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365467, 29.066309, 41.075706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397942, 0.271306, 0.876376,
		0.244585, 0.952072, -0.183679,
		-0.884206, 0.141255, -0.445227,
		30.100204, 29.108685, 40.942139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486940, 29.577089, 41.465221>,  <30.719149, 29.009808, 41.253796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486940, 29.577089, 41.465221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154943, 29.376530, 41.367474>,  <29.955746, 29.256195, 41.308826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.154943, 29.376530, 41.367474>,  <30.486940, 29.577089, 41.465221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.154943, 29.376530, 41.367474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412578, 0.257049, 0.873902,
		-0.375358, 0.826152, -0.420213,
		-0.829992, -0.501397, -0.244367,
		29.905947, 29.226110, 41.294163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958561, 30.057774, 41.665840>,  <30.486940, 29.577089, 41.465221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958561, 30.057774, 41.665840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786308, 29.696806, 41.660267>,  <29.682957, 29.480225, 41.656921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786308, 29.696806, 41.660267>,  <29.958561, 30.057774, 41.665840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786308, 29.696806, 41.660267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278843, 0.118349, 0.953017,
		-0.858373, 0.414283, -0.302598,
		-0.430631, -0.902421, -0.013933,
		29.657120, 29.426079, 41.656086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251524, 30.071453, 42.051529>,  <29.958561, 30.057774, 41.665840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251524, 30.071453, 42.051529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368340, 29.688896, 42.049622>,  <29.438429, 29.459362, 42.048477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.368340, 29.688896, 42.049622>,  <29.251524, 30.071453, 42.051529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368340, 29.688896, 42.049622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222401, -0.072759, 0.972237,
		-0.930189, -0.282870, -0.233952,
		0.292039, -0.956395, -0.004769,
		29.455952, 29.401978, 42.048191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760458, 29.767145, 42.447151>,  <29.251524, 30.071453, 42.051529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760458, 29.767145, 42.447151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051281, 29.493811, 42.420502>,  <29.225775, 29.329809, 42.404510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.051281, 29.493811, 42.420502>,  <28.760458, 29.767145, 42.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051281, 29.493811, 42.420502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316155, -0.419357, 0.850991,
		-0.609454, -0.597654, -0.520936,
		0.727057, -0.683337, -0.066627,
		29.269398, 29.288809, 42.400513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399881, 29.200247, 42.557766>,  <28.760458, 29.767145, 42.447151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399881, 29.200247, 42.557766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766943, 29.089012, 42.671314>,  <28.987179, 29.022270, 42.739441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.766943, 29.089012, 42.671314>,  <28.399881, 29.200247, 42.557766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766943, 29.089012, 42.671314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354842, -0.251859, 0.900363,
		-0.178883, -0.926950, -0.329796,
		0.917654, -0.278085, 0.283868,
		29.042238, 29.005585, 42.756474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295191, 28.687857, 43.045288>,  <28.399881, 29.200247, 42.557766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295191, 28.687857, 43.045288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682547, 28.760296, 43.113899>,  <28.914961, 28.803759, 43.155067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.682547, 28.760296, 43.113899>,  <28.295191, 28.687857, 43.045288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.682547, 28.760296, 43.113899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106366, -0.322206, 0.940675,
		0.225624, -0.929186, -0.292758,
		0.968391, 0.181099, 0.171531,
		28.973064, 28.814625, 43.165359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554384, 28.092009, 43.336941>,  <28.295191, 28.687857, 43.045288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554384, 28.092009, 43.336941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819393, 28.369827, 43.449131>,  <28.978399, 28.536518, 43.516445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.819393, 28.369827, 43.449131>,  <28.554384, 28.092009, 43.336941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819393, 28.369827, 43.449131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060366, -0.422742, 0.904237,
		0.746606, -0.582146, -0.322003,
		0.662523, 0.694547, 0.280479,
		29.018150, 28.578192, 43.533276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180891, 27.732267, 43.612656>,  <28.554384, 28.092009, 43.336941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180891, 27.732267, 43.612656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166689, 28.104235, 43.759075>,  <29.158167, 28.327415, 43.846928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166689, 28.104235, 43.759075>,  <29.180891, 27.732267, 43.612656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166689, 28.104235, 43.759075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036939, -0.364813, 0.930348,
		0.998686, 0.046556, -0.021397,
		-0.035507, 0.929916, 0.366053,
		29.156036, 28.383209, 43.868893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774696, 27.851509, 44.058372>,  <29.180891, 27.732267, 43.612656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774696, 27.851509, 44.058372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477774, 28.090601, 44.179501>,  <29.299620, 28.234056, 44.252178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477774, 28.090601, 44.179501>,  <29.774696, 27.851509, 44.058372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477774, 28.090601, 44.179501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054510, -0.396559, 0.916390,
		0.667838, 0.696750, 0.261786,
		-0.742308, 0.597730, 0.302817,
		29.255081, 28.269920, 44.270344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463144, 27.914988, 44.262993>,  <29.774696, 27.851509, 44.058372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463144, 27.914988, 44.262993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826624, 27.899426, 44.429245>,  <31.044712, 27.890089, 44.528996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.826624, 27.899426, 44.429245>,  <30.463144, 27.914988, 44.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826624, 27.899426, 44.429245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415092, -0.021506, -0.909525,
		0.044323, 0.999011, -0.003393,
		0.908699, -0.038904, 0.415635,
		31.099234, 27.887754, 44.553936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840965, 28.439436, 43.975433>,  <30.463144, 27.914988, 44.262993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840965, 28.439436, 43.975433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145226, 28.220877, 44.115639>,  <31.327782, 28.089741, 44.199760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145226, 28.220877, 44.115639>,  <30.840965, 28.439436, 43.975433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145226, 28.220877, 44.115639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464794, 0.081467, -0.881663,
		0.453185, 0.833553, 0.315931,
		0.760651, -0.546400, 0.350511,
		31.373421, 28.056957, 44.220791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.456854, 28.735577, 43.763744>,  <30.840965, 28.439436, 43.975433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.456854, 28.735577, 43.763744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579538, 28.361235, 43.833145>,  <31.653149, 28.136629, 43.874786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579538, 28.361235, 43.833145>,  <31.456854, 28.735577, 43.763744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579538, 28.361235, 43.833145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651204, 0.073386, -0.755346,
		0.694162, 0.344657, 0.631941,
		0.306711, -0.935856, 0.173501,
		31.671553, 28.080479, 43.885197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117065, 28.836399, 43.905220>,  <31.456854, 28.735577, 43.763744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117065, 28.836399, 43.905220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039543, 28.463240, 43.783798>,  <31.993031, 28.239344, 43.710945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039543, 28.463240, 43.783798>,  <32.117065, 28.836399, 43.905220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039543, 28.463240, 43.783798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650847, 0.109258, -0.751306,
		0.734056, -0.343173, 0.585999,
		-0.193803, -0.932896, -0.303554,
		31.981401, 28.183371, 43.692734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814690, 28.638605, 43.593678>,  <32.117065, 28.836399, 43.905220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814690, 28.638605, 43.593678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548759, 28.362003, 43.480667>,  <32.389202, 28.196041, 43.412861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.548759, 28.362003, 43.480667>,  <32.814690, 28.638605, 43.593678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548759, 28.362003, 43.480667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573830, -0.230621, -0.785833,
		0.478252, -0.684568, 0.550130,
		-0.664827, -0.691507, -0.282531,
		32.349312, 28.154551, 43.395908>
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
