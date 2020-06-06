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
	<23.918003, 35.083134, 35.042900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242144, 34.849033, 35.054298>,  <24.436628, 34.708572, 35.061138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242144, 34.849033, 35.054298>,  <23.918003, 35.083134, 35.042900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242144, 34.849033, 35.054298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135623, -0.140024, 0.980816,
		-0.570032, -0.798671, -0.192842,
		0.810352, -0.585250, 0.028500,
		24.485249, 34.673458, 35.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.728176, 34.605297, 35.371243>,  <23.918003, 35.083134, 35.042900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.728176, 34.605297, 35.371243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123392, 34.598022, 35.432487>,  <24.360521, 34.593658, 35.469234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.123392, 34.598022, 35.432487>,  <23.728176, 34.605297, 35.371243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.123392, 34.598022, 35.432487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153625, -0.031445, 0.987629,
		-0.013145, -0.999340, -0.033863,
		0.988042, -0.018185, 0.153110,
		24.419806, 34.592567, 35.478420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.893860, 34.422543, 36.098614>,  <23.728176, 34.605297, 35.371243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.893860, 34.422543, 36.098614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275942, 34.383144, 35.986984>,  <24.505192, 34.359505, 35.920006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275942, 34.383144, 35.986984>,  <23.893860, 34.422543, 36.098614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275942, 34.383144, 35.986984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254922, -0.205151, 0.944949,
		-0.150324, -0.973762, -0.170853,
		0.955206, -0.098494, -0.279072,
		24.562504, 34.353596, 35.903263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.239462, 33.742901, 36.474525>,  <23.893860, 34.422543, 36.098614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.239462, 33.742901, 36.474525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502405, 34.030354, 36.383797>,  <24.660172, 34.202824, 36.329361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.502405, 34.030354, 36.383797>,  <24.239462, 33.742901, 36.474525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502405, 34.030354, 36.383797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389123, -0.065938, 0.918823,
		0.645339, -0.692257, -0.322981,
		0.657358, 0.718632, -0.226821,
		24.699614, 34.245945, 36.315750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920364, 33.554787, 36.387817>,  <24.239462, 33.742901, 36.474525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920364, 33.554787, 36.387817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904108, 33.915211, 36.560532>,  <24.894354, 34.131466, 36.664162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904108, 33.915211, 36.560532>,  <24.920364, 33.554787, 36.387817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904108, 33.915211, 36.560532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410845, -0.378849, 0.829265,
		0.910799, 0.211100, -0.354799,
		-0.040643, 0.901061, 0.431784,
		24.891914, 34.185528, 36.690067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.553846, 33.568245, 36.720615>,  <24.920364, 33.554787, 36.387817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.553846, 33.568245, 36.720615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270088, 33.755150, 36.931679>,  <25.099834, 33.867294, 37.058319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270088, 33.755150, 36.931679>,  <25.553846, 33.568245, 36.720615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270088, 33.755150, 36.931679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077724, -0.692227, 0.717482,
		0.700513, 0.549989, 0.454745,
		-0.709394, 0.467262, 0.527662,
		25.057270, 33.895329, 37.089977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016270, 33.086884, 36.369125>,  <25.553846, 33.568245, 36.720615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016270, 33.086884, 36.369125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350079, 33.301846, 36.417728>,  <26.550364, 33.430824, 36.446888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350079, 33.301846, 36.417728>,  <26.016270, 33.086884, 36.369125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350079, 33.301846, 36.417728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283397, -0.607795, 0.741803,
		0.472501, -0.584617, -0.659519,
		0.834523, 0.537408, 0.121506,
		26.600435, 33.463066, 36.454182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565670, 32.592293, 36.438408>,  <26.016270, 33.086884, 36.369125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565670, 32.592293, 36.438408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681776, 32.941223, 36.595783>,  <26.751440, 33.150581, 36.690208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.681776, 32.941223, 36.595783>,  <26.565670, 32.592293, 36.438408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681776, 32.941223, 36.595783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415417, -0.485242, 0.769395,
		0.862076, -0.059888, -0.503228,
		0.290265, 0.872326, 0.393437,
		26.768856, 33.202923, 36.713814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.353268, 32.489960, 36.534199>,  <26.565670, 32.592293, 36.438408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.353268, 32.489960, 36.534199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202293, 32.772499, 36.773735>,  <27.111708, 32.942024, 36.917458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.202293, 32.772499, 36.773735>,  <27.353268, 32.489960, 36.534199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.202293, 32.772499, 36.773735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496218, -0.391723, 0.774804,
		0.781862, 0.589596, -0.202652,
		-0.377438, 0.706349, 0.598842,
		27.089062, 32.984406, 36.953388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870401, 32.625179, 36.981438>,  <27.353268, 32.489960, 36.534199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870401, 32.625179, 36.981438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560114, 32.787376, 37.174866>,  <27.373941, 32.884693, 37.290924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560114, 32.787376, 37.174866>,  <27.870401, 32.625179, 36.981438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560114, 32.787376, 37.174866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361741, -0.342175, 0.867214,
		0.517111, 0.847641, 0.118750,
		-0.775719, 0.405489, 0.483568,
		27.327398, 32.909023, 37.319935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193117, 33.016285, 37.565136>,  <27.870401, 32.625179, 36.981438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193117, 33.016285, 37.565136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818216, 32.911301, 37.656940>,  <27.593277, 32.848309, 37.712021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818216, 32.911301, 37.656940>,  <28.193117, 33.016285, 37.565136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818216, 32.911301, 37.656940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324462, -0.415651, 0.849682,
		-0.127615, 0.870831, 0.474728,
		-0.937251, -0.262463, 0.229508,
		27.537041, 32.832561, 37.725792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124702, 33.105812, 38.222637>,  <28.193117, 33.016285, 37.565136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124702, 33.105812, 38.222637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831690, 32.850464, 38.128082>,  <27.655882, 32.697254, 38.071350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831690, 32.850464, 38.128082>,  <28.124702, 33.105812, 38.222637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831690, 32.850464, 38.128082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217207, -0.548295, 0.807585,
		-0.645152, 0.540234, 0.540302,
		-0.732530, -0.638372, -0.236391,
		27.611931, 32.658951, 38.057163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549471, 33.012978, 38.741798>,  <28.124702, 33.105812, 38.222637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549471, 33.012978, 38.741798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526497, 32.678917, 38.522991>,  <27.512712, 32.478481, 38.391708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526497, 32.678917, 38.522991>,  <27.549471, 33.012978, 38.741798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526497, 32.678917, 38.522991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091594, -0.541199, 0.835891,
		-0.994139, 0.098114, -0.045410,
		-0.057436, -0.835151, -0.547014,
		27.509266, 32.428371, 38.358887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030012, 32.530891, 38.880997>,  <27.549471, 33.012978, 38.741798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030012, 32.530891, 38.880997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298136, 32.286034, 38.713203>,  <27.459009, 32.139118, 38.612526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298136, 32.286034, 38.713203>,  <27.030012, 32.530891, 38.880997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298136, 32.286034, 38.713203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191227, -0.688673, 0.699400,
		-0.717025, -0.388594, -0.578680,
		0.670304, -0.612147, -0.419486,
		27.499228, 32.102390, 38.587357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649401, 31.993849, 38.573784>,  <27.030012, 32.530891, 38.880997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649401, 31.993849, 38.573784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993746, 31.897818, 38.753239>,  <27.200354, 31.840199, 38.860912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993746, 31.897818, 38.753239>,  <26.649401, 31.993849, 38.573784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993746, 31.897818, 38.753239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450812, -0.768737, 0.453666,
		0.235969, -0.592796, -0.770008,
		0.860864, -0.240077, 0.448637,
		27.252005, 31.825794, 38.887829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495090, 32.012646, 37.846405>,  <26.649401, 31.993849, 38.573784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495090, 32.012646, 37.846405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795938, 32.245628, 37.969734>,  <26.976446, 32.385418, 38.043732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795938, 32.245628, 37.969734>,  <26.495090, 32.012646, 37.846405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795938, 32.245628, 37.969734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213784, 0.658174, -0.721875,
		-0.623389, 0.477022, 0.619545,
		0.752119, 0.582457, 0.308319,
		27.021574, 32.420364, 38.062229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273520, 32.651539, 38.010017>,  <26.495090, 32.012646, 37.846405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273520, 32.651539, 38.010017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659496, 32.718597, 37.929245>,  <26.891083, 32.758835, 37.880779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.659496, 32.718597, 37.929245>,  <26.273520, 32.651539, 38.010017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.659496, 32.718597, 37.929245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262230, 0.583822, -0.768366,
		-0.010924, 0.794383, 0.607318,
		0.964943, 0.167651, -0.201934,
		26.948978, 32.768894, 37.868664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309187, 33.369286, 37.928028>,  <26.273520, 32.651539, 38.010017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309187, 33.369286, 37.928028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645573, 33.258530, 37.742077>,  <26.847404, 33.192078, 37.630508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645573, 33.258530, 37.742077>,  <26.309187, 33.369286, 37.928028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645573, 33.258530, 37.742077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294059, 0.487330, -0.822216,
		0.454209, 0.828157, 0.328407,
		0.840966, -0.276887, -0.464876,
		26.897863, 33.175465, 37.602615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.636986, 33.932693, 37.789536>,  <26.309187, 33.369286, 37.928028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.636986, 33.932693, 37.789536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759085, 33.647675, 37.536839>,  <26.832344, 33.476665, 37.385220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759085, 33.647675, 37.536839>,  <26.636986, 33.932693, 37.789536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759085, 33.647675, 37.536839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408399, 0.501348, -0.762798,
		0.860252, 0.490847, -0.137968,
		0.305248, -0.712545, -0.631747,
		26.850658, 33.433910, 37.347313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.086555, 34.245689, 37.231579>,  <26.636986, 33.932693, 37.789536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.086555, 34.245689, 37.231579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921749, 33.918850, 37.070293>,  <26.822865, 33.722744, 36.973522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.921749, 33.918850, 37.070293>,  <27.086555, 34.245689, 37.231579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.921749, 33.918850, 37.070293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323244, 0.544817, -0.773749,
		0.851912, -0.188460, -0.488598,
		-0.412018, -0.817102, -0.403218,
		26.798143, 33.673717, 36.949329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252747, 34.128487, 36.504940>,  <27.086555, 34.245689, 37.231579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252747, 34.128487, 36.504940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895285, 33.959858, 36.566460>,  <26.680807, 33.858681, 36.603371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895285, 33.959858, 36.566460>,  <27.252747, 34.128487, 36.504940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895285, 33.959858, 36.566460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418956, 0.660974, -0.622567,
		0.160798, -0.620797, -0.767304,
		-0.893655, -0.421574, 0.153803,
		26.627188, 33.833385, 36.612602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322475, 34.115814, 35.773815>,  <27.252747, 34.128487, 36.504940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322475, 34.115814, 35.773815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692984, 34.228794, 35.873611>,  <27.915289, 34.296581, 35.933491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.692984, 34.228794, 35.873611>,  <27.322475, 34.115814, 35.773815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692984, 34.228794, 35.873611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045630, -0.741207, 0.669724,
		0.374092, -0.608960, -0.699444,
		0.926268, 0.282454, 0.249493,
		27.970863, 34.313530, 35.948460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341003, 34.634865, 35.144981>,  <27.322475, 34.115814, 35.773815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341003, 34.634865, 35.144981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427530, 34.998943, 35.003700>,  <27.479446, 35.217388, 34.918930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427530, 34.998943, 35.003700>,  <27.341003, 34.634865, 35.144981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427530, 34.998943, 35.003700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914645, -0.315472, -0.252790,
		-0.341513, -0.268372, -0.900747,
		0.216318, 0.910195, -0.353203,
		27.492426, 35.272003, 34.897739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568279, 34.667850, 34.397587>,  <27.341003, 34.634865, 35.144981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568279, 34.667850, 34.397587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704165, 35.004982, 34.564552>,  <27.785696, 35.207260, 34.664730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.704165, 35.004982, 34.564552>,  <27.568279, 34.667850, 34.397587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704165, 35.004982, 34.564552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936739, -0.263393, -0.230531,
		-0.084354, 0.469323, -0.878988,
		0.339713, 0.842828, 0.417415,
		27.806078, 35.257832, 34.689777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831617, 35.133278, 33.929024>,  <27.568279, 34.667850, 34.397587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831617, 35.133278, 33.929024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976948, 35.089973, 34.299164>,  <28.064146, 35.063992, 34.521248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976948, 35.089973, 34.299164>,  <27.831617, 35.133278, 33.929024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976948, 35.089973, 34.299164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797652, -0.477063, -0.369001,
		0.481400, 0.872175, -0.086973,
		0.363325, -0.108263, 0.925351,
		28.085945, 35.057495, 34.576771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507383, 35.422455, 33.920837>,  <27.831617, 35.133278, 33.929024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507383, 35.422455, 33.920837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480400, 35.151699, 34.214031>,  <28.464211, 34.989246, 34.389946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.480400, 35.151699, 34.214031>,  <28.507383, 35.422455, 33.920837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.480400, 35.151699, 34.214031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871399, -0.397769, -0.287131,
		0.485915, 0.619353, 0.616675,
		-0.067459, -0.676891, 0.732985,
		28.460163, 34.948631, 34.433926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075172, 35.434231, 34.274506>,  <28.507383, 35.422455, 33.920837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075172, 35.434231, 34.274506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919376, 35.073090, 34.347336>,  <28.825899, 34.856403, 34.391033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919376, 35.073090, 34.347336>,  <29.075172, 35.434231, 34.274506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919376, 35.073090, 34.347336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895628, -0.417381, -0.153763,
		0.214822, 0.103185, 0.971187,
		-0.389489, -0.902854, 0.182078,
		28.802530, 34.802235, 34.401958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444748, 35.089905, 34.796108>,  <29.075172, 35.434231, 34.274506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444748, 35.089905, 34.796108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270679, 34.821377, 34.556122>,  <29.166239, 34.660259, 34.412132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270679, 34.821377, 34.556122>,  <29.444748, 35.089905, 34.796108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270679, 34.821377, 34.556122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900224, -0.313351, -0.302338,
		0.014966, -0.671670, 0.740699,
		-0.435170, -0.671320, -0.599964,
		29.140129, 34.619980, 34.376133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574385, 34.555794, 35.298344>,  <29.444748, 35.089905, 34.796108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574385, 34.555794, 35.298344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909443, 34.772789, 35.272865>,  <30.110477, 34.902988, 35.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.909443, 34.772789, 35.272865>,  <29.574385, 34.555794, 35.298344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.909443, 34.772789, 35.272865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428353, 0.724766, 0.539656,
		0.338921, -0.424756, 0.839473,
		0.837644, 0.542491, -0.063693,
		30.160736, 34.935535, 35.253757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847767, 34.154812, 34.771233>,  <29.574385, 34.555794, 35.298344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847767, 34.154812, 34.771233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205273, 34.294277, 34.658363>,  <30.419777, 34.377956, 34.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205273, 34.294277, 34.658363>,  <29.847767, 34.154812, 34.771233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205273, 34.294277, 34.658363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112820, -0.434114, -0.893766,
		-0.434114, 0.830651, -0.348660,
		0.893766, 0.348660, -0.282169,
		30.473402, 34.398876, 34.573711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493231, 33.710499, 34.851486>,  <29.847767, 34.154812, 34.771233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493231, 33.710499, 34.851486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565983, 33.394215, 35.085304>,  <30.609634, 33.204445, 35.225594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565983, 33.394215, 35.085304>,  <30.493231, 33.710499, 34.851486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565983, 33.394215, 35.085304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847578, 0.175319, 0.500874,
		-0.498529, -0.586547, -0.638303,
		0.181880, -0.790712, 0.584546,
		30.620546, 33.157001, 35.260670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881100, 33.441486, 34.827404>,  <30.493231, 33.710499, 34.851486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881100, 33.441486, 34.827404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049261, 33.312485, 35.166637>,  <30.150158, 33.235085, 35.370178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049261, 33.312485, 35.166637>,  <29.881100, 33.441486, 34.827404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049261, 33.312485, 35.166637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888354, 0.043891, 0.457056,
		-0.184627, -0.945549, -0.268048,
		0.420404, -0.322506, 0.848086,
		30.175383, 33.215733, 35.421062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420042, 32.867928, 35.049068>,  <29.881100, 33.441486, 34.827404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420042, 32.867928, 35.049068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620070, 32.986961, 35.374367>,  <29.740086, 33.058384, 35.569546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.620070, 32.986961, 35.374367>,  <29.420042, 32.867928, 35.049068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620070, 32.986961, 35.374367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834076, -0.087067, 0.544736,
		0.232914, -0.950716, 0.204673,
		0.500069, 0.297589, 0.813248,
		29.770090, 33.076237, 35.618340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272205, 32.351101, 35.645679>,  <29.420042, 32.867928, 35.049068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272205, 32.351101, 35.645679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390888, 32.694424, 35.813141>,  <29.462097, 32.900417, 35.913616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390888, 32.694424, 35.813141>,  <29.272205, 32.351101, 35.645679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390888, 32.694424, 35.813141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905451, 0.113514, 0.408991,
		0.303519, -0.500417, 0.810839,
		0.296708, 0.858311, 0.418649,
		29.479900, 32.951916, 35.938736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088766, 32.380333, 36.365158>,  <29.272205, 32.351101, 35.645679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088766, 32.380333, 36.365158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091902, 32.742634, 36.195663>,  <29.093782, 32.960014, 36.093967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.091902, 32.742634, 36.195663>,  <29.088766, 32.380333, 36.365158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091902, 32.742634, 36.195663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958922, 0.126969, 0.253669,
		0.283563, 0.404339, 0.869542,
		0.007837, 0.905753, -0.423733,
		29.094254, 33.014359, 36.068542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354414, 32.355385, 36.402779>,  <29.088766, 32.380333, 36.365158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354414, 32.355385, 36.402779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375032, 32.017281, 36.615524>,  <28.387403, 31.814419, 36.743172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.375032, 32.017281, 36.615524>,  <28.354414, 32.355385, 36.402779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375032, 32.017281, 36.615524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644641, -0.434920, -0.628715,
		0.762745, -0.310454, -0.567307,
		0.051546, -0.845259, 0.531865,
		28.390495, 31.763702, 36.775085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168707, 33.010071, 35.968685>,  <28.354414, 32.355385, 36.402779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168707, 33.010071, 35.968685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265568, 33.182270, 36.316486>,  <28.323685, 33.285591, 36.525166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265568, 33.182270, 36.316486>,  <28.168707, 33.010071, 35.968685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265568, 33.182270, 36.316486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937430, 0.127265, -0.324082,
		-0.250173, 0.893575, -0.372743,
		0.242154, 0.430497, 0.869502,
		28.338215, 33.311420, 36.577335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540033, 33.641922, 35.805794>,  <28.168707, 33.010071, 35.968685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540033, 33.641922, 35.805794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647884, 33.558533, 36.181843>,  <28.712595, 33.508499, 36.407475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647884, 33.558533, 36.181843>,  <28.540033, 33.641922, 35.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647884, 33.558533, 36.181843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960459, 0.128599, -0.246944,
		-0.069418, 0.969536, 0.234905,
		0.269630, -0.208474, 0.940127,
		28.728773, 33.495991, 36.463882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076897, 34.224888, 36.208649>,  <28.540033, 33.641922, 35.805794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076897, 34.224888, 36.208649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112331, 33.836853, 36.299049>,  <29.133593, 33.604031, 36.353291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.112331, 33.836853, 36.299049>,  <29.076897, 34.224888, 36.208649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112331, 33.836853, 36.299049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967992, 0.030355, -0.249138,
		0.234826, 0.240838, 0.941729,
		0.088588, -0.970091, 0.226001,
		29.138908, 33.545826, 36.366848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830782, 34.057602, 36.460384>,  <29.076897, 34.224888, 36.208649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830782, 34.057602, 36.460384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732656, 33.695480, 36.321674>,  <29.673780, 33.478207, 36.238449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732656, 33.695480, 36.321674>,  <29.830782, 34.057602, 36.460384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732656, 33.695480, 36.321674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941879, -0.137875, -0.306356,
		0.229532, -0.401776, 0.886505,
		-0.245313, -0.905299, -0.346778,
		29.659063, 33.423889, 36.217640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378479, 33.670841, 36.629776>,  <29.830782, 34.057602, 36.460384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378479, 33.670841, 36.629776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177225, 33.467781, 36.350021>,  <30.056473, 33.345943, 36.182167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.177225, 33.467781, 36.350021>,  <30.378479, 33.670841, 36.629776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.177225, 33.467781, 36.350021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861390, -0.229293, -0.453246,
		0.069728, -0.830489, 0.552653,
		-0.503136, -0.507654, -0.699387,
		30.026285, 33.315483, 36.140205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703289, 32.912300, 36.547291>,  <30.378479, 33.670841, 36.629776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703289, 32.912300, 36.547291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539408, 32.989082, 36.190575>,  <30.441078, 33.035152, 35.976543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.539408, 32.989082, 36.190575>,  <30.703289, 32.912300, 36.547291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539408, 32.989082, 36.190575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844074, -0.290978, -0.450412,
		-0.345951, -0.937275, -0.042809,
		-0.409704, 0.191955, -0.891794,
		30.416496, 33.046669, 35.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646128, 32.352169, 36.113197>,  <30.703289, 32.912300, 36.547291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646128, 32.352169, 36.113197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678371, 32.671997, 35.875145>,  <30.697718, 32.863895, 35.732311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.678371, 32.671997, 35.875145>,  <30.646128, 32.352169, 36.113197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.678371, 32.671997, 35.875145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883210, -0.334048, -0.329169,
		-0.461998, -0.499094, -0.733118,
		0.080610, 0.799573, -0.595134,
		30.702555, 32.911869, 35.696606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.958773, 32.217129, 35.451588>,  <30.646128, 32.352169, 36.113197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.958773, 32.217129, 35.451588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036221, 32.599468, 35.540016>,  <31.082689, 32.828873, 35.593071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036221, 32.599468, 35.540016>,  <30.958773, 32.217129, 35.451588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036221, 32.599468, 35.540016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981048, -0.186918, -0.051051,
		-0.007475, 0.226764, -0.973921,
		0.193620, 0.955845, 0.221069,
		31.094307, 32.886223, 35.606339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545227, 32.369568, 34.974346>,  <30.958773, 32.217129, 35.451588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545227, 32.369568, 34.974346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513422, 32.640129, 35.267239>,  <31.494339, 32.802464, 35.442974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.513422, 32.640129, 35.267239>,  <31.545227, 32.369568, 34.974346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513422, 32.640129, 35.267239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996557, 0.071250, 0.042396,
		-0.023495, 0.733079, -0.679737,
		-0.079511, 0.676401, 0.732229,
		31.489569, 32.843048, 35.486908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102871, 32.132420, 34.420151>,  <31.545227, 32.369568, 34.974346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102871, 32.132420, 34.420151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410103, 31.938517, 34.252792>,  <32.594444, 31.822174, 34.152378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.410103, 31.938517, 34.252792>,  <32.102871, 32.132420, 34.420151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410103, 31.938517, 34.252792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038087, -0.617641, 0.785537,
		-0.639225, -0.619289, -0.455932,
		0.768077, -0.484770, -0.418398,
		32.640530, 31.793089, 34.127274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961063, 31.390614, 34.426472>,  <32.102871, 32.132420, 34.420151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961063, 31.390614, 34.426472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358215, 31.396221, 34.379158>,  <32.596508, 31.399586, 34.350769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.358215, 31.396221, 34.379158>,  <31.961063, 31.390614, 34.426472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358215, 31.396221, 34.379158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075481, -0.842260, 0.533761,
		-0.092147, -0.538889, -0.837321,
		0.992880, 0.014017, -0.118288,
		32.656078, 31.400427, 34.343670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169785, 30.808920, 34.821671>,  <31.961063, 31.390614, 34.426472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169785, 30.808920, 34.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509113, 30.934189, 34.650898>,  <32.712711, 31.009350, 34.548435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509113, 30.934189, 34.650898>,  <32.169785, 30.808920, 34.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509113, 30.934189, 34.650898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481983, -0.790529, 0.377831,
		-0.219172, -0.526295, -0.821570,
		0.848325, 0.313173, -0.426927,
		32.763611, 31.028141, 34.522820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438271, 30.399445, 34.243576>,  <32.169785, 30.808920, 34.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438271, 30.399445, 34.243576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746490, 30.598143, 34.403324>,  <32.931423, 30.717361, 34.499172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746490, 30.598143, 34.403324>,  <32.438271, 30.399445, 34.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746490, 30.598143, 34.403324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405106, -0.865430, 0.294823,
		0.492078, -0.065389, -0.868092,
		0.770551, 0.496745, 0.399370,
		32.977657, 30.747166, 34.523136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990185, 29.947983, 34.241394>,  <32.438271, 30.399445, 34.243576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990185, 29.947983, 34.241394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119305, 30.248432, 34.471741>,  <33.196777, 30.428701, 34.609947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119305, 30.248432, 34.471741>,  <32.990185, 29.947983, 34.241394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119305, 30.248432, 34.471741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540636, -0.645733, 0.539205,
		0.776862, 0.137279, -0.614524,
		0.322797, 0.751121, 0.575864,
		33.216145, 30.473768, 34.644501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695126, 29.730251, 34.431042>,  <32.990185, 29.947983, 34.241394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695126, 29.730251, 34.431042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626755, 30.034334, 34.681759>,  <33.585732, 30.216784, 34.832191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626755, 30.034334, 34.681759>,  <33.695126, 29.730251, 34.431042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626755, 30.034334, 34.681759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652904, -0.389043, 0.649894,
		0.737903, 0.520321, -0.429843,
		-0.170926, 0.760205, 0.626796,
		33.575478, 30.262396, 34.869797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333748, 29.999994, 34.661366>,  <33.695126, 29.730251, 34.431042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333748, 29.999994, 34.661366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085159, 30.127766, 34.947510>,  <33.936005, 30.204428, 35.119194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085159, 30.127766, 34.947510>,  <34.333748, 29.999994, 34.661366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085159, 30.127766, 34.947510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656042, -0.286921, 0.698058,
		0.428231, 0.903129, -0.031246,
		-0.621472, 0.319429, 0.715359,
		33.898716, 30.223595, 35.162117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652336, 30.550663, 35.076904>,  <34.333748, 29.999994, 34.661366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652336, 30.550663, 35.076904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381943, 30.349171, 35.292053>,  <34.219707, 30.228275, 35.421143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381943, 30.349171, 35.292053>,  <34.652336, 30.550663, 35.076904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381943, 30.349171, 35.292053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726232, -0.331527, 0.602226,
		-0.125042, 0.797712, 0.589932,
		-0.675981, -0.503731, 0.537870,
		34.179150, 30.198051, 35.453415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810883, 30.615555, 35.834717>,  <34.652336, 30.550663, 35.076904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810883, 30.615555, 35.834717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607430, 30.274687, 35.785568>,  <34.485359, 30.070166, 35.756081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607430, 30.274687, 35.785568>,  <34.810883, 30.615555, 35.834717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607430, 30.274687, 35.785568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562631, -0.436998, 0.701768,
		-0.651720, 0.287813, 0.701730,
		-0.508633, -0.852171, -0.122868,
		34.454842, 30.019035, 35.748707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599957, 30.380972, 36.504929>,  <34.810883, 30.615555, 35.834717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599957, 30.380972, 36.504929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647442, 30.066299, 36.262596>,  <34.675934, 29.877495, 36.117195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647442, 30.066299, 36.262596>,  <34.599957, 30.380972, 36.504929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647442, 30.066299, 36.262596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550484, -0.455653, 0.699534,
		-0.826363, -0.416546, 0.378965,
		0.118711, -0.786683, -0.605836,
		34.683056, 29.830294, 36.080845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503407, 29.865179, 37.000431>,  <34.599957, 30.380972, 36.504929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503407, 29.865179, 37.000431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738667, 29.790821, 36.685593>,  <34.879822, 29.746206, 36.496689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738667, 29.790821, 36.685593>,  <34.503407, 29.865179, 37.000431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738667, 29.790821, 36.685593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699295, -0.372014, 0.610403,
		-0.406284, -0.909422, -0.088801,
		0.588149, -0.185899, -0.787098,
		34.915112, 29.735052, 36.449463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784283, 29.136269, 36.995087>,  <34.503407, 29.865179, 37.000431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784283, 29.136269, 36.995087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034641, 29.318659, 36.741997>,  <35.184856, 29.428093, 36.590145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034641, 29.318659, 36.741997>,  <34.784283, 29.136269, 36.995087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034641, 29.318659, 36.741997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751984, -0.567964, 0.334571,
		-0.206808, -0.685205, -0.698373,
		0.625900, 0.455974, -0.632722,
		35.222412, 29.455450, 36.552181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114025, 28.719799, 36.460278>,  <34.784283, 29.136269, 36.995087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114025, 28.719799, 36.460278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729691, 28.653292, 36.548958>,  <34.499088, 28.613386, 36.602165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729691, 28.653292, 36.548958>,  <35.114025, 28.719799, 36.460278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729691, 28.653292, 36.548958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237622, 0.905955, -0.350401,
		-0.142586, -0.389357, -0.909983,
		-0.960836, -0.166270, 0.221697,
		34.441441, 28.603411, 36.615467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759384, 28.622807, 35.948090>,  <35.114025, 28.719799, 36.460278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759384, 28.622807, 35.948090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551964, 28.822260, 36.225929>,  <34.427513, 28.941933, 36.392632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551964, 28.822260, 36.225929>,  <34.759384, 28.622807, 35.948090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551964, 28.822260, 36.225929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303142, 0.652375, -0.694631,
		-0.799506, -0.570764, -0.187133,
		-0.518551, 0.498634, 0.694600,
		34.396397, 28.971849, 36.434311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164879, 28.792999, 35.656563>,  <34.759384, 28.622807, 35.948090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164879, 28.792999, 35.656563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203243, 29.081934, 35.930508>,  <34.226261, 29.255295, 36.094875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203243, 29.081934, 35.930508>,  <34.164879, 28.792999, 35.656563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203243, 29.081934, 35.930508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518509, 0.623566, -0.585076,
		-0.849676, -0.298991, 0.434343,
		0.095909, 0.722336, 0.684859,
		34.232018, 29.298635, 36.135963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530952, 29.142315, 35.587749>,  <34.164879, 28.792999, 35.656563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530952, 29.142315, 35.587749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778728, 29.411253, 35.749855>,  <33.927395, 29.572617, 35.847118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778728, 29.411253, 35.749855>,  <33.530952, 29.142315, 35.587749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778728, 29.411253, 35.749855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449484, 0.726999, -0.519074,
		-0.643625, 0.139376, 0.752543,
		0.619444, 0.672345, 0.405267,
		33.964561, 29.612957, 35.871437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168327, 29.669394, 36.056828>,  <33.530952, 29.142315, 35.587749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168327, 29.669394, 36.056828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488899, 29.811153, 35.864113>,  <33.681240, 29.896210, 35.748486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488899, 29.811153, 35.864113>,  <33.168327, 29.669394, 36.056828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488899, 29.811153, 35.864113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581810, 0.648635, -0.490683,
		0.138604, 0.673553, 0.726027,
		0.801427, 0.354399, -0.481784,
		33.729328, 29.917473, 35.719578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007080, 30.388531, 36.017605>,  <33.168327, 29.669394, 36.056828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007080, 30.388531, 36.017605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309616, 30.347469, 35.759178>,  <33.491138, 30.322832, 35.604122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.309616, 30.347469, 35.759178>,  <33.007080, 30.388531, 36.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309616, 30.347469, 35.759178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419464, 0.681755, -0.599383,
		0.501989, 0.724343, 0.472582,
		0.756344, -0.102653, -0.646070,
		33.536518, 30.316673, 35.565357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069481, 31.067961, 35.781071>,  <33.007080, 30.388531, 36.017605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069481, 31.067961, 35.781071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226597, 30.820492, 35.508907>,  <33.320866, 30.672010, 35.345608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226597, 30.820492, 35.508907>,  <33.069481, 31.067961, 35.781071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226597, 30.820492, 35.508907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084985, 0.712292, -0.696718,
		0.915693, 0.331489, 0.227203,
		0.392789, -0.618671, -0.680413,
		33.344433, 30.634890, 35.304783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503044, 31.504139, 35.354477>,  <33.069481, 31.067961, 35.781071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503044, 31.504139, 35.354477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401028, 31.184467, 35.136757>,  <33.339817, 30.992664, 35.006126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.401028, 31.184467, 35.136757>,  <33.503044, 31.504139, 35.354477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.401028, 31.184467, 35.136757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269869, 0.599382, -0.753599,
		0.928506, -0.045311, -0.368543,
		-0.255044, -0.799180, -0.544301,
		33.324516, 30.944714, 34.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875740, 31.528240, 34.683136>,  <33.503044, 31.504139, 35.354477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875740, 31.528240, 34.683136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526455, 31.342335, 34.624485>,  <33.316883, 31.230791, 34.589294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526455, 31.342335, 34.624485>,  <33.875740, 31.528240, 34.683136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526455, 31.342335, 34.624485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174573, 0.579203, -0.796272,
		0.455004, -0.669716, -0.586900,
		-0.873210, -0.464764, -0.146625,
		33.264492, 31.202906, 34.580498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884182, 31.325264, 34.011200>,  <33.875740, 31.528240, 34.683136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884182, 31.325264, 34.011200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499306, 31.317739, 34.119892>,  <33.268379, 31.313225, 34.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499306, 31.317739, 34.119892>,  <33.884182, 31.325264, 34.011200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499306, 31.317739, 34.119892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250597, 0.452055, -0.856065,
		-0.106731, -0.891791, -0.439678,
		-0.962190, -0.018813, 0.271729,
		33.210648, 31.312096, 34.201412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492290, 31.034052, 33.496685>,  <33.884182, 31.325264, 34.011200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492290, 31.034052, 33.496685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235924, 31.273779, 33.688538>,  <33.082104, 31.417616, 33.803650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235924, 31.273779, 33.688538>,  <33.492290, 31.034052, 33.496685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235924, 31.273779, 33.688538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356141, 0.321344, -0.877441,
		-0.679992, -0.733182, 0.007487,
		-0.640917, 0.599319, 0.479627,
		33.043648, 31.453575, 33.832424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779247, 31.045477, 33.184227>,  <33.492290, 31.034052, 33.496685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779247, 31.045477, 33.184227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760952, 31.397469, 33.373348>,  <32.749973, 31.608664, 33.486820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760952, 31.397469, 33.373348>,  <32.779247, 31.045477, 33.184227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760952, 31.397469, 33.373348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505963, 0.387695, -0.770515,
		-0.861341, -0.274466, 0.427503,
		-0.045740, 0.879978, 0.472807,
		32.747231, 31.661463, 33.515190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118107, 31.224144, 33.183907>,  <32.779247, 31.045477, 33.184227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118107, 31.224144, 33.183907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336372, 31.557407, 33.219906>,  <32.467331, 31.757366, 33.241505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336372, 31.557407, 33.219906>,  <32.118107, 31.224144, 33.183907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336372, 31.557407, 33.219906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401874, 0.354405, -0.844331,
		-0.735357, 0.424552, 0.528210,
		0.545662, 0.833158, 0.089998,
		32.500072, 31.807354, 33.246906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604351, 31.839104, 32.924191>,  <32.118107, 31.224144, 33.183907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604351, 31.839104, 32.924191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984776, 31.962336, 32.933743>,  <32.213032, 32.036274, 32.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984776, 31.962336, 32.933743>,  <31.604351, 31.839104, 32.924191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984776, 31.962336, 32.933743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142409, 0.505571, -0.850951,
		-0.274232, 0.805906, 0.524702,
		0.951061, 0.308080, 0.023875,
		32.270092, 32.054760, 32.940907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599054, 32.553425, 32.770565>,  <31.604351, 31.839104, 32.924191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599054, 32.553425, 32.770565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973135, 32.446083, 32.678150>,  <32.197582, 32.381676, 32.622700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973135, 32.446083, 32.678150>,  <31.599054, 32.553425, 32.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973135, 32.446083, 32.678150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080905, 0.473263, -0.877198,
		0.344744, 0.839051, 0.420886,
		0.935204, -0.268357, -0.231038,
		32.253696, 32.365578, 32.608837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758057, 33.123535, 32.469944>,  <31.599054, 32.553425, 32.770565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758057, 33.123535, 32.469944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057640, 32.878754, 32.368301>,  <32.237392, 32.731884, 32.307316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057640, 32.878754, 32.368301>,  <31.758057, 33.123535, 32.469944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057640, 32.878754, 32.368301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155681, 0.535271, -0.830210,
		0.644066, 0.582235, 0.496166,
		0.748961, -0.611954, -0.254107,
		32.282330, 32.695168, 32.292068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314091, 33.574112, 32.256126>,  <31.758057, 33.123535, 32.469944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314091, 33.574112, 32.256126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394211, 33.241154, 32.049442>,  <32.442284, 33.041378, 31.925430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394211, 33.241154, 32.049442>,  <32.314091, 33.574112, 32.256126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394211, 33.241154, 32.049442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139370, 0.546247, -0.825948,
		0.969771, 0.093423, 0.225424,
		0.200299, -0.832398, -0.516714,
		32.454300, 32.991436, 31.894428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954491, 33.733791, 31.753939>,  <32.314091, 33.574112, 32.256126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954491, 33.733791, 31.753939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767792, 33.408619, 31.614634>,  <32.655773, 33.213516, 31.531050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767792, 33.408619, 31.614634>,  <32.954491, 33.733791, 31.753939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767792, 33.408619, 31.614634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030077, 0.378968, -0.924921,
		0.883881, -0.442175, -0.152430,
		-0.466743, -0.812935, -0.348262,
		32.627769, 33.164738, 31.510155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274174, 33.570400, 31.092848>,  <32.954491, 33.733791, 31.753939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274174, 33.570400, 31.092848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919109, 33.386211, 31.090981>,  <32.706070, 33.275700, 31.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919109, 33.386211, 31.090981>,  <33.274174, 33.570400, 31.092848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919109, 33.386211, 31.090981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257417, 0.504589, -0.824092,
		0.381824, -0.730314, -0.566437,
		-0.887664, -0.460469, -0.004669,
		32.652809, 33.248070, 31.089579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119198, 33.189625, 30.447397>,  <33.274174, 33.570400, 31.092848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119198, 33.189625, 30.447397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771309, 33.288147, 30.618473>,  <32.562576, 33.347260, 30.721119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771309, 33.288147, 30.618473>,  <33.119198, 33.189625, 30.447397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771309, 33.288147, 30.618473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239993, 0.546155, -0.802570,
		-0.431266, -0.800654, -0.415889,
		-0.869720, 0.246310, 0.427689,
		32.510391, 33.362041, 30.746780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625961, 33.318462, 29.792898>,  <33.119198, 33.189625, 30.447397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625961, 33.318462, 29.792898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447472, 33.459980, 30.121706>,  <32.340378, 33.544891, 30.318991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447472, 33.459980, 30.121706>,  <32.625961, 33.318462, 29.792898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447472, 33.459980, 30.121706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511911, 0.652516, -0.558721,
		-0.734052, -0.670116, -0.110059,
		-0.446223, 0.353790, 0.822020,
		32.313606, 33.566116, 30.368313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915510, 33.478325, 29.539530>,  <32.625961, 33.318462, 29.792898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915510, 33.478325, 29.539530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938498, 33.719040, 29.858164>,  <31.952290, 33.863468, 30.049345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938498, 33.719040, 29.858164>,  <31.915510, 33.478325, 29.539530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938498, 33.719040, 29.858164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332812, 0.763813, -0.553016,
		-0.941240, -0.233333, 0.244177,
		0.057469, 0.601786, 0.796587,
		31.955738, 33.899574, 30.097139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289148, 33.940742, 29.540995>,  <31.915510, 33.478325, 29.539530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289148, 33.940742, 29.540995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557726, 34.119419, 29.777514>,  <31.718872, 34.226624, 29.919426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557726, 34.119419, 29.777514>,  <31.289148, 33.940742, 29.540995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557726, 34.119419, 29.777514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318690, 0.894414, -0.313785,
		-0.669030, 0.022248, 0.742902,
		0.671443, 0.446687, 0.591299,
		31.759159, 34.253426, 29.954903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864538, 34.536327, 29.917358>,  <31.289148, 33.940742, 29.540995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864538, 34.536327, 29.917358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250319, 34.635708, 29.953371>,  <31.481787, 34.695335, 29.974979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.250319, 34.635708, 29.953371>,  <30.864538, 34.536327, 29.917358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250319, 34.635708, 29.953371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207319, 0.922639, -0.325201,
		-0.163863, 0.294975, 0.941349,
		0.964452, 0.248449, 0.090033,
		31.539654, 34.710243, 29.980381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.939049, 35.180851, 30.284521>,  <30.864538, 34.536327, 29.917358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.939049, 35.180851, 30.284521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277414, 35.174015, 30.071301>,  <31.480433, 35.169914, 29.943369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277414, 35.174015, 30.071301>,  <30.939049, 35.180851, 30.284521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277414, 35.174015, 30.071301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178298, 0.932917, -0.312851,
		0.502636, 0.359686, 0.786118,
		0.845912, -0.017087, -0.533049,
		31.531187, 35.168888, 29.911386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256973, 35.765556, 30.420887>,  <30.939049, 35.180851, 30.284521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256973, 35.765556, 30.420887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422819, 35.644009, 30.077782>,  <31.522327, 35.571079, 29.871918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.422819, 35.644009, 30.077782>,  <31.256973, 35.765556, 30.420887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422819, 35.644009, 30.077782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032528, 0.946947, -0.319739,
		0.909416, 0.104667, 0.402502,
		0.414614, -0.303868, -0.857764,
		31.547203, 35.552849, 29.820452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568626, 36.335640, 30.194748>,  <31.256973, 35.765556, 30.420887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568626, 36.335640, 30.194748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538315, 36.108807, 29.866682>,  <31.520128, 35.972706, 29.669842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538315, 36.108807, 29.866682>,  <31.568626, 36.335640, 30.194748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538315, 36.108807, 29.866682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087761, 0.823132, -0.561028,
		0.993255, 0.029465, -0.112144,
		-0.075779, -0.567085, -0.820165,
		31.515581, 35.938683, 29.620632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890324, 36.794518, 29.738569>,  <31.568626, 36.335640, 30.194748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890324, 36.794518, 29.738569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650978, 36.535671, 29.549591>,  <31.507372, 36.380363, 29.436203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650978, 36.535671, 29.549591>,  <31.890324, 36.794518, 29.738569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650978, 36.535671, 29.549591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253960, 0.712431, -0.654176,
		0.759915, -0.271450, -0.590631,
		-0.598360, -0.647115, -0.472449,
		31.471470, 36.341537, 29.407856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950346, 36.984245, 29.099770>,  <31.890324, 36.794518, 29.738569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950346, 36.984245, 29.099770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630972, 36.748886, 29.048719>,  <31.439346, 36.607670, 29.018089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630972, 36.748886, 29.048719>,  <31.950346, 36.984245, 29.099770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630972, 36.748886, 29.048719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293172, 0.565096, -0.771179,
		0.525876, -0.578324, -0.623695,
		-0.798439, -0.588395, -0.127622,
		31.391441, 36.572369, 29.010431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893564, 36.792534, 28.360306>,  <31.950346, 36.984245, 29.099770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893564, 36.792534, 28.360306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541286, 36.721775, 28.536070>,  <31.329920, 36.679321, 28.641529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541286, 36.721775, 28.536070>,  <31.893564, 36.792534, 28.360306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541286, 36.721775, 28.536070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470111, 0.440122, -0.765041,
		-0.058063, -0.880341, -0.470774,
		-0.880695, -0.176896, 0.439413,
		31.277079, 36.668705, 28.667894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512280, 36.507168, 27.855307>,  <31.893564, 36.792534, 28.360306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512280, 36.507168, 27.855307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258282, 36.689205, 28.105000>,  <31.105883, 36.798428, 28.254816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258282, 36.689205, 28.105000>,  <31.512280, 36.507168, 27.855307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258282, 36.689205, 28.105000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307918, 0.591983, -0.744811,
		-0.708496, -0.665164, -0.235775,
		-0.634996, 0.455096, 0.624233,
		31.067783, 36.825733, 28.292269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992882, 36.675770, 27.399502>,  <31.512280, 36.507168, 27.855307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992882, 36.675770, 27.399502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929747, 36.908775, 27.718441>,  <30.891865, 37.048580, 27.909805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.929747, 36.908775, 27.718441>,  <30.992882, 36.675770, 27.399502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929747, 36.908775, 27.718441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427958, 0.687343, -0.586865,
		-0.889909, -0.433862, 0.140802,
		-0.157839, 0.582514, 0.797348,
		30.882395, 37.083530, 27.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286079, 36.915634, 27.237686>,  <30.992882, 36.675770, 27.399502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286079, 36.915634, 27.237686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458323, 37.163784, 27.499895>,  <30.561668, 37.312675, 27.657221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458323, 37.163784, 27.499895>,  <30.286079, 36.915634, 27.237686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458323, 37.163784, 27.499895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414033, 0.781158, -0.467300,
		-0.801970, -0.070186, 0.593228,
		0.430606, 0.620376, 0.655524,
		30.587505, 37.349895, 27.696552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.931198, 37.632126, 27.145670>,  <30.286079, 36.915634, 27.237686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.931198, 37.632126, 27.145670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241114, 37.715286, 27.384493>,  <30.427063, 37.765182, 27.527786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.241114, 37.715286, 27.384493>,  <29.931198, 37.632126, 27.145670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241114, 37.715286, 27.384493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087460, 0.900058, -0.426904,
		-0.626139, 0.382979, 0.679173,
		0.774791, 0.207901, 0.597057,
		30.473551, 37.777657, 27.563610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785713, 38.244099, 27.568857>,  <29.931198, 37.632126, 27.145670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785713, 38.244099, 27.568857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182251, 38.218243, 27.523155>,  <30.420174, 38.202728, 27.495735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182251, 38.218243, 27.523155>,  <29.785713, 38.244099, 27.568857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182251, 38.218243, 27.523155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010273, 0.905899, -0.423369,
		0.130867, 0.418531, 0.898724,
		0.991347, -0.064637, -0.114253,
		30.479654, 38.198853, 27.488880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114305, 38.877850, 27.825636>,  <29.785713, 38.244099, 27.568857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114305, 38.877850, 27.825636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402431, 38.720024, 27.597437>,  <30.575308, 38.625328, 27.460518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402431, 38.720024, 27.597437>,  <30.114305, 38.877850, 27.825636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402431, 38.720024, 27.597437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000303, 0.822282, -0.569080,
		0.693646, 0.410090, 0.592183,
		0.720316, -0.394561, -0.570497,
		30.618526, 38.601654, 27.426289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631229, 39.401920, 27.807793>,  <30.114305, 38.877850, 27.825636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.631229, 39.401920, 27.807793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757954, 39.156040, 27.518858>,  <30.833988, 39.008511, 27.345497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757954, 39.156040, 27.518858>,  <30.631229, 39.401920, 27.807793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757954, 39.156040, 27.518858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303984, 0.787197, -0.536576,
		0.898457, -0.049587, 0.436251,
		0.316809, -0.614705, -0.722337,
		30.852997, 38.971630, 27.302156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304756, 39.674232, 27.591150>,  <30.631229, 39.401920, 27.807793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304756, 39.674232, 27.591150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139351, 39.458397, 27.297796>,  <31.040108, 39.328896, 27.121784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139351, 39.458397, 27.297796>,  <31.304756, 39.674232, 27.591150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139351, 39.458397, 27.297796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037825, 0.814962, -0.578278,
		0.909713, -0.211384, -0.357406,
		-0.413511, -0.539586, -0.733387,
		31.015297, 39.296520, 27.077780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609245, 39.661091, 26.971087>,  <31.304756, 39.674232, 27.591150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609245, 39.661091, 26.971087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237642, 39.589340, 26.841616>,  <31.014681, 39.546291, 26.763933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237642, 39.589340, 26.841616>,  <31.609245, 39.661091, 26.971087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237642, 39.589340, 26.841616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085152, 0.747572, -0.658700,
		0.360126, -0.639500, -0.679227,
		-0.929010, -0.179377, -0.323675,
		30.958939, 39.535526, 26.744513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630007, 39.763527, 26.225721>,  <31.609245, 39.661091, 26.971087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630007, 39.763527, 26.225721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236633, 39.808559, 26.282553>,  <31.000610, 39.835579, 26.316652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236633, 39.808559, 26.282553>,  <31.630007, 39.763527, 26.225721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236633, 39.808559, 26.282553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003197, 0.772863, -0.634564,
		-0.181250, -0.624505, -0.759699,
		-0.983432, 0.112586, 0.142078,
		30.941605, 39.842335, 26.325176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238901, 39.709026, 25.572361>,  <31.630007, 39.763527, 26.225721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238901, 39.709026, 25.572361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047159, 39.929016, 25.845928>,  <30.932114, 40.061012, 26.010069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047159, 39.929016, 25.845928>,  <31.238901, 39.709026, 25.572361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047159, 39.929016, 25.845928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002397, 0.780104, -0.625645,
		-0.877619, -0.298265, -0.375263,
		-0.479353, 0.549978, 0.683919,
		30.903353, 40.094009, 26.051104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698166, 40.068481, 25.277554>,  <31.238901, 39.709026, 25.572361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698166, 40.068481, 25.277554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733194, 40.286118, 25.611332>,  <30.754211, 40.416698, 25.811598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733194, 40.286118, 25.611332>,  <30.698166, 40.068481, 25.277554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733194, 40.286118, 25.611332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128501, 0.824494, -0.551087,
		-0.987835, 0.155487, 0.002286,
		0.087572, 0.544089, 0.834445,
		30.759466, 40.449345, 25.861666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333305, 40.712215, 25.181044>,  <30.698166, 40.068481, 25.277554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333305, 40.712215, 25.181044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565630, 40.815315, 25.489906>,  <30.705025, 40.877174, 25.675224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.565630, 40.815315, 25.489906>,  <30.333305, 40.712215, 25.181044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565630, 40.815315, 25.489906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101628, 0.918170, -0.382931,
		-0.807670, 0.300883, 0.507088,
		0.580810, 0.257748, 0.772156,
		30.739874, 40.892639, 25.721554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121342, 41.374313, 25.293711>,  <30.333305, 40.712215, 25.181044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121342, 41.374313, 25.293711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484072, 41.336468, 25.458010>,  <30.701710, 41.313763, 25.556589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484072, 41.336468, 25.458010>,  <30.121342, 41.374313, 25.293711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484072, 41.336468, 25.458010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220997, 0.936523, -0.272187,
		-0.358923, 0.337600, 0.870173,
		0.906827, -0.094611, 0.410748,
		30.756121, 41.308083, 25.581234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113766, 41.917595, 25.661100>,  <30.121342, 41.374313, 25.293711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113766, 41.917595, 25.661100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495491, 41.806286, 25.617546>,  <30.724525, 41.739502, 25.591413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495491, 41.806286, 25.617546>,  <30.113766, 41.917595, 25.661100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495491, 41.806286, 25.617546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277223, 0.960482, -0.024944,
		0.111524, -0.006381, 0.993741,
		0.954311, -0.278269, -0.108886,
		30.781784, 41.722805, 25.584881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403728, 42.445465, 26.087145>,  <30.113766, 41.917595, 25.661100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403728, 42.445465, 26.087145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642904, 42.283916, 25.810202>,  <30.786409, 42.186989, 25.644035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642904, 42.283916, 25.810202>,  <30.403728, 42.445465, 26.087145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642904, 42.283916, 25.810202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509872, 0.858139, -0.060235,
		0.618466, -0.316996, 0.719036,
		0.597939, -0.403870, -0.692357,
		30.822287, 42.162754, 25.602495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054482, 42.650887, 26.270008>,  <30.403728, 42.445465, 26.087145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054482, 42.650887, 26.270008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086985, 42.553783, 25.883337>,  <31.106487, 42.495522, 25.651335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086985, 42.553783, 25.883337>,  <31.054482, 42.650887, 26.270008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086985, 42.553783, 25.883337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351849, 0.914428, -0.200059,
		0.932523, -0.323868, 0.159719,
		0.081259, -0.242756, -0.966678,
		31.111362, 42.480957, 25.593334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663231, 42.989590, 25.999081>,  <31.054482, 42.650887, 26.270008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663231, 42.989590, 25.999081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479311, 42.900543, 25.655214>,  <31.368959, 42.847115, 25.448895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479311, 42.900543, 25.655214>,  <31.663231, 42.989590, 25.999081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479311, 42.900543, 25.655214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354288, 0.841702, -0.407454,
		0.814286, -0.491918, -0.308148,
		-0.459802, -0.222611, -0.859667,
		31.341372, 42.833759, 25.397314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155025, 43.032475, 25.387577>,  <31.663231, 42.989590, 25.999081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155025, 43.032475, 25.387577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789070, 43.070492, 25.230635>,  <31.569496, 43.093304, 25.136469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789070, 43.070492, 25.230635>,  <32.155025, 43.032475, 25.387577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789070, 43.070492, 25.230635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261719, 0.879624, -0.397195,
		0.307375, -0.466077, -0.829634,
		-0.914890, 0.095043, -0.392356,
		31.514603, 43.099007, 25.112928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278465, 43.269451, 24.798532>,  <32.155025, 43.032475, 25.387577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278465, 43.269451, 24.798532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888279, 43.350254, 24.833557>,  <31.654169, 43.398735, 24.854572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888279, 43.350254, 24.833557>,  <32.278465, 43.269451, 24.798532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888279, 43.350254, 24.833557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137196, 0.868758, -0.475854,
		-0.172198, -0.452164, -0.875155,
		-0.975461, 0.202009, 0.087564,
		31.595640, 43.410858, 24.859827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049915, 43.314381, 24.132210>,  <32.278465, 43.269451, 24.798532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049915, 43.314381, 24.132210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769464, 43.506519, 24.342993>,  <31.601192, 43.621803, 24.469461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769464, 43.506519, 24.342993>,  <32.049915, 43.314381, 24.132210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769464, 43.506519, 24.342993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041676, 0.710166, -0.702800,
		-0.711813, -0.514717, -0.477901,
		-0.701132, 0.480345, 0.526957,
		31.559126, 43.650623, 24.501080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517258, 43.446476, 23.695066>,  <32.049915, 43.314381, 24.132210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517258, 43.446476, 23.695066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505922, 43.726479, 23.980497>,  <31.499121, 43.894478, 24.151756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505922, 43.726479, 23.980497>,  <31.517258, 43.446476, 23.695066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505922, 43.726479, 23.980497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189623, 0.697137, -0.691406,
		-0.981448, -0.154906, 0.112979,
		-0.028341, 0.700003, 0.713577,
		31.497419, 43.936478, 24.194571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897408, 43.808842, 23.581133>,  <31.517258, 43.446476, 23.695066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897408, 43.808842, 23.581133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166340, 44.027401, 23.780899>,  <31.327700, 44.158539, 23.900759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166340, 44.027401, 23.780899>,  <30.897408, 43.808842, 23.581133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166340, 44.027401, 23.780899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200562, 0.783880, -0.587628,
		-0.712562, 0.294918, 0.636616,
		0.672332, 0.546402, 0.499414,
		31.368040, 44.191322, 23.930723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577209, 44.467720, 23.773592>,  <30.897408, 43.808842, 23.581133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577209, 44.467720, 23.773592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974747, 44.503769, 23.747797>,  <31.213268, 44.525398, 23.732321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974747, 44.503769, 23.747797>,  <30.577209, 44.467720, 23.773592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974747, 44.503769, 23.747797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110816, 0.804837, -0.583058,
		-0.000645, 0.586613, 0.809867,
		0.993841, 0.090122, -0.064488,
		31.272900, 44.530807, 23.728451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615366, 45.242081, 23.782160>,  <30.577209, 44.467720, 23.773592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615366, 45.242081, 23.782160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925442, 45.050999, 23.616808>,  <31.111486, 44.936348, 23.517597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925442, 45.050999, 23.616808>,  <30.615366, 45.242081, 23.782160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925442, 45.050999, 23.616808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213487, 0.813958, -0.540274,
		0.594565, 0.330562, 0.732953,
		0.775188, -0.477704, -0.413380,
		31.157997, 44.907688, 23.492794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178217, 45.648476, 23.852936>,  <30.615366, 45.242081, 23.782160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178217, 45.648476, 23.852936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239979, 45.412830, 23.535671>,  <31.277037, 45.271442, 23.345312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239979, 45.412830, 23.535671>,  <31.178217, 45.648476, 23.852936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239979, 45.412830, 23.535671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298326, 0.793118, -0.531005,
		0.941892, -0.154630, 0.298209,
		0.154406, -0.589113, -0.793161,
		31.286301, 45.236095, 23.297724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813326, 45.686817, 23.642189>,  <31.178217, 45.648476, 23.852936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813326, 45.686817, 23.642189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582783, 45.604652, 23.325804>,  <31.444456, 45.555355, 23.135973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582783, 45.604652, 23.325804>,  <31.813326, 45.686817, 23.642189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582783, 45.604652, 23.325804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236325, 0.884643, -0.401941,
		0.782280, -0.418585, -0.461329,
		-0.576358, -0.205407, -0.790961,
		31.409876, 45.543030, 23.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254761, 45.682266, 23.050056>,  <31.813326, 45.686817, 23.642189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254761, 45.682266, 23.050056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878277, 45.758629, 22.938574>,  <31.652386, 45.804447, 22.871685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878277, 45.758629, 22.938574>,  <32.254761, 45.682266, 23.050056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878277, 45.758629, 22.938574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337474, 0.494073, -0.801251,
		-0.015262, -0.848202, -0.529452,
		-0.941211, 0.190906, -0.278706,
		31.595913, 45.815899, 22.854961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572651, 46.205482, 23.033720>,  <32.254761, 45.682266, 23.050056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572651, 46.205482, 23.033720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562943, 46.355221, 23.404509>,  <32.557117, 46.445065, 23.626982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562943, 46.355221, 23.404509>,  <32.572651, 46.205482, 23.033720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562943, 46.355221, 23.404509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479102, -0.809469, 0.339443,
		0.877423, 0.452354, -0.159702,
		-0.024275, 0.374349, 0.926970,
		32.555660, 46.467525, 23.682600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735859, 46.840885, 23.334587>,  <32.572651, 46.205482, 23.033720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735859, 46.840885, 23.334587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795055, 47.129482, 23.605154>,  <32.830574, 47.302643, 23.767494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795055, 47.129482, 23.605154>,  <32.735859, 46.840885, 23.334587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795055, 47.129482, 23.605154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165653, -0.656203, 0.736177,
		0.975016, -0.221000, 0.022404,
		0.147993, 0.721496, 0.676418,
		32.839455, 47.345932, 23.808079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246120, 46.717644, 23.928089>,  <32.735859, 46.840885, 23.334587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246120, 46.717644, 23.928089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972557, 46.976009, 24.063768>,  <32.808418, 47.131027, 24.145176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972557, 46.976009, 24.063768>,  <33.246120, 46.717644, 23.928089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972557, 46.976009, 24.063768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133995, -0.568234, 0.811884,
		0.717153, 0.509807, 0.475173,
		-0.683913, 0.645915, 0.339199,
		32.767384, 47.169785, 24.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395004, 47.117458, 24.533453>,  <33.246120, 46.717644, 23.928089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395004, 47.117458, 24.533453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005711, 47.026825, 24.548782>,  <32.772133, 46.972446, 24.557980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005711, 47.026825, 24.548782>,  <33.395004, 47.117458, 24.533453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005711, 47.026825, 24.548782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185501, -0.676203, 0.712979,
		-0.135633, 0.701007, 0.700138,
		-0.973238, -0.226580, 0.038322,
		32.713737, 46.958851, 24.560280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250771, 47.017365, 25.251181>,  <33.395004, 47.117458, 24.533453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250771, 47.017365, 25.251181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908394, 46.850250, 25.129320>,  <32.702969, 46.749981, 25.056204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908394, 46.850250, 25.129320>,  <33.250771, 47.017365, 25.251181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908394, 46.850250, 25.129320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041571, -0.642890, 0.764830,
		-0.515392, 0.641988, 0.567646,
		-0.855946, -0.417785, -0.304653,
		32.651611, 46.724915, 25.037924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872627, 46.964375, 25.995346>,  <33.250771, 47.017365, 25.251181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872627, 46.964375, 25.995346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703510, 46.700691, 25.746607>,  <32.602039, 46.542480, 25.597364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703510, 46.700691, 25.746607>,  <32.872627, 46.964375, 25.995346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703510, 46.700691, 25.746607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128846, -0.635494, 0.761279,
		-0.897022, 0.401982, 0.183743,
		-0.422788, -0.659209, -0.621846,
		32.576675, 46.502930, 25.560053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206657, 46.749069, 26.396643>,  <32.872627, 46.964375, 25.995346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206657, 46.749069, 26.396643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302361, 46.479008, 26.117521>,  <32.359783, 46.316971, 25.950048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302361, 46.479008, 26.117521>,  <32.206657, 46.749069, 26.396643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302361, 46.479008, 26.117521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126890, -0.734253, 0.666912,
		-0.962630, -0.071017, -0.261342,
		0.239253, -0.675151, -0.697803,
		32.374138, 46.276463, 25.908180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655447, 46.220871, 26.235880>,  <32.206657, 46.749069, 26.396643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655447, 46.220871, 26.235880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997396, 46.037098, 26.139450>,  <32.202564, 45.926834, 26.081593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997396, 46.037098, 26.139450>,  <31.655447, 46.220871, 26.235880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997396, 46.037098, 26.139450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107250, -0.611082, 0.784268,
		-0.507631, -0.644594, -0.571672,
		0.854873, -0.459431, -0.241072,
		32.253857, 45.899269, 26.067129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537378, 45.544750, 26.371044>,  <31.655447, 46.220871, 26.235880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537378, 45.544750, 26.371044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936172, 45.531601, 26.342922>,  <32.175449, 45.523712, 26.326050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936172, 45.531601, 26.342922>,  <31.537378, 45.544750, 26.371044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936172, 45.531601, 26.342922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020924, -0.758434, 0.651413,
		-0.074736, -0.650919, -0.755459,
		0.996984, -0.032877, -0.070302,
		32.235268, 45.521736, 26.321831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616407, 44.901245, 26.256304>,  <31.537378, 45.544750, 26.371044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616407, 44.901245, 26.256304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960676, 45.043777, 26.401779>,  <32.167236, 45.129299, 26.489065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960676, 45.043777, 26.401779>,  <31.616407, 44.901245, 26.256304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960676, 45.043777, 26.401779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084428, -0.804284, 0.588217,
		0.502112, -0.475556, -0.722308,
		0.860671, 0.356334, 0.363690,
		32.218876, 45.150677, 26.510887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933321, 44.268291, 26.356339>,  <31.616407, 44.901245, 26.256304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933321, 44.268291, 26.356339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172096, 44.543648, 26.521154>,  <32.315361, 44.708862, 26.620045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172096, 44.543648, 26.521154>,  <31.933321, 44.268291, 26.356339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172096, 44.543648, 26.521154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278244, -0.659345, 0.698459,
		0.752491, -0.302290, -0.585130,
		0.596939, 0.688394, 0.412041,
		32.351177, 44.750164, 26.644766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607033, 43.939743, 26.296806>,  <31.933321, 44.268291, 26.356339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607033, 43.939743, 26.296806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537674, 44.208851, 26.584503>,  <32.496059, 44.370316, 26.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537674, 44.208851, 26.584503>,  <32.607033, 43.939743, 26.296806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537674, 44.208851, 26.584503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250965, -0.676011, 0.692838,
		0.952340, 0.300639, -0.051626,
		-0.173395, 0.672774, 0.719242,
		32.485657, 44.410683, 26.800276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175838, 43.755062, 26.812006>,  <32.607033, 43.939743, 26.296806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175838, 43.755062, 26.812006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886608, 43.963539, 26.993343>,  <32.713070, 44.088627, 27.102146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886608, 43.963539, 26.993343>,  <33.175838, 43.755062, 26.812006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886608, 43.963539, 26.993343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080218, -0.588488, 0.804517,
		0.686096, 0.618092, 0.383711,
		-0.723075, 0.521195, 0.453342,
		32.669685, 44.119896, 27.129345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444294, 44.085239, 27.455555>,  <33.175838, 43.755062, 26.812006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444294, 44.085239, 27.455555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052280, 44.007690, 27.473248>,  <32.817074, 43.961163, 27.483862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.052280, 44.007690, 27.473248>,  <33.444294, 44.085239, 27.455555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052280, 44.007690, 27.473248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159909, -0.636158, 0.754806,
		-0.118196, 0.746805, 0.654455,
		-0.980030, -0.193869, 0.044230,
		32.758270, 43.949532, 27.486517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343491, 44.174831, 28.183586>,  <33.444294, 44.085239, 27.455555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343491, 44.174831, 28.183586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033119, 43.977291, 28.026585>,  <32.846897, 43.858768, 27.932384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033119, 43.977291, 28.026585>,  <33.343491, 44.174831, 28.183586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033119, 43.977291, 28.026585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080011, -0.694223, 0.715299,
		-0.625732, 0.523613, 0.578177,
		-0.775924, -0.493846, -0.392503,
		32.800343, 43.829136, 27.908834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000671, 43.822033, 28.816628>,  <33.343491, 44.174831, 28.183586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000671, 43.822033, 28.816628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854122, 43.634792, 28.494970>,  <32.766193, 43.522449, 28.301975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854122, 43.634792, 28.494970>,  <33.000671, 43.822033, 28.816628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854122, 43.634792, 28.494970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117570, -0.834022, 0.539060,
		-0.923009, 0.292042, 0.250531,
		-0.366376, -0.468102, -0.804145,
		32.744209, 43.494362, 28.253727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414379, 43.498619, 29.135361>,  <33.000671, 43.822033, 28.816628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414379, 43.498619, 29.135361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495846, 43.306000, 28.794392>,  <32.544727, 43.190426, 28.589809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495846, 43.306000, 28.794392>,  <32.414379, 43.498619, 29.135361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495846, 43.306000, 28.794392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082208, -0.876011, 0.475233,
		-0.975583, -0.026713, -0.218002,
		0.203667, -0.481551, -0.852425,
		32.556946, 43.161533, 28.538664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914118, 43.034985, 29.057890>,  <32.414379, 43.498619, 29.135361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914118, 43.034985, 29.057890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209000, 42.897636, 28.825125>,  <32.385929, 42.815228, 28.685467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209000, 42.897636, 28.825125>,  <31.914118, 43.034985, 29.057890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209000, 42.897636, 28.825125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105407, -0.909141, 0.402929,
		-0.667395, -0.235704, -0.706418,
		0.737206, -0.343375, -0.581912,
		32.430161, 42.794624, 28.650551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618082, 42.518623, 28.678596>,  <31.914118, 43.034985, 29.057890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618082, 42.518623, 28.678596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010086, 42.442268, 28.656166>,  <32.245289, 42.396454, 28.642708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010086, 42.442268, 28.656166>,  <31.618082, 42.518623, 28.678596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010086, 42.442268, 28.656166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154250, -0.907007, 0.391849,
		-0.125664, -0.375365, -0.918319,
		0.980008, -0.190892, -0.056078,
		32.304089, 42.385002, 28.639343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662815, 41.838829, 28.474743>,  <31.618082, 42.518623, 28.678596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662815, 41.838829, 28.474743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015991, 41.906300, 28.650000>,  <32.227898, 41.946781, 28.755154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015991, 41.906300, 28.650000>,  <31.662815, 41.838829, 28.474743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015991, 41.906300, 28.650000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081493, -0.863999, 0.496855,
		0.462361, -0.474398, -0.749112,
		0.882939, 0.168679, 0.438140,
		32.280872, 41.956902, 28.781441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939344, 41.287960, 28.326448>,  <31.662815, 41.838829, 28.474743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939344, 41.287960, 28.326448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197453, 41.410324, 28.606461>,  <32.352318, 41.483742, 28.774467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.197453, 41.410324, 28.606461>,  <31.939344, 41.287960, 28.326448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197453, 41.410324, 28.606461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071839, -0.936563, 0.343059,
		0.760570, -0.171076, -0.626311,
		0.645268, 0.305914, 0.700032,
		32.391033, 41.502098, 28.816471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532555, 40.768574, 28.434942>,  <31.939344, 41.287960, 28.326448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532555, 40.768574, 28.434942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506844, 40.977795, 28.774893>,  <32.491417, 41.103329, 28.978863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.506844, 40.977795, 28.774893>,  <32.532555, 40.768574, 28.434942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506844, 40.977795, 28.774893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120458, -0.849475, 0.513695,
		0.990636, -0.069357, 0.117605,
		-0.064274, 0.523051, 0.849875,
		32.487560, 41.134708, 29.029856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000568, 40.376335, 28.864235>,  <32.532555, 40.768574, 28.434942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000568, 40.376335, 28.864235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777485, 40.589661, 29.118650>,  <32.643635, 40.717655, 29.271299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777485, 40.589661, 29.118650>,  <33.000568, 40.376335, 28.864235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777485, 40.589661, 29.118650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076796, -0.729837, 0.679294,
		0.826479, 0.427691, 0.366078,
		-0.557705, 0.533309, 0.636039,
		32.610172, 40.749653, 29.309462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308987, 40.382488, 29.463518>,  <33.000568, 40.376335, 28.864235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308987, 40.382488, 29.463518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932537, 40.477913, 29.559326>,  <32.706665, 40.535168, 29.616812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932537, 40.477913, 29.559326>,  <33.308987, 40.382488, 29.463518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932537, 40.477913, 29.559326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024065, -0.754007, 0.656426,
		0.337199, 0.612015, 0.715356,
		-0.941126, 0.238561, 0.239522,
		32.650200, 40.549480, 29.631184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301174, 40.471424, 30.191835>,  <33.308987, 40.382488, 29.463518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301174, 40.471424, 30.191835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931446, 40.389427, 30.063080>,  <32.709610, 40.340229, 29.985826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931446, 40.389427, 30.063080>,  <33.301174, 40.471424, 30.191835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931446, 40.389427, 30.063080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031653, -0.799390, 0.599977,
		-0.380304, 0.564760, 0.732404,
		-0.924320, -0.204991, -0.321888,
		32.654152, 40.327930, 29.966513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999554, 40.282383, 30.822821>,  <33.301174, 40.471424, 30.191835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999554, 40.282383, 30.822821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744686, 40.159424, 30.540112>,  <32.591766, 40.085648, 30.370487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744686, 40.159424, 30.540112>,  <32.999554, 40.282383, 30.822821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744686, 40.159424, 30.540112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190110, -0.826001, 0.530641,
		-0.746912, 0.472471, 0.467860,
		-0.637166, -0.307398, -0.706772,
		32.553535, 40.067204, 30.328079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295990, 40.062645, 31.095280>,  <32.999554, 40.282383, 30.822821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295990, 40.062645, 31.095280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368397, 39.848068, 30.765562>,  <32.411839, 39.719322, 30.567732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368397, 39.848068, 30.765562>,  <32.295990, 40.062645, 31.095280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368397, 39.848068, 30.765562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154346, -0.843250, 0.514885,
		-0.971294, 0.034026, -0.235438,
		0.181014, -0.536443, -0.824296,
		32.422699, 39.687134, 30.518274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674152, 39.612411, 30.964190>,  <32.295990, 40.062645, 31.095280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674152, 39.612411, 30.964190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010487, 39.457401, 30.813023>,  <32.212288, 39.364395, 30.722322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.010487, 39.457401, 30.813023>,  <31.674152, 39.612411, 30.964190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010487, 39.457401, 30.813023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198077, -0.870035, 0.451448,
		-0.503747, -0.304737, -0.808316,
		0.840836, -0.387524, -0.377916,
		32.262737, 39.341145, 30.699648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382612, 39.004700, 30.888117>,  <31.674152, 39.612411, 30.964190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382612, 39.004700, 30.888117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770679, 38.932304, 30.823603>,  <32.003521, 38.888866, 30.784895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770679, 38.932304, 30.823603>,  <31.382612, 39.004700, 30.888117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770679, 38.932304, 30.823603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077813, -0.862580, 0.499900,
		-0.229598, -0.472438, -0.850933,
		0.970170, -0.180990, -0.161285,
		32.061729, 38.878006, 30.775217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474873, 38.299393, 30.550640>,  <31.382612, 39.004700, 30.888117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474873, 38.299393, 30.550640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846329, 38.384159, 30.672440>,  <32.069202, 38.435017, 30.745520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.846329, 38.384159, 30.672440>,  <31.474873, 38.299393, 30.550640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.846329, 38.384159, 30.672440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017069, -0.844333, 0.535546,
		0.370588, -0.492132, -0.787699,
		0.928640, 0.211913, 0.304500,
		32.124920, 38.447731, 30.763790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922064, 37.761642, 30.358656>,  <31.474873, 38.299393, 30.550640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922064, 37.761642, 30.358656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.930607, 30.673834>,  <32.208786, 38.031986, 30.862942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101265, 37.930607, 30.673834>,  <31.922064, 37.761642, 30.358656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101265, 37.930607, 30.673834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024119, -0.875309, 0.482963,
		0.893706, -0.235374, -0.381953,
		0.448003, 0.422414, 0.787946,
		32.235664, 38.057331, 30.910217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.330540, 37.247169, 30.653149>,  <31.922064, 37.761642, 30.358656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.330540, 37.247169, 30.653149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360928, 37.489281, 30.970100>,  <32.379162, 37.634548, 31.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360928, 37.489281, 30.970100>,  <32.330540, 37.247169, 30.653149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360928, 37.489281, 30.970100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171004, -0.790809, 0.587689,
		0.982337, 0.090853, -0.163584,
		0.075971, 0.605283, 0.792377,
		32.383720, 37.670864, 31.207813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873665, 36.944401, 31.063597>,  <32.330540, 37.247169, 30.653149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873665, 36.944401, 31.063597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679272, 37.185558, 31.316685>,  <32.562637, 37.330254, 31.468538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679272, 37.185558, 31.316685>,  <32.873665, 36.944401, 31.063597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679272, 37.185558, 31.316685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262849, -0.589619, 0.763714,
		0.833505, 0.537463, 0.128075,
		-0.485984, 0.602895, 0.632722,
		32.533478, 37.366428, 31.506502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276253, 36.940552, 31.735718>,  <32.873665, 36.944401, 31.063597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276253, 36.940552, 31.735718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920826, 37.079350, 31.855749>,  <32.707569, 37.162628, 31.927767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920826, 37.079350, 31.855749>,  <33.276253, 36.940552, 31.735718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920826, 37.079350, 31.855749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148982, -0.400396, 0.904150,
		0.433881, 0.848104, 0.304083,
		-0.888567, 0.346991, 0.300077,
		32.654255, 37.183445, 31.945772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432484, 37.107422, 32.401558>,  <33.276253, 36.940552, 31.735718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432484, 37.107422, 32.401558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033600, 37.085449, 32.381336>,  <32.794270, 37.072266, 32.369202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033600, 37.085449, 32.381336>,  <33.432484, 37.107422, 32.401558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033600, 37.085449, 32.381336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030182, -0.322733, 0.946009,
		-0.068279, 0.944895, 0.320175,
		-0.997210, -0.054929, -0.050555,
		32.734436, 37.068970, 32.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113129, 37.407734, 33.005798>,  <33.432484, 37.107422, 32.401558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113129, 37.407734, 33.005798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853577, 37.139820, 32.861385>,  <32.697845, 36.979073, 32.774738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853577, 37.139820, 32.861385>,  <33.113129, 37.407734, 33.005798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853577, 37.139820, 32.861385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165683, -0.338723, 0.926184,
		-0.742633, 0.660799, 0.108819,
		-0.648880, -0.669785, -0.361030,
		32.658913, 36.938885, 32.753075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474358, 37.337463, 33.529655>,  <33.113129, 37.407734, 33.005798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474358, 37.337463, 33.529655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511162, 37.005440, 33.309643>,  <32.533245, 36.806225, 33.177635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511162, 37.005440, 33.309643>,  <32.474358, 37.337463, 33.529655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511162, 37.005440, 33.309643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359054, -0.542869, 0.759193,
		-0.928770, 0.127637, -0.347987,
		0.092010, -0.830062, -0.550029,
		32.538765, 36.756420, 33.144634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897308, 37.026421, 33.696747>,  <32.474358, 37.337463, 33.529655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897308, 37.026421, 33.696747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115040, 36.736290, 33.528172>,  <32.245678, 36.562210, 33.427025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115040, 36.736290, 33.528172>,  <31.897308, 37.026421, 33.696747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115040, 36.736290, 33.528172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458271, -0.677909, 0.574827,
		-0.702634, -0.119762, -0.701401,
		0.544328, -0.725325, -0.421439,
		32.278339, 36.518692, 33.401741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428144, 36.365379, 33.721989>,  <31.897308, 37.026421, 33.696747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428144, 36.365379, 33.721989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802874, 36.233158, 33.676208>,  <32.027710, 36.153824, 33.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802874, 36.233158, 33.676208>,  <31.428144, 36.365379, 33.721989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802874, 36.233158, 33.676208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224008, -0.818194, 0.529508,
		-0.268674, -0.470416, -0.840549,
		0.936822, -0.330555, -0.114451,
		32.083920, 36.133991, 33.641872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396990, 35.599846, 33.740368>,  <31.428144, 36.365379, 33.721989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396990, 35.599846, 33.740368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785183, 35.678745, 33.795876>,  <32.018097, 35.726086, 33.829182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785183, 35.678745, 33.795876>,  <31.396990, 35.599846, 33.740368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785183, 35.678745, 33.795876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104031, -0.861488, 0.497006,
		0.217588, -0.467899, -0.856578,
		0.970481, 0.197253, 0.138773,
		32.076328, 35.737923, 33.837509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775402, 35.067741, 33.474247>,  <31.396990, 35.599846, 33.740368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775402, 35.067741, 33.474247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011906, 35.258301, 33.734543>,  <32.153809, 35.372635, 33.890720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011906, 35.258301, 33.734543>,  <31.775402, 35.067741, 33.474247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011906, 35.258301, 33.734543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142562, -0.855917, 0.497074,
		0.793780, -0.201130, -0.573986,
		0.591260, 0.476396, 0.650736,
		32.189285, 35.401218, 33.929764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322277, 34.575901, 33.569435>,  <31.775402, 35.067741, 33.474247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322277, 34.575901, 33.569435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379757, 34.811554, 33.887501>,  <32.414246, 34.952946, 34.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379757, 34.811554, 33.887501>,  <32.322277, 34.575901, 33.569435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379757, 34.811554, 33.887501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330862, -0.785862, 0.522447,
		0.932674, 0.188013, -0.307848,
		0.143699, 0.589128, 0.795160,
		32.422867, 34.988293, 34.126049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039486, 34.508667, 33.766190>,  <32.322277, 34.575901, 33.569435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039486, 34.508667, 33.766190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839699, 34.635468, 34.088692>,  <32.719826, 34.711548, 34.282192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839699, 34.635468, 34.088692>,  <33.039486, 34.508667, 33.766190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839699, 34.635468, 34.088692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262276, -0.831647, 0.489464,
		0.825677, 0.455932, 0.332239,
		-0.499468, 0.317001, 0.806252,
		32.689857, 34.730568, 34.330566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419231, 34.306465, 34.428825>,  <33.039486, 34.508667, 33.766190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419231, 34.306465, 34.428825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034416, 34.368412, 34.518707>,  <32.803528, 34.405582, 34.572636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.034416, 34.368412, 34.518707>,  <33.419231, 34.306465, 34.428825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034416, 34.368412, 34.518707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036913, -0.741965, 0.669422,
		0.270393, 0.652306, 0.708085,
		-0.962042, 0.154869, 0.224700,
		32.745804, 34.414871, 34.586117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039120, 34.392620, 33.887318>,  <33.419231, 34.306465, 34.428825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039120, 34.392620, 33.887318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437763, 34.405647, 33.917561>,  <34.676949, 34.413464, 33.935707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437763, 34.405647, 33.917561>,  <34.039120, 34.392620, 33.887318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437763, 34.405647, 33.917561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001788, 0.909658, -0.415354,
		-0.082305, 0.414079, 0.906512,
		0.996605, 0.032565, 0.075610,
		34.736744, 34.415417, 33.940243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191765, 35.106998, 34.264378>,  <34.039120, 34.392620, 33.887318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191765, 35.106998, 34.264378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525707, 34.987358, 34.079533>,  <34.726074, 34.915573, 33.968624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525707, 34.987358, 34.079533>,  <34.191765, 35.106998, 34.264378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525707, 34.987358, 34.079533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081801, 0.897590, -0.433176,
		0.544351, 0.323840, 0.773828,
		0.834860, -0.299099, -0.462113,
		34.776165, 34.897629, 33.940899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545399, 35.609238, 34.326550>,  <34.191765, 35.106998, 34.264378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545399, 35.609238, 34.326550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728790, 35.427433, 34.021076>,  <34.838825, 35.318352, 33.837791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728790, 35.427433, 34.021076>,  <34.545399, 35.609238, 34.326550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728790, 35.427433, 34.021076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140043, 0.885537, -0.442958,
		0.877603, 0.096137, 0.469649,
		0.458476, -0.454512, -0.763687,
		34.866333, 35.291080, 33.791969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028103, 36.107655, 34.187798>,  <34.545399, 35.609238, 34.326550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028103, 36.107655, 34.187798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050697, 35.869114, 33.867504>,  <35.064255, 35.725990, 33.675327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050697, 35.869114, 33.867504>,  <35.028103, 36.107655, 34.187798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050697, 35.869114, 33.867504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243254, 0.786068, -0.568265,
		0.968316, -0.162684, 0.189466,
		0.056485, -0.596348, -0.800736,
		35.067642, 35.690208, 33.627285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626534, 36.239830, 33.926399>,  <35.028103, 36.107655, 34.187798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626534, 36.239830, 33.926399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410210, 36.090748, 33.624771>,  <35.280415, 36.001297, 33.443794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410210, 36.090748, 33.624771>,  <35.626534, 36.239830, 33.926399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410210, 36.090748, 33.624771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264085, 0.775912, -0.572905,
		0.798619, -0.508967, -0.321187,
		-0.540802, -0.372712, -0.754068,
		35.247967, 35.978935, 33.398552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012909, 36.369236, 33.327713>,  <35.626534, 36.239830, 33.926399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012909, 36.369236, 33.327713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649555, 36.304539, 33.173473>,  <35.431545, 36.265720, 33.080929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649555, 36.304539, 33.173473>,  <36.012909, 36.369236, 33.327713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649555, 36.304539, 33.173473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109080, 0.798571, -0.591934,
		0.403664, -0.579763, -0.707765,
		-0.908382, -0.161740, -0.385595,
		35.377041, 36.256016, 33.057796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155323, 36.462597, 32.594593>,  <36.012909, 36.369236, 33.327713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155323, 36.462597, 32.594593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764458, 36.508400, 32.666183>,  <35.529938, 36.535881, 32.709137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764458, 36.508400, 32.666183>,  <36.155323, 36.462597, 32.594593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764458, 36.508400, 32.666183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014882, 0.877163, -0.479963,
		-0.211951, -0.466340, -0.858839,
		-0.977167, 0.114510, 0.178975,
		35.471306, 36.542751, 32.719875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837196, 36.608929, 31.885176>,  <36.155323, 36.462597, 32.594593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837196, 36.608929, 31.885176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600163, 36.724308, 32.186012>,  <35.457943, 36.793537, 32.366516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600163, 36.724308, 32.186012>,  <35.837196, 36.608929, 31.885176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600163, 36.724308, 32.186012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063261, 0.914137, -0.400440,
		-0.803022, -0.284871, -0.523453,
		-0.592582, 0.288448, 0.752093,
		35.422386, 36.810844, 32.411640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302719, 36.940643, 31.559645>,  <35.837196, 36.608929, 31.885176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302719, 36.940643, 31.559645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320435, 37.065887, 31.939117>,  <35.331062, 37.141033, 32.166801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320435, 37.065887, 31.939117>,  <35.302719, 36.940643, 31.559645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320435, 37.065887, 31.939117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034313, 0.948579, -0.314676,
		-0.998429, 0.046488, 0.031266,
		0.044287, 0.313109, 0.948684,
		35.333721, 37.159821, 32.223724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771984, 37.460419, 31.604645>,  <35.302719, 36.940643, 31.559645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771984, 37.460419, 31.604645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045856, 37.523674, 31.889238>,  <35.210178, 37.561626, 32.059994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045856, 37.523674, 31.889238>,  <34.771984, 37.460419, 31.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045856, 37.523674, 31.889238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087728, 0.951200, -0.295842,
		-0.723547, 0.264973, 0.637392,
		0.684677, 0.158139, 0.711484,
		35.251259, 37.571117, 32.102684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513882, 38.072628, 31.786619>,  <34.771984, 37.460419, 31.604645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513882, 38.072628, 31.786619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878666, 38.062298, 31.950407>,  <35.097534, 38.056099, 32.048679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878666, 38.062298, 31.950407>,  <34.513882, 38.072628, 31.786619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878666, 38.062298, 31.950407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079645, 0.990175, -0.114934,
		-0.402480, 0.137427, 0.905055,
		0.911958, -0.025825, 0.409471,
		35.152252, 38.054550, 32.073250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608994, 38.671532, 32.124031>,  <34.513882, 38.072628, 31.786619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608994, 38.671532, 32.124031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983669, 38.539520, 32.077232>,  <35.208477, 38.460312, 32.049152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983669, 38.539520, 32.077232>,  <34.608994, 38.671532, 32.124031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983669, 38.539520, 32.077232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292439, 0.921107, -0.256983,
		0.192583, 0.206498, 0.959307,
		0.936692, -0.330030, -0.117001,
		35.264675, 38.440510, 32.042133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032463, 39.140743, 32.429241>,  <34.608994, 38.671532, 32.124031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032463, 39.140743, 32.429241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281395, 38.953838, 32.178047>,  <35.430756, 38.841694, 32.027332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281395, 38.953838, 32.178047>,  <35.032463, 39.140743, 32.429241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281395, 38.953838, 32.178047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274537, 0.881613, -0.383913,
		0.733028, 0.066517, 0.676939,
		0.622334, -0.467263, -0.627985,
		35.468094, 38.813660, 31.989651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546642, 39.657303, 32.298092>,  <35.032463, 39.140743, 32.429241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546642, 39.657303, 32.298092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591679, 39.392879, 32.001354>,  <35.618702, 39.234226, 31.823313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591679, 39.392879, 32.001354>,  <35.546642, 39.657303, 32.298092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591679, 39.392879, 32.001354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265413, 0.739471, -0.618659,
		0.957538, -0.127240, 0.258710,
		0.112590, -0.661055, -0.741843,
		35.625454, 39.194565, 31.778801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940407, 40.050060, 31.807007>,  <35.546642, 39.657303, 32.298092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940407, 40.050060, 31.807007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831806, 39.742390, 31.575611>,  <35.766647, 39.557785, 31.436773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831806, 39.742390, 31.575611>,  <35.940407, 40.050060, 31.807007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831806, 39.742390, 31.575611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049044, 0.611344, -0.789844,
		0.961187, -0.186073, -0.203704,
		-0.271502, -0.769179, -0.578490,
		35.750355, 39.511635, 31.402063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399082, 39.934868, 31.371403>,  <35.940407, 40.050060, 31.807007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399082, 39.934868, 31.371403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055908, 39.810066, 31.208141>,  <35.850002, 39.735184, 31.110184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055908, 39.810066, 31.208141>,  <36.399082, 39.934868, 31.371403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055908, 39.810066, 31.208141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101704, 0.675591, -0.730228,
		0.503582, -0.668003, -0.547884,
		-0.857940, -0.312007, -0.408155,
		35.798527, 39.716465, 31.085695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466106, 40.050770, 30.615553>,  <36.399082, 39.934868, 31.371403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466106, 40.050770, 30.615553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071880, 40.008312, 30.668303>,  <35.835342, 39.982838, 30.699953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071880, 40.008312, 30.668303>,  <36.466106, 40.050770, 30.615553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071880, 40.008312, 30.668303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167711, 0.718250, -0.675270,
		-0.023040, -0.687640, -0.725686,
		-0.985567, -0.106147, 0.131874,
		35.776211, 39.976467, 30.707865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192860, 40.014801, 29.954842>,  <36.466106, 40.050770, 30.615553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192860, 40.014801, 29.954842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909466, 40.140381, 30.207664>,  <35.739429, 40.215729, 30.359358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909466, 40.140381, 30.207664>,  <36.192860, 40.014801, 29.954842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909466, 40.140381, 30.207664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312314, 0.663657, -0.679720,
		-0.632864, -0.678968, -0.372138,
		-0.708480, 0.313946, 0.632056,
		35.696922, 40.234566, 30.397282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592262, 39.996490, 29.520584>,  <36.192860, 40.014801, 29.954842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592262, 39.996490, 29.520584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512383, 40.254402, 29.815714>,  <35.464455, 40.409149, 29.992792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512383, 40.254402, 29.815714>,  <35.592262, 39.996490, 29.520584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512383, 40.254402, 29.815714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276425, 0.685335, -0.673725,
		-0.940059, -0.338494, 0.041373,
		-0.199698, 0.644777, 0.737823,
		35.452473, 40.447834, 30.037062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859283, 40.302265, 29.364664>,  <35.592262, 39.996490, 29.520584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859283, 40.302265, 29.364664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039124, 40.558662, 29.613497>,  <35.147026, 40.712502, 29.762796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039124, 40.558662, 29.613497>,  <34.859283, 40.302265, 29.364664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039124, 40.558662, 29.613497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284067, 0.762892, -0.580776,
		-0.846856, 0.084404, 0.525082,
		0.449601, 0.640992, 0.622083,
		35.174004, 40.750961, 29.800121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525623, 40.889507, 29.238039>,  <34.859283, 40.302265, 29.364664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525623, 40.889507, 29.238039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818192, 41.041145, 29.464773>,  <34.993732, 41.132130, 29.600815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818192, 41.041145, 29.464773>,  <34.525623, 40.889507, 29.238039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818192, 41.041145, 29.464773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160919, 0.903710, -0.396753,
		-0.662664, 0.198980, 0.721999,
		0.731424, 0.379097, 0.566837,
		35.037621, 41.154873, 29.634825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226471, 41.535034, 29.625547>,  <34.525623, 40.889507, 29.238039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226471, 41.535034, 29.625547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619694, 41.500229, 29.561026>,  <34.855629, 41.479343, 29.522312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619694, 41.500229, 29.561026>,  <34.226471, 41.535034, 29.625547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619694, 41.500229, 29.561026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037817, 0.764867, -0.643078,
		0.179335, 0.638285, 0.748620,
		0.983061, -0.087016, -0.161306,
		34.914612, 41.474125, 29.512634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352333, 42.192020, 29.599409>,  <34.226471, 41.535034, 29.625547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352333, 42.192020, 29.599409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666225, 41.996880, 29.446466>,  <34.854561, 41.879795, 29.354702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666225, 41.996880, 29.446466>,  <34.352333, 42.192020, 29.599409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666225, 41.996880, 29.446466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087442, 0.697828, -0.710908,
		0.613637, 0.524437, 0.590266,
		0.784731, -0.487854, -0.382356,
		34.901646, 41.850525, 29.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690853, 42.733994, 29.289091>,  <34.352333, 42.192020, 29.599409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690853, 42.733994, 29.289091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862625, 42.417038, 29.115786>,  <34.965687, 42.226864, 29.011803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862625, 42.417038, 29.115786>,  <34.690853, 42.733994, 29.289091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862625, 42.417038, 29.115786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228041, 0.559346, -0.796950,
		0.873836, 0.243431, 0.420895,
		0.429428, -0.792384, -0.433264,
		34.991455, 42.179321, 28.985806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373444, 43.012012, 28.915035>,  <34.690853, 42.733994, 29.289091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373444, 43.012012, 28.915035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261097, 42.676647, 28.728197>,  <35.193687, 42.475430, 28.616095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261097, 42.676647, 28.728197>,  <35.373444, 43.012012, 28.915035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261097, 42.676647, 28.728197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102507, 0.457696, -0.883180,
		0.954257, -0.295938, -0.042609,
		-0.280868, -0.838412, -0.467095,
		35.176838, 42.425125, 28.588068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905949, 42.867153, 28.410460>,  <35.373444, 43.012012, 28.915035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905949, 42.867153, 28.410460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560417, 42.692680, 28.309628>,  <35.353100, 42.587997, 28.249128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560417, 42.692680, 28.309628>,  <35.905949, 42.867153, 28.410460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560417, 42.692680, 28.309628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069370, 0.392616, -0.917083,
		0.498987, -0.809689, -0.308894,
		-0.863829, -0.436184, -0.252078,
		35.301270, 42.561825, 28.234005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984650, 42.603714, 27.722595>,  <35.905949, 42.867153, 28.410460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984650, 42.603714, 27.722595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587727, 42.616230, 27.770494>,  <35.349571, 42.623741, 27.799234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587727, 42.616230, 27.770494>,  <35.984650, 42.603714, 27.722595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587727, 42.616230, 27.770494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108943, 0.238313, -0.965059,
		-0.058733, -0.970684, -0.233072,
		-0.992312, 0.031289, 0.119746,
		35.290031, 42.625618, 27.806417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643852, 42.257141, 27.095242>,  <35.984650, 42.603714, 27.722595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643852, 42.257141, 27.095242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381195, 42.516983, 27.248522>,  <35.223602, 42.672890, 27.340490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381195, 42.516983, 27.248522>,  <35.643852, 42.257141, 27.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381195, 42.516983, 27.248522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155958, 0.380151, -0.911681,
		-0.737905, -0.658407, -0.148311,
		-0.656638, 0.649603, 0.383199,
		35.184204, 42.711864, 27.363482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058167, 42.225090, 26.652807>,  <35.643852, 42.257141, 27.095242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058167, 42.225090, 26.652807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019142, 42.571667, 26.848669>,  <34.995728, 42.779613, 26.966187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019142, 42.571667, 26.848669>,  <35.058167, 42.225090, 26.652807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019142, 42.571667, 26.848669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266596, 0.451269, -0.851636,
		-0.958858, -0.213622, 0.186966,
		-0.097556, 0.866442, 0.489654,
		34.989876, 42.831600, 26.995565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508587, 42.500095, 26.326464>,  <35.058167, 42.225090, 26.652807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508587, 42.500095, 26.326464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684261, 42.815441, 26.498787>,  <34.789665, 43.004650, 26.602180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684261, 42.815441, 26.498787>,  <34.508587, 42.500095, 26.326464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684261, 42.815441, 26.498787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167844, 0.543089, -0.822729,
		-0.882578, 0.289023, 0.370840,
		0.439186, 0.788366, 0.430807,
		34.816017, 43.051952, 26.628029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028336, 43.061489, 26.234676>,  <34.508587, 42.500095, 26.326464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028336, 43.061489, 26.234676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402798, 43.195290, 26.277992>,  <34.627476, 43.275570, 26.303982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402798, 43.195290, 26.277992>,  <34.028336, 43.061489, 26.234676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402798, 43.195290, 26.277992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169935, 0.700105, -0.693523,
		-0.307799, 0.630842, 0.712249,
		0.936153, 0.334502, 0.108289,
		34.683643, 43.295639, 26.310478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920811, 43.708656, 26.179146>,  <34.028336, 43.061489, 26.234676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920811, 43.708656, 26.179146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314533, 43.669201, 26.120609>,  <34.550766, 43.645527, 26.085487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314533, 43.669201, 26.120609>,  <33.920811, 43.708656, 26.179146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314533, 43.669201, 26.120609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005681, 0.846494, -0.532368,
		0.176393, 0.523180, 0.833767,
		0.984303, -0.098643, -0.146343,
		34.609825, 43.639606, 26.076706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275349, 44.332615, 26.276361>,  <33.920811, 43.708656, 26.179146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275349, 44.332615, 26.276361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542751, 44.141830, 26.048113>,  <34.703194, 44.027359, 25.911163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542751, 44.141830, 26.048113>,  <34.275349, 44.332615, 26.276361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542751, 44.141830, 26.048113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037348, 0.744768, -0.666278,
		0.742768, 0.466723, 0.480069,
		0.668507, -0.476960, -0.570620,
		34.743305, 43.998741, 25.876926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660210, 44.848873, 25.845621>,  <34.275349, 44.332615, 26.276361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660210, 44.848873, 25.845621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775856, 44.521469, 25.647045>,  <34.845245, 44.325027, 25.527899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775856, 44.521469, 25.647045>,  <34.660210, 44.848873, 25.845621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775856, 44.521469, 25.647045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143499, 0.549785, -0.822887,
		0.946477, 0.166672, 0.276408,
		0.289117, -0.818509, -0.496442,
		34.862591, 44.275917, 25.498112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289104, 44.894836, 25.627022>,  <34.660210, 44.848873, 25.845621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289104, 44.894836, 25.627022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106670, 44.650928, 25.367741>,  <34.997211, 44.504581, 25.212172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106670, 44.650928, 25.367741>,  <35.289104, 44.894836, 25.627022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106670, 44.650928, 25.367741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228582, 0.623664, -0.747525,
		0.860082, -0.489099, -0.145058,
		-0.456081, -0.609775, -0.648201,
		34.969845, 44.467995, 25.173281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687012, 44.960674, 25.057831>,  <35.289104, 44.894836, 25.627022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687012, 44.960674, 25.057831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324989, 44.831718, 24.946880>,  <35.107777, 44.754345, 24.880310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324989, 44.831718, 24.946880>,  <35.687012, 44.960674, 25.057831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324989, 44.831718, 24.946880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063333, 0.542765, -0.837493,
		0.420549, -0.775546, -0.470815,
		-0.905057, -0.322389, -0.277377,
		35.053474, 44.735001, 24.863667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748226, 44.828602, 24.367933>,  <35.687012, 44.960674, 25.057831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748226, 44.828602, 24.367933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360115, 44.877560, 24.451435>,  <35.127247, 44.906933, 24.501537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360115, 44.877560, 24.451435>,  <35.748226, 44.828602, 24.367933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360115, 44.877560, 24.451435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108022, 0.552877, -0.826231,
		-0.216543, -0.824225, -0.523223,
		-0.970279, 0.122395, 0.208756,
		35.069031, 44.914276, 24.514061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518631, 44.525600, 24.130737>,  <35.748226, 44.828602, 24.367933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518631, 44.525600, 24.130737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549850, 44.313446, 23.793074>,  <36.568581, 44.186153, 23.590475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549850, 44.313446, 23.793074>,  <36.518631, 44.525600, 24.130737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549850, 44.313446, 23.793074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445671, -0.738862, 0.505430,
		-0.891788, -0.415665, 0.178709,
		0.078048, -0.530382, -0.844158,
		36.573265, 44.154331, 23.539825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042110, 43.800930, 24.108328>,  <36.518631, 44.525600, 24.130737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042110, 43.800930, 24.108328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401707, 43.850288, 23.940241>,  <36.617466, 43.879902, 23.839388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401707, 43.850288, 23.940241>,  <36.042110, 43.800930, 24.108328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401707, 43.850288, 23.940241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402353, -0.611661, 0.681163,
		-0.172977, -0.781437, -0.599529,
		0.898995, 0.123397, -0.420217,
		36.671406, 43.887306, 23.814177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319836, 43.139465, 23.943596>,  <36.042110, 43.800930, 24.108328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319836, 43.139465, 23.943596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624382, 43.396275, 23.979664>,  <36.807110, 43.550362, 24.001305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.624382, 43.396275, 23.979664>,  <36.319836, 43.139465, 23.943596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624382, 43.396275, 23.979664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448417, -0.621934, 0.641967,
		0.468236, -0.448337, -0.761412,
		0.761365, 0.642022, 0.090170,
		36.852791, 43.588882, 24.006714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906303, 42.778912, 23.919817>,  <36.319836, 43.139465, 23.943596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906303, 42.778912, 23.919817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989471, 43.114769, 24.120525>,  <37.039371, 43.316284, 24.240950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989471, 43.114769, 24.120525>,  <36.906303, 42.778912, 23.919817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989471, 43.114769, 24.120525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426383, -0.539480, 0.726057,
		0.880322, 0.062985, -0.470177,
		0.207920, 0.839639, 0.501771,
		37.051849, 43.366661, 24.271057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639877, 42.671726, 24.076012>,  <36.906303, 42.778912, 23.919817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639877, 42.671726, 24.076012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494904, 42.962753, 24.309004>,  <37.407917, 43.137371, 24.448799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494904, 42.962753, 24.309004>,  <37.639877, 42.671726, 24.076012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494904, 42.962753, 24.309004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532313, -0.351413, 0.770163,
		0.765037, 0.589200, -0.259928,
		-0.362438, 0.727566, 0.582482,
		37.386173, 43.181023, 24.483749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223171, 42.801590, 24.409225>,  <37.639877, 42.671726, 24.076012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223171, 42.801590, 24.409225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924053, 42.936745, 24.637835>,  <37.744583, 43.017838, 24.775000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924053, 42.936745, 24.637835>,  <38.223171, 42.801590, 24.409225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924053, 42.936745, 24.637835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488184, -0.303589, 0.818236,
		0.449980, 0.890879, 0.062070,
		-0.747793, 0.337888, 0.571522,
		37.699715, 43.038113, 24.809292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561958, 43.096870, 24.913687>,  <38.223171, 42.801590, 24.409225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561958, 43.096870, 24.913687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203907, 43.021488, 25.075294>,  <37.989079, 42.976257, 25.172260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203907, 43.021488, 25.075294>,  <38.561958, 43.096870, 24.913687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203907, 43.021488, 25.075294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445216, -0.331050, 0.831979,
		-0.023038, 0.924603, 0.380234,
		-0.895127, -0.188454, 0.404022,
		37.935368, 42.964951, 25.196501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512218, 43.434036, 25.566973>,  <38.561958, 43.096870, 24.913687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512218, 43.434036, 25.566973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229263, 43.151535, 25.578413>,  <38.059490, 42.982037, 25.585278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229263, 43.151535, 25.578413>,  <38.512218, 43.434036, 25.566973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229263, 43.151535, 25.578413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462960, -0.432368, 0.773774,
		-0.534112, 0.560596, 0.632816,
		-0.707384, -0.706250, 0.028601,
		38.017048, 42.939659, 25.586994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350296, 43.350590, 26.228722>,  <38.512218, 43.434036, 25.566973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350296, 43.350590, 26.228722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200809, 43.011990, 26.077047>,  <38.111118, 42.808830, 25.986042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200809, 43.011990, 26.077047>,  <38.350296, 43.350590, 26.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200809, 43.011990, 26.077047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440765, -0.521770, 0.730399,
		-0.816127, 0.105829, 0.568099,
		-0.373715, -0.846496, -0.379185,
		38.088696, 42.758041, 25.963291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916046, 43.040035, 26.778282>,  <38.350296, 43.350590, 26.228722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916046, 43.040035, 26.778282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000813, 42.738686, 26.529276>,  <38.051674, 42.557877, 26.379873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000813, 42.738686, 26.529276>,  <37.916046, 43.040035, 26.778282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000813, 42.738686, 26.529276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345456, -0.538112, 0.768828,
		-0.914195, -0.377978, 0.146223,
		0.211916, -0.753372, -0.622514,
		38.064388, 42.512672, 26.342522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807495, 42.488110, 27.122671>,  <37.916046, 43.040035, 26.778282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807495, 42.488110, 27.122671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983658, 42.295731, 26.819427>,  <38.089355, 42.180302, 26.637482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.983658, 42.295731, 26.819427>,  <37.807495, 42.488110, 27.122671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983658, 42.295731, 26.819427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359404, -0.679353, 0.639772,
		-0.822722, -0.554227, -0.126337,
		0.440407, -0.480948, -0.758110,
		38.115780, 42.151447, 26.591995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570099, 41.762302, 27.037392>,  <37.807495, 42.488110, 27.122671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570099, 41.762302, 27.037392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943096, 41.748806, 26.893549>,  <38.166893, 41.740707, 26.807243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943096, 41.748806, 26.893549>,  <37.570099, 41.762302, 27.037392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943096, 41.748806, 26.893549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231756, -0.707739, 0.667379,
		-0.277026, -0.705668, -0.652143,
		0.932495, -0.033743, -0.359605,
		38.222843, 41.738682, 26.785667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.721378, 41.077023, 26.995251>,  <37.570099, 41.762302, 27.037392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.721378, 41.077023, 26.995251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078831, 41.254971, 26.971521>,  <38.293301, 41.361740, 26.957283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078831, 41.254971, 26.971521>,  <37.721378, 41.077023, 26.995251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078831, 41.254971, 26.971521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337212, -0.578313, 0.742861,
		0.296168, -0.683847, -0.666812,
		0.893629, 0.444869, -0.059324,
		38.346920, 41.388432, 26.953724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180595, 40.523926, 26.962965>,  <37.721378, 41.077023, 26.995251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180595, 40.523926, 26.962965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360882, 40.854034, 27.099073>,  <38.469055, 41.052101, 27.180738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360882, 40.854034, 27.099073>,  <38.180595, 40.523926, 26.962965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360882, 40.854034, 27.099073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365924, -0.518494, 0.772828,
		0.814221, -0.223812, -0.535680,
		0.450715, 0.825271, 0.340271,
		38.496098, 41.101616, 27.201155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693085, 40.230164, 27.077826>,  <38.180595, 40.523926, 26.962965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693085, 40.230164, 27.077826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681641, 40.566692, 27.293739>,  <38.674774, 40.768608, 27.423286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681641, 40.566692, 27.293739>,  <38.693085, 40.230164, 27.077826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681641, 40.566692, 27.293739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268054, -0.513766, 0.814979,
		0.962979, 0.168011, -0.210817,
		-0.028615, 0.841318, 0.539782,
		38.673058, 40.819088, 27.455673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208656, 40.161449, 27.452820>,  <38.693085, 40.230164, 27.077826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208656, 40.161449, 27.452820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983437, 40.433178, 27.641077>,  <38.848305, 40.596214, 27.754032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.983437, 40.433178, 27.641077>,  <39.208656, 40.161449, 27.452820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983437, 40.433178, 27.641077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166350, -0.464678, 0.869714,
		0.809510, 0.567981, 0.148631,
		-0.563046, 0.679318, 0.470645,
		38.814522, 40.636974, 27.782270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637222, 40.286549, 28.141096>,  <39.208656, 40.161449, 27.452820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637222, 40.286549, 28.141096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259220, 40.410931, 28.181648>,  <39.032421, 40.485561, 28.205980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259220, 40.410931, 28.181648>,  <39.637222, 40.286549, 28.141096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259220, 40.410931, 28.181648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003591, -0.300092, 0.953903,
		0.327046, 0.901804, 0.282471,
		-0.945002, 0.310956, 0.101382,
		38.975719, 40.504219, 28.212063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507198, 40.495949, 28.887863>,  <39.637222, 40.286549, 28.141096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507198, 40.495949, 28.887863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122334, 40.451931, 28.788149>,  <38.891415, 40.425518, 28.728321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122334, 40.451931, 28.788149>,  <39.507198, 40.495949, 28.887863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122334, 40.451931, 28.788149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188941, -0.389766, 0.901323,
		-0.196352, 0.914315, 0.354224,
		-0.962157, -0.110049, -0.249283,
		38.833687, 40.418915, 28.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046177, 40.737064, 29.442791>,  <39.507198, 40.495949, 28.887863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046177, 40.737064, 29.442791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844051, 40.485367, 29.206587>,  <38.722775, 40.334347, 29.064863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.844051, 40.485367, 29.206587>,  <39.046177, 40.737064, 29.442791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844051, 40.485367, 29.206587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303677, -0.510864, 0.804238,
		-0.807735, 0.585719, 0.067060,
		-0.505316, -0.629247, -0.590512,
		38.692455, 40.296593, 29.029432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488392, 40.745831, 29.770676>,  <39.046177, 40.737064, 29.442791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488392, 40.745831, 29.770676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451069, 40.426453, 29.532759>,  <38.428673, 40.234825, 29.390009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451069, 40.426453, 29.532759>,  <38.488392, 40.745831, 29.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451069, 40.426453, 29.532759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255225, -0.558255, 0.789437,
		-0.962369, 0.225468, -0.151693,
		-0.093310, -0.798445, -0.594793,
		38.423077, 40.186920, 29.354321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868237, 40.355862, 30.063814>,  <38.488392, 40.745831, 29.770676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868237, 40.355862, 30.063814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066067, 40.081200, 29.850687>,  <38.184765, 39.916401, 29.722811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066067, 40.081200, 29.850687>,  <37.868237, 40.355862, 30.063814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066067, 40.081200, 29.850687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177324, -0.679869, 0.711572,
		-0.850852, -0.257446, -0.458008,
		0.494577, -0.686658, -0.532816,
		38.214439, 39.875202, 29.690842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405537, 39.726460, 30.001329>,  <37.868237, 40.355862, 30.063814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405537, 39.726460, 30.001329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781849, 39.603413, 29.944321>,  <38.007637, 39.529583, 29.910116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781849, 39.603413, 29.944321>,  <37.405537, 39.726460, 30.001329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781849, 39.603413, 29.944321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175146, -0.800923, 0.572578,
		-0.290283, -0.513706, -0.807367,
		0.940776, -0.307617, -0.142521,
		38.064083, 39.511127, 29.901564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299923, 38.950718, 29.827618>,  <37.405537, 39.726460, 30.001329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299923, 38.950718, 29.827618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681606, 39.002682, 29.935400>,  <37.910618, 39.033859, 30.000071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681606, 39.002682, 29.935400>,  <37.299923, 38.950718, 29.827618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681606, 39.002682, 29.935400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035617, -0.845034, 0.533525,
		0.297009, -0.518692, -0.801714,
		0.954210, 0.129907, 0.269457,
		37.967869, 39.041653, 30.016237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671310, 38.232613, 29.763628>,  <37.299923, 38.950718, 29.827618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671310, 38.232613, 29.763628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845673, 38.476048, 30.028841>,  <37.950291, 38.622108, 30.187969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845673, 38.476048, 30.028841>,  <37.671310, 38.232613, 29.763628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845673, 38.476048, 30.028841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139798, -0.773550, 0.618124,
		0.889071, -0.176750, -0.422271,
		0.435901, 0.608588, 0.663031,
		37.976444, 38.658623, 30.227751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248245, 37.754318, 30.053652>,  <37.671310, 38.232613, 29.763628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248245, 37.754318, 30.053652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211411, 38.050835, 30.319586>,  <38.189312, 38.228745, 30.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211411, 38.050835, 30.319586>,  <38.248245, 37.754318, 30.053652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211411, 38.050835, 30.319586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226310, -0.665778, 0.711002,
		0.969693, -0.084988, 0.229068,
		-0.092082, 0.741294, 0.664833,
		38.183784, 38.273224, 30.519035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666325, 37.519176, 30.630152>,  <38.248245, 37.754318, 30.053652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666325, 37.519176, 30.630152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431549, 37.808201, 30.776253>,  <38.290684, 37.981613, 30.863913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431549, 37.808201, 30.776253>,  <38.666325, 37.519176, 30.630152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431549, 37.808201, 30.776253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125873, -0.527086, 0.840438,
		0.799785, 0.447313, 0.400319,
		-0.586941, 0.722559, 0.365251,
		38.255466, 38.024967, 30.885828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878605, 37.626053, 31.272440>,  <38.666325, 37.519176, 30.630152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878605, 37.626053, 31.272440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507648, 37.774281, 31.292963>,  <38.285076, 37.863216, 31.305277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507648, 37.774281, 31.292963>,  <38.878605, 37.626053, 31.272440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507648, 37.774281, 31.292963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148228, -0.489903, 0.859083,
		0.343486, 0.789097, 0.509258,
		-0.927387, 0.370569, 0.051309,
		38.229431, 37.885452, 31.308355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893238, 37.950050, 31.908283>,  <38.878605, 37.626053, 31.272440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893238, 37.950050, 31.908283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509792, 37.904064, 31.804096>,  <38.279724, 37.876472, 31.741585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.509792, 37.904064, 31.804096>,  <38.893238, 37.950050, 31.908283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509792, 37.904064, 31.804096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196611, -0.394379, 0.897669,
		-0.205919, 0.911729, 0.355455,
		-0.958614, -0.114961, -0.260466,
		38.222206, 37.869576, 31.725956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490154, 38.307114, 32.507809>,  <38.893238, 37.950050, 31.908283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490154, 38.307114, 32.507809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257729, 38.036877, 32.326283>,  <38.118275, 37.874733, 32.217369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257729, 38.036877, 32.326283>,  <38.490154, 38.307114, 32.507809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257729, 38.036877, 32.326283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173375, -0.442053, 0.880074,
		-0.795179, 0.590056, 0.139729,
		-0.581060, -0.675591, -0.453812,
		38.083412, 37.834198, 32.190140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847752, 38.201050, 33.043327>,  <38.490154, 38.307114, 32.507809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847752, 38.201050, 33.043327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861748, 37.904377, 32.775391>,  <37.870144, 37.726372, 32.614628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861748, 37.904377, 32.775391>,  <37.847752, 38.201050, 33.043327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861748, 37.904377, 32.775391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218559, -0.659703, 0.719043,
		-0.975196, 0.121239, -0.185185,
		0.034991, -0.741682, -0.669838,
		37.872246, 37.681873, 32.574440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329533, 37.684467, 33.165058>,  <37.847752, 38.201050, 33.043327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.329533, 37.684467, 33.165058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624157, 37.489979, 32.976986>,  <37.800930, 37.373287, 32.864143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624157, 37.489979, 32.976986>,  <37.329533, 37.684467, 33.165058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624157, 37.489979, 32.976986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074639, -0.749335, 0.657972,
		-0.672242, -0.449541, -0.588220,
		0.736559, -0.486220, -0.470181,
		37.845123, 37.344112, 32.835930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990692, 37.028473, 33.026630>,  <37.329533, 37.684467, 33.165058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990692, 37.028473, 33.026630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387867, 36.981152, 33.023056>,  <37.626171, 36.952759, 33.020912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387867, 36.981152, 33.023056>,  <36.990692, 37.028473, 33.026630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387867, 36.981152, 33.023056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090554, -0.804339, 0.587230,
		-0.076658, -0.582273, -0.809371,
		0.992937, -0.118308, -0.008932,
		37.685749, 36.945660, 33.020378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104988, 36.366928, 32.855949>,  <36.990692, 37.028473, 33.026630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104988, 36.366928, 32.855949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454556, 36.476124, 33.016819>,  <37.664295, 36.541641, 33.113342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454556, 36.476124, 33.016819>,  <37.104988, 36.366928, 32.855949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454556, 36.476124, 33.016819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013573, -0.813366, 0.581594,
		0.485887, -0.513723, -0.707109,
		0.873916, 0.272991, 0.402176,
		37.716732, 36.558022, 33.137470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496876, 35.686653, 32.973919>,  <37.104988, 36.366928, 32.855949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496876, 35.686653, 32.973919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716728, 35.948616, 33.181381>,  <37.848640, 36.105793, 33.305859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716728, 35.948616, 33.181381>,  <37.496876, 35.686653, 32.973919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716728, 35.948616, 33.181381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202272, -0.706692, 0.677992,
		0.810551, -0.267735, -0.520889,
		0.549630, 0.654908, 0.518654,
		37.881618, 36.145088, 33.336979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139065, 35.354618, 33.117619>,  <37.496876, 35.686653, 32.973919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139065, 35.354618, 33.117619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106781, 35.643005, 33.392918>,  <38.087410, 35.816036, 33.558098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106781, 35.643005, 33.392918>,  <38.139065, 35.354618, 33.117619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106781, 35.643005, 33.392918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392144, -0.611851, 0.686921,
		0.916356, 0.325335, -0.233341,
		-0.080709, 0.720968, 0.688252,
		38.082569, 35.859295, 33.599392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778629, 35.394592, 33.349693>,  <38.139065, 35.354618, 33.117619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778629, 35.394592, 33.349693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520779, 35.513199, 33.631554>,  <38.366070, 35.584362, 33.800671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520779, 35.513199, 33.631554>,  <38.778629, 35.394592, 33.349693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520779, 35.513199, 33.631554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420251, -0.632525, 0.650616,
		0.638628, 0.715535, 0.283131,
		-0.644626, 0.296516, 0.704653,
		38.327393, 35.602154, 33.842949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225655, 35.430031, 33.916645>,  <38.778629, 35.394592, 33.349693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225655, 35.430031, 33.916645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848152, 35.442623, 34.048306>,  <38.621651, 35.450180, 34.127304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848152, 35.442623, 34.048306>,  <39.225655, 35.430031, 33.916645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848152, 35.442623, 34.048306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225327, -0.667309, 0.709878,
		0.241994, 0.744115, 0.622681,
		-0.943752, 0.031480, 0.329154,
		38.565025, 35.452068, 34.147053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202209, 35.524937, 34.625313>,  <39.225655, 35.430031, 33.916645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202209, 35.524937, 34.625313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845478, 35.347572, 34.589470>,  <38.631439, 35.241154, 34.567963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845478, 35.347572, 34.589470>,  <39.202209, 35.524937, 34.625313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845478, 35.347572, 34.589470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318119, -0.755555, 0.572659,
		-0.321627, 0.482207, 0.814882,
		-0.891828, -0.443411, -0.089608,
		38.577930, 35.214550, 34.562588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082703, 35.192062, 35.200108>,  <39.202209, 35.524937, 34.625313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082703, 35.192062, 35.200108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785587, 35.012508, 35.001404>,  <38.607319, 34.904774, 34.882183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785587, 35.012508, 35.001404>,  <39.082703, 35.192062, 35.200108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785587, 35.012508, 35.001404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109769, -0.813558, 0.571029,
		-0.660469, 0.369624, 0.653574,
		-0.742786, -0.448889, -0.496756,
		38.562752, 34.877842, 34.852375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605911, 34.922462, 35.671719>,  <39.082703, 35.192062, 35.200108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605911, 34.922462, 35.671719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525959, 34.711014, 35.341724>,  <38.477989, 34.584145, 35.143726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525959, 34.711014, 35.341724>,  <38.605911, 34.922462, 35.671719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525959, 34.711014, 35.341724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021582, -0.844149, 0.535674,
		-0.979583, 0.089265, 0.180135,
		-0.199878, -0.528625, -0.824988,
		38.465996, 34.552425, 35.094227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097935, 34.428143, 35.896275>,  <38.605911, 34.922462, 35.671719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097935, 34.428143, 35.896275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284519, 34.284561, 35.572903>,  <38.396469, 34.198414, 35.378880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284519, 34.284561, 35.572903>,  <38.097935, 34.428143, 35.896275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284519, 34.284561, 35.572903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052450, -0.901125, 0.430374,
		-0.882983, -0.243157, -0.401516,
		0.466465, -0.358954, -0.808432,
		38.424458, 34.176876, 35.330372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803440, 33.815006, 35.763260>,  <38.097935, 34.428143, 35.896275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803440, 33.815006, 35.763260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156227, 33.779339, 35.578140>,  <38.367901, 33.757938, 35.467068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156227, 33.779339, 35.578140>,  <37.803440, 33.815006, 35.763260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156227, 33.779339, 35.578140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076495, -0.941835, 0.327254,
		-0.465061, -0.324030, -0.823847,
		0.881968, -0.089173, -0.462797,
		38.420818, 33.752586, 35.439301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766987, 33.225986, 35.334843>,  <37.803440, 33.815006, 35.763260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766987, 33.225986, 35.334843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157696, 33.293617, 35.387505>,  <38.392120, 33.334194, 35.419102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157696, 33.293617, 35.387505>,  <37.766987, 33.225986, 35.334843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157696, 33.293617, 35.387505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131159, -0.957561, 0.256660,
		0.169460, -0.233430, -0.957493,
		0.976771, 0.169077, 0.131652,
		38.450726, 33.344341, 35.426998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095726, 32.599689, 35.089149>,  <37.766987, 33.225986, 35.334843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095726, 32.599689, 35.089149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359844, 32.786484, 35.324413>,  <38.518314, 32.898560, 35.465572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.359844, 32.786484, 35.324413>,  <38.095726, 32.599689, 35.089149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359844, 32.786484, 35.324413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247996, -0.874815, 0.416169,
		0.708874, -0.128936, -0.693450,
		0.660299, 0.466985, 0.588158,
		38.557934, 32.926579, 35.500862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427021, 32.042160, 35.328461>,  <38.095726, 32.599689, 35.089149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427021, 32.042160, 35.328461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609146, 32.342373, 35.520042>,  <38.718422, 32.522499, 35.634991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609146, 32.342373, 35.520042>,  <38.427021, 32.042160, 35.328461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609146, 32.342373, 35.520042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443273, -0.657630, 0.609124,
		0.772138, -0.065037, -0.632119,
		0.455316, 0.750529, 0.478951,
		38.745739, 32.567532, 35.663727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217537, 32.161854, 35.198696>,  <38.427021, 32.042160, 35.328461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217537, 32.161854, 35.198696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118885, 32.281342, 35.567463>,  <39.059692, 32.353035, 35.788723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118885, 32.281342, 35.567463>,  <39.217537, 32.161854, 35.198696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118885, 32.281342, 35.567463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567569, -0.726563, 0.387260,
		0.785517, 0.618765, 0.009649,
		-0.246634, 0.298723, 0.921920,
		39.044895, 32.370960, 35.844040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703171, 31.780602, 35.629852>,  <39.217537, 32.161854, 35.198696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703171, 31.780602, 35.629852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459614, 31.942938, 35.902485>,  <39.313480, 32.040340, 36.066063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459614, 31.942938, 35.902485>,  <39.703171, 31.780602, 35.629852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459614, 31.942938, 35.902485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284755, -0.690122, 0.665316,
		0.740385, 0.599186, 0.304643,
		-0.608889, 0.405841, 0.681577,
		39.276947, 32.064690, 36.106956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106979, 31.873703, 36.254051>,  <39.703171, 31.780602, 35.629852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106979, 31.873703, 36.254051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721756, 31.796694, 36.329361>,  <39.490620, 31.750488, 36.374546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721756, 31.796694, 36.329361>,  <40.106979, 31.873703, 36.254051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721756, 31.796694, 36.329361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269079, -0.714984, 0.645286,
		0.010381, 0.672111, 0.740378,
		-0.963062, -0.192522, 0.188273,
		39.432838, 31.738937, 36.385841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077839, 31.870689, 36.966919>,  <40.106979, 31.873703, 36.254051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077839, 31.870689, 36.966919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755356, 31.664522, 36.850727>,  <39.561867, 31.540821, 36.781013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.755356, 31.664522, 36.850727>,  <40.077839, 31.870689, 36.966919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755356, 31.664522, 36.850727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242568, -0.735767, 0.632303,
		-0.539623, 0.439307, 0.718204,
		-0.806206, -0.515418, -0.290475,
		39.513493, 31.509897, 36.763584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710148, 31.577763, 37.601879>,  <40.077839, 31.870689, 36.966919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710148, 31.577763, 37.601879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592712, 31.339642, 37.302700>,  <39.522251, 31.196768, 37.123192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592712, 31.339642, 37.302700>,  <39.710148, 31.577763, 37.601879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592712, 31.339642, 37.302700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070133, -0.793728, 0.604216,
		-0.953357, 0.124932, 0.274777,
		-0.293584, -0.595304, -0.747945,
		39.504639, 31.161051, 37.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160595, 31.190613, 37.796272>,  <39.710148, 31.577763, 37.601879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160595, 31.190613, 37.796272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323635, 30.988729, 37.491867>,  <39.421459, 30.867599, 37.309223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.323635, 30.988729, 37.491867>,  <39.160595, 31.190613, 37.796272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323635, 30.988729, 37.491867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057403, -0.845892, 0.530256,
		-0.911356, -0.172447, -0.373755,
		0.407597, -0.504706, -0.761009,
		39.445915, 30.837318, 37.263565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853207, 30.492197, 37.808002>,  <39.160595, 31.190613, 37.796272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853207, 30.492197, 37.808002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144154, 30.450739, 37.536652>,  <39.318722, 30.425865, 37.373840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144154, 30.450739, 37.536652>,  <38.853207, 30.492197, 37.808002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144154, 30.450739, 37.536652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224701, -0.898066, 0.378136,
		-0.648420, -0.427476, -0.629934,
		0.727366, -0.103644, -0.678378,
		39.362362, 30.419645, 37.333138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878864, 29.769089, 37.711807>,  <38.853207, 30.492197, 37.808002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878864, 29.769089, 37.711807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218906, 29.840080, 37.513489>,  <39.422932, 29.882675, 37.394497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218906, 29.840080, 37.513489>,  <38.878864, 29.769089, 37.711807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218906, 29.840080, 37.513489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415526, -0.804444, 0.424510,
		-0.323499, -0.566896, -0.757612,
		0.850110, 0.177479, -0.495797,
		39.473938, 29.893324, 37.364750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007584, 29.160770, 37.280819>,  <38.878864, 29.769089, 37.711807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007584, 29.160770, 37.280819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355492, 29.344790, 37.352222>,  <39.564236, 29.455200, 37.395065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355492, 29.344790, 37.352222>,  <39.007584, 29.160770, 37.280819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355492, 29.344790, 37.352222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357874, -0.837124, 0.413703,
		0.339755, -0.295942, -0.892740,
		0.869766, 0.460047, 0.178507,
		39.616421, 29.482803, 37.405773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412544, 28.749077, 36.880802>,  <39.007584, 29.160770, 37.280819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412544, 28.749077, 36.880802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529888, 28.923536, 37.221088>,  <39.600296, 29.028212, 37.425259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529888, 28.923536, 37.221088>,  <39.412544, 28.749077, 36.880802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529888, 28.923536, 37.221088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196562, -0.898372, 0.392799,
		0.935577, 0.051987, -0.349275,
		0.293358, 0.436148, 0.850715,
		39.617897, 29.054380, 37.476303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066559, 28.647697, 36.876961>,  <39.412544, 28.749077, 36.880802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066559, 28.647697, 36.876961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958302, 28.680185, 37.260658>,  <39.893345, 28.699678, 37.490879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958302, 28.680185, 37.260658>,  <40.066559, 28.647697, 36.876961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958302, 28.680185, 37.260658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456419, -0.866499, 0.202144,
		0.847604, 0.492527, 0.197445,
		-0.270647, 0.081220, 0.959246,
		39.877106, 28.704552, 37.548431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736607, 28.668427, 37.261688>,  <40.066559, 28.647697, 36.876961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736607, 28.668427, 37.261688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442768, 28.531277, 37.495884>,  <40.266464, 28.448986, 37.636402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442768, 28.531277, 37.495884>,  <40.736607, 28.668427, 37.261688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442768, 28.531277, 37.495884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611765, -0.707911, 0.352995,
		0.293443, 0.617493, 0.729791,
		-0.734599, -0.342876, 0.585492,
		40.222389, 28.428413, 37.671532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132523, 28.521021, 37.723358>,  <40.736607, 28.668427, 37.261688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132523, 28.521021, 37.723358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783020, 28.349062, 37.814342>,  <40.573318, 28.245886, 37.868931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783020, 28.349062, 37.814342>,  <41.132523, 28.521021, 37.723358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783020, 28.349062, 37.814342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485829, -0.749527, 0.449644,
		-0.022814, 0.503385, 0.863761,
		-0.873756, -0.429898, 0.227459,
		40.520893, 28.220093, 37.882580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159828, 28.302454, 38.341614>,  <41.132523, 28.521021, 37.723358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159828, 28.302454, 38.341614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879784, 28.052069, 38.204205>,  <40.711758, 27.901836, 38.121758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879784, 28.052069, 38.204205>,  <41.159828, 28.302454, 38.341614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879784, 28.052069, 38.204205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471161, -0.766495, 0.436455,
		-0.536513, 0.143715, 0.831565,
		-0.700115, -0.625964, -0.343522,
		40.669750, 27.864279, 38.101147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138744, 27.774757, 38.779999>,  <41.159828, 28.302454, 38.341614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138744, 27.774757, 38.779999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952564, 27.617924, 38.462605>,  <40.840855, 27.523823, 38.272167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952564, 27.617924, 38.462605>,  <41.138744, 27.774757, 38.779999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952564, 27.617924, 38.462605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575310, -0.815316, 0.065399,
		-0.672585, -0.426062, 0.605062,
		-0.465453, -0.392085, -0.793488,
		40.812927, 27.500298, 38.224560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879013, 27.038483, 39.020103>,  <41.138744, 27.774757, 38.779999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879013, 27.038483, 39.020103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942173, 27.090549, 38.628567>,  <40.980068, 27.121790, 38.393646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.942173, 27.090549, 38.628567>,  <40.879013, 27.038483, 39.020103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942173, 27.090549, 38.628567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559318, -0.828712, -0.019980,
		-0.813776, -0.544328, -0.203655,
		0.157896, 0.130168, -0.978839,
		40.989540, 27.129601, 38.334915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528236, 26.623955, 38.613625>,  <40.879013, 27.038483, 39.020103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528236, 26.623955, 38.613625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884445, 26.704784, 38.450584>,  <41.098171, 26.753283, 38.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.884445, 26.704784, 38.450584>,  <40.528236, 26.623955, 38.613625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884445, 26.704784, 38.450584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208234, -0.977627, -0.029725,
		-0.404486, -0.058405, -0.912677,
		0.890522, 0.202074, -0.407599,
		41.151600, 26.765408, 38.328304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767441, 26.082977, 38.139339>,  <40.528236, 26.623955, 38.613625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767441, 26.082977, 38.139339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119087, 26.242123, 38.244305>,  <41.330074, 26.337610, 38.307285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119087, 26.242123, 38.244305>,  <40.767441, 26.082977, 38.139339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119087, 26.242123, 38.244305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425788, -0.903005, -0.057336,
		0.214152, 0.162139, -0.963250,
		0.879115, 0.397861, 0.262417,
		41.382820, 26.361481, 38.323029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420734, 26.295839, 37.608818>,  <40.767441, 26.082977, 38.139339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420734, 26.295839, 37.608818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089931, 26.511139, 37.673756>,  <40.891449, 26.640318, 37.712719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.089931, 26.511139, 37.673756>,  <41.420734, 26.295839, 37.608818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089931, 26.511139, 37.673756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191306, -0.540961, 0.819001,
		0.528648, 0.646259, 0.550346,
		-0.827003, 0.538248, 0.162345,
		40.841831, 26.672613, 37.722458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.953789, 26.862303, 37.589226>,  <41.420734, 26.295839, 37.608818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.953789, 26.862303, 37.589226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617409, 26.768745, 37.394043>,  <41.415581, 26.712610, 37.276936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617409, 26.768745, 37.394043>,  <41.953789, 26.862303, 37.589226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617409, 26.768745, 37.394043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528346, 0.549649, 0.647099,
		0.116851, 0.801985, -0.585803,
		-0.840950, -0.233893, -0.487952,
		41.365124, 26.698578, 37.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546211, 27.413923, 37.319439>,  <41.953789, 26.862303, 37.589226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546211, 27.413923, 37.319439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289276, 27.110538, 37.363506>,  <41.135113, 26.928509, 37.389946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289276, 27.110538, 37.363506>,  <41.546211, 27.413923, 37.319439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289276, 27.110538, 37.363506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529340, 0.542986, 0.651894,
		-0.554255, 0.360422, -0.750265,
		-0.642340, -0.758460, 0.110167,
		41.096573, 26.882999, 37.396557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818645, 27.548151, 37.044388>,  <41.546211, 27.413923, 37.319439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818645, 27.548151, 37.044388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840599, 27.290550, 37.349609>,  <40.853771, 27.135990, 37.532742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840599, 27.290550, 37.349609>,  <40.818645, 27.548151, 37.044388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840599, 27.290550, 37.349609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663022, 0.547901, 0.510104,
		-0.746585, -0.533917, -0.396917,
		0.054882, -0.644001, 0.763054,
		40.857063, 27.097349, 37.578526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216331, 27.108505, 37.121109>,  <40.818645, 27.548151, 37.044388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216331, 27.108505, 37.121109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401951, 27.229397, 37.454170>,  <40.513321, 27.301931, 37.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401951, 27.229397, 37.454170>,  <40.216331, 27.108505, 37.121109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401951, 27.229397, 37.454170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702033, 0.698717, 0.137638,
		-0.540193, -0.648423, 0.536413,
		0.464049, 0.302228, 0.832656,
		40.541164, 27.320065, 37.703968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692451, 27.145750, 37.633125>,  <40.216331, 27.108505, 37.121109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692451, 27.145750, 37.633125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996334, 27.377474, 37.751274>,  <40.178665, 27.516508, 37.822163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996334, 27.377474, 37.751274>,  <39.692451, 27.145750, 37.633125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996334, 27.377474, 37.751274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646097, 0.723817, 0.242173,
		-0.073501, -0.374819, 0.924180,
		0.759708, 0.579310, 0.295371,
		40.224247, 27.551268, 37.839886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450344, 27.585766, 38.161175>,  <39.692451, 27.145750, 37.633125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450344, 27.585766, 38.161175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782688, 27.795759, 38.087341>,  <39.982094, 27.921755, 38.043041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782688, 27.795759, 38.087341>,  <39.450344, 27.585766, 38.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782688, 27.795759, 38.087341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524206, 0.849680, 0.057026,
		0.186773, 0.049378, 0.981161,
		0.830857, 0.524981, -0.184581,
		40.031944, 27.953253, 38.031967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302631, 28.144989, 38.580780>,  <39.450344, 27.585766, 38.161175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302631, 28.144989, 38.580780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558971, 28.247162, 38.291214>,  <39.712776, 28.308466, 38.117474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558971, 28.247162, 38.291214>,  <39.302631, 28.144989, 38.580780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558971, 28.247162, 38.291214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319908, 0.946095, 0.050627,
		0.697829, 0.199143, 0.688024,
		0.640854, 0.255433, -0.723919,
		39.751228, 28.323792, 38.074039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492840, 28.879999, 38.761059>,  <39.302631, 28.144989, 38.580780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492840, 28.879999, 38.761059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609497, 28.829081, 38.381851>,  <39.679493, 28.798531, 38.154327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609497, 28.829081, 38.381851>,  <39.492840, 28.879999, 38.761059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609497, 28.829081, 38.381851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158826, 0.970902, -0.179228,
		0.943249, 0.202841, 0.262939,
		0.291643, -0.127295, -0.948019,
		39.696991, 28.790892, 38.097446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862568, 29.512592, 38.702648>,  <39.492840, 28.879999, 38.761059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862568, 29.512592, 38.702648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774632, 29.370157, 38.339359>,  <39.721870, 29.284697, 38.121384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774632, 29.370157, 38.339359>,  <39.862568, 29.512592, 38.702648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774632, 29.370157, 38.339359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185063, 0.929318, -0.319562,
		0.957822, 0.097827, -0.270197,
		-0.219837, -0.356087, -0.908226,
		39.708679, 29.263330, 38.066891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388130, 29.758833, 38.125401>,  <39.862568, 29.512592, 38.702648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388130, 29.758833, 38.125401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012226, 29.701262, 38.001381>,  <39.786682, 29.666719, 37.926971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012226, 29.701262, 38.001381>,  <40.388130, 29.758833, 38.125401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012226, 29.701262, 38.001381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019192, 0.883386, -0.468253,
		0.341285, -0.445998, -0.827412,
		-0.939764, -0.143928, -0.310046,
		39.730297, 29.658083, 37.908367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773102, 30.184341, 37.647015>,  <40.388130, 29.758833, 38.125401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773102, 30.184341, 37.647015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436699, 29.993397, 37.545158>,  <40.234859, 29.878830, 37.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.436699, 29.993397, 37.545158>,  <40.773102, 30.184341, 37.647015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436699, 29.993397, 37.545158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300887, 0.803825, -0.513159,
		0.449646, -0.354951, -0.819651,
		-0.841002, -0.477362, -0.254636,
		40.184399, 29.850187, 37.468769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575237, 30.192982, 36.996746>,  <40.773102, 30.184341, 37.647015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575237, 30.192982, 36.996746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212708, 30.151960, 37.160725>,  <39.995190, 30.127348, 37.259109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212708, 30.151960, 37.160725>,  <40.575237, 30.192982, 36.996746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212708, 30.151960, 37.160725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323650, 0.792204, -0.517362,
		-0.271700, -0.601578, -0.751188,
		-0.906328, -0.102554, 0.409942,
		39.940807, 30.121195, 37.283707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167843, 30.288387, 36.361858>,  <40.575237, 30.192982, 36.996746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167843, 30.288387, 36.361858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927361, 30.331429, 36.678585>,  <39.783070, 30.357254, 36.868622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.927361, 30.331429, 36.678585>,  <40.167843, 30.288387, 36.361858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927361, 30.331429, 36.678585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565437, 0.642891, -0.516693,
		-0.564649, -0.758361, -0.325668,
		-0.601209, 0.107605, 0.791814,
		39.746998, 30.363710, 36.916130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432190, 30.088587, 36.153667>,  <40.167843, 30.288387, 36.361858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432190, 30.088587, 36.153667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480858, 30.363520, 36.440102>,  <39.510059, 30.528479, 36.611961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480858, 30.363520, 36.440102>,  <39.432190, 30.088587, 36.153667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480858, 30.363520, 36.440102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605436, 0.623079, -0.495196,
		-0.786539, -0.373293, 0.491944,
		0.121667, 0.687331, 0.716081,
		39.517357, 30.569719, 36.654926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024006, 30.650276, 35.905735>,  <39.432190, 30.088587, 36.153667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024006, 30.650276, 35.905735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141224, 30.792324, 36.260815>,  <39.211555, 30.877552, 36.473862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141224, 30.792324, 36.260815>,  <39.024006, 30.650276, 35.905735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141224, 30.792324, 36.260815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515880, 0.840441, -0.165913,
		-0.804981, -0.409328, 0.429483,
		0.293042, 0.355119, 0.887703,
		39.229137, 30.898859, 36.527126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446972, 30.901073, 36.263660>,  <39.024006, 30.650276, 35.905735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446972, 30.901073, 36.263660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764004, 31.077282, 36.432312>,  <38.954224, 31.183006, 36.533501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764004, 31.077282, 36.432312>,  <38.446972, 30.901073, 36.263660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764004, 31.077282, 36.432312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430923, 0.893849, -0.123851,
		-0.431427, -0.083527, 0.898273,
		0.792575, 0.440519, 0.421625,
		39.001778, 31.209438, 36.558800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218689, 31.492596, 36.695496>,  <38.446972, 30.901073, 36.263660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218689, 31.492596, 36.695496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601181, 31.566328, 36.604595>,  <38.830677, 31.610567, 36.550053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601181, 31.566328, 36.604595>,  <38.218689, 31.492596, 36.695496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601181, 31.566328, 36.604595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217120, 0.967619, -0.128736,
		0.196166, 0.172443, 0.965289,
		0.956231, 0.184329, -0.227254,
		38.888050, 31.621628, 36.536419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451931, 32.078671, 37.085426>,  <38.218689, 31.492596, 36.695496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451931, 32.078671, 37.085426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699554, 32.063564, 36.771652>,  <38.848129, 32.054501, 36.583385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699554, 32.063564, 36.771652>,  <38.451931, 32.078671, 37.085426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699554, 32.063564, 36.771652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218042, 0.951309, -0.217874,
		0.754471, 0.305916, 0.580680,
		0.619057, -0.037767, -0.784438,
		38.885273, 32.052235, 36.536320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676579, 32.743221, 37.060478>,  <38.451931, 32.078671, 37.085426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676579, 32.743221, 37.060478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753780, 32.585930, 36.700897>,  <38.800102, 32.491554, 36.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753780, 32.585930, 36.700897>,  <38.676579, 32.743221, 37.060478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753780, 32.585930, 36.700897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072881, 0.907905, -0.412792,
		0.978488, 0.145187, 0.146570,
		0.193004, -0.393229, -0.898955,
		38.811680, 32.467960, 36.431210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902958, 33.200150, 36.716961>,  <38.676579, 32.743221, 37.060478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902958, 33.200150, 36.716961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911125, 32.977966, 36.384441>,  <38.916027, 32.844658, 36.184929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.911125, 32.977966, 36.384441>,  <38.902958, 33.200150, 36.716961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911125, 32.977966, 36.384441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075226, 0.829965, -0.552720,
		0.996957, -0.051249, 0.058731,
		0.020418, -0.555456, -0.831295,
		38.917252, 32.811329, 36.135052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501114, 33.431267, 36.226124>,  <38.902958, 33.200150, 36.716961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501114, 33.431267, 36.226124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198044, 33.275459, 36.016670>,  <39.016201, 33.181973, 35.890999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198044, 33.275459, 36.016670>,  <39.501114, 33.431267, 36.226124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198044, 33.275459, 36.016670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034565, 0.777276, -0.628209,
		0.651711, -0.494081, -0.575462,
		-0.757679, -0.389520, -0.523637,
		38.970741, 33.158604, 35.859577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724121, 33.642704, 35.520119>,  <39.501114, 33.431267, 36.226124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724121, 33.642704, 35.520119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338154, 33.538540, 35.506706>,  <39.106575, 33.476044, 35.498657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.338154, 33.538540, 35.506706>,  <39.724121, 33.642704, 35.520119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338154, 33.538540, 35.506706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178121, 0.743074, -0.645069,
		0.192899, -0.616464, -0.763388,
		-0.964916, -0.260409, -0.033533,
		39.048679, 33.460419, 35.496647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547756, 33.641953, 34.827656>,  <39.724121, 33.642704, 35.520119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547756, 33.641953, 34.827656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208481, 33.681763, 35.035759>,  <39.004917, 33.705650, 35.160622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208481, 33.681763, 35.035759>,  <39.547756, 33.641953, 34.827656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208481, 33.681763, 35.035759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228486, 0.817372, -0.528863,
		-0.477882, -0.567448, -0.670546,
		-0.848188, 0.099524, 0.520261,
		38.954025, 33.711620, 35.191837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966976, 33.445976, 34.323738>,  <39.547756, 33.641953, 34.827656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966976, 33.445976, 34.323738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054745, 33.640469, 33.985405>,  <40.107407, 33.757164, 33.782406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054745, 33.640469, 33.985405>,  <39.966976, 33.445976, 34.323738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054745, 33.640469, 33.985405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761975, -0.626842, -0.162677,
		-0.609302, -0.608809, -0.508037,
		0.219420, 0.486231, -0.845833,
		40.120571, 33.786339, 33.731655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004021, 32.981815, 33.651604>,  <39.966976, 33.445976, 34.323738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004021, 32.981815, 33.651604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239014, 33.305328, 33.640709>,  <40.380009, 33.499435, 33.634171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239014, 33.305328, 33.640709>,  <40.004021, 32.981815, 33.651604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239014, 33.305328, 33.640709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807203, -0.583283, 0.090575,
		0.057367, -0.075199, -0.995517,
		0.587480, 0.808780, -0.027240,
		40.415257, 33.547962, 33.632538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581047, 32.959259, 33.115276>,  <40.004021, 32.981815, 33.651604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581047, 32.959259, 33.115276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682079, 33.175362, 33.436356>,  <40.742699, 33.305023, 33.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682079, 33.175362, 33.436356>,  <40.581047, 32.959259, 33.115276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682079, 33.175362, 33.436356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923916, -0.381059, -0.034255,
		0.287368, 0.750276, -0.595403,
		0.252584, 0.540259, 0.802697,
		40.757854, 33.337440, 33.677166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111435, 33.472004, 33.025990>,  <40.581047, 32.959259, 33.115276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111435, 33.472004, 33.025990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130272, 33.310677, 33.391529>,  <41.141575, 33.213879, 33.610851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130272, 33.310677, 33.391529>,  <41.111435, 33.472004, 33.025990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130272, 33.310677, 33.391529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936270, -0.301006, -0.181090,
		0.348110, 0.864136, 0.363440,
		0.047089, -0.403317, 0.913848,
		41.144398, 33.189682, 33.665684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729328, 33.621426, 33.626736>,  <41.111435, 33.472004, 33.025990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729328, 33.621426, 33.626736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572819, 33.254227, 33.652592>,  <41.478912, 33.033905, 33.668106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572819, 33.254227, 33.652592>,  <41.729328, 33.621426, 33.626736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572819, 33.254227, 33.652592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893121, -0.395732, -0.213847,
		0.221892, -0.025942, 0.974726,
		-0.391278, -0.918000, 0.064641,
		41.455437, 32.978828, 33.671986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326038, 33.958332, 33.239777>,  <41.729328, 33.621426, 33.626736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326038, 33.958332, 33.239777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606178, 34.243107, 33.219135>,  <42.774261, 34.413971, 33.206749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.606178, 34.243107, 33.219135>,  <42.326038, 33.958332, 33.239777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606178, 34.243107, 33.219135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335400, -0.264404, 0.904211,
		0.630093, -0.650571, -0.423958,
		0.700350, 0.711932, -0.051603,
		42.816284, 34.456688, 33.203655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015461, 33.627666, 33.385674>,  <42.326038, 33.958332, 33.239777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015461, 33.627666, 33.385674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023449, 34.012840, 33.493267>,  <43.028244, 34.243946, 33.557823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.023449, 34.012840, 33.493267>,  <43.015461, 33.627666, 33.385674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.023449, 34.012840, 33.493267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138049, -0.269119, 0.953162,
		0.990224, 0.018097, -0.138307,
		0.019972, 0.962937, 0.268986,
		43.029442, 34.301720, 33.573963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.538311, 33.664066, 34.023487>,  <43.015461, 33.627666, 33.385674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.538311, 33.664066, 34.023487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304855, 33.987904, 34.048576>,  <43.164783, 34.182205, 34.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304855, 33.987904, 34.048576>,  <43.538311, 33.664066, 34.023487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304855, 33.987904, 34.048576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002989, -0.075097, 0.997172,
		0.812010, 0.582173, 0.041410,
		-0.583636, 0.809590, 0.062720,
		43.129765, 34.230782, 34.067390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870445, 34.196758, 34.309109>,  <43.538311, 33.664066, 34.023487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870445, 34.196758, 34.309109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480999, 34.218410, 34.397781>,  <43.247330, 34.231403, 34.450985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480999, 34.218410, 34.397781>,  <43.870445, 34.196758, 34.309109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480999, 34.218410, 34.397781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194716, -0.309458, 0.930764,
		0.118985, 0.949371, 0.290753,
		-0.973616, 0.054133, 0.221679,
		43.188915, 34.234650, 34.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799217, 34.689354, 34.743069>,  <43.870445, 34.196758, 34.309109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799217, 34.689354, 34.743069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565849, 34.381023, 34.845406>,  <43.425827, 34.196026, 34.906807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.565849, 34.381023, 34.845406>,  <43.799217, 34.689354, 34.743069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.565849, 34.381023, 34.845406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479202, -0.072371, 0.874716,
		-0.655734, 0.632927, 0.411602,
		-0.583419, -0.770822, 0.255844,
		43.390823, 34.149776, 34.922157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543365, 34.827084, 35.419224>,  <43.799217, 34.689354, 34.743069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543365, 34.827084, 35.419224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507301, 34.429325, 35.397156>,  <43.485664, 34.190670, 35.383915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507301, 34.429325, 35.397156>,  <43.543365, 34.827084, 35.419224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507301, 34.429325, 35.397156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357712, -0.084029, 0.930044,
		-0.929469, 0.064117, 0.363284,
		-0.090158, -0.994398, -0.055167,
		43.480255, 34.131004, 35.380608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144180, 34.617050, 35.960060>,  <43.543365, 34.827084, 35.419224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144180, 34.617050, 35.960060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396957, 34.339966, 35.821030>,  <43.548622, 34.173717, 35.737610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396957, 34.339966, 35.821030>,  <43.144180, 34.617050, 35.960060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396957, 34.339966, 35.821030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470461, -0.013526, 0.882317,
		-0.615890, -0.721091, 0.317344,
		0.631938, -0.692708, -0.347576,
		43.586540, 34.132153, 35.716759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.414406, 34.974087, 36.530518>,  <43.144180, 34.617050, 35.960060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.414406, 34.974087, 36.530518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678379, 35.244846, 36.660927>,  <43.836761, 35.407303, 36.739174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678379, 35.244846, 36.660927>,  <43.414406, 34.974087, 36.530518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678379, 35.244846, 36.660927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611768, -0.232217, -0.756185,
		-0.436153, 0.698484, -0.567354,
		0.659932, 0.676901, 0.326027,
		43.876358, 35.447918, 36.758736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769562, 35.365601, 35.961864>,  <43.414406, 34.974087, 36.530518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769562, 35.365601, 35.961864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013958, 35.430706, 36.271755>,  <44.160595, 35.469769, 36.457691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013958, 35.430706, 36.271755>,  <43.769562, 35.365601, 35.961864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013958, 35.430706, 36.271755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787866, -0.029592, -0.615135,
		-0.077194, 0.986222, -0.146314,
		0.610990, 0.162761, 0.774726,
		44.197254, 35.479534, 36.504173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222218, 35.981407, 35.892967>,  <43.769562, 35.365601, 35.961864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222218, 35.981407, 35.892967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399281, 35.690708, 36.103069>,  <44.505516, 35.516289, 36.229130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399281, 35.690708, 36.103069>,  <44.222218, 35.981407, 35.892967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399281, 35.690708, 36.103069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753234, -0.016457, -0.657547,
		0.486515, 0.686707, 0.540126,
		0.442654, -0.726748, 0.525257,
		44.532078, 35.472683, 36.260647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872646, 36.214249, 36.021030>,  <44.222218, 35.981407, 35.892967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872646, 36.214249, 36.021030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891590, 35.815662, 36.048790>,  <44.902954, 35.576511, 36.065445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.891590, 35.815662, 36.048790>,  <44.872646, 36.214249, 36.021030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891590, 35.815662, 36.048790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885134, 0.009663, -0.465235,
		0.462920, 0.083462, 0.882462,
		0.047357, -0.996464, 0.069402,
		44.905796, 35.516724, 36.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535149, 36.127483, 36.261711>,  <44.872646, 36.214249, 36.021030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535149, 36.127483, 36.261711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404255, 35.810268, 36.056183>,  <45.325718, 35.619938, 35.932865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404255, 35.810268, 36.056183>,  <45.535149, 36.127483, 36.261711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404255, 35.810268, 36.056183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850966, -0.010918, -0.525108,
		0.410820, -0.609075, 0.678421,
		-0.327237, -0.793038, -0.513816,
		45.306084, 35.572357, 35.902039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.020077, 35.980106, 35.652256>,  <45.535149, 36.127483, 36.261711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.020077, 35.980106, 35.652256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204384, 35.747902, 35.920795>,  <46.314968, 35.608582, 36.081917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.204384, 35.747902, 35.920795>,  <46.020077, 35.980106, 35.652256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.204384, 35.747902, 35.920795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079653, -0.780424, -0.620157,
		0.883939, 0.232274, -0.405833,
		0.460768, -0.580507, 0.671346,
		46.342613, 35.573750, 36.122200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433548, 35.657482, 35.205872>,  <46.020077, 35.980106, 35.652256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433548, 35.657482, 35.205872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406834, 35.443619, 35.542843>,  <46.390804, 35.315300, 35.745026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.406834, 35.443619, 35.542843>,  <46.433548, 35.657482, 35.205872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.406834, 35.443619, 35.542843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000630, -0.844289, -0.535888,
		0.997768, -0.036318, 0.056046,
		-0.066781, -0.534656, 0.842427,
		46.386799, 35.283222, 35.795570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.113846, 35.276474, 35.402950>,  <46.433548, 35.657482, 35.205872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.113846, 35.276474, 35.402950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757408, 35.114021, 35.483952>,  <46.543545, 35.016552, 35.532555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.757408, 35.114021, 35.483952>,  <47.113846, 35.276474, 35.402950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757408, 35.114021, 35.483952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156337, -0.693633, -0.703158,
		0.426038, -0.594922, 0.681586,
		-0.891095, -0.406129, 0.202506,
		46.490078, 34.992184, 35.544704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.622913, 34.977314, 35.015934>,  <47.113846, 35.276474, 35.402950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.622913, 34.977314, 35.015934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700207, 35.103012, 34.644146>,  <47.746582, 35.178432, 34.421074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700207, 35.103012, 34.644146>,  <47.622913, 34.977314, 35.015934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700207, 35.103012, 34.644146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948360, -0.183051, -0.259047,
		-0.251545, 0.931527, 0.262647,
		0.193231, 0.314246, -0.929468,
		47.758175, 35.197285, 34.365307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.712090, 37.580692, 26.277800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314579, 37.536224, 26.275278>,  <34.076073, 37.509544, 26.273766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.314579, 37.536224, 26.275278>,  <34.712090, 37.580692, 26.277800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314579, 37.536224, 26.275278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087060, -0.811021, 0.578502,
		-0.069427, 0.574356, 0.815656,
		-0.993781, -0.111174, -0.006303,
		34.016445, 37.502872, 26.273388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573170, 37.476551, 26.915033>,  <34.712090, 37.580692, 26.277800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573170, 37.476551, 26.915033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239014, 37.332207, 26.749191>,  <34.038521, 37.245602, 26.649687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239014, 37.332207, 26.749191>,  <34.573170, 37.476551, 26.915033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239014, 37.332207, 26.749191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045454, -0.706366, 0.706386,
		-0.547768, 0.608956, 0.573692,
		-0.835394, -0.360860, -0.414604,
		33.988396, 37.223949, 26.624809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109825, 37.437603, 27.431320>,  <34.573170, 37.476551, 26.915033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109825, 37.437603, 27.431320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.959438, 37.174828, 27.169912>,  <33.869205, 37.017162, 27.013067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.959438, 37.174828, 27.169912>,  <34.109825, 37.437603, 27.431320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959438, 37.174828, 27.169912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122344, -0.663896, 0.737749,
		-0.918522, 0.357321, 0.169229,
		-0.375964, -0.656935, -0.653519,
		33.846649, 36.977749, 26.973856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641804, 37.030170, 27.828783>,  <34.109825, 37.437603, 27.431320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641804, 37.030170, 27.828783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 36.797585, 27.503462>,  <33.655060, 36.658031, 27.308270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.650089, 36.797585, 27.503462>,  <33.641804, 37.030170, 27.828783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650089, 36.797585, 27.503462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039157, -0.813327, 0.580488,
		-0.999018, 0.019823, -0.039615,
		0.020713, -0.581469, -0.813305,
		33.656303, 36.623142, 27.259470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.195683, 36.673504, 27.998678>,  <33.641804, 37.030170, 27.828783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.195683, 36.673504, 27.998678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398464, 36.470016, 27.720341>,  <33.520134, 36.347923, 27.553337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.398464, 36.470016, 27.720341>,  <33.195683, 36.673504, 27.998678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398464, 36.470016, 27.720341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065830, -0.827763, 0.557203,
		-0.859458, -0.236667, -0.453124,
		0.506951, -0.508721, -0.695848,
		33.550552, 36.317402, 27.511587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837505, 35.972958, 27.844402>,  <33.195683, 36.673504, 27.998678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837505, 35.972958, 27.844402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221451, 35.912052, 27.750193>,  <33.451820, 35.875507, 27.693666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221451, 35.912052, 27.750193>,  <32.837505, 35.972958, 27.844402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221451, 35.912052, 27.750193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025515, -0.788892, 0.614003,
		-0.279292, -0.595370, -0.753346,
		0.959867, -0.152265, -0.235522,
		33.509411, 35.866371, 27.679537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893955, 35.271908, 27.618422>,  <32.837505, 35.972958, 27.844402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893955, 35.271908, 27.618422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258251, 35.394646, 27.728981>,  <33.476830, 35.468288, 27.795317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258251, 35.394646, 27.728981>,  <32.893955, 35.271908, 27.618422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258251, 35.394646, 27.728981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067915, -0.771457, 0.632647,
		0.407354, -0.557406, -0.723437,
		0.910742, 0.306843, 0.276399,
		33.531475, 35.486698, 27.811901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172363, 34.734798, 27.820141>,  <32.893955, 35.271908, 27.618422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172363, 34.734798, 27.820141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444859, 34.983421, 27.974848>,  <33.608356, 35.132595, 28.067671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.444859, 34.983421, 27.974848>,  <33.172363, 34.734798, 27.820141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444859, 34.983421, 27.974848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062487, -0.575766, 0.815224,
		0.729392, -0.531192, -0.431072,
		0.681236, 0.621554, 0.386766,
		33.649231, 35.169888, 28.090878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746750, 34.344486, 27.925331>,  <33.172363, 34.734798, 27.820141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746750, 34.344486, 27.925331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773819, 34.649303, 28.182924>,  <33.790062, 34.832191, 28.337481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.773819, 34.649303, 28.182924>,  <33.746750, 34.344486, 27.925331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773819, 34.649303, 28.182924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291750, -0.632367, 0.717631,
		0.954098, 0.139316, -0.265121,
		0.067676, 0.762039, 0.643985,
		33.794121, 34.877914, 28.376120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354389, 34.207222, 28.273331>,  <33.746750, 34.344486, 27.925331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354389, 34.207222, 28.273331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173996, 34.481205, 28.502224>,  <34.065762, 34.645596, 28.639561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.173996, 34.481205, 28.502224>,  <34.354389, 34.207222, 28.273331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173996, 34.481205, 28.502224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155795, -0.570881, 0.806116,
		0.878832, 0.452693, 0.150743,
		-0.450980, 0.684955, 0.572235,
		34.038704, 34.686691, 28.673895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843132, 34.413975, 28.862843>,  <34.354389, 34.207222, 28.273331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843132, 34.413975, 28.862843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478439, 34.518642, 28.989510>,  <34.259624, 34.581444, 29.065510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.478439, 34.518642, 28.989510>,  <34.843132, 34.413975, 28.862843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478439, 34.518642, 28.989510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218221, -0.344602, 0.913033,
		0.348035, 0.901543, 0.257083,
		-0.911730, 0.261667, 0.316670,
		34.204922, 34.597141, 29.084511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935509, 34.817272, 29.580006>,  <34.843132, 34.413975, 28.862843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935509, 34.817272, 29.580006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563583, 34.670090, 29.577208>,  <34.340427, 34.581779, 29.575529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.563583, 34.670090, 29.577208>,  <34.935509, 34.817272, 29.580006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563583, 34.670090, 29.577208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148571, -0.392683, 0.907594,
		-0.336705, 0.842856, 0.419791,
		-0.929815, -0.367960, -0.006994,
		34.284637, 34.559700, 29.575109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663666, 35.086342, 30.182714>,  <34.935509, 34.817272, 29.580006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663666, 35.086342, 30.182714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443676, 34.763321, 30.097507>,  <34.311680, 34.569508, 30.046383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443676, 34.763321, 30.097507>,  <34.663666, 35.086342, 30.182714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443676, 34.763321, 30.097507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162609, -0.353716, 0.921110,
		-0.819196, 0.471952, 0.325852,
		-0.549979, -0.807556, -0.213019,
		34.278683, 34.521053, 30.033602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194218, 35.037071, 30.802553>,  <34.663666, 35.086342, 30.182714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194218, 35.037071, 30.802553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239029, 34.688568, 30.611404>,  <34.265915, 34.479465, 30.496716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239029, 34.688568, 30.611404>,  <34.194218, 35.037071, 30.802553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239029, 34.688568, 30.611404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176632, -0.455783, 0.872389,
		-0.977881, -0.182138, 0.102833,
		0.112026, -0.871257, -0.477873,
		34.272636, 34.427193, 30.468042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908417, 34.644913, 31.300255>,  <34.194218, 35.037071, 30.802553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908417, 34.644913, 31.300255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.072319, 34.359917, 31.072411>,  <34.170658, 34.188919, 30.935705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.072319, 34.359917, 31.072411>,  <33.908417, 34.644913, 31.300255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072319, 34.359917, 31.072411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389078, -0.428278, 0.815596,
		-0.825059, -0.555814, 0.101728,
		0.409752, -0.712494, -0.569610,
		34.195244, 34.146168, 30.901527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820248, 34.019436, 31.651451>,  <33.908417, 34.644913, 31.300255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820248, 34.019436, 31.651451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129234, 33.932079, 31.412924>,  <34.314629, 33.879665, 31.269808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.129234, 33.932079, 31.412924>,  <33.820248, 34.019436, 31.651451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129234, 33.932079, 31.412924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581546, -0.133985, 0.802404,
		-0.255134, -0.966620, 0.023503,
		0.772470, -0.218389, -0.596318,
		34.360977, 33.866562, 31.234028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013699, 33.400944, 31.934849>,  <33.820248, 34.019436, 31.651451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013699, 33.400944, 31.934849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316769, 33.533504, 31.709955>,  <34.498611, 33.613041, 31.575020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316769, 33.533504, 31.709955>,  <34.013699, 33.400944, 31.934849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316769, 33.533504, 31.709955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651460, -0.435750, 0.621065,
		-0.039171, -0.836835, -0.546051,
		0.757671, 0.331403, -0.562234,
		34.544071, 33.632927, 31.541285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407227, 32.714867, 31.683260>,  <34.013699, 33.400944, 31.934849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407227, 32.714867, 31.683260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637123, 33.041904, 31.697205>,  <34.775063, 33.238125, 31.705572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.637123, 33.041904, 31.697205>,  <34.407227, 32.714867, 31.683260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637123, 33.041904, 31.697205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535725, -0.408118, 0.739215,
		0.618604, -0.406181, -0.672567,
		0.574742, 0.817592, 0.034862,
		34.809547, 33.287182, 31.707663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109512, 32.482811, 31.658302>,  <34.407227, 32.714867, 31.683260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109512, 32.482811, 31.658302> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104774, 32.855637, 31.803139>,  <35.101933, 33.079334, 31.890041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104774, 32.855637, 31.803139>,  <35.109512, 32.482811, 31.658302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104774, 32.855637, 31.803139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617039, -0.278135, 0.736142,
		0.786844, 0.232145, -0.571827,
		-0.011847, 0.932067, 0.362091,
		35.101219, 33.135258, 31.911766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.742107, 32.529392, 31.908258>,  <35.109512, 32.482811, 31.658302>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.742107, 32.529392, 31.908258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556252, 32.832607, 32.091335>,  <35.444736, 33.014538, 32.201180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556252, 32.832607, 32.091335>,  <35.742107, 32.529392, 31.908258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556252, 32.832607, 32.091335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431850, -0.257255, 0.864480,
		0.773054, 0.599329, -0.207827,
		-0.464644, 0.758040, 0.457692,
		35.416859, 33.060020, 32.228642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185757, 32.768860, 32.331242>,  <35.742107, 32.529392, 31.908258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185757, 32.768860, 32.331242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853683, 32.916176, 32.498650>,  <35.654438, 33.004566, 32.599094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.853683, 32.916176, 32.498650>,  <36.185757, 32.768860, 32.331242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853683, 32.916176, 32.498650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299521, -0.338506, 0.892020,
		0.470197, 0.865894, 0.170710,
		-0.830182, 0.368294, 0.418519,
		35.604630, 33.026665, 32.624207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406521, 33.053303, 32.872417>,  <36.185757, 32.768860, 32.331242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406521, 33.053303, 32.872417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013988, 33.024460, 32.943729>,  <35.778469, 33.007153, 32.986515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013988, 33.024460, 32.943729>,  <36.406521, 33.053303, 32.872417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013988, 33.024460, 32.943729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189588, -0.207407, 0.959708,
		-0.032227, 0.975594, 0.217207,
		-0.981335, -0.072108, 0.178277,
		35.719589, 33.002827, 32.997211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883205, 33.614445, 33.207623>,  <36.406521, 33.053303, 32.872417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883205, 33.614445, 33.207623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208469, 33.406116, 33.103691>,  <37.403629, 33.281120, 33.041332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.208469, 33.406116, 33.103691>,  <36.883205, 33.614445, 33.207623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208469, 33.406116, 33.103691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106653, 0.572182, -0.813163,
		0.572182, 0.633522, 0.520824,
		0.813163, -0.520824, -0.259825,
		37.452419, 33.249870, 33.025745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255009, 34.093479, 32.987808>,  <36.883205, 33.614445, 33.207623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255009, 34.093479, 32.987808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436249, 33.778458, 32.820736>,  <37.544994, 33.589443, 32.720493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436249, 33.778458, 32.820736>,  <37.255009, 34.093479, 32.987808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436249, 33.778458, 32.820736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268126, 0.567239, -0.778684,
		0.850180, 0.240832, 0.468181,
		0.453102, -0.787553, -0.417682,
		37.572178, 33.542191, 32.695431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888218, 34.306854, 32.685913>,  <37.255009, 34.093479, 32.987808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888218, 34.306854, 32.685913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820099, 33.959579, 32.499470>,  <37.779228, 33.751217, 32.387604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.820099, 33.959579, 32.499470>,  <37.888218, 34.306854, 32.685913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820099, 33.959579, 32.499470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170543, 0.439908, -0.881700,
		0.970522, -0.229643, 0.073147,
		-0.170299, -0.868184, -0.466105,
		37.769009, 33.699123, 32.359638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551758, 34.151051, 32.273495>,  <37.888218, 34.306854, 32.685913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551758, 34.151051, 32.273495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245426, 33.937820, 32.129642>,  <38.061626, 33.809883, 32.043331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.245426, 33.937820, 32.129642>,  <38.551758, 34.151051, 32.273495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245426, 33.937820, 32.129642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191695, 0.344575, -0.918978,
		0.613808, -0.772718, -0.161697,
		-0.765828, -0.533080, -0.359629,
		38.015678, 33.777897, 32.021755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729988, 34.192085, 31.690454>,  <38.551758, 34.151051, 32.273495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729988, 34.192085, 31.690454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357697, 34.062199, 31.623161>,  <38.134323, 33.984268, 31.582785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.357697, 34.062199, 31.623161>,  <38.729988, 34.192085, 31.690454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357697, 34.062199, 31.623161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066882, 0.301126, -0.951236,
		0.359536, -0.896596, -0.258550,
		-0.930731, -0.324712, -0.168232,
		38.078476, 33.964783, 31.572691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779709, 33.863625, 31.099369>,  <38.729988, 34.192085, 31.690454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779709, 33.863625, 31.099369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390469, 33.948795, 31.134546>,  <38.156925, 33.999897, 31.155653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.390469, 33.948795, 31.134546>,  <38.779709, 33.863625, 31.099369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390469, 33.948795, 31.134546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025368, 0.478452, -0.877747,
		-0.228975, -0.851906, -0.470984,
		-0.973101, 0.212930, 0.087942,
		38.098537, 34.012676, 31.160929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499126, 33.708775, 30.439955>,  <38.779709, 33.863625, 31.099369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499126, 33.708775, 30.439955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254501, 33.967407, 30.622347>,  <38.107727, 34.122589, 30.731783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254501, 33.967407, 30.622347>,  <38.499126, 33.708775, 30.439955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254501, 33.967407, 30.622347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003424, 0.578478, -0.815691,
		-0.791190, -0.497283, -0.355988,
		-0.611561, 0.646586, 0.455983,
		38.071033, 34.161385, 30.759142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031666, 33.784081, 30.068417>,  <38.499126, 33.708775, 30.439955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031666, 33.784081, 30.068417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025688, 34.113289, 30.295540>,  <38.022102, 34.310814, 30.431814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.025688, 34.113289, 30.295540>,  <38.031666, 33.784081, 30.068417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025688, 34.113289, 30.295540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078458, 0.565156, -0.821245,
		-0.996805, -0.056822, 0.056127,
		-0.014945, 0.823025, 0.567809,
		38.021206, 34.360195, 30.465883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491024, 34.175964, 29.755539>,  <38.031666, 33.784081, 30.068417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491024, 34.175964, 29.755539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653355, 34.451035, 29.996338>,  <37.750755, 34.616077, 30.140818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.653355, 34.451035, 29.996338>,  <37.491024, 34.175964, 29.755539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653355, 34.451035, 29.996338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216766, 0.712308, -0.667555,
		-0.887871, 0.140421, 0.438140,
		0.405829, 0.687677, 0.601999,
		37.775105, 34.657337, 30.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939411, 34.711815, 29.963442>,  <37.491024, 34.175964, 29.755539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939411, 34.711815, 29.963442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302116, 34.877522, 29.994827>,  <37.519741, 34.976948, 30.013659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302116, 34.877522, 29.994827>,  <36.939411, 34.711815, 29.963442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302116, 34.877522, 29.994827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307640, 0.777312, -0.548765,
		-0.288327, 0.473463, 0.832286,
		0.906766, 0.414269, 0.078464,
		37.574146, 35.001801, 30.018366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790634, 35.389980, 29.932882>,  <36.939411, 34.711815, 29.963442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790634, 35.389980, 29.932882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182331, 35.385399, 29.851933>,  <37.417351, 35.382648, 29.803362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.182331, 35.385399, 29.851933>,  <36.790634, 35.389980, 29.932882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182331, 35.385399, 29.851933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112874, 0.798469, -0.591360,
		0.168364, 0.601927, 0.780600,
		0.979241, -0.011455, -0.202376,
		37.476105, 35.381962, 29.791220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998962, 36.114349, 29.925335>,  <36.790634, 35.389980, 29.932882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998962, 36.114349, 29.925335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292397, 35.906136, 29.750574>,  <37.468456, 35.781204, 29.645718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292397, 35.906136, 29.750574>,  <36.998962, 36.114349, 29.925335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292397, 35.906136, 29.750574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036290, 0.671979, -0.739680,
		0.678623, 0.526767, 0.511847,
		0.733590, -0.520539, -0.436904,
		37.512474, 35.749973, 29.619503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518909, 36.540356, 29.957359>,  <36.998962, 36.114349, 29.925335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518909, 36.540356, 29.957359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571804, 36.286205, 29.653042>,  <37.603542, 36.133713, 29.470451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.571804, 36.286205, 29.653042>,  <37.518909, 36.540356, 29.957359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571804, 36.286205, 29.653042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223825, 0.728570, -0.647370,
		0.965616, 0.255893, -0.045867,
		0.132240, -0.635377, -0.760794,
		37.611477, 36.095592, 29.424803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899162, 36.928524, 29.473989>,  <37.518909, 36.540356, 29.957359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899162, 36.928524, 29.473989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718735, 36.650623, 29.249901>,  <37.610477, 36.483883, 29.115448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.718735, 36.650623, 29.249901>,  <37.899162, 36.928524, 29.473989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718735, 36.650623, 29.249901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213799, 0.693549, -0.687954,
		0.866503, -0.190539, -0.461376,
		-0.451069, -0.694756, -0.560225,
		37.583412, 36.442196, 29.081833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122520, 37.016495, 28.766537>,  <37.899162, 36.928524, 29.473989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122520, 37.016495, 28.766537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.795708, 36.796257, 28.698069>,  <37.599621, 36.664116, 28.656988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.795708, 36.796257, 28.698069>,  <38.122520, 37.016495, 28.766537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795708, 36.796257, 28.698069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206085, 0.556122, -0.805144,
		0.538494, -0.622559, -0.567842,
		-0.817039, -0.550589, -0.171168,
		37.550598, 36.631077, 28.646717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162743, 36.894138, 27.990704>,  <38.122520, 37.016495, 28.766537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162743, 36.894138, 27.990704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782806, 36.833572, 28.100157>,  <37.554844, 36.797234, 28.165829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.782806, 36.833572, 28.100157>,  <38.162743, 36.894138, 27.990704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.782806, 36.833572, 28.100157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312294, 0.505705, -0.804198,
		-0.016610, -0.849315, -0.527626,
		-0.949840, -0.151417, 0.273635,
		37.497856, 36.788147, 28.182247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832897, 36.804142, 27.366034>,  <38.162743, 36.894138, 27.990704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832897, 36.804142, 27.366034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537209, 36.868660, 27.627581>,  <37.359795, 36.907372, 27.784508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537209, 36.868660, 27.627581>,  <37.832897, 36.804142, 27.366034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537209, 36.868660, 27.627581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428269, 0.636715, -0.641233,
		-0.519752, -0.754042, -0.401595,
		-0.739218, 0.161292, 0.653867,
		37.315445, 36.917046, 27.823740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135418, 36.675251, 26.912090>,  <37.832897, 36.804142, 27.366034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135418, 36.675251, 26.912090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030258, 36.880856, 27.238689>,  <36.967163, 37.004219, 27.434649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030258, 36.880856, 27.238689>,  <37.135418, 36.675251, 26.912090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030258, 36.880856, 27.238689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730130, 0.447217, -0.516629,
		-0.630708, -0.731973, 0.257725,
		-0.262900, 0.514015, 0.816500,
		36.951389, 37.035061, 27.483639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.427433, 36.622650, 26.932632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519279, 36.959484, 27.127844>,  <36.574387, 37.161583, 27.244970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.519279, 36.959484, 27.127844>,  <36.427433, 36.622650, 26.932632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519279, 36.959484, 27.127844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466424, 0.535303, -0.704201,
		-0.854240, -0.065935, 0.515681,
		0.229614, 0.842083, 0.488031,
		36.588165, 37.212109, 27.274254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821571, 37.066299, 26.784975>,  <36.427433, 36.622650, 26.932632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821571, 37.066299, 26.784975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103096, 37.321953, 26.909008>,  <36.272011, 37.475346, 26.983429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.103096, 37.321953, 26.909008>,  <35.821571, 37.066299, 26.784975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103096, 37.321953, 26.909008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296110, 0.660722, -0.689757,
		-0.645725, 0.393643, 0.654281,
		0.703816, 0.639133, 0.310083,
		36.314240, 37.513691, 27.002033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545780, 37.715981, 26.876295>,  <35.821571, 37.066299, 26.784975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545780, 37.715981, 26.876295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932209, 37.816872, 26.854069>,  <36.164066, 37.877407, 26.840733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.932209, 37.816872, 26.854069>,  <35.545780, 37.715981, 26.876295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932209, 37.816872, 26.854069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208273, 0.633557, -0.745136,
		-0.152740, 0.731427, 0.664594,
		0.966071, 0.252229, -0.055567,
		36.222031, 37.892540, 26.837399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578331, 38.364777, 27.008734>,  <35.545780, 37.715981, 26.876295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578331, 38.364777, 27.008734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905041, 38.285130, 26.792130>,  <36.101067, 38.237343, 26.662167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.905041, 38.285130, 26.792130>,  <35.578331, 38.364777, 27.008734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905041, 38.285130, 26.792130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231373, 0.746749, -0.623565,
		0.528534, 0.634602, 0.563855,
		0.816773, -0.199114, -0.541512,
		36.150074, 38.225395, 26.629677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952312, 39.032440, 26.984976>,  <35.578331, 38.364777, 27.008734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952312, 39.032440, 26.984976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130260, 38.816730, 26.698959>,  <36.237030, 38.687305, 26.527349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.130260, 38.816730, 26.698959>,  <35.952312, 39.032440, 26.984976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130260, 38.816730, 26.698959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044497, 0.810717, -0.583745,
		0.894491, 0.227872, 0.384657,
		0.444867, -0.539271, -0.715039,
		36.263721, 38.654949, 26.484447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442612, 39.520458, 26.729536>,  <35.952312, 39.032440, 26.984976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442612, 39.520458, 26.729536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385353, 39.231808, 26.458609>,  <36.350998, 39.058617, 26.296053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.385353, 39.231808, 26.458609>,  <36.442612, 39.520458, 26.729536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385353, 39.231808, 26.458609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106591, 0.691626, -0.714347,
		0.983945, -0.030058, -0.175920,
		-0.143143, -0.721630, -0.677319,
		36.342411, 39.015320, 26.255413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662003, 39.868587, 26.166981>,  <36.442612, 39.520458, 26.729536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662003, 39.868587, 26.166981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450073, 39.559753, 26.026598>,  <36.322914, 39.374454, 25.942369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450073, 39.559753, 26.026598>,  <36.662003, 39.868587, 26.166981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450073, 39.559753, 26.026598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317836, 0.564412, -0.761853,
		0.786298, -0.292103, -0.544437,
		-0.529826, -0.772084, -0.350955,
		36.291126, 39.328129, 25.921312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809914, 39.831535, 25.470625>,  <36.662003, 39.868587, 26.166981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809914, 39.831535, 25.470625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460293, 39.641247, 25.510071>,  <36.250519, 39.527073, 25.533739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460293, 39.641247, 25.510071>,  <36.809914, 39.831535, 25.470625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460293, 39.641247, 25.510071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386573, 0.558054, -0.734259,
		0.294267, -0.679904, -0.671668,
		-0.874053, -0.475717, 0.098615,
		36.198078, 39.498531, 25.539656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497429, 39.607834, 24.759989>,  <36.809914, 39.831535, 25.470625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497429, 39.607834, 24.759989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186745, 39.649731, 25.008425>,  <36.000336, 39.674870, 25.157486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.186745, 39.649731, 25.008425>,  <36.497429, 39.607834, 24.759989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186745, 39.649731, 25.008425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442672, 0.610698, -0.656574,
		-0.448068, -0.784906, -0.427969,
		-0.776709, 0.104740, 0.621090,
		35.953732, 39.681152, 25.194752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014492, 39.434048, 24.356682>,  <36.497429, 39.607834, 24.759989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014492, 39.434048, 24.356682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849373, 39.668587, 24.635477>,  <35.750301, 39.809311, 24.802753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.849373, 39.668587, 24.635477>,  <36.014492, 39.434048, 24.356682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849373, 39.668587, 24.635477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279044, 0.647019, -0.709578,
		-0.867025, -0.487402, -0.103471,
		-0.412798, 0.586349, 0.696988,
		35.725533, 39.844490, 24.844574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270618, 39.538712, 24.207333>,  <36.014492, 39.434048, 24.356682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270618, 39.538712, 24.207333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397060, 39.845432, 24.430796>,  <35.472923, 40.029465, 24.564875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.397060, 39.845432, 24.430796>,  <35.270618, 39.538712, 24.207333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397060, 39.845432, 24.430796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174335, 0.625773, -0.760273,
		-0.932570, 0.142931, 0.331489,
		0.316103, 0.766798, 0.558659,
		35.491890, 40.075470, 24.598392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831516, 40.097446, 24.036612>,  <35.270618, 39.538712, 24.207333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831516, 40.097446, 24.036612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111526, 40.308205, 24.229422>,  <35.279533, 40.434662, 24.345108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.111526, 40.308205, 24.229422>,  <34.831516, 40.097446, 24.036612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111526, 40.308205, 24.229422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025853, 0.655849, -0.754450,
		-0.713652, 0.540594, 0.445488,
		0.700023, 0.526897, 0.482023,
		35.321533, 40.466274, 24.374029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674900, 40.776402, 23.955502>,  <34.831516, 40.097446, 24.036612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674900, 40.776402, 23.955502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067196, 40.797661, 24.030680>,  <35.302574, 40.810417, 24.075787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067196, 40.797661, 24.030680>,  <34.674900, 40.776402, 23.955502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067196, 40.797661, 24.030680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067417, 0.811012, -0.581132,
		-0.183310, 0.582611, 0.791809,
		0.980741, 0.053146, 0.187945,
		35.361420, 40.813606, 24.087063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805218, 41.505547, 23.844576>,  <34.674900, 40.776402, 23.955502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805218, 41.505547, 23.844576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174198, 41.351227, 23.850756>,  <35.395588, 41.258633, 23.854464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.174198, 41.351227, 23.850756>,  <34.805218, 41.505547, 23.844576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174198, 41.351227, 23.850756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328086, 0.762105, -0.558172,
		0.203570, 0.519956, 0.829581,
		0.922453, -0.385801, 0.015448,
		35.450935, 41.235485, 23.855391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231716, 42.031136, 24.001093>,  <34.805218, 41.505547, 23.844576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231716, 42.031136, 24.001093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451626, 41.761044, 23.804396>,  <35.583572, 41.598988, 23.686378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451626, 41.761044, 23.804396>,  <35.231716, 42.031136, 24.001093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451626, 41.761044, 23.804396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245916, 0.693441, -0.677248,
		0.798291, 0.251409, 0.547289,
		0.549779, -0.675228, -0.491742,
		35.616558, 41.558475, 23.656874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814377, 42.278847, 23.961176>,  <35.231716, 42.031136, 24.001093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814377, 42.278847, 23.961176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773788, 42.007618, 23.669994>,  <35.749435, 41.844879, 23.495285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.773788, 42.007618, 23.669994>,  <35.814377, 42.278847, 23.961176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773788, 42.007618, 23.669994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194682, 0.704047, -0.682946,
		0.975603, -0.211022, 0.060566,
		-0.101475, -0.678076, -0.727953,
		35.743347, 41.804195, 23.451609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301262, 42.496033, 23.549391>,  <35.814377, 42.278847, 23.961176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301262, 42.496033, 23.549391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066128, 42.247299, 23.342403>,  <35.925049, 42.098061, 23.218210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066128, 42.247299, 23.342403>,  <36.301262, 42.496033, 23.549391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066128, 42.247299, 23.342403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130327, 0.558510, -0.819196,
		0.798414, -0.548993, -0.247270,
		-0.587835, -0.621831, -0.517470,
		35.889778, 42.060749, 23.187162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479500, 42.600220, 22.919413>,  <36.301262, 42.496033, 23.549391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479500, 42.600220, 22.919413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150852, 42.398899, 22.812357>,  <35.953663, 42.278107, 22.748123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.150852, 42.398899, 22.812357>,  <36.479500, 42.600220, 22.919413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150852, 42.398899, 22.812357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005600, 0.476614, -0.879095,
		0.570010, -0.720782, -0.394414,
		-0.821619, -0.503301, -0.267639,
		35.904366, 42.247910, 22.732065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594521, 42.386208, 22.241598>,  <36.479500, 42.600220, 22.919413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594521, 42.386208, 22.241598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199829, 42.384586, 22.306536>,  <35.963017, 42.383614, 22.345499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199829, 42.384586, 22.306536>,  <36.594521, 42.386208, 22.241598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199829, 42.384586, 22.306536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138906, 0.538969, -0.830793,
		-0.084130, -0.842316, -0.532378,
		-0.986726, -0.004056, 0.162346,
		35.903812, 42.383369, 22.355240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288502, 42.328522, 21.584942>,  <36.594521, 42.386208, 22.241598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288502, 42.328522, 21.584942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014507, 42.485802, 21.830278>,  <35.850109, 42.580170, 21.977480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.014507, 42.485802, 21.830278>,  <36.288502, 42.328522, 21.584942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014507, 42.485802, 21.830278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318289, 0.595761, -0.737401,
		-0.655352, -0.700329, -0.282937,
		-0.684986, 0.393202, 0.613340,
		35.809010, 42.603764, 22.014280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682621, 42.334099, 21.194706>,  <36.288502, 42.328522, 21.584942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682621, 42.334099, 21.194706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623661, 42.585968, 21.499804>,  <35.588284, 42.737091, 21.682861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.623661, 42.585968, 21.499804>,  <35.682621, 42.334099, 21.194706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623661, 42.585968, 21.499804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188703, 0.739099, -0.646625,
		-0.970909, -0.239246, 0.009877,
		-0.147402, 0.629678, 0.762744,
		35.579441, 42.774872, 21.728626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058624, 42.654774, 21.109989>,  <35.682621, 42.334099, 21.194706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058624, 42.654774, 21.109989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267612, 42.912060, 21.333883>,  <35.393005, 43.066429, 21.468220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.267612, 42.912060, 21.333883>,  <35.058624, 42.654774, 21.109989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267612, 42.912060, 21.333883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139841, 0.712210, -0.687897,
		-0.841112, 0.281132, 0.462056,
		0.522470, 0.643213, 0.559734,
		35.424355, 43.105022, 21.501804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767876, 43.218559, 21.094185>,  <35.058624, 42.654774, 21.109989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767876, 43.218559, 21.094185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136616, 43.337894, 21.193132>,  <35.357861, 43.409496, 21.252501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136616, 43.337894, 21.193132>,  <34.767876, 43.218559, 21.094185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136616, 43.337894, 21.193132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009984, 0.656358, -0.754383,
		-0.387421, 0.692958, 0.608041,
		0.921849, 0.298334, 0.247368,
		35.413170, 43.427395, 21.267344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030739, 43.406715, 21.241747>,  <34.767876, 43.218559, 21.094185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030739, 43.406715, 21.241747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723064, 43.650097, 21.319868>,  <33.538460, 43.796124, 21.366741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723064, 43.650097, 21.319868>,  <34.030739, 43.406715, 21.241747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723064, 43.650097, 21.319868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168658, -0.488083, 0.856347,
		0.616368, 0.625750, 0.478046,
		-0.769185, 0.608451, 0.195301,
		33.492310, 43.832634, 21.378458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028145, 43.557358, 21.972767>,  <34.030739, 43.406715, 21.241747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028145, 43.557358, 21.972767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659313, 43.615799, 21.829428>,  <33.438015, 43.650864, 21.743423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659313, 43.615799, 21.829428>,  <34.028145, 43.557358, 21.972767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659313, 43.615799, 21.829428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383561, -0.468057, 0.796118,
		-0.051410, 0.871536, 0.487629,
		-0.922083, 0.146107, -0.358350,
		33.382687, 43.659630, 21.721922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497486, 43.915413, 22.595739>,  <34.028145, 43.557358, 21.972767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497486, 43.915413, 22.595739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273846, 43.742641, 22.312656>,  <33.139664, 43.638977, 22.142807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.273846, 43.742641, 22.312656>,  <33.497486, 43.915413, 22.595739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273846, 43.742641, 22.312656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407140, -0.600546, 0.688173,
		-0.722252, 0.672891, 0.159907,
		-0.559097, -0.431929, -0.707706,
		33.106117, 43.613064, 22.100344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844357, 43.887695, 22.833456>,  <33.497486, 43.915413, 22.595739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844357, 43.887695, 22.833456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875996, 43.588642, 22.569702>,  <32.894978, 43.409210, 22.411449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.875996, 43.588642, 22.569702>,  <32.844357, 43.887695, 22.833456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875996, 43.588642, 22.569702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355588, -0.639105, 0.681984,
		-0.931290, 0.180529, -0.316398,
		0.079094, -0.747632, -0.659386,
		32.899723, 43.364353, 22.371887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.283154, 43.343853, 23.052053>,  <32.844357, 43.887695, 22.833456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.283154, 43.343853, 23.052053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.500237, 43.132618, 22.790796>,  <32.630486, 43.005878, 22.634043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.500237, 43.132618, 22.790796>,  <32.283154, 43.343853, 23.052053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500237, 43.132618, 22.790796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007209, -0.780522, 0.625087,
		-0.839892, -0.334529, -0.427400,
		0.542705, -0.528086, -0.653143,
		32.663048, 42.974194, 22.594852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847603, 42.773766, 22.882605>,  <32.283154, 43.343853, 23.052053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847603, 42.773766, 22.882605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227356, 42.677502, 22.801855>,  <32.455208, 42.619743, 22.753405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.227356, 42.677502, 22.801855>,  <31.847603, 42.773766, 22.882605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227356, 42.677502, 22.801855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094203, -0.831218, 0.547908,
		-0.299663, -0.501157, -0.811815,
		0.949383, -0.240663, -0.201875,
		32.512173, 42.605305, 22.741293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812401, 42.042480, 22.524714>,  <31.847603, 42.773766, 22.882605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812401, 42.042480, 22.524714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167122, 42.126350, 22.689451>,  <32.379955, 42.176670, 22.788294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.167122, 42.126350, 22.689451>,  <31.812401, 42.042480, 22.524714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167122, 42.126350, 22.689451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080863, -0.807012, 0.584973,
		0.455015, -0.552060, -0.698707,
		0.886805, 0.209672, 0.411844,
		32.433163, 42.189251, 22.813004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982574, 41.468315, 22.739809>,  <31.812401, 42.042480, 22.524714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982574, 41.468315, 22.739809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251328, 41.694023, 22.931715>,  <32.412579, 41.829449, 23.046858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.251328, 41.694023, 22.931715>,  <31.982574, 41.468315, 22.739809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251328, 41.694023, 22.931715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086048, -0.702835, 0.706129,
		0.735643, -0.433153, -0.520776,
		0.671882, 0.564271, 0.479764,
		32.452892, 41.863304, 23.075644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457367, 40.925182, 22.805210>,  <31.982574, 41.468315, 22.739809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457367, 40.925182, 22.805210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561543, 41.199070, 23.077484>,  <32.624050, 41.363403, 23.240849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.561543, 41.199070, 23.077484>,  <32.457367, 40.925182, 22.805210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561543, 41.199070, 23.077484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440410, -0.711649, 0.547352,
		0.859190, 0.157227, -0.486900,
		0.260444, 0.684715, 0.680686,
		32.639675, 41.404484, 23.281691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160408, 40.759537, 23.006742>,  <32.457367, 40.925182, 22.805210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160408, 40.759537, 23.006742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.025814, 40.988438, 23.305889>,  <32.945057, 41.125778, 23.485376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.025814, 40.988438, 23.305889>,  <33.160408, 40.759537, 23.006742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025814, 40.988438, 23.305889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474366, -0.583050, 0.659568,
		0.813483, 0.576697, -0.075270,
		-0.336485, 0.572253, 0.747867,
		32.924870, 41.160114, 23.530249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710522, 40.982777, 23.460438>,  <33.160408, 40.759537, 23.006742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710522, 40.982777, 23.460438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374535, 41.001957, 23.676643>,  <33.172943, 41.013466, 23.806366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.374535, 41.001957, 23.676643>,  <33.710522, 40.982777, 23.460438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374535, 41.001957, 23.676643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413895, -0.587551, 0.695324,
		0.350917, 0.807766, 0.473679,
		-0.839969, 0.047947, 0.540512,
		33.122543, 41.016342, 23.838797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937675, 40.851311, 24.129599>,  <33.710522, 40.982777, 23.460438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937675, 40.851311, 24.129599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542076, 40.817055, 24.177837>,  <33.304714, 40.796501, 24.206779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.542076, 40.817055, 24.177837>,  <33.937675, 40.851311, 24.129599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542076, 40.817055, 24.177837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139544, -0.810546, 0.568808,
		0.049036, 0.579380, 0.813581,
		-0.989001, -0.085638, 0.120595,
		33.245377, 40.791363, 24.214016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861271, 40.957848, 24.844948>,  <33.937675, 40.851311, 24.129599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861271, 40.957848, 24.844948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561840, 40.748604, 24.681978>,  <33.382183, 40.623058, 24.584196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.561840, 40.748604, 24.681978>,  <33.861271, 40.957848, 24.844948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561840, 40.748604, 24.681978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216850, -0.773826, 0.595122,
		-0.626587, 0.357143, 0.692703,
		-0.748575, -0.523109, -0.407423,
		33.337269, 40.591671, 24.559752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547237, 40.532623, 25.371061>,  <33.861271, 40.957848, 24.844948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547237, 40.532623, 25.371061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435848, 40.358452, 25.028633>,  <33.369015, 40.253948, 24.823177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.435848, 40.358452, 25.028633>,  <33.547237, 40.532623, 25.371061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435848, 40.358452, 25.028633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166555, -0.899716, 0.403449,
		-0.945892, -0.030233, 0.323071,
		-0.278475, -0.435428, -0.856069,
		33.352306, 40.227825, 24.771812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014259, 40.062183, 25.630241>,  <33.547237, 40.532623, 25.371061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014259, 40.062183, 25.630241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148232, 39.916386, 25.282686>,  <33.228615, 39.828907, 25.074154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.148232, 39.916386, 25.282686>,  <33.014259, 40.062183, 25.630241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148232, 39.916386, 25.282686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077817, -0.908297, 0.411025,
		-0.939025, -0.205277, -0.275849,
		0.334926, -0.364497, -0.868888,
		33.248711, 39.807037, 25.022020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554943, 39.412823, 25.446291>,  <33.014259, 40.062183, 25.630241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554943, 39.412823, 25.446291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906639, 39.389305, 25.257196>,  <33.117657, 39.375195, 25.143740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.906639, 39.389305, 25.257196>,  <32.554943, 39.412823, 25.446291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906639, 39.389305, 25.257196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109510, -0.940830, 0.320699,
		-0.463619, -0.333741, -0.820777,
		0.879241, -0.058799, -0.472735,
		33.170410, 39.371666, 25.115376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616333, 38.756905, 25.306923>,  <32.554943, 39.412823, 25.446291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616333, 38.756905, 25.306923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995358, 38.875023, 25.258062>,  <33.222775, 38.945896, 25.228746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.995358, 38.875023, 25.258062>,  <32.616333, 38.756905, 25.306923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995358, 38.875023, 25.258062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319331, -0.860328, 0.397321,
		0.012240, -0.415493, -0.909514,
		0.947564, 0.295300, -0.122149,
		33.279625, 38.963612, 25.221418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939709, 38.241322, 24.861237>,  <32.616333, 38.756905, 25.306923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939709, 38.241322, 24.861237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209564, 38.423111, 25.093899>,  <33.371475, 38.532185, 25.233496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.209564, 38.423111, 25.093899>,  <32.939709, 38.241322, 24.861237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209564, 38.423111, 25.093899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330075, -0.890556, 0.312987,
		0.660240, -0.019163, -0.750810,
		0.674636, 0.454470, 0.581655,
		33.411957, 38.559452, 25.268394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541805, 37.838840, 24.716164>,  <32.939709, 38.241322, 24.861237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541805, 37.838840, 24.716164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592426, 38.039009, 25.058758>,  <33.622799, 38.159111, 25.264315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.592426, 38.039009, 25.058758>,  <33.541805, 37.838840, 24.716164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592426, 38.039009, 25.058758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221826, -0.855837, 0.467264,
		0.966838, 0.130855, -0.219318,
		0.126557, 0.500419, 0.856483,
		33.630394, 38.189137, 25.315702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268379, 37.725513, 25.017597>,  <33.541805, 37.838840, 24.716164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268379, 37.725513, 25.017597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015640, 37.850174, 25.301468>,  <33.863995, 37.924969, 25.471790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.015640, 37.850174, 25.301468>,  <34.268379, 37.725513, 25.017597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015640, 37.850174, 25.301468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244405, -0.788785, 0.563990,
		0.735549, 0.529806, 0.422225,
		-0.631850, 0.311649, 0.709676,
		33.826084, 37.943668, 25.514370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568436, 37.434174, 25.549559>,  <34.268379, 37.725513, 25.017597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568436, 37.434174, 25.549559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226032, 37.557106, 25.715832>,  <34.020592, 37.630867, 25.815596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.226032, 37.557106, 25.715832>,  <34.568436, 37.434174, 25.549559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226032, 37.557106, 25.715832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125321, -0.656742, 0.743629,
		0.501541, 0.688647, 0.523662,
		-0.856009, 0.307334, 0.415685,
		33.969231, 37.649307, 25.840538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.439297, 35.244297, 28.849470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156605, 35.390114, 29.092003>,  <37.986988, 35.477604, 29.237522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.156605, 35.390114, 29.092003>,  <38.439297, 35.244297, 28.849470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156605, 35.390114, 29.092003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367725, -0.542887, 0.755018,
		0.604407, 0.756558, 0.249623,
		-0.706732, 0.364546, 0.606330,
		37.944584, 35.499477, 29.273901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718624, 35.352188, 29.521776>,  <38.439297, 35.244297, 28.849470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718624, 35.352188, 29.521776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329861, 35.355293, 29.615866>,  <38.096603, 35.357155, 29.672319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.329861, 35.355293, 29.615866>,  <38.718624, 35.352188, 29.521776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329861, 35.355293, 29.615866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189701, -0.565719, 0.802481,
		0.139299, 0.824562, 0.548356,
		-0.971910, 0.007761, 0.235225,
		38.038288, 35.357620, 29.686434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703239, 35.569580, 30.234020>,  <38.718624, 35.352188, 29.521776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703239, 35.569580, 30.234020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356628, 35.390064, 30.146648>,  <38.148663, 35.282352, 30.094225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.356628, 35.390064, 30.146648>,  <38.703239, 35.569580, 30.234020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356628, 35.390064, 30.146648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059090, -0.526784, 0.847943,
		-0.495614, 0.721861, 0.482993,
		-0.866530, -0.448793, -0.218427,
		38.096668, 35.255428, 30.081120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415199, 35.611153, 30.788702>,  <38.703239, 35.569580, 30.234020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415199, 35.611153, 30.788702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214943, 35.315830, 30.607922>,  <38.094788, 35.138638, 30.499454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214943, 35.315830, 30.607922>,  <38.415199, 35.611153, 30.788702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214943, 35.315830, 30.607922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138134, -0.447264, 0.883670,
		-0.854561, 0.504834, 0.121935,
		-0.500644, -0.738307, -0.451950,
		38.064751, 35.094337, 30.472336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971062, 35.405132, 31.237947>,  <38.415199, 35.611153, 30.788702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971062, 35.405132, 31.237947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977043, 35.081589, 31.002821>,  <37.980633, 34.887463, 30.861746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.977043, 35.081589, 31.002821>,  <37.971062, 35.405132, 31.237947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977043, 35.081589, 31.002821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264331, -0.570163, 0.777845,
		-0.964316, 0.143746, -0.222333,
		0.014954, -0.808858, -0.587814,
		37.981529, 34.838932, 30.826477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283531, 35.050938, 31.328430>,  <37.971062, 35.405132, 31.237947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283531, 35.050938, 31.328430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476814, 34.752579, 31.145065>,  <37.592785, 34.573563, 31.035046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.476814, 34.752579, 31.145065>,  <37.283531, 35.050938, 31.328430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476814, 34.752579, 31.145065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192903, -0.601438, 0.775281,
		-0.853988, -0.286196, -0.434508,
		0.483212, -0.745899, -0.458413,
		37.621777, 34.528809, 31.007542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852745, 34.414803, 31.266132>,  <37.283531, 35.050938, 31.328430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852745, 34.414803, 31.266132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222607, 34.269272, 31.221136>,  <37.444523, 34.181953, 31.194138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222607, 34.269272, 31.221136>,  <36.852745, 34.414803, 31.266132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222607, 34.269272, 31.221136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151542, -0.622532, 0.767781,
		-0.349366, -0.692883, -0.630759,
		0.924651, -0.363823, -0.112491,
		37.500000, 34.160126, 31.187389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820461, 33.745960, 31.445120>,  <36.852745, 34.414803, 31.266132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820461, 33.745960, 31.445120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.218559, 33.782486, 31.458647>,  <37.457420, 33.804401, 31.466763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.218559, 33.782486, 31.458647>,  <36.820461, 33.745960, 31.445120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218559, 33.782486, 31.458647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042767, -0.721905, 0.690669,
		0.087479, -0.685941, -0.722380,
		0.995248, 0.091314, 0.033816,
		37.517132, 33.809879, 31.468792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089703, 33.073792, 31.529461>,  <36.820461, 33.745960, 31.445120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089703, 33.073792, 31.529461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386261, 33.296810, 31.678848>,  <37.564194, 33.430622, 31.768480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.386261, 33.296810, 31.678848>,  <37.089703, 33.073792, 31.529461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386261, 33.296810, 31.678848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069550, -0.617371, 0.783592,
		0.667457, -0.554975, -0.496492,
		0.741394, 0.557545, 0.373470,
		37.608681, 33.464073, 31.790890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573265, 32.544758, 31.846127>,  <37.089703, 33.073792, 31.529461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573265, 32.544758, 31.846127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633110, 32.904545, 32.010361>,  <37.669018, 33.120415, 32.108902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.633110, 32.904545, 32.010361>,  <37.573265, 32.544758, 31.846127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633110, 32.904545, 32.010361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077997, -0.424703, 0.901967,
		0.985663, -0.102924, -0.133698,
		0.149616, 0.899463, 0.410586,
		37.677994, 33.174385, 32.133537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193691, 32.464157, 32.243118>,  <37.573265, 32.544758, 31.846127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193691, 32.464157, 32.243118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017319, 32.796303, 32.379402>,  <37.911495, 32.995590, 32.461174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017319, 32.796303, 32.379402>,  <38.193691, 32.464157, 32.243118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017319, 32.796303, 32.379402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104950, -0.329300, 0.938375,
		0.891385, 0.449513, 0.058051,
		-0.440928, 0.830361, 0.340710,
		37.885040, 33.045410, 32.481617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635635, 32.740162, 32.708630>,  <38.193691, 32.464157, 32.243118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635635, 32.740162, 32.708630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.273266, 32.887295, 32.792538>,  <38.055843, 32.975574, 32.842884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.273266, 32.887295, 32.792538>,  <38.635635, 32.740162, 32.708630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273266, 32.887295, 32.792538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083959, -0.329530, 0.940405,
		0.415042, 0.869544, 0.267645,
		-0.905920, 0.367837, 0.209775,
		38.001492, 32.997646, 32.855469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674614, 33.108376, 33.285599>,  <38.635635, 32.740162, 32.708630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674614, 33.108376, 33.285599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293911, 32.987083, 33.266796>,  <38.065491, 32.914307, 33.255516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.293911, 32.987083, 33.266796>,  <38.674614, 33.108376, 33.285599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293911, 32.987083, 33.266796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044598, -0.288246, 0.956517,
		-0.303594, 0.908276, 0.287863,
		-0.951757, -0.303231, -0.047002,
		38.008385, 32.896114, 33.252697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410042, 33.087868, 33.965324>,  <38.674614, 33.108376, 33.285599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410042, 33.087868, 33.965324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187141, 32.816540, 33.773762>,  <38.053402, 32.653744, 33.658825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.187141, 32.816540, 33.773762>,  <38.410042, 33.087868, 33.965324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187141, 32.816540, 33.773762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099271, -0.518197, 0.849481,
		-0.824391, 0.520912, 0.221426,
		-0.557247, -0.678323, -0.478908,
		38.019966, 32.613041, 33.630089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940586, 33.639206, 34.217560>,  <38.410042, 33.087868, 33.965324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940586, 33.639206, 34.217560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785221, 33.804588, 34.546970>,  <38.692001, 33.903816, 34.744617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785221, 33.804588, 34.546970>,  <38.940586, 33.639206, 34.217560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785221, 33.804588, 34.546970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312017, 0.781891, -0.539714,
		-0.867051, -0.466587, -0.174695,
		-0.388416, 0.413452, 0.823523,
		38.668697, 33.928623, 34.794025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249496, 33.876759, 34.028618>,  <38.940586, 33.639206, 34.217560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249496, 33.876759, 34.028618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338329, 34.085739, 34.357914>,  <38.391628, 34.211128, 34.555492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.338329, 34.085739, 34.357914>,  <38.249496, 33.876759, 34.028618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338329, 34.085739, 34.357914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360666, 0.828453, -0.428469,
		-0.905870, -0.201760, 0.372414,
		0.222080, 0.522455, 0.823239,
		38.404953, 34.242474, 34.604885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821869, 34.350311, 33.926258>,  <38.249496, 33.876759, 34.028618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821869, 34.350311, 33.926258> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060822, 34.497688, 34.211185>,  <38.204193, 34.586113, 34.382141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060822, 34.497688, 34.211185>,  <37.821869, 34.350311, 33.926258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060822, 34.497688, 34.211185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175352, 0.926734, -0.332287,
		-0.782554, 0.073595, 0.618218,
		0.597379, 0.368439, 0.712314,
		38.240036, 34.608219, 34.424881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370247, 34.820877, 34.437145>,  <37.821869, 34.350311, 33.926258>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370247, 34.820877, 34.437145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748333, 34.946529, 34.472660>,  <37.975185, 35.021919, 34.493969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748333, 34.946529, 34.472660>,  <37.370247, 34.820877, 34.437145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748333, 34.946529, 34.472660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253210, 0.877208, -0.407911,
		-0.206023, 0.363083, 0.908694,
		0.945219, 0.314130, 0.088789,
		38.031898, 35.040768, 34.499298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364216, 35.473949, 34.756519>,  <37.370247, 34.820877, 34.437145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364216, 35.473949, 34.756519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726265, 35.480827, 34.586597>,  <37.943493, 35.484955, 34.484642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.726265, 35.480827, 34.586597>,  <37.364216, 35.473949, 34.756519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726265, 35.480827, 34.586597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222263, 0.870907, -0.438315,
		0.362432, 0.491147, 0.792097,
		0.905120, 0.017194, -0.424808,
		37.997803, 35.485985, 34.459156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660286, 36.183308, 34.805866>,  <37.364216, 35.473949, 34.756519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660286, 36.183308, 34.805866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853710, 35.994831, 34.510803>,  <37.969765, 35.881744, 34.333763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.853710, 35.994831, 34.510803>,  <37.660286, 36.183308, 34.805866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853710, 35.994831, 34.510803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027328, 0.834207, -0.550775,
		0.874882, 0.286494, 0.390516,
		0.483565, -0.471191, -0.737661,
		37.998779, 35.853474, 34.289505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989571, 36.760815, 34.525124>,  <37.660286, 36.183308, 34.805866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989571, 36.760815, 34.525124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026630, 36.479980, 34.242706>,  <38.048866, 36.311481, 34.073257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.026630, 36.479980, 34.242706>,  <37.989571, 36.760815, 34.525124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026630, 36.479980, 34.242706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072253, 0.711961, -0.698492,
		0.993074, 0.013701, 0.116690,
		0.092649, -0.702085, -0.706040,
		38.054424, 36.269356, 34.030895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412678, 37.059124, 34.083744>,  <37.989571, 36.760815, 34.525124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412678, 37.059124, 34.083744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278854, 36.767113, 33.845375>,  <38.198559, 36.591908, 33.702354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.278854, 36.767113, 33.845375>,  <38.412678, 37.059124, 34.083744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278854, 36.767113, 33.845375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164094, 0.577576, -0.799675,
		0.927978, -0.365326, -0.073440,
		-0.334559, -0.730030, -0.595925,
		38.178486, 36.548103, 33.666599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835789, 37.078426, 33.554810>,  <38.412678, 37.059124, 34.083744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835789, 37.078426, 33.554810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495495, 36.900879, 33.442211>,  <38.291321, 36.794350, 33.374653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.495495, 36.900879, 33.442211>,  <38.835789, 37.078426, 33.554810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495495, 36.900879, 33.442211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047730, 0.468116, -0.882377,
		0.523430, -0.764101, -0.377054,
		-0.850731, -0.443866, -0.281497,
		38.240276, 36.767719, 33.357761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996777, 36.784061, 32.899914>,  <38.835789, 37.078426, 33.554810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996777, 36.784061, 32.899914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598381, 36.819607, 32.895885>,  <38.359344, 36.840935, 32.893467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.598381, 36.819607, 32.895885>,  <38.996777, 36.784061, 32.899914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598381, 36.819607, 32.895885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051902, 0.482625, -0.874288,
		-0.072830, -0.871307, -0.485303,
		-0.995993, 0.088863, -0.010073,
		38.299583, 36.846264, 32.892864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766876, 36.695999, 32.256077>,  <38.996777, 36.784061, 32.899914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766876, 36.695999, 32.256077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.482227, 36.912434, 32.435329>,  <38.311436, 37.042294, 32.542881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.482227, 36.912434, 32.435329>,  <38.766876, 36.695999, 32.256077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482227, 36.912434, 32.435329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198080, 0.457452, -0.866892,
		-0.674058, -0.705667, -0.218357,
		-0.711625, 0.541083, 0.448128,
		38.268738, 37.074757, 32.569767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076679, 36.612808, 31.847916>,  <38.766876, 36.695999, 32.256077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076679, 36.612808, 31.847916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009087, 36.945221, 32.059887>,  <37.968533, 37.144669, 32.187069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.009087, 36.945221, 32.059887>,  <38.076679, 36.612808, 31.847916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009087, 36.945221, 32.059887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291350, 0.471518, -0.832338,
		-0.941573, -0.295045, 0.162444,
		-0.168982, 0.831035, 0.529930,
		37.958393, 37.194530, 32.218864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491940, 36.927437, 31.576550>,  <38.076679, 36.612808, 31.847916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491940, 36.927437, 31.576550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.677197, 37.221916, 31.773939>,  <37.788349, 37.398602, 31.892372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.677197, 37.221916, 31.773939>,  <37.491940, 36.927437, 31.576550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677197, 37.221916, 31.773939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140969, 0.610893, -0.779062,
		-0.875001, 0.291252, 0.386711,
		0.463142, 0.736194, 0.493475,
		37.816139, 37.442776, 31.921982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990936, 37.457417, 31.508102>,  <37.491940, 36.927437, 31.576550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990936, 37.457417, 31.508102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356316, 37.598152, 31.589911>,  <37.575542, 37.682594, 31.638996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.356316, 37.598152, 31.589911>,  <36.990936, 37.457417, 31.508102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356316, 37.598152, 31.589911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026110, 0.552185, -0.833312,
		-0.406124, 0.755845, 0.513577,
		0.913445, 0.351837, 0.204520,
		37.630348, 37.703705, 31.651266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505131, 37.968937, 31.844141>,  <36.990936, 37.457417, 31.508102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505131, 37.968937, 31.844141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.141872, 38.124279, 31.906694>,  <35.923920, 38.217484, 31.944225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.141872, 38.124279, 31.906694>,  <36.505131, 37.968937, 31.844141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141872, 38.124279, 31.906694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223080, -0.764960, 0.604211,
		0.354274, 0.513825, 0.781328,
		-0.908144, 0.388355, 0.156382,
		35.869431, 38.240784, 31.953609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356094, 37.886456, 32.542358>,  <36.505131, 37.968937, 31.844141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356094, 37.886456, 32.542358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.983253, 37.944023, 32.409409>,  <35.759548, 37.978565, 32.329639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.983253, 37.944023, 32.409409>,  <36.356094, 37.886456, 32.542358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983253, 37.944023, 32.409409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303460, -0.811296, 0.499712,
		-0.197739, 0.566645, 0.799883,
		-0.932101, 0.143920, -0.332379,
		35.703625, 37.987198, 32.309696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968010, 37.789673, 33.150021>,  <36.356094, 37.886456, 32.542358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968010, 37.789673, 33.150021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730091, 37.736763, 32.832855>,  <35.587337, 37.705017, 32.642555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.730091, 37.736763, 32.832855>,  <35.968010, 37.789673, 33.150021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730091, 37.736763, 32.832855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372462, -0.828756, 0.417654,
		-0.712380, 0.543752, 0.443677,
		-0.594800, -0.132276, -0.792916,
		35.551651, 37.697079, 32.594982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297405, 37.629154, 33.441570>,  <35.968010, 37.789673, 33.150021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297405, 37.629154, 33.441570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307163, 37.481201, 33.070068>,  <35.313019, 37.392429, 32.847168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.307163, 37.481201, 33.070068>,  <35.297405, 37.629154, 33.441570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307163, 37.481201, 33.070068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246027, -0.902681, 0.353039,
		-0.968956, 0.219888, -0.113022,
		0.024394, -0.369886, -0.928757,
		35.314480, 37.370235, 32.791443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590591, 37.219700, 33.357761>,  <35.297405, 37.629154, 33.441570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590591, 37.219700, 33.357761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856136, 37.083149, 33.091602>,  <35.015461, 37.001217, 32.931908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.856136, 37.083149, 33.091602>,  <34.590591, 37.219700, 33.357761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856136, 37.083149, 33.091602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362884, -0.925015, 0.112525,
		-0.653915, 0.166761, -0.737961,
		0.663860, -0.341376, -0.665396,
		35.055294, 36.980736, 32.891983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251450, 36.692665, 33.139015>,  <34.590591, 37.219700, 33.357761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251450, 36.692665, 33.139015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.622475, 36.649223, 32.995998>,  <34.845089, 36.623158, 32.910191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.622475, 36.649223, 32.995998>,  <34.251450, 36.692665, 33.139015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622475, 36.649223, 32.995998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040149, -0.980259, 0.193598,
		-0.371507, -0.165220, -0.913611,
		0.927562, -0.108604, -0.357539,
		34.900742, 36.616642, 32.888737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130219, 36.183994, 32.665897>,  <34.251450, 36.692665, 33.139015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130219, 36.183994, 32.665897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.499447, 36.211014, 32.817356>,  <34.720985, 36.227226, 32.908230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.499447, 36.211014, 32.817356>,  <34.130219, 36.183994, 32.665897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499447, 36.211014, 32.817356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044211, -0.959300, 0.278908,
		0.382077, -0.274193, -0.882517,
		0.923072, 0.067548, 0.378649,
		34.776367, 36.231277, 32.930950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428909, 35.552929, 32.502926>,  <34.130219, 36.183994, 32.665897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428909, 35.552929, 32.502926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664089, 35.702595, 32.789787>,  <34.805199, 35.792393, 32.961906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.664089, 35.702595, 32.789787>,  <34.428909, 35.552929, 32.502926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664089, 35.702595, 32.789787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143256, -0.920738, 0.362932,
		0.796108, -0.110650, -0.594953,
		0.587954, 0.374163, 0.717155,
		34.840477, 35.814842, 33.004932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987598, 35.069962, 32.439251>,  <34.428909, 35.552929, 32.502926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987598, 35.069962, 32.439251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008347, 35.215385, 32.811302>,  <35.020794, 35.302639, 33.034531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.008347, 35.215385, 32.811302>,  <34.987598, 35.069962, 32.439251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008347, 35.215385, 32.811302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150100, -0.923637, 0.352655,
		0.987309, 0.121319, -0.102479,
		0.051870, 0.363561, 0.930125,
		35.023907, 35.324455, 33.090340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501465, 34.747532, 32.840889>,  <34.987598, 35.069962, 32.439251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501465, 34.747532, 32.840889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.301014, 34.916924, 33.142761>,  <35.180744, 35.018559, 33.323883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.301014, 34.916924, 33.142761>,  <35.501465, 34.747532, 32.840889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301014, 34.916924, 33.142761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066498, -0.850661, 0.521492,
		0.862813, 0.311520, 0.398131,
		-0.501130, 0.423475, 0.754677,
		35.150677, 35.043964, 33.369164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966789, 34.616554, 33.481510>,  <35.501465, 34.747532, 32.840889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966789, 34.616554, 33.481510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590057, 34.696560, 33.589542>,  <35.364017, 34.744564, 33.654362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.590057, 34.696560, 33.589542>,  <35.966789, 34.616554, 33.481510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590057, 34.696560, 33.589542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002179, -0.807234, 0.590228,
		0.336073, 0.555308, 0.760716,
		-0.941834, 0.200017, 0.270079,
		35.307507, 34.756565, 33.670567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049469, 34.378273, 34.062027>,  <35.966789, 34.616554, 33.481510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049469, 34.378273, 34.062027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658226, 34.431545, 33.998062>,  <35.423481, 34.463509, 33.959682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.658226, 34.431545, 33.998062>,  <36.049469, 34.378273, 34.062027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658226, 34.431545, 33.998062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193952, -0.861931, 0.468463,
		-0.075438, 0.489221, 0.868891,
		-0.978106, 0.133183, -0.159908,
		35.364796, 34.471500, 33.950089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.090012, 41.790222, 30.069534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759666, 41.589558, 29.966549>,  <35.561459, 41.469158, 29.904758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759666, 41.589558, 29.966549>,  <36.090012, 41.790222, 30.069534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759666, 41.589558, 29.966549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118181, -0.600455, 0.790877,
		-0.551344, 0.622730, 0.555182,
		-0.825865, -0.501658, -0.257463,
		35.511906, 41.439060, 29.889311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632210, 41.573887, 30.723295>,  <36.090012, 41.790222, 30.069534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632210, 41.573887, 30.723295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536839, 41.312801, 30.435654>,  <35.479614, 41.156151, 30.263069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536839, 41.312801, 30.435654>,  <35.632210, 41.573887, 30.723295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536839, 41.312801, 30.435654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045793, -0.732081, 0.679676,
		-0.970080, 0.194985, 0.144660,
		-0.238429, -0.652716, -0.719106,
		35.465309, 41.116985, 30.219921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081272, 41.185600, 31.073078>,  <35.632210, 41.573887, 30.723295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081272, 41.185600, 31.073078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222778, 40.967113, 30.769369>,  <35.307682, 40.836021, 30.587143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222778, 40.967113, 30.769369>,  <35.081272, 41.185600, 31.073078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222778, 40.967113, 30.769369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173961, -0.759178, 0.627205,
		-0.919016, -0.353965, -0.173547,
		0.353762, -0.546221, -0.759273,
		35.328907, 40.803246, 30.541588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730000, 40.676094, 31.127289>,  <35.081272, 41.185600, 31.073078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730000, 40.676094, 31.127289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036961, 40.546783, 30.905809>,  <35.221138, 40.469196, 30.772923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036961, 40.546783, 30.905809>,  <34.730000, 40.676094, 31.127289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036961, 40.546783, 30.905809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012566, -0.871002, 0.491119,
		-0.641038, -0.369930, -0.672474,
		0.767406, -0.323276, -0.553697,
		35.267181, 40.449802, 30.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.479675, 39.967999, 30.886190>,  <34.730000, 40.676094, 31.127289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.479675, 39.967999, 30.886190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875858, 39.964153, 30.831202>,  <35.113567, 39.961845, 30.798208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875858, 39.964153, 30.831202>,  <34.479675, 39.967999, 30.886190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875858, 39.964153, 30.831202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054184, -0.890060, 0.452612,
		-0.126709, -0.455743, -0.881047,
		0.990459, -0.009612, -0.137473,
		35.172997, 39.961269, 30.789959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659729, 39.237461, 30.676769>,  <34.479675, 39.967999, 30.886190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659729, 39.237461, 30.676769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001614, 39.397022, 30.809647>,  <35.206745, 39.492760, 30.889374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001614, 39.397022, 30.809647>,  <34.659729, 39.237461, 30.676769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001614, 39.397022, 30.809647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147275, -0.799971, 0.581684,
		0.497779, -0.448246, -0.742490,
		0.854708, 0.398900, 0.332193,
		35.258026, 39.516693, 30.909304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080826, 38.692253, 30.735176>,  <34.659729, 39.237461, 30.676769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080826, 38.692253, 30.735176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305508, 38.929779, 30.965611>,  <35.440315, 39.072296, 31.103870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305508, 38.929779, 30.965611>,  <35.080826, 38.692253, 30.735176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305508, 38.929779, 30.965611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298374, -0.794849, 0.528383,
		0.771662, -0.124905, -0.623648,
		0.561703, 0.593813, 0.576086,
		35.474018, 39.107922, 31.138437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756706, 38.365223, 30.753592>,  <35.080826, 38.692253, 30.735176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756706, 38.365223, 30.753592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753582, 38.611938, 31.068428>,  <35.751709, 38.759968, 31.257330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753582, 38.611938, 31.068428>,  <35.756706, 38.365223, 30.753592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753582, 38.611938, 31.068428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202859, -0.769773, 0.605225,
		0.979177, 0.164394, -0.119110,
		-0.007807, 0.616785, 0.787093,
		35.751240, 38.796974, 31.304556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.290936, 38.154118, 31.183002>,  <35.756706, 38.365223, 30.753592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.290936, 38.154118, 31.183002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042423, 38.344746, 31.431807>,  <35.893318, 38.459122, 31.581089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042423, 38.344746, 31.431807>,  <36.290936, 38.154118, 31.183002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042423, 38.344746, 31.431807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110454, -0.839131, 0.532596,
		0.775767, 0.262187, 0.573972,
		-0.621278, 0.476568, 0.622011,
		35.856041, 38.487717, 31.618410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992550, 38.201397, 31.324327>,  <36.290936, 38.154118, 31.183002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992550, 38.201397, 31.324327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382973, 38.116367, 31.305876>,  <37.617226, 38.065350, 31.294804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382973, 38.116367, 31.305876>,  <36.992550, 38.201397, 31.324327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382973, 38.116367, 31.305876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083093, 0.560358, -0.824072,
		0.201027, 0.800506, 0.564604,
		0.976055, -0.212576, -0.046131,
		37.675789, 38.052593, 31.292036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373314, 38.839119, 31.329199>,  <36.992550, 38.201397, 31.324327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.373314, 38.839119, 31.329199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602551, 38.556198, 31.163651>,  <37.740093, 38.386444, 31.064322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602551, 38.556198, 31.163651>,  <37.373314, 38.839119, 31.329199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602551, 38.556198, 31.163651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346825, 0.666913, -0.659500,
		0.742484, 0.234411, 0.627510,
		0.573088, -0.707304, -0.413873,
		37.774475, 38.344006, 31.039488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051590, 39.170811, 31.435497>,  <37.373314, 38.839119, 31.329199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051590, 39.170811, 31.435497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079563, 38.887783, 31.154226>,  <38.096348, 38.717968, 30.985464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079563, 38.887783, 31.154226>,  <38.051590, 39.170811, 31.435497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079563, 38.887783, 31.154226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469688, 0.645233, -0.602551,
		0.880058, -0.288135, 0.377459,
		0.069933, -0.707568, -0.703177,
		38.100544, 38.675514, 30.943274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666573, 39.389309, 31.059677>,  <38.051590, 39.170811, 31.435497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666573, 39.389309, 31.059677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453499, 39.162266, 30.808578>,  <38.325657, 39.026039, 30.657919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453499, 39.162266, 30.808578>,  <38.666573, 39.389309, 31.059677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453499, 39.162266, 30.808578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276693, 0.584178, -0.763006,
		0.799808, -0.580131, -0.154126,
		-0.532681, -0.567612, -0.627748,
		38.293694, 38.991982, 30.620255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149185, 39.217979, 30.513336>,  <38.666573, 39.389309, 31.059677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149185, 39.217979, 30.513336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792915, 39.155418, 30.342581>,  <38.579155, 39.117882, 30.240128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792915, 39.155418, 30.342581>,  <39.149185, 39.217979, 30.513336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792915, 39.155418, 30.342581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261087, 0.592732, -0.761907,
		0.372198, -0.790067, -0.487096,
		-0.890675, -0.156406, -0.426890,
		38.525711, 39.108498, 30.214514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284470, 39.073700, 29.759373>,  <39.149185, 39.217979, 30.513336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284470, 39.073700, 29.759373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902596, 39.191013, 29.779648>,  <38.673473, 39.261402, 29.791813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902596, 39.191013, 29.779648>,  <39.284470, 39.073700, 29.759373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902596, 39.191013, 29.779648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135943, 0.581195, -0.802329,
		-0.264767, -0.759079, -0.594725,
		-0.954682, 0.293279, 0.050689,
		38.616192, 39.278996, 29.794855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925625, 38.951405, 29.098434>,  <39.284470, 39.073700, 29.759373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925625, 38.951405, 29.098434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707653, 39.233498, 29.279850>,  <38.576870, 39.402756, 29.388700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707653, 39.233498, 29.279850>,  <38.925625, 38.951405, 29.098434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707653, 39.233498, 29.279850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058970, 0.571800, -0.818271,
		-0.836407, -0.419153, -0.353177,
		-0.544927, 0.705235, 0.453541,
		38.544174, 39.445068, 29.415913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380444, 39.039314, 28.699089>,  <38.925625, 38.951405, 29.098434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380444, 39.039314, 28.699089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433945, 39.386177, 28.890982>,  <38.466045, 39.594296, 29.006117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433945, 39.386177, 28.890982>,  <38.380444, 39.039314, 28.699089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433945, 39.386177, 28.890982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230524, 0.498025, -0.835960,
		-0.963831, 0.001219, 0.266512,
		0.133748, 0.867162, 0.479731,
		38.474068, 39.646324, 29.034901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000603, 39.467335, 28.322107>,  <38.380444, 39.039314, 28.699089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000603, 39.467335, 28.322107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213715, 39.724010, 28.542789>,  <38.341583, 39.878014, 28.675200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213715, 39.724010, 28.542789>,  <38.000603, 39.467335, 28.322107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213715, 39.724010, 28.542789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068071, 0.617331, -0.783753,
		-0.843509, 0.455126, 0.285224,
		0.532784, 0.641687, 0.551705,
		38.373550, 39.916515, 28.708302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726334, 40.135139, 28.159437>,  <38.000603, 39.467335, 28.322107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726334, 40.135139, 28.159437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079262, 40.221176, 28.326891>,  <38.291019, 40.272797, 28.427362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079262, 40.221176, 28.326891>,  <37.726334, 40.135139, 28.159437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079262, 40.221176, 28.326891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129679, 0.743938, -0.655546,
		-0.452439, 0.632687, 0.628496,
		0.882316, 0.215092, 0.418632,
		38.343956, 40.285702, 28.452480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763397, 40.906910, 28.319290>,  <37.726334, 40.135139, 28.159437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763397, 40.906910, 28.319290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133633, 40.765488, 28.265211>,  <38.355774, 40.680634, 28.232763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133633, 40.765488, 28.265211>,  <37.763397, 40.906910, 28.319290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133633, 40.765488, 28.265211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228314, 0.806340, -0.545609,
		0.301919, 0.474143, 0.827063,
		0.925590, -0.353560, -0.135196,
		38.411308, 40.659420, 28.224651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120365, 41.527340, 28.365091>,  <37.763397, 40.906910, 28.319290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120365, 41.527340, 28.365091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357735, 41.251923, 28.198355>,  <38.500156, 41.086674, 28.098312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357735, 41.251923, 28.198355>,  <38.120365, 41.527340, 28.365091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357735, 41.251923, 28.198355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220701, 0.637232, -0.738395,
		0.774040, 0.346184, 0.530111,
		0.593424, -0.688543, -0.416840,
		38.535763, 41.045361, 28.073303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558475, 41.966911, 28.060900>,  <38.120365, 41.527340, 28.365091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558475, 41.966911, 28.060900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573380, 41.600090, 27.902092>,  <38.582321, 41.379997, 27.806807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573380, 41.600090, 27.902092>,  <38.558475, 41.966911, 28.060900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573380, 41.600090, 27.902092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062739, 0.398658, -0.914951,
		0.997334, 0.009187, 0.072391,
		0.037265, -0.917053, -0.397019,
		38.584560, 41.324974, 27.782986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195034, 42.097370, 27.597439>,  <38.558475, 41.966911, 28.060900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195034, 42.097370, 27.597439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967106, 41.791447, 27.477188>,  <38.830349, 41.607891, 27.405039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967106, 41.791447, 27.477188>,  <39.195034, 42.097370, 27.597439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967106, 41.791447, 27.477188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035057, 0.388116, -0.920943,
		0.821023, -0.514231, -0.247968,
		-0.569818, -0.764809, -0.300624,
		38.796162, 41.562004, 27.387001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.574221, 38.524818, 26.130806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.716686, 38.752800, 26.426994>,  <30.802166, 38.889587, 26.604708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.716686, 38.752800, 26.426994>,  <30.574221, 38.524818, 26.130806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716686, 38.752800, 26.426994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146978, -0.816745, 0.557966,
		0.922791, -0.089895, -0.374667,
		0.356166, 0.569953, 0.740472,
		30.823536, 38.923786, 26.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130024, 38.247734, 26.280378>,  <30.574221, 38.524818, 26.130806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130024, 38.247734, 26.280378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043058, 38.470367, 26.601114>,  <30.990879, 38.603947, 26.793556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.043058, 38.470367, 26.601114>,  <31.130024, 38.247734, 26.280378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043058, 38.470367, 26.601114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154759, -0.791443, 0.591326,
		0.963733, 0.252655, 0.085934,
		-0.217413, 0.556582, 0.801841,
		30.977835, 38.637341, 26.841667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570162, 38.016602, 26.802839>,  <31.130024, 38.247734, 26.280378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570162, 38.016602, 26.802839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277880, 38.207832, 26.997778>,  <31.102510, 38.322571, 27.114742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.277880, 38.207832, 26.997778>,  <31.570162, 38.016602, 26.802839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277880, 38.207832, 26.997778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059155, -0.755517, 0.652452,
		0.680123, 0.447923, 0.580343,
		-0.730707, 0.478078, 0.487348,
		31.058668, 38.351257, 27.143982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756115, 38.074696, 27.530153>,  <31.570162, 38.016602, 26.802839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756115, 38.074696, 27.530153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.357580, 38.101738, 27.509201>,  <31.118460, 38.117962, 27.496630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.357580, 38.101738, 27.509201>,  <31.756115, 38.074696, 27.530153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357580, 38.101738, 27.509201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083863, -0.652268, 0.753335,
		0.016766, 0.754967, 0.655548,
		-0.996336, 0.067606, -0.052378,
		31.058680, 38.122021, 27.493488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610733, 38.109798, 28.201113>,  <31.756115, 38.074696, 27.530153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610733, 38.109798, 28.201113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300816, 37.981052, 27.983454>,  <31.114864, 37.903805, 27.852858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.300816, 37.981052, 27.983454>,  <31.610733, 38.109798, 28.201113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300816, 37.981052, 27.983454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224226, -0.664852, 0.712526,
		-0.591115, 0.674074, 0.442953,
		-0.774794, -0.321863, -0.544149,
		31.068377, 37.884495, 27.820210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012945, 38.129395, 28.676310>,  <31.610733, 38.109798, 28.201113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012945, 38.129395, 28.676310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.887850, 37.895813, 28.376659>,  <30.812794, 37.755665, 28.196869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.887850, 37.895813, 28.376659>,  <31.012945, 38.129395, 28.676310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887850, 37.895813, 28.376659> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062553, -0.774314, 0.629703,
		-0.947778, 0.243791, 0.205628,
		-0.312737, -0.583956, -0.749127,
		30.794029, 37.720627, 28.151920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505972, 37.849186, 28.909716>,  <31.012945, 38.129395, 28.676310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505972, 37.849186, 28.909716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.653584, 37.610741, 28.624489>,  <30.742151, 37.467674, 28.453352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.653584, 37.610741, 28.624489>,  <30.505972, 37.849186, 28.909716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.653584, 37.610741, 28.624489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012232, -0.764037, 0.645057,
		-0.929338, -0.246766, -0.274660,
		0.369028, -0.596116, -0.713067,
		30.764292, 37.431908, 28.410568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142530, 37.341972, 29.043636>,  <30.505972, 37.849186, 28.909716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142530, 37.341972, 29.043636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.439196, 37.188580, 28.823500>,  <30.617195, 37.096542, 28.691418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.439196, 37.188580, 28.823500>,  <30.142530, 37.341972, 29.043636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439196, 37.188580, 28.823500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025628, -0.803661, 0.594535,
		-0.670284, -0.455048, -0.586217,
		0.741662, -0.383483, -0.550343,
		30.661694, 37.073536, 28.658396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070736, 36.594334, 29.133020>,  <30.142530, 37.341972, 29.043636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070736, 36.594334, 29.133020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449228, 36.637169, 29.010921>,  <30.676325, 36.662868, 28.937662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.449228, 36.637169, 29.010921>,  <30.070736, 36.594334, 29.133020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449228, 36.637169, 29.010921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254501, -0.828917, 0.498123,
		-0.199683, -0.549026, -0.811602,
		0.946233, 0.107087, -0.305248,
		30.733099, 36.669296, 28.919348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308193, 35.878582, 29.010542>,  <30.070736, 36.594334, 29.133020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308193, 35.878582, 29.010542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.644621, 36.094135, 28.991756>,  <30.846478, 36.223469, 28.980484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.644621, 36.094135, 28.991756>,  <30.308193, 35.878582, 29.010542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644621, 36.094135, 28.991756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516687, -0.774651, 0.364623,
		0.160108, -0.330940, -0.929970,
		0.841071, 0.538883, -0.046965,
		30.896942, 36.255798, 28.977667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748857, 35.479332, 28.652483>,  <30.308193, 35.878582, 29.010542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748857, 35.479332, 28.652483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978310, 35.724491, 28.869854>,  <31.115980, 35.871586, 29.000277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.978310, 35.724491, 28.869854>,  <30.748857, 35.479332, 28.652483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978310, 35.724491, 28.869854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559421, -0.777741, 0.286649,
		0.598329, 0.139573, -0.789000,
		0.573629, 0.612894, 0.543425,
		31.150398, 35.908360, 29.032881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502996, 35.331367, 28.478460>,  <30.748857, 35.479332, 28.652483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502996, 35.331367, 28.478460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470163, 35.487823, 28.845125>,  <31.450464, 35.581699, 29.065125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.470163, 35.487823, 28.845125>,  <31.502996, 35.331367, 28.478460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470163, 35.487823, 28.845125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420130, -0.820468, 0.387715,
		0.903744, 0.416942, -0.096986,
		-0.082081, 0.391142, 0.916663,
		31.445539, 35.605167, 29.120125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140442, 35.163639, 28.760090>,  <31.502996, 35.331367, 28.478460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140442, 35.163639, 28.760090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944572, 35.286266, 29.086582>,  <31.827049, 35.359844, 29.282478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.944572, 35.286266, 29.086582>,  <32.140442, 35.163639, 28.760090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944572, 35.286266, 29.086582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455108, -0.708629, 0.539186,
		0.743703, 0.635500, 0.207476,
		-0.489676, 0.306571, 0.816230,
		31.797670, 35.378239, 29.331451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596916, 35.145885, 29.253819>,  <32.140442, 35.163639, 28.760090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596916, 35.145885, 29.253819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252522, 35.128433, 29.456522>,  <32.045887, 35.117962, 29.578144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.252522, 35.128433, 29.456522>,  <32.596916, 35.145885, 29.253819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252522, 35.128433, 29.456522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366467, -0.744121, 0.558556,
		0.352717, 0.666618, 0.656666,
		-0.860983, -0.043634, 0.506758,
		31.994226, 35.115341, 29.608549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213768, 35.370701, 29.420055>,  <32.596916, 35.145885, 29.253819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213768, 35.370701, 29.420055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483570, 35.169353, 29.204033>,  <33.645451, 35.048546, 29.074419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.483570, 35.169353, 29.204033>,  <33.213768, 35.370701, 29.420055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483570, 35.169353, 29.204033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100532, 0.662079, -0.742660,
		0.731390, 0.555223, 0.395974,
		0.674509, -0.503367, -0.540056,
		33.685925, 35.018345, 29.042017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934704, 35.786331, 29.227085>,  <33.213768, 35.370701, 29.420055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934704, 35.786331, 29.227085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878819, 35.514690, 28.938833>,  <33.845287, 35.351707, 28.765882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.878819, 35.514690, 28.938833>,  <33.934704, 35.786331, 29.227085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878819, 35.514690, 28.938833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049309, 0.722093, -0.690036,
		0.988964, -0.131939, -0.067399,
		-0.139711, -0.679097, -0.720630,
		33.836906, 35.310963, 28.722645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408325, 36.088200, 28.653490>,  <33.934704, 35.786331, 29.227085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408325, 36.088200, 28.653490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179459, 35.804588, 28.488613>,  <34.042137, 35.634422, 28.389687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.179459, 35.804588, 28.488613>,  <34.408325, 36.088200, 28.653490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179459, 35.804588, 28.488613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064002, 0.462456, -0.884330,
		0.817634, -0.532368, -0.219224,
		-0.572170, -0.709028, -0.412192,
		34.007809, 35.591881, 28.364956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732079, 35.877720, 28.013454>,  <34.408325, 36.088200, 28.653490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732079, 35.877720, 28.013454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356419, 35.750984, 27.960373>,  <34.131023, 35.674942, 27.928524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.356419, 35.750984, 27.960373>,  <34.732079, 35.877720, 28.013454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356419, 35.750984, 27.960373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026902, 0.452976, -0.891117,
		0.342449, -0.833324, -0.433936,
		-0.939151, -0.316835, -0.132703,
		34.074673, 35.655933, 27.920563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709793, 35.641911, 27.331383>,  <34.732079, 35.877720, 28.013454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709793, 35.641911, 27.331383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336708, 35.730732, 27.445040>,  <34.112858, 35.784023, 27.513235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.336708, 35.730732, 27.445040>,  <34.709793, 35.641911, 27.331383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336708, 35.730732, 27.445040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127104, 0.534951, -0.835268,
		-0.337474, -0.815182, -0.470733,
		-0.932714, 0.222050, 0.284145,
		34.056892, 35.797348, 27.530283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460880, 35.768429, 26.669798>,  <34.709793, 35.641911, 27.331383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460880, 35.768429, 26.669798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167831, 35.898834, 26.908791>,  <33.992001, 35.977077, 27.052187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167831, 35.898834, 26.908791>,  <34.460880, 35.768429, 26.669798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167831, 35.898834, 26.908791> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366018, 0.551392, -0.749665,
		-0.573845, -0.767909, -0.284636,
		-0.732621, 0.326009, 0.597482,
		33.948044, 35.996635, 27.088036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837074, 35.804943, 26.221445>,  <34.460880, 35.768429, 26.669798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837074, 35.804943, 26.221445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.783760, 36.049541, 26.533421>,  <33.751770, 36.196301, 26.720606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.783760, 36.049541, 26.533421>,  <33.837074, 35.804943, 26.221445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783760, 36.049541, 26.533421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415584, 0.679948, -0.604120,
		-0.899736, -0.404652, 0.163500,
		-0.133287, 0.611496, 0.779940,
		33.743774, 36.232990, 26.767403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249199, 36.180836, 26.163250>,  <33.837074, 35.804943, 26.221445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249199, 36.180836, 26.163250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455002, 36.428085, 26.400970>,  <33.578484, 36.576435, 26.543604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.455002, 36.428085, 26.400970>,  <33.249199, 36.180836, 26.163250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455002, 36.428085, 26.400970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210299, 0.762874, -0.611390,
		-0.831295, 0.189586, 0.522499,
		0.514512, 0.618127, 0.594303,
		33.609356, 36.613522, 26.579262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977409, 36.733704, 25.966724>,  <33.249199, 36.180836, 26.163250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977409, 36.733704, 25.966724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.254372, 36.902378, 26.200909>,  <33.420547, 37.003582, 26.341419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.254372, 36.902378, 26.200909>,  <32.977409, 36.733704, 25.966724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254372, 36.902378, 26.200909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021201, 0.799193, -0.600700,
		-0.721200, 0.428339, 0.544423,
		0.692402, 0.421683, 0.585459,
		33.462093, 37.028881, 26.376547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698761, 37.376617, 26.201790>,  <32.977409, 36.733704, 25.966724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698761, 37.376617, 26.201790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097851, 37.401836, 26.192289>,  <33.337307, 37.416969, 26.186588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.097851, 37.401836, 26.192289>,  <32.698761, 37.376617, 26.201790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097851, 37.401836, 26.192289> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066832, 0.881541, -0.467354,
		-0.008529, 0.467879, 0.883751,
		0.997728, 0.063049, -0.023751,
		33.397171, 37.420750, 26.185163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849716, 38.057178, 26.306263>,  <32.698761, 37.376617, 26.201790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849716, 38.057178, 26.306263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196663, 37.923393, 26.158854>,  <33.404831, 37.843124, 26.070408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196663, 37.923393, 26.158854>,  <32.849716, 38.057178, 26.306263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196663, 37.923393, 26.158854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120589, 0.859681, -0.496393,
		0.482837, 0.386115, 0.785992,
		0.867368, -0.334459, -0.368525,
		33.456875, 37.823055, 26.048296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292202, 38.564415, 26.514576>,  <32.849716, 38.057178, 26.306263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292202, 38.564415, 26.514576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459484, 38.367420, 26.209274>,  <33.559853, 38.249222, 26.026094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459484, 38.367420, 26.209274>,  <33.292202, 38.564415, 26.514576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459484, 38.367420, 26.209274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153570, 0.866501, -0.474966,
		0.895275, 0.081423, 0.438010,
		0.418209, -0.492491, -0.763253,
		33.584946, 38.219673, 25.980299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937744, 38.923447, 26.456793>,  <33.292202, 38.564415, 26.514576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937744, 38.923447, 26.456793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.852455, 38.716606, 26.125217>,  <33.801281, 38.592503, 25.926271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.852455, 38.716606, 26.125217>,  <33.937744, 38.923447, 26.456793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.852455, 38.716606, 26.125217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097737, 0.832904, -0.544719,
		0.972102, -0.197165, -0.127056,
		-0.213225, -0.517104, -0.828938,
		33.788486, 38.561474, 25.876535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329914, 39.229420, 25.884594>,  <33.937744, 38.923447, 26.456793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329914, 39.229420, 25.884594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040218, 39.033031, 25.690924>,  <33.866402, 38.915199, 25.574722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.040218, 39.033031, 25.690924>,  <34.329914, 39.229420, 25.884594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040218, 39.033031, 25.690924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215635, 0.828207, -0.517276,
		0.654965, -0.270226, -0.705691,
		-0.724239, -0.490969, -0.484176,
		33.822948, 38.885742, 25.545671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061504, 38.886734, 25.732117>,  <34.329914, 39.229420, 25.884594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061504, 38.886734, 25.732117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406406, 39.076817, 25.662041>,  <35.613350, 39.190865, 25.619995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.406406, 39.076817, 25.662041>,  <35.061504, 38.886734, 25.732117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406406, 39.076817, 25.662041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496855, -0.726605, 0.474533,
		0.098205, -0.496215, -0.862628,
		0.862259, 0.475202, -0.175190,
		35.665085, 39.219376, 25.609484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521782, 38.403545, 25.358843>,  <35.061504, 38.886734, 25.732117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521782, 38.403545, 25.358843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771835, 38.668877, 25.523378>,  <35.921867, 38.828075, 25.622101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.771835, 38.668877, 25.523378>,  <35.521782, 38.403545, 25.358843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771835, 38.668877, 25.523378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415747, -0.729012, 0.543780,
		0.660579, -0.168921, -0.731507,
		0.625133, 0.663331, 0.411341,
		35.959373, 38.867874, 25.646780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064789, 38.111572, 25.289860>,  <35.521782, 38.403545, 25.358843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064789, 38.111572, 25.289860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.160839, 38.384541, 25.566015>,  <36.218472, 38.548321, 25.731709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.160839, 38.384541, 25.566015>,  <36.064789, 38.111572, 25.289860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160839, 38.384541, 25.566015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391062, -0.718938, 0.574629,
		0.888486, 0.131999, -0.439509,
		0.240130, 0.682425, 0.690386,
		36.232880, 38.589268, 25.773130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732815, 37.908031, 25.508097>,  <36.064789, 38.111572, 25.289860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732815, 37.908031, 25.508097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591663, 38.141285, 25.800789>,  <36.506973, 38.281239, 25.976404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591663, 38.141285, 25.800789>,  <36.732815, 37.908031, 25.508097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591663, 38.141285, 25.800789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287923, -0.676418, 0.677908,
		0.890270, 0.449898, 0.070793,
		-0.352875, 0.583138, 0.731731,
		36.485802, 38.316227, 26.020308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250549, 38.197330, 25.955503>,  <36.732815, 37.908031, 25.508097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250549, 38.197330, 25.955503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913616, 38.184036, 26.170679>,  <36.711456, 38.176060, 26.299784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.913616, 38.184036, 26.170679>,  <37.250549, 38.197330, 25.955503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913616, 38.184036, 26.170679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460971, -0.561583, 0.687118,
		0.279262, 0.826753, 0.488357,
		-0.842330, -0.033232, 0.537937,
		36.660919, 38.174068, 26.332060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502010, 38.164204, 26.704073>,  <37.250549, 38.197330, 25.955503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502010, 38.164204, 26.704073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112484, 38.084240, 26.747358>,  <36.878769, 38.036263, 26.773331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.112484, 38.084240, 26.747358>,  <37.502010, 38.164204, 26.704073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112484, 38.084240, 26.747358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206532, -0.579189, 0.788597,
		-0.094973, 0.790301, 0.605314,
		-0.973820, -0.199912, 0.108215,
		36.820339, 38.024265, 26.779823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383457, 38.199806, 27.402061>,  <37.502010, 38.164204, 26.704073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383457, 38.199806, 27.402061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064045, 37.995785, 27.274187>,  <36.872398, 37.873371, 27.197462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.064045, 37.995785, 27.274187>,  <37.383457, 38.199806, 27.402061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064045, 37.995785, 27.274187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037685, -0.572397, 0.819110,
		-0.600776, 0.642035, 0.476297,
		-0.798528, -0.510051, -0.319687,
		36.824486, 37.842770, 27.178282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891914, 38.206261, 27.985600>,  <37.383457, 38.199806, 27.402061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891914, 38.206261, 27.985600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832760, 37.883080, 27.757446>,  <36.797268, 37.689171, 27.620554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.832760, 37.883080, 27.757446>,  <36.891914, 38.206261, 27.985600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832760, 37.883080, 27.757446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009247, -0.575571, 0.817700,
		-0.988961, 0.126203, 0.077650,
		-0.147889, -0.807955, -0.570384,
		36.788395, 37.640694, 27.586330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606949, 37.830811, 28.464785>,  <36.891914, 38.206261, 27.985600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606949, 37.830811, 28.464785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732334, 37.577843, 28.181438>,  <36.807568, 37.426064, 28.011431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.732334, 37.577843, 28.181438>,  <36.606949, 37.830811, 28.464785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732334, 37.577843, 28.181438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174319, -0.694963, 0.697595,
		-0.933462, -0.342155, -0.107606,
		0.313468, -0.632421, -0.708365,
		36.826374, 37.388115, 27.968929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417770, 37.216156, 28.665985>,  <36.606949, 37.830811, 28.464785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417770, 37.216156, 28.665985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678459, 37.110558, 28.381571>,  <36.834873, 37.047199, 28.210922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678459, 37.110558, 28.381571>,  <36.417770, 37.216156, 28.665985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678459, 37.110558, 28.381571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297221, -0.773596, 0.559650,
		-0.697798, -0.576068, -0.425702,
		0.651718, -0.263995, -0.711034,
		36.873974, 37.031361, 28.168261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236256, 36.587978, 28.562204>,  <36.417770, 37.216156, 28.665985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236256, 36.587978, 28.562204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618122, 36.638874, 28.454559>,  <36.847240, 36.669411, 28.389973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.618122, 36.638874, 28.454559>,  <36.236256, 36.587978, 28.562204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618122, 36.638874, 28.454559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269335, -0.754196, 0.598871,
		-0.126763, -0.644204, -0.754276,
		0.954667, 0.127239, -0.269111,
		36.904522, 36.677044, 28.373827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529305, 35.933704, 28.539850>,  <36.236256, 36.587978, 28.562204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529305, 35.933704, 28.539850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868324, 36.144680, 28.563400>,  <37.071735, 36.271267, 28.577530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868324, 36.144680, 28.563400>,  <36.529305, 35.933704, 28.539850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868324, 36.144680, 28.563400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471303, -0.799021, 0.373415,
		0.243995, -0.288741, -0.925794,
		0.847549, 0.527441, 0.058873,
		37.122589, 36.302914, 28.581062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061932, 35.439415, 28.448479>,  <36.529305, 35.933704, 28.539850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061932, 35.439415, 28.448479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229912, 35.757336, 28.623716>,  <37.330700, 35.948090, 28.728859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229912, 35.757336, 28.623716>,  <37.061932, 35.439415, 28.448479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229912, 35.757336, 28.623716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471613, -0.603545, 0.642895,
		0.775387, -0.063372, -0.628299,
		0.419948, 0.794806, 0.438094,
		37.355896, 35.995777, 28.755144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749550, 35.231075, 28.489143>,  <37.061932, 35.439415, 28.448479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.749550, 35.231075, 28.489143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681404, 35.499332, 28.777924>,  <37.640514, 35.660286, 28.951191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.681404, 35.499332, 28.777924>,  <37.749550, 35.231075, 28.489143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681404, 35.499332, 28.777924> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497676, -0.573787, 0.650452,
		0.850467, 0.470113, -0.236009,
		-0.170367, 0.670643, 0.721950,
		37.630295, 35.700527, 28.994509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.545948, 41.778755, 26.727306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.170105, 41.670513, 26.811121>,  <38.944599, 41.605568, 26.861410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.170105, 41.670513, 26.811121>,  <39.545948, 41.778755, 26.727306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170105, 41.670513, 26.811121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307146, 0.396642, -0.865065,
		0.150983, -0.877181, -0.455805,
		-0.939609, -0.270609, 0.209537,
		38.888222, 41.589329, 26.873981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354160, 41.573650, 26.148109>,  <39.545948, 41.778755, 26.727306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354160, 41.573650, 26.148109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021988, 41.651646, 26.356861>,  <38.822685, 41.698444, 26.482111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.021988, 41.651646, 26.356861>,  <39.354160, 41.573650, 26.148109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021988, 41.651646, 26.356861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430811, 0.369193, -0.823467,
		-0.353243, -0.908666, -0.222586,
		-0.830435, 0.194991, 0.521878,
		38.772858, 41.710144, 26.513424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886211, 41.500057, 25.722570>,  <39.354160, 41.573650, 26.148109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886211, 41.500057, 25.722570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633389, 41.693573, 25.964712>,  <38.481697, 41.809685, 26.109997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.633389, 41.693573, 25.964712>,  <38.886211, 41.500057, 25.722570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633389, 41.693573, 25.964712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390265, 0.476152, -0.788018,
		-0.669478, -0.734318, -0.112146,
		-0.632054, 0.483794, 0.605352,
		38.443771, 41.838711, 26.146318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198444, 41.539200, 25.460075>,  <38.886211, 41.500057, 25.722570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198444, 41.539200, 25.460075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.156651, 41.838554, 25.722067>,  <38.131573, 42.018169, 25.879261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.156651, 41.838554, 25.722067>,  <38.198444, 41.539200, 25.460075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156651, 41.838554, 25.722067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577114, 0.490730, -0.652781,
		-0.809952, -0.446203, 0.380631,
		-0.104486, 0.748389, 0.654978,
		38.125305, 42.063072, 25.918560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492050, 41.678810, 25.579710>,  <38.198444, 41.539200, 25.460075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492050, 41.678810, 25.579710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704857, 42.002647, 25.678926>,  <37.832542, 42.196949, 25.738457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.704857, 42.002647, 25.678926>,  <37.492050, 41.678810, 25.579710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704857, 42.002647, 25.678926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633334, 0.574907, -0.518045,
		-0.562003, 0.118516, 0.818600,
		0.532015, 0.809590, 0.248039,
		37.864460, 42.245525, 25.753338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063354, 42.084812, 25.845390>,  <37.492050, 41.678810, 25.579710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063354, 42.084812, 25.845390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365459, 42.315926, 25.721621>,  <37.546722, 42.454594, 25.647360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.365459, 42.315926, 25.721621>,  <37.063354, 42.084812, 25.845390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365459, 42.315926, 25.721621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627601, 0.501451, -0.595537,
		-0.188933, 0.643980, 0.741346,
		0.755262, 0.577786, -0.309422,
		37.592037, 42.489262, 25.628794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688587, 42.572567, 25.492641>,  <37.063354, 42.084812, 25.845390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688587, 42.572567, 25.492641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064060, 42.683945, 25.411308>,  <37.289345, 42.750771, 25.362509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.064060, 42.683945, 25.411308>,  <36.688587, 42.572567, 25.492641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064060, 42.683945, 25.411308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338430, 0.631419, -0.697693,
		-0.065882, 0.723725, 0.686936,
		0.938683, 0.278445, -0.203331,
		37.345665, 42.767479, 25.350309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815933, 43.365433, 25.627924>,  <36.688587, 42.572567, 25.492641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815933, 43.365433, 25.627924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.082573, 43.264008, 25.347538>,  <37.242558, 43.203152, 25.179306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.082573, 43.264008, 25.347538>,  <36.815933, 43.365433, 25.627924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.082573, 43.264008, 25.347538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378462, 0.695021, -0.611320,
		0.642193, 0.672794, 0.367336,
		0.666599, -0.253563, -0.700965,
		37.282551, 43.187939, 25.137249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903812, 44.065479, 25.355217>,  <36.815933, 43.365433, 25.627924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903812, 44.065479, 25.355217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090355, 43.820065, 25.100321>,  <37.202282, 43.672813, 24.947382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.090355, 43.820065, 25.100321>,  <36.903812, 44.065479, 25.355217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090355, 43.820065, 25.100321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193678, 0.632079, -0.750310,
		0.863132, 0.473335, 0.175948,
		0.466361, -0.613539, -0.637242,
		37.230263, 43.636002, 24.909147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434376, 44.427204, 24.860653>,  <36.903812, 44.065479, 25.355217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434376, 44.427204, 24.860653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305992, 44.097111, 24.674761>,  <37.228962, 43.899055, 24.563227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.305992, 44.097111, 24.674761>,  <37.434376, 44.427204, 24.860653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305992, 44.097111, 24.674761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185086, 0.535882, -0.823756,
		0.928831, -0.178378, -0.324736,
		-0.320960, -0.825234, -0.464729,
		37.209705, 43.849541, 24.535341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817757, 44.440475, 24.165323>,  <37.434376, 44.427204, 24.860653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817757, 44.440475, 24.165323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530434, 44.166916, 24.114237>,  <37.358040, 44.002781, 24.083586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.530434, 44.166916, 24.114237>,  <37.817757, 44.440475, 24.165323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530434, 44.166916, 24.114237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209290, 0.387483, -0.897806,
		0.663498, -0.618173, -0.421466,
		-0.718309, -0.683900, -0.127716,
		37.314941, 43.961746, 24.075922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901268, 44.132301, 23.467136>,  <37.817757, 44.440475, 24.165323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901268, 44.132301, 23.467136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523350, 44.086342, 23.589876>,  <37.296597, 44.058765, 23.663521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.523350, 44.086342, 23.589876>,  <37.901268, 44.132301, 23.467136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523350, 44.086342, 23.589876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324811, 0.451569, -0.831014,
		-0.043082, -0.884807, -0.463961,
		-0.944797, -0.114898, 0.306849,
		37.239910, 44.051872, 23.681931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421986, 44.176239, 22.908247>,  <37.901268, 44.132301, 23.467136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421986, 44.176239, 22.908247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181984, 44.242424, 23.221325>,  <37.037983, 44.282135, 23.409172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.181984, 44.242424, 23.221325>,  <37.421986, 44.176239, 22.908247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181984, 44.242424, 23.221325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506396, 0.678856, -0.531712,
		-0.619317, -0.715385, -0.323527,
		-0.600008, 0.165466, 0.782695,
		37.001980, 44.292065, 23.456133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720798, 43.893158, 22.739374>,  <37.421986, 44.176239, 22.908247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720798, 43.893158, 22.739374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749977, 44.210304, 22.981379>,  <36.767487, 44.400593, 23.126581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.749977, 44.210304, 22.981379>,  <36.720798, 43.893158, 22.739374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749977, 44.210304, 22.981379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563133, 0.533421, -0.631144,
		-0.823140, -0.294660, 0.485403,
		0.072951, 0.792867, 0.605013,
		36.771862, 44.448166, 23.162882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048218, 43.850006, 22.396778>,  <36.720798, 43.893158, 22.739374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048218, 43.850006, 22.396778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.844975, 43.643410, 22.121078>,  <35.723026, 43.519451, 21.955658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.844975, 43.643410, 22.121078>,  <36.048218, 43.850006, 22.396778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844975, 43.643410, 22.121078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323486, -0.627224, 0.708482,
		-0.798236, 0.582949, 0.151622,
		-0.508110, -0.516489, -0.689249,
		35.692543, 43.488464, 21.914305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449883, 43.704239, 22.643118>,  <36.048218, 43.850006, 22.396778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449883, 43.704239, 22.643118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461056, 43.407516, 22.375105>,  <35.467758, 43.229485, 22.214296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.461056, 43.407516, 22.375105>,  <35.449883, 43.704239, 22.643118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461056, 43.407516, 22.375105> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138948, -0.666667, 0.732289,
		-0.989906, 0.072647, -0.121693,
		0.027930, -0.741806, -0.670032,
		35.469437, 43.184975, 22.174095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031498, 43.161938, 22.929846>,  <35.449883, 43.704239, 22.643118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031498, 43.161938, 22.929846> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252117, 42.989174, 22.644400>,  <35.384491, 42.885517, 22.473131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.252117, 42.989174, 22.644400>,  <35.031498, 43.161938, 22.929846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252117, 42.989174, 22.644400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132903, -0.799080, 0.586352,
		-0.823484, -0.418246, -0.383333,
		0.551553, -0.431905, -0.713615,
		35.417583, 42.859600, 22.430315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650284, 42.461411, 22.756861>,  <35.031498, 43.161938, 22.929846>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650284, 42.461411, 22.756861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026272, 42.444454, 22.621420>,  <35.251865, 42.434280, 22.540155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026272, 42.444454, 22.621420>,  <34.650284, 42.461411, 22.756861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026272, 42.444454, 22.621420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163888, -0.814254, 0.556894,
		-0.299316, -0.578959, -0.758430,
		0.939974, -0.042389, -0.338603,
		35.308266, 42.431736, 22.519838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715694, 41.774601, 22.420307>,  <34.650284, 42.461411, 22.756861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715694, 41.774601, 22.420307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073483, 41.924431, 22.517977>,  <35.288155, 42.014328, 22.576578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073483, 41.924431, 22.517977>,  <34.715694, 41.774601, 22.420307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073483, 41.924431, 22.517977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159768, -0.777783, 0.607888,
		0.417612, -0.504726, -0.755547,
		0.894469, 0.374574, 0.244172,
		35.341824, 42.036804, 22.591228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170174, 41.209347, 22.393377>,  <34.715694, 41.774601, 22.420307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170174, 41.209347, 22.393377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395649, 41.465370, 22.602213>,  <35.530933, 41.618984, 22.727514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395649, 41.465370, 22.602213>,  <35.170174, 41.209347, 22.393377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395649, 41.465370, 22.602213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242950, -0.732595, 0.635830,
		0.789449, -0.231570, -0.568459,
		0.563689, 0.640063, 0.522087,
		35.564754, 41.657391, 22.758839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786865, 40.902882, 22.564259>,  <35.170174, 41.209347, 22.393377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786865, 40.902882, 22.564259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748234, 41.190155, 22.839907>,  <35.725056, 41.362518, 23.005295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.748234, 41.190155, 22.839907>,  <35.786865, 40.902882, 22.564259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748234, 41.190155, 22.839907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313453, -0.635181, 0.705898,
		0.944680, 0.284180, -0.163772,
		-0.096577, 0.718182, 0.689120,
		35.719261, 41.405609, 23.046642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363609, 40.705818, 23.053577>,  <35.786865, 40.902882, 22.564259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363609, 40.705818, 23.053577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114384, 40.949120, 23.250277>,  <35.964848, 41.095100, 23.368296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114384, 40.949120, 23.250277>,  <36.363609, 40.705818, 23.053577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114384, 40.949120, 23.250277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166870, -0.510853, 0.843317,
		0.764165, 0.607497, 0.216793,
		-0.623062, 0.608257, 0.491749,
		35.927464, 41.131596, 23.397800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645069, 40.723137, 23.744192>,  <36.363609, 40.705818, 23.053577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645069, 40.723137, 23.744192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283627, 40.890987, 23.778620>,  <36.066761, 40.991695, 23.799276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283627, 40.890987, 23.778620>,  <36.645069, 40.723137, 23.744192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283627, 40.890987, 23.778620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138738, -0.476789, 0.868000,
		0.405268, 0.772392, 0.489049,
		-0.903609, 0.419622, 0.086067,
		36.012543, 41.016872, 23.804440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653522, 41.056850, 24.441463>,  <36.645069, 40.723137, 23.744192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653522, 41.056850, 24.441463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275753, 40.976738, 24.337194>,  <36.049091, 40.928669, 24.274633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.275753, 40.976738, 24.337194>,  <36.653522, 41.056850, 24.441463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275753, 40.976738, 24.337194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111809, -0.549990, 0.827653,
		-0.309133, 0.810801, 0.497030,
		-0.944423, -0.200283, -0.260675,
		35.992428, 40.916653, 24.258991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177078, 41.134182, 25.063993>,  <36.653522, 41.056850, 24.441463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177078, 41.134182, 25.063993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922047, 40.915985, 24.846394>,  <35.769028, 40.785069, 24.715834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922047, 40.915985, 24.846394>,  <36.177078, 41.134182, 25.063993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922047, 40.915985, 24.846394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147895, -0.606337, 0.781334,
		-0.756054, 0.578618, 0.305914,
		-0.637581, -0.545488, -0.543998,
		35.730774, 40.752338, 24.683195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587502, 41.032104, 25.441738>,  <36.177078, 41.134182, 25.063993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587502, 41.032104, 25.441738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587624, 40.731678, 25.177649>,  <35.587696, 40.551422, 25.019196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.587624, 40.731678, 25.177649>,  <35.587502, 41.032104, 25.441738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587624, 40.731678, 25.177649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013247, -0.660168, 0.751001,
		-0.999912, 0.008517, -0.010151,
		0.000306, -0.751069, -0.660223,
		35.587715, 40.506355, 24.979582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111881, 40.500565, 25.760283>,  <35.587502, 41.032104, 25.441738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111881, 40.500565, 25.760283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 40.298935, 25.480062>,  <35.435154, 40.177956, 25.311930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313927, 40.298935, 25.480062>,  <35.111881, 40.500565, 25.760283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313927, 40.298935, 25.480062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123476, -0.761154, 0.636709,
		-0.854178, -0.408108, -0.322224,
		0.505108, -0.504076, -0.700552,
		35.465458, 40.147713, 25.269897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846283, 39.856327, 25.811892>,  <35.111881, 40.500565, 25.760283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846283, 39.856327, 25.811892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198807, 39.795982, 25.632765>,  <35.410320, 39.759777, 25.525290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198807, 39.795982, 25.632765>,  <34.846283, 39.856327, 25.811892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198807, 39.795982, 25.632765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156714, -0.800730, 0.578163,
		-0.445801, -0.579718, -0.682047,
		0.881307, -0.150859, -0.447816,
		35.463200, 39.750725, 25.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523724, 39.396355, 25.221315>,  <34.846283, 39.856327, 25.811892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523724, 39.396355, 25.221315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154121, 39.244335, 25.204453>,  <33.932362, 39.153126, 25.194334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.154121, 39.244335, 25.204453>,  <34.523724, 39.396355, 25.221315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154121, 39.244335, 25.204453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313645, 0.816361, -0.484954,
		0.218721, -0.434878, -0.873523,
		-0.924007, -0.380046, -0.042157,
		33.876919, 39.130322, 25.191805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274090, 39.399578, 24.458687>,  <34.523724, 39.396355, 25.221315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274090, 39.399578, 24.458687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942932, 39.392265, 24.682920>,  <33.744236, 39.387878, 24.817461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.942932, 39.392265, 24.682920>,  <34.274090, 39.399578, 24.458687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942932, 39.392265, 24.682920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370729, 0.767845, -0.522470,
		-0.420894, -0.640375, -0.642470,
		-0.827894, -0.018278, 0.560587,
		33.694565, 39.386784, 24.851097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775257, 39.365917, 23.946207>,  <34.274090, 39.399578, 24.458687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775257, 39.365917, 23.946207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605091, 39.511898, 24.277468>,  <33.502991, 39.599487, 24.476225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.605091, 39.511898, 24.277468>,  <33.775257, 39.365917, 23.946207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605091, 39.511898, 24.277468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387137, 0.753745, -0.531031,
		-0.818015, -0.546515, -0.179366,
		-0.425412, 0.364952, 0.828151,
		33.477467, 39.621384, 24.525913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021404, 39.499985, 23.742474>,  <33.775257, 39.365917, 23.946207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021404, 39.499985, 23.742474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133480, 39.723671, 24.054569>,  <33.200726, 39.857883, 24.241827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.133480, 39.723671, 24.054569>,  <33.021404, 39.499985, 23.742474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133480, 39.723671, 24.054569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507185, 0.776326, -0.374276,
		-0.815019, -0.290856, 0.501145,
		0.280191, 0.559215, 0.780238,
		33.217537, 39.891434, 24.288641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339394, 39.892818, 23.978680>,  <33.021404, 39.499985, 23.742474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339394, 39.892818, 23.978680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634129, 40.103729, 24.147942>,  <32.810970, 40.230274, 24.249498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634129, 40.103729, 24.147942>,  <32.339394, 39.892818, 23.978680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634129, 40.103729, 24.147942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407748, 0.845836, -0.343953,
		-0.539276, 0.080896, 0.838235,
		0.736834, 0.527274, 0.423154,
		32.855179, 40.261909, 24.274887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997623, 40.397427, 24.225010>,  <32.339394, 39.892818, 23.978680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997623, 40.397427, 24.225010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377636, 40.520969, 24.243092>,  <32.605644, 40.595097, 24.253941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377636, 40.520969, 24.243092>,  <31.997623, 40.397427, 24.225010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377636, 40.520969, 24.243092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270606, 0.887093, -0.373950,
		-0.155599, 0.343032, 0.926347,
		0.950032, 0.308861, 0.045204,
		32.662647, 40.613628, 24.256653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076805, 41.061253, 24.631828>,  <31.997623, 40.397427, 24.225010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076805, 41.061253, 24.631828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369911, 41.025013, 24.362057>,  <32.545773, 41.003269, 24.200193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.369911, 41.025013, 24.362057>,  <32.076805, 41.061253, 24.631828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369911, 41.025013, 24.362057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351258, 0.798492, -0.488905,
		0.582819, 0.595149, 0.553280,
		0.732761, -0.090599, -0.674428,
		32.589741, 40.997833, 24.159729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992380, 41.317871, 25.368492>,  <32.076805, 41.061253, 24.631828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992380, 41.317871, 25.368492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627804, 41.457195, 25.456087>,  <31.409058, 41.540791, 25.508644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.627804, 41.457195, 25.456087>,  <31.992380, 41.317871, 25.368492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627804, 41.457195, 25.456087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178757, -0.814637, 0.551735,
		0.370575, 0.463727, 0.804755,
		-0.911439, 0.348315, 0.218990,
		31.354372, 41.561691, 25.521784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889524, 41.311596, 26.155058>,  <31.992380, 41.317871, 25.368492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889524, 41.311596, 26.155058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535526, 41.296345, 25.969444>,  <31.323128, 41.287193, 25.858076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.535526, 41.296345, 25.969444>,  <31.889524, 41.311596, 26.155058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535526, 41.296345, 25.969444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274122, -0.762930, 0.585487,
		-0.376351, 0.645355, 0.664738,
		-0.884996, -0.038129, -0.464035,
		31.270027, 41.284904, 25.830235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.416447, 41.200485, 26.712370>,  <31.889524, 41.311596, 26.155058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.416447, 41.200485, 26.712370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.214838, 41.103302, 26.380844>,  <31.093872, 41.044991, 26.181929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.214838, 41.103302, 26.380844>,  <31.416447, 41.200485, 26.712370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214838, 41.103302, 26.380844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452768, -0.742866, 0.493104,
		-0.735502, 0.623796, 0.264417,
		-0.504023, -0.242960, -0.828813,
		31.063631, 41.030415, 26.132200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786873, 41.065350, 26.974155>,  <31.416447, 41.200485, 26.712370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786873, 41.065350, 26.974155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779850, 40.879940, 26.619793>,  <30.775637, 40.768692, 26.407175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.779850, 40.879940, 26.619793>,  <30.786873, 41.065350, 26.974155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779850, 40.879940, 26.619793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345188, -0.828755, 0.440466,
		-0.938369, 0.313540, -0.145452,
		-0.017559, -0.463528, -0.885908,
		30.774582, 40.740883, 26.354021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079096, 40.747009, 26.789238>,  <30.786873, 41.065350, 26.974155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079096, 40.747009, 26.789238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356644, 40.546574, 26.582375>,  <30.523172, 40.426311, 26.458256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356644, 40.546574, 26.582375>,  <30.079096, 40.747009, 26.789238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356644, 40.546574, 26.582375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318167, -0.857608, 0.404078,
		-0.645999, -0.115834, -0.754498,
		0.693869, -0.501090, -0.517159,
		30.564804, 40.396248, 26.427227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712915, 40.022625, 26.713631>,  <30.079096, 40.747009, 26.789238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712915, 40.022625, 26.713631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082739, 39.952274, 26.578424>,  <30.304634, 39.910065, 26.497301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082739, 39.952274, 26.578424>,  <29.712915, 40.022625, 26.713631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082739, 39.952274, 26.578424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042951, -0.929554, 0.366176,
		-0.378606, -0.324034, -0.866983,
		0.924561, -0.175874, -0.338017,
		30.360107, 39.899513, 26.477020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732616, 39.384529, 26.336132>,  <29.712915, 40.022625, 26.713631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732616, 39.384529, 26.336132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110266, 39.422203, 26.462471>,  <30.336855, 39.444809, 26.538275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.110266, 39.422203, 26.462471>,  <29.732616, 39.384529, 26.336132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110266, 39.422203, 26.462471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075472, -0.871055, 0.485352,
		0.320833, -0.482071, -0.815276,
		0.944124, 0.094186, 0.315846,
		30.393503, 39.450459, 26.557224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.912361, 45.425407, 24.848133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111732, 45.243652, 24.552807>,  <34.231354, 45.134602, 24.375612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.111732, 45.243652, 24.552807>,  <33.912361, 45.425407, 24.848133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111732, 45.243652, 24.552807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375409, -0.654525, 0.656251,
		-0.781435, -0.604261, -0.155651,
		0.498424, -0.454385, -0.738314,
		34.261261, 45.107338, 24.331312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752708, 44.789375, 24.588717>,  <33.912361, 45.425407, 24.848133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752708, 44.789375, 24.588717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.150482, 44.820168, 24.559942>,  <34.389145, 44.838642, 24.542677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.150482, 44.820168, 24.559942>,  <33.752708, 44.789375, 24.588717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150482, 44.820168, 24.559942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102333, -0.868165, 0.485610,
		-0.025071, -0.490268, -0.871211,
		0.994434, 0.076979, -0.071936,
		34.448811, 44.843262, 24.538361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953339, 44.205776, 24.428801>,  <33.752708, 44.789375, 24.588717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953339, 44.205776, 24.428801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.291061, 44.352406, 24.585144>,  <34.493694, 44.440384, 24.678951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.291061, 44.352406, 24.585144>,  <33.953339, 44.205776, 24.428801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291061, 44.352406, 24.585144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044621, -0.774969, 0.630423,
		0.533999, -0.514830, -0.670668,
		0.844307, 0.366571, 0.390860,
		34.544353, 44.462376, 24.702402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.369644, 43.657497, 24.436485>,  <33.953339, 44.205776, 24.428801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.369644, 43.657497, 24.436485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563377, 43.917019, 24.671251>,  <34.679619, 44.072731, 24.812111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563377, 43.917019, 24.671251>,  <34.369644, 43.657497, 24.436485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563377, 43.917019, 24.671251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062491, -0.694794, 0.716489,
		0.872647, -0.310345, -0.377059,
		0.484337, 0.648805, 0.586916,
		34.708679, 44.111660, 24.847326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999168, 43.243942, 24.772514>,  <34.369644, 43.657497, 24.436485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999168, 43.243942, 24.772514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.960293, 43.565613, 25.007069>,  <34.936970, 43.758617, 25.147802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.960293, 43.565613, 25.007069>,  <34.999168, 43.243942, 24.772514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960293, 43.565613, 25.007069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237580, -0.553399, 0.798314,
		0.966494, 0.216899, -0.137274,
		-0.097186, 0.804179, 0.586388,
		34.931137, 43.806866, 25.182985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609810, 43.318439, 25.248243>,  <34.999168, 43.243942, 24.772514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609810, 43.318439, 25.248243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.312702, 43.513710, 25.431534>,  <35.134438, 43.630875, 25.541508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.312702, 43.513710, 25.431534>,  <35.609810, 43.318439, 25.248243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312702, 43.513710, 25.431534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186478, -0.506473, 0.841850,
		0.643054, 0.710751, 0.285158,
		-0.742771, 0.488179, 0.458228,
		35.089870, 43.660164, 25.569002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911102, 43.486633, 25.940289>,  <35.609810, 43.318439, 25.248243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911102, 43.486633, 25.940289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514572, 43.529625, 25.970552>,  <35.276653, 43.555420, 25.988710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.514572, 43.529625, 25.970552>,  <35.911102, 43.486633, 25.940289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514572, 43.529625, 25.970552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007103, -0.530992, 0.847347,
		0.131244, 0.840533, 0.525622,
		-0.991325, 0.107475, 0.075660,
		35.217175, 43.561867, 25.993250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804611, 43.832275, 26.602278>,  <35.911102, 43.486633, 25.940289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804611, 43.832275, 26.602278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.458801, 43.659618, 26.499290>,  <35.251316, 43.556026, 26.437498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.458801, 43.659618, 26.499290>,  <35.804611, 43.832275, 26.602278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458801, 43.659618, 26.499290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081254, -0.385507, 0.919120,
		-0.495985, 0.815519, 0.298206,
		-0.864521, -0.431639, -0.257470,
		35.199444, 43.530125, 26.422050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372932, 44.077366, 27.201593>,  <35.804611, 43.832275, 26.602278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372932, 44.077366, 27.201593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.197586, 43.760574, 27.031603>,  <35.092377, 43.570499, 26.929607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.197586, 43.760574, 27.031603>,  <35.372932, 44.077366, 27.201593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197586, 43.760574, 27.031603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040124, -0.455115, 0.889529,
		-0.897900, 0.406992, 0.167730,
		-0.438367, -0.791978, -0.424978,
		35.066074, 43.522980, 26.904110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861877, 43.876118, 27.718258>,  <35.372932, 44.077366, 27.201593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861877, 43.876118, 27.718258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.882515, 43.565067, 27.467613>,  <34.894897, 43.378437, 27.317226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.882515, 43.565067, 27.467613>,  <34.861877, 43.876118, 27.718258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882515, 43.565067, 27.467613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034521, -0.628459, 0.777076,
		-0.998071, -0.018458, -0.059267,
		0.051590, -0.777623, -0.626610,
		34.897991, 43.331779, 27.279631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311245, 43.474876, 27.858135>,  <34.861877, 43.876118, 27.718258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311245, 43.474876, 27.858135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570835, 43.223385, 27.686771>,  <34.726589, 43.072491, 27.583954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.570835, 43.223385, 27.686771>,  <34.311245, 43.474876, 27.858135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570835, 43.223385, 27.686771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041944, -0.591805, 0.804989,
		-0.759652, -0.504449, -0.410438,
		0.648975, -0.628727, -0.428408,
		34.765530, 43.034767, 27.558249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990425, 42.756428, 27.999102>,  <34.311245, 43.474876, 27.858135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990425, 42.756428, 27.999102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382538, 42.736080, 27.922720>,  <34.617805, 42.723873, 27.876892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.382538, 42.736080, 27.922720>,  <33.990425, 42.756428, 27.999102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382538, 42.736080, 27.922720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136374, -0.525177, 0.839995,
		-0.143012, -0.849472, -0.507884,
		0.980281, -0.050867, -0.190953,
		34.676620, 42.720821, 27.865435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369995, 42.315395, 27.919043>,  <33.990425, 42.756428, 27.999102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369995, 42.315395, 27.919043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.038055, 42.432182, 28.109247>,  <32.838894, 42.502254, 28.223370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.038055, 42.432182, 28.109247>,  <33.369995, 42.315395, 27.919043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038055, 42.432182, 28.109247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059946, 0.800604, -0.596187,
		-0.554762, -0.523249, -0.646877,
		-0.829847, 0.291964, 0.475511,
		32.789101, 42.519772, 28.251900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864918, 42.627941, 27.392332>,  <33.369995, 42.315395, 27.919043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864918, 42.627941, 27.392332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749992, 42.762791, 27.750952>,  <32.681038, 42.843700, 27.966124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.749992, 42.762791, 27.750952>,  <32.864918, 42.627941, 27.392332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749992, 42.762791, 27.750952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366317, 0.826185, -0.428053,
		-0.885021, -0.451407, -0.113882,
		-0.287313, 0.337120, 0.896550,
		32.663799, 42.863926, 28.019917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209991, 42.678127, 27.352751>,  <32.864918, 42.627941, 27.392332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209991, 42.678127, 27.352751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.341648, 42.945538, 27.619507>,  <32.420643, 43.105984, 27.779560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.341648, 42.945538, 27.619507>,  <32.209991, 42.678127, 27.352751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341648, 42.945538, 27.619507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410517, 0.737316, -0.536508,
		-0.850376, -0.097182, 0.517123,
		0.329144, 0.668521, 0.666891,
		32.440392, 43.146095, 27.819574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702810, 43.150940, 27.431473>,  <32.209991, 42.678127, 27.352751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702810, 43.150940, 27.431473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027348, 43.340515, 27.568354>,  <32.222069, 43.454262, 27.650482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027348, 43.340515, 27.568354>,  <31.702810, 43.150940, 27.431473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027348, 43.340515, 27.568354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347941, 0.861929, -0.368802,
		-0.469745, 0.180159, 0.864224,
		0.811343, 0.473942, 0.342202,
		32.270752, 43.482697, 27.671015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512362, 43.910217, 27.420696>,  <31.702810, 43.150940, 27.431473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512362, 43.910217, 27.420696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898184, 43.976341, 27.502964>,  <32.129677, 44.016014, 27.552324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.898184, 43.976341, 27.502964>,  <31.512362, 43.910217, 27.420696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898184, 43.976341, 27.502964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060293, 0.896892, -0.438121,
		-0.256890, 0.410192, 0.875071,
		0.964558, 0.165310, 0.205671,
		32.187550, 44.025932, 27.564665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671736, 44.628902, 27.777777>,  <31.512362, 43.910217, 27.420696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671736, 44.628902, 27.777777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.983095, 44.483200, 27.573261>,  <32.169910, 44.395779, 27.450552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.983095, 44.483200, 27.573261>,  <31.671736, 44.628902, 27.777777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983095, 44.483200, 27.573261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072197, 0.860986, -0.503478,
		0.623607, 0.354992, 0.696487,
		0.778397, -0.364257, -0.511288,
		32.216614, 44.373924, 27.419874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300926, 45.119892, 27.853928>,  <31.671736, 44.628902, 27.777777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300926, 45.119892, 27.853928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358849, 44.904373, 27.521969>,  <32.393600, 44.775063, 27.322794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.358849, 44.904373, 27.521969>,  <32.300926, 45.119892, 27.853928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358849, 44.904373, 27.521969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328167, 0.817414, -0.473436,
		0.933455, -0.203788, 0.295181,
		0.144805, -0.538800, -0.829895,
		32.402290, 44.742733, 27.273001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903790, 45.391693, 27.566334>,  <32.300926, 45.119892, 27.853928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903790, 45.391693, 27.566334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714111, 45.223652, 27.256844>,  <32.600304, 45.122826, 27.071148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.714111, 45.223652, 27.256844>,  <32.903790, 45.391693, 27.566334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714111, 45.223652, 27.256844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292946, 0.753455, -0.588633,
		0.830255, -0.505786, -0.234215,
		-0.474193, -0.420103, -0.773728,
		32.571854, 45.097622, 27.024725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415771, 45.533314, 26.945293>,  <32.903790, 45.391693, 27.566334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415771, 45.533314, 26.945293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.054520, 45.426758, 26.810593>,  <32.837769, 45.362823, 26.729773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.054520, 45.426758, 26.810593>,  <33.415771, 45.533314, 26.945293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054520, 45.426758, 26.810593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147521, 0.544037, -0.825991,
		0.403238, -0.795652, -0.452036,
		-0.903126, -0.266387, -0.336752,
		32.783581, 45.346840, 26.709566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518883, 45.390099, 26.313726>,  <33.415771, 45.533314, 26.945293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518883, 45.390099, 26.313726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127186, 45.470970, 26.319511>,  <32.892166, 45.519493, 26.322983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127186, 45.470970, 26.319511>,  <33.518883, 45.390099, 26.313726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127186, 45.470970, 26.319511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095529, 0.523262, -0.846801,
		-0.178774, -0.827841, -0.531714,
		-0.979242, 0.202180, 0.014463,
		32.833412, 45.531624, 26.323851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247417, 45.234997, 25.679363>,  <33.518883, 45.390099, 26.313726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247417, 45.234997, 25.679363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961967, 45.476646, 25.821218>,  <32.790695, 45.621635, 25.906332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961967, 45.476646, 25.821218>,  <33.247417, 45.234997, 25.679363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961967, 45.476646, 25.821218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042442, 0.468029, -0.882694,
		-0.699238, -0.644967, -0.308358,
		-0.713628, 0.604125, 0.354637,
		32.747879, 45.657883, 25.927610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707874, 45.318066, 25.133621>,  <33.247417, 45.234997, 25.679363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707874, 45.318066, 25.133621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577991, 45.621246, 25.359924>,  <32.500061, 45.803154, 25.495707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.577991, 45.621246, 25.359924>,  <32.707874, 45.318066, 25.133621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577991, 45.621246, 25.359924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027270, 0.590419, -0.806636,
		-0.945422, -0.277347, -0.171042,
		-0.324705, 0.757947, 0.565759,
		32.480579, 45.848629, 25.529652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052475, 45.487343, 24.882736>,  <32.707874, 45.318066, 25.133621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052475, 45.487343, 24.882736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241932, 45.789448, 25.063951>,  <32.355606, 45.970711, 25.172682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.241932, 45.789448, 25.063951>,  <32.052475, 45.487343, 24.882736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.241932, 45.789448, 25.063951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214260, 0.597756, -0.772515,
		-0.854259, 0.268825, 0.444943,
		0.473639, 0.755262, 0.453041,
		32.384022, 46.016026, 25.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035320, 44.809830, 24.912170>,  <32.052475, 45.487343, 24.882736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035320, 44.809830, 24.912170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.740654, 44.676353, 24.676891>,  <31.563854, 44.596268, 24.535725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.740654, 44.676353, 24.676891>,  <32.035320, 44.809830, 24.912170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740654, 44.676353, 24.676891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244582, -0.679435, 0.691771,
		-0.630483, 0.653464, 0.418899,
		-0.736662, -0.333695, -0.588198,
		31.519655, 44.576244, 24.500431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494577, 44.549728, 25.363995>,  <32.035320, 44.809830, 24.912170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494577, 44.549728, 25.363995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420691, 44.382431, 25.008253>,  <31.376358, 44.282051, 24.794807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.420691, 44.382431, 25.008253>,  <31.494577, 44.549728, 25.363995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420691, 44.382431, 25.008253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389662, -0.799591, 0.456965,
		-0.902244, 0.430956, -0.015277,
		-0.184717, -0.418247, -0.889353,
		31.365276, 44.256958, 24.741447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784943, 44.327087, 25.235382>,  <31.494577, 44.549728, 25.363995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784943, 44.327087, 25.235382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.009554, 44.110687, 24.984940>,  <31.144321, 43.980846, 24.834675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.009554, 44.110687, 24.984940>,  <30.784943, 44.327087, 25.235382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009554, 44.110687, 24.984940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543175, -0.811809, 0.214305,
		-0.624216, 0.219746, -0.749711,
		0.561530, -0.540997, -0.626104,
		31.178013, 43.948387, 24.797108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397459, 43.785786, 25.104628>,  <30.784943, 44.327087, 25.235382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397459, 43.785786, 25.104628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.750404, 43.642620, 24.982430>,  <30.962172, 43.556721, 24.909111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.750404, 43.642620, 24.982430>,  <30.397459, 43.785786, 25.104628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750404, 43.642620, 24.982430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265916, -0.914873, 0.303804,
		-0.388227, -0.186829, -0.902427,
		0.882365, -0.357915, -0.305497,
		31.015114, 43.535244, 24.890779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308601, 43.144604, 24.645977>,  <30.397459, 43.785786, 25.104628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308601, 43.144604, 24.645977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680162, 43.133575, 24.793695>,  <30.903099, 43.126961, 24.882326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.680162, 43.133575, 24.793695>,  <30.308601, 43.144604, 24.645977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680162, 43.133575, 24.793695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129035, -0.958824, 0.252994,
		0.347116, -0.282659, -0.894212,
		0.928903, -0.027567, 0.369296,
		30.958834, 43.125305, 24.904484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590717, 42.540756, 24.391157>,  <30.308601, 43.144604, 24.645977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590717, 42.540756, 24.391157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838469, 42.620895, 24.694798>,  <30.987120, 42.668980, 24.876982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.838469, 42.620895, 24.694798>,  <30.590717, 42.540756, 24.391157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.838469, 42.620895, 24.694798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085817, -0.978374, 0.188200,
		0.780390, -0.051423, -0.623175,
		0.619376, 0.200348, 0.759100,
		31.024281, 42.681000, 24.922527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149206, 41.985474, 24.355389>,  <30.590717, 42.540756, 24.391157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149206, 41.985474, 24.355389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125881, 42.141716, 24.722872>,  <31.111885, 42.235462, 24.943361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125881, 42.141716, 24.722872>,  <31.149206, 41.985474, 24.355389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125881, 42.141716, 24.722872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027381, -0.920556, 0.389651,
		0.997923, -0.002433, 0.064377,
		-0.058314, 0.390604, 0.918710,
		31.108387, 42.258896, 24.998486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751820, 41.693104, 24.785173>,  <31.149206, 41.985474, 24.355389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751820, 41.693104, 24.785173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462450, 41.805882, 25.037258>,  <31.288830, 41.873547, 25.188509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.462450, 41.805882, 25.037258>,  <31.751820, 41.693104, 24.785173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462450, 41.805882, 25.037258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001782, -0.912049, 0.410078,
		0.690404, 0.297782, 0.659293,
		-0.723422, 0.281944, 0.630213,
		31.245424, 41.890465, 25.226322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340752, 41.868645, 24.523380>,  <31.751820, 41.693104, 24.785173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340752, 41.868645, 24.523380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522320, 41.670448, 24.227152>,  <32.631260, 41.551529, 24.049416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.522320, 41.670448, 24.227152>,  <32.340752, 41.868645, 24.523380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522320, 41.670448, 24.227152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068849, 0.809141, -0.583567,
		0.888378, 0.315880, 0.333172,
		0.453920, -0.495490, -0.740571,
		32.658497, 41.521801, 24.004980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866642, 42.235073, 24.286976>,  <32.340752, 41.868645, 24.523380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866642, 42.235073, 24.286976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816696, 41.990089, 23.974745>,  <32.786728, 41.843098, 23.787407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.816696, 41.990089, 23.974745>,  <32.866642, 42.235073, 24.286976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816696, 41.990089, 23.974745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012462, 0.785702, -0.618479,
		0.992096, -0.086952, -0.090471,
		-0.124861, -0.612463, -0.780575,
		32.779236, 41.806351, 23.740572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167149, 42.654243, 23.842884>,  <32.866642, 42.235073, 24.286976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167149, 42.654243, 23.842884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.977921, 42.393452, 23.605860>,  <32.864384, 42.236977, 23.463646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.977921, 42.393452, 23.605860>,  <33.167149, 42.654243, 23.842884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977921, 42.393452, 23.605860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054422, 0.649672, -0.758264,
		0.879343, -0.390960, -0.271858,
		-0.473070, -0.651979, -0.592561,
		32.835999, 42.197857, 23.428091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570534, 42.640907, 23.248829>,  <33.167149, 42.654243, 23.842884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570534, 42.640907, 23.248829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.223824, 42.487144, 23.121746>,  <33.015797, 42.394886, 23.045496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.223824, 42.487144, 23.121746>,  <33.570534, 42.640907, 23.248829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223824, 42.487144, 23.121746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066488, 0.542308, -0.837545,
		0.494250, -0.747086, -0.444500,
		-0.866774, -0.384403, -0.317707,
		32.963791, 42.371822, 23.026434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764687, 42.371685, 22.511724>,  <33.570534, 42.640907, 23.248829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764687, 42.371685, 22.511724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376629, 42.434189, 22.585926>,  <33.143795, 42.471691, 22.630447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.376629, 42.434189, 22.585926>,  <33.764687, 42.371685, 22.511724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376629, 42.434189, 22.585926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037676, 0.658453, -0.751678,
		-0.239602, -0.736222, -0.632905,
		-0.970140, 0.156258, 0.185504,
		33.085587, 42.481068, 22.641577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418236, 42.356739, 21.791258>,  <33.764687, 42.371685, 22.511724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418236, 42.356739, 21.791258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183132, 42.548092, 22.052235>,  <33.042068, 42.662903, 22.208820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.183132, 42.548092, 22.052235>,  <33.418236, 42.356739, 21.791258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183132, 42.548092, 22.052235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075770, 0.770354, -0.633098,
		-0.805478, -0.421547, -0.416538,
		-0.587762, 0.478385, 0.652444,
		33.006805, 42.691608, 22.247969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774940, 42.389668, 21.483019>,  <33.418236, 42.356739, 21.791258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774940, 42.389668, 21.483019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822933, 42.685993, 21.747381>,  <32.851727, 42.863789, 21.905998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.822933, 42.685993, 21.747381>,  <32.774940, 42.389668, 21.483019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822933, 42.685993, 21.747381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072604, 0.657383, -0.750051,
		-0.990118, 0.137973, 0.025085,
		0.119978, 0.740818, 0.660904,
		32.858925, 42.908237, 21.945652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423763, 42.973869, 21.177221>,  <32.774940, 42.389668, 21.483019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423763, 42.973869, 21.177221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632339, 43.152702, 21.467934>,  <32.757484, 43.260002, 21.642361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.632339, 43.152702, 21.467934>,  <32.423763, 42.973869, 21.177221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632339, 43.152702, 21.467934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193952, 0.767349, -0.611194,
		-0.830951, 0.459664, 0.313417,
		0.521444, 0.447084, 0.726782,
		32.788773, 43.286827, 21.685968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137283, 43.716438, 21.329914>,  <32.423763, 42.973869, 21.177221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137283, 43.716438, 21.329914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516003, 43.698067, 21.457323>,  <32.743237, 43.687042, 21.533768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.516003, 43.698067, 21.457323>,  <32.137283, 43.716438, 21.329914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516003, 43.698067, 21.457323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275635, 0.626603, -0.728967,
		-0.166104, 0.777984, 0.605930,
		0.946802, -0.045931, 0.318521,
		32.800045, 43.684288, 21.552879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.560886, 32.693638, 33.388557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927650, 32.799648, 33.269199>,  <35.147709, 32.863255, 33.197586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927650, 32.799648, 33.269199>,  <34.560886, 32.693638, 33.388557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927650, 32.799648, 33.269199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382954, 0.373757, -0.844779,
		-0.112364, 0.888856, 0.444195,
		0.916908, 0.265029, -0.298394,
		35.202724, 32.879158, 33.179680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521107, 33.424984, 33.243927>,  <34.560886, 32.693638, 33.388557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521107, 33.424984, 33.243927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848522, 33.291313, 33.057030>,  <35.044971, 33.211109, 32.944893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848522, 33.291313, 33.057030>,  <34.521107, 33.424984, 33.243927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848522, 33.291313, 33.057030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304828, 0.436731, -0.846372,
		0.486896, 0.835220, 0.255617,
		0.818543, -0.334176, -0.467241,
		35.094086, 33.191059, 32.916859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761108, 34.002293, 32.878628>,  <34.521107, 33.424984, 33.243927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761108, 34.002293, 32.878628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960667, 33.714584, 32.685234>,  <35.080402, 33.541962, 32.569199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.960667, 33.714584, 32.685234>,  <34.761108, 34.002293, 32.878628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960667, 33.714584, 32.685234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310780, 0.372296, -0.874535,
		0.809024, 0.586559, -0.037798,
		0.498894, -0.719267, -0.483488,
		35.110336, 33.498806, 32.540188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138660, 34.336971, 32.390511>,  <34.761108, 34.002293, 32.878628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138660, 34.336971, 32.390511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160965, 33.966049, 32.242458>,  <35.174347, 33.743496, 32.153625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.160965, 33.966049, 32.242458>,  <35.138660, 34.336971, 32.390511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160965, 33.966049, 32.242458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283586, 0.340734, -0.896370,
		0.957324, 0.154947, -0.243971,
		0.055761, -0.927303, -0.370134,
		35.177692, 33.687859, 32.131416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600277, 34.314976, 31.681318>,  <35.138660, 34.336971, 32.390511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600277, 34.314976, 31.681318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349346, 34.003475, 31.682528>,  <35.198788, 33.816574, 31.683254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.349346, 34.003475, 31.682528>,  <35.600277, 34.314976, 31.681318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349346, 34.003475, 31.682528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262630, 0.207905, -0.942232,
		0.733133, -0.591883, -0.334948,
		-0.627328, -0.778749, 0.003024,
		35.161148, 33.769852, 31.683435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632614, 34.039856, 30.988840>,  <35.600277, 34.314976, 31.681318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632614, 34.039856, 30.988840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297176, 33.904278, 31.159426>,  <35.095913, 33.822929, 31.261778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297176, 33.904278, 31.159426>,  <35.632614, 34.039856, 30.988840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297176, 33.904278, 31.159426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432903, -0.060579, -0.899403,
		0.330686, -0.938853, -0.095931,
		-0.838595, -0.338948, 0.426464,
		35.045597, 33.802593, 31.287365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368111, 33.528458, 30.557177>,  <35.632614, 34.039856, 30.988840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368111, 33.528458, 30.557177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038990, 33.639408, 30.755592>,  <34.841518, 33.705978, 30.874641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038990, 33.639408, 30.755592>,  <35.368111, 33.528458, 30.557177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038990, 33.639408, 30.755592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509203, 0.027827, -0.860196,
		-0.252404, -0.960357, 0.118346,
		-0.822803, 0.277379, 0.496041,
		34.792149, 33.722622, 30.904406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850582, 33.301567, 30.123503>,  <35.368111, 33.528458, 30.557177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850582, 33.301567, 30.123503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631416, 33.545681, 30.352358>,  <34.499916, 33.692150, 30.489672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.631416, 33.545681, 30.352358>,  <34.850582, 33.301567, 30.123503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631416, 33.545681, 30.352358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566973, 0.231968, -0.790400,
		-0.615087, -0.757459, 0.218916,
		-0.547914, 0.610284, 0.572139,
		34.467041, 33.728767, 30.524000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270924, 33.199284, 29.971865>,  <34.850582, 33.301567, 30.123503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270924, 33.199284, 29.971865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257576, 33.573845, 30.111605>,  <34.249569, 33.798580, 30.195448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.257576, 33.573845, 30.111605>,  <34.270924, 33.199284, 29.971865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257576, 33.573845, 30.111605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398217, 0.308143, -0.863986,
		-0.916684, -0.167944, 0.362608,
		-0.033366, 0.936399, 0.349348,
		34.247566, 33.854763, 30.216410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618767, 33.473038, 29.750277>,  <34.270924, 33.199284, 29.971865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618767, 33.473038, 29.750277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814819, 33.809624, 29.841232>,  <33.932449, 34.011578, 29.895805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.814819, 33.809624, 29.841232>,  <33.618767, 33.473038, 29.750277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814819, 33.809624, 29.841232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484542, 0.479876, -0.731395,
		-0.724564, 0.248297, 0.642927,
		0.490128, 0.841468, 0.227390,
		33.961857, 34.062065, 29.909449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123955, 33.972580, 29.634066>,  <33.618767, 33.473038, 29.750277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123955, 33.972580, 29.634066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476852, 34.154392, 29.585014>,  <33.688591, 34.263481, 29.555584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.476852, 34.154392, 29.585014>,  <33.123955, 33.972580, 29.634066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476852, 34.154392, 29.585014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381643, 0.537987, -0.751610,
		-0.275660, 0.709907, 0.648108,
		0.882247, 0.454535, -0.122630,
		33.741528, 34.290752, 29.548225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037445, 34.705105, 29.593222>,  <33.123955, 33.972580, 29.634066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037445, 34.705105, 29.593222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395058, 34.672081, 29.417091>,  <33.609627, 34.652267, 29.311413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.395058, 34.672081, 29.417091>,  <33.037445, 34.705105, 29.593222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395058, 34.672081, 29.417091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285911, 0.651546, -0.702668,
		0.344904, 0.754103, 0.558900,
		0.894034, -0.082558, -0.440327,
		33.663269, 34.647312, 29.284992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810055, 35.111511, 30.123243>,  <33.037445, 34.705105, 29.593222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810055, 35.111511, 30.123243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433151, 34.984249, 30.081444>,  <32.207008, 34.907890, 30.056364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.433151, 34.984249, 30.081444>,  <32.810055, 35.111511, 30.123243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433151, 34.984249, 30.081444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183330, -0.751213, 0.634089,
		-0.280242, 0.578319, 0.766167,
		-0.942260, -0.318159, -0.104498,
		32.150475, 34.888802, 30.050095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700294, 34.827248, 30.712687>,  <32.810055, 35.111511, 30.123243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700294, 34.827248, 30.712687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395374, 34.658638, 30.516233>,  <32.212421, 34.557472, 30.398361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.395374, 34.658638, 30.516233>,  <32.700294, 34.827248, 30.712687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395374, 34.658638, 30.516233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013022, -0.768668, 0.639515,
		-0.647090, 0.481108, 0.591447,
		-0.762302, -0.421526, -0.491133,
		32.166683, 34.532181, 30.368893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091919, 34.612675, 31.181967>,  <32.700294, 34.827248, 30.712687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091919, 34.612675, 31.181967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037937, 34.401447, 30.846603>,  <32.005547, 34.274712, 30.645386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.037937, 34.401447, 30.846603>,  <32.091919, 34.612675, 31.181967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037937, 34.401447, 30.846603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070281, -0.849121, 0.523501,
		-0.988356, 0.011726, 0.151709,
		-0.134958, -0.528068, -0.838410,
		31.997450, 34.243027, 30.595081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566055, 34.088631, 31.300995>,  <32.091919, 34.612675, 31.181967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566055, 34.088631, 31.300995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807587, 33.932301, 31.023104>,  <31.952505, 33.838501, 30.856369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.807587, 33.932301, 31.023104>,  <31.566055, 34.088631, 31.300995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807587, 33.932301, 31.023104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010411, -0.867611, 0.497134,
		-0.797046, -0.307417, -0.519819,
		0.603828, -0.390827, -0.694727,
		31.988735, 33.815052, 30.814686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283758, 33.503391, 31.195204>,  <31.566055, 34.088631, 31.300995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283758, 33.503391, 31.195204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655378, 33.456554, 31.054829>,  <31.878349, 33.428452, 30.970604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.655378, 33.456554, 31.054829>,  <31.283758, 33.503391, 31.195204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655378, 33.456554, 31.054829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107049, -0.822934, 0.557960,
		-0.354129, -0.555940, -0.752013,
		0.929049, -0.117088, -0.350938,
		31.934093, 33.421429, 30.949547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468767, 32.775101, 31.097137>,  <31.283758, 33.503391, 31.195204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468767, 32.775101, 31.097137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843054, 32.913921, 31.122400>,  <32.067627, 32.997215, 31.137558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.843054, 32.913921, 31.122400>,  <31.468767, 32.775101, 31.097137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843054, 32.913921, 31.122400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243815, -0.765686, 0.595213,
		0.254931, -0.541551, -0.801082,
		0.935716, 0.347054, 0.063159,
		32.123768, 33.018036, 31.141348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937660, 32.141079, 31.174789>,  <31.468767, 32.775101, 31.097137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937660, 32.141079, 31.174789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138569, 32.465584, 31.294502>,  <32.259113, 32.660286, 31.366331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138569, 32.465584, 31.294502>,  <31.937660, 32.141079, 31.174789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138569, 32.465584, 31.294502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308262, -0.491357, 0.814581,
		0.807898, -0.316882, -0.496877,
		0.502270, 0.811267, 0.299284,
		32.289249, 32.708965, 31.384287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554604, 31.846014, 31.422007>,  <31.937660, 32.141079, 31.174789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554604, 31.846014, 31.422007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570618, 32.212631, 31.581177>,  <32.580227, 32.432602, 31.676678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570618, 32.212631, 31.581177>,  <32.554604, 31.846014, 31.422007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570618, 32.212631, 31.581177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323682, -0.388666, 0.862652,
		0.945318, 0.094262, -0.312231,
		0.040039, 0.916544, 0.397924,
		32.582630, 32.487595, 31.700554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222729, 31.931480, 31.799837>,  <32.554604, 31.846014, 31.422007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222729, 31.931480, 31.799837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934074, 32.163139, 31.951538>,  <32.760883, 32.302135, 32.042561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.934074, 32.163139, 31.951538>,  <33.222729, 31.931480, 31.799837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934074, 32.163139, 31.951538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256342, -0.285347, 0.923507,
		0.643067, 0.763651, 0.057455,
		-0.721632, 0.579149, 0.379253,
		32.717587, 32.336884, 32.065315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500469, 32.184948, 32.391830>,  <33.222729, 31.931480, 31.799837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500469, 32.184948, 32.391830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107029, 32.231781, 32.446705>,  <32.870964, 32.259880, 32.479630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.107029, 32.231781, 32.446705>,  <33.500469, 32.184948, 32.391830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107029, 32.231781, 32.446705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095021, -0.310114, 0.945939,
		0.153296, 0.943463, 0.293903,
		-0.983601, 0.117082, 0.137188,
		32.811947, 32.266907, 32.487862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386463, 32.702385, 32.890171>,  <33.500469, 32.184948, 32.391830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386463, 32.702385, 32.890171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056507, 32.476765, 32.905140>,  <32.858532, 32.341393, 32.914120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.056507, 32.476765, 32.905140>,  <33.386463, 32.702385, 32.890171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056507, 32.476765, 32.905140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222603, -0.263270, 0.938689,
		-0.519618, 0.782645, 0.342729,
		-0.824891, -0.564052, 0.037419,
		32.809040, 32.307549, 32.916367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108566, 32.915440, 33.519547>,  <33.386463, 32.702385, 32.890171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108566, 32.915440, 33.519547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913361, 32.577030, 33.433674>,  <32.796238, 32.373985, 33.382153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.913361, 32.577030, 33.433674>,  <33.108566, 32.915440, 33.519547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913361, 32.577030, 33.433674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175515, -0.336051, 0.925345,
		-0.855006, 0.413904, 0.312488,
		-0.488016, -0.846022, -0.214679,
		32.766956, 32.323223, 33.369270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689388, 32.784054, 34.188278>,  <33.108566, 32.915440, 33.519547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689388, 32.784054, 34.188278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694626, 32.433353, 33.995972>,  <32.697769, 32.222931, 33.880589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694626, 32.433353, 33.995972>,  <32.689388, 32.784054, 34.188278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694626, 32.433353, 33.995972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191616, -0.469691, 0.861785,
		-0.981383, -0.103409, 0.161848,
		0.013097, -0.876754, -0.480762,
		32.698555, 32.170326, 33.851742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794453, 33.294640, 34.776291>,  <32.689388, 32.784054, 34.188278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794453, 33.294640, 34.776291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573971, 33.407299, 35.090450>,  <32.441681, 33.474895, 35.278946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.573971, 33.407299, 35.090450>,  <32.794453, 33.294640, 34.776291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573971, 33.407299, 35.090450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037616, 0.948736, -0.313824,
		-0.833523, -0.143437, -0.533541,
		-0.551203, 0.281649, 0.785397,
		32.408611, 33.491795, 35.326069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204704, 33.602161, 34.587666>,  <32.794453, 33.294640, 34.776291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204704, 33.602161, 34.587666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286182, 33.746956, 34.951527>,  <32.335072, 33.833832, 35.169846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.286182, 33.746956, 34.951527>,  <32.204704, 33.602161, 34.587666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286182, 33.746956, 34.951527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072218, 0.921051, -0.382687,
		-0.976366, 0.143646, 0.161476,
		0.203699, 0.361982, 0.909657,
		32.347294, 33.855549, 35.224422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675163, 34.202496, 34.675373>,  <32.204704, 33.602161, 34.587666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675163, 34.202496, 34.675373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023926, 34.211796, 34.871021>,  <32.233185, 34.217377, 34.988411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023926, 34.211796, 34.871021>,  <31.675163, 34.202496, 34.675373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023926, 34.211796, 34.871021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150714, 0.937640, -0.313235,
		-0.465901, 0.346829, 0.814030,
		0.871907, 0.023251, 0.489120,
		32.285500, 34.218773, 35.017757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635506, 34.759628, 35.195301>,  <31.675163, 34.202496, 34.675373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635506, 34.759628, 35.195301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972704, 34.654324, 35.007664>,  <32.175022, 34.591141, 34.895081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.972704, 34.654324, 35.007664>,  <31.635506, 34.759628, 35.195301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972704, 34.654324, 35.007664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115759, 0.940410, -0.319734,
		0.525315, 0.215232, 0.823237,
		0.842997, -0.263258, -0.469096,
		32.225601, 34.575348, 34.866936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042953, 35.272533, 35.352036>,  <31.635506, 34.759628, 35.195301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042953, 35.272533, 35.352036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196785, 35.094158, 35.028744>,  <32.289085, 34.987133, 34.834770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.196785, 35.094158, 35.028744>,  <32.042953, 35.272533, 35.352036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196785, 35.094158, 35.028744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188500, 0.895059, -0.404151,
		0.903639, 0.003078, 0.428283,
		0.384582, -0.445938, -0.808230,
		32.312160, 34.960377, 34.786274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498409, 35.797832, 35.171547>,  <32.042953, 35.272533, 35.352036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498409, 35.797832, 35.171547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455555, 35.544128, 34.865280>,  <32.429844, 35.391907, 34.681522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.455555, 35.544128, 34.865280>,  <32.498409, 35.797832, 35.171547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455555, 35.544128, 34.865280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199927, 0.740623, -0.641489,
		0.973936, -0.221802, 0.047458,
		-0.107135, -0.634257, -0.765663,
		32.423416, 35.353851, 34.635582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066978, 35.861225, 34.755573>,  <32.498409, 35.797832, 35.171547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066978, 35.861225, 34.755573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781059, 35.724281, 34.511654>,  <32.609509, 35.642113, 34.365303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.781059, 35.724281, 34.511654>,  <33.066978, 35.861225, 34.755573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781059, 35.724281, 34.511654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309409, 0.627158, -0.714800,
		0.627158, -0.699615, -0.342362,
		0.714800, 0.342362, 0.609794,
		32.566620, 35.621574, 34.328716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368210, 35.800636, 34.119289>,  <33.066978, 35.861225, 34.755573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368210, 35.800636, 34.119289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978142, 35.803661, 34.030762>,  <32.744102, 35.805477, 33.977646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978142, 35.803661, 34.030762>,  <33.368210, 35.800636, 34.119289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978142, 35.803661, 34.030762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209587, 0.354249, -0.911362,
		0.071512, -0.935120, -0.347039,
		-0.975172, 0.007561, -0.221322,
		32.685589, 35.805931, 33.964367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322372, 35.839397, 33.465019>,  <33.368210, 35.800636, 34.119289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322372, 35.839397, 33.465019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932877, 35.924995, 33.496101>,  <32.699181, 35.976357, 33.514751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.932877, 35.924995, 33.496101>,  <33.322372, 35.839397, 33.465019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932877, 35.924995, 33.496101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023433, 0.433692, -0.900756,
		-0.226459, -0.875281, -0.427317,
		-0.973739, 0.213998, 0.077703,
		32.640755, 35.989193, 33.519413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993156, 35.619549, 32.788528>,  <33.322372, 35.839397, 33.465019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993156, 35.619549, 32.788528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761555, 35.886581, 32.975754>,  <32.622593, 36.046803, 33.088089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.761555, 35.886581, 32.975754>,  <32.993156, 35.619549, 32.788528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761555, 35.886581, 32.975754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053905, 0.541487, -0.838979,
		-0.813541, -0.511003, -0.277538,
		-0.579004, 0.667583, 0.468067,
		32.587852, 36.086857, 33.116173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364265, 35.734215, 32.356483>,  <32.993156, 35.619549, 32.788528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364265, 35.734215, 32.356483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404369, 36.059872, 32.585262>,  <32.428432, 36.255264, 32.722530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.404369, 36.059872, 32.585262>,  <32.364265, 35.734215, 32.356483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404369, 36.059872, 32.585262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140715, 0.557464, -0.818189,
		-0.984961, 0.162511, -0.058672,
		0.100258, 0.814140, 0.571948,
		32.434448, 36.304115, 32.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860191, 36.112446, 32.120735>,  <32.364265, 35.734215, 32.356483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860191, 36.112446, 32.120735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114510, 36.357246, 32.308872>,  <32.267101, 36.504128, 32.421753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.114510, 36.357246, 32.308872>,  <31.860191, 36.112446, 32.120735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114510, 36.357246, 32.308872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047954, 0.639500, -0.767294,
		-0.770367, 0.465287, 0.435939,
		0.635795, 0.612002, 0.470338,
		32.305248, 36.540848, 32.449974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483063, 36.778519, 32.111870>,  <31.860191, 36.112446, 32.120735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483063, 36.778519, 32.111870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866068, 36.869812, 32.182384>,  <32.095871, 36.924587, 32.224693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866068, 36.869812, 32.182384>,  <31.483063, 36.778519, 32.111870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866068, 36.869812, 32.182384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018935, 0.659707, -0.751285,
		-0.287764, 0.716028, 0.636000,
		0.957514, 0.228235, 0.176282,
		32.153320, 36.938282, 32.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444849, 37.443771, 32.342312>,  <31.483063, 36.778519, 32.111870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444849, 37.443771, 32.342312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825958, 37.380657, 32.238522>,  <32.054623, 37.342789, 32.176247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.825958, 37.380657, 32.238522>,  <31.444849, 37.443771, 32.342312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825958, 37.380657, 32.238522> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031636, 0.798211, -0.601546,
		0.302033, 0.581345, 0.755522,
		0.952772, -0.157785, -0.259478,
		32.111790, 37.333321, 32.160679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817087, 38.082676, 32.298199>,  <31.444849, 37.443771, 32.342312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817087, 38.082676, 32.298199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021820, 37.846146, 32.048923>,  <32.144661, 37.704227, 31.899359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.021820, 37.846146, 32.048923>,  <31.817087, 38.082676, 32.298199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021820, 37.846146, 32.048923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248189, 0.796256, -0.551705,
		0.822454, 0.127712, 0.554310,
		0.511832, -0.591326, -0.623187,
		32.175369, 37.668747, 31.861967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440693, 38.416714, 32.239693>,  <31.817087, 38.082676, 32.298199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440693, 38.416714, 32.239693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411930, 38.196602, 31.906940>,  <32.394672, 38.064533, 31.707289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411930, 38.196602, 31.906940>,  <32.440693, 38.416714, 32.239693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411930, 38.196602, 31.906940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204891, 0.808102, -0.552260,
		0.976140, -0.210154, 0.054642,
		-0.071904, -0.550279, -0.831879,
		32.390358, 38.031517, 31.657377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984638, 38.577633, 31.832357>,  <32.440693, 38.416714, 32.239693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984638, 38.577633, 31.832357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754368, 38.402939, 31.555845>,  <32.616207, 38.298122, 31.389938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754368, 38.402939, 31.555845>,  <32.984638, 38.577633, 31.832357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754368, 38.402939, 31.555845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323583, 0.654722, -0.683106,
		0.750930, -0.616930, -0.235586,
		-0.575672, -0.436733, -0.691279,
		32.581665, 38.271919, 31.348461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271549, 38.769474, 31.294704>,  <32.984638, 38.577633, 31.832357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271549, 38.769474, 31.294704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922344, 38.663017, 31.131233>,  <32.712822, 38.599144, 31.033150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922344, 38.663017, 31.131233>,  <33.271549, 38.769474, 31.294704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922344, 38.663017, 31.131233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080750, 0.747528, -0.659304,
		0.480964, -0.608582, -0.631112,
		-0.873014, -0.266139, -0.408677,
		32.660439, 38.583176, 31.008631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329868, 38.580414, 30.505060>,  <33.271549, 38.769474, 31.294704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329868, 38.580414, 30.505060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957985, 38.699364, 30.591972>,  <32.734856, 38.770733, 30.644119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.957985, 38.699364, 30.591972>,  <33.329868, 38.580414, 30.505060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957985, 38.699364, 30.591972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081141, 0.740849, -0.666753,
		-0.359250, -0.602255, -0.712902,
		-0.929708, 0.297376, 0.217282,
		32.679073, 38.788578, 30.657158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010418, 38.729889, 29.880339>,  <33.329868, 38.580414, 30.505060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010418, 38.729889, 29.880339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777470, 38.919888, 30.144224>,  <32.637703, 39.033886, 30.302555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.777470, 38.919888, 30.144224>,  <33.010418, 38.729889, 29.880339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777470, 38.919888, 30.144224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230685, 0.681608, -0.694403,
		-0.779507, -0.556584, -0.287372,
		-0.582368, 0.474999, 0.659714,
		32.602760, 39.062386, 30.342138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314171, 38.857956, 29.552879>,  <33.010418, 38.729889, 29.880339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314171, 38.857956, 29.552879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359856, 39.130383, 29.842182>,  <32.387268, 39.293839, 30.015764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.359856, 39.130383, 29.842182>,  <32.314171, 38.857956, 29.552879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359856, 39.130383, 29.842182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345664, 0.709776, -0.613787,
		-0.931382, -0.179901, 0.316487,
		0.114214, 0.681068, 0.723258,
		32.394119, 39.334702, 30.059160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754030, 39.473503, 29.501200>,  <32.314171, 38.857956, 29.552879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754030, 39.473503, 29.501200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023727, 39.668171, 29.723387>,  <32.185547, 39.784973, 29.856699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023727, 39.668171, 29.723387>,  <31.754030, 39.473503, 29.501200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023727, 39.668171, 29.723387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213180, 0.848388, -0.484554,
		-0.707070, 0.208294, 0.675770,
		0.674245, 0.486674, 0.555466,
		32.226002, 39.814175, 29.890026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465418, 40.101250, 29.527205>,  <31.754030, 39.473503, 29.501200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465418, 40.101250, 29.527205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837303, 40.165291, 29.659870>,  <32.060432, 40.203716, 29.739470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837303, 40.165291, 29.659870>,  <31.465418, 40.101250, 29.527205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837303, 40.165291, 29.659870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013909, 0.884659, -0.466031,
		-0.368022, 0.437888, 0.820252,
		0.929713, 0.160101, 0.331665,
		32.116219, 40.213322, 29.759369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371622, 40.742081, 29.853565>,  <31.465418, 40.101250, 29.527205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371622, 40.742081, 29.853565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752714, 40.670116, 29.755638>,  <31.981369, 40.626938, 29.696882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752714, 40.670116, 29.755638>,  <31.371622, 40.742081, 29.853565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752714, 40.670116, 29.755638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107820, 0.953584, -0.281162,
		0.284037, 0.241476, 0.927908,
		0.952732, -0.179907, -0.244817,
		32.038532, 40.616146, 29.682194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761036, 41.356091, 30.106127>,  <31.371622, 40.742081, 29.853565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761036, 41.356091, 30.106127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006340, 41.167213, 29.852846>,  <32.153522, 41.053886, 29.700878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.006340, 41.167213, 29.852846>,  <31.761036, 41.356091, 30.106127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006340, 41.167213, 29.852846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109912, 0.844855, -0.523584,
		0.782196, 0.251497, 0.570016,
		0.613260, -0.472197, -0.633199,
		32.190319, 41.025555, 29.662886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299267, 41.844761, 30.084993>,  <31.761036, 41.356091, 30.106127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299267, 41.844761, 30.084993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358070, 41.635231, 29.749376>,  <32.393353, 41.509514, 29.548006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358070, 41.635231, 29.749376>,  <32.299267, 41.844761, 30.084993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358070, 41.635231, 29.749376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134912, 0.850952, -0.507621,
		0.979891, -0.038572, 0.195768,
		0.147009, -0.523825, -0.839045,
		32.402172, 41.478085, 29.497663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971066, 42.122990, 29.793074>,  <32.299267, 41.844761, 30.084993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971066, 42.122990, 29.793074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807552, 41.922611, 29.487930>,  <32.709446, 41.802383, 29.304844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.807552, 41.922611, 29.487930>,  <32.971066, 42.122990, 29.793074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807552, 41.922611, 29.487930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183367, 0.773759, -0.606361,
		0.894022, -0.387752, -0.224440,
		-0.408780, -0.500946, -0.762858,
		32.684917, 41.772327, 29.259073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475204, 42.021404, 29.248795>,  <32.971066, 42.122990, 29.793074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475204, 42.021404, 29.248795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116299, 42.010483, 29.072535>,  <32.900955, 42.003929, 28.966780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116299, 42.010483, 29.072535>,  <33.475204, 42.021404, 29.248795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116299, 42.010483, 29.072535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310086, 0.671484, -0.673020,
		0.314268, -0.740515, -0.594031,
		-0.897264, -0.027308, -0.440649,
		32.847118, 42.002289, 28.940340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605904, 42.001560, 28.550171>,  <33.475204, 42.021404, 29.248795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605904, 42.001560, 28.550171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228546, 42.128651, 28.588257>,  <33.002132, 42.204903, 28.611109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.228546, 42.128651, 28.588257>,  <33.605904, 42.001560, 28.550171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228546, 42.128651, 28.588257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146593, 0.656900, -0.739590,
		-0.297530, -0.683765, -0.666289,
		-0.943391, 0.317723, 0.095213,
		32.945530, 42.223969, 28.616821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171814, 41.968895, 27.990528>,  <33.605904, 42.001560, 28.550171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171814, 41.968895, 27.990528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536274, 42.128258, 28.032631>,  <34.754948, 42.223877, 28.057894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.536274, 42.128258, 28.032631>,  <34.171814, 41.968895, 27.990528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536274, 42.128258, 28.032631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200086, -0.651034, 0.732203,
		0.360244, -0.646084, -0.672904,
		0.911147, 0.398410, 0.105259,
		34.809620, 42.247780, 28.064209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564350, 41.403248, 28.134109>,  <34.171814, 41.968895, 27.990528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564350, 41.403248, 28.134109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787518, 41.713730, 28.251572>,  <34.921417, 41.900021, 28.322050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.787518, 41.713730, 28.251572>,  <34.564350, 41.403248, 28.134109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787518, 41.713730, 28.251572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250040, -0.494623, 0.832363,
		0.791336, -0.390960, -0.470040,
		0.557914, 0.776207, 0.293657,
		34.954891, 41.946590, 28.339668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263760, 41.174431, 28.287279>,  <34.564350, 41.403248, 28.134109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263760, 41.174431, 28.287279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194328, 41.498608, 28.511082>,  <35.152668, 41.693115, 28.645363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194328, 41.498608, 28.511082>,  <35.263760, 41.174431, 28.287279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194328, 41.498608, 28.511082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438358, -0.445164, 0.780815,
		0.881880, 0.380798, -0.277994,
		-0.173580, 0.810445, 0.559507,
		35.142254, 41.741741, 28.678934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891521, 41.433300, 28.631067>,  <35.263760, 41.174431, 28.287279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891521, 41.433300, 28.631067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572079, 41.524456, 28.853886>,  <35.380413, 41.579147, 28.987577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.572079, 41.524456, 28.853886>,  <35.891521, 41.433300, 28.631067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572079, 41.524456, 28.853886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390555, -0.507986, 0.767735,
		0.457929, 0.830673, 0.316676,
		-0.798603, 0.227888, 0.557045,
		35.332497, 41.592823, 29.021000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182720, 41.310417, 29.372246>,  <35.891521, 41.433300, 28.631067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182720, 41.310417, 29.372246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795086, 41.389221, 29.431660>,  <35.562508, 41.436504, 29.467308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795086, 41.389221, 29.431660>,  <36.182720, 41.310417, 29.372246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795086, 41.389221, 29.431660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075830, -0.335054, 0.939143,
		0.234791, 0.921371, 0.309756,
		-0.969084, 0.197013, 0.148535,
		35.504360, 41.448326, 29.476221>
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
