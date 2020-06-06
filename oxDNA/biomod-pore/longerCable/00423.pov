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
	<23.989727, 35.142879, 34.739864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336918, 34.987598, 34.863743>,  <24.545233, 34.894428, 34.938068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336918, 34.987598, 34.863743>,  <23.989727, 35.142879, 34.739864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336918, 34.987598, 34.863743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225554, 0.863771, 0.450584,
		-0.442426, -0.321244, 0.837295,
		0.867978, -0.388205, 0.309697,
		24.597311, 34.871136, 34.956654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.044357, 35.029396, 35.484303>,  <23.989727, 35.142879, 34.739864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.044357, 35.029396, 35.484303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408287, 35.097412, 35.332878>,  <24.626644, 35.138222, 35.242023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408287, 35.097412, 35.332878>,  <24.044357, 35.029396, 35.484303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408287, 35.097412, 35.332878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061295, 0.847139, 0.527824,
		0.410443, -0.503431, 0.760325,
		0.909824, 0.170038, -0.378560,
		24.681234, 35.148422, 35.219311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.413996, 35.263859, 36.010029>,  <24.044357, 35.029396, 35.484303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.413996, 35.263859, 36.010029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651363, 35.381592, 35.710369>,  <24.793785, 35.452232, 35.530575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.651363, 35.381592, 35.710369>,  <24.413996, 35.263859, 36.010029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651363, 35.381592, 35.710369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293843, 0.787277, 0.542081,
		0.749338, -0.541813, 0.380698,
		0.593421, 0.294336, -0.749144,
		24.829390, 35.469894, 35.485626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000628, 35.425949, 36.261223>,  <24.413996, 35.263859, 36.010029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000628, 35.425949, 36.261223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036804, 35.634205, 35.921631>,  <25.058510, 35.759159, 35.717876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.036804, 35.634205, 35.921631>,  <25.000628, 35.425949, 36.261223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.036804, 35.634205, 35.921631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052524, 0.848789, 0.526116,
		0.994516, -0.092175, 0.049420,
		0.090442, 0.520635, -0.848975,
		25.063936, 35.790394, 35.666939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602993, 35.865807, 36.260326>,  <25.000628, 35.425949, 36.261223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602993, 35.865807, 36.260326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342928, 36.053204, 36.021057>,  <25.186890, 36.165642, 35.877495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342928, 36.053204, 36.021057>,  <25.602993, 35.865807, 36.260326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342928, 36.053204, 36.021057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200628, 0.865192, 0.459556,
		0.732828, 0.178776, -0.656507,
		-0.650162, 0.468489, -0.598170,
		25.147879, 36.193748, 35.841606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.886520, 36.522182, 35.904819>,  <25.602993, 35.865807, 36.260326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.886520, 36.522182, 35.904819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501635, 36.573051, 36.001125>,  <25.270702, 36.603573, 36.058910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.501635, 36.573051, 36.001125>,  <25.886520, 36.522182, 35.904819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.501635, 36.573051, 36.001125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235124, 0.834012, 0.499140,
		-0.137324, 0.536890, -0.832401,
		-0.962215, 0.127174, 0.240766,
		25.212971, 36.611202, 36.073357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608170, 37.247322, 35.663185>,  <25.886520, 36.522182, 35.904819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608170, 37.247322, 35.663185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435715, 37.075874, 35.980778>,  <25.332243, 36.973007, 36.171333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.435715, 37.075874, 35.980778>,  <25.608170, 37.247322, 35.663185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435715, 37.075874, 35.980778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237683, 0.794935, 0.558198,
		-0.870419, 0.429375, -0.240849,
		-0.431136, -0.428620, 0.793981,
		25.306374, 36.947289, 36.218971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.137716, 37.749592, 36.032818>,  <25.608170, 37.247322, 35.663185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.137716, 37.749592, 36.032818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263256, 37.479126, 36.299438>,  <25.338581, 37.316845, 36.459412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.263256, 37.479126, 36.299438>,  <25.137716, 37.749592, 36.032818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.263256, 37.479126, 36.299438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350154, 0.734970, 0.580699,
		-0.882548, 0.051143, 0.467434,
		0.313851, -0.676168, 0.666554,
		25.357412, 37.276276, 36.499405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.816921, 37.877666, 36.566868>,  <25.137716, 37.749592, 36.032818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.816921, 37.877666, 36.566868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141388, 37.696507, 36.714863>,  <25.336069, 37.587811, 36.803658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141388, 37.696507, 36.714863>,  <24.816921, 37.877666, 36.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141388, 37.696507, 36.714863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089842, 0.721652, 0.686401,
		-0.577870, -0.523547, 0.626071,
		0.811169, -0.452898, 0.369985,
		25.384739, 37.560638, 36.825859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804939, 38.024498, 37.322369>,  <24.816921, 37.877666, 36.566868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804939, 38.024498, 37.322369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178694, 37.938892, 37.208443>,  <25.402946, 37.887527, 37.140087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.178694, 37.938892, 37.208443>,  <24.804939, 38.024498, 37.322369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178694, 37.938892, 37.208443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354643, 0.634795, 0.686487,
		0.033877, -0.742451, 0.669043,
		0.934388, -0.214015, -0.284810,
		25.459011, 37.874687, 37.123001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.172100, 37.826912, 37.925770>,  <24.804939, 38.024498, 37.322369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.172100, 37.826912, 37.925770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414652, 37.976307, 37.644970>,  <25.560183, 38.065945, 37.476490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414652, 37.976307, 37.644970>,  <25.172100, 37.826912, 37.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414652, 37.976307, 37.644970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243718, 0.753043, 0.611169,
		0.756913, -0.541685, 0.365593,
		0.606369, 0.373500, -0.702007,
		25.596565, 38.088356, 37.434368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513273, 38.387577, 38.251991>,  <25.172100, 37.826912, 37.925770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513273, 38.387577, 38.251991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645197, 38.462566, 37.881893>,  <25.724352, 38.507561, 37.659836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.645197, 38.462566, 37.881893>,  <25.513273, 38.387577, 38.251991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.645197, 38.462566, 37.881893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437847, 0.837920, 0.325852,
		0.836360, -0.512591, 0.194299,
		0.329836, 0.187456, -0.925240,
		25.744139, 38.518806, 37.604321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.253981, 38.579018, 38.254391>,  <25.513273, 38.387577, 38.251991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.253981, 38.579018, 38.254391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071608, 38.736755, 37.935238>,  <25.962183, 38.831398, 37.743748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071608, 38.736755, 37.935238>,  <26.253981, 38.579018, 38.254391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071608, 38.736755, 37.935238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564822, 0.821025, 0.083031,
		0.687824, -0.412804, -0.597069,
		-0.455933, 0.394348, -0.797881,
		25.934828, 38.855061, 37.695873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784286, 39.051952, 37.783199>,  <26.253981, 38.579018, 38.254391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784286, 39.051952, 37.783199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426119, 39.217739, 37.718159>,  <26.211218, 39.317211, 37.679134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.426119, 39.217739, 37.718159>,  <26.784286, 39.051952, 37.783199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.426119, 39.217739, 37.718159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419611, 0.907699, 0.002971,
		0.148823, -0.065568, -0.986688,
		-0.895421, 0.414467, -0.162599,
		26.157492, 39.342079, 37.669380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546824, 39.214157, 37.161434>,  <26.784286, 39.051952, 37.783199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546824, 39.214157, 37.161434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486206, 39.459648, 37.471367>,  <26.449835, 39.606945, 37.657326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.486206, 39.459648, 37.471367>,  <26.546824, 39.214157, 37.161434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.486206, 39.459648, 37.471367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775521, 0.559855, -0.291770,
		-0.612864, 0.556685, -0.560803,
		-0.151544, 0.613730, 0.774835,
		26.440742, 39.643768, 37.703819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040392, 38.862663, 36.752151>,  <26.546824, 39.214157, 37.161434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040392, 38.862663, 36.752151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098984, 38.651363, 37.086697>,  <26.134138, 38.524586, 37.287422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.098984, 38.651363, 37.086697>,  <26.040392, 38.862663, 36.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098984, 38.651363, 37.086697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094951, -0.834069, -0.543427,
		0.984647, 0.159013, -0.072015,
		0.146477, -0.528246, 0.836362,
		26.142927, 38.492889, 37.337605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572664, 38.322536, 36.605949>,  <26.040392, 38.862663, 36.752151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572664, 38.322536, 36.605949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297386, 38.237453, 36.883408>,  <26.132219, 38.186405, 37.049881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297386, 38.237453, 36.883408>,  <26.572664, 38.322536, 36.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297386, 38.237453, 36.883408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195961, -0.866030, -0.459990,
		0.698561, -0.452490, 0.554315,
		-0.688194, -0.212707, 0.693646,
		26.090927, 38.173641, 37.091503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.668982, 37.613541, 36.835590>,  <26.572664, 38.322536, 36.605949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.668982, 37.613541, 36.835590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287207, 37.685272, 36.930996>,  <26.058142, 37.728310, 36.988239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287207, 37.685272, 36.930996>,  <26.668982, 37.613541, 36.835590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287207, 37.685272, 36.930996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271679, -0.852838, -0.445936,
		0.123446, -0.490417, 0.862700,
		-0.954438, 0.179329, 0.238515,
		26.000875, 37.739071, 37.002552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476465, 37.066422, 37.346619>,  <26.668982, 37.613541, 36.835590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476465, 37.066422, 37.346619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143888, 37.214405, 37.180809>,  <25.944342, 37.303196, 37.081322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.143888, 37.214405, 37.180809>,  <26.476465, 37.066422, 37.346619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143888, 37.214405, 37.180809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237662, -0.911186, -0.336535,
		-0.502215, -0.181293, 0.845525,
		-0.831443, 0.369963, -0.414525,
		25.894455, 37.325394, 37.056450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.009996, 36.435570, 37.220634>,  <26.476465, 37.066422, 37.346619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.009996, 36.435570, 37.220634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795433, 36.697479, 37.007641>,  <25.666695, 36.854626, 36.879845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795433, 36.697479, 37.007641>,  <26.009996, 36.435570, 37.220634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795433, 36.697479, 37.007641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424134, -0.754620, -0.500659,
		-0.729639, -0.042715, 0.682497,
		-0.536411, 0.654770, -0.532484,
		25.634510, 36.893909, 36.847897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239874, 36.740173, 37.400875>,  <26.009996, 36.435570, 37.220634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239874, 36.740173, 37.400875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116272, 36.953102, 37.085625>,  <25.042110, 37.080860, 36.896473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.116272, 36.953102, 37.085625>,  <25.239874, 36.740173, 37.400875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.116272, 36.953102, 37.085625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064227, -0.838475, -0.541143,
		-0.948889, -0.116597, 0.293283,
		-0.309006, 0.532321, -0.788131,
		25.023569, 37.112797, 36.849186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.550920, 36.493462, 37.188297>,  <25.239874, 36.740173, 37.400875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.550920, 36.493462, 37.188297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736706, 36.668053, 36.880074>,  <24.848177, 36.772808, 36.695141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736706, 36.668053, 36.880074>,  <24.550920, 36.493462, 37.188297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736706, 36.668053, 36.880074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174268, -0.808044, -0.562758,
		-0.868278, 0.395663, -0.299240,
		0.464461, 0.436482, -0.770558,
		24.876043, 36.798996, 36.648907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.058508, 36.542793, 36.614292>,  <24.550920, 36.493462, 37.188297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.058508, 36.542793, 36.614292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423262, 36.553795, 36.450481>,  <24.642115, 36.560394, 36.352196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.423262, 36.553795, 36.450481>,  <24.058508, 36.542793, 36.614292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.423262, 36.553795, 36.450481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180117, -0.869737, -0.459473,
		-0.368817, 0.492749, -0.788145,
		0.911884, 0.027503, -0.409526,
		24.696827, 36.562046, 36.327625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.992113, 36.550243, 35.846210>,  <24.058508, 36.542793, 36.614292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.992113, 36.550243, 35.846210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358282, 36.419010, 35.939472>,  <24.577984, 36.340271, 35.995430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358282, 36.419010, 35.939472>,  <23.992113, 36.550243, 35.846210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358282, 36.419010, 35.939472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208262, -0.881803, -0.423142,
		0.344425, 0.338796, -0.875550,
		0.915422, -0.328085, 0.233157,
		24.632908, 36.320583, 36.009418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520597, 36.988106, 35.437061>,  <23.992113, 36.550243, 35.846210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520597, 36.988106, 35.437061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890123, 36.874485, 35.539734>,  <25.111839, 36.806313, 35.601337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890123, 36.874485, 35.539734>,  <24.520597, 36.988106, 35.437061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890123, 36.874485, 35.539734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057113, -0.765208, -0.641245,
		0.378557, 0.577731, -0.723133,
		0.923814, -0.284048, 0.256678,
		25.167267, 36.789272, 35.616737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606119, 36.653084, 34.866734>,  <24.520597, 36.988106, 35.437061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606119, 36.653084, 34.866734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860247, 36.524063, 35.147396>,  <25.012724, 36.446651, 35.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.860247, 36.524063, 35.147396>,  <24.606119, 36.653084, 34.866734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.860247, 36.524063, 35.147396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027683, -0.898496, -0.438108,
		0.771752, 0.297763, -0.561904,
		0.635321, -0.322556, 0.701659,
		25.050842, 36.427296, 35.357895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215918, 36.445030, 34.537838>,  <24.606119, 36.653084, 34.866734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215918, 36.445030, 34.537838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167210, 36.236195, 34.875500>,  <25.137985, 36.110893, 35.078094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.167210, 36.236195, 34.875500>,  <25.215918, 36.445030, 34.537838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.167210, 36.236195, 34.875500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036072, -0.847591, -0.529422,
		0.991903, -0.094918, 0.084379,
		-0.121771, -0.522091, 0.844152,
		25.130678, 36.079567, 35.128746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541710, 35.853874, 34.451908>,  <25.215918, 36.445030, 34.537838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541710, 35.853874, 34.451908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312214, 35.734406, 34.756962>,  <25.174517, 35.662724, 34.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312214, 35.734406, 34.756962>,  <25.541710, 35.853874, 34.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312214, 35.734406, 34.756962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139844, -0.881742, -0.450527,
		0.807012, -0.365135, 0.464121,
		-0.573738, -0.298676, 0.762638,
		25.140093, 35.644802, 34.985752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.785347, 35.207836, 34.561680>,  <25.541710, 35.853874, 34.451908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.785347, 35.207836, 34.561680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440710, 35.217850, 34.764473>,  <25.233929, 35.223858, 34.886150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440710, 35.217850, 34.764473>,  <25.785347, 35.207836, 34.561680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440710, 35.217850, 34.764473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159975, -0.961277, -0.224398,
		0.481734, -0.274444, 0.832234,
		-0.861592, 0.025036, 0.506984,
		25.182232, 35.225361, 34.916569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.814594, 34.736012, 35.154137>,  <25.785347, 35.207836, 34.561680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.814594, 34.736012, 35.154137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434885, 34.771568, 35.033489>,  <25.207058, 34.792900, 34.961102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434885, 34.771568, 35.033489>,  <25.814594, 34.736012, 35.154137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434885, 34.771568, 35.033489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065455, -0.994060, -0.086947,
		-0.307558, -0.062794, 0.949455,
		-0.949275, 0.088888, -0.301621,
		25.150103, 34.798233, 34.943005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317345, 34.344193, 35.608856>,  <25.814594, 34.736012, 35.154137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317345, 34.344193, 35.608856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174479, 34.373436, 35.236385>,  <25.088758, 34.390984, 35.012905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174479, 34.373436, 35.236385>,  <25.317345, 34.344193, 35.608856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174479, 34.373436, 35.236385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080220, -0.995649, -0.047404,
		-0.930589, 0.057768, 0.361478,
		-0.357167, 0.073111, -0.931175,
		25.067329, 34.395370, 34.957031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423185, 33.886711, 35.029587>,  <25.317345, 34.344193, 35.608856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423185, 33.886711, 35.029587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786362, 33.813431, 35.180363>,  <26.004267, 33.769463, 35.270828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.786362, 33.813431, 35.180363>,  <25.423185, 33.886711, 35.029587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.786362, 33.813431, 35.180363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339557, 0.205608, 0.917838,
		-0.245651, -0.961334, 0.124472,
		0.907941, -0.183202, 0.376936,
		26.058744, 33.758469, 35.293442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.352995, 33.391239, 35.636414>,  <25.423185, 33.886711, 35.029587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.352995, 33.391239, 35.636414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683990, 33.613522, 35.668549>,  <25.882587, 33.746891, 35.687832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.683990, 33.613522, 35.668549>,  <25.352995, 33.391239, 35.636414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.683990, 33.613522, 35.668549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304729, 0.324296, 0.895529,
		0.471595, -0.765522, 0.437691,
		0.827489, 0.555705, 0.080340,
		25.932238, 33.780231, 35.692650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.447556, 33.364952, 36.244915>,  <25.352995, 33.391239, 35.636414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.447556, 33.364952, 36.244915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717236, 33.655262, 36.190212>,  <25.879044, 33.829449, 36.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717236, 33.655262, 36.190212>,  <25.447556, 33.364952, 36.244915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717236, 33.655262, 36.190212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289158, 0.429782, 0.855380,
		0.679592, -0.537152, 0.499622,
		0.674198, 0.725779, -0.136754,
		25.919495, 33.872997, 36.149185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.729078, 33.250744, 36.923344>,  <25.447556, 33.364952, 36.244915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.729078, 33.250744, 36.923344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762953, 33.632431, 36.808590>,  <25.783278, 33.861443, 36.739738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.762953, 33.632431, 36.808590>,  <25.729078, 33.250744, 36.923344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.762953, 33.632431, 36.808590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295037, 0.299023, 0.907490,
		0.951726, 0.007792, 0.306851,
		0.084684, 0.954214, -0.286887,
		25.788359, 33.918694, 36.722523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373177, 33.259640, 36.690880>,  <25.729078, 33.250744, 36.923344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373177, 33.259640, 36.690880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519485, 33.596851, 36.533142>,  <26.607271, 33.799179, 36.438499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.519485, 33.596851, 36.533142>,  <26.373177, 33.259640, 36.690880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519485, 33.596851, 36.533142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142557, 0.469449, 0.871375,
		0.919721, -0.262511, 0.291892,
		0.365774, 0.843033, -0.394340,
		26.629217, 33.849762, 36.414841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887199, 33.596222, 37.153618>,  <26.373177, 33.259640, 36.690880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887199, 33.596222, 37.153618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732098, 33.883591, 36.922615>,  <26.639036, 34.056011, 36.784012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.732098, 33.883591, 36.922615>,  <26.887199, 33.596222, 37.153618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732098, 33.883591, 36.922615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259013, 0.516359, 0.816263,
		0.884623, 0.466093, -0.014141,
		-0.387756, 0.718422, -0.577507,
		26.615770, 34.099117, 36.749363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150829, 34.275093, 37.422070>,  <26.887199, 33.596222, 37.153618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150829, 34.275093, 37.422070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796717, 34.341728, 37.248390>,  <26.584249, 34.381710, 37.144184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796717, 34.341728, 37.248390>,  <27.150829, 34.275093, 37.422070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796717, 34.341728, 37.248390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281299, 0.551670, 0.785195,
		0.370338, 0.817257, -0.441522,
		-0.885280, 0.166588, -0.434198,
		26.531132, 34.391705, 37.118130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128319, 34.971931, 37.256222>,  <27.150829, 34.275093, 37.422070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128319, 34.971931, 37.256222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751045, 34.840202, 37.273884>,  <26.524681, 34.761166, 37.284481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.751045, 34.840202, 37.273884>,  <27.128319, 34.971931, 37.256222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.751045, 34.840202, 37.273884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171219, 0.595602, 0.784820,
		-0.284762, 0.732669, -0.618148,
		-0.943183, -0.329325, 0.044158,
		26.468090, 34.741405, 37.287132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709124, 35.572674, 37.464218>,  <27.128319, 34.971931, 37.256222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709124, 35.572674, 37.464218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577358, 35.208878, 37.565666>,  <26.498299, 34.990601, 37.626534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577358, 35.208878, 37.565666>,  <26.709124, 35.572674, 37.464218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577358, 35.208878, 37.565666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128455, 0.309281, 0.942255,
		-0.935407, 0.277813, -0.218709,
		-0.329413, -0.909487, 0.253617,
		26.478535, 34.936031, 37.641750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.208260, 35.634380, 37.989330>,  <26.709124, 35.572674, 37.464218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.208260, 35.634380, 37.989330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291246, 35.243084, 37.990578>,  <26.341038, 35.008308, 37.991325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291246, 35.243084, 37.990578>,  <26.208260, 35.634380, 37.989330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291246, 35.243084, 37.990578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299595, -0.060500, 0.952146,
		-0.931236, -0.198473, -0.305626,
		0.207466, -0.978237, 0.003122,
		26.353487, 34.949612, 37.991516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.628605, 35.356590, 38.217972>,  <26.208260, 35.634380, 37.989330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.628605, 35.356590, 38.217972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951767, 35.138378, 38.307133>,  <26.145664, 35.007450, 38.360630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951767, 35.138378, 38.307133>,  <25.628605, 35.356590, 38.217972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951767, 35.138378, 38.307133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268521, -0.004078, 0.963265,
		-0.524580, -0.838082, -0.149781,
		0.807906, -0.545529, 0.222903,
		26.194139, 34.974720, 38.374004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.431341, 34.621918, 37.995182>,  <25.628605, 35.356590, 38.217972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.431341, 34.621918, 37.995182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719803, 34.823193, 37.804710>,  <25.892879, 34.943958, 37.690430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719803, 34.823193, 37.804710>,  <25.431341, 34.621918, 37.995182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719803, 34.823193, 37.804710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213200, -0.492789, -0.843625,
		-0.659152, 0.709905, -0.248099,
		0.721154, 0.503183, -0.476175,
		25.936150, 34.974148, 37.661858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.210001, 34.488678, 37.215084>,  <25.431341, 34.621918, 37.995182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.210001, 34.488678, 37.215084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597441, 34.586807, 37.231239>,  <25.829905, 34.645683, 37.240932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.597441, 34.586807, 37.231239>,  <25.210001, 34.488678, 37.215084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.597441, 34.586807, 37.231239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176318, -0.563252, -0.807254,
		-0.175287, 0.789028, -0.588821,
		0.968600, 0.245321, 0.040389,
		25.888021, 34.660404, 37.243355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423483, 34.774582, 36.541222>,  <25.210001, 34.488678, 37.215084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423483, 34.774582, 36.541222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757736, 34.646919, 36.720043>,  <25.958288, 34.570320, 36.827335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.757736, 34.646919, 36.720043>,  <25.423483, 34.774582, 36.541222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.757736, 34.646919, 36.720043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300777, -0.415144, -0.858597,
		0.459621, 0.851934, -0.250912,
		0.835633, -0.319160, 0.447051,
		26.008427, 34.551170, 36.854160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.056044, 35.023617, 36.107880>,  <25.423483, 34.774582, 36.541222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.056044, 35.023617, 36.107880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162430, 34.693150, 36.306561>,  <26.226261, 34.494869, 36.425770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.162430, 34.693150, 36.306561>,  <26.056044, 35.023617, 36.107880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.162430, 34.693150, 36.306561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418816, -0.365054, -0.831461,
		0.868249, 0.429165, 0.248921,
		0.265964, -0.826168, 0.496699,
		26.242220, 34.445301, 36.455570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.780754, 34.827583, 35.868786>,  <26.056044, 35.023617, 36.107880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.780754, 34.827583, 35.868786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540438, 34.528599, 35.982170>,  <26.396248, 34.349209, 36.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540438, 34.528599, 35.982170>,  <26.780754, 34.827583, 35.868786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540438, 34.528599, 35.982170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380715, -0.579330, -0.720717,
		0.702927, -0.325082, 0.632626,
		-0.600791, -0.747462, 0.283463,
		26.360201, 34.304359, 36.067207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126575, 34.175098, 35.942547>,  <26.780754, 34.827583, 35.868786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126575, 34.175098, 35.942547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750593, 34.060699, 35.868050>,  <26.525003, 33.992062, 35.823353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750593, 34.060699, 35.868050>,  <27.126575, 34.175098, 35.942547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750593, 34.060699, 35.868050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310565, -0.490481, -0.814234,
		0.141520, -0.823186, 0.549852,
		-0.939958, -0.285995, -0.186240,
		26.468605, 33.974899, 35.812176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.275806, 33.526051, 35.694096>,  <27.126575, 34.175098, 35.942547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.275806, 33.526051, 35.694096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905807, 33.634769, 35.587883>,  <26.683807, 33.700001, 35.524155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905807, 33.634769, 35.587883>,  <27.275806, 33.526051, 35.694096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905807, 33.634769, 35.587883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191738, -0.269444, -0.943735,
		-0.328048, -0.923865, 0.197122,
		-0.924998, 0.271795, -0.265531,
		26.628307, 33.716309, 35.508224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.085302, 32.980396, 35.371696>,  <27.275806, 33.526051, 35.694096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.085302, 32.980396, 35.371696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874825, 33.293728, 35.239326>,  <26.748537, 33.481728, 35.159904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874825, 33.293728, 35.239326>,  <27.085302, 32.980396, 35.371696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874825, 33.293728, 35.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195869, -0.267044, -0.943569,
		-0.827499, -0.561318, -0.012914,
		-0.526194, 0.783332, -0.330924,
		26.716967, 33.528728, 35.140049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563858, 32.730846, 34.810684>,  <27.085302, 32.980396, 35.371696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563858, 32.730846, 34.810684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700005, 33.105175, 34.774036>,  <26.781693, 33.329773, 34.752048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700005, 33.105175, 34.774036>,  <26.563858, 32.730846, 34.810684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700005, 33.105175, 34.774036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391660, -0.229681, -0.890982,
		-0.854842, 0.267374, -0.444698,
		0.340364, 0.935819, -0.091621,
		26.802114, 33.385921, 34.746552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.402781, 33.008720, 34.124542>,  <26.563858, 32.730846, 34.810684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.402781, 33.008720, 34.124542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719816, 33.194859, 34.282150>,  <26.910038, 33.306541, 34.376717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.719816, 33.194859, 34.282150>,  <26.402781, 33.008720, 34.124542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719816, 33.194859, 34.282150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470548, -0.055820, -0.880607,
		-0.387794, 0.883366, -0.263210,
		0.792591, 0.465347, 0.394020,
		26.957594, 33.334461, 34.400356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.613146, 33.644367, 33.639812>,  <26.402781, 33.008720, 34.124542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.613146, 33.644367, 33.639812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896812, 33.451019, 33.845116>,  <27.067013, 33.335011, 33.968296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.896812, 33.451019, 33.845116>,  <26.613146, 33.644367, 33.639812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.896812, 33.451019, 33.845116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514274, -0.143331, -0.845564,
		0.482288, 0.863601, 0.146941,
		0.709169, -0.483373, 0.513255,
		27.109564, 33.306007, 33.999092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414856, 33.910831, 33.498028>,  <26.613146, 33.644367, 33.639812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414856, 33.910831, 33.498028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385618, 33.518726, 33.571495>,  <27.368076, 33.283463, 33.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385618, 33.518726, 33.571495>,  <27.414856, 33.910831, 33.498028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385618, 33.518726, 33.571495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484297, -0.195880, -0.852694,
		0.871845, 0.026626, 0.489057,
		-0.073093, -0.980266, 0.183672,
		27.363689, 33.224648, 33.626598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098396, 33.596935, 33.310013>,  <27.414856, 33.910831, 33.498028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098396, 33.596935, 33.310013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848890, 33.284306, 33.313049>,  <27.699186, 33.096725, 33.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848890, 33.284306, 33.313049>,  <28.098396, 33.596935, 33.310013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848890, 33.284306, 33.313049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492093, -0.400242, -0.773079,
		0.607260, -0.478481, 0.634264,
		-0.623763, -0.781577, 0.007594,
		27.661762, 33.049831, 33.315327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530508, 32.923851, 33.337738>,  <28.098396, 33.596935, 33.310013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530508, 32.923851, 33.337738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210318, 32.851765, 33.109085>,  <28.018204, 32.808514, 32.971893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.210318, 32.851765, 33.109085>,  <28.530508, 32.923851, 33.337738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.210318, 32.851765, 33.109085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597808, -0.171365, -0.783109,
		0.043169, -0.968585, 0.244906,
		-0.800476, -0.180213, -0.571630,
		27.970175, 32.797703, 32.937595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017311, 33.295902, 33.530872>,  <28.530508, 32.923851, 33.337738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017311, 33.295902, 33.530872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130814, 33.526115, 33.224087>,  <29.198915, 33.664246, 33.040016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.130814, 33.526115, 33.224087>,  <29.017311, 33.295902, 33.530872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.130814, 33.526115, 33.224087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903462, 0.107543, 0.414958,
		0.321305, -0.810675, -0.489458,
		0.283758, 0.575535, -0.766968,
		29.215940, 33.698776, 32.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511759, 33.061089, 33.106560>,  <29.017311, 33.295902, 33.530872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511759, 33.061089, 33.106560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526865, 33.460804, 33.105965>,  <29.535929, 33.700634, 33.105606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526865, 33.460804, 33.105965>,  <29.511759, 33.061089, 33.106560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526865, 33.460804, 33.105965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968393, -0.036228, 0.246785,
		0.246555, -0.010764, -0.969069,
		0.037763, 0.999286, -0.001492,
		29.538195, 33.760590, 33.105518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.092833, 33.175663, 32.678173>,  <29.511759, 33.061089, 33.106560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.092833, 33.175663, 32.678173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029325, 33.486198, 32.922169>,  <29.991220, 33.672520, 33.068565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.029325, 33.486198, 32.922169>,  <30.092833, 33.175663, 32.678173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029325, 33.486198, 32.922169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939942, -0.070231, 0.334032,
		0.302163, 0.626388, -0.718565,
		-0.158768, 0.776341, 0.609990,
		29.981695, 33.719101, 33.105167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644053, 33.609390, 32.556717>,  <30.092833, 33.175663, 32.678173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644053, 33.609390, 32.556717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497889, 33.672359, 32.923691>,  <30.410191, 33.710140, 33.143875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497889, 33.672359, 32.923691>,  <30.644053, 33.609390, 32.556717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497889, 33.672359, 32.923691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917984, -0.102337, 0.383187,
		0.154208, 0.982215, -0.107113,
		-0.365410, 0.157419, 0.917439,
		30.388266, 33.719585, 33.198921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004368, 34.296204, 32.333237>,  <30.644053, 33.609390, 32.556717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004368, 34.296204, 32.333237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125196, 34.511822, 32.018738>,  <31.197695, 34.641193, 31.830040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125196, 34.511822, 32.018738>,  <31.004368, 34.296204, 32.333237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125196, 34.511822, 32.018738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898746, -0.436011, 0.046369,
		-0.317817, -0.720641, -0.616173,
		0.302074, 0.539046, -0.786245,
		31.215818, 34.673534, 31.782864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218203, 33.846767, 31.816065>,  <31.004368, 34.296204, 32.333237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218203, 33.846767, 31.816065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406994, 34.198223, 31.787155>,  <31.520269, 34.409096, 31.769810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406994, 34.198223, 31.787155>,  <31.218203, 33.846767, 31.816065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406994, 34.198223, 31.787155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877513, -0.460310, 0.134487,
		0.084897, -0.126898, -0.988276,
		0.471979, 0.878642, -0.072276,
		31.548588, 34.461815, 31.765472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635885, 33.915398, 31.180372>,  <31.218203, 33.846767, 31.816065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635885, 33.915398, 31.180372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757704, 34.083656, 31.522203>,  <31.830795, 34.184612, 31.727303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.757704, 34.083656, 31.522203>,  <31.635885, 33.915398, 31.180372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757704, 34.083656, 31.522203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817599, -0.575733, -0.007977,
		0.488654, 0.701131, -0.519261,
		0.304549, 0.420650, 0.854578,
		31.849068, 34.209850, 31.778578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340626, 34.299526, 31.204094>,  <31.635885, 33.915398, 31.180372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340626, 34.299526, 31.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252354, 34.134594, 31.557655>,  <32.199390, 34.035633, 31.769793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.252354, 34.134594, 31.557655>,  <32.340626, 34.299526, 31.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252354, 34.134594, 31.557655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716864, -0.683080, -0.139672,
		0.661367, 0.602815, 0.446328,
		-0.220681, -0.412331, 0.883902,
		32.186150, 34.010895, 31.822826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937244, 34.206135, 31.725676>,  <32.340626, 34.299526, 31.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937244, 34.206135, 31.725676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634766, 33.945400, 31.748537>,  <32.453278, 33.788960, 31.762255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634766, 33.945400, 31.748537>,  <32.937244, 34.206135, 31.725676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634766, 33.945400, 31.748537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639890, -0.754931, -0.143594,
		0.136749, -0.072013, 0.987985,
		-0.756201, -0.651838, 0.057155,
		32.407906, 33.749847, 31.765684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169605, 33.605179, 31.978476>,  <32.937244, 34.206135, 31.725676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169605, 33.605179, 31.978476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860271, 33.497181, 31.749022>,  <32.674671, 33.432381, 31.611349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860271, 33.497181, 31.749022>,  <33.169605, 33.605179, 31.978476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860271, 33.497181, 31.749022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566715, -0.700010, -0.434534,
		-0.284228, -0.661127, 0.694353,
		-0.773336, -0.269993, -0.573633,
		32.628269, 33.416183, 31.576931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062374, 32.787300, 31.993467>,  <33.169605, 33.605179, 31.978476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062374, 32.787300, 31.993467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975422, 32.981003, 31.654470>,  <32.923252, 33.097225, 31.451073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975422, 32.981003, 31.654470>,  <33.062374, 32.787300, 31.993467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975422, 32.981003, 31.654470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719607, -0.507115, -0.474341,
		-0.659478, -0.712973, -0.238238,
		-0.217379, 0.484256, -0.847492,
		32.910210, 33.126278, 31.400223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955734, 32.291779, 31.459745>,  <33.062374, 32.787300, 31.993467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955734, 32.291779, 31.459745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089912, 32.635857, 31.306103>,  <33.170418, 32.842304, 31.213917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089912, 32.635857, 31.306103>,  <32.955734, 32.291779, 31.459745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089912, 32.635857, 31.306103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681144, -0.503125, -0.531891,
		-0.650784, -0.083211, -0.754690,
		0.335444, 0.860198, -0.384104,
		33.190544, 32.893917, 31.190872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822849, 32.342155, 30.669491>,  <32.955734, 32.291779, 31.459745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822849, 32.342155, 30.669491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139427, 32.565693, 30.768541>,  <33.329372, 32.699814, 30.827971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139427, 32.565693, 30.768541>,  <32.822849, 32.342155, 30.669491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139427, 32.565693, 30.768541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593069, -0.604008, -0.532394,
		-0.147957, 0.568216, -0.809468,
		0.791441, 0.558842, 0.247624,
		33.376858, 32.733345, 30.842829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198963, 32.291584, 30.117004>,  <32.822849, 32.342155, 30.669491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198963, 32.291584, 30.117004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458855, 32.436710, 30.384203>,  <33.614788, 32.523788, 30.544521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.458855, 32.436710, 30.384203>,  <33.198963, 32.291584, 30.117004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458855, 32.436710, 30.384203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745642, -0.475148, -0.467174,
		0.147897, 0.801621, -0.579250,
		0.649726, 0.362820, 0.667995,
		33.653774, 32.545555, 30.584602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877495, 32.424728, 29.662697>,  <33.198963, 32.291584, 30.117004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877495, 32.424728, 29.662697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975819, 32.424843, 30.050425>,  <34.034813, 32.424911, 30.283062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975819, 32.424843, 30.050425>,  <33.877495, 32.424728, 29.662697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975819, 32.424843, 30.050425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865667, -0.449987, -0.219390,
		0.436118, 0.893035, -0.110857,
		0.245807, 0.000285, 0.969319,
		34.049561, 32.424927, 30.341221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589508, 32.770412, 29.647711>,  <33.877495, 32.424728, 29.662697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589508, 32.770412, 29.647711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535709, 32.543331, 29.972580>,  <34.503429, 32.407082, 30.167501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535709, 32.543331, 29.972580>,  <34.589508, 32.770412, 29.647711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535709, 32.543331, 29.972580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907993, -0.398823, -0.128413,
		0.396813, 0.720175, 0.569111,
		-0.134494, -0.567704, 0.812172,
		34.495361, 32.373020, 30.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176971, 32.705616, 29.920929>,  <34.589508, 32.770412, 29.647711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176971, 32.705616, 29.920929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996529, 32.389355, 30.086517>,  <34.888264, 32.199596, 30.185871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996529, 32.389355, 30.086517>,  <35.176971, 32.705616, 29.920929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996529, 32.389355, 30.086517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750891, -0.586939, -0.302763,
		0.482357, 0.174271, 0.858464,
		-0.451103, -0.790653, 0.413973,
		34.861198, 32.152161, 30.210709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688423, 32.332191, 30.053709>,  <35.176971, 32.705616, 29.920929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688423, 32.332191, 30.053709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385494, 32.071991, 30.076740>,  <35.203739, 31.915871, 30.090559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385494, 32.071991, 30.076740>,  <35.688423, 32.332191, 30.053709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385494, 32.071991, 30.076740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577464, -0.708232, -0.406131,
		0.304968, -0.274321, 0.911999,
		-0.757318, -0.650504, 0.057578,
		35.158298, 31.876841, 30.094013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942249, 31.682850, 30.325056>,  <35.688423, 32.332191, 30.053709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942249, 31.682850, 30.325056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608391, 31.564705, 30.139099>,  <35.408073, 31.493818, 30.027525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608391, 31.564705, 30.139099>,  <35.942249, 31.682850, 30.325056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608391, 31.564705, 30.139099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509048, -0.735970, -0.446339,
		-0.210315, -0.609188, 0.764629,
		-0.834648, -0.295361, -0.464891,
		35.357998, 31.476097, 29.999632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949707, 30.887604, 30.422831>,  <35.942249, 31.682850, 30.325056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949707, 30.887604, 30.422831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691952, 30.948776, 30.123129>,  <35.537300, 30.985479, 29.943308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.691952, 30.948776, 30.123129>,  <35.949707, 30.887604, 30.422831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691952, 30.948776, 30.123129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548244, -0.590663, -0.592070,
		-0.533101, -0.792294, 0.296771,
		-0.644385, 0.152930, -0.749253,
		35.498634, 30.994656, 29.898354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828724, 30.234833, 30.151945>,  <35.949707, 30.887604, 30.422831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828724, 30.234833, 30.151945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724434, 30.471123, 29.846510>,  <35.661861, 30.612898, 29.663248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724434, 30.471123, 29.846510>,  <35.828724, 30.234833, 30.151945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724434, 30.471123, 29.846510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545424, -0.562490, -0.621384,
		-0.796578, -0.578488, -0.175542,
		-0.260723, 0.590726, -0.763588,
		35.646217, 30.648340, 29.617434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578102, 29.766174, 29.597645>,  <35.828724, 30.234833, 30.151945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578102, 29.766174, 29.597645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659115, 30.117741, 29.424910>,  <35.707722, 30.328680, 29.321268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659115, 30.117741, 29.424910>,  <35.578102, 29.766174, 29.597645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659115, 30.117741, 29.424910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539470, -0.468169, -0.699850,
		-0.817284, -0.091223, -0.568969,
		0.202531, 0.878918, -0.431839,
		35.719875, 30.381416, 29.295359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573025, 29.545414, 28.972214>,  <35.578102, 29.766174, 29.597645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573025, 29.545414, 28.972214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764114, 29.896418, 28.955425>,  <35.878769, 30.107019, 28.945353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.764114, 29.896418, 28.955425>,  <35.573025, 29.545414, 28.972214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764114, 29.896418, 28.955425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610237, -0.365829, -0.702695,
		-0.631975, 0.310080, -0.710252,
		0.477723, 0.877507, -0.041973,
		35.907433, 30.159670, 28.942833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638035, 29.716785, 28.294109>,  <35.573025, 29.545414, 28.972214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638035, 29.716785, 28.294109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913208, 29.952026, 28.464230>,  <36.078312, 30.093170, 28.566301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913208, 29.952026, 28.464230>,  <35.638035, 29.716785, 28.294109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913208, 29.952026, 28.464230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578690, -0.090809, -0.810476,
		-0.438020, 0.803674, -0.402798,
		0.687937, 0.588100, 0.425302,
		36.119591, 30.128456, 28.591820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694107, 30.129948, 27.839005>,  <35.638035, 29.716785, 28.294109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694107, 30.129948, 27.839005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023785, 30.149715, 28.064665>,  <36.221592, 30.161577, 28.200062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023785, 30.149715, 28.064665>,  <35.694107, 30.129948, 27.839005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023785, 30.149715, 28.064665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565712, -0.026042, -0.824192,
		-0.026042, 0.998438, -0.049422,
		0.824192, 0.049422, 0.564151,
		36.271042, 30.164541, 28.233910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033913, 30.584726, 27.516222>,  <35.694107, 30.129948, 27.839005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033913, 30.584726, 27.516222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307144, 30.399736, 27.742327>,  <36.471085, 30.288742, 27.877989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307144, 30.399736, 27.742327>,  <36.033913, 30.584726, 27.516222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307144, 30.399736, 27.742327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638763, 0.003061, -0.769397,
		0.354096, 0.886627, 0.297503,
		0.683080, -0.462474, 0.565261,
		36.512070, 30.260994, 27.911905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761082, 30.912718, 27.524973>,  <36.033913, 30.584726, 27.516222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761082, 30.912718, 27.524973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 30.528526, 27.622885>,  <36.845901, 30.298012, 27.681631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 30.528526, 27.622885>,  <36.761082, 30.912718, 27.524973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814095, 30.528526, 27.622885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649101, -0.102532, -0.753761,
		0.749069, 0.258780, 0.609859,
		0.132528, -0.960479, 0.244778,
		36.853851, 30.240383, 27.696318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320995, 30.875771, 27.233829>,  <36.761082, 30.912718, 27.524973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320995, 30.875771, 27.233829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264256, 30.490511, 27.325235>,  <37.230213, 30.259354, 27.380079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.264256, 30.490511, 27.325235>,  <37.320995, 30.875771, 27.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264256, 30.490511, 27.325235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564651, -0.268335, -0.780491,
		0.813049, 0.018322, 0.581906,
		-0.141846, -0.963151, 0.228515,
		37.221703, 30.201565, 27.393789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061062, 30.603460, 27.259708>,  <37.320995, 30.875771, 27.233829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061062, 30.603460, 27.259708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802155, 30.305264, 27.196106>,  <37.646809, 30.126345, 27.157944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802155, 30.305264, 27.196106>,  <38.061062, 30.603460, 27.259708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802155, 30.305264, 27.196106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629833, -0.405555, -0.662447,
		0.429362, -0.528930, 0.732039,
		-0.647270, -0.745492, -0.159007,
		37.607975, 30.081615, 27.148403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470833, 29.990593, 27.295263>,  <38.061062, 30.603460, 27.259708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470833, 29.990593, 27.295263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146530, 29.882793, 27.087400>,  <37.951950, 29.818113, 26.962683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146530, 29.882793, 27.087400>,  <38.470833, 29.990593, 27.295263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146530, 29.882793, 27.087400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585368, -0.366735, -0.723083,
		0.004292, -0.890436, 0.455088,
		-0.810756, -0.269497, -0.519659,
		37.903305, 29.801945, 26.931503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570824, 29.266920, 27.061802>,  <38.470833, 29.990593, 27.295263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570824, 29.266920, 27.061802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301197, 29.446548, 26.827208>,  <38.139420, 29.554325, 26.686451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301197, 29.446548, 26.827208>,  <38.570824, 29.266920, 27.061802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301197, 29.446548, 26.827208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410994, -0.431717, -0.802935,
		-0.613771, -0.782275, 0.106442,
		-0.674069, 0.449072, -0.586486,
		38.098976, 29.581270, 26.651262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423588, 28.808249, 26.528597>,  <38.570824, 29.266920, 27.061802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423588, 28.808249, 26.528597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320938, 29.169039, 26.389696>,  <38.259346, 29.385513, 26.306356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.320938, 29.169039, 26.389696>,  <38.423588, 28.808249, 26.528597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320938, 29.169039, 26.389696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452082, -0.205535, -0.867972,
		-0.854262, -0.379733, -0.355020,
		-0.256629, 0.901974, -0.347252,
		38.243950, 29.439631, 26.285521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103748, 28.773943, 25.845169>,  <38.423588, 28.808249, 26.528597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103748, 28.773943, 25.845169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259964, 29.140625, 25.878946>,  <38.353691, 29.360634, 25.899212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.259964, 29.140625, 25.878946>,  <38.103748, 28.773943, 25.845169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259964, 29.140625, 25.878946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435355, -0.103088, -0.894337,
		-0.811140, 0.386032, -0.439352,
		0.390535, 0.916707, 0.084442,
		38.377125, 29.415638, 25.904280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929123, 29.090128, 25.220226>,  <38.103748, 28.773943, 25.845169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929123, 29.090128, 25.220226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229172, 29.321722, 25.348034>,  <38.409203, 29.460678, 25.424719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229172, 29.321722, 25.348034>,  <37.929123, 29.090128, 25.220226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229172, 29.321722, 25.348034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421625, -0.046496, -0.905578,
		-0.509459, 0.814012, -0.278992,
		0.750123, 0.578985, 0.319520,
		38.454208, 29.495417, 25.443890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111706, 29.489346, 24.649765>,  <37.929123, 29.090128, 25.220226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111706, 29.489346, 24.649765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440289, 29.561081, 24.866301>,  <38.637440, 29.604122, 24.996222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440289, 29.561081, 24.866301>,  <38.111706, 29.489346, 24.649765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440289, 29.561081, 24.866301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541975, 0.049800, -0.838918,
		-0.177410, 0.982526, -0.056289,
		0.821455, 0.179339, 0.541339,
		38.686726, 29.614883, 25.028702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475773, 29.983351, 24.265154>,  <38.111706, 29.489346, 24.649765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475773, 29.983351, 24.265154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741478, 29.812578, 24.510590>,  <38.900902, 29.710115, 24.657850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741478, 29.812578, 24.510590>,  <38.475773, 29.983351, 24.265154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741478, 29.812578, 24.510590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699970, 0.067218, -0.711002,
		0.262304, 0.901783, 0.343489,
		0.664258, -0.426931, 0.613589,
		38.940754, 29.684500, 24.694666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017830, 30.393753, 24.212914>,  <38.475773, 29.983351, 24.265154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.017830, 30.393753, 24.212914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168892, 30.048786, 24.347738>,  <39.259529, 29.841806, 24.428633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168892, 30.048786, 24.347738>,  <39.017830, 30.393753, 24.212914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168892, 30.048786, 24.347738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782808, 0.102942, -0.613689,
		0.494559, 0.495618, 0.713985,
		0.377654, -0.862418, 0.337063,
		39.282188, 29.790060, 24.448856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712025, 30.512650, 24.311041>,  <39.017830, 30.393753, 24.212914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712025, 30.512650, 24.311041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690689, 30.113220, 24.310528>,  <39.677887, 29.873562, 24.310221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690689, 30.113220, 24.310528>,  <39.712025, 30.512650, 24.311041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690689, 30.113220, 24.310528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884218, -0.046636, -0.464739,
		0.464017, -0.025924, 0.885447,
		-0.053342, -0.998576, -0.001283,
		39.674686, 29.813648, 24.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360889, 30.286510, 24.636301>,  <39.712025, 30.512650, 24.311041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360889, 30.286510, 24.636301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209442, 29.980776, 24.427517>,  <40.118576, 29.797335, 24.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209442, 29.980776, 24.427517>,  <40.360889, 30.286510, 24.636301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209442, 29.980776, 24.427517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891102, -0.148594, -0.428785,
		0.250176, -0.627463, 0.737361,
		-0.378614, -0.764336, -0.521960,
		40.095860, 29.751474, 24.270929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842247, 29.662848, 24.740845>,  <40.360889, 30.286510, 24.636301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842247, 29.662848, 24.740845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634285, 29.616180, 24.402357>,  <40.509510, 29.588181, 24.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.634285, 29.616180, 24.402357>,  <40.842247, 29.662848, 24.740845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634285, 29.616180, 24.402357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788980, -0.445299, -0.423342,
		-0.327430, -0.887748, 0.323563,
		-0.519903, -0.116670, -0.846220,
		40.478313, 29.581179, 24.148491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957703, 28.976847, 24.471989>,  <40.842247, 29.662848, 24.740845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957703, 28.976847, 24.471989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831253, 29.157907, 24.138481>,  <40.755383, 29.266544, 23.938375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831253, 29.157907, 24.138481>,  <40.957703, 28.976847, 24.471989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831253, 29.157907, 24.138481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856165, -0.242500, -0.456263,
		-0.408717, -0.858080, -0.310885,
		-0.316121, 0.452651, -0.833771,
		40.736416, 29.293703, 23.888350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018909, 28.507858, 23.961573>,  <40.957703, 28.976847, 24.471989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018909, 28.507858, 23.961573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011276, 28.864662, 23.780930>,  <41.006699, 29.078745, 23.672543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011276, 28.864662, 23.780930>,  <41.018909, 28.507858, 23.961573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011276, 28.864662, 23.780930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831791, -0.236466, -0.502203,
		-0.554762, -0.385226, -0.737455,
		-0.019079, 0.892012, -0.451610,
		41.005554, 29.132265, 23.645447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144444, 28.282293, 23.251856>,  <41.018909, 28.507858, 23.961573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144444, 28.282293, 23.251856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199444, 28.677971, 23.272221>,  <41.232445, 28.915377, 23.284439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.199444, 28.677971, 23.272221>,  <41.144444, 28.282293, 23.251856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199444, 28.677971, 23.272221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597697, -0.041877, -0.800628,
		-0.789843, 0.140519, -0.596995,
		0.137504, 0.989192, 0.050911,
		41.240696, 28.974728, 23.287495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123592, 28.452379, 22.604570>,  <41.144444, 28.282293, 23.251856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123592, 28.452379, 22.604570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335560, 28.750706, 22.766039>,  <41.462738, 28.929701, 22.862919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335560, 28.750706, 22.766039>,  <41.123592, 28.452379, 22.604570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335560, 28.750706, 22.766039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580060, 0.028473, -0.814076,
		-0.618644, 0.665543, -0.417530,
		0.529914, 0.745816, 0.403669,
		41.494534, 28.974451, 22.887140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363945, 28.908859, 21.964533>,  <41.123592, 28.452379, 22.604570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363945, 28.908859, 21.964533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582485, 29.032801, 22.275787>,  <41.713608, 29.107164, 22.462540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582485, 29.032801, 22.275787>,  <41.363945, 28.908859, 21.964533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582485, 29.032801, 22.275787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820383, -0.010801, -0.571713,
		-0.168742, 0.950723, -0.260099,
		0.546350, 0.309852, 0.778134,
		41.746391, 29.125757, 22.509228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729385, 29.603474, 21.802971>,  <41.363945, 28.908859, 21.964533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729385, 29.603474, 21.802971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942318, 29.408821, 22.080048>,  <42.070076, 29.292030, 22.246292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942318, 29.408821, 22.080048>,  <41.729385, 29.603474, 21.802971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942318, 29.408821, 22.080048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819465, 0.090940, -0.565868,
		0.212375, 0.868862, 0.447186,
		0.532328, -0.486629, 0.692689,
		42.102016, 29.262833, 22.287855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284317, 30.051378, 21.939751>,  <41.729385, 29.603474, 21.802971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284317, 30.051378, 21.939751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394695, 29.684727, 22.055433>,  <42.460922, 29.464735, 22.124842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.394695, 29.684727, 22.055433>,  <42.284317, 30.051378, 21.939751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394695, 29.684727, 22.055433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827463, 0.073464, -0.556694,
		0.489037, 0.392926, 0.778750,
		0.275950, -0.916631, 0.289205,
		42.477482, 29.409737, 22.142195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932808, 30.220242, 22.002550>,  <42.284317, 30.051378, 21.939751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932808, 30.220242, 22.002550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896160, 29.826855, 21.940065>,  <42.874172, 29.590822, 21.902575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896160, 29.826855, 21.940065>,  <42.932808, 30.220242, 22.002550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896160, 29.826855, 21.940065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801563, 0.020240, -0.597567,
		0.590848, -0.179965, 0.786455,
		-0.091623, -0.983465, -0.156212,
		42.868671, 29.531815, 21.893202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.635880, 29.951435, 21.875839>,  <42.932808, 30.220242, 22.002550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.635880, 29.951435, 21.875839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436272, 29.620165, 21.773779>,  <43.316505, 29.421402, 21.712543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436272, 29.620165, 21.773779>,  <43.635880, 29.951435, 21.875839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436272, 29.620165, 21.773779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757918, -0.274340, -0.591860,
		0.420167, -0.488732, 0.764592,
		-0.499019, -0.828178, -0.255150,
		43.286568, 29.371712, 21.697233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141548, 29.359921, 21.902994>,  <43.635880, 29.951435, 21.875839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141548, 29.359921, 21.902994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844860, 29.289505, 21.644117>,  <43.666847, 29.247255, 21.488791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.844860, 29.289505, 21.644117>,  <44.141548, 29.359921, 21.902994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844860, 29.289505, 21.644117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664762, -0.064757, -0.744243,
		0.089105, -0.982251, 0.165055,
		-0.741722, -0.176038, -0.647193,
		43.622345, 29.236694, 21.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497204, 28.987503, 21.324038>,  <44.141548, 29.359921, 21.902994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497204, 28.987503, 21.324038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127571, 29.064219, 21.191799>,  <43.905792, 29.110249, 21.112455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.127571, 29.064219, 21.191799>,  <44.497204, 28.987503, 21.324038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127571, 29.064219, 21.191799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315419, -0.105800, -0.943036,
		-0.215842, -0.975716, 0.037273,
		-0.924080, 0.191790, -0.330596,
		43.850346, 29.121756, 21.092621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265053, 28.459946, 20.921869>,  <44.497204, 28.987503, 21.324038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265053, 28.459946, 20.921869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058075, 28.783018, 20.808798>,  <43.933887, 28.976862, 20.740955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058075, 28.783018, 20.808798>,  <44.265053, 28.459946, 20.921869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058075, 28.783018, 20.808798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420765, -0.047499, -0.905926,
		-0.745124, -0.587706, -0.315265,
		-0.517443, 0.807679, -0.282678,
		43.902843, 29.025322, 20.723995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967281, 28.342918, 20.245443>,  <44.265053, 28.459946, 20.921869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967281, 28.342918, 20.245443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965820, 28.742821, 20.254152>,  <43.964943, 28.982761, 20.259378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965820, 28.742821, 20.254152>,  <43.967281, 28.342918, 20.245443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965820, 28.742821, 20.254152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415428, 0.021321, -0.909376,
		-0.909619, 0.005727, -0.415404,
		-0.003648, 0.999756, 0.021773,
		43.964725, 29.042747, 20.260685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625854, 28.628338, 19.692366>,  <43.967281, 28.342918, 20.245443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625854, 28.628338, 19.692366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830429, 28.952627, 19.806324>,  <43.953175, 29.147200, 19.874699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.830429, 28.952627, 19.806324>,  <43.625854, 28.628338, 19.692366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830429, 28.952627, 19.806324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513972, -0.022899, -0.857501,
		-0.688671, 0.584984, -0.428399,
		0.511434, 0.810722, 0.284895,
		43.983860, 29.195845, 19.891792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542816, 29.153145, 19.125566>,  <43.625854, 28.628338, 19.692366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542816, 29.153145, 19.125566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885109, 29.178131, 19.331020>,  <44.090485, 29.193123, 19.454292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885109, 29.178131, 19.331020>,  <43.542816, 29.153145, 19.125566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885109, 29.178131, 19.331020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514938, -0.005730, -0.857208,
		-0.050603, 0.998031, -0.037070,
		0.855732, 0.062466, 0.513634,
		44.141830, 29.196871, 19.485111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963337, 29.595589, 18.721819>,  <43.542816, 29.153145, 19.125566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963337, 29.595589, 18.721819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208241, 29.405058, 18.974249>,  <44.355183, 29.290739, 19.125708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.208241, 29.405058, 18.974249>,  <43.963337, 29.595589, 18.721819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208241, 29.405058, 18.974249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655098, -0.141302, -0.742213,
		0.442709, 0.867840, 0.225528,
		0.612255, -0.476327, 0.631076,
		44.391918, 29.262159, 19.163572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652061, 29.918200, 18.678350>,  <43.963337, 29.595589, 18.721819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652061, 29.918200, 18.678350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701691, 29.530758, 18.764523>,  <44.731468, 29.298292, 18.816225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701691, 29.530758, 18.764523>,  <44.652061, 29.918200, 18.678350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701691, 29.530758, 18.764523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534468, -0.117688, -0.836955,
		0.836033, 0.218983, 0.503086,
		0.124072, -0.968605, 0.215430,
		44.738911, 29.240177, 18.829151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393608, 29.638012, 18.717245>,  <44.652061, 29.918200, 18.678350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393608, 29.638012, 18.717245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143715, 29.350586, 18.595016>,  <44.993778, 29.178129, 18.521679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.143715, 29.350586, 18.595016>,  <45.393608, 29.638012, 18.717245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143715, 29.350586, 18.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553579, -0.131586, -0.822335,
		0.550693, -0.682896, 0.479989,
		-0.624730, -0.718566, -0.305574,
		44.956295, 29.135015, 18.503344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718307, 29.133493, 18.363134>,  <45.393608, 29.638012, 18.717245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718307, 29.133493, 18.363134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359051, 29.036928, 18.216131>,  <45.143497, 28.978989, 18.127930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.359051, 29.036928, 18.216131>,  <45.718307, 29.133493, 18.363134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.359051, 29.036928, 18.216131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436421, -0.387474, -0.812035,
		0.053635, -0.889710, 0.453363,
		-0.898142, -0.241411, -0.367506,
		45.089607, 28.964504, 18.105879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795193, 29.764235, 17.903336>,  <45.718307, 29.133493, 18.363134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795193, 29.764235, 17.903336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607403, 29.688957, 17.558273>,  <45.494728, 29.643791, 17.351236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.607403, 29.688957, 17.558273>,  <45.795193, 29.764235, 17.903336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607403, 29.688957, 17.558273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871134, 0.060561, -0.487297,
		0.143951, -0.980263, 0.135513,
		-0.469472, -0.188196, -0.862658,
		45.466560, 29.632498, 17.299477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059570, 30.026497, 17.618607>,  <45.795193, 29.764235, 17.903336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059570, 30.026497, 17.618607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111420, 30.416426, 17.546026>,  <45.142529, 30.650383, 17.502478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.111420, 30.416426, 17.546026>,  <45.059570, 30.026497, 17.618607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.111420, 30.416426, 17.546026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563432, 0.222992, 0.795499,
		0.815931, -0.000876, 0.578149,
		0.129620, 0.974820, -0.181453,
		45.150307, 30.708872, 17.491590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.307457, 30.454571, 18.246279>,  <45.059570, 30.026497, 17.618607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.307457, 30.454571, 18.246279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090420, 30.671909, 17.990036>,  <44.960197, 30.802313, 17.836290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090420, 30.671909, 17.990036>,  <45.307457, 30.454571, 18.246279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090420, 30.671909, 17.990036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515711, 0.386505, 0.764628,
		0.663053, 0.745245, 0.070496,
		-0.542588, 0.543344, -0.640605,
		44.927643, 30.834913, 17.797855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194538, 31.243572, 18.401133>,  <45.307457, 30.454571, 18.246279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194538, 31.243572, 18.401133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888874, 31.089661, 18.194057>,  <44.705475, 30.997314, 18.069813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888874, 31.089661, 18.194057>,  <45.194538, 31.243572, 18.401133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888874, 31.089661, 18.194057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640284, 0.355379, 0.680986,
		-0.078054, 0.851851, -0.517935,
		-0.764163, -0.384779, -0.517688,
		44.659626, 30.974228, 18.038752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.733604, 31.827084, 18.445711>,  <45.194538, 31.243572, 18.401133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.733604, 31.827084, 18.445711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576473, 31.460207, 18.419029>,  <44.482197, 31.240082, 18.403021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576473, 31.460207, 18.419029>,  <44.733604, 31.827084, 18.445711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576473, 31.460207, 18.419029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760509, 0.283226, 0.584303,
		-0.517025, 0.280257, -0.808790,
		-0.392825, -0.917191, -0.066703,
		44.458626, 31.185049, 18.399019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028831, 31.802553, 18.149954>,  <44.733604, 31.827084, 18.445711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028831, 31.802553, 18.149954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084919, 31.494390, 18.398731>,  <44.118572, 31.309492, 18.547997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.084919, 31.494390, 18.398731>,  <44.028831, 31.802553, 18.149954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084919, 31.494390, 18.398731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742205, 0.333971, 0.581030,
		-0.655340, -0.543081, -0.524970,
		0.140221, -0.770407, 0.621941,
		44.126984, 31.263268, 18.585314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459499, 31.461344, 18.144138>,  <44.028831, 31.802553, 18.149954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459499, 31.461344, 18.144138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639515, 31.356941, 18.485744>,  <43.747524, 31.294300, 18.690708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639515, 31.356941, 18.485744>,  <43.459499, 31.461344, 18.144138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639515, 31.356941, 18.485744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605210, 0.614067, 0.506599,
		-0.656649, -0.744847, 0.118388,
		0.450037, -0.261008, 0.854015,
		43.774525, 31.278639, 18.741949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.935921, 31.169199, 18.654093>,  <43.459499, 31.461344, 18.144138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.935921, 31.169199, 18.654093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243061, 31.308353, 18.869268>,  <43.427345, 31.391846, 18.998375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243061, 31.308353, 18.869268>,  <42.935921, 31.169199, 18.654093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243061, 31.308353, 18.869268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639393, 0.364054, 0.677230,
		0.039759, -0.863968, 0.501975,
		0.767851, 0.347885, 0.537941,
		43.473415, 31.412720, 19.030651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.789494, 30.888386, 19.339970>,  <42.935921, 31.169199, 18.654093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.789494, 30.888386, 19.339970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041695, 31.197882, 19.364618>,  <43.193016, 31.383579, 19.379408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041695, 31.197882, 19.364618>,  <42.789494, 30.888386, 19.339970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041695, 31.197882, 19.364618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533530, 0.374360, 0.758419,
		0.563750, -0.511061, 0.648847,
		0.630501, 0.773739, 0.061621,
		43.230846, 31.430004, 19.383104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.726097, 31.017399, 20.001585>,  <42.789494, 30.888386, 19.339970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.726097, 31.017399, 20.001585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949383, 31.328646, 19.886395>,  <43.083355, 31.515394, 19.817280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949383, 31.328646, 19.886395>,  <42.726097, 31.017399, 20.001585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949383, 31.328646, 19.886395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358267, 0.539114, 0.762234,
		0.748361, -0.322315, 0.579714,
		0.558212, 0.778118, -0.287977,
		43.116848, 31.562080, 19.800001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135868, 31.238655, 20.572971>,  <42.726097, 31.017399, 20.001585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135868, 31.238655, 20.572971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072708, 31.565796, 20.351637>,  <43.034813, 31.762081, 20.218836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072708, 31.565796, 20.351637>,  <43.135868, 31.238655, 20.572971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072708, 31.565796, 20.351637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478015, 0.427022, 0.767563,
		0.864042, 0.385702, 0.323519,
		-0.157901, 0.817854, -0.553337,
		43.025337, 31.811152, 20.185637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487389, 31.742191, 20.925285>,  <43.135868, 31.238655, 20.572971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487389, 31.742191, 20.925285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197929, 31.898590, 20.697792>,  <43.024254, 31.992430, 20.561296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.197929, 31.898590, 20.697792>,  <43.487389, 31.742191, 20.925285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197929, 31.898590, 20.697792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446641, 0.362919, 0.817803,
		0.526162, 0.845820, -0.087991,
		-0.723648, 0.390996, -0.568732,
		42.980835, 32.015888, 20.527172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.277485, 32.293545, 21.371717>,  <43.487389, 31.742191, 20.925285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.277485, 32.293545, 21.371717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980949, 32.283810, 21.103441>,  <42.803028, 32.277969, 20.942476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.980949, 32.283810, 21.103441>,  <43.277485, 32.293545, 21.371717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980949, 32.283810, 21.103441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621693, 0.401359, 0.672614,
		0.252815, 0.915597, -0.312675,
		-0.741338, -0.024341, -0.670690,
		42.758549, 32.276508, 20.902235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977478, 32.982750, 21.338037>,  <43.277485, 32.293545, 21.371717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977478, 32.982750, 21.338037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703514, 32.712582, 21.228710>,  <42.539135, 32.550480, 21.163115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.703514, 32.712582, 21.228710>,  <42.977478, 32.982750, 21.338037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.703514, 32.712582, 21.228710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640494, 0.379277, 0.667769,
		-0.347362, 0.632422, -0.692374,
		-0.684914, -0.675419, -0.273317,
		42.498039, 32.509956, 21.146715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338322, 33.363029, 21.290346>,  <42.977478, 32.982750, 21.338037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.338322, 33.363029, 21.290346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214043, 32.983780, 21.317286>,  <42.139477, 32.756229, 21.333450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.214043, 32.983780, 21.317286>,  <42.338322, 33.363029, 21.290346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214043, 32.983780, 21.317286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718819, 0.280732, 0.635994,
		-0.621907, 0.149188, -0.768749,
		-0.310695, -0.948120, 0.067350,
		42.120834, 32.699345, 21.337490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630924, 33.363022, 21.305222>,  <42.338322, 33.363029, 21.290346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630924, 33.363022, 21.305222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682041, 32.994442, 21.451977>,  <41.712711, 32.773296, 21.540030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.682041, 32.994442, 21.451977>,  <41.630924, 33.363022, 21.305222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682041, 32.994442, 21.451977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739928, 0.157754, 0.653927,
		-0.660437, -0.355033, -0.661645,
		0.127788, -0.921447, 0.366886,
		41.720379, 32.718006, 21.562042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976841, 33.061779, 21.392036>,  <41.630924, 33.363022, 21.305222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976841, 33.061779, 21.392036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211292, 32.849102, 21.636578>,  <41.351963, 32.721497, 21.783302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211292, 32.849102, 21.636578>,  <40.976841, 33.061779, 21.392036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211292, 32.849102, 21.636578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721476, 0.000835, 0.692439,
		-0.368677, -0.846936, -0.383116,
		0.586131, -0.531695, 0.611352,
		41.387131, 32.689594, 21.819983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518211, 32.500679, 21.662731>,  <40.976841, 33.061779, 21.392036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518211, 32.500679, 21.662731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 32.536125, 21.909397>,  <41.018833, 32.557392, 22.057398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831100, 32.536125, 21.909397>,  <40.518211, 32.500679, 21.662731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831100, 32.536125, 21.909397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622464, 0.070066, 0.779506,
		0.025871, -0.993598, 0.109969,
		0.782221, 0.088618, 0.616666,
		41.065765, 32.562710, 22.094397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486778, 31.930773, 22.120243>,  <40.518211, 32.500679, 21.662731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486778, 31.930773, 22.120243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722607, 32.184944, 22.319698>,  <40.864105, 32.337448, 22.439371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722607, 32.184944, 22.319698>,  <40.486778, 31.930773, 22.120243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722607, 32.184944, 22.319698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548105, -0.138717, 0.824827,
		0.593287, -0.759599, 0.266497,
		0.589569, 0.635427, 0.498639,
		40.899479, 32.375572, 22.469290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552162, 31.731932, 22.732847>,  <40.486778, 31.930773, 22.120243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552162, 31.731932, 22.732847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653797, 32.106827, 22.828369>,  <40.714779, 32.331764, 22.885681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653797, 32.106827, 22.828369>,  <40.552162, 31.731932, 22.732847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653797, 32.106827, 22.828369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655947, -0.014455, 0.754669,
		0.710755, -0.348395, 0.611104,
		0.254089, 0.937236, 0.238803,
		40.730022, 32.387997, 22.900009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670036, 31.658068, 23.499989>,  <40.552162, 31.731932, 22.732847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670036, 31.658068, 23.499989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624752, 32.041637, 23.395954>,  <40.597584, 32.271778, 23.333532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.624752, 32.041637, 23.395954>,  <40.670036, 31.658068, 23.499989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.624752, 32.041637, 23.395954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661145, 0.122700, 0.740157,
		0.741668, 0.255746, 0.620098,
		-0.113206, 0.958926, -0.260088,
		40.590790, 32.329315, 23.317928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877945, 32.049530, 24.156143>,  <40.670036, 31.658068, 23.499989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877945, 32.049530, 24.156143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630569, 32.235699, 23.902870>,  <40.482143, 32.347401, 23.750906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630569, 32.235699, 23.902870>,  <40.877945, 32.049530, 24.156143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630569, 32.235699, 23.902870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599978, 0.240716, 0.762943,
		0.507505, 0.851728, 0.130373,
		-0.618437, 0.465419, -0.633183,
		40.445038, 32.375324, 23.712915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803978, 32.615738, 24.450539>,  <40.877945, 32.049530, 24.156143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803978, 32.615738, 24.450539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487690, 32.629910, 24.206078>,  <40.297916, 32.638412, 24.059402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487690, 32.629910, 24.206078>,  <40.803978, 32.615738, 24.450539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487690, 32.629910, 24.206078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557357, 0.371254, 0.742646,
		0.253205, 0.927855, -0.273810,
		-0.790721, 0.035432, -0.611150,
		40.250473, 32.640541, 24.022732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371849, 33.071705, 24.753765>,  <40.803978, 32.615738, 24.450539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371849, 33.071705, 24.753765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130714, 32.904457, 24.481951>,  <39.986034, 32.804108, 24.318863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130714, 32.904457, 24.481951>,  <40.371849, 33.071705, 24.753765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130714, 32.904457, 24.481951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784162, 0.153313, 0.601320,
		-0.147240, 0.895362, -0.420294,
		-0.602836, -0.418116, -0.679535,
		39.949863, 32.779022, 24.278090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705189, 33.553688, 24.700855>,  <40.371849, 33.071705, 24.753765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705189, 33.553688, 24.700855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597347, 33.188763, 24.577568>,  <39.532642, 32.969807, 24.503595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597347, 33.188763, 24.577568>,  <39.705189, 33.553688, 24.700855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597347, 33.188763, 24.577568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870229, 0.093769, 0.483642,
		-0.412332, 0.398609, -0.819203,
		-0.269600, -0.912315, -0.308217,
		39.516468, 32.915070, 24.485104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097759, 33.514687, 24.287922>,  <39.705189, 33.553688, 24.700855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097759, 33.514687, 24.287922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112492, 33.138687, 24.423597>,  <39.121330, 32.913090, 24.505003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112492, 33.138687, 24.423597>,  <39.097759, 33.514687, 24.287922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112492, 33.138687, 24.423597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836145, 0.156891, 0.525592,
		-0.547271, -0.302972, -0.780194,
		0.036834, -0.939996, 0.339190,
		39.123543, 32.856689, 24.525354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403187, 33.262253, 24.284304>,  <39.097759, 33.514687, 24.287922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403187, 33.262253, 24.284304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553947, 32.986053, 24.531256>,  <38.644405, 32.820335, 24.679426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.553947, 32.986053, 24.531256>,  <38.403187, 33.262253, 24.284304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553947, 32.986053, 24.531256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840135, 0.025815, 0.541762,
		-0.390024, -0.722872, -0.570384,
		0.376900, -0.690500, 0.617379,
		38.667019, 32.778904, 24.716469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909081, 32.778584, 24.361839>,  <38.403187, 33.262253, 24.284304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909081, 32.778584, 24.361839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136147, 32.705353, 24.682898>,  <38.272385, 32.661415, 24.875532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136147, 32.705353, 24.682898>,  <37.909081, 32.778584, 24.361839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136147, 32.705353, 24.682898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823259, -0.125646, 0.553586,
		-0.000501, -0.975036, -0.222046,
		0.567665, -0.183078, 0.802645,
		38.306446, 32.650429, 24.923691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707912, 32.059036, 24.693544>,  <37.909081, 32.778584, 24.361839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707912, 32.059036, 24.693544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879150, 32.289330, 24.972187>,  <37.981892, 32.427505, 25.139372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879150, 32.289330, 24.972187>,  <37.707912, 32.059036, 24.693544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879150, 32.289330, 24.972187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804708, -0.107976, 0.583769,
		0.411315, -0.810473, 0.417077,
		0.428095, 0.575738, 0.696607,
		38.007580, 32.462051, 25.181170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504768, 31.757551, 25.258846>,  <37.707912, 32.059036, 24.693544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504768, 31.757551, 25.258846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644173, 32.104889, 25.399996>,  <37.727814, 32.313290, 25.484686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644173, 32.104889, 25.399996>,  <37.504768, 31.757551, 25.258846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644173, 32.104889, 25.399996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723968, 0.010266, 0.689757,
		0.595323, -0.495858, 0.632230,
		0.348512, 0.868343, 0.352873,
		37.748726, 32.365391, 25.505857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577370, 31.731277, 25.999582>,  <37.504768, 31.757551, 25.258846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577370, 31.731277, 25.999582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572865, 32.128460, 25.952398>,  <37.570160, 32.366768, 25.924088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572865, 32.128460, 25.952398>,  <37.577370, 31.731277, 25.999582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572865, 32.128460, 25.952398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562368, 0.091251, 0.821837,
		0.826811, 0.075594, 0.557378,
		-0.011265, 0.992954, -0.117959,
		37.569485, 32.426346, 25.917011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570518, 32.059616, 26.697868>,  <37.577370, 31.731277, 25.999582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570518, 32.059616, 26.697868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421688, 32.316845, 26.430134>,  <37.332390, 32.471184, 26.269493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421688, 32.316845, 26.430134>,  <37.570518, 32.059616, 26.697868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421688, 32.316845, 26.430134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606679, 0.377271, 0.699719,
		0.702494, 0.666423, 0.249766,
		-0.372079, 0.643077, -0.669335,
		37.310066, 32.509769, 26.229334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362667, 32.663227, 27.098101>,  <37.570518, 32.059616, 26.697868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362667, 32.663227, 27.098101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187561, 32.761829, 26.752245>,  <37.082497, 32.820992, 26.544731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187561, 32.761829, 26.752245>,  <37.362667, 32.663227, 27.098101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187561, 32.761829, 26.752245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726884, 0.468955, 0.501718,
		0.529150, 0.848126, -0.026115,
		-0.437767, 0.246501, -0.864637,
		37.056232, 32.835781, 26.492853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316525, 33.371727, 27.148565>,  <37.362667, 32.663227, 27.098101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316525, 33.371727, 27.148565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050812, 33.241180, 26.879580>,  <36.891384, 33.162853, 26.718187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.050812, 33.241180, 26.879580>,  <37.316525, 33.371727, 27.148565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050812, 33.241180, 26.879580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744707, 0.366369, 0.557840,
		0.064312, 0.871355, -0.486420,
		-0.664286, -0.326364, -0.672466,
		36.851524, 33.143272, 26.677839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894077, 33.912212, 26.813503>,  <37.316525, 33.371727, 27.148565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894077, 33.912212, 26.813503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671967, 33.579613, 26.806770>,  <36.538700, 33.380054, 26.802731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671967, 33.579613, 26.806770>,  <36.894077, 33.912212, 26.813503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671967, 33.579613, 26.806770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728334, 0.476412, 0.492505,
		-0.401498, 0.285734, -0.870147,
		-0.555274, -0.831497, -0.016831,
		36.505383, 33.330162, 26.801722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246231, 34.141472, 26.747398>,  <36.894077, 33.912212, 26.813503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246231, 34.141472, 26.747398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150307, 33.769695, 26.859560>,  <36.092751, 33.546631, 26.926857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150307, 33.769695, 26.859560>,  <36.246231, 34.141472, 26.747398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150307, 33.769695, 26.859560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803554, 0.352116, 0.479912,
		-0.544785, -0.110231, -0.831299,
		-0.239812, -0.929443, 0.280404,
		36.078362, 33.490864, 26.943682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519798, 34.210640, 26.665911>,  <36.246231, 34.141472, 26.747398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519798, 34.210640, 26.665911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580948, 33.878483, 26.880232>,  <35.617638, 33.679188, 27.008823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580948, 33.878483, 26.880232>,  <35.519798, 34.210640, 26.665911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580948, 33.878483, 26.880232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794128, 0.219482, 0.566734,
		-0.588209, -0.512133, -0.625883,
		0.152873, -0.830390, 0.535801,
		35.626808, 33.629364, 27.040972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940186, 33.802639, 26.646704>,  <35.519798, 34.210640, 26.665911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940186, 33.802639, 26.646704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134682, 33.682545, 26.974955>,  <35.251381, 33.610489, 27.171906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134682, 33.682545, 26.974955>,  <34.940186, 33.802639, 26.646704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134682, 33.682545, 26.974955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694027, 0.437923, 0.571446,
		-0.530939, -0.847398, 0.004565,
		0.486241, -0.300235, 0.820627,
		35.280556, 33.592476, 27.221144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453083, 33.518486, 27.110058>,  <34.940186, 33.802639, 26.646704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453083, 33.518486, 27.110058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757015, 33.613380, 27.352173>,  <34.939377, 33.670315, 27.497442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757015, 33.613380, 27.352173>,  <34.453083, 33.518486, 27.110058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757015, 33.613380, 27.352173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634234, 0.475040, 0.609987,
		-0.142828, -0.847383, 0.511411,
		0.759834, 0.237231, 0.605289,
		34.984966, 33.684551, 27.533760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224144, 33.476604, 27.753912>,  <34.453083, 33.518486, 27.110058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224144, 33.476604, 27.753912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557205, 33.671368, 27.859442>,  <34.757042, 33.788227, 27.922760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557205, 33.671368, 27.859442>,  <34.224144, 33.476604, 27.753912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557205, 33.671368, 27.859442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519358, 0.521214, 0.677203,
		0.192225, -0.700897, 0.686872,
		0.832657, 0.486908, 0.263826,
		34.807003, 33.817440, 27.938589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358562, 33.366608, 28.439867>,  <34.224144, 33.476604, 27.753912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358562, 33.366608, 28.439867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546177, 33.709076, 28.353178>,  <34.658745, 33.914558, 28.301165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546177, 33.709076, 28.353178>,  <34.358562, 33.366608, 28.439867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546177, 33.709076, 28.353178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463180, 0.447398, 0.765049,
		0.751977, -0.258455, 0.606409,
		0.469037, 0.856175, -0.216722,
		34.686890, 33.965927, 28.288162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798851, 33.504581, 29.011869>,  <34.358562, 33.366608, 28.439867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798851, 33.504581, 29.011869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699795, 33.851681, 28.839506>,  <34.640362, 34.059940, 28.736088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.699795, 33.851681, 28.839506>,  <34.798851, 33.504581, 29.011869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699795, 33.851681, 28.839506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276379, 0.363012, 0.889852,
		0.928595, 0.339457, 0.149932,
		-0.247640, 0.867751, -0.430910,
		34.625504, 34.112007, 28.710234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061630, 34.084003, 29.450686>,  <34.798851, 33.504581, 29.011869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061630, 34.084003, 29.450686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777557, 34.269127, 29.238478>,  <34.607113, 34.380203, 29.111153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777557, 34.269127, 29.238478>,  <35.061630, 34.084003, 29.450686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777557, 34.269127, 29.238478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273669, 0.512811, 0.813714,
		0.648651, 0.723070, -0.237531,
		-0.710181, 0.462811, -0.530518,
		34.564503, 34.407970, 29.079323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148911, 34.911983, 29.596243>,  <35.061630, 34.084003, 29.450686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148911, 34.911983, 29.596243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778160, 34.768570, 29.551792>,  <34.555710, 34.682522, 29.525122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778160, 34.768570, 29.551792>,  <35.148911, 34.911983, 29.596243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778160, 34.768570, 29.551792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214863, 0.264031, 0.940277,
		-0.307782, 0.895400, -0.321761,
		-0.926879, -0.358535, -0.111125,
		34.500095, 34.661011, 29.518456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867603, 35.206089, 29.962584>,  <35.148911, 34.911983, 29.596243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867603, 35.206089, 29.962584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082809, 35.297874, 30.287025>,  <36.211933, 35.352947, 30.481689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.082809, 35.297874, 30.287025>,  <35.867603, 35.206089, 29.962584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082809, 35.297874, 30.287025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840737, -0.215557, -0.496686,
		0.060867, 0.949148, -0.308892,
		0.538012, 0.229465, 0.811104,
		36.244213, 35.366714, 30.530357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308224, 35.781414, 29.821644>,  <35.867603, 35.206089, 29.962584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308224, 35.781414, 29.821644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469337, 35.565914, 30.117622>,  <36.566006, 35.436615, 30.295210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469337, 35.565914, 30.117622>,  <36.308224, 35.781414, 29.821644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469337, 35.565914, 30.117622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829883, -0.126046, -0.543513,
		0.386082, 0.832986, 0.396326,
		0.402784, -0.538745, 0.739945,
		36.590172, 35.404289, 30.339605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014511, 36.156895, 29.891865>,  <36.308224, 35.781414, 29.821644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014511, 36.156895, 29.891865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988091, 35.779007, 30.020332>,  <36.972240, 35.552277, 30.097414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988091, 35.779007, 30.020332>,  <37.014511, 36.156895, 29.891865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988091, 35.779007, 30.020332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778525, -0.250119, -0.575621,
		0.624129, 0.212021, 0.752004,
		-0.066047, -0.944716, 0.321170,
		36.968277, 35.495594, 30.116684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657795, 35.917892, 29.820311>,  <37.014511, 36.156895, 29.891865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657795, 35.917892, 29.820311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467579, 35.569817, 29.871908>,  <37.353451, 35.360973, 29.902866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.467579, 35.569817, 29.871908>,  <37.657795, 35.917892, 29.820311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467579, 35.569817, 29.871908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581310, -0.420900, -0.696363,
		0.660260, -0.256160, 0.706002,
		-0.475536, -0.870187, 0.128995,
		37.324917, 35.308762, 29.910606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139839, 35.402317, 30.131895>,  <37.657795, 35.917892, 29.820311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139839, 35.402317, 30.131895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839657, 35.209503, 29.951031>,  <37.659546, 35.093815, 29.842512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839657, 35.209503, 29.951031>,  <38.139839, 35.402317, 30.131895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839657, 35.209503, 29.951031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646811, -0.395078, -0.652341,
		0.135815, -0.782018, 0.608278,
		-0.750459, -0.482039, -0.452161,
		37.614517, 35.064892, 29.815382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250145, 34.621967, 30.150570>,  <38.139839, 35.402317, 30.131895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250145, 34.621967, 30.150570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002937, 34.705399, 29.847374>,  <37.854614, 34.755455, 29.665457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002937, 34.705399, 29.847374>,  <38.250145, 34.621967, 30.150570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002937, 34.705399, 29.847374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663965, -0.377787, -0.645312,
		-0.420955, -0.902094, 0.094993,
		-0.618019, 0.208575, -0.757989,
		37.817532, 34.767971, 29.619978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249611, 34.021160, 29.815767>,  <38.250145, 34.621967, 30.150570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249611, 34.021160, 29.815767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116749, 34.296989, 29.558346>,  <38.037033, 34.462486, 29.403893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116749, 34.296989, 29.558346>,  <38.249611, 34.021160, 29.815767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116749, 34.296989, 29.558346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573359, -0.394153, -0.718264,
		-0.748955, -0.607561, -0.264454,
		-0.332154, 0.689574, -0.643554,
		38.017101, 34.503860, 29.365280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394241, 33.722256, 29.246305>,  <38.249611, 34.021160, 29.815767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394241, 33.722256, 29.246305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319042, 34.088463, 29.104046>,  <38.273922, 34.308186, 29.018690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319042, 34.088463, 29.104046>,  <38.394241, 33.722256, 29.246305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319042, 34.088463, 29.104046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600992, -0.179172, -0.778914,
		-0.776830, -0.360177, -0.516534,
		-0.187998, 0.915517, -0.355649,
		38.262642, 34.363117, 28.997351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336632, 33.731277, 28.469307>,  <38.394241, 33.722256, 29.246305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336632, 33.731277, 28.469307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437019, 34.109573, 28.551849>,  <38.497253, 34.336552, 28.601376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437019, 34.109573, 28.551849>,  <38.336632, 33.731277, 28.469307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437019, 34.109573, 28.551849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662278, -0.012286, -0.749158,
		-0.705976, 0.324682, -0.629428,
		0.250971, 0.945743, 0.206356,
		38.512310, 34.393295, 28.613756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250664, 34.026794, 27.826471>,  <38.336632, 33.731277, 28.469307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250664, 34.026794, 27.826471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478546, 34.269291, 28.048426>,  <38.615276, 34.414791, 28.181599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478546, 34.269291, 28.048426>,  <38.250664, 34.026794, 27.826471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478546, 34.269291, 28.048426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704744, -0.013021, -0.709342,
		-0.422811, 0.795171, -0.434666,
		0.569708, 0.606246, 0.554886,
		38.649460, 34.451164, 28.214891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497604, 34.539722, 27.365595>,  <38.250664, 34.026794, 27.826471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497604, 34.539722, 27.365595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746502, 34.580448, 27.676064>,  <38.895840, 34.604881, 27.862345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746502, 34.580448, 27.676064>,  <38.497604, 34.539722, 27.365595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746502, 34.580448, 27.676064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782822, -0.081871, -0.616837,
		0.000744, 0.991429, -0.130645,
		0.622246, 0.101813, 0.776173,
		38.933174, 34.610992, 27.908915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986469, 34.859047, 27.084259>,  <38.497604, 34.539722, 27.365595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986469, 34.859047, 27.084259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145725, 34.704212, 27.416920>,  <39.241280, 34.611313, 27.616516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145725, 34.704212, 27.416920>,  <38.986469, 34.859047, 27.084259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145725, 34.704212, 27.416920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860554, -0.156377, -0.484762,
		0.317695, 0.908687, 0.270847,
		0.398142, -0.387084, 0.831654,
		39.265167, 34.588085, 27.666416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466106, 35.289352, 27.237450>,  <38.986469, 34.859047, 27.084259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466106, 35.289352, 27.237450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542828, 34.932671, 27.401440>,  <39.588860, 34.718662, 27.499834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542828, 34.932671, 27.401440>,  <39.466106, 35.289352, 27.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542828, 34.932671, 27.401440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830025, -0.075524, -0.552589,
		0.523708, 0.446279, 0.725648,
		0.191805, -0.891701, 0.409975,
		39.600368, 34.665161, 27.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121746, 35.389313, 27.492744>,  <39.466106, 35.289352, 27.237450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121746, 35.389313, 27.492744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035671, 35.002354, 27.439331>,  <39.984024, 34.770176, 27.407282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035671, 35.002354, 27.439331>,  <40.121746, 35.389313, 27.492744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035671, 35.002354, 27.439331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785857, -0.090361, -0.611771,
		0.579760, -0.236587, 0.779682,
		-0.215190, -0.967399, -0.133535,
		39.971115, 34.712135, 27.399271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735130, 35.103489, 27.551838>,  <40.121746, 35.389313, 27.492744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735130, 35.103489, 27.551838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555939, 34.807186, 27.351603>,  <40.448421, 34.629402, 27.231462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555939, 34.807186, 27.351603>,  <40.735130, 35.103489, 27.551838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555939, 34.807186, 27.351603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855740, -0.193143, -0.480005,
		0.258883, -0.643406, 0.720422,
		-0.447982, -0.740759, -0.500587,
		40.421543, 34.584957, 27.201426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220116, 34.566090, 27.557760>,  <40.735130, 35.103489, 27.551838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220116, 34.566090, 27.557760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952896, 34.460491, 27.279476>,  <40.792564, 34.397133, 27.112505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952896, 34.460491, 27.279476>,  <41.220116, 34.566090, 27.557760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952896, 34.460491, 27.279476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741930, -0.307899, -0.595599,
		-0.056973, -0.914060, 0.401558,
		-0.668052, -0.263995, -0.695710,
		40.752480, 34.381294, 27.070763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473465, 33.888592, 27.336637>,  <41.220116, 34.566090, 27.557760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473465, 33.888592, 27.336637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258648, 34.082718, 27.060650>,  <41.129757, 34.199192, 26.895058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.258648, 34.082718, 27.060650>,  <41.473465, 33.888592, 27.336637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258648, 34.082718, 27.060650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621571, -0.325308, -0.712618,
		-0.570294, -0.811571, -0.126951,
		-0.537042, 0.485311, -0.689970,
		41.097534, 34.228310, 26.853659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522591, 33.478897, 26.846779>,  <41.473465, 33.888592, 27.336637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522591, 33.478897, 26.846779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369644, 33.778763, 26.630707>,  <41.277874, 33.958683, 26.501064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.369644, 33.778763, 26.630707>,  <41.522591, 33.478897, 26.846779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.369644, 33.778763, 26.630707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466618, -0.347924, -0.813152,
		-0.797534, -0.562983, -0.216772,
		-0.382371, 0.749666, -0.540180,
		41.254932, 34.003662, 26.468653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.225723, 33.193413, 26.335318>,  <41.522591, 33.478897, 26.846779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.225723, 33.193413, 26.335318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287933, 33.567993, 26.209545>,  <41.325260, 33.792744, 26.134081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287933, 33.567993, 26.209545>,  <41.225723, 33.193413, 26.335318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287933, 33.567993, 26.209545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422134, -0.350783, -0.835915,
		-0.893093, -0.002727, -0.449864,
		0.155525, 0.936453, -0.314433,
		41.334591, 33.848930, 26.115215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915508, 33.299778, 25.614998>,  <41.225723, 33.193413, 26.335318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915508, 33.299778, 25.614998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211384, 33.560997, 25.679977>,  <41.388908, 33.717728, 25.718966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211384, 33.560997, 25.679977>,  <40.915508, 33.299778, 25.614998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211384, 33.560997, 25.679977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431213, -0.274639, -0.859435,
		-0.516635, 0.705766, -0.484750,
		0.739691, 0.653045, 0.162447,
		41.433292, 33.756912, 25.728712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099392, 33.557751, 24.955456>,  <40.915508, 33.299778, 25.614998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099392, 33.557751, 24.955456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403744, 33.671307, 25.188852>,  <41.586357, 33.739441, 25.328890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.403744, 33.671307, 25.188852>,  <41.099392, 33.557751, 24.955456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403744, 33.671307, 25.188852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632215, -0.121794, -0.765161,
		-0.146158, 0.951090, -0.272151,
		0.760883, 0.283892, 0.583492,
		41.632008, 33.756474, 25.363899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403927, 34.123940, 24.568163>,  <41.099392, 33.557751, 24.955456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403927, 34.123940, 24.568163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690186, 33.995766, 24.816412>,  <41.861942, 33.918861, 24.965361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690186, 33.995766, 24.816412>,  <41.403927, 34.123940, 24.568163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690186, 33.995766, 24.816412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661870, 0.027287, -0.749122,
		0.223110, 0.946877, 0.231614,
		0.715647, -0.320435, 0.620621,
		41.904881, 33.899635, 25.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045528, 34.565151, 24.424749>,  <41.403927, 34.123940, 24.568163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045528, 34.565151, 24.424749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158546, 34.224434, 24.601213>,  <42.226357, 34.020004, 24.707092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158546, 34.224434, 24.601213>,  <42.045528, 34.565151, 24.424749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158546, 34.224434, 24.601213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720536, -0.115138, -0.683792,
		0.633241, 0.511075, 0.581212,
		0.282549, -0.851789, 0.441158,
		42.243313, 33.968899, 24.733561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780605, 34.560383, 24.395531>,  <42.045528, 34.565151, 24.424749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780605, 34.560383, 24.395531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666588, 34.180618, 24.448256>,  <42.598179, 33.952759, 24.479891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.666588, 34.180618, 24.448256>,  <42.780605, 34.560383, 24.395531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.666588, 34.180618, 24.448256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734204, -0.304668, -0.606731,
		0.616194, -0.076166, 0.783903,
		-0.285042, -0.949408, 0.131813,
		42.581074, 33.895794, 24.487799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364330, 34.212696, 24.518324>,  <42.780605, 34.560383, 24.395531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364330, 34.212696, 24.518324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131664, 33.907215, 24.406305>,  <42.992065, 33.723927, 24.339094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.131664, 33.907215, 24.406305>,  <43.364330, 34.212696, 24.518324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131664, 33.907215, 24.406305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797453, -0.467473, -0.381494,
		0.160436, -0.445223, 0.880929,
		-0.581661, -0.763705, -0.280045,
		42.957165, 33.678104, 24.322292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.881763, 33.654720, 24.433064>,  <43.364330, 34.212696, 24.518324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.881763, 33.654720, 24.433064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542267, 33.513268, 24.275797>,  <43.338570, 33.428398, 24.181437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.542267, 33.513268, 24.275797>,  <43.881763, 33.654720, 24.433064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.542267, 33.513268, 24.275797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526911, -0.628373, -0.572287,
		-0.044677, -0.692888, 0.719660,
		-0.848746, -0.353628, -0.393164,
		43.287643, 33.407181, 24.157848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820244, 32.883949, 24.646521>,  <43.881763, 33.654720, 24.433064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820244, 32.883949, 24.646521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628670, 32.948338, 24.301334>,  <43.513725, 32.986969, 24.094223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628670, 32.948338, 24.301334>,  <43.820244, 32.883949, 24.646521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628670, 32.948338, 24.301334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516520, -0.743195, -0.425286,
		-0.709809, -0.649424, 0.272800,
		-0.478935, 0.160965, -0.862967,
		43.484989, 32.996628, 24.042444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797756, 32.185585, 24.393364>,  <43.820244, 32.883949, 24.646521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797756, 32.185585, 24.393364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706932, 32.408268, 24.073732>,  <43.652439, 32.541878, 23.881954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.706932, 32.408268, 24.073732>,  <43.797756, 32.185585, 24.393364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706932, 32.408268, 24.073732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583867, -0.578883, -0.569204,
		-0.779451, -0.595797, -0.193603,
		-0.227056, 0.556705, -0.799077,
		43.638817, 32.575279, 23.834009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658703, 31.752180, 23.827621>,  <43.797756, 32.185585, 24.393364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658703, 31.752180, 23.827621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739143, 32.100365, 23.647907>,  <43.787407, 32.309277, 23.540079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739143, 32.100365, 23.647907>,  <43.658703, 31.752180, 23.827621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739143, 32.100365, 23.647907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582337, -0.475043, -0.659710,
		-0.787682, -0.128970, -0.602431,
		0.201097, 0.870460, -0.449287,
		43.799473, 32.361504, 23.513121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740444, 31.585320, 23.140457>,  <43.658703, 31.752180, 23.827621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740444, 31.585320, 23.140457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910099, 31.947241, 23.125278>,  <44.011890, 32.164394, 23.116171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.910099, 31.947241, 23.125278>,  <43.740444, 31.585320, 23.140457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.910099, 31.947241, 23.125278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625766, -0.323110, -0.709942,
		-0.654619, 0.277365, -0.703238,
		0.424136, 0.904803, -0.037949,
		44.037338, 32.218681, 23.113894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.630108, 31.806976, 22.436634>,  <43.740444, 31.585320, 23.140457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.630108, 31.806976, 22.436634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944767, 31.991056, 22.601271>,  <44.133560, 32.101505, 22.700052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944767, 31.991056, 22.601271>,  <43.630108, 31.806976, 22.436634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944767, 31.991056, 22.601271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565046, -0.267950, -0.780337,
		-0.248824, 0.846416, -0.470814,
		0.786645, 0.460198, 0.411592,
		44.180759, 32.129116, 22.724749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.019573, 32.190552, 21.821632>,  <43.630108, 31.806976, 22.436634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.019573, 32.190552, 21.821632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248817, 32.123135, 22.142416>,  <44.386364, 32.082684, 22.334887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248817, 32.123135, 22.142416>,  <44.019573, 32.190552, 21.821632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248817, 32.123135, 22.142416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722601, -0.357643, -0.591556,
		0.386516, 0.918524, -0.083182,
		0.573108, -0.168539, 0.801961,
		44.420750, 32.072575, 22.383005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705009, 32.523926, 21.686287>,  <44.019573, 32.190552, 21.821632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705009, 32.523926, 21.686287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771763, 32.244144, 21.964254>,  <44.811813, 32.076275, 22.131035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771763, 32.244144, 21.964254>,  <44.705009, 32.523926, 21.686287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771763, 32.244144, 21.964254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861370, -0.239534, -0.447957,
		0.479783, 0.673337, 0.562518,
		0.166883, -0.699458, 0.694916,
		44.821827, 32.034306, 22.172729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496796, 32.465477, 21.810066>,  <44.705009, 32.523926, 21.686287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496796, 32.465477, 21.810066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379021, 32.133385, 21.999390>,  <45.308357, 31.934130, 22.112984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.379021, 32.133385, 21.999390>,  <45.496796, 32.465477, 21.810066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379021, 32.133385, 21.999390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803557, -0.483162, -0.347636,
		0.517304, 0.277974, 0.809399,
		-0.294437, -0.830232, 0.473309,
		45.290691, 31.884315, 22.141382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097759, 32.251278, 22.104538>,  <45.496796, 32.465477, 21.810066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097759, 32.251278, 22.104538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844566, 31.943001, 22.075245>,  <45.692650, 31.758034, 22.057669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844566, 31.943001, 22.075245>,  <46.097759, 32.251278, 22.104538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844566, 31.943001, 22.075245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740258, -0.574855, -0.348655,
		0.226609, -0.274902, 0.934386,
		-0.632983, -0.770695, -0.073231,
		45.654671, 31.711792, 22.053276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.532345, 31.722149, 22.387499>,  <46.097759, 32.251278, 22.104538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.532345, 31.722149, 22.387499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245468, 31.532497, 22.183212>,  <46.073341, 31.418707, 22.060640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.245468, 31.532497, 22.183212>,  <46.532345, 31.722149, 22.387499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.245468, 31.532497, 22.183212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686512, -0.606612, -0.400904,
		-0.119727, -0.638140, 0.760554,
		-0.717194, -0.474130, -0.510718,
		46.030312, 31.390259, 22.029997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652809, 31.045918, 22.542150>,  <46.532345, 31.722149, 22.387499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652809, 31.045918, 22.542150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452072, 31.018307, 22.197269>,  <46.331631, 31.001740, 21.990341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452072, 31.018307, 22.197269>,  <46.652809, 31.045918, 22.542150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452072, 31.018307, 22.197269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793654, -0.433073, -0.427272,
		-0.343902, -0.898712, 0.272117,
		-0.501841, -0.069027, -0.862201,
		46.301521, 30.997599, 21.938608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.880592, 30.477428, 22.270153>,  <46.652809, 31.045918, 22.542150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.880592, 30.477428, 22.270153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712727, 30.677176, 21.966967>,  <46.612007, 30.797024, 21.785055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.712727, 30.677176, 21.966967>,  <46.880592, 30.477428, 22.270153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712727, 30.677176, 21.966967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729568, -0.311230, -0.608988,
		-0.540010, -0.808560, -0.233710,
		-0.419666, 0.499367, -0.757967,
		46.586826, 30.826986, 21.739576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.786449, 29.722652, 22.275417>,  <46.880592, 30.477428, 22.270153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.786449, 29.722652, 22.275417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011818, 29.454369, 22.468374>,  <47.147038, 29.293398, 22.584148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011818, 29.454369, 22.468374>,  <46.786449, 29.722652, 22.275417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011818, 29.454369, 22.468374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710618, -0.095608, 0.697051,
		-0.421399, -0.735531, -0.530487,
		0.563422, -0.670711, 0.482393,
		47.180843, 29.253155, 22.613092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335403, 29.164015, 22.385448>,  <46.786449, 29.722652, 22.275417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335403, 29.164015, 22.385448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631508, 29.138418, 22.653156>,  <46.809170, 29.123060, 22.813782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.631508, 29.138418, 22.653156>,  <46.335403, 29.164015, 22.385448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.631508, 29.138418, 22.653156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670887, -0.005301, 0.741541,
		-0.043911, -0.997936, -0.046860,
		0.740258, -0.064000, 0.669269,
		46.853584, 29.119221, 22.853937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.023983, 28.868916, 22.908878>,  <46.335403, 29.164015, 22.385448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.023983, 28.868916, 22.908878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.354271, 28.989153, 23.099808>,  <46.552444, 29.061295, 23.214365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.354271, 28.989153, 23.099808>,  <46.023983, 28.868916, 22.908878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.354271, 28.989153, 23.099808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524014, 0.095515, 0.846337,
		0.208812, -0.948958, 0.236383,
		0.825717, 0.300594, 0.477322,
		46.601986, 29.079330, 23.243004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961510, 28.543669, 23.569624>,  <46.023983, 28.868916, 22.908878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961510, 28.543669, 23.569624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218971, 28.843864, 23.629587>,  <46.373447, 29.023981, 23.665565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.218971, 28.843864, 23.629587>,  <45.961510, 28.543669, 23.569624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.218971, 28.843864, 23.629587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465538, 0.228478, 0.855027,
		0.607438, -0.620132, 0.496443,
		0.643656, 0.750489, 0.149909,
		46.412067, 29.069012, 23.674561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366085, 28.426947, 24.247810>,  <45.961510, 28.543669, 23.569624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366085, 28.426947, 24.247810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357658, 28.819429, 24.171087>,  <46.352604, 29.054918, 24.125053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.357658, 28.819429, 24.171087>,  <46.366085, 28.426947, 24.247810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.357658, 28.819429, 24.171087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445021, 0.162596, 0.880635,
		0.895272, 0.103909, 0.433233,
		-0.021064, 0.981206, -0.191809,
		46.351337, 29.113791, 24.113544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278858, 28.779726, 24.949133>,  <46.366085, 28.426947, 24.247810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278858, 28.779726, 24.949133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179775, 29.060892, 24.682434>,  <46.120323, 29.229591, 24.522415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.179775, 29.060892, 24.682434>,  <46.278858, 28.779726, 24.949133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179775, 29.060892, 24.682434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580848, 0.443049, 0.682879,
		0.775406, 0.556436, 0.298537,
		-0.247712, 0.702913, -0.666747,
		46.105461, 29.271767, 24.482410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.215450, 29.467682, 25.365541>,  <46.278858, 28.779726, 24.949133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.215450, 29.467682, 25.365541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049019, 29.523663, 25.006144>,  <45.949162, 29.557251, 24.790504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049019, 29.523663, 25.006144>,  <46.215450, 29.467682, 25.365541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049019, 29.523663, 25.006144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648267, 0.647250, 0.401021,
		0.637674, 0.749320, -0.178582,
		-0.416080, 0.139952, -0.898494,
		45.924194, 29.565649, 24.736595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236290, 30.221882, 25.252073>,  <46.215450, 29.467682, 25.365541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236290, 30.221882, 25.252073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941544, 30.045734, 25.046902>,  <45.764694, 29.940046, 24.923798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.941544, 30.045734, 25.046902>,  <46.236290, 30.221882, 25.252073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941544, 30.045734, 25.046902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667596, 0.593507, 0.449516,
		0.106475, 0.673665, -0.731327,
		-0.736871, -0.440369, -0.512930,
		45.720482, 29.913624, 24.893023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.787922, 30.798529, 24.999729>,  <46.236290, 30.221882, 25.252073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.787922, 30.798529, 24.999729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533337, 30.491793, 24.966558>,  <45.380585, 30.307751, 24.946655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533337, 30.491793, 24.966558>,  <45.787922, 30.798529, 24.999729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533337, 30.491793, 24.966558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754964, 0.597342, 0.270577,
		-0.157953, 0.234818, -0.959120,
		-0.636459, -0.766840, -0.082927,
		45.342400, 30.261742, 24.941681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193375, 30.997358, 24.580923>,  <45.787922, 30.798529, 24.999729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193375, 30.997358, 24.580923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077103, 30.703833, 24.826532>,  <45.007339, 30.527718, 24.973898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077103, 30.703833, 24.826532>,  <45.193375, 30.997358, 24.580923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077103, 30.703833, 24.826532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763762, 0.564496, 0.313066,
		-0.576346, -0.377965, -0.724547,
		-0.290676, -0.733816, 0.614021,
		44.989899, 30.483688, 25.010738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379715, 30.916029, 24.672985>,  <45.193375, 30.997358, 24.580923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379715, 30.916029, 24.672985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488811, 30.666803, 24.966217>,  <44.554268, 30.517267, 25.142157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488811, 30.666803, 24.966217>,  <44.379715, 30.916029, 24.672985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488811, 30.666803, 24.966217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852758, 0.196226, 0.484044,
		-0.445440, -0.757156, -0.477806,
		0.272739, -0.623066, 0.733078,
		44.570633, 30.479883, 25.186140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671467, 30.585758, 24.833954>,  <44.379715, 30.916029, 24.672985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671467, 30.585758, 24.833954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920315, 30.506224, 25.136856>,  <44.069622, 30.458504, 25.318598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.920315, 30.506224, 25.136856>,  <43.671467, 30.585758, 24.833954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920315, 30.506224, 25.136856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761842, 0.069194, 0.644056,
		-0.180460, -0.977587, -0.108436,
		0.622118, -0.198838, 0.757254,
		44.106949, 30.446573, 25.364033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254017, 30.210768, 25.326591>,  <43.671467, 30.585758, 24.833954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254017, 30.210768, 25.326591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570808, 30.323860, 25.543047>,  <43.760883, 30.391716, 25.672920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.570808, 30.323860, 25.543047>,  <43.254017, 30.210768, 25.326591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.570808, 30.323860, 25.543047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588560, 0.117826, 0.799821,
		0.162374, -0.951935, 0.259720,
		0.791979, 0.282731, 0.541139,
		43.808403, 30.408678, 25.705389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221020, 29.843506, 25.945599>,  <43.254017, 30.210768, 25.326591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221020, 29.843506, 25.945599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437611, 30.168274, 26.032860>,  <43.567566, 30.363134, 26.085217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.437611, 30.168274, 26.032860>,  <43.221020, 29.843506, 25.945599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437611, 30.168274, 26.032860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666648, 0.256559, 0.699828,
		0.512235, -0.524370, 0.680185,
		0.541476, 0.811920, 0.218152,
		43.600052, 30.411850, 26.098305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.412098, 29.800516, 26.706551>,  <43.221020, 29.843506, 25.945599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.412098, 29.800516, 26.706551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422832, 30.176317, 26.569954>,  <43.429276, 30.401798, 26.487995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.422832, 30.176317, 26.569954>,  <43.412098, 29.800516, 26.706551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422832, 30.176317, 26.569954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565407, 0.295989, 0.769874,
		0.824375, 0.172421, 0.539144,
		0.026839, 0.939501, -0.341494,
		43.430885, 30.458168, 26.467506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642242, 30.206314, 27.307682>,  <43.412098, 29.800516, 26.706551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642242, 30.206314, 27.307682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490906, 30.494520, 27.075230>,  <43.400105, 30.667444, 26.935759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490906, 30.494520, 27.075230>,  <43.642242, 30.206314, 27.307682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490906, 30.494520, 27.075230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534567, 0.342465, 0.772628,
		0.755710, 0.602970, 0.255597,
		-0.378339, 0.720517, -0.581133,
		43.377403, 30.710674, 26.900890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797718, 30.849277, 27.615160>,  <43.642242, 30.206314, 27.307682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797718, 30.849277, 27.615160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489067, 30.931921, 27.374527>,  <43.303875, 30.981506, 27.230146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.489067, 30.931921, 27.374527>,  <43.797718, 30.849277, 27.615160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489067, 30.931921, 27.374527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435214, 0.518242, 0.736216,
		0.463874, 0.829903, -0.309971,
		-0.771628, 0.206608, -0.601584,
		43.257580, 30.993904, 27.194052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665855, 31.534389, 27.708115>,  <43.797718, 30.849277, 27.615160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665855, 31.534389, 27.708115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332687, 31.415951, 27.521111>,  <43.132786, 31.344887, 27.408909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332687, 31.415951, 27.521111>,  <43.665855, 31.534389, 27.708115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332687, 31.415951, 27.521111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537344, 0.634696, 0.555357,
		0.132285, 0.713783, -0.687761,
		-0.832924, -0.296099, -0.467508,
		43.082809, 31.327122, 27.380857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256142, 32.169350, 27.430906>,  <43.665855, 31.534389, 27.708115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256142, 32.169350, 27.430906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985527, 31.874931, 27.440248>,  <42.823158, 31.698280, 27.445854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.985527, 31.874931, 27.440248>,  <43.256142, 32.169350, 27.430906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.985527, 31.874931, 27.440248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632401, 0.596934, 0.493699,
		-0.377325, 0.319234, -0.869319,
		-0.676532, -0.736043, 0.023354,
		42.782566, 31.654118, 27.447254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638847, 32.481415, 27.175327>,  <43.256142, 32.169350, 27.430906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638847, 32.481415, 27.175327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531750, 32.166931, 27.398106>,  <42.467491, 31.978241, 27.531773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531750, 32.166931, 27.398106>,  <42.638847, 32.481415, 27.175327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531750, 32.166931, 27.398106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687630, 0.560829, 0.461125,
		-0.674892, -0.259511, -0.690778,
		-0.267741, -0.786209, 0.556947,
		42.451427, 31.931068, 27.565189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989197, 32.629883, 27.211912>,  <42.638847, 32.481415, 27.175327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989197, 32.629883, 27.211912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004078, 32.354485, 27.501625>,  <42.013004, 32.189243, 27.675453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004078, 32.354485, 27.501625>,  <41.989197, 32.629883, 27.211912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004078, 32.354485, 27.501625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659309, 0.527745, 0.535534,
		-0.750952, -0.497448, -0.434301,
		0.037200, -0.688499, 0.724283,
		42.015240, 32.147934, 27.718910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319790, 32.615688, 27.403984>,  <41.989197, 32.629883, 27.211912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319790, 32.615688, 27.403984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514694, 32.423836, 27.695883>,  <41.631638, 32.308723, 27.871023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514694, 32.423836, 27.695883>,  <41.319790, 32.615688, 27.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514694, 32.423836, 27.695883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689926, 0.300845, 0.658403,
		-0.535329, -0.824287, -0.184317,
		0.487262, -0.479628, 0.729748,
		41.660873, 32.279949, 27.914808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890804, 32.033150, 27.839075>,  <41.319790, 32.615688, 27.403984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890804, 32.033150, 27.839075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176430, 32.210407, 28.055868>,  <41.347805, 32.316761, 28.185944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.176430, 32.210407, 28.055868>,  <40.890804, 32.033150, 27.839075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176430, 32.210407, 28.055868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683330, 0.272814, 0.677225,
		0.152247, -0.853931, 0.497618,
		0.714059, 0.443143, 0.541981,
		41.390648, 32.343349, 28.218462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686928, 31.828712, 28.573406>,  <40.890804, 32.033150, 27.839075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.686928, 31.828712, 28.573406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949791, 32.128704, 28.603552>,  <41.107510, 32.308701, 28.621639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949791, 32.128704, 28.603552>,  <40.686928, 31.828712, 28.573406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949791, 32.128704, 28.603552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491877, 0.350931, 0.796809,
		0.571143, -0.560696, 0.599513,
		0.657155, 0.749979, 0.075362,
		41.146938, 32.353699, 28.626160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983948, 31.821964, 29.240686>,  <40.686928, 31.828712, 28.573406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983948, 31.821964, 29.240686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000160, 32.197357, 29.103512>,  <41.009888, 32.422592, 29.021206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000160, 32.197357, 29.103512>,  <40.983948, 31.821964, 29.240686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000160, 32.197357, 29.103512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275362, 0.340420, 0.899050,
		0.960486, 0.057997, 0.272219,
		0.040527, 0.938483, -0.342938,
		41.012318, 32.478901, 29.000629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.255680, 32.234192, 29.830076>,  <40.983948, 31.821964, 29.240686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.255680, 32.234192, 29.830076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087589, 32.490627, 29.573196>,  <40.986736, 32.644489, 29.419069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087589, 32.490627, 29.573196>,  <41.255680, 32.234192, 29.830076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087589, 32.490627, 29.573196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386448, 0.513896, 0.765877,
		0.821016, 0.570019, 0.031793,
		-0.420226, 0.641084, -0.642200,
		40.961521, 32.682953, 29.380537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455807, 32.970150, 30.082987>,  <41.255680, 32.234192, 29.830076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455807, 32.970150, 30.082987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139370, 32.993034, 29.839380>,  <40.949509, 33.006763, 29.693216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.139370, 32.993034, 29.839380>,  <41.455807, 32.970150, 30.082987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139370, 32.993034, 29.839380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458748, 0.603100, 0.652549,
		0.404631, 0.795611, -0.450862,
		-0.791091, 0.057209, -0.609018,
		40.902042, 33.010197, 29.656675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317314, 33.698158, 29.920620>,  <41.455807, 32.970150, 30.082987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317314, 33.698158, 29.920620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969532, 33.521877, 29.831331>,  <40.760864, 33.416107, 29.777758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969532, 33.521877, 29.831331>,  <41.317314, 33.698158, 29.920620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969532, 33.521877, 29.831331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470548, 0.601186, 0.645880,
		-0.150447, 0.666598, -0.730077,
		-0.869454, -0.440707, -0.223220,
		40.708694, 33.389664, 29.764366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805851, 34.221809, 29.870422>,  <41.317314, 33.698158, 29.920620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805851, 34.221809, 29.870422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575031, 33.898762, 29.919025>,  <40.436539, 33.704933, 29.948187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575031, 33.898762, 29.919025>,  <40.805851, 34.221809, 29.870422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575031, 33.898762, 29.919025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592004, 0.516117, 0.618994,
		-0.562624, 0.285258, -0.775939,
		-0.577049, -0.807621, 0.121507,
		40.401917, 33.656475, 29.955477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031689, 34.371586, 29.884462>,  <40.805851, 34.221809, 29.870422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031689, 34.371586, 29.884462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018681, 34.023430, 30.080980>,  <40.010876, 33.814537, 30.198891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018681, 34.023430, 30.080980>,  <40.031689, 34.371586, 29.884462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018681, 34.023430, 30.080980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677429, 0.380617, 0.629461,
		-0.734869, -0.312344, -0.602004,
		-0.032525, -0.870386, 0.491294,
		40.008923, 33.762314, 30.228369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346806, 34.241936, 30.068785>,  <40.031689, 34.371586, 29.884462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346806, 34.241936, 30.068785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566082, 34.020252, 30.319334>,  <39.697647, 33.887241, 30.469664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566082, 34.020252, 30.319334>,  <39.346806, 34.241936, 30.068785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566082, 34.020252, 30.319334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660988, 0.171779, 0.730471,
		-0.512429, -0.814461, -0.272156,
		0.548190, -0.554206, 0.626374,
		39.730537, 33.853989, 30.507246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865238, 33.930527, 30.425430>,  <39.346806, 34.241936, 30.068785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865238, 33.930527, 30.425430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186443, 33.875217, 30.657312>,  <39.379166, 33.842033, 30.796442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186443, 33.875217, 30.657312>,  <38.865238, 33.930527, 30.425430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186443, 33.875217, 30.657312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582028, 0.027194, 0.812714,
		-0.128142, -0.990021, -0.058643,
		0.803009, -0.138274, 0.579704,
		39.427345, 33.833736, 30.831224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758823, 33.316059, 30.819658>,  <38.865238, 33.930527, 30.425430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758823, 33.316059, 30.819658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021282, 33.562889, 30.993412>,  <39.178757, 33.710987, 31.097664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021282, 33.562889, 30.993412>,  <38.758823, 33.316059, 30.819658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021282, 33.562889, 30.993412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555867, 0.005915, 0.831250,
		0.510373, -0.786884, 0.346892,
		0.656149, 0.617073, 0.434383,
		39.218128, 33.748013, 31.123728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588467, 33.221634, 31.503302>,  <38.758823, 33.316059, 30.819658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588467, 33.221634, 31.503302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848255, 33.525269, 31.521070>,  <39.004128, 33.707451, 31.531733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.848255, 33.525269, 31.521070>,  <38.588467, 33.221634, 31.503302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848255, 33.525269, 31.521070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358187, 0.253881, 0.898469,
		0.670740, -0.599439, 0.436784,
		0.649469, 0.759090, 0.044423,
		39.043095, 33.752995, 31.534397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008251, 33.102348, 32.096584>,  <38.588467, 33.221634, 31.503302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008251, 33.102348, 32.096584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986271, 33.491829, 32.008148>,  <38.973083, 33.725517, 31.955086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986271, 33.491829, 32.008148>,  <39.008251, 33.102348, 32.096584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986271, 33.491829, 32.008148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281978, 0.197279, 0.938919,
		0.957846, 0.113935, 0.263723,
		-0.054948, 0.973704, -0.221090,
		38.969788, 33.783939, 31.941822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474163, 33.593395, 32.529808>,  <39.008251, 33.102348, 32.096584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474163, 33.593395, 32.529808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207485, 33.848129, 32.374916>,  <39.047478, 34.000969, 32.281979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207485, 33.848129, 32.374916>,  <39.474163, 33.593395, 32.529808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207485, 33.848129, 32.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295217, 0.251418, 0.921757,
		0.684368, 0.728852, 0.020386,
		-0.666699, 0.636839, -0.387232,
		39.007477, 34.039181, 32.258747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423695, 34.286987, 32.962421>,  <39.474163, 33.593395, 32.529808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423695, 34.286987, 32.962421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076794, 34.281006, 32.763363>,  <38.868652, 34.277416, 32.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076794, 34.281006, 32.763363>,  <39.423695, 34.286987, 32.962421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076794, 34.281006, 32.763363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497735, 0.049477, 0.865917,
		0.011674, 0.998663, -0.050351,
		-0.867251, -0.014953, -0.497647,
		38.816620, 34.276520, 32.614067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920994, 34.631111, 33.411419>,  <39.423695, 34.286987, 32.962421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920994, 34.631111, 33.411419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679234, 34.435398, 33.159927>,  <38.534176, 34.317970, 33.009033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679234, 34.435398, 33.159927>,  <38.920994, 34.631111, 33.411419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679234, 34.435398, 33.159927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633812, -0.182830, 0.751569,
		-0.482680, 0.852746, -0.199611,
		-0.604402, -0.489283, -0.628729,
		38.497913, 34.288612, 32.971310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303867, 35.093212, 33.351177>,  <38.920994, 34.631111, 33.411419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303867, 35.093212, 33.351177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230759, 34.710377, 33.261219>,  <38.186893, 34.480675, 33.207245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230759, 34.710377, 33.261219>,  <38.303867, 35.093212, 33.351177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230759, 34.710377, 33.261219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586838, -0.077324, 0.806004,
		-0.788806, 0.279291, -0.547523,
		-0.182773, -0.957088, -0.224892,
		38.175926, 34.423252, 33.193752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605801, 35.037254, 33.415146>,  <38.303867, 35.093212, 33.351177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.605801, 35.037254, 33.415146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757912, 34.668335, 33.442719>,  <37.849178, 34.446983, 33.459263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.757912, 34.668335, 33.442719>,  <37.605801, 35.037254, 33.415146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757912, 34.668335, 33.442719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606303, -0.192316, 0.771629,
		-0.698415, -0.335231, -0.632327,
		0.380280, -0.922299, 0.068936,
		37.871994, 34.391644, 33.463398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051090, 34.676365, 33.317364>,  <37.605801, 35.037254, 33.415146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051090, 34.676365, 33.317364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356232, 34.534420, 33.533558>,  <37.539318, 34.449253, 33.663273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356232, 34.534420, 33.533558>,  <37.051090, 34.676365, 33.317364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356232, 34.534420, 33.533558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589296, -0.037631, 0.807040,
		-0.266051, -0.934160, -0.237828,
		0.762855, -0.354865, 0.540485,
		37.585087, 34.427959, 33.695702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856052, 33.960464, 33.636341>,  <37.051090, 34.676365, 33.317364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856052, 33.960464, 33.636341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105839, 34.184296, 33.854301>,  <37.255711, 34.318592, 33.985077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105839, 34.184296, 33.854301>,  <36.856052, 33.960464, 33.636341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105839, 34.184296, 33.854301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553160, -0.175672, 0.814342,
		0.551409, -0.809947, 0.199833,
		0.624469, 0.559575, 0.544898,
		37.293179, 34.352169, 34.017773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166618, 33.522385, 34.163841>,  <36.856052, 33.960464, 33.636341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166618, 33.522385, 34.163841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140804, 33.905495, 34.275909>,  <37.125317, 34.135361, 34.343151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140804, 33.905495, 34.275909>,  <37.166618, 33.522385, 34.163841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140804, 33.905495, 34.275909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624627, -0.257728, 0.737169,
		0.778252, -0.127429, 0.614887,
		-0.064537, 0.957778, 0.280173,
		37.121445, 34.192829, 34.359962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130108, 33.505787, 34.882534>,  <37.166618, 33.522385, 34.163841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130108, 33.505787, 34.882534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974834, 33.862236, 34.788540>,  <36.881672, 34.076103, 34.732143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974834, 33.862236, 34.788540>,  <37.130108, 33.505787, 34.882534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974834, 33.862236, 34.788540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708597, -0.125576, 0.694349,
		0.589241, 0.436045, 0.680191,
		-0.388183, 0.891120, -0.234985,
		36.858379, 34.129574, 34.718044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805584, 33.606049, 35.440754>,  <37.130108, 33.505787, 34.882534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805584, 33.606049, 35.440754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639980, 33.864082, 35.183861>,  <36.540619, 34.018902, 35.029724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639980, 33.864082, 35.183861>,  <36.805584, 33.606049, 35.440754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639980, 33.864082, 35.183861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821366, 0.039376, 0.569041,
		0.392366, 0.763100, 0.513544,
		-0.414014, 0.645080, -0.642234,
		36.515778, 34.057606, 34.991192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471188, 34.207188, 35.852268>,  <36.805584, 33.606049, 35.440754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471188, 34.207188, 35.852268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297367, 34.210850, 35.492027>,  <36.193077, 34.213047, 35.275883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297367, 34.210850, 35.492027>,  <36.471188, 34.207188, 35.852268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297367, 34.210850, 35.492027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890626, 0.144394, 0.431202,
		0.133988, 0.989478, -0.054594,
		-0.434547, 0.009154, -0.900602,
		36.167004, 34.213596, 35.221848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084328, 34.779469, 35.872478>,  <36.471188, 34.207188, 35.852268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084328, 34.779469, 35.872478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923836, 34.537945, 35.596962>,  <35.827541, 34.393032, 35.431652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923836, 34.537945, 35.596962>,  <36.084328, 34.779469, 35.872478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923836, 34.537945, 35.596962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905636, 0.148813, 0.397087,
		-0.137264, 0.783115, -0.606539,
		-0.401226, -0.603810, -0.688790,
		35.803467, 34.356800, 35.390324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551231, 35.102680, 35.683418>,  <36.084328, 34.779469, 35.872478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551231, 35.102680, 35.683418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459999, 34.727989, 35.577194>,  <35.405258, 34.503174, 35.513458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459999, 34.727989, 35.577194>,  <35.551231, 35.102680, 35.683418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459999, 34.727989, 35.577194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926362, 0.124816, 0.355352,
		-0.299721, 0.327054, -0.896216,
		-0.228081, -0.936726, -0.265561,
		35.391575, 34.446972, 35.497524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950562, 35.128712, 35.299789>,  <35.551231, 35.102680, 35.683418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950562, 35.128712, 35.299789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935703, 34.737713, 35.382854>,  <34.926788, 34.503113, 35.432693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935703, 34.737713, 35.382854>,  <34.950562, 35.128712, 35.299789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935703, 34.737713, 35.382854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975645, 0.080431, 0.204078,
		-0.216188, -0.195025, -0.956675,
		-0.037146, -0.977495, 0.207664,
		34.924561, 34.444466, 35.445152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345169, 34.769405, 34.914253>,  <34.950562, 35.128712, 35.299789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345169, 34.769405, 34.914253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437710, 34.514572, 35.208355>,  <34.493237, 34.361671, 35.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437710, 34.514572, 35.208355>,  <34.345169, 34.769405, 34.914253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437710, 34.514572, 35.208355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972691, -0.165942, 0.162280,
		0.018623, -0.752717, -0.658080,
		0.231354, -0.637087, 0.735252,
		34.507114, 34.323444, 35.428932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896400, 34.243076, 34.875141>,  <34.345169, 34.769405, 34.914253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896400, 34.243076, 34.875141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017586, 34.197399, 35.253593>,  <34.090298, 34.169991, 35.480667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017586, 34.197399, 35.253593>,  <33.896400, 34.243076, 34.875141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017586, 34.197399, 35.253593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942235, -0.184706, 0.279423,
		0.142848, -0.976137, -0.163560,
		0.302966, -0.114197, 0.946134,
		34.108475, 34.163139, 35.537434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671017, 33.638615, 35.079338>,  <33.896400, 34.243076, 34.875141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671017, 33.638615, 35.079338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737461, 33.846886, 35.414314>,  <33.777328, 33.971848, 35.615299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737461, 33.846886, 35.414314>,  <33.671017, 33.638615, 35.079338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737461, 33.846886, 35.414314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946765, -0.153276, 0.283093,
		0.275759, -0.839884, 0.467495,
		0.166110, 0.520674, 0.837440,
		33.787292, 34.003086, 35.665546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228268, 33.323357, 35.574650>,  <33.671017, 33.638615, 35.079338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228268, 33.323357, 35.574650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312031, 33.693764, 35.700275>,  <33.362289, 33.916008, 35.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312031, 33.693764, 35.700275>,  <33.228268, 33.323357, 35.574650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312031, 33.693764, 35.700275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932491, 0.092449, 0.349161,
		0.294296, -0.365974, 0.882866,
		0.209404, 0.926021, 0.314060,
		33.374851, 33.971569, 35.794495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943478, 33.349392, 36.232937>,  <33.228268, 33.323357, 35.574650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943478, 33.349392, 36.232937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002987, 33.715981, 36.084370>,  <33.038692, 33.935932, 35.995232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.002987, 33.715981, 36.084370>,  <32.943478, 33.349392, 36.232937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002987, 33.715981, 36.084370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920206, 0.265821, 0.287332,
		0.362061, 0.299031, 0.882889,
		0.148769, 0.916471, -0.371414,
		33.047619, 33.990921, 35.972946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852264, 33.853382, 36.708748>,  <32.943478, 33.349392, 36.232937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852264, 33.853382, 36.708748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766411, 34.001076, 36.347065>,  <32.714897, 34.089691, 36.130054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766411, 34.001076, 36.347065>,  <32.852264, 33.853382, 36.708748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766411, 34.001076, 36.347065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951239, 0.130954, 0.279277,
		0.221528, 0.920064, 0.323122,
		-0.214639, 0.369234, -0.904211,
		32.702019, 34.111847, 36.075802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512096, 34.475895, 36.711201>,  <32.852264, 33.853382, 36.708748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512096, 34.475895, 36.711201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411049, 34.337364, 36.349815>,  <32.350422, 34.254246, 36.132984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411049, 34.337364, 36.349815>,  <32.512096, 34.475895, 36.711201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411049, 34.337364, 36.349815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960295, 0.204001, 0.190307,
		0.118400, 0.915666, -0.384106,
		-0.252616, -0.346323, -0.903463,
		32.335262, 34.233467, 36.078777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063774, 34.900524, 36.469883>,  <32.512096, 34.475895, 36.711201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063774, 34.900524, 36.469883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962479, 34.585850, 36.244675>,  <31.901701, 34.397045, 36.109550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962479, 34.585850, 36.244675>,  <32.063774, 34.900524, 36.469883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962479, 34.585850, 36.244675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965942, 0.237598, 0.102483,
		0.053151, 0.569800, -0.820063,
		-0.253240, -0.786687, -0.563022,
		31.886507, 34.349842, 36.075768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590929, 35.007664, 35.917099>,  <32.063774, 34.900524, 36.469883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590929, 35.007664, 35.917099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538504, 34.612259, 35.947186>,  <31.507048, 34.375015, 35.965237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538504, 34.612259, 35.947186>,  <31.590929, 35.007664, 35.917099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538504, 34.612259, 35.947186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990331, 0.134029, 0.035782,
		-0.045452, -0.069799, -0.996525,
		-0.131065, -0.988517, 0.075216,
		31.499184, 34.315704, 35.969749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.021566, 34.808220, 35.467003>,  <31.590929, 35.007664, 35.917099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.021566, 34.808220, 35.467003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075689, 34.488869, 35.701706>,  <31.108162, 34.297256, 35.842529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075689, 34.488869, 35.701706>,  <31.021566, 34.808220, 35.467003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075689, 34.488869, 35.701706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982582, -0.031987, 0.183058,
		-0.127381, -0.601306, -0.788800,
		0.135305, -0.798378, 0.586757,
		31.116282, 34.249355, 35.877735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.560307, 34.193001, 35.285637>,  <31.021566, 34.808220, 35.467003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.560307, 34.193001, 35.285637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643997, 34.226727, 35.675327>,  <30.694212, 34.246964, 35.909142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643997, 34.226727, 35.675327>,  <30.560307, 34.193001, 35.285637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643997, 34.226727, 35.675327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977565, -0.006751, 0.210526,
		0.024329, -0.996416, 0.081018,
		0.209225, 0.084322, 0.974225,
		30.706764, 34.252022, 35.967594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293194, 33.637039, 35.722176>,  <30.560307, 34.193001, 35.285637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293194, 33.637039, 35.722176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314903, 34.001125, 35.886402>,  <30.327929, 34.219578, 35.984940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314903, 34.001125, 35.886402>,  <30.293194, 33.637039, 35.722176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314903, 34.001125, 35.886402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990343, -0.003465, 0.138593,
		0.127572, -0.414123, 0.901237,
		0.054272, 0.910214, 0.410566,
		30.331184, 34.274189, 36.009571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100842, 33.618923, 36.383629>,  <30.293194, 33.637039, 35.722176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100842, 33.618923, 36.383629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015053, 33.968719, 36.209610>,  <29.963579, 34.178596, 36.105198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015053, 33.968719, 36.209610>,  <30.100842, 33.618923, 36.383629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015053, 33.968719, 36.209610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974249, -0.159807, 0.159062,
		0.069574, 0.457960, 0.886246,
		-0.214472, 0.874491, -0.435049,
		29.950710, 34.231068, 36.079094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.839497, 34.034760, 36.847466>,  <30.100842, 33.618923, 36.383629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.839497, 34.034760, 36.847466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715622, 34.124557, 36.477882>,  <29.641296, 34.178436, 36.256134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715622, 34.124557, 36.477882>,  <29.839497, 34.034760, 36.847466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715622, 34.124557, 36.477882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945075, -0.179504, 0.273151,
		-0.104531, 0.957799, 0.267758,
		-0.309688, 0.224498, -0.923956,
		29.622715, 34.191906, 36.200695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.235752, 34.616302, 36.883305>,  <29.839497, 34.034760, 36.847466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.235752, 34.616302, 36.883305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353271, 34.326202, 36.634243>,  <30.423784, 34.152142, 36.484806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353271, 34.326202, 36.634243>,  <30.235752, 34.616302, 36.883305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353271, 34.326202, 36.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942598, 0.327983, 0.062742,
		0.158716, -0.605345, 0.779979,
		0.293800, -0.725248, -0.622653,
		30.441412, 34.108627, 36.447449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940567, 34.324028, 37.208542>,  <30.235752, 34.616302, 36.883305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940567, 34.324028, 37.208542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887531, 34.264709, 36.816536>,  <30.855711, 34.229118, 36.581333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887531, 34.264709, 36.816536>,  <30.940567, 34.324028, 37.208542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887531, 34.264709, 36.816536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883094, 0.431297, -0.184739,
		0.450073, -0.889939, 0.073777,
		-0.132587, -0.148298, -0.980014,
		30.847755, 34.220219, 36.522533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523468, 33.832375, 36.818142>,  <30.940567, 34.324028, 37.208542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523468, 33.832375, 36.818142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365707, 34.104267, 36.570782>,  <31.271051, 34.267403, 36.422367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365707, 34.104267, 36.570782>,  <31.523468, 33.832375, 36.818142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365707, 34.104267, 36.570782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883252, 0.466121, -0.050970,
		0.253602, -0.566303, -0.784211,
		-0.394401, 0.679730, -0.618397,
		31.247387, 34.308186, 36.385262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226080, 33.146782, 36.558044>,  <31.523468, 33.832375, 36.818142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226080, 33.146782, 36.558044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186378, 33.473633, 36.330902>,  <31.162558, 33.669743, 36.194618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186378, 33.473633, 36.330902>,  <31.226080, 33.146782, 36.558044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186378, 33.473633, 36.330902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957654, -0.076562, -0.277555,
		-0.270272, -0.571356, -0.774923,
		-0.099253, 0.817124, -0.567854,
		31.156603, 33.718769, 36.160545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393833, 33.010571, 35.790943>,  <31.226080, 33.146782, 36.558044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393833, 33.010571, 35.790943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419565, 33.405891, 35.846264>,  <31.435005, 33.643082, 35.879456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419565, 33.405891, 35.846264>,  <31.393833, 33.010571, 35.790943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419565, 33.405891, 35.846264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913564, -0.002554, -0.406687,
		-0.401575, 0.152509, -0.903039,
		0.064330, 0.988299, 0.138301,
		31.438864, 33.702381, 35.887753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679893, 33.272228, 35.215900>,  <31.393833, 33.010571, 35.790943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679893, 33.272228, 35.215900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754496, 33.545822, 35.498001>,  <31.799257, 33.709980, 35.667263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754496, 33.545822, 35.498001>,  <31.679893, 33.272228, 35.215900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754496, 33.545822, 35.498001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915490, 0.139489, -0.377387,
		-0.356502, 0.716035, -0.600166,
		0.186505, 0.683986, 0.705251,
		31.810448, 33.751019, 35.709576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269829, 33.656189, 34.972595>,  <31.679893, 33.272228, 35.215900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269829, 33.656189, 34.972595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245525, 33.851944, 35.320576>,  <32.230946, 33.969395, 35.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245525, 33.851944, 35.320576>,  <32.269829, 33.656189, 34.972595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245525, 33.851944, 35.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939384, 0.322679, -0.115914,
		-0.337441, 0.810174, -0.479324,
		-0.060757, 0.489384, 0.869950,
		32.227299, 33.998760, 35.581562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393024, 34.423244, 34.891445>,  <32.269829, 33.656189, 34.972595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393024, 34.423244, 34.891445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482506, 34.289257, 35.257561>,  <32.536194, 34.208862, 35.477230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.482506, 34.289257, 35.257561>,  <32.393024, 34.423244, 34.891445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482506, 34.289257, 35.257561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940047, 0.322184, -0.111846,
		-0.257425, 0.885432, 0.386964,
		0.223706, -0.334973, 0.915286,
		32.549618, 34.188766, 35.532146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886696, 35.001637, 35.095814>,  <32.393024, 34.423244, 34.891445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886696, 35.001637, 35.095814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892475, 34.692997, 35.350189>,  <32.895943, 34.507812, 35.502815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892475, 34.692997, 35.350189>,  <32.886696, 35.001637, 35.095814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892475, 34.692997, 35.350189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914208, 0.267799, 0.304150,
		-0.404988, 0.576987, 0.709275,
		0.014453, -0.771602, 0.635941,
		32.896812, 34.461517, 35.540970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243114, 35.256859, 35.702038>,  <32.886696, 35.001637, 35.095814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243114, 35.256859, 35.702038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202045, 34.865055, 35.771351>,  <33.177402, 34.629974, 35.812939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202045, 34.865055, 35.771351>,  <33.243114, 35.256859, 35.702038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202045, 34.865055, 35.771351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889722, -0.012534, 0.456330,
		-0.444806, 0.201028, 0.872775,
		-0.102675, -0.979505, 0.173284,
		33.171242, 34.571205, 35.823338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744179, 35.096306, 36.328545>,  <33.243114, 35.256859, 35.702038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744179, 35.096306, 36.328545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635532, 34.730213, 36.209496>,  <33.570343, 34.510559, 36.138065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.635532, 34.730213, 36.209496>,  <33.744179, 35.096306, 36.328545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.635532, 34.730213, 36.209496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952669, -0.299569, 0.051776,
		-0.136546, -0.269475, 0.953278,
		-0.271620, -0.915228, -0.297625,
		33.554047, 34.455647, 36.120209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024197, 34.624989, 36.774658>,  <33.744179, 35.096306, 36.328545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024197, 34.624989, 36.774658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966019, 34.415936, 36.438633>,  <33.931110, 34.290504, 36.237019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966019, 34.415936, 36.438633>,  <34.024197, 34.624989, 36.774658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966019, 34.415936, 36.438633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973716, -0.226043, -0.027957,
		-0.175279, -0.822047, 0.541772,
		-0.145446, -0.522632, -0.840060,
		33.922386, 34.259148, 36.186615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554459, 34.044567, 36.755524>,  <34.024197, 34.624989, 36.774658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554459, 34.044567, 36.755524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428886, 34.071884, 36.376728>,  <34.353542, 34.088276, 36.149452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428886, 34.071884, 36.376728>,  <34.554459, 34.044567, 36.755524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428886, 34.071884, 36.376728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943648, -0.087601, -0.319146,
		-0.104754, -0.993812, -0.036946,
		-0.313934, 0.068296, -0.946985,
		34.334705, 34.092373, 36.092632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860584, 33.485218, 36.379871>,  <34.554459, 34.044567, 36.755524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860584, 33.485218, 36.379871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763222, 33.780983, 36.128788>,  <34.704803, 33.958443, 35.978138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763222, 33.780983, 36.128788>,  <34.860584, 33.485218, 36.379871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763222, 33.780983, 36.128788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851931, -0.146378, -0.502780,
		-0.463645, -0.657145, -0.594300,
		-0.243407, 0.739414, -0.627710,
		34.690201, 34.002808, 35.940475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965107, 33.219933, 35.717262>,  <34.860584, 33.485218, 36.379871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965107, 33.219933, 35.717262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973919, 33.619091, 35.692883>,  <34.979206, 33.858585, 35.678253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973919, 33.619091, 35.692883>,  <34.965107, 33.219933, 35.717262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973919, 33.619091, 35.692883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768849, -0.055879, -0.636984,
		-0.639051, -0.032827, -0.768464,
		0.022031, 0.997898, -0.060948,
		34.980530, 33.918461, 35.674599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093121, 33.332920, 34.971790>,  <34.965107, 33.219933, 35.717262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093121, 33.332920, 34.971790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154694, 33.699249, 35.120159>,  <35.191639, 33.919044, 35.209179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154694, 33.699249, 35.120159>,  <35.093121, 33.332920, 34.971790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154694, 33.699249, 35.120159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751629, 0.135136, -0.645595,
		-0.641372, 0.378173, -0.667553,
		0.153936, 0.915818, 0.370918,
		35.200874, 33.973995, 35.231434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187473, 33.806690, 34.385384>,  <35.093121, 33.332920, 34.971790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187473, 33.806690, 34.385384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374046, 33.972630, 34.697884>,  <35.485989, 34.072193, 34.885384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374046, 33.972630, 34.697884>,  <35.187473, 33.806690, 34.385384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374046, 33.972630, 34.697884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822316, 0.122091, -0.555779,
		-0.325947, 0.901662, -0.284190,
		0.466428, 0.414848, 0.781246,
		35.513973, 34.097084, 34.932259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602703, 34.196293, 34.097870>,  <35.187473, 33.806690, 34.385384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602703, 34.196293, 34.097870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770855, 34.166416, 34.459579>,  <35.871746, 34.148491, 34.676605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770855, 34.166416, 34.459579>,  <35.602703, 34.196293, 34.097870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770855, 34.166416, 34.459579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891257, 0.220859, -0.396083,
		-0.170131, 0.972441, 0.159416,
		0.420376, -0.074694, 0.904270,
		35.896969, 34.144009, 34.730862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907742, 34.841377, 34.122005>,  <35.602703, 34.196293, 34.097870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907742, 34.841377, 34.122005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092945, 34.605663, 34.386845>,  <36.204067, 34.464237, 34.545746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092945, 34.605663, 34.386845>,  <35.907742, 34.841377, 34.122005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092945, 34.605663, 34.386845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881162, 0.386745, -0.271995,
		-0.095780, 0.709349, 0.698319,
		0.463011, -0.589281, 0.662094,
		36.231850, 34.428879, 34.585472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433041, 35.364227, 34.344166>,  <35.907742, 34.841377, 34.122005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433041, 35.364227, 34.344166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567177, 35.003803, 34.454174>,  <36.647659, 34.787548, 34.520180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567177, 35.003803, 34.454174>,  <36.433041, 35.364227, 34.344166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567177, 35.003803, 34.454174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911804, 0.236986, -0.335338,
		0.236986, 0.363213, 0.901063,
		0.335338, -0.901063, 0.275016,
		36.667778, 34.733486, 34.536678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080837, 35.475735, 34.643658>,  <36.433041, 35.364227, 34.344166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080837, 35.475735, 34.643658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097015, 35.084881, 34.560169>,  <37.106724, 34.850368, 34.510075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097015, 35.084881, 34.560169>,  <37.080837, 35.475735, 34.643658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097015, 35.084881, 34.560169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923913, 0.116113, -0.364557,
		0.380458, -0.178094, 0.907488,
		0.040446, -0.977139, -0.208720,
		37.109150, 34.791740, 34.497555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813309, 35.187683, 34.876579>,  <37.080837, 35.475735, 34.643658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813309, 35.187683, 34.876579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643234, 34.973873, 34.584415>,  <37.541187, 34.845589, 34.409115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.643234, 34.973873, 34.584415>,  <37.813309, 35.187683, 34.876579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643234, 34.973873, 34.584415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888209, -0.091216, -0.450294,
		0.174067, -0.840218, 0.513551,
		-0.425189, -0.534522, -0.730411,
		37.515678, 34.813515, 34.365292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260448, 34.711960, 34.909145>,  <37.813309, 35.187683, 34.876579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260448, 34.711960, 34.909145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073235, 34.759235, 34.558838>,  <37.960907, 34.787601, 34.348652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073235, 34.759235, 34.558838>,  <38.260448, 34.711960, 34.909145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073235, 34.759235, 34.558838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879071, -0.039115, -0.475083,
		-0.090406, -0.992220, -0.085590,
		-0.468039, 0.118190, -0.875769,
		37.932823, 34.794693, 34.296108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383297, 34.223007, 34.513321>,  <38.260448, 34.711960, 34.909145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383297, 34.223007, 34.513321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309799, 34.511749, 34.246441>,  <38.265701, 34.684994, 34.086311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309799, 34.511749, 34.246441>,  <38.383297, 34.223007, 34.513321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309799, 34.511749, 34.246441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953487, -0.034112, -0.299500,
		-0.238956, -0.691199, -0.682015,
		-0.183749, 0.721859, -0.667200,
		38.254673, 34.728306, 34.046280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896969, 34.237747, 35.197113>,  <38.383297, 34.223007, 34.513321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896969, 34.237747, 35.197113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159435, 34.530548, 35.270462>,  <39.316914, 34.706226, 35.314472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.159435, 34.530548, 35.270462>,  <38.896969, 34.237747, 35.197113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159435, 34.530548, 35.270462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753913, -0.646396, -0.117420,
		0.032579, 0.215294, -0.976006,
		0.656166, 0.731998, 0.183372,
		39.356285, 34.750149, 35.325474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340878, 34.299164, 34.618641>,  <38.896969, 34.237747, 35.197113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340878, 34.299164, 34.618641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501663, 34.413918, 34.966461>,  <39.598133, 34.482769, 35.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.501663, 34.413918, 34.966461>,  <39.340878, 34.299164, 34.618641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501663, 34.413918, 34.966461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674440, -0.735075, -0.069251,
		0.619319, 0.614298, -0.488960,
		0.401963, 0.286886, 0.869553,
		39.622253, 34.499985, 35.227325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059727, 34.495205, 34.523186>,  <39.340878, 34.299164, 34.618641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059727, 34.495205, 34.523186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001839, 34.369610, 34.898518>,  <39.967106, 34.294254, 35.123718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001839, 34.369610, 34.898518>,  <40.059727, 34.495205, 34.523186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001839, 34.369610, 34.898518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857840, -0.512423, -0.039163,
		0.493120, 0.799272, 0.343506,
		-0.144719, -0.313985, 0.938334,
		39.958424, 34.275414, 35.180019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714706, 34.553318, 34.939766>,  <40.059727, 34.495205, 34.523186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714706, 34.553318, 34.939766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463821, 34.276215, 35.082134>,  <40.313290, 34.109951, 35.167557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463821, 34.276215, 35.082134>,  <40.714706, 34.553318, 34.939766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463821, 34.276215, 35.082134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667870, -0.713502, -0.211811,
		0.400685, 0.104857, 0.910196,
		-0.627217, -0.692762, 0.355920,
		40.275658, 34.068386, 35.188911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143799, 34.141697, 35.322784>,  <40.714706, 34.553318, 34.939766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143799, 34.141697, 35.322784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840363, 33.897884, 35.230686>,  <40.658302, 33.751598, 35.175426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840363, 33.897884, 35.230686>,  <41.143799, 34.141697, 35.322784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840363, 33.897884, 35.230686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651317, -0.719199, -0.241949,
		-0.018115, -0.333501, 0.942576,
		-0.758590, -0.609532, -0.230243,
		40.612785, 33.715023, 35.161613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.705250, 33.800163, 34.813568>,  <41.143799, 34.141697, 35.322784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.705250, 33.800163, 34.813568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679604, 33.757549, 35.210464>,  <41.664215, 33.731979, 35.448601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.679604, 33.757549, 35.210464>,  <41.705250, 33.800163, 34.813568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679604, 33.757549, 35.210464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504808, -0.861155, -0.059841,
		0.860847, 0.497053, 0.108997,
		-0.064119, -0.106537, 0.992239,
		41.660366, 33.725590, 35.508137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213135, 33.312824, 34.818172>,  <41.705250, 33.800163, 34.813568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213135, 33.312824, 34.818172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131905, 33.389084, 35.202343>,  <42.083164, 33.434837, 35.432846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131905, 33.389084, 35.202343>,  <42.213135, 33.312824, 34.818172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131905, 33.389084, 35.202343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710722, -0.645993, 0.278510,
		0.673523, 0.739153, -0.004310,
		-0.203078, 0.190646, 0.960424,
		42.070980, 33.446278, 35.490471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871792, 33.487942, 35.245975>,  <42.213135, 33.312824, 34.818172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871792, 33.487942, 35.245975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589783, 33.328735, 35.480762>,  <42.420578, 33.233212, 35.621635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589783, 33.328735, 35.480762>,  <42.871792, 33.487942, 35.245975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589783, 33.328735, 35.480762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664212, -0.660643, 0.349820,
		0.248541, 0.636500, 0.730134,
		-0.705018, -0.398019, 0.586967,
		42.378277, 33.209332, 35.656853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371815, 32.982891, 35.387009>,  <42.871792, 33.487942, 35.245975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371815, 32.982891, 35.387009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647400, 32.908619, 35.667252>,  <43.812752, 32.864056, 35.835400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647400, 32.908619, 35.667252>,  <43.371815, 32.982891, 35.387009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647400, 32.908619, 35.667252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645083, 0.597799, -0.475924,
		-0.330454, 0.779845, 0.531641,
		0.688961, -0.185681, 0.700610,
		43.854088, 32.852913, 35.877434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.731640, 33.572903, 35.494774>,  <43.371815, 32.982891, 35.387009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.731640, 33.572903, 35.494774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998631, 33.290649, 35.589901>,  <44.158825, 33.121300, 35.646976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.998631, 33.290649, 35.589901>,  <43.731640, 33.572903, 35.494774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998631, 33.290649, 35.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715430, 0.519159, -0.467583,
		0.206474, 0.482245, 0.851357,
		0.667479, -0.705630, 0.237820,
		44.198875, 33.078960, 35.661247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421909, 33.872910, 35.524937>,  <43.731640, 33.572903, 35.494774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421909, 33.872910, 35.524937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533646, 33.489025, 35.537075>,  <44.600689, 33.258694, 35.544357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533646, 33.489025, 35.537075>,  <44.421909, 33.872910, 35.524937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533646, 33.489025, 35.537075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956520, 0.280894, 0.078537,
		-0.083896, 0.007084, 0.996449,
		0.279340, -0.959713, 0.030342,
		44.617447, 33.201111, 35.546177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770252, 33.808884, 36.110798>,  <44.421909, 33.872910, 35.524937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770252, 33.808884, 36.110798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864048, 33.572742, 35.801865>,  <44.920326, 33.431057, 35.616505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864048, 33.572742, 35.801865>,  <44.770252, 33.808884, 36.110798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864048, 33.572742, 35.801865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898487, 0.434928, -0.059660,
		0.371130, -0.679943, 0.632409,
		0.234487, -0.590352, -0.772334,
		44.934395, 33.395638, 35.570164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385796, 33.363285, 36.197021>,  <44.770252, 33.808884, 36.110798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385796, 33.363285, 36.197021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316017, 33.473396, 35.818859>,  <45.274151, 33.539463, 35.591961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.316017, 33.473396, 35.818859>,  <45.385796, 33.363285, 36.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.316017, 33.473396, 35.818859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914183, 0.402000, -0.051635,
		0.365838, -0.873279, -0.321787,
		-0.174450, 0.275282, -0.945403,
		45.263683, 33.555981, 35.535236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942257, 33.162083, 35.800262>,  <45.385796, 33.363285, 36.197021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942257, 33.162083, 35.800262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755348, 33.493549, 35.676998>,  <45.643204, 33.692429, 35.603039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.755348, 33.493549, 35.676998>,  <45.942257, 33.162083, 35.800262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755348, 33.493549, 35.676998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858085, 0.509029, 0.067675,
		0.212944, -0.232806, -0.948924,
		-0.467274, 0.828668, -0.308162,
		45.615166, 33.742149, 35.584549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301369, 33.350838, 35.266117>,  <45.942257, 33.162083, 35.800262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301369, 33.350838, 35.266117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092175, 33.667061, 35.393551>,  <45.966656, 33.856796, 35.470013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092175, 33.667061, 35.393551>,  <46.301369, 33.350838, 35.266117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092175, 33.667061, 35.393551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778215, 0.595353, -0.199840,
		-0.347655, 0.143413, -0.926590,
		-0.522989, 0.790561, 0.318584,
		45.935276, 33.904228, 35.489124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.233124, 33.911129, 34.759296>,  <46.301369, 33.350838, 35.266117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.233124, 33.911129, 34.759296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196907, 34.056076, 35.130348>,  <46.175175, 34.143044, 35.352978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.196907, 34.056076, 35.130348>,  <46.233124, 33.911129, 34.759296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.196907, 34.056076, 35.130348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734641, 0.653184, -0.183449,
		-0.672386, 0.664863, -0.325352,
		-0.090546, 0.362365, 0.927628,
		46.169743, 34.164787, 35.408638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.267075, 34.673363, 34.700142>,  <46.233124, 33.911129, 34.759296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.267075, 34.673363, 34.700142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415325, 34.537560, 35.045944>,  <46.504276, 34.456078, 35.253426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.415325, 34.537560, 35.045944>,  <46.267075, 34.673363, 34.700142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.415325, 34.537560, 35.045944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890939, 0.392946, -0.227641,
		-0.262417, 0.854591, 0.448120,
		0.370627, -0.339511, 0.864504,
		46.526512, 34.435707, 35.305294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654125, 35.183296, 35.036034>,  <46.267075, 34.673363, 34.700142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654125, 35.183296, 35.036034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789051, 34.845142, 35.201706>,  <46.870007, 34.642250, 35.301109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.789051, 34.845142, 35.201706>,  <46.654125, 35.183296, 35.036034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.789051, 34.845142, 35.201706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930405, 0.232362, -0.283469,
		0.143398, 0.480978, 0.864926,
		0.337318, -0.845380, 0.414184,
		46.890247, 34.591530, 35.325962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306339, 35.354755, 35.503124>,  <46.654125, 35.183296, 35.036034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306339, 35.354755, 35.503124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264854, 35.008018, 35.308056>,  <47.239964, 34.799976, 35.191017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.264854, 35.008018, 35.308056>,  <47.306339, 35.354755, 35.503124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.264854, 35.008018, 35.308056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854420, 0.173335, -0.489817,
		0.509127, -0.467473, 0.722675,
		-0.103711, -0.866847, -0.487668,
		47.233742, 34.747963, 35.161755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.861095, 34.995514, 35.579361>,  <47.306339, 35.354755, 35.503124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.861095, 34.995514, 35.579361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693996, 34.897758, 35.229328>,  <47.593735, 34.839108, 35.019310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.693996, 34.897758, 35.229328>,  <47.861095, 34.995514, 35.579361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.693996, 34.897758, 35.229328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879896, 0.131209, -0.456692,
		0.226427, -0.960760, 0.160220,
		-0.417749, -0.244384, -0.875078,
		47.568672, 34.824444, 34.966805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.279034, 27.552582, 27.954149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016335, 27.564697, 27.652748>,  <40.858715, 27.571966, 27.471909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.016335, 27.564697, 27.652748>,  <41.279034, 27.552582, 27.954149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016335, 27.564697, 27.652748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635798, 0.515066, 0.574863,
		0.405514, 0.856615, -0.319013,
		-0.656749, 0.030287, -0.753501,
		40.819309, 27.573784, 27.426699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100285, 28.172787, 27.899479>,  <41.279034, 27.552582, 27.954149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100285, 28.172787, 27.899479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783222, 28.017002, 27.711853>,  <40.592987, 27.923531, 27.599277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.783222, 28.017002, 27.711853>,  <41.100285, 28.172787, 27.899479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783222, 28.017002, 27.711853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593300, 0.669855, 0.446418,
		0.140342, 0.632150, -0.762030,
		-0.792654, -0.389462, -0.469063,
		40.545425, 27.900164, 27.571135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703964, 28.700541, 27.912340>,  <41.100285, 28.172787, 27.899479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703964, 28.700541, 27.912340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436104, 28.416992, 27.823729>,  <40.275387, 28.246864, 27.770561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436104, 28.416992, 27.823729>,  <40.703964, 28.700541, 27.912340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436104, 28.416992, 27.823729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706495, 0.516054, 0.484307,
		-0.228988, 0.480826, -0.846387,
		-0.669649, -0.708869, -0.221531,
		40.235210, 28.204332, 27.757269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128544, 29.034464, 27.595692>,  <40.703964, 28.700541, 27.912340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128544, 29.034464, 27.595692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.967991, 28.684212, 27.703144>,  <39.871658, 28.474060, 27.767614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.967991, 28.684212, 27.703144>,  <40.128544, 29.034464, 27.595692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967991, 28.684212, 27.703144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780847, 0.480439, 0.399319,
		-0.478716, -0.049479, -0.876574,
		-0.401383, -0.875631, 0.268630,
		39.847576, 28.421522, 27.783733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366680, 29.048672, 27.522575>,  <40.128544, 29.034464, 27.595692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366680, 29.048672, 27.522575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450375, 28.768347, 27.795362>,  <39.500591, 28.600151, 27.959034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.450375, 28.768347, 27.795362>,  <39.366680, 29.048672, 27.522575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450375, 28.768347, 27.795362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676194, 0.400094, 0.618617,
		-0.706387, -0.590579, -0.390172,
		0.209236, -0.700815, 0.681967,
		39.513145, 28.558102, 27.999952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614876, 28.755938, 27.791639>,  <39.366680, 29.048672, 27.522575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614876, 28.755938, 27.791639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894493, 28.649109, 28.056971>,  <39.062263, 28.585011, 28.216169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.894493, 28.649109, 28.056971>,  <38.614876, 28.755938, 27.791639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894493, 28.649109, 28.056971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577104, 0.337037, 0.743880,
		-0.422237, -0.902817, 0.081475,
		0.699047, -0.267074, 0.663329,
		39.104206, 28.568987, 28.255970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227188, 28.344261, 28.272930>,  <38.614876, 28.755938, 27.791639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227188, 28.344261, 28.272930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.566166, 28.466591, 28.446507>,  <38.769554, 28.539989, 28.550652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.566166, 28.466591, 28.446507>,  <38.227188, 28.344261, 28.272930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566166, 28.466591, 28.446507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516460, 0.285718, 0.807238,
		0.122889, -0.908205, 0.400077,
		0.847448, 0.305825, 0.433941,
		38.820400, 28.558338, 28.576689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051426, 28.153574, 28.907499>,  <38.227188, 28.344261, 28.272930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051426, 28.153574, 28.907499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330929, 28.439379, 28.921392>,  <38.498631, 28.610863, 28.929729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330929, 28.439379, 28.921392>,  <38.051426, 28.153574, 28.907499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330929, 28.439379, 28.921392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482544, 0.434947, 0.760245,
		0.528098, -0.547988, 0.648707,
		0.698758, 0.714514, 0.034734,
		38.540558, 28.653732, 28.931812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214504, 28.157175, 29.553297>,  <38.051426, 28.153574, 28.907499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214504, 28.157175, 29.553297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374897, 28.508640, 29.449636>,  <38.471134, 28.719521, 29.387440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.374897, 28.508640, 29.449636>,  <38.214504, 28.157175, 29.553297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374897, 28.508640, 29.449636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404639, 0.423681, 0.810409,
		0.821876, -0.220098, 0.525431,
		0.400985, 0.878665, -0.259153,
		38.495193, 28.772240, 29.371891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614399, 28.400064, 30.100702>,  <38.214504, 28.157175, 29.553297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614399, 28.400064, 30.100702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507610, 28.718851, 29.883972>,  <38.443539, 28.910122, 29.753935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507610, 28.718851, 29.883972>,  <38.614399, 28.400064, 30.100702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507610, 28.718851, 29.883972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365530, 0.436477, 0.822116,
		0.891692, 0.417535, 0.174788,
		-0.266971, 0.796964, -0.541825,
		38.427521, 28.957941, 29.721424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989098, 28.951962, 30.416004>,  <38.614399, 28.400064, 30.100702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989098, 28.951962, 30.416004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665627, 29.072279, 30.213789>,  <38.471546, 29.144468, 30.092459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.665627, 29.072279, 30.213789>,  <38.989098, 28.951962, 30.416004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665627, 29.072279, 30.213789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399027, 0.350964, 0.847114,
		0.432231, 0.886763, -0.163791,
		-0.808674, 0.300792, -0.505540,
		38.423023, 29.162516, 30.062126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908192, 29.597683, 30.674685>,  <38.989098, 28.951962, 30.416004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908192, 29.597683, 30.674685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547215, 29.519741, 30.520990>,  <38.330627, 29.472977, 30.428774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.547215, 29.519741, 30.520990>,  <38.908192, 29.597683, 30.674685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547215, 29.519741, 30.520990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430679, 0.385314, 0.816118,
		-0.010973, 0.901978, -0.431642,
		-0.902438, -0.194855, -0.384235,
		38.276482, 29.461285, 30.405720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495373, 30.209314, 30.806372>,  <38.908192, 29.597683, 30.674685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495373, 30.209314, 30.806372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225597, 29.918104, 30.757204>,  <38.063732, 29.743378, 30.727703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.225597, 29.918104, 30.757204>,  <38.495373, 30.209314, 30.806372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225597, 29.918104, 30.757204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534372, 0.366440, 0.761688,
		-0.509485, 0.579398, -0.636178,
		-0.674442, -0.728025, -0.122919,
		38.023266, 29.699697, 30.720329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793777, 30.544090, 30.721537>,  <38.495373, 30.209314, 30.806372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793777, 30.544090, 30.721537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737129, 30.157682, 30.808022>,  <37.703140, 29.925838, 30.859913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.737129, 30.157682, 30.808022>,  <37.793777, 30.544090, 30.721537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737129, 30.157682, 30.808022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617150, 0.256934, 0.743715,
		-0.773995, -0.028107, -0.632567,
		-0.141624, -0.966020, 0.216212,
		37.694641, 29.867876, 30.872885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089294, 30.565804, 30.779188>,  <37.793777, 30.544090, 30.721537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089294, 30.565804, 30.779188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256294, 30.250925, 30.960743>,  <37.356495, 30.061998, 31.069675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.256294, 30.250925, 30.960743>,  <37.089294, 30.565804, 30.779188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256294, 30.250925, 30.960743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502886, 0.215870, 0.836962,
		-0.756836, -0.577684, -0.305746,
		0.417499, -0.787198, 0.453888,
		37.381542, 30.014765, 31.096909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456131, 30.182615, 31.149214>,  <37.089294, 30.565804, 30.779188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456131, 30.182615, 31.149214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779026, 30.010479, 31.310793>,  <36.972763, 29.907196, 31.407742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.779026, 30.010479, 31.310793>,  <36.456131, 30.182615, 31.149214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779026, 30.010479, 31.310793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449355, -0.004348, 0.893343,
		-0.382688, -0.902655, -0.196887,
		0.807236, -0.430343, 0.403949,
		37.021198, 29.881376, 31.431978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284477, 29.625042, 31.537827>,  <36.456131, 30.182615, 31.149214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284477, 29.625042, 31.537827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634968, 29.736038, 31.695421>,  <36.845261, 29.802637, 31.789978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.634968, 29.736038, 31.695421>,  <36.284477, 29.625042, 31.537827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634968, 29.736038, 31.695421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423129, 0.051748, 0.904591,
		0.230628, -0.959334, 0.162757,
		0.876226, 0.277491, 0.393987,
		36.897835, 29.819286, 31.813618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224148, 29.367720, 32.154789>,  <36.284477, 29.625042, 31.537827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224148, 29.367720, 32.154789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518536, 29.629009, 32.225941>,  <36.695168, 29.785784, 32.268631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.518536, 29.629009, 32.225941>,  <36.224148, 29.367720, 32.154789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518536, 29.629009, 32.225941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326237, 0.111962, 0.938634,
		0.593222, -0.748841, 0.295507,
		0.735974, 0.653224, 0.177881,
		36.739326, 29.824976, 32.279305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618179, 29.206587, 32.792465>,  <36.224148, 29.367720, 32.154789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618179, 29.206587, 32.792465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657406, 29.595480, 32.707474>,  <36.680943, 29.828815, 32.656479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.657406, 29.595480, 32.707474>,  <36.618179, 29.206587, 32.792465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657406, 29.595480, 32.707474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396278, 0.233995, 0.887812,
		0.912878, -0.002863, 0.408221,
		0.098064, 0.972233, -0.212474,
		36.686825, 29.887150, 32.643730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896664, 29.445436, 33.311687>,  <36.618179, 29.206587, 32.792465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896664, 29.445436, 33.311687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772308, 29.786928, 33.144596>,  <36.697697, 29.991823, 33.044342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.772308, 29.786928, 33.144596>,  <36.896664, 29.445436, 33.311687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772308, 29.786928, 33.144596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191535, 0.374218, 0.907345,
		0.930949, 0.362089, 0.047181,
		-0.310884, 0.853729, -0.417731,
		36.679043, 30.043047, 33.019276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139977, 30.005892, 33.672867>,  <36.896664, 29.445436, 33.311687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139977, 30.005892, 33.672867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825966, 30.173153, 33.490051>,  <36.637558, 30.273510, 33.380363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.825966, 30.173153, 33.490051>,  <37.139977, 30.005892, 33.672867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825966, 30.173153, 33.490051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288600, 0.405956, 0.867127,
		0.548128, 0.812619, -0.198008,
		-0.785026, 0.418152, -0.457037,
		36.590458, 30.298599, 33.352940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096138, 30.735079, 33.966869>,  <37.139977, 30.005892, 33.672867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096138, 30.735079, 33.966869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748993, 30.653509, 33.785664>,  <36.540707, 30.604567, 33.676941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.748993, 30.653509, 33.785664>,  <37.096138, 30.735079, 33.966869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748993, 30.653509, 33.785664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496411, 0.319924, 0.806985,
		-0.019634, 0.925237, -0.378882,
		-0.867866, -0.203925, -0.453016,
		36.488632, 30.592331, 33.649757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744747, 31.024879, 33.976696>,  <37.096138, 30.735079, 33.966869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744747, 31.024879, 33.976696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947372, 31.283062, 34.205353>,  <38.068947, 31.437971, 34.342548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.947372, 31.283062, 34.205353>,  <37.744747, 31.024879, 33.976696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947372, 31.283062, 34.205353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674178, 0.116777, -0.729279,
		-0.537471, 0.754819, -0.375996,
		0.506566, 0.645455, 0.571646,
		38.099342, 31.476698, 34.376846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990177, 31.479086, 33.565231>,  <37.744747, 31.024879, 33.976696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990177, 31.479086, 33.565231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255489, 31.453291, 33.863464>,  <38.414677, 31.437815, 34.042404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.255489, 31.453291, 33.863464>,  <37.990177, 31.479086, 33.565231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255489, 31.453291, 33.863464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748161, 0.080575, -0.658606,
		-0.017605, 0.994660, 0.101690,
		0.663283, -0.064486, 0.745585,
		38.454475, 31.433945, 34.087139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433342, 31.943193, 33.275368>,  <37.990177, 31.479086, 33.565231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433342, 31.943193, 33.275368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618240, 31.725771, 33.555618>,  <38.729179, 31.595318, 33.723766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.618240, 31.725771, 33.555618>,  <38.433342, 31.943193, 33.275368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618240, 31.725771, 33.555618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801342, -0.082270, -0.592522,
		0.379710, 0.835330, 0.397547,
		0.462245, -0.543558, 0.700624,
		38.756912, 31.562704, 33.765804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127468, 32.206245, 33.172092>,  <38.433342, 31.943193, 33.275368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127468, 32.206245, 33.172092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116501, 31.859798, 33.371727>,  <39.109921, 31.651930, 33.491508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.116501, 31.859798, 33.371727>,  <39.127468, 32.206245, 33.172092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116501, 31.859798, 33.371727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882667, -0.255319, -0.394602,
		0.469198, 0.429706, 0.771496,
		-0.027415, -0.866121, 0.499082,
		39.108276, 31.599962, 33.521450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821835, 32.123917, 33.322895>,  <39.127468, 32.206245, 33.172092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821835, 32.123917, 33.322895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646431, 31.765390, 33.349197>,  <39.541187, 31.550274, 33.364979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.646431, 31.765390, 33.349197>,  <39.821835, 32.123917, 33.322895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646431, 31.765390, 33.349197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830475, -0.432090, -0.351581,
		0.343542, -0.099562, 0.933845,
		-0.438509, -0.896318, 0.065757,
		39.514877, 31.496494, 33.368923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363823, 31.679256, 33.523758>,  <39.821835, 32.123917, 33.322895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363823, 31.679256, 33.523758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089821, 31.422541, 33.385841>,  <39.925419, 31.268511, 33.303093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.089821, 31.422541, 33.385841>,  <40.363823, 31.679256, 33.523758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089821, 31.422541, 33.385841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696359, -0.437666, -0.568799,
		0.214146, -0.629726, 0.746717,
		-0.685000, -0.641789, -0.344791,
		39.884319, 31.230003, 33.282406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700130, 31.013884, 33.590096>,  <40.363823, 31.679256, 33.523758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700130, 31.013884, 33.590096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401718, 30.953400, 33.330688>,  <40.222672, 30.917110, 33.175045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.401718, 30.953400, 33.330688>,  <40.700130, 31.013884, 33.590096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401718, 30.953400, 33.330688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616164, -0.526084, -0.586155,
		-0.252541, -0.836882, 0.485645,
		-0.746033, -0.151209, -0.648514,
		40.177910, 30.908037, 33.136135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693054, 30.256870, 33.393986>,  <40.700130, 31.013884, 33.590096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693054, 30.256870, 33.393986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478886, 30.433521, 33.106014>,  <40.350384, 30.539513, 32.933231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.478886, 30.433521, 33.106014>,  <40.693054, 30.256870, 33.393986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478886, 30.433521, 33.106014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566454, -0.444489, -0.693945,
		-0.626465, -0.779355, -0.012175,
		-0.535417, 0.441628, -0.719926,
		40.318260, 30.566010, 32.890038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644268, 29.751358, 32.915230>,  <40.693054, 30.256870, 33.393986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644268, 29.751358, 32.915230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576122, 30.086119, 32.707165>,  <40.535236, 30.286976, 32.582325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.576122, 30.086119, 32.707165>,  <40.644268, 29.751358, 32.915230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576122, 30.086119, 32.707165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560373, -0.351926, -0.749754,
		-0.810530, -0.419215, -0.409023,
		-0.170362, 0.836903, -0.520163,
		40.525013, 30.337189, 32.551117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576351, 29.490248, 32.254192>,  <40.644268, 29.751358, 32.915230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576351, 29.490248, 32.254192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658569, 29.877417, 32.196404>,  <40.707901, 30.109718, 32.161732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658569, 29.877417, 32.196404>,  <40.576351, 29.490248, 32.254192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658569, 29.877417, 32.196404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505170, -0.231375, -0.831426,
		-0.838184, 0.097916, -0.536526,
		0.205549, 0.967924, -0.144471,
		40.720234, 30.167793, 32.153061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395874, 29.652590, 31.624763>,  <40.576351, 29.490248, 32.254192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395874, 29.652590, 31.624763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681957, 29.913021, 31.726406>,  <40.853607, 30.069281, 31.787392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.681957, 29.913021, 31.726406>,  <40.395874, 29.652590, 31.624763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.681957, 29.913021, 31.726406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509837, -0.237336, -0.826884,
		-0.478059, 0.720948, -0.501690,
		0.715210, 0.651080, 0.254106,
		40.896519, 30.108345, 31.802637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634842, 29.923512, 31.037689>,  <40.395874, 29.652590, 31.624763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634842, 29.923512, 31.037689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936684, 30.048676, 31.268398>,  <41.117786, 30.123774, 31.406824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.936684, 30.048676, 31.268398>,  <40.634842, 29.923512, 31.037689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936684, 30.048676, 31.268398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608862, -0.006138, -0.793253,
		-0.244675, 0.949763, -0.195150,
		0.754600, 0.312908, 0.576773,
		41.163063, 30.142548, 31.441431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940811, 30.571005, 30.776188>,  <40.634842, 29.923512, 31.037689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940811, 30.571005, 30.776188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.206951, 30.360523, 30.988007>,  <41.366634, 30.234234, 31.115097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.206951, 30.360523, 30.988007>,  <40.940811, 30.571005, 30.776188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206951, 30.360523, 30.988007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623195, 0.000953, -0.782066,
		0.411022, 0.850357, 0.328563,
		0.665349, -0.526205, 0.529547,
		41.406555, 30.202662, 31.146870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642258, 30.873169, 30.707146>,  <40.940811, 30.571005, 30.776188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642258, 30.873169, 30.707146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699203, 30.496691, 30.829710>,  <41.733372, 30.270803, 30.903248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.699203, 30.496691, 30.829710>,  <41.642258, 30.873169, 30.707146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699203, 30.496691, 30.829710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717569, -0.115088, -0.686913,
		0.681782, 0.317664, 0.658986,
		0.142366, -0.941193, 0.306410,
		41.741913, 30.214333, 30.921633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293602, 30.779310, 30.469707>,  <41.642258, 30.873169, 30.707146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293602, 30.779310, 30.469707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178650, 30.401102, 30.530893>,  <42.109676, 30.174177, 30.567604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178650, 30.401102, 30.530893>,  <42.293602, 30.779310, 30.469707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178650, 30.401102, 30.530893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695952, -0.315857, -0.644891,
		0.658074, -0.078876, 0.748811,
		-0.287384, -0.945522, 0.152963,
		42.092434, 30.117445, 30.576782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896862, 30.346567, 30.636372>,  <42.293602, 30.779310, 30.469707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896862, 30.346567, 30.636372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.625614, 30.080692, 30.510931>,  <42.462864, 29.921167, 30.435667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.625614, 30.080692, 30.510931>,  <42.896862, 30.346567, 30.636372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625614, 30.080692, 30.510931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680670, -0.407058, -0.609091,
		0.277202, -0.626495, 0.728467,
		-0.678120, -0.664687, -0.313599,
		42.422176, 29.881287, 30.416851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296181, 29.713991, 30.479910>,  <42.896862, 30.346567, 30.636372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296181, 29.713991, 30.479910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.942684, 29.653528, 30.302752>,  <42.730587, 29.617250, 30.196457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.942684, 29.653528, 30.302752>,  <43.296181, 29.713991, 30.479910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942684, 29.653528, 30.302752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458090, -0.472939, -0.752650,
		-0.095693, -0.868032, 0.487199,
		-0.883740, -0.151158, -0.442894,
		42.677563, 29.608181, 30.169884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.218925, 28.934948, 30.400312>,  <43.296181, 29.713991, 30.479910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.218925, 28.934948, 30.400312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.030590, 29.142532, 30.114937>,  <42.917591, 29.267084, 29.943712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.030590, 29.142532, 30.114937>,  <43.218925, 28.934948, 30.400312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030590, 29.142532, 30.114937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489369, -0.519230, -0.700655,
		-0.734052, -0.679026, -0.009493,
		-0.470834, 0.518963, -0.713437,
		42.889339, 29.298222, 29.900906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.911472, 28.404501, 29.897345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910812, 28.753895, 29.702606>,  <42.910416, 28.963531, 29.585764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910812, 28.753895, 29.702606>,  <42.911472, 28.404501, 29.897345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910812, 28.753895, 29.702606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350546, -0.455447, -0.818343,
		-0.936544, -0.172015, -0.305444,
		-0.001654, 0.873486, -0.486846,
		42.910316, 29.015942, 29.556553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678383, 28.193695, 29.099457>,  <42.911472, 28.404501, 29.897345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678383, 28.193695, 29.099457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831833, 28.563036, 29.093046>,  <42.923901, 28.784639, 29.089199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.831833, 28.563036, 29.093046>,  <42.678383, 28.193695, 29.099457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831833, 28.563036, 29.093046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372028, -0.170404, -0.912446,
		-0.845239, 0.344071, -0.408884,
		0.383622, 0.923351, -0.016028,
		42.946918, 28.840042, 29.088238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390060, 28.407541, 28.507698>,  <42.678383, 28.193695, 29.099457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390060, 28.407541, 28.507698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.718380, 28.610699, 28.612261>,  <42.915371, 28.732594, 28.674999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.718380, 28.610699, 28.612261>,  <42.390060, 28.407541, 28.507698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.718380, 28.610699, 28.612261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419700, -0.225790, -0.879131,
		-0.387483, 0.831301, -0.398492,
		0.820798, 0.507895, 0.261407,
		42.964619, 28.763067, 28.690683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446087, 28.772785, 27.963480>,  <42.390060, 28.407541, 28.507698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.446087, 28.772785, 27.963480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800144, 28.786573, 28.149096>,  <43.012577, 28.794847, 28.260466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.800144, 28.786573, 28.149096>,  <42.446087, 28.772785, 27.963480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800144, 28.786573, 28.149096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463696, -0.148546, -0.873453,
		0.038822, 0.988305, -0.147469,
		0.885143, 0.034471, 0.464040,
		43.065689, 28.796915, 28.288307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873058, 29.205763, 27.579231>,  <42.446087, 28.772785, 27.963480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873058, 29.205763, 27.579231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117157, 28.982180, 27.803789>,  <43.263615, 28.848030, 27.938524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.117157, 28.982180, 27.803789>,  <42.873058, 29.205763, 27.579231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.117157, 28.982180, 27.803789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333150, -0.461869, -0.822002,
		0.718758, 0.688651, -0.095636,
		0.610244, -0.558960, 0.561396,
		43.300232, 28.814491, 27.972208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399780, 29.127699, 27.175356>,  <42.873058, 29.205763, 27.579231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399780, 29.127699, 27.175356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.490776, 28.857130, 27.455557>,  <43.545372, 28.694788, 27.623678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.490776, 28.857130, 27.455557>,  <43.399780, 29.127699, 27.175356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490776, 28.857130, 27.455557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313921, -0.630016, -0.710305,
		0.921793, 0.381488, 0.069022,
		0.227488, -0.676422, 0.700502,
		43.559021, 28.654203, 27.665707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178471, 29.072775, 27.233141>,  <43.399780, 29.127699, 27.175356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178471, 29.072775, 27.233141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.975712, 28.750015, 27.354448>,  <43.854057, 28.556360, 27.427233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.975712, 28.750015, 27.354448>,  <44.178471, 29.072775, 27.233141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975712, 28.750015, 27.354448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557819, -0.575272, -0.598247,
		0.657186, -0.134081, 0.741707,
		-0.506897, -0.806898, 0.303268,
		43.823643, 28.507946, 27.445429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.690979, 28.548229, 27.103401>,  <44.178471, 29.072775, 27.233141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.690979, 28.548229, 27.103401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.343239, 28.362211, 27.170282>,  <44.134594, 28.250601, 27.210411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.343239, 28.362211, 27.170282>,  <44.690979, 28.548229, 27.103401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.343239, 28.362211, 27.170282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327411, -0.795425, -0.510001,
		0.370170, -0.388628, 0.843767,
		-0.869354, -0.465046, 0.167202,
		44.082432, 28.222698, 27.220444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.864151, 27.975594, 27.454290>,  <44.690979, 28.548229, 27.103401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.864151, 27.975594, 27.454290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.516682, 27.921934, 27.263536>,  <44.308201, 27.889738, 27.149084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.516682, 27.921934, 27.263536>,  <44.864151, 27.975594, 27.454290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516682, 27.921934, 27.263536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432205, -0.675670, -0.597217,
		-0.242099, -0.724895, 0.644915,
		-0.868670, -0.134150, -0.476882,
		44.256081, 27.881689, 27.120472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891724, 27.274872, 27.363605>,  <44.864151, 27.975594, 27.454290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891724, 27.274872, 27.363605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.615536, 27.387203, 27.096958>,  <44.449821, 27.454603, 26.936970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.615536, 27.387203, 27.096958>,  <44.891724, 27.274872, 27.363605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615536, 27.387203, 27.096958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389228, -0.632536, -0.669627,
		-0.609708, -0.721828, 0.327446,
		-0.690477, 0.280826, -0.666618,
		44.408394, 27.471453, 26.896973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776222, 26.739712, 27.040012>,  <44.891724, 27.274872, 27.363605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776222, 26.739712, 27.040012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.650753, 27.021231, 26.785053>,  <44.575474, 27.190142, 26.632078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.650753, 27.021231, 26.785053>,  <44.776222, 26.739712, 27.040012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650753, 27.021231, 26.785053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480135, -0.461572, -0.745936,
		-0.819195, -0.540016, -0.193137,
		-0.313671, 0.703799, -0.637398,
		44.556652, 27.232370, 26.593834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523426, 26.380690, 26.423140>,  <44.776222, 26.739712, 27.040012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523426, 26.380690, 26.423140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.595196, 26.752573, 26.294487>,  <44.638256, 26.975704, 26.217295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.595196, 26.752573, 26.294487>,  <44.523426, 26.380690, 26.423140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595196, 26.752573, 26.294487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497049, -0.367808, -0.785913,
		-0.848970, -0.018856, -0.528104,
		0.179421, 0.929711, -0.321631,
		44.649021, 27.031487, 26.197998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435707, 26.276989, 25.762665>,  <44.523426, 26.380690, 26.423140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435707, 26.276989, 25.762665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.631584, 26.625288, 25.780560>,  <44.749111, 26.834267, 25.791296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.631584, 26.625288, 25.780560>,  <44.435707, 26.276989, 25.762665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631584, 26.625288, 25.780560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518619, -0.249648, -0.817747,
		-0.700883, 0.423644, -0.573836,
		0.489691, 0.870747, 0.044736,
		44.778492, 26.886513, 25.793980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507622, 26.558506, 24.995472>,  <44.435707, 26.276989, 25.762665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507622, 26.558506, 24.995472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788872, 26.745760, 25.209560>,  <44.957623, 26.858112, 25.338013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.788872, 26.745760, 25.209560>,  <44.507622, 26.558506, 24.995472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788872, 26.745760, 25.209560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559358, 0.100572, -0.822803,
		-0.439009, 0.877916, -0.191139,
		0.703128, 0.468133, 0.535221,
		44.999809, 26.886200, 25.370127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718830, 27.132111, 24.546810>,  <44.507622, 26.558506, 24.995472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718830, 27.132111, 24.546810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.005268, 27.055777, 24.815374>,  <45.177132, 27.009975, 24.976513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.005268, 27.055777, 24.815374>,  <44.718830, 27.132111, 24.546810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005268, 27.055777, 24.815374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663996, -0.110346, -0.739550,
		0.215220, 0.975400, 0.047696,
		0.716094, -0.190836, 0.671410,
		45.220097, 26.998526, 25.016798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298767, 27.590750, 24.410069>,  <44.718830, 27.132111, 24.546810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298767, 27.590750, 24.410069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.446579, 27.278158, 24.611160>,  <45.535267, 27.090603, 24.731815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.446579, 27.278158, 24.611160>,  <45.298767, 27.590750, 24.410069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446579, 27.278158, 24.611160> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671556, -0.149322, -0.725752,
		0.642228, 0.605800, 0.469627,
		0.369534, -0.781479, 0.502727,
		45.557438, 27.043715, 24.761978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009026, 27.772720, 24.614857>,  <45.298767, 27.590750, 24.410069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009026, 27.772720, 24.614857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.009972, 27.373283, 24.593657>,  <46.010540, 27.133621, 24.580936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.009972, 27.373283, 24.593657>,  <46.009026, 27.772720, 24.614857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009972, 27.373283, 24.593657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730919, 0.037896, -0.681411,
		0.682460, -0.037129, 0.729979,
		0.002363, -0.998592, -0.053001,
		46.010681, 27.073706, 24.577757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.649536, 27.632898, 24.470127>,  <46.009026, 27.772720, 24.614857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.649536, 27.632898, 24.470127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471848, 27.289898, 24.366316>,  <46.365234, 27.084097, 24.304029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.471848, 27.289898, 24.366316>,  <46.649536, 27.632898, 24.470127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.471848, 27.289898, 24.366316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618181, -0.083697, -0.781568,
		0.648474, -0.507627, 0.567271,
		-0.444224, -0.857502, -0.259530,
		46.338581, 27.032648, 24.288456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.239693, 27.001209, 24.339630>,  <46.649536, 27.632898, 24.470127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.239693, 27.001209, 24.339630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.905628, 26.904940, 24.141811>,  <46.705189, 26.847178, 24.023121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.905628, 26.904940, 24.141811>,  <47.239693, 27.001209, 24.339630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.905628, 26.904940, 24.141811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541601, -0.203337, -0.815673,
		0.095753, -0.949068, 0.300170,
		-0.835165, -0.240675, -0.494546,
		46.655079, 26.832737, 23.993448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552097, 26.565220, 23.815443>,  <47.239693, 27.001209, 24.339630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552097, 26.565220, 23.815443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.176231, 26.638815, 23.700079>,  <46.950710, 26.682972, 23.630859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.176231, 26.638815, 23.700079>,  <47.552097, 26.565220, 23.815443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176231, 26.638815, 23.700079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269846, -0.119565, -0.955451,
		-0.210277, -0.975629, 0.062702,
		-0.939663, 0.183989, -0.288411,
		46.894333, 26.694012, 23.613556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.339027, 25.961777, 23.377182>,  <47.552097, 26.565220, 23.815443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.339027, 25.961777, 23.377182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.105129, 26.272392, 23.283318>,  <46.964790, 26.458761, 23.226999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.105129, 26.272392, 23.283318>,  <47.339027, 25.961777, 23.377182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.105129, 26.272392, 23.283318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275755, -0.081772, -0.957743,
		-0.762913, -0.624741, -0.166319,
		-0.584741, 0.776539, -0.234660,
		46.929707, 26.505354, 23.212919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.856274, 25.814983, 22.735367>,  <47.339027, 25.961777, 23.377182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.856274, 25.814983, 22.735367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.872253, 26.214661, 22.737179>,  <46.881840, 26.454466, 22.738266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.872253, 26.214661, 22.737179>,  <46.856274, 25.814983, 22.735367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872253, 26.214661, 22.737179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152064, -0.001599, -0.988369,
		-0.987563, 0.040173, -0.152005,
		0.039949, 0.999191, 0.004530,
		46.884239, 26.514418, 22.738537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384937, 26.031378, 22.316475>,  <46.856274, 25.814983, 22.735367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384937, 26.031378, 22.316475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.637978, 26.340714, 22.333281>,  <46.789803, 26.526314, 22.343365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.637978, 26.340714, 22.333281>,  <46.384937, 26.031378, 22.316475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.637978, 26.340714, 22.333281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036785, 0.024184, -0.999031,
		-0.773605, 0.633532, -0.013149,
		0.632600, 0.773338, 0.042013,
		46.827759, 26.572716, 22.345884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185032, 26.451017, 21.774206>,  <46.384937, 26.031378, 22.316475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185032, 26.451017, 21.774206> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.540016, 26.626369, 21.831116>,  <46.753006, 26.731581, 21.865261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.540016, 26.626369, 21.831116>,  <46.185032, 26.451017, 21.774206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540016, 26.626369, 21.831116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063837, 0.188804, -0.979938,
		-0.456450, 0.878735, 0.139570,
		0.887456, 0.438382, 0.142275,
		46.806252, 26.757885, 21.873798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.185863, 27.259670, 21.820419>,  <46.185032, 26.451017, 21.774206>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.185863, 27.259670, 21.820419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943562, 27.431974, 21.552837>,  <45.798180, 27.535357, 21.392288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.943562, 27.431974, 21.552837>,  <46.185863, 27.259670, 21.820419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.943562, 27.431974, 21.552837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720132, 0.060688, 0.691178,
		0.338329, 0.900424, 0.273442,
		-0.605758, 0.430760, -0.668957,
		45.761833, 27.561203, 21.352150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888721, 28.004492, 22.067852>,  <46.185863, 27.259670, 21.820419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888721, 28.004492, 22.067852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.641476, 27.858082, 21.789583>,  <45.493130, 27.770235, 21.622622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.641476, 27.858082, 21.789583>,  <45.888721, 28.004492, 22.067852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.641476, 27.858082, 21.789583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758784, 0.046586, 0.649674,
		-0.205389, 0.929438, -0.306531,
		-0.618112, -0.366027, -0.695674,
		45.456043, 27.748274, 21.580881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263981, 28.295998, 22.239899>,  <45.888721, 28.004492, 22.067852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263981, 28.295998, 22.239899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.138218, 28.025587, 21.973326>,  <45.062759, 27.863340, 21.813381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.138218, 28.025587, 21.973326>,  <45.263981, 28.295998, 22.239899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138218, 28.025587, 21.973326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894879, -0.023185, 0.445707,
		-0.316762, 0.736511, -0.597674,
		-0.314411, -0.676029, -0.666432,
		45.043896, 27.822779, 21.773396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508797, 28.428925, 22.111984>,  <45.263981, 28.295998, 22.239899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508797, 28.428925, 22.111984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.561668, 28.047218, 22.004726>,  <44.593391, 27.818193, 21.940372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.561668, 28.047218, 22.004726>,  <44.508797, 28.428925, 22.111984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.561668, 28.047218, 22.004726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828438, -0.254890, 0.498720,
		-0.544260, 0.156220, -0.824243,
		0.132181, -0.954268, -0.268145,
		44.601322, 27.760939, 21.924282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911266, 28.154448, 21.823223>,  <44.508797, 28.428925, 22.111984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911266, 28.154448, 21.823223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.124084, 27.843105, 21.956545>,  <44.251774, 27.656300, 22.036537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.124084, 27.843105, 21.956545>,  <43.911266, 28.154448, 21.823223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.124084, 27.843105, 21.956545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701474, -0.184735, 0.688337,
		-0.474199, -0.600027, -0.644284,
		0.532043, -0.778357, 0.333302,
		44.283699, 27.609598, 22.056536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.399685, 27.525097, 21.848770>,  <43.911266, 28.154448, 21.823223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.399685, 27.525097, 21.848770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703953, 27.405865, 22.079433>,  <43.886513, 27.334326, 22.217831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.703953, 27.405865, 22.079433>,  <43.399685, 27.525097, 21.848770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703953, 27.405865, 22.079433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635530, -0.160996, 0.755104,
		-0.132236, -0.940868, -0.311898,
		0.760668, -0.298073, 0.576660,
		43.932152, 27.316441, 22.252430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161182, 26.843388, 22.211582>,  <43.399685, 27.525097, 21.848770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161182, 26.843388, 22.211582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458221, 26.983505, 22.439913>,  <43.636444, 27.067575, 22.576910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.458221, 26.983505, 22.439913>,  <43.161182, 26.843388, 22.211582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458221, 26.983505, 22.439913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532462, -0.208190, 0.820452,
		0.406241, -0.913208, 0.031918,
		0.742598, 0.350296, 0.570824,
		43.681000, 27.088594, 22.611160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167892, 26.388784, 22.726061>,  <43.161182, 26.843388, 22.211582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167892, 26.388784, 22.726061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.343513, 26.720730, 22.863791>,  <43.448887, 26.919897, 22.946428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.343513, 26.720730, 22.863791>,  <43.167892, 26.388784, 22.726061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343513, 26.720730, 22.863791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387225, -0.171037, 0.905982,
		0.810734, -0.531104, 0.246250,
		0.439053, 0.829865, 0.344322,
		43.475231, 26.969688, 22.967087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.474449, 26.197916, 23.411810>,  <43.167892, 26.388784, 22.726061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.474449, 26.197916, 23.411810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429520, 26.595358, 23.407141>,  <43.402561, 26.833822, 23.404339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.429520, 26.595358, 23.407141>,  <43.474449, 26.197916, 23.411810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429520, 26.595358, 23.407141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239439, -0.015663, 0.970785,
		0.964392, 0.111839, 0.239667,
		-0.112326, 0.993603, -0.011674,
		43.395821, 26.893438, 23.403639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782677, 26.477036, 24.031593>,  <43.474449, 26.197916, 23.411810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782677, 26.477036, 24.031593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.561127, 26.779825, 23.892908>,  <43.428196, 26.961500, 23.809696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.561127, 26.779825, 23.892908>,  <43.782677, 26.477036, 24.031593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.561127, 26.779825, 23.892908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434719, 0.092235, 0.895831,
		0.710102, 0.646900, 0.277986,
		-0.553873, 0.756977, -0.346716,
		43.394966, 27.006918, 23.788893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948647, 27.052103, 24.487558>,  <43.782677, 26.477036, 24.031593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948647, 27.052103, 24.487558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596458, 27.103312, 24.304960>,  <43.385147, 27.134037, 24.195402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.596458, 27.103312, 24.304960>,  <43.948647, 27.052103, 24.487558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.596458, 27.103312, 24.304960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432034, 0.179875, 0.883737,
		0.195247, 0.975323, -0.103065,
		-0.880468, 0.128019, -0.456493,
		43.332317, 27.141718, 24.168013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682442, 27.671295, 24.828583>,  <43.948647, 27.052103, 24.487558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682442, 27.671295, 24.828583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.364616, 27.482391, 24.675934>,  <43.173920, 27.369049, 24.584345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.364616, 27.482391, 24.675934>,  <43.682442, 27.671295, 24.828583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364616, 27.482391, 24.675934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466084, 0.071582, 0.881840,
		-0.389140, 0.878548, -0.276990,
		-0.794566, -0.472260, -0.381622,
		43.126247, 27.340714, 24.561447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155945, 28.084745, 24.987999>,  <43.682442, 27.671295, 24.828583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155945, 28.084745, 24.987999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953312, 27.748232, 24.912504>,  <42.831734, 27.546324, 24.867208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.953312, 27.748232, 24.912504>,  <43.155945, 28.084745, 24.987999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953312, 27.748232, 24.912504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437396, 0.062116, 0.897121,
		-0.743008, 0.537016, -0.399440,
		-0.506580, -0.841282, -0.188736,
		42.801338, 27.495848, 24.855883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414047, 28.263672, 25.075363>,  <43.155945, 28.084745, 24.987999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414047, 28.263672, 25.075363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443264, 27.865669, 25.102566>,  <42.460793, 27.626867, 25.118887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.443264, 27.865669, 25.102566>,  <42.414047, 28.263672, 25.075363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.443264, 27.865669, 25.102566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705258, -0.003315, 0.708943,
		-0.705179, -0.099743, -0.701979,
		0.073040, -0.995008, 0.068007,
		42.465176, 27.567167, 25.122969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713661, 28.020189, 25.088802>,  <42.414047, 28.263672, 25.075363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713661, 28.020189, 25.088802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945580, 27.738232, 25.252245>,  <42.084732, 27.569057, 25.350309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.945580, 27.738232, 25.252245>,  <41.713661, 28.020189, 25.088802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945580, 27.738232, 25.252245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683020, -0.147089, 0.715436,
		-0.444208, -0.693891, -0.566740,
		0.579796, -0.704897, 0.408603,
		42.119518, 27.526762, 25.374826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282917, 27.458275, 25.162386>,  <41.713661, 28.020189, 25.088802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282917, 27.458275, 25.162386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581432, 27.397831, 25.421682>,  <41.760540, 27.361565, 25.577261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.581432, 27.397831, 25.421682>,  <41.282917, 27.458275, 25.162386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581432, 27.397831, 25.421682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640981, -0.425680, 0.638701,
		0.179431, -0.892167, -0.414539,
		0.746289, -0.151109, 0.648243,
		41.805321, 27.352499, 25.616156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071404, 26.859259, 25.598747>,  <41.282917, 27.458275, 25.162386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071404, 26.859259, 25.598747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.358963, 27.023100, 25.823393>,  <41.531498, 27.121405, 25.958181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.358963, 27.023100, 25.823393>,  <41.071404, 26.859259, 25.598747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358963, 27.023100, 25.823393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543371, -0.172741, 0.821528,
		0.433513, -0.895761, 0.098382,
		0.718898, 0.409601, 0.561616,
		41.574631, 27.145981, 25.991879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109097, 26.453459, 26.269297>,  <41.071404, 26.859259, 25.598747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109097, 26.453459, 26.269297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282120, 26.806757, 26.341703>,  <41.385933, 27.018736, 26.385147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.282120, 26.806757, 26.341703>,  <41.109097, 26.453459, 26.269297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.282120, 26.806757, 26.341703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552104, 0.100760, 0.827664,
		0.712792, -0.457955, 0.531229,
		0.432560, 0.883247, 0.181018,
		41.411888, 27.071732, 26.396009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214027, 26.482416, 26.995771>,  <41.109097, 26.453459, 26.269297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214027, 26.482416, 26.995771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231094, 26.869541, 26.896563>,  <41.241333, 27.101816, 26.837036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.231094, 26.869541, 26.896563>,  <41.214027, 26.482416, 26.995771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231094, 26.869541, 26.896563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683518, 0.209335, 0.699273,
		0.728686, 0.139696, 0.670449,
		0.042663, 0.967814, -0.248024,
		41.243893, 27.159885, 26.822155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290863, 26.847376, 27.617212>,  <41.214027, 26.482416, 26.995771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290863, 26.847376, 27.617212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136185, 27.094101, 27.342985>,  <41.043377, 27.242136, 27.178448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.136185, 27.094101, 27.342985>,  <41.290863, 26.847376, 27.617212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136185, 27.094101, 27.342985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589405, 0.406448, 0.698142,
		0.709271, 0.674049, 0.206380,
		-0.386699, 0.616813, -0.685569,
		41.020176, 27.279144, 27.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.099586, 30.498102, 32.180046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798206, 30.386738, 31.941784>,  <41.617378, 30.319920, 31.798826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798206, 30.386738, 31.941784>,  <42.099586, 30.498102, 32.180046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798206, 30.386738, 31.941784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654890, 0.398523, 0.642105,
		0.058614, 0.873881, -0.482594,
		-0.753448, -0.278410, -0.595655,
		41.572170, 30.303215, 31.763088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701550, 31.031038, 32.141727>,  <42.099586, 30.498102, 32.180046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.701550, 31.031038, 32.141727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449966, 30.739965, 32.032261>,  <41.299015, 30.565323, 31.966581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.449966, 30.739965, 32.032261>,  <41.701550, 31.031038, 32.141727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449966, 30.739965, 32.032261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656026, 0.307871, 0.689090,
		-0.417184, 0.612940, -0.671015,
		-0.628958, -0.727681, -0.273666,
		41.261280, 30.521662, 31.950161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045780, 31.453480, 32.122997>,  <41.701550, 31.031038, 32.141727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045780, 31.453480, 32.122997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953663, 31.064968, 32.146931>,  <40.898392, 30.831861, 32.161289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953663, 31.064968, 32.146931>,  <41.045780, 31.453480, 32.122997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953663, 31.064968, 32.146931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780476, 0.221076, 0.584793,
		-0.581225, 0.087975, -0.808973,
		-0.230292, -0.971281, 0.059832,
		40.884575, 30.773584, 32.164879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341820, 31.374903, 31.844904>,  <41.045780, 31.453480, 32.122997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341820, 31.374903, 31.844904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410442, 31.067797, 32.091839>,  <40.451614, 30.883533, 32.240002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.410442, 31.067797, 32.091839>,  <40.341820, 31.374903, 31.844904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410442, 31.067797, 32.091839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821271, 0.234648, 0.520053,
		-0.544135, -0.596221, -0.590286,
		0.171557, -0.767764, 0.617339,
		40.461910, 30.837467, 32.277042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753113, 31.318415, 31.962908>,  <40.341820, 31.374903, 31.844904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753113, 31.318415, 31.962908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925591, 31.085184, 32.238327>,  <40.029076, 30.945246, 32.403580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925591, 31.085184, 32.238327>,  <39.753113, 31.318415, 31.962908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925591, 31.085184, 32.238327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814288, 0.077196, 0.575304,
		-0.388599, -0.808742, -0.441505,
		0.431190, -0.583075, 0.688548,
		40.054947, 30.910261, 32.444893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271744, 30.784302, 32.192215>,  <39.753113, 31.318415, 31.962908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271744, 30.784302, 32.192215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543007, 30.834871, 32.481800>,  <39.705765, 30.865213, 32.655552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.543007, 30.834871, 32.481800>,  <39.271744, 30.784302, 32.192215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543007, 30.834871, 32.481800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733948, 0.065972, 0.675995,
		0.037702, -0.989780, 0.137529,
		0.678159, 0.126425, 0.723959,
		39.746456, 30.872799, 32.698986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113884, 30.344398, 32.698227>,  <39.271744, 30.784302, 32.192215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113884, 30.344398, 32.698227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342484, 30.605202, 32.897533>,  <39.479645, 30.761684, 33.017117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342484, 30.605202, 32.897533>,  <39.113884, 30.344398, 32.698227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342484, 30.605202, 32.897533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689150, 0.051717, 0.722770,
		0.445483, -0.756446, 0.478888,
		0.571504, 0.652008, 0.498267,
		39.513935, 30.800804, 33.047012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918819, 30.254229, 33.432590>,  <39.113884, 30.344398, 32.698227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918819, 30.254229, 33.432590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104725, 30.608400, 33.434155>,  <39.216267, 30.820904, 33.435093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.104725, 30.608400, 33.434155>,  <38.918819, 30.254229, 33.432590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104725, 30.608400, 33.434155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591263, 0.307060, 0.745736,
		0.659095, -0.348901, 0.666230,
		0.464760, 0.885428, 0.003911,
		39.244152, 30.874029, 33.435329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059414, 30.396330, 34.122059>,  <38.918819, 30.254229, 33.432590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059414, 30.396330, 34.122059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084187, 30.753368, 33.943424>,  <39.099049, 30.967590, 33.836243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.084187, 30.753368, 33.943424>,  <39.059414, 30.396330, 34.122059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084187, 30.753368, 33.943424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534913, 0.407442, 0.740175,
		0.842635, 0.193046, 0.502693,
		0.061930, 0.892594, -0.446587,
		39.102764, 31.021147, 33.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466133, 30.908293, 34.608112>,  <39.059414, 30.396330, 34.122059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466133, 30.908293, 34.608112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.235157, 31.108986, 34.350483>,  <39.096573, 31.229403, 34.195908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.235157, 31.108986, 34.350483>,  <39.466133, 30.908293, 34.608112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235157, 31.108986, 34.350483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518097, 0.384501, 0.764025,
		0.630982, 0.774871, 0.037920,
		-0.577440, 0.501732, -0.644071,
		39.061924, 31.259506, 34.157261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439301, 31.612000, 34.850113>,  <39.466133, 30.908293, 34.608112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439301, 31.612000, 34.850113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115097, 31.538988, 34.627487>,  <38.920574, 31.495182, 34.493912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.115097, 31.538988, 34.627487>,  <39.439301, 31.612000, 34.850113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115097, 31.538988, 34.627487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575038, 0.428684, 0.696822,
		0.111399, 0.884824, -0.452412,
		-0.810507, -0.182529, -0.556563,
		38.871944, 31.484230, 34.460518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048222, 32.242104, 34.871441>,  <39.439301, 31.612000, 34.850113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048222, 32.242104, 34.871441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835190, 31.907877, 34.817509>,  <38.707371, 31.707340, 34.785149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.835190, 31.907877, 34.817509>,  <39.048222, 32.242104, 34.871441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835190, 31.907877, 34.817509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652297, 0.303703, 0.694458,
		-0.539320, 0.457806, -0.706787,
		-0.532580, -0.835570, -0.134833,
		38.675415, 31.657206, 34.777058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873730, 32.847279, 34.700211>,  <39.048222, 32.242104, 34.871441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873730, 32.847279, 34.700211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.703686, 32.654301, 35.006554>,  <38.601662, 32.538513, 35.190357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.703686, 32.654301, 35.006554>,  <38.873730, 32.847279, 34.700211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703686, 32.654301, 35.006554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779601, -0.234751, -0.580616,
		0.459898, -0.843885, -0.276318,
		-0.425107, -0.482442, 0.765855,
		38.576153, 32.509567, 35.236309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393478, 33.192627, 34.101982>,  <38.873730, 32.847279, 34.700211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393478, 33.192627, 34.101982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128471, 33.446796, 33.943336>,  <37.969467, 33.599297, 33.848148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128471, 33.446796, 33.943336>,  <38.393478, 33.192627, 34.101982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128471, 33.446796, 33.943336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641790, 0.208530, -0.737984,
		-0.386228, -0.743472, -0.545965,
		-0.662521, 0.635425, -0.396613,
		37.929714, 33.637424, 33.824352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223690, 33.070988, 33.460972>,  <38.393478, 33.192627, 34.101982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223690, 33.070988, 33.460972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114750, 33.455708, 33.472023>,  <38.049385, 33.686539, 33.478653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.114750, 33.455708, 33.472023>,  <38.223690, 33.070988, 33.460972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114750, 33.455708, 33.472023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450373, 0.152801, -0.879668,
		-0.850289, -0.227131, -0.474784,
		-0.272348, 0.961802, 0.027631,
		38.033047, 33.744247, 33.480312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993584, 33.189857, 32.824291>,  <38.223690, 33.070988, 33.460972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993584, 33.189857, 32.824291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005955, 33.577202, 32.923340>,  <38.013378, 33.809608, 32.982769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.005955, 33.577202, 32.923340>,  <37.993584, 33.189857, 32.824291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005955, 33.577202, 32.923340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350716, 0.221475, -0.909916,
		-0.935971, 0.114984, -0.332771,
		0.030925, 0.968363, 0.247621,
		38.015232, 33.867710, 32.997627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776588, 33.574825, 32.182747>,  <37.993584, 33.189857, 32.824291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776588, 33.574825, 32.182747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003212, 33.807739, 32.415966>,  <38.139187, 33.947487, 32.555897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.003212, 33.807739, 32.415966>,  <37.776588, 33.574825, 32.182747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003212, 33.807739, 32.415966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456520, 0.367252, -0.810380,
		-0.686000, 0.725306, -0.057754,
		0.566563, 0.582286, 0.583051,
		38.173180, 33.982426, 32.590881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760212, 34.312988, 31.886513>,  <37.776588, 33.574825, 32.182747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760212, 34.312988, 31.886513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081062, 34.271606, 32.121761>,  <38.273575, 34.246777, 32.262909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.081062, 34.271606, 32.121761>,  <37.760212, 34.312988, 31.886513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081062, 34.271606, 32.121761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581814, 0.357190, -0.730690,
		-0.134476, 0.928285, 0.346704,
		0.802128, -0.103457, 0.588122,
		38.321701, 34.240570, 32.298199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290646, 34.864258, 31.641121>,  <37.760212, 34.312988, 31.886513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290646, 34.864258, 31.641121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472416, 34.579437, 31.855213>,  <38.581478, 34.408543, 31.983667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.472416, 34.579437, 31.855213>,  <38.290646, 34.864258, 31.641121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472416, 34.579437, 31.855213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719743, -0.060516, -0.691598,
		0.524846, 0.699510, 0.484997,
		0.454430, -0.712055, 0.535230,
		38.608746, 34.365822, 32.015781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970062, 35.011200, 31.456303>,  <38.290646, 34.864258, 31.641121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970062, 35.011200, 31.456303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997509, 34.644169, 31.612938>,  <39.013977, 34.423950, 31.706919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.997509, 34.644169, 31.612938>,  <38.970062, 35.011200, 31.456303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997509, 34.644169, 31.612938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705063, -0.233095, -0.669741,
		0.705817, 0.322051, 0.630956,
		0.068618, -0.917578, 0.391589,
		39.018093, 34.368896, 31.730415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706978, 34.839851, 31.609156>,  <38.970062, 35.011200, 31.456303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706978, 34.839851, 31.609156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522171, 34.485256, 31.619642>,  <39.411289, 34.272499, 31.625935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.522171, 34.485256, 31.619642>,  <39.706978, 34.839851, 31.609156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522171, 34.485256, 31.619642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705287, -0.385179, -0.595153,
		0.537693, -0.256478, 0.803184,
		-0.462013, -0.886486, 0.026217,
		39.383568, 34.219311, 31.627508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211182, 34.341343, 31.769239>,  <39.706978, 34.839851, 31.609156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211182, 34.341343, 31.769239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910458, 34.159222, 31.578461>,  <39.730022, 34.049950, 31.463993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910458, 34.159222, 31.578461>,  <40.211182, 34.341343, 31.769239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910458, 34.159222, 31.578461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630101, -0.282937, -0.723132,
		0.194298, -0.844184, 0.499602,
		-0.751812, -0.455303, -0.476947,
		39.684914, 34.022633, 31.435377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494530, 33.729374, 31.531017>,  <40.211182, 34.341343, 31.769239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494530, 33.729374, 31.531017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165310, 33.746418, 31.304468>,  <39.967777, 33.756645, 31.168539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165310, 33.746418, 31.304468>,  <40.494530, 33.729374, 31.531017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165310, 33.746418, 31.304468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517740, -0.353722, -0.778990,
		-0.233533, -0.934379, 0.269067,
		-0.823048, 0.042613, -0.566372,
		39.918396, 33.759201, 31.134556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369732, 33.048309, 31.277712>,  <40.494530, 33.729374, 31.531017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369732, 33.048309, 31.277712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176594, 33.300953, 31.035082>,  <40.060711, 33.452538, 30.889503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.176594, 33.300953, 31.035082>,  <40.369732, 33.048309, 31.277712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176594, 33.300953, 31.035082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481181, -0.387375, -0.786388,
		-0.731660, -0.671575, -0.116875,
		-0.482844, 0.631607, -0.606576,
		40.031742, 33.490437, 30.853109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125324, 32.621529, 30.743153>,  <40.369732, 33.048309, 31.277712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125324, 32.621529, 30.743153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100670, 32.987621, 30.583878>,  <40.085876, 33.207275, 30.488312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.100670, 32.987621, 30.583878>,  <40.125324, 32.621529, 30.743153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.100670, 32.987621, 30.583878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362636, -0.351148, -0.863244,
		-0.929890, -0.197604, -0.310252,
		-0.061636, 0.915231, -0.398187,
		40.082180, 33.262192, 30.464422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806469, 32.515297, 30.116442>,  <40.125324, 32.621529, 30.743153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806469, 32.515297, 30.116442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962807, 32.880405, 30.068966>,  <40.056610, 33.099472, 30.040480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.962807, 32.880405, 30.068966>,  <39.806469, 32.515297, 30.116442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962807, 32.880405, 30.068966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415349, -0.289966, -0.862209,
		-0.821416, 0.287692, -0.492451,
		0.390845, 0.912772, -0.118690,
		40.080059, 33.154236, 30.033360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553993, 32.883644, 29.373329>,  <39.806469, 32.515297, 30.116442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553993, 32.883644, 29.373329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895515, 33.018227, 29.532230>,  <40.100430, 33.098976, 29.627571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895515, 33.018227, 29.532230>,  <39.553993, 32.883644, 29.373329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895515, 33.018227, 29.532230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498610, -0.309109, -0.809839,
		-0.149683, 0.889520, -0.431681,
		0.853805, 0.336460, 0.397255,
		40.151657, 33.119164, 29.651407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933475, 33.253326, 28.831770>,  <39.553993, 32.883644, 29.373329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933475, 33.253326, 28.831770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215538, 33.170330, 29.102976>,  <40.384777, 33.120533, 29.265699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.215538, 33.170330, 29.102976>,  <39.933475, 33.253326, 28.831770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215538, 33.170330, 29.102976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579791, -0.381719, -0.719815,
		0.408163, 0.900689, -0.148873,
		0.705157, -0.207487, 0.678014,
		40.427086, 33.108086, 29.306379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837593, 33.939247, 28.633131>,  <39.933475, 33.253326, 28.831770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837593, 33.939247, 28.633131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675022, 34.164410, 28.345255>,  <39.577480, 34.299507, 28.172529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.675022, 34.164410, 28.345255>,  <39.837593, 33.939247, 28.633131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675022, 34.164410, 28.345255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596165, 0.433525, 0.675753,
		0.692390, 0.703698, 0.159390,
		-0.406427, 0.562908, -0.719689,
		39.553093, 34.333282, 28.129349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827232, 34.637608, 28.784660>,  <39.837593, 33.939247, 28.633131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827232, 34.637608, 28.784660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527519, 34.608097, 28.521412>,  <39.347691, 34.590389, 28.363462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.527519, 34.608097, 28.521412>,  <39.827232, 34.637608, 28.784660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527519, 34.608097, 28.521412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639981, 0.336183, 0.690945,
		0.170271, 0.938902, -0.299116,
		-0.749287, -0.073781, -0.658122,
		39.302734, 34.585964, 28.323975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490158, 35.216991, 28.827864>,  <39.827232, 34.637608, 28.784660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490158, 35.216991, 28.827864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229298, 34.973160, 28.647589>,  <39.072781, 34.826862, 28.539425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.229298, 34.973160, 28.647589>,  <39.490158, 35.216991, 28.827864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229298, 34.973160, 28.647589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687496, 0.225042, 0.690438,
		-0.319452, 0.760113, -0.565843,
		-0.652150, -0.609577, -0.450685,
		39.033653, 34.790287, 28.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806324, 35.666183, 28.820276>,  <39.490158, 35.216991, 28.827864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806324, 35.666183, 28.820276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734909, 35.278278, 28.753717>,  <38.692059, 35.045536, 28.713783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.734909, 35.278278, 28.753717>,  <38.806324, 35.666183, 28.820276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734909, 35.278278, 28.753717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889891, 0.087000, 0.447799,
		-0.419782, 0.228024, -0.878515,
		-0.178540, -0.969761, -0.166396,
		38.681347, 34.987350, 28.703798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146980, 35.595379, 28.495247>,  <38.806324, 35.666183, 28.820276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146980, 35.595379, 28.495247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202065, 35.243793, 28.677877>,  <38.235115, 35.032845, 28.787457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202065, 35.243793, 28.677877>,  <38.146980, 35.595379, 28.495247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202065, 35.243793, 28.677877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927948, 0.046697, 0.369772,
		-0.346336, -0.474601, -0.809200,
		0.137707, -0.878962, 0.456578,
		38.243378, 34.980106, 28.814852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467258, 35.324501, 28.543419>,  <38.146980, 35.595379, 28.495247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467258, 35.324501, 28.543419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658897, 35.088051, 28.802967>,  <37.773880, 34.946182, 28.958696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.658897, 35.088051, 28.802967>,  <37.467258, 35.324501, 28.543419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658897, 35.088051, 28.802967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771882, 0.068244, 0.632092,
		-0.417928, -0.803686, -0.423585,
		0.479097, -0.591127, 0.648872,
		37.802628, 34.910713, 28.997629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970989, 34.902260, 28.699890>,  <37.467258, 35.324501, 28.543419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970989, 34.902260, 28.699890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245224, 34.871342, 28.989441>,  <37.409763, 34.852791, 29.163172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.245224, 34.871342, 28.989441>,  <36.970989, 34.902260, 28.699890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245224, 34.871342, 28.989441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725671, 0.006741, 0.688009,
		-0.058058, -0.996986, -0.051468,
		0.685588, -0.077293, 0.723875,
		37.450901, 34.848156, 29.206604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581337, 34.518597, 29.207224>,  <36.970989, 34.902260, 28.699890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581337, 34.518597, 29.207224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908482, 34.658741, 29.389803>,  <37.104771, 34.742828, 29.499352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.908482, 34.658741, 29.389803>,  <36.581337, 34.518597, 29.207224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.908482, 34.658741, 29.389803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486757, -0.001777, 0.873536,
		0.306862, -0.936614, 0.169086,
		0.817865, 0.350359, 0.456449,
		37.153843, 34.763847, 29.526737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766548, 34.115307, 29.965219>,  <36.581337, 34.518597, 29.207224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766548, 34.115307, 29.965219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907047, 34.489807, 29.968088>,  <36.991348, 34.714508, 29.969809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.907047, 34.489807, 29.968088>,  <36.766548, 34.115307, 29.965219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907047, 34.489807, 29.968088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433327, 0.155772, 0.887673,
		0.829969, -0.314904, 0.460419,
		0.351252, 0.936254, 0.007171,
		37.012424, 34.770683, 29.970240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029861, 34.244236, 30.682289>,  <36.766548, 34.115307, 29.965219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029861, 34.244236, 30.682289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994202, 34.611755, 30.528482>,  <36.972805, 34.832268, 30.436197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.994202, 34.611755, 30.528482>,  <37.029861, 34.244236, 30.682289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994202, 34.611755, 30.528482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553227, 0.275348, 0.786209,
		0.828246, 0.282819, 0.483758,
		-0.089153, 0.918802, -0.384519,
		36.967457, 34.887398, 30.413126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096855, 34.671150, 31.300196>,  <37.029861, 34.244236, 30.682289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096855, 34.671150, 31.300196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918533, 34.887234, 31.014696>,  <36.811539, 35.016884, 30.843397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.918533, 34.887234, 31.014696>,  <37.096855, 34.671150, 31.300196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918533, 34.887234, 31.014696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681012, 0.312797, 0.662103,
		0.580930, 0.781239, 0.228441,
		-0.445805, 0.540206, -0.713747,
		36.784790, 35.049297, 30.800571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094185, 35.412003, 31.529140>,  <37.096855, 34.671150, 31.300196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094185, 35.412003, 31.529140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812580, 35.399059, 31.245361>,  <36.643616, 35.391293, 31.075094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.812580, 35.399059, 31.245361>,  <37.094185, 35.412003, 31.529140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812580, 35.399059, 31.245361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692761, 0.251214, 0.675999,
		0.156350, 0.967391, -0.199274,
		-0.704015, -0.032357, -0.709448,
		36.601376, 35.389351, 31.032528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<42.590431, 34.089920, 26.138315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308487, 33.963966, 25.884064>,  <42.139320, 33.888393, 25.731514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308487, 33.963966, 25.884064>,  <42.590431, 34.089920, 26.138315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308487, 33.963966, 25.884064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707300, 0.243941, 0.663490,
		-0.053869, 0.917245, -0.394663,
		-0.704858, -0.314887, -0.635627,
		42.097031, 33.869499, 25.693377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249729, 34.741478, 25.983784>,  <42.590431, 34.089920, 26.138315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249729, 34.741478, 25.983784> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003513, 34.434067, 25.913960>,  <41.855785, 34.249619, 25.872065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003513, 34.434067, 25.913960>,  <42.249729, 34.741478, 25.983784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003513, 34.434067, 25.913960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671580, 0.395591, 0.626489,
		-0.412420, 0.502862, -0.759631,
		-0.615541, -0.768529, -0.174563,
		41.818851, 34.203506, 25.861591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580173, 35.071331, 25.974195>,  <42.249729, 34.741478, 25.983784>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580173, 35.071331, 25.974195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521061, 34.677326, 26.009764>,  <41.485596, 34.440922, 26.031105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521061, 34.677326, 26.009764>,  <41.580173, 35.071331, 25.974195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521061, 34.677326, 26.009764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705194, 0.167979, 0.688829,
		-0.693443, 0.039089, -0.719450,
		-0.147778, -0.985016, 0.088919,
		41.476727, 34.381821, 26.036440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.841152, 35.079430, 25.971928>,  <41.580173, 35.071331, 25.974195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.841152, 35.079430, 25.971928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968029, 34.726139, 26.110083>,  <41.044155, 34.514164, 26.192976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968029, 34.726139, 26.110083>,  <40.841152, 35.079430, 25.971928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968029, 34.726139, 26.110083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751765, -0.012155, 0.659319,
		-0.578133, -0.468782, -0.667837,
		0.317194, -0.883230, 0.345387,
		41.063187, 34.461170, 26.213699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273151, 34.631420, 25.922289>,  <40.841152, 35.079430, 25.971928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273151, 34.631420, 25.922289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515488, 34.502373, 26.213184>,  <40.660889, 34.424946, 26.387722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515488, 34.502373, 26.213184>,  <40.273151, 34.631420, 25.922289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515488, 34.502373, 26.213184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776064, -0.038386, 0.629485,
		-0.175168, -0.945751, -0.273628,
		0.605839, -0.322618, 0.727239,
		40.697239, 34.405590, 26.431356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935989, 34.092976, 26.126553>,  <40.273151, 34.631420, 25.922289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935989, 34.092976, 26.126553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185249, 34.213409, 26.415283>,  <40.334805, 34.285671, 26.588522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185249, 34.213409, 26.415283>,  <39.935989, 34.092976, 26.126553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185249, 34.213409, 26.415283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770535, 0.078188, 0.632584,
		0.134029, -0.950384, 0.280725,
		0.623147, 0.301093, 0.721824,
		40.372192, 34.303734, 26.631830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703682, 33.671947, 26.747585>,  <39.935989, 34.092976, 26.126553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703682, 33.671947, 26.747585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933338, 33.967579, 26.888512>,  <40.071133, 34.144958, 26.973068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933338, 33.967579, 26.888512>,  <39.703682, 33.671947, 26.747585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933338, 33.967579, 26.888512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569167, 0.050945, 0.820642,
		0.588571, -0.671688, 0.449909,
		0.574136, 0.739080, 0.352318,
		40.105579, 34.189304, 26.994207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812870, 33.446835, 27.379538>,  <39.703682, 33.671947, 26.747585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812870, 33.446835, 27.379538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852390, 33.844872, 27.381378>,  <39.876102, 34.083694, 27.382483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852390, 33.844872, 27.381378>,  <39.812870, 33.446835, 27.379538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852390, 33.844872, 27.381378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678854, 0.064017, 0.731477,
		0.727596, -0.075393, 0.681851,
		0.098798, 0.995097, 0.004602,
		39.882030, 34.143402, 27.382759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873550, 33.511860, 28.075443>,  <39.812870, 33.446835, 27.379538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873550, 33.511860, 28.075443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826874, 33.878944, 27.923552>,  <39.798866, 34.099194, 27.832417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826874, 33.878944, 27.923552>,  <39.873550, 33.511860, 28.075443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826874, 33.878944, 27.923552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649222, 0.218857, 0.728431,
		0.751594, 0.331533, 0.570257,
		-0.116694, 0.917708, -0.379730,
		39.791866, 34.154255, 27.809633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572536, 33.585587, 28.520575>,  <39.873550, 33.511860, 28.075443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572536, 33.585587, 28.520575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697971, 33.310104, 28.782061>,  <40.773232, 33.144814, 28.938951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697971, 33.310104, 28.782061>,  <40.572536, 33.585587, 28.520575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697971, 33.310104, 28.782061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715992, -0.280698, -0.639190,
		0.623712, 0.668498, 0.405086,
		0.313590, -0.688709, 0.653714,
		40.792049, 33.103493, 28.978174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302383, 33.618061, 28.529001>,  <40.572536, 33.585587, 28.520575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302383, 33.618061, 28.529001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219261, 33.264591, 28.696777>,  <41.169388, 33.052509, 28.797443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219261, 33.264591, 28.696777>,  <41.302383, 33.618061, 28.529001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219261, 33.264591, 28.696777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703733, -0.432889, -0.563353,
		0.679393, 0.178103, 0.711832,
		-0.207810, -0.883678, 0.419439,
		41.156918, 32.999489, 28.822609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959526, 33.335087, 28.701469>,  <41.302383, 33.618061, 28.529001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959526, 33.335087, 28.701469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701302, 33.030224, 28.682016>,  <41.546368, 32.847305, 28.670345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701302, 33.030224, 28.682016>,  <41.959526, 33.335087, 28.701469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701302, 33.030224, 28.682016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656415, -0.521200, -0.545408,
		0.390339, -0.384019, 0.836759,
		-0.645566, -0.762155, -0.048632,
		41.507633, 32.801579, 28.667427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346508, 32.781204, 28.985306>,  <41.959526, 33.335087, 28.701469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346508, 32.781204, 28.985306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047440, 32.664001, 28.746931>,  <41.868000, 32.593681, 28.603907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047440, 32.664001, 28.746931>,  <42.346508, 32.781204, 28.985306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047440, 32.664001, 28.746931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656969, -0.457263, -0.599418,
		-0.096866, -0.839677, 0.534377,
		-0.747669, -0.293006, -0.595935,
		41.823139, 32.576099, 28.568150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422512, 31.977976, 28.966848>,  <42.346508, 32.781204, 28.985306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422512, 31.977976, 28.966848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199646, 32.060822, 28.645185>,  <42.065926, 32.110531, 28.452187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199646, 32.060822, 28.645185>,  <42.422512, 31.977976, 28.966848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199646, 32.060822, 28.645185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442315, -0.745568, -0.498483,
		-0.702799, -0.633428, 0.323793,
		-0.557164, 0.207115, -0.804160,
		42.032497, 32.122955, 28.403938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149155, 31.348021, 28.688267>,  <42.422512, 31.977976, 28.966848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149155, 31.348021, 28.688267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114723, 31.584141, 28.367235>,  <42.094063, 31.725813, 28.174616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114723, 31.584141, 28.367235>,  <42.149155, 31.348021, 28.688267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114723, 31.584141, 28.367235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335075, -0.741490, -0.581307,
		-0.938251, -0.318965, -0.133966,
		-0.086082, 0.590300, -0.802581,
		42.088898, 31.761230, 28.126461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926414, 30.920658, 28.152637>,  <42.149155, 31.348021, 28.688267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.926414, 30.920658, 28.152637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096516, 31.230726, 27.965759>,  <42.198578, 31.416767, 27.853632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096516, 31.230726, 27.965759>,  <41.926414, 30.920658, 28.152637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096516, 31.230726, 27.965759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567920, -0.630465, -0.529132,
		-0.704718, -0.040315, -0.708341,
		0.425252, 0.775170, -0.467196,
		42.224091, 31.463278, 27.825600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795887, 30.763489, 27.447279>,  <41.926414, 30.920658, 28.152637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795887, 30.763489, 27.447279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101597, 31.021423, 27.450695>,  <42.285023, 31.176184, 27.452744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101597, 31.021423, 27.450695>,  <41.795887, 30.763489, 27.447279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.101597, 31.021423, 27.450695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476143, -0.555307, -0.681851,
		-0.434940, 0.525187, -0.731441,
		0.764274, 0.644835, 0.008539,
		42.330879, 31.214874, 27.453257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970222, 30.817602, 26.782162>,  <41.795887, 30.763489, 27.447279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970222, 30.817602, 26.782162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285362, 31.000198, 26.947531>,  <42.474445, 31.109756, 27.046751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285362, 31.000198, 26.947531>,  <41.970222, 30.817602, 26.782162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285362, 31.000198, 26.947531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573625, -0.299561, -0.762376,
		-0.224172, 0.837784, -0.497861,
		0.787846, 0.456489, 0.413421,
		42.521717, 31.137146, 27.071556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386654, 31.238684, 26.284122>,  <41.970222, 30.817602, 26.782162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386654, 31.238684, 26.284122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657383, 31.191473, 26.574774>,  <42.819820, 31.163147, 26.749165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657383, 31.191473, 26.574774>,  <42.386654, 31.238684, 26.284122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657383, 31.191473, 26.574774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716838, -0.118937, -0.687020,
		0.167509, 0.985862, 0.004106,
		0.676819, -0.118025, 0.726626,
		42.860428, 31.156065, 26.792761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912914, 31.623236, 26.042757>,  <42.386654, 31.238684, 26.284122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912914, 31.623236, 26.042757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048195, 31.343065, 26.294161>,  <43.129364, 31.174963, 26.445004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048195, 31.343065, 26.294161>,  <42.912914, 31.623236, 26.042757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048195, 31.343065, 26.294161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689635, -0.269966, -0.671954,
		0.640330, 0.660697, 0.391736,
		0.338202, -0.700427, 0.628507,
		43.149654, 31.132936, 26.482714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657108, 31.696102, 26.066525>,  <42.912914, 31.623236, 26.042757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657108, 31.696102, 26.066525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573605, 31.328970, 26.201586>,  <43.523502, 31.108690, 26.282621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573605, 31.328970, 26.201586>,  <43.657108, 31.696102, 26.066525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573605, 31.328970, 26.201586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797013, -0.359753, -0.485127,
		0.566735, 0.167836, 0.806624,
		-0.208764, -0.917828, 0.337652,
		43.510975, 31.053621, 26.302881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297401, 31.446154, 26.345251>,  <43.657108, 31.696102, 26.066525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297401, 31.446154, 26.345251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081623, 31.121128, 26.256941>,  <43.952156, 30.926113, 26.203955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.081623, 31.121128, 26.256941>,  <44.297401, 31.446154, 26.345251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081623, 31.121128, 26.256941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777288, -0.379728, -0.501628,
		0.323769, -0.442207, 0.836437,
		-0.539441, -0.812564, -0.220778,
		43.919792, 30.877359, 26.190708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780815, 30.943592, 26.452833>,  <44.297401, 31.446154, 26.345251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780815, 30.943592, 26.452833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491096, 30.772711, 26.236359>,  <44.317265, 30.670181, 26.106474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491096, 30.772711, 26.236359>,  <44.780815, 30.943592, 26.452833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491096, 30.772711, 26.236359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689482, -0.446840, -0.570043,
		0.001701, -0.786022, 0.618196,
		-0.724301, -0.427205, -0.541188,
		44.273808, 30.644550, 26.074001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.521835, 28.829092, 23.606813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725456, 29.077051, 23.845675>,  <39.847630, 29.225826, 23.988991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725456, 29.077051, 23.845675>,  <39.521835, 28.829092, 23.606813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725456, 29.077051, 23.845675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721615, -0.070809, 0.688664,
		0.469184, -0.781482, 0.411280,
		0.509056, 0.619896, 0.597152,
		39.878174, 29.263020, 24.024820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632893, 28.516729, 24.280436>,  <39.521835, 28.829092, 23.606813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632893, 28.516729, 24.280436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640396, 28.915602, 24.309507>,  <39.644897, 29.154924, 24.326950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640396, 28.915602, 24.309507>,  <39.632893, 28.516729, 24.280436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640396, 28.915602, 24.309507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613161, -0.045946, 0.788621,
		0.789735, -0.059355, 0.610569,
		0.018756, 0.997179, 0.072680,
		39.646023, 29.214756, 24.331312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654373, 28.707203, 25.007805>,  <39.632893, 28.516729, 24.280436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654373, 28.707203, 25.007805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575401, 29.063787, 24.844675>,  <39.528019, 29.277739, 24.746798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.575401, 29.063787, 24.844675>,  <39.654373, 28.707203, 25.007805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575401, 29.063787, 24.844675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659402, 0.187077, 0.728143,
		0.725404, 0.412678, 0.550895,
		-0.197429, 0.891459, -0.407827,
		39.516174, 29.331224, 24.722326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865662, 29.276485, 25.507227>,  <39.654373, 28.707203, 25.007805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865662, 29.276485, 25.507227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586090, 29.407728, 25.253033>,  <39.418346, 29.486473, 25.100515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.586090, 29.407728, 25.253033>,  <39.865662, 29.276485, 25.507227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586090, 29.407728, 25.253033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614160, 0.179965, 0.768388,
		0.366480, 0.927339, 0.075728,
		-0.698928, 0.328108, -0.635488,
		39.376411, 29.506161, 25.062386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656742, 29.969786, 25.724623>,  <39.865662, 29.276485, 25.507227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656742, 29.969786, 25.724623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354622, 29.824327, 25.506527>,  <39.173351, 29.737053, 25.375669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.354622, 29.824327, 25.506527>,  <39.656742, 29.969786, 25.724623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354622, 29.824327, 25.506527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639776, 0.228634, 0.733767,
		-0.142170, 0.903044, -0.405338,
		-0.755298, -0.363645, -0.545241,
		39.128033, 29.715235, 25.342955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246437, 30.443926, 25.900591>,  <39.656742, 29.969786, 25.724623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246437, 30.443926, 25.900591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011765, 30.155546, 25.753059>,  <38.870960, 29.982519, 25.664539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.011765, 30.155546, 25.753059>,  <39.246437, 30.443926, 25.900591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011765, 30.155546, 25.753059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609565, 0.093304, 0.787226,
		-0.533137, 0.686678, -0.494205,
		-0.586682, -0.720949, -0.368831,
		38.835758, 29.939260, 25.642410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567627, 30.659658, 25.832895>,  <39.246437, 30.443926, 25.900591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567627, 30.659658, 25.832895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529892, 30.263426, 25.872583>,  <38.507252, 30.025686, 25.896397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.529892, 30.263426, 25.872583>,  <38.567627, 30.659658, 25.832895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529892, 30.263426, 25.872583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730799, 0.136583, 0.668789,
		-0.676043, -0.009421, -0.736802,
		-0.094334, -0.990584, 0.099221,
		38.501591, 29.966251, 25.902349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747467, 30.504982, 25.803972>,  <38.567627, 30.659658, 25.832895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747467, 30.504982, 25.803972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912155, 30.171118, 25.950306>,  <38.010967, 29.970800, 26.038107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912155, 30.171118, 25.950306>,  <37.747467, 30.504982, 25.803972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912155, 30.171118, 25.950306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686862, -0.020383, 0.726502,
		-0.598925, -0.550390, -0.581688,
		0.411715, -0.834659, 0.365834,
		38.035671, 29.920721, 26.060057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178631, 30.143305, 25.955725>,  <37.747467, 30.504982, 25.803972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178631, 30.143305, 25.955725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463017, 29.955402, 26.165049>,  <37.633648, 29.842661, 26.290644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.463017, 29.955402, 26.165049>,  <37.178631, 30.143305, 25.955725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463017, 29.955402, 26.165049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630436, -0.096064, 0.770274,
		-0.311573, -0.877552, -0.364451,
		0.710966, -0.469760, 0.523309,
		37.676308, 29.814474, 26.322042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761032, 29.640976, 26.297050>,  <37.178631, 30.143305, 25.955725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761032, 29.640976, 26.297050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113380, 29.632135, 26.486187>,  <37.324791, 29.626831, 26.599669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113380, 29.632135, 26.486187>,  <36.761032, 29.640976, 26.297050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113380, 29.632135, 26.486187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471536, 0.046572, 0.880616,
		-0.041489, -0.998670, 0.030600,
		0.880870, -0.022107, 0.472841,
		37.377640, 29.625505, 26.628040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801708, 29.116112, 26.775600>,  <36.761032, 29.640976, 26.297050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801708, 29.116112, 26.775600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052387, 29.393253, 26.918264>,  <37.202793, 29.559538, 27.003862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052387, 29.393253, 26.918264>,  <36.801708, 29.116112, 26.775600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052387, 29.393253, 26.918264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494841, 0.000268, 0.868983,
		0.601983, -0.721079, 0.343020,
		0.626697, 0.692853, 0.356658,
		37.240395, 29.601109, 27.025263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039577, 28.910578, 27.455297>,  <36.801708, 29.116112, 26.775600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039577, 28.910578, 27.455297> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062714, 29.309835, 27.462963>,  <37.076595, 29.549389, 27.467562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.062714, 29.309835, 27.462963>,  <37.039577, 28.910578, 27.455297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062714, 29.309835, 27.462963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408541, 0.006152, 0.912719,
		0.910905, -0.060622, 0.408138,
		0.057842, 0.998142, 0.019163,
		37.080067, 29.609278, 27.468712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204487, 29.123377, 28.199448>,  <37.039577, 28.910578, 27.455297>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204487, 29.123377, 28.199448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106163, 29.475224, 28.036549>,  <37.047169, 29.686333, 27.938808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.106163, 29.475224, 28.036549>,  <37.204487, 29.123377, 28.199448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106163, 29.475224, 28.036549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258165, 0.345553, 0.902189,
		0.934307, 0.326903, 0.142146,
		-0.245809, 0.879618, -0.407247,
		37.032421, 29.739109, 27.914375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530991, 29.685528, 28.580706>,  <37.204487, 29.123377, 28.199448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530991, 29.685528, 28.580706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.220955, 29.857660, 28.395645>,  <37.034931, 29.960939, 28.284609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.220955, 29.857660, 28.395645>,  <37.530991, 29.685528, 28.580706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220955, 29.857660, 28.395645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356472, 0.306736, 0.882519,
		0.521687, 0.848957, -0.084349,
		-0.775094, 0.430331, -0.462650,
		36.988426, 29.986759, 28.256849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149296, 29.995594, 29.036337>,  <37.530991, 29.685528, 28.580706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149296, 29.995594, 29.036337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217175, 29.666353, 29.253115>,  <38.257904, 29.468809, 29.383181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.217175, 29.666353, 29.253115>,  <38.149296, 29.995594, 29.036337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217175, 29.666353, 29.253115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694553, -0.290237, -0.658300,
		0.699141, 0.488123, 0.522435,
		0.169701, -0.823103, 0.541943,
		38.268085, 29.419422, 29.415697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866714, 29.899904, 28.910397>,  <38.149296, 29.995594, 29.036337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866714, 29.899904, 28.910397> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747833, 29.548893, 29.060921>,  <38.676502, 29.338285, 29.151236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.747833, 29.548893, 29.060921>,  <38.866714, 29.899904, 28.910397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747833, 29.548893, 29.060921> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679333, -0.471291, -0.562487,
		0.670952, 0.088467, 0.736205,
		-0.297205, -0.877529, 0.376313,
		38.658672, 29.285635, 29.173815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466606, 29.509264, 29.114237>,  <38.866714, 29.899904, 28.910397>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466606, 29.509264, 29.114237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172596, 29.255510, 29.018492>,  <38.996189, 29.103258, 28.961044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.172596, 29.255510, 29.018492>,  <39.466606, 29.509264, 29.114237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172596, 29.255510, 29.018492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601438, -0.447010, -0.662158,
		0.313067, -0.630664, 0.710108,
		-0.735025, -0.634386, -0.239361,
		38.952087, 29.065195, 28.946684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844536, 28.871338, 29.330832>,  <39.466606, 29.509264, 29.114237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844536, 28.871338, 29.330832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547356, 28.791193, 29.075369>,  <39.369049, 28.743107, 28.922092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547356, 28.791193, 29.075369>,  <39.844536, 28.871338, 29.330832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547356, 28.791193, 29.075369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631655, -0.525540, -0.569931,
		-0.221446, -0.826839, 0.517010,
		-0.742950, -0.200363, -0.638655,
		39.324471, 28.731085, 28.883772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949894, 28.179941, 29.119761>,  <39.844536, 28.871338, 29.330832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949894, 28.179941, 29.119761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702263, 28.323778, 28.840492>,  <39.553684, 28.410080, 28.672932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702263, 28.323778, 28.840492>,  <39.949894, 28.179941, 29.119761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702263, 28.323778, 28.840492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522336, -0.475325, -0.707976,
		-0.586439, -0.802970, 0.106435,
		-0.619075, 0.359591, -0.698170,
		39.516541, 28.431656, 28.631041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717243, 27.546886, 28.769974>,  <39.949894, 28.179941, 29.119761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717243, 27.546886, 28.769974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667313, 27.873974, 28.545204>,  <39.637356, 28.070227, 28.410343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667313, 27.873974, 28.545204>,  <39.717243, 27.546886, 28.769974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667313, 27.873974, 28.545204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435139, -0.463861, -0.771678,
		-0.891669, -0.340839, -0.297920,
		-0.124824, 0.817718, -0.561923,
		39.629864, 28.119289, 28.376627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401436, 27.229462, 28.163111>,  <39.717243, 27.546886, 28.769974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401436, 27.229462, 28.163111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538807, 27.589537, 28.055992>,  <39.621231, 27.805582, 27.991720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.538807, 27.589537, 28.055992>,  <39.401436, 27.229462, 28.163111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538807, 27.589537, 28.055992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449068, -0.407826, -0.794994,
		-0.824860, 0.152765, -0.544305,
		0.343429, 0.900189, -0.267798,
		39.641834, 27.859594, 27.975653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353142, 27.330652, 27.451357>,  <39.401436, 27.229462, 28.163111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353142, 27.330652, 27.451357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645454, 27.587181, 27.544882>,  <39.820843, 27.741098, 27.600996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645454, 27.587181, 27.544882>,  <39.353142, 27.330652, 27.451357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645454, 27.587181, 27.544882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553430, -0.356126, -0.752921,
		-0.399600, 0.679616, -0.615177,
		0.730777, 0.641324, 0.233812,
		39.864689, 27.779579, 27.615025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591541, 27.489071, 26.804422>,  <39.353142, 27.330652, 27.451357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591541, 27.489071, 26.804422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890862, 27.617935, 27.036375>,  <40.070454, 27.695253, 27.175547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.890862, 27.617935, 27.036375>,  <39.591541, 27.489071, 26.804422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890862, 27.617935, 27.036375> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663046, -0.390269, -0.638795,
		0.020516, 0.862498, -0.505644,
		0.748297, 0.322160, 0.579883,
		40.115349, 27.714582, 27.210340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044079, 27.912556, 26.389393>,  <39.591541, 27.489071, 26.804422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.044079, 27.912556, 26.389393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271290, 27.809723, 26.702122>,  <40.407616, 27.748022, 26.889759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271290, 27.809723, 26.702122>,  <40.044079, 27.912556, 26.389393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271290, 27.809723, 26.702122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638251, -0.462138, -0.615682,
		0.519592, 0.848727, -0.098425,
		0.568031, -0.257083, 0.781824,
		40.441700, 27.732597, 26.936668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697830, 28.124218, 26.255301>,  <40.044079, 27.912556, 26.389393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697830, 28.124218, 26.255301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805443, 27.858864, 26.534597>,  <40.870010, 27.699652, 26.702175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.805443, 27.858864, 26.534597>,  <40.697830, 28.124218, 26.255301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805443, 27.858864, 26.534597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797737, -0.252734, -0.547486,
		0.539664, 0.704304, 0.461214,
		0.269032, -0.663386, 0.698241,
		40.886154, 27.659847, 26.744070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311443, 28.402607, 26.542433>,  <40.697830, 28.124218, 26.255301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311443, 28.402607, 26.542433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.270855, 28.012959, 26.623222>,  <41.246502, 27.779169, 26.671696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.270855, 28.012959, 26.623222>,  <41.311443, 28.402607, 26.542433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270855, 28.012959, 26.623222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819732, -0.196903, -0.537836,
		0.563686, 0.110991, 0.818498,
		-0.101469, -0.974120, 0.201974,
		41.240414, 27.720722, 26.683815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907768, 28.199528, 26.710594>,  <41.311443, 28.402607, 26.542433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907768, 28.199528, 26.710594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.738369, 27.861708, 26.579517>,  <41.636730, 27.659016, 26.500872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.738369, 27.861708, 26.579517>,  <41.907768, 28.199528, 26.710594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738369, 27.861708, 26.579517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810560, -0.191744, -0.553377,
		0.404522, -0.499969, 0.765763,
		-0.423502, -0.844550, -0.327690,
		41.611317, 27.608343, 26.481211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428173, 27.675104, 26.807043>,  <41.907768, 28.199528, 26.710594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428173, 27.675104, 26.807043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167618, 27.536898, 26.536842>,  <42.011284, 27.453974, 26.374722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.167618, 27.536898, 26.536842>,  <42.428173, 27.675104, 26.807043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167618, 27.536898, 26.536842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758214, -0.263255, -0.596496,
		0.028270, -0.900730, 0.433459,
		-0.651392, -0.345518, -0.675504,
		41.972198, 27.433243, 26.334190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959339, 27.596247, 27.337484>,  <42.428173, 27.675104, 26.807043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959339, 27.596247, 27.337484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.324600, 27.758402, 27.320436>,  <43.543755, 27.855696, 27.310207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.324600, 27.758402, 27.320436>,  <42.959339, 27.596247, 27.337484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324600, 27.758402, 27.320436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184257, 0.503776, 0.843954,
		0.363598, -0.762805, 0.534719,
		0.913151, 0.405386, -0.042620,
		43.598545, 27.880018, 27.307650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.355396, 27.371174, 28.004051>,  <42.959339, 27.596247, 27.337484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.355396, 27.371174, 28.004051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.471684, 27.715471, 27.836908>,  <43.541454, 27.922050, 27.736622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.471684, 27.715471, 27.836908>,  <43.355396, 27.371174, 28.004051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471684, 27.715471, 27.836908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096156, 0.460792, 0.882284,
		0.951966, -0.216314, 0.216725,
		0.290715, 0.860743, -0.417858,
		43.558899, 27.973694, 27.711552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770069, 27.692362, 28.523151>,  <43.355396, 27.371174, 28.004051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770069, 27.692362, 28.523151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.673103, 27.972326, 28.254417>,  <43.614925, 28.140305, 28.093178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.673103, 27.972326, 28.254417>,  <43.770069, 27.692362, 28.523151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673103, 27.972326, 28.254417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011125, 0.694448, 0.719457,
		0.970109, 0.166933, -0.176131,
		-0.242415, 0.699911, -0.671833,
		43.600380, 28.182301, 28.052868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.231838, 28.317099, 28.634682>,  <43.770069, 27.692362, 28.523151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.231838, 28.317099, 28.634682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.930241, 28.464968, 28.417488>,  <43.749283, 28.553690, 28.287172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.930241, 28.464968, 28.417488>,  <44.231838, 28.317099, 28.634682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930241, 28.464968, 28.417488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255793, 0.596128, 0.761053,
		0.605028, 0.712723, -0.354918,
		-0.753997, 0.369673, -0.542984,
		43.704041, 28.575869, 28.254593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.238384, 28.983343, 28.824165>,  <44.231838, 28.317099, 28.634682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.238384, 28.983343, 28.824165> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.877846, 28.919128, 28.663269>,  <43.661522, 28.880600, 28.566730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.877846, 28.919128, 28.663269>,  <44.238384, 28.983343, 28.824165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877846, 28.919128, 28.663269> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419928, 0.551225, 0.720979,
		0.105982, 0.818766, -0.564260,
		-0.901348, -0.160538, -0.402243,
		43.607441, 28.870968, 28.542597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.966087, 29.577803, 28.956886>,  <44.238384, 28.983343, 28.824165>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.966087, 29.577803, 28.956886> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.658791, 29.336979, 28.869860>,  <43.474415, 29.192484, 28.817644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.658791, 29.336979, 28.869860>,  <43.966087, 29.577803, 28.956886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658791, 29.336979, 28.869860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480538, 0.317801, 0.817365,
		-0.422958, 0.732480, -0.533459,
		-0.768238, -0.602059, -0.217568,
		43.428318, 29.156361, 28.804590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424152, 30.004622, 29.171072>,  <43.966087, 29.577803, 28.956886>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424152, 30.004622, 29.171072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.265320, 29.641857, 29.114737>,  <43.170021, 29.424198, 29.080936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.265320, 29.641857, 29.114737>,  <43.424152, 30.004622, 29.171072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265320, 29.641857, 29.114737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720960, 0.213276, 0.659341,
		-0.567926, 0.363353, -0.738535,
		-0.397085, -0.906911, -0.140838,
		43.146194, 29.369783, 29.072485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585396, 30.085667, 28.941536>,  <43.424152, 30.004622, 29.171072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585396, 30.085667, 28.941536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.685738, 29.740088, 29.116198>,  <42.745945, 29.532740, 29.220995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.685738, 29.740088, 29.116198>,  <42.585396, 30.085667, 28.941536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685738, 29.740088, 29.116198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770339, 0.094997, 0.630518,
		-0.586215, -0.494540, -0.641702,
		0.250857, -0.863948, 0.436652,
		42.760994, 29.480904, 29.247192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.957848, 29.646324, 29.030884>,  <42.585396, 30.085667, 28.941536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.957848, 29.646324, 29.030884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.220776, 29.545132, 29.314835>,  <42.378532, 29.484417, 29.485205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.220776, 29.545132, 29.314835>,  <41.957848, 29.646324, 29.030884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220776, 29.545132, 29.314835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673737, 0.224766, 0.703960,
		-0.337644, -0.941000, -0.022698,
		0.657324, -0.252980, 0.709877,
		42.417973, 29.469238, 29.527798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564663, 29.368526, 29.557056>,  <41.957848, 29.646324, 29.030884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564663, 29.368526, 29.557056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.908886, 29.418348, 29.754616>,  <42.115417, 29.448240, 29.873152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.908886, 29.418348, 29.754616>,  <41.564663, 29.368526, 29.557056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908886, 29.418348, 29.754616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508928, 0.170331, 0.843789,
		0.020969, -0.977484, 0.209967,
		0.860554, 0.124552, 0.493897,
		42.167053, 29.455715, 29.902784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513676, 28.969091, 30.130980>,  <41.564663, 29.368526, 29.557056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513676, 28.969091, 30.130980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.797459, 29.235388, 30.223465>,  <41.967728, 29.395166, 30.278955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.797459, 29.235388, 30.223465>,  <41.513676, 28.969091, 30.130980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797459, 29.235388, 30.223465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537955, 0.299629, 0.787926,
		0.455278, -0.683380, 0.570713,
		0.709455, 0.665743, 0.231213,
		42.010296, 29.435110, 30.292830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658356, 28.894167, 30.817276>,  <41.513676, 28.969091, 30.130980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658356, 28.894167, 30.817276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800282, 29.261377, 30.746469>,  <41.885437, 29.481703, 30.703985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.800282, 29.261377, 30.746469>,  <41.658356, 28.894167, 30.817276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.800282, 29.261377, 30.746469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385947, 0.316270, 0.866613,
		0.851557, -0.239171, 0.466527,
		0.354817, 0.918025, -0.177014,
		41.906727, 29.536785, 30.693365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997257, 29.062830, 31.459410>,  <41.658356, 28.894167, 30.817276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997257, 29.062830, 31.459410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.924145, 29.415083, 31.284557>,  <41.880280, 29.626434, 31.179646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.924145, 29.415083, 31.284557>,  <41.997257, 29.062830, 31.459410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924145, 29.415083, 31.284557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499233, 0.299899, 0.812913,
		0.846970, 0.366811, 0.384825,
		-0.182777, 0.880631, -0.437130,
		41.869312, 29.679272, 31.153418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.287781, 29.616770, 31.840343>,  <41.997257, 29.062830, 31.459410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.287781, 29.616770, 31.840343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.985352, 29.790955, 31.644907>,  <41.803894, 29.895466, 31.527645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.985352, 29.790955, 31.644907>,  <42.287781, 29.616770, 31.840343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985352, 29.790955, 31.644907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436444, 0.220847, 0.872206,
		0.487717, 0.872697, 0.023078,
		-0.756075, 0.435462, -0.488593,
		41.758530, 29.921593, 31.498329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.933163, 30.230936, 26.362629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.662399, 30.265713, 26.070263>,  <44.499943, 30.286579, 25.894844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.662399, 30.265713, 26.070263>,  <44.933163, 30.230936, 26.362629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662399, 30.265713, 26.070263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629330, -0.446653, -0.635960,
		-0.381758, -0.890473, 0.247626,
		-0.676908, 0.086944, -0.730914,
		44.459328, 30.291796, 25.850988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896801, 29.617476, 26.043787>,  <44.933163, 30.230936, 26.362629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896801, 29.617476, 26.043787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781918, 29.893419, 25.777975>,  <44.712986, 30.058987, 25.618488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.781918, 29.893419, 25.777975>,  <44.896801, 29.617476, 26.043787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781918, 29.893419, 25.777975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611945, -0.401577, -0.681366,
		-0.736908, -0.602352, -0.306819,
		-0.287210, 0.689860, -0.664532,
		44.695755, 30.100378, 25.578615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860573, 29.208849, 25.497227>,  <44.896801, 29.617476, 26.043787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860573, 29.208849, 25.497227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.825710, 29.572336, 25.333944>,  <44.804794, 29.790428, 25.235975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.825710, 29.572336, 25.333944>,  <44.860573, 29.208849, 25.497227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825710, 29.572336, 25.333944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655417, -0.256283, -0.710455,
		-0.750221, -0.329467, -0.573254,
		-0.087156, 0.908719, -0.408207,
		44.799564, 29.844952, 25.211483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711079, 29.165110, 24.904978>,  <44.860573, 29.208849, 25.497227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711079, 29.165110, 24.904978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.880913, 29.526403, 24.880009>,  <44.982815, 29.743179, 24.865026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.880913, 29.526403, 24.880009>,  <44.711079, 29.165110, 24.904978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880913, 29.526403, 24.880009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611008, -0.336732, -0.716436,
		-0.668129, 0.266046, -0.694854,
		0.424585, 0.903234, -0.062425,
		45.008289, 29.797373, 24.861280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745129, 29.398911, 24.195045>,  <44.711079, 29.165110, 24.904978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745129, 29.398911, 24.195045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.030029, 29.577696, 24.411535>,  <45.200970, 29.684967, 24.541428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.030029, 29.577696, 24.411535>,  <44.745129, 29.398911, 24.195045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030029, 29.577696, 24.411535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683889, -0.268217, -0.678495,
		-0.158099, 0.853394, -0.496712,
		0.712250, 0.446965, 0.541222,
		45.243706, 29.711786, 24.573902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.199078, 29.850252, 23.643356>,  <44.745129, 29.398911, 24.195045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.199078, 29.850252, 23.643356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.418865, 29.787443, 23.971607>,  <45.550735, 29.749758, 24.168558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.418865, 29.787443, 23.971607>,  <45.199078, 29.850252, 23.643356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418865, 29.787443, 23.971607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778480, -0.260452, -0.571081,
		0.303406, 0.952633, -0.020872,
		0.549467, -0.157021, 0.820628,
		45.583706, 29.740337, 24.217796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795769, 30.249151, 23.676466>,  <45.199078, 29.850252, 23.643356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795769, 30.249151, 23.676466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.900238, 29.949289, 23.919712>,  <45.962921, 29.769371, 24.065660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.900238, 29.949289, 23.919712>,  <45.795769, 30.249151, 23.676466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900238, 29.949289, 23.919712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789775, -0.196273, -0.581147,
		0.555017, 0.632054, 0.540798,
		0.261172, -0.749656, 0.608116,
		45.978588, 29.724392, 24.102146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.450459, 30.341084, 23.730255>,  <45.795769, 30.249151, 23.676466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.450459, 30.341084, 23.730255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.401779, 29.967588, 23.864908>,  <46.372570, 29.743492, 23.945700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.401779, 29.967588, 23.864908>,  <46.450459, 30.341084, 23.730255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.401779, 29.967588, 23.864908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810775, -0.289163, -0.508949,
		0.572567, 0.210995, 0.792242,
		-0.121702, -0.933738, 0.336635,
		46.365269, 29.687468, 23.965899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.110664, 30.175602, 23.784645>,  <46.450459, 30.341084, 23.730255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.110664, 30.175602, 23.784645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.896301, 29.838741, 23.760687>,  <46.767685, 29.636625, 23.746311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.896301, 29.838741, 23.760687>,  <47.110664, 30.175602, 23.784645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.896301, 29.838741, 23.760687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544892, -0.290808, -0.786462,
		0.644903, -0.454104, 0.614727,
		-0.535903, -0.842152, -0.059895,
		46.735531, 29.586096, 23.742718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569355, 29.572487, 23.938604>,  <47.110664, 30.175602, 23.784645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569355, 29.572487, 23.938604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.282551, 29.412766, 23.710062>,  <47.110466, 29.316933, 23.572937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.282551, 29.412766, 23.710062>,  <47.569355, 29.572487, 23.938604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.282551, 29.412766, 23.710062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696950, -0.425225, -0.577447,
		-0.012378, -0.812244, 0.583187,
		-0.717013, -0.399305, -0.571357,
		47.067448, 29.292974, 23.538654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.843929, 28.973927, 23.750902>,  <47.569355, 29.572487, 23.938604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.843929, 28.973927, 23.750902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.549767, 29.017490, 23.483377>,  <47.373268, 29.043629, 23.322863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.549767, 29.017490, 23.483377>,  <47.843929, 28.973927, 23.750902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549767, 29.017490, 23.483377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612874, -0.314137, -0.725054,
		-0.289062, -0.943110, 0.164274,
		-0.735410, 0.108907, -0.668813,
		47.329144, 29.050163, 23.282734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.829323, 28.397182, 23.273115>,  <47.843929, 28.973927, 23.750902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.829323, 28.397182, 23.273115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.648121, 28.693998, 23.075466>,  <47.539398, 28.872087, 22.956877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.648121, 28.693998, 23.075466>,  <47.829323, 28.397182, 23.273115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.648121, 28.693998, 23.075466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586461, -0.169405, -0.792064,
		-0.671452, -0.648595, -0.358437,
		-0.453008, 0.742042, -0.494123,
		47.512218, 28.916611, 22.927229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.583237, 28.208488, 22.635546>,  <47.829323, 28.397182, 23.273115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.583237, 28.208488, 22.635546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.665386, 28.598261, 22.599098>,  <47.714676, 28.832125, 22.577230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.665386, 28.598261, 22.599098>,  <47.583237, 28.208488, 22.635546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.665386, 28.598261, 22.599098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618322, -0.201360, -0.759692,
		-0.758616, 0.099683, -0.643867,
		0.205378, 0.974432, -0.091119,
		47.727001, 28.890591, 22.571762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554649, 27.447517, 22.562073>,  <47.583237, 28.208488, 22.635546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554649, 27.447517, 22.562073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.223339, 27.240038, 22.477304>,  <47.024551, 27.115549, 22.426443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.223339, 27.240038, 22.477304>,  <47.554649, 27.447517, 22.562073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223339, 27.240038, 22.477304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210607, -0.062286, 0.975585,
		-0.519235, 0.852684, -0.057652,
		-0.828275, -0.518700, -0.211922,
		46.974857, 27.084429, 22.413727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.894600, 27.785294, 22.823231>,  <47.554649, 27.447517, 22.562073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.894600, 27.785294, 22.823231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.839680, 27.391413, 22.780310>,  <46.806728, 27.155085, 22.754557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.839680, 27.391413, 22.780310>,  <46.894600, 27.785294, 22.823231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.839680, 27.391413, 22.780310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340965, -0.054725, 0.938482,
		-0.929996, 0.165439, -0.328235,
		-0.137299, -0.984701, -0.107303,
		46.798489, 27.096003, 22.748119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.148598, 27.499367, 22.920271>,  <46.894600, 27.785294, 22.823231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.148598, 27.499367, 22.920271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.390865, 27.202728, 23.035648>,  <46.536228, 27.024746, 23.104874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.390865, 27.202728, 23.035648>,  <46.148598, 27.499367, 22.920271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.390865, 27.202728, 23.035648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419905, 0.010031, 0.907512,
		-0.675900, -0.670773, -0.305324,
		0.605672, -0.741594, 0.288441,
		46.572567, 26.980249, 23.122181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664471, 27.103035, 23.292006>,  <46.148598, 27.499367, 22.920271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664471, 27.103035, 23.292006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.020290, 26.941666, 23.377754>,  <46.233780, 26.844843, 23.429203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.020290, 26.941666, 23.377754>,  <45.664471, 27.103035, 23.292006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020290, 26.941666, 23.377754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324238, -0.226948, 0.918349,
		-0.321835, -0.886421, -0.332687,
		0.889546, -0.403426, 0.214372,
		46.287155, 26.820639, 23.442066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488094, 26.509527, 23.426708>,  <45.664471, 27.103035, 23.292006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488094, 26.509527, 23.426708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.835789, 26.589241, 23.607691>,  <46.044407, 26.637070, 23.716280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.835789, 26.589241, 23.607691>,  <45.488094, 26.509527, 23.426708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.835789, 26.589241, 23.607691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388480, -0.290747, 0.874385,
		0.305802, -0.935816, -0.175309,
		0.869235, 0.199285, 0.452457,
		46.096558, 26.649027, 23.743427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.685879, 25.987091, 23.911766>,  <45.488094, 26.509527, 23.426708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.685879, 25.987091, 23.911766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.917225, 26.286848, 24.040701>,  <46.056034, 26.466703, 24.118061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.917225, 26.286848, 24.040701>,  <45.685879, 25.987091, 23.911766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917225, 26.286848, 24.040701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314027, -0.160158, 0.935808,
		0.752913, -0.642462, 0.142700,
		0.578367, 0.749394, 0.322336,
		46.090736, 26.511665, 24.137402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856094, 25.805109, 24.669662>,  <45.685879, 25.987091, 23.911766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856094, 25.805109, 24.669662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.913300, 26.199648, 24.636993>,  <45.947620, 26.436371, 24.617392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.913300, 26.199648, 24.636993>,  <45.856094, 25.805109, 24.669662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.913300, 26.199648, 24.636993> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459488, 0.139257, 0.877199,
		0.876595, -0.087921, 0.473130,
		0.143011, 0.986345, -0.081674,
		45.956203, 26.495552, 24.612492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.117592, 26.050625, 25.315746>,  <45.856094, 25.805109, 24.669662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.117592, 26.050625, 25.315746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.951191, 26.381990, 25.165722>,  <45.851349, 26.580811, 25.075706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.951191, 26.381990, 25.165722>,  <46.117592, 26.050625, 25.315746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.951191, 26.381990, 25.165722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295579, 0.266869, 0.917287,
		0.859985, 0.492455, 0.133843,
		-0.416004, 0.828413, -0.375062,
		45.826389, 26.630514, 25.053204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220592, 26.704332, 25.803383>,  <46.117592, 26.050625, 25.315746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220592, 26.704332, 25.803383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.905426, 26.796356, 25.574907>,  <45.716328, 26.851570, 25.437822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.905426, 26.796356, 25.574907>,  <46.220592, 26.704332, 25.803383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905426, 26.796356, 25.574907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445293, 0.427823, 0.786563,
		0.425323, 0.874095, -0.234646,
		-0.787918, 0.230057, -0.571191,
		45.669052, 26.865374, 25.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994446, 27.380957, 25.997927>,  <46.220592, 26.704332, 25.803383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994446, 27.380957, 25.997927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.673111, 27.233063, 25.811188>,  <45.480309, 27.144327, 25.699144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.673111, 27.233063, 25.811188>,  <45.994446, 27.380957, 25.997927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673111, 27.233063, 25.811188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591567, 0.405216, 0.697028,
		-0.068541, 0.836120, -0.544248,
		-0.803337, -0.369734, -0.466847,
		45.432110, 27.122143, 25.671133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.555504, 27.897129, 25.995726>,  <45.994446, 27.380957, 25.997927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.555504, 27.897129, 25.995726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.310520, 27.590092, 25.920151>,  <45.163532, 27.405869, 25.874805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.310520, 27.590092, 25.920151>,  <45.555504, 27.897129, 25.995726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310520, 27.590092, 25.920151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732373, 0.461012, 0.501096,
		-0.297536, 0.445273, -0.844514,
		-0.612456, -0.767594, -0.188938,
		45.126785, 27.359814, 25.863470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.914742, 28.229126, 25.769049>,  <45.555504, 27.897129, 25.995726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.914742, 28.229126, 25.769049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.835033, 27.863344, 25.909937>,  <44.787209, 27.643875, 25.994471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.835033, 27.863344, 25.909937>,  <44.914742, 28.229126, 25.769049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.835033, 27.863344, 25.909937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766782, 0.369315, 0.525025,
		-0.610194, -0.165456, -0.774782,
		-0.199270, -0.914456, 0.352223,
		44.775253, 27.589006, 26.015604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098236, 28.183907, 25.737947>,  <44.914742, 28.229126, 25.769049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098236, 28.183907, 25.737947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218262, 27.898415, 25.991106>,  <44.290276, 27.727119, 26.143002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.218262, 27.898415, 25.991106>,  <44.098236, 28.183907, 25.737947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218262, 27.898415, 25.991106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681564, 0.303787, 0.665721,
		-0.667409, -0.631115, -0.395297,
		0.300061, -0.713728, 0.632895,
		44.308281, 27.684296, 26.180975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.499645, 27.959410, 26.098015>,  <44.098236, 28.183907, 25.737947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.499645, 27.959410, 26.098015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779339, 27.806810, 26.339853>,  <43.947155, 27.715250, 26.484957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.779339, 27.806810, 26.339853>,  <43.499645, 27.959410, 26.098015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779339, 27.806810, 26.339853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559256, 0.234901, 0.795018,
		-0.445320, -0.894024, -0.049106,
		0.699230, -0.381501, 0.604594,
		43.989109, 27.692360, 26.521231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114525, 27.645914, 26.590057>,  <43.499645, 27.959410, 26.098015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114525, 27.645914, 26.590057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.466663, 27.719650, 26.764875>,  <43.677948, 27.763891, 26.869766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.466663, 27.719650, 26.764875>,  <43.114525, 27.645914, 26.590057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466663, 27.719650, 26.764875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456008, 0.582531, 0.672840,
		-0.130562, -0.791629, 0.596890,
		0.880347, 0.184340, 0.437045,
		43.730766, 27.774952, 26.895988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755989, 27.085045, 26.424311>,  <43.114525, 27.645914, 26.590057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755989, 27.085045, 26.424311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456562, 27.173445, 26.174253>,  <42.276905, 27.226484, 26.024220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.456562, 27.173445, 26.174253>,  <42.755989, 27.085045, 26.424311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456562, 27.173445, 26.174253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571927, -0.261816, -0.777401,
		-0.335479, -0.939474, 0.069591,
		-0.748568, 0.221001, -0.625144,
		42.231991, 27.239744, 25.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751041, 26.533518, 25.875820>,  <42.755989, 27.085045, 26.424311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751041, 26.533518, 25.875820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540958, 26.831619, 25.711502>,  <42.414909, 27.010481, 25.612911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.540958, 26.831619, 25.711502>,  <42.751041, 26.533518, 25.875820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540958, 26.831619, 25.711502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372843, -0.232409, -0.898318,
		-0.764948, -0.624965, -0.155800,
		-0.525208, 0.745255, -0.410794,
		42.383396, 27.055195, 25.588264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587513, 26.265192, 25.245197>,  <42.751041, 26.533518, 25.875820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587513, 26.265192, 25.245197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544178, 26.660400, 25.201241>,  <42.518177, 26.897526, 25.174868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544178, 26.660400, 25.201241>,  <42.587513, 26.265192, 25.245197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544178, 26.660400, 25.201241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576720, -0.027571, -0.816476,
		-0.809726, -0.151833, -0.566825,
		-0.108340, 0.988021, -0.109890,
		42.511677, 26.956806, 25.168274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313221, 26.354462, 24.550617>,  <42.587513, 26.265192, 25.245197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313221, 26.354462, 24.550617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449516, 26.718454, 24.645128>,  <42.531292, 26.936852, 24.701836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.449516, 26.718454, 24.645128>,  <42.313221, 26.354462, 24.550617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449516, 26.718454, 24.645128> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288374, 0.138045, -0.947514,
		-0.894840, 0.390989, -0.215379,
		0.340736, 0.909984, 0.236280,
		42.551739, 26.991449, 24.716013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147675, 26.818182, 23.935421>,  <42.313221, 26.354462, 24.550617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147675, 26.818182, 23.935421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.432747, 27.012825, 24.137529>,  <42.603790, 27.129612, 24.258795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.432747, 27.012825, 24.137529>,  <42.147675, 26.818182, 23.935421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432747, 27.012825, 24.137529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394571, 0.317469, -0.862280,
		-0.580001, 0.813896, 0.034252,
		0.712680, 0.486608, 0.505272,
		42.646549, 27.158808, 24.289110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268040, 27.434696, 23.531944>,  <42.147675, 26.818182, 23.935421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268040, 27.434696, 23.531944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.595016, 27.379513, 23.755644>,  <42.791203, 27.346403, 23.889864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.595016, 27.379513, 23.755644>,  <42.268040, 27.434696, 23.531944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595016, 27.379513, 23.755644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575930, 0.179260, -0.797603,
		0.009786, 0.974081, 0.225990,
		0.817440, -0.137960, 0.559248,
		42.840248, 27.338125, 23.923418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.615543, 27.965294, 23.396906>,  <42.268040, 27.434696, 23.531944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.615543, 27.965294, 23.396906> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857082, 27.677599, 23.534349>,  <43.002007, 27.504982, 23.616816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.857082, 27.677599, 23.534349>,  <42.615543, 27.965294, 23.396906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857082, 27.677599, 23.534349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512084, 0.019686, -0.858710,
		0.610852, 0.694486, 0.380197,
		0.603847, -0.719237, 0.343610,
		43.038235, 27.461828, 23.637432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742771, 28.681444, 23.254328>,  <42.615543, 27.965294, 23.396906>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742771, 28.681444, 23.254328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.549332, 28.855869, 22.950754>,  <42.433270, 28.960526, 22.768610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.549332, 28.855869, 22.950754>,  <42.742771, 28.681444, 23.254328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549332, 28.855869, 22.950754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763478, 0.213888, 0.609388,
		0.428059, 0.874128, 0.229489,
		-0.483598, 0.436064, -0.758934,
		42.404251, 28.986689, 22.723074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522949, 29.373991, 23.530384>,  <42.742771, 28.681444, 23.254328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522949, 29.373991, 23.530384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290363, 29.323097, 23.208960>,  <42.150810, 29.292561, 23.016106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.290363, 29.323097, 23.208960>,  <42.522949, 29.373991, 23.530384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290363, 29.323097, 23.208960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812175, 0.032968, 0.582482,
		-0.047621, 0.991325, -0.122507,
		-0.581467, -0.127235, -0.803559,
		42.115925, 29.284927, 22.967892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.097092, 30.046709, 23.445639>,  <42.522949, 29.373991, 23.530384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.097092, 30.046709, 23.445639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.920990, 29.734739, 23.267698>,  <41.815331, 29.547558, 23.160934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.920990, 29.734739, 23.267698>,  <42.097092, 30.046709, 23.445639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920990, 29.734739, 23.267698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837085, 0.177331, 0.517535,
		-0.324752, 0.600226, -0.730934,
		-0.440255, -0.779924, -0.444852,
		41.788914, 29.500761, 23.134243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.482231, 30.276091, 23.287430>,  <42.097092, 30.046709, 23.445639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.482231, 30.276091, 23.287430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429234, 29.880064, 23.306246>,  <41.397434, 29.642448, 23.317535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.429234, 29.880064, 23.306246>,  <41.482231, 30.276091, 23.287430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429234, 29.880064, 23.306246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849246, 0.137861, 0.509682,
		-0.511104, 0.027582, -0.859076,
		-0.132491, -0.990067, 0.047038,
		41.389484, 29.583044, 23.320356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890717, 30.258047, 22.963923>,  <41.482231, 30.276091, 23.287430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890717, 30.258047, 22.963923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946358, 29.927942, 23.182863>,  <40.979744, 29.729879, 23.314228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.946358, 29.927942, 23.182863>,  <40.890717, 30.258047, 22.963923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946358, 29.927942, 23.182863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883224, 0.146571, 0.445458,
		-0.447845, -0.545398, -0.708502,
		0.139106, -0.825262, 0.547350,
		40.988091, 29.680363, 23.347069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268837, 29.887188, 22.847260>,  <40.890717, 30.258047, 22.963923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268837, 29.887188, 22.847260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430428, 29.713762, 23.169458>,  <40.527382, 29.609707, 23.362778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.430428, 29.713762, 23.169458>,  <40.268837, 29.887188, 22.847260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430428, 29.713762, 23.169458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849947, 0.147659, 0.505754,
		-0.338215, -0.888943, -0.308854,
		0.403981, -0.433563, 0.805495,
		40.551620, 29.583693, 23.411106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680511, 29.641390, 23.074635>,  <40.268837, 29.887188, 22.847260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680511, 29.641390, 23.074635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913525, 29.585602, 23.394936>,  <40.053333, 29.552130, 23.587116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.913525, 29.585602, 23.394936>,  <39.680511, 29.641390, 23.074635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913525, 29.585602, 23.394936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807697, -0.209615, 0.551078,
		0.090991, -0.967786, -0.234757,
		0.582535, -0.139470, 0.800751,
		40.088284, 29.543760, 23.635160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<45.960007, 31.567541, 20.782066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.125511, 31.299355, 21.028408>,  <46.224815, 31.138443, 21.176214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.125511, 31.299355, 21.028408>,  <45.960007, 31.567541, 20.782066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125511, 31.299355, 21.028408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774171, 0.096818, 0.625528,
		-0.479021, -0.735597, -0.478995,
		0.413761, -0.670466, 0.615856,
		46.249641, 31.098215, 21.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.479210, 30.973825, 20.906351>,  <45.960007, 31.567541, 20.782066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.479210, 30.973825, 20.906351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.737247, 31.009960, 21.209848>,  <45.892071, 31.031641, 21.391947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.737247, 31.009960, 21.209848>,  <45.479210, 30.973825, 20.906351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737247, 31.009960, 21.209848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758313, 0.197681, 0.621195,
		-0.093872, -0.976095, 0.196028,
		0.645096, 0.090337, 0.758742,
		45.930775, 31.037062, 21.437471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.105824, 30.709480, 21.411846>,  <45.479210, 30.973825, 20.906351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.105824, 30.709480, 21.411846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390205, 30.916967, 21.601782>,  <45.560837, 31.041460, 21.715744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.390205, 30.916967, 21.601782>,  <45.105824, 30.709480, 21.411846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390205, 30.916967, 21.601782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671123, 0.298757, 0.678482,
		0.210075, -0.801050, 0.560524,
		0.710959, 0.518713, 0.474842,
		45.603493, 31.072582, 21.744234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928417, 30.633308, 22.080490>,  <45.105824, 30.709480, 21.411846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928417, 30.633308, 22.080490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.165215, 30.955357, 22.065939>,  <45.307293, 31.148586, 22.057209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.165215, 30.955357, 22.065939>,  <44.928417, 30.633308, 22.080490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165215, 30.955357, 22.065939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520797, 0.416603, 0.745126,
		0.615071, -0.422164, 0.665931,
		0.591994, 0.805120, -0.036378,
		45.342812, 31.196892, 22.055025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041206, 30.753696, 22.728518>,  <44.928417, 30.633308, 22.080490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041206, 30.753696, 22.728518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.110008, 31.104525, 22.549116>,  <45.151291, 31.315022, 22.441475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.110008, 31.104525, 22.549116>,  <45.041206, 30.753696, 22.728518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110008, 31.104525, 22.549116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587812, 0.456736, 0.667734,
		0.790500, 0.148781, 0.594116,
		0.172008, 0.877072, -0.448506,
		45.161610, 31.367647, 22.414564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030823, 31.244181, 23.240517>,  <45.041206, 30.753696, 22.728518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030823, 31.244181, 23.240517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.955887, 31.470749, 22.919500>,  <44.910927, 31.606689, 22.726891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.955887, 31.470749, 22.919500>,  <45.030823, 31.244181, 23.240517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.955887, 31.470749, 22.919500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602769, 0.578811, 0.549224,
		0.775612, 0.586637, 0.232988,
		-0.187339, 0.566423, -0.802540,
		44.899685, 31.640676, 22.678738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282970, 31.971067, 23.378418>,  <45.030823, 31.244181, 23.240517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282970, 31.971067, 23.378418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.044662, 32.010998, 23.059647>,  <44.901680, 32.034958, 22.868383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.044662, 32.010998, 23.059647>,  <45.282970, 31.971067, 23.378418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044662, 32.010998, 23.059647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396970, 0.825971, 0.400233,
		0.698195, 0.554803, -0.452458,
		-0.595767, 0.099828, -0.796929,
		44.865932, 32.040947, 22.820568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229565, 32.679298, 23.300943>,  <45.282970, 31.971067, 23.378418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229565, 32.679298, 23.300943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.912682, 32.517628, 23.118059>,  <44.722549, 32.420624, 23.008327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.912682, 32.517628, 23.118059>,  <45.229565, 32.679298, 23.300943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912682, 32.517628, 23.118059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590270, 0.697658, 0.406024,
		0.154872, 0.591534, -0.791266,
		-0.792210, -0.404179, -0.457212,
		44.675018, 32.396374, 22.980896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762341, 33.270496, 23.206379>,  <45.229565, 32.679298, 23.300943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762341, 33.270496, 23.206379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.517021, 32.955708, 23.179449>,  <44.369827, 32.766834, 23.163290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.517021, 32.955708, 23.179449>,  <44.762341, 33.270496, 23.206379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517021, 32.955708, 23.179449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716222, 0.518174, 0.467463,
		-0.332994, 0.334917, -0.881445,
		-0.613303, -0.786973, -0.067326,
		44.333031, 32.719616, 23.159250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073769, 33.481670, 22.963913>,  <44.762341, 33.270496, 23.206379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073769, 33.481670, 22.963913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.008141, 33.131641, 23.146048>,  <43.968765, 32.921623, 23.255327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.008141, 33.131641, 23.146048>,  <44.073769, 33.481670, 22.963913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008141, 33.131641, 23.146048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804688, 0.385715, 0.451332,
		-0.570578, -0.292354, -0.767443,
		-0.164065, -0.875073, 0.455335,
		43.958920, 32.869118, 23.282648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418369, 33.293919, 22.731791>,  <44.073769, 33.481670, 22.963913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418369, 33.293919, 22.731791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471786, 33.094673, 23.074497>,  <43.503838, 32.975124, 23.280121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.471786, 33.094673, 23.074497>,  <43.418369, 33.293919, 22.731791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471786, 33.094673, 23.074497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849136, 0.388258, 0.358083,
		-0.511012, -0.775330, -0.371119,
		0.133542, -0.498116, 0.856765,
		43.511848, 32.945240, 23.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.810818, 33.130970, 22.995888>,  <43.418369, 33.293919, 22.731791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.810818, 33.130970, 22.995888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.016766, 33.081360, 23.335188>,  <43.140335, 33.051594, 23.538767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.016766, 33.081360, 23.335188>,  <42.810818, 33.130970, 22.995888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016766, 33.081360, 23.335188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740283, 0.434655, 0.512890,
		-0.432305, -0.892016, 0.131980,
		0.514872, -0.124023, 0.848248,
		43.171227, 33.044151, 23.589663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075096, 32.712158, 22.880493>,  <42.810818, 33.130970, 22.995888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075096, 32.712158, 22.880493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.763809, 32.659576, 22.634863>,  <41.577038, 32.628029, 22.487484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.763809, 32.659576, 22.634863>,  <42.075096, 32.712158, 22.880493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763809, 32.659576, 22.634863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617551, -0.337738, -0.710326,
		-0.114024, -0.932016, 0.344014,
		-0.778222, -0.131452, -0.614078,
		41.530342, 32.620140, 22.450640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914322, 31.911913, 22.667257>,  <42.075096, 32.712158, 22.880493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914322, 31.911913, 22.667257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769405, 32.180393, 22.408573>,  <41.682453, 32.341480, 22.253363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.769405, 32.180393, 22.408573>,  <41.914322, 31.911913, 22.667257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769405, 32.180393, 22.408573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563222, -0.395188, -0.725677,
		-0.742646, -0.627150, -0.234860,
		-0.362295, 0.671200, -0.646710,
		41.660717, 32.381752, 22.214560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032211, 31.590326, 22.050873>,  <41.914322, 31.911913, 22.667257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032211, 31.590326, 22.050873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930065, 31.940834, 21.887440>,  <41.868778, 32.151138, 21.789381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.930065, 31.940834, 21.887440>,  <42.032211, 31.590326, 22.050873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930065, 31.940834, 21.887440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590102, -0.193493, -0.783798,
		-0.765876, -0.441262, -0.467677,
		-0.255368, 0.876269, -0.408581,
		41.853455, 32.203716, 21.764866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789330, 31.462667, 21.410011>,  <42.032211, 31.590326, 22.050873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789330, 31.462667, 21.410011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.902229, 31.846140, 21.395767>,  <41.969967, 32.076221, 21.387220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.902229, 31.846140, 21.395767>,  <41.789330, 31.462667, 21.410011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.902229, 31.846140, 21.395767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512041, -0.181933, -0.839473,
		-0.811265, 0.218705, -0.542234,
		0.282247, 0.958680, -0.035610,
		41.986904, 32.133743, 21.385084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552505, 31.737387, 20.718370>,  <41.789330, 31.462667, 21.410011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552505, 31.737387, 20.718370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836460, 31.997843, 20.825756>,  <42.006832, 32.154118, 20.890188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836460, 31.997843, 20.825756>,  <41.552505, 31.737387, 20.718370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836460, 31.997843, 20.825756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558710, -0.288535, -0.777554,
		-0.428835, 0.701972, -0.568626,
		0.709890, 0.651140, 0.268465,
		42.049427, 32.193184, 20.906296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766014, 32.040295, 20.066544>,  <41.552505, 31.737387, 20.718370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766014, 32.040295, 20.066544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057953, 32.123695, 20.326958>,  <42.233116, 32.173737, 20.483206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.057953, 32.123695, 20.326958>,  <41.766014, 32.040295, 20.066544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057953, 32.123695, 20.326958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683092, -0.259426, -0.682703,
		0.026554, 0.942988, -0.331765,
		0.729850, 0.208498, 0.651036,
		42.276909, 32.186245, 20.522268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096703, 32.628250, 19.809900>,  <41.766014, 32.040295, 20.066544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096703, 32.628250, 19.809900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.367493, 32.418667, 20.016655>,  <42.529968, 32.292919, 20.140707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.367493, 32.418667, 20.016655>,  <42.096703, 32.628250, 19.809900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367493, 32.418667, 20.016655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554533, -0.098657, -0.826293,
		0.483933, 0.846014, 0.223761,
		0.676979, -0.523954, 0.516886,
		42.570587, 32.261482, 20.171721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873669, 32.832985, 19.488466>,  <42.096703, 32.628250, 19.809900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873669, 32.832985, 19.488466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922646, 32.497131, 19.700136>,  <42.952030, 32.295620, 19.827137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.922646, 32.497131, 19.700136>,  <42.873669, 32.832985, 19.488466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922646, 32.497131, 19.700136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612818, -0.355443, -0.705772,
		0.780680, 0.410704, 0.471021,
		0.122443, -0.839633, 0.529174,
		42.959377, 32.245243, 19.858889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.536098, 32.686245, 19.261194>,  <42.873669, 32.832985, 19.488466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.536098, 32.686245, 19.261194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.435040, 32.342957, 19.439909>,  <43.374405, 32.136982, 19.547138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.435040, 32.342957, 19.439909>,  <43.536098, 32.686245, 19.261194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.435040, 32.342957, 19.439909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664893, -0.489464, -0.564219,
		0.702913, 0.154516, 0.694290,
		-0.252649, -0.858225, 0.446787,
		43.359245, 32.085487, 19.573944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.157818, 32.348091, 19.507982>,  <43.536098, 32.686245, 19.261194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.157818, 32.348091, 19.507982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.875458, 32.066029, 19.481285>,  <43.706039, 31.896791, 19.465267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.875458, 32.066029, 19.481285>,  <44.157818, 32.348091, 19.507982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875458, 32.066029, 19.481285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648928, -0.606083, -0.459953,
		0.283887, -0.367994, 0.885432,
		-0.705904, -0.705156, -0.066743,
		43.663685, 31.854483, 19.461262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.419357, 31.746908, 19.859957>,  <44.157818, 32.348091, 19.507982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.419357, 31.746908, 19.859957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.144146, 31.625416, 19.596331>,  <43.979019, 31.552521, 19.438156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.144146, 31.625416, 19.596331>,  <44.419357, 31.746908, 19.859957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144146, 31.625416, 19.596331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641574, -0.679000, -0.356849,
		-0.339117, -0.668360, 0.662038,
		-0.688027, -0.303733, -0.659063,
		43.937737, 31.534296, 19.398611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298035, 31.083315, 19.896416>,  <44.419357, 31.746908, 19.859957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298035, 31.083315, 19.896416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.154934, 31.140244, 19.527252>,  <44.069073, 31.174400, 19.305754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.154934, 31.140244, 19.527252>,  <44.298035, 31.083315, 19.896416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154934, 31.140244, 19.527252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619762, -0.703086, -0.348661,
		-0.698507, -0.696716, 0.163321,
		-0.357746, 0.142322, -0.922910,
		44.047611, 31.182940, 19.250380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447701, 30.391352, 19.524660>,  <44.298035, 31.083315, 19.896416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447701, 30.391352, 19.524660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.371384, 30.671144, 19.249176>,  <44.325592, 30.839020, 19.083885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.371384, 30.671144, 19.249176>,  <44.447701, 30.391352, 19.524660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371384, 30.671144, 19.249176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571314, -0.491406, -0.657359,
		-0.798247, -0.518889, -0.305868,
		-0.190791, 0.699482, -0.688712,
		44.314148, 30.880989, 19.042562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683041, 30.202761, 20.210917>,  <44.447701, 30.391352, 19.524660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683041, 30.202761, 20.210917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.450642, 29.892380, 20.112656>,  <44.311203, 29.706152, 20.053699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.450642, 29.892380, 20.112656>,  <44.683041, 30.202761, 20.210917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450642, 29.892380, 20.112656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441413, 0.046827, 0.896082,
		-0.683812, 0.629053, -0.369721,
		-0.580996, -0.775951, -0.245651,
		44.276344, 29.659594, 20.038960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.870926, 30.308378, 20.378609>,  <44.683041, 30.202761, 20.210917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.870926, 30.308378, 20.378609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.896122, 29.914082, 20.316195>,  <43.911240, 29.677504, 20.278746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.896122, 29.914082, 20.316195>,  <43.870926, 30.308378, 20.378609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896122, 29.914082, 20.316195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581703, -0.163304, 0.796840,
		-0.810959, 0.040578, -0.583694,
		0.062986, -0.985741, -0.156037,
		43.915016, 29.618359, 20.269382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209831, 30.022070, 20.288813>,  <43.870926, 30.308378, 20.378609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209831, 30.022070, 20.288813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.422058, 29.711056, 20.423830>,  <43.549397, 29.524448, 20.504841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.422058, 29.711056, 20.423830>,  <43.209831, 30.022070, 20.288813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.422058, 29.711056, 20.423830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614354, -0.078379, 0.785128,
		-0.584007, -0.623938, -0.519267,
		0.530571, -0.777534, 0.337545,
		43.581230, 29.477797, 20.525093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.720764, 29.617085, 20.580828>,  <43.209831, 30.022070, 20.288813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.720764, 29.617085, 20.580828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.054211, 29.466719, 20.742701>,  <43.254280, 29.376499, 20.839825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.054211, 29.466719, 20.742701>,  <42.720764, 29.617085, 20.580828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054211, 29.466719, 20.742701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509668, -0.241129, 0.825890,
		-0.212879, -0.894734, -0.392599,
		0.833619, -0.375910, 0.404686,
		43.304295, 29.353945, 20.864105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544628, 28.991375, 20.774168>,  <42.720764, 29.617085, 20.580828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544628, 28.991375, 20.774168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893639, 29.052114, 20.959917>,  <43.103046, 29.088558, 21.071365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.893639, 29.052114, 20.959917>,  <42.544628, 28.991375, 20.774168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.893639, 29.052114, 20.959917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406861, -0.300378, 0.862692,
		0.270485, -0.941655, -0.200307,
		0.872526, 0.151848, 0.464371,
		43.155396, 29.097670, 21.099228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691940, 28.397593, 21.206833>,  <42.544628, 28.991375, 20.774168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691940, 28.397593, 21.206833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.877445, 28.717970, 21.358311>,  <42.988750, 28.910196, 21.449198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.877445, 28.717970, 21.358311>,  <42.691940, 28.397593, 21.206833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.877445, 28.717970, 21.358311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543712, -0.080180, 0.835433,
		0.699499, -0.593347, 0.398298,
		0.463766, 0.800944, 0.378696,
		43.016575, 28.958254, 21.471920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755939, 28.178837, 21.880596>,  <42.691940, 28.397593, 21.206833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755939, 28.178837, 21.880596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824501, 28.572092, 21.906097>,  <42.865639, 28.808044, 21.921398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824501, 28.572092, 21.906097>,  <42.755939, 28.178837, 21.880596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824501, 28.572092, 21.906097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531927, 0.037881, 0.845942,
		0.829261, -0.178911, 0.529450,
		0.171404, 0.983136, 0.063754,
		42.875923, 28.867033, 21.925224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060780, 28.294416, 22.517992>,  <42.755939, 28.178837, 21.880596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060780, 28.294416, 22.517992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.866173, 28.622135, 22.396631>,  <42.749409, 28.818766, 22.323814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.866173, 28.622135, 22.396631>,  <43.060780, 28.294416, 22.517992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866173, 28.622135, 22.396631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460387, 0.054725, 0.886030,
		0.742524, 0.570754, 0.350568,
		-0.486520, 0.819295, -0.303403,
		42.720215, 28.867924, 22.305611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342262, 28.190590, 23.220230>,  <43.060780, 28.294416, 22.517992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342262, 28.190590, 23.220230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.380539, 27.799686, 23.295918>,  <43.403507, 27.565144, 23.341330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.380539, 27.799686, 23.295918>,  <43.342262, 28.190590, 23.220230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.380539, 27.799686, 23.295918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701191, -0.068741, -0.709651,
		0.706522, 0.200589, 0.678669,
		0.095696, -0.977261, 0.189219,
		43.409248, 27.506508, 23.352684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.037571, 28.065617, 23.389380>,  <43.342262, 28.190590, 23.220230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.037571, 28.065617, 23.389380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882236, 27.713057, 23.281805>,  <43.789036, 27.501520, 23.217260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882236, 27.713057, 23.281805>,  <44.037571, 28.065617, 23.389380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882236, 27.713057, 23.281805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695122, -0.088583, -0.713414,
		0.604981, -0.463988, 0.647081,
		-0.388335, -0.881401, -0.268937,
		43.765736, 27.448637, 23.201124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.609501, 27.506294, 23.377758>,  <44.037571, 28.065617, 23.389380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.609501, 27.506294, 23.377758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317883, 27.391409, 23.129244>,  <44.142910, 27.322477, 22.980135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.317883, 27.391409, 23.129244>,  <44.609501, 27.506294, 23.377758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317883, 27.391409, 23.129244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658672, -0.047587, -0.750924,
		0.186111, -0.956683, 0.223873,
		-0.729050, -0.287215, -0.621284,
		44.099167, 27.305244, 22.942858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938004, 26.957283, 22.962851>,  <44.609501, 27.506294, 23.377758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938004, 26.957283, 22.962851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.617859, 27.068270, 22.750275>,  <44.425770, 27.134861, 22.622728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.617859, 27.068270, 22.750275>,  <44.938004, 26.957283, 22.962851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617859, 27.068270, 22.750275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560196, 0.030389, -0.827803,
		-0.213537, -0.960255, -0.179758,
		-0.800364, 0.277466, -0.531442,
		44.377750, 27.151510, 22.590841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946342, 26.560356, 22.400621>,  <44.938004, 26.957283, 22.962851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946342, 26.560356, 22.400621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766373, 26.904734, 22.305672>,  <44.658390, 27.111361, 22.248703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.766373, 26.904734, 22.305672>,  <44.946342, 26.560356, 22.400621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766373, 26.904734, 22.305672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611279, 0.103106, -0.784670,
		-0.651083, -0.498142, -0.572666,
		-0.449922, 0.860944, -0.237373,
		44.631397, 27.163017, 22.234459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.798386, 26.519976, 21.690218>,  <44.946342, 26.560356, 22.400621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.798386, 26.519976, 21.690218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.751572, 26.907501, 21.777578>,  <44.723484, 27.140017, 21.829994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.751572, 26.907501, 21.777578>,  <44.798386, 26.519976, 21.690218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751572, 26.907501, 21.777578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555579, 0.246151, -0.794193,
		-0.823185, 0.028387, -0.567063,
		-0.117038, 0.968816, 0.218399,
		44.716461, 27.198147, 21.843098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.752605, 26.766249, 21.109848>,  <44.798386, 26.519976, 21.690218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.752605, 26.766249, 21.109848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.831863, 27.105923, 21.305655>,  <44.879417, 27.309727, 21.423140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.831863, 27.105923, 21.305655>,  <44.752605, 26.766249, 21.109848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831863, 27.105923, 21.305655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571274, 0.305777, -0.761674,
		-0.796484, 0.430568, -0.424529,
		0.198141, 0.849183, 0.489518,
		44.891304, 27.360678, 21.452511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593727, 27.395975, 20.696335>,  <44.752605, 26.766249, 21.109848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593727, 27.395975, 20.696335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.882587, 27.486704, 20.957729>,  <45.055904, 27.541142, 21.114567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.882587, 27.486704, 20.957729>,  <44.593727, 27.395975, 20.696335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882587, 27.486704, 20.957729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611632, 0.231902, -0.756391,
		-0.323111, 0.945925, 0.028738,
		0.722153, 0.226822, 0.653488,
		45.099232, 27.554750, 21.153776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.948940, 28.019258, 20.429411>,  <44.593727, 27.395975, 20.696335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.948940, 28.019258, 20.429411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.187336, 27.860411, 20.708580>,  <45.330372, 27.765102, 20.876081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.187336, 27.860411, 20.708580>,  <44.948940, 28.019258, 20.429411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.187336, 27.860411, 20.708580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786666, 0.114377, -0.606691,
		0.161103, 0.910612, 0.380568,
		0.595988, -0.397120, 0.697921,
		45.366131, 27.741274, 20.917955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.335564, 30.372133, 33.077877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684361, 30.463427, 33.251099>,  <35.893639, 30.518202, 33.355030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.684361, 30.463427, 33.251099>,  <35.335564, 30.372133, 33.077877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684361, 30.463427, 33.251099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441643, 0.014761, -0.897070,
		-0.211134, 0.973494, -0.087926,
		0.871994, 0.228234, 0.433053,
		35.945957, 30.531897, 33.381016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665005, 30.890188, 32.685600>,  <35.335564, 30.372133, 33.077877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665005, 30.890188, 32.685600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961761, 30.714531, 32.888283>,  <36.139816, 30.609137, 33.009892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.961761, 30.714531, 32.888283>,  <35.665005, 30.890188, 32.685600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961761, 30.714531, 32.888283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496158, -0.148787, -0.855389,
		0.451030, 0.886011, 0.107501,
		0.741889, -0.439143, 0.506709,
		36.184330, 30.582788, 33.040295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350586, 31.119930, 32.441639>,  <35.665005, 30.890188, 32.685600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350586, 31.119930, 32.441639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445015, 30.786945, 32.642147>,  <36.501671, 30.587154, 32.762451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.445015, 30.786945, 32.642147>,  <36.350586, 31.119930, 32.441639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445015, 30.786945, 32.642147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614469, -0.271742, -0.740665,
		0.752793, 0.482867, 0.447372,
		0.236073, -0.832464, 0.501272,
		36.515839, 30.537207, 32.792530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082047, 31.082355, 32.444592>,  <36.350586, 31.119930, 32.441639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082047, 31.082355, 32.444592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929779, 30.713818, 32.476116>,  <36.838417, 30.492695, 32.495033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929779, 30.713818, 32.476116>,  <37.082047, 31.082355, 32.444592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929779, 30.713818, 32.476116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605164, -0.312662, -0.732133,
		0.699191, -0.231003, 0.676587,
		-0.380668, -0.921347, 0.078816,
		36.815578, 30.437414, 32.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632534, 30.738964, 32.336964>,  <37.082047, 31.082355, 32.444592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632534, 30.738964, 32.336964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350800, 30.455078, 32.331120>,  <37.181759, 30.284746, 32.327614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350800, 30.455078, 32.331120>,  <37.632534, 30.738964, 32.336964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350800, 30.455078, 32.331120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459180, -0.439815, -0.771826,
		0.541351, -0.550334, 0.635665,
		-0.704338, -0.709714, -0.014608,
		37.139500, 30.242165, 32.326736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045349, 30.144350, 32.242748>,  <37.632534, 30.738964, 32.336964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045349, 30.144350, 32.242748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675121, 30.044691, 32.128735>,  <37.452984, 29.984896, 32.060326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.675121, 30.044691, 32.128735>,  <38.045349, 30.144350, 32.242748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675121, 30.044691, 32.128735> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367816, -0.413593, -0.832858,
		0.089616, -0.875709, 0.474449,
		-0.925570, -0.249147, -0.285036,
		37.397449, 29.969948, 32.043224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163097, 29.519503, 32.002342>,  <38.045349, 30.144350, 32.242748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163097, 29.519503, 32.002342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.810745, 29.618843, 31.841162>,  <37.599335, 29.678448, 31.744453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.810745, 29.618843, 31.841162>,  <38.163097, 29.519503, 32.002342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810745, 29.618843, 31.841162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252825, -0.472815, -0.844112,
		-0.400153, -0.845440, 0.353706,
		-0.880884, 0.248348, -0.402947,
		37.546482, 29.693348, 31.720278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796234, 28.892193, 31.716019>,  <38.163097, 29.519503, 32.002342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796234, 28.892193, 31.716019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667698, 29.223053, 31.531601>,  <37.590576, 29.421570, 31.420950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667698, 29.223053, 31.531601>,  <37.796234, 28.892193, 31.716019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667698, 29.223053, 31.531601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190430, -0.420477, -0.887094,
		-0.927620, -0.372853, -0.022399,
		-0.321337, 0.827152, -0.461045,
		37.571297, 29.471199, 31.393288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438065, 28.664415, 31.131403>,  <37.796234, 28.892193, 31.716019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438065, 28.664415, 31.131403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490242, 29.054970, 31.062527>,  <37.521549, 29.289303, 31.021200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.490242, 29.054970, 31.062527>,  <37.438065, 28.664415, 31.131403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490242, 29.054970, 31.062527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056799, -0.180749, -0.981888,
		-0.989827, 0.118303, -0.079035,
		0.130446, 0.976388, -0.172191,
		37.529377, 29.347887, 31.010870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029400, 28.843147, 30.478127>,  <37.438065, 28.664415, 31.131403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029400, 28.843147, 30.478127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339733, 29.088757, 30.536182>,  <37.525932, 29.236122, 30.571016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.339733, 29.088757, 30.536182>,  <37.029400, 28.843147, 30.478127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339733, 29.088757, 30.536182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323103, -0.189056, -0.927288,
		-0.541935, 0.766313, -0.345067,
		0.775829, 0.614022, 0.145142,
		37.572483, 29.272963, 30.579725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143265, 29.158720, 29.843056>,  <37.029400, 28.843147, 30.478127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143265, 29.158720, 29.843056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486885, 29.275919, 30.010950>,  <37.693058, 29.346239, 30.111687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.486885, 29.275919, 30.010950>,  <37.143265, 29.158720, 29.843056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486885, 29.275919, 30.010950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488883, -0.226575, -0.842411,
		-0.151723, 0.928879, -0.337882,
		0.859054, 0.292998, 0.419737,
		37.744602, 29.363819, 30.136871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360149, 29.726072, 29.441599>,  <37.143265, 29.158720, 29.843056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360149, 29.726072, 29.441599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667587, 29.556404, 29.633156>,  <37.852051, 29.454603, 29.748089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.667587, 29.556404, 29.633156>,  <37.360149, 29.726072, 29.441599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667587, 29.556404, 29.633156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448336, -0.176844, -0.876197,
		0.456344, 0.888148, 0.054248,
		0.768599, -0.424168, 0.478891,
		37.898167, 29.429153, 29.776823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342194, 30.313673, 29.015162>,  <37.360149, 29.726072, 29.441599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342194, 30.313673, 29.015162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038898, 30.271967, 28.757727>,  <36.856922, 30.246943, 28.603266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038898, 30.271967, 28.757727>,  <37.342194, 30.313673, 29.015162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038898, 30.271967, 28.757727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594467, 0.515931, 0.616786,
		0.267736, 0.850261, -0.453181,
		-0.758239, -0.104265, -0.643585,
		36.811428, 30.240688, 28.564651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089657, 30.882788, 28.968010>,  <37.342194, 30.313673, 29.015162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089657, 30.882788, 28.968010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768803, 30.667122, 28.865335>,  <36.576290, 30.537724, 28.803730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768803, 30.667122, 28.865335>,  <37.089657, 30.882788, 28.968010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768803, 30.667122, 28.865335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587412, 0.635136, 0.501547,
		-0.107385, 0.553087, -0.826173,
		-0.802132, -0.539163, -0.256686,
		36.528164, 30.505373, 28.788330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504059, 31.321712, 29.078907>,  <37.089657, 30.882788, 28.968010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504059, 31.321712, 29.078907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328339, 30.971962, 28.996464>,  <36.222908, 30.762112, 28.946997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328339, 30.971962, 28.996464>,  <36.504059, 31.321712, 29.078907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328339, 30.971962, 28.996464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853842, 0.335080, 0.398341,
		-0.279237, 0.350975, -0.893780,
		-0.439296, -0.874379, -0.206110,
		36.196548, 30.709648, 28.934631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957989, 31.487345, 28.672325>,  <36.504059, 31.321712, 29.078907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957989, 31.487345, 28.672325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887737, 31.148512, 28.872965>,  <35.845585, 30.945211, 28.993349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887737, 31.148512, 28.872965>,  <35.957989, 31.487345, 28.672325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887737, 31.148512, 28.872965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771682, 0.434835, 0.464139,
		-0.611278, -0.305561, -0.730049,
		-0.175628, -0.847084, 0.501602,
		35.835049, 30.894386, 29.023445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266258, 31.433140, 28.576611>,  <35.957989, 31.487345, 28.672325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266258, 31.433140, 28.576611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363602, 31.187986, 28.877317>,  <35.422009, 31.040894, 29.057741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.363602, 31.187986, 28.877317>,  <35.266258, 31.433140, 28.576611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363602, 31.187986, 28.877317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747056, 0.375891, 0.548281,
		-0.618615, -0.695039, -0.366383,
		0.243357, -0.612884, 0.751765,
		35.436607, 31.004122, 29.102846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693005, 31.244398, 28.878979>,  <35.266258, 31.433140, 28.576611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693005, 31.244398, 28.878979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934486, 31.161686, 29.186947>,  <35.079376, 31.112059, 29.371729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.934486, 31.161686, 29.186947>,  <34.693005, 31.244398, 28.878979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934486, 31.161686, 29.186947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711508, 0.295850, 0.637361,
		-0.359574, -0.932585, 0.031482,
		0.603708, -0.206779, 0.769922,
		35.115601, 31.099653, 29.417923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265228, 30.933821, 29.550409>,  <34.693005, 31.244398, 28.878979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265228, 30.933821, 29.550409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593285, 31.117086, 29.687494>,  <34.790119, 31.227047, 29.769745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.593285, 31.117086, 29.687494>,  <34.265228, 30.933821, 29.550409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593285, 31.117086, 29.687494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499050, 0.279852, 0.820141,
		0.279852, -0.843663, 0.458166,
		-0.820141, -0.458166, -0.342713,
		34.839329, 31.254536, 29.790308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253479, 30.951431, 30.311407>,  <34.265228, 30.933821, 29.550409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253479, 30.951431, 30.311407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527668, 31.236811, 30.253267>,  <34.692181, 31.408037, 30.218384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527668, 31.236811, 30.253267>,  <34.253479, 30.951431, 30.311407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527668, 31.236811, 30.253267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488478, 0.598656, 0.634823,
		0.539926, -0.364152, 0.758863,
		0.685470, 0.713446, -0.145349,
		34.733307, 31.450844, 30.209661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505550, 31.121138, 30.938515>,  <34.253479, 30.951431, 30.311407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505550, 31.121138, 30.938515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601734, 31.430513, 30.703918>,  <34.659443, 31.616138, 30.563160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.601734, 31.430513, 30.703918>,  <34.505550, 31.121138, 30.938515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601734, 31.430513, 30.703918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486476, 0.618883, 0.616705,
		0.839953, 0.137024, 0.525074,
		0.240456, 0.773439, -0.586492,
		34.673870, 31.662546, 30.527971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209526, 31.688236, 31.278343>,  <34.505550, 31.121138, 30.938515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209526, 31.688236, 31.278343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331451, 31.890898, 30.955755>,  <34.404606, 32.012493, 30.762203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.331451, 31.890898, 30.955755>,  <34.209526, 31.688236, 31.278343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331451, 31.890898, 30.955755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459595, 0.819897, 0.341380,
		0.834184, 0.266593, 0.482769,
		0.304812, 0.506652, -0.806470,
		34.422897, 32.042892, 30.713814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435547, 32.305344, 31.600618>,  <34.209526, 31.688236, 31.278343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435547, 32.305344, 31.600618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336433, 32.369827, 31.218496>,  <34.276966, 32.408520, 30.989223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.336433, 32.369827, 31.218496>,  <34.435547, 32.305344, 31.600618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336433, 32.369827, 31.218496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486208, 0.832197, 0.266550,
		0.837976, 0.530526, -0.127824,
		-0.247786, 0.161213, -0.955307,
		34.262096, 32.418190, 30.931904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513344, 33.077427, 31.405647>,  <34.435547, 32.305344, 31.600618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513344, 33.077427, 31.405647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245476, 32.905502, 31.163391>,  <34.084755, 32.802349, 31.018038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.245476, 32.905502, 31.163391>,  <34.513344, 33.077427, 31.405647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245476, 32.905502, 31.163391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627015, 0.764243, 0.150945,
		0.397980, 0.480831, -0.781290,
		-0.669675, -0.429807, -0.605642,
		34.044575, 32.776562, 30.981699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393631, 33.554966, 30.845789>,  <34.513344, 33.077427, 31.405647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393631, 33.554966, 30.845789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078831, 33.310669, 30.880711>,  <33.889950, 33.164089, 30.901665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.078831, 33.310669, 30.880711>,  <34.393631, 33.554966, 30.845789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078831, 33.310669, 30.880711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577927, 0.779333, 0.242160,
		-0.215937, 0.140124, -0.966300,
		-0.787002, -0.610742, 0.087305,
		33.842731, 33.127445, 30.906902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791676, 33.982372, 30.668175>,  <34.393631, 33.554966, 30.845789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791676, 33.982372, 30.668175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639954, 33.672836, 30.871073>,  <33.548920, 33.487114, 30.992811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.639954, 33.672836, 30.871073>,  <33.791676, 33.982372, 30.668175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639954, 33.672836, 30.871073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762905, 0.571757, 0.301779,
		-0.523550, -0.272513, -0.807237,
		-0.379305, -0.773841, 0.507245,
		33.526161, 33.440685, 31.023247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988331, 34.413406, 30.118601>,  <33.791676, 33.982372, 30.668175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988331, 34.413406, 30.118601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870468, 34.765972, 29.970930>,  <33.799751, 34.977512, 29.882328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870468, 34.765972, 29.970930>,  <33.988331, 34.413406, 30.118601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870468, 34.765972, 29.970930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589673, -0.136300, -0.796058,
		-0.751975, -0.452254, -0.479584,
		-0.294653, 0.881413, -0.369176,
		33.782074, 35.030396, 29.860178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563175, 34.326904, 29.496672>,  <33.988331, 34.413406, 30.118601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563175, 34.326904, 29.496672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779812, 34.662498, 29.475559>,  <33.909794, 34.863853, 29.462893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779812, 34.662498, 29.475559>,  <33.563175, 34.326904, 29.496672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779812, 34.662498, 29.475559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474080, -0.356677, -0.805003,
		-0.694210, 0.410960, -0.590918,
		0.541591, 0.838984, -0.052781,
		33.942287, 34.914192, 29.459724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393196, 34.667614, 28.829943>,  <33.563175, 34.326904, 29.496672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393196, 34.667614, 28.829943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757454, 34.766857, 28.962107>,  <33.976009, 34.826405, 29.041405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757454, 34.766857, 28.962107>,  <33.393196, 34.667614, 28.829943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757454, 34.766857, 28.962107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386213, -0.226898, -0.894067,
		-0.146857, 0.941785, -0.302446,
		0.910644, 0.248109, 0.330408,
		34.030647, 34.841290, 29.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738789, 35.072472, 28.359406>,  <33.393196, 34.667614, 28.829943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738789, 35.072472, 28.359406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013443, 34.883602, 28.580526>,  <34.178234, 34.770283, 28.713198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013443, 34.883602, 28.580526>,  <33.738789, 35.072472, 28.359406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013443, 34.883602, 28.580526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558180, -0.144793, -0.816989,
		0.465801, 0.869534, 0.164136,
		0.686633, -0.472171, 0.552801,
		34.219433, 34.741951, 28.746367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383030, 35.212662, 28.104015>,  <33.738789, 35.072472, 28.359406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383030, 35.212662, 28.104015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474842, 34.880566, 28.307198>,  <34.529930, 34.681309, 28.429108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474842, 34.880566, 28.307198>,  <34.383030, 35.212662, 28.104015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474842, 34.880566, 28.307198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712589, -0.212140, -0.668741,
		0.662972, 0.515462, 0.542925,
		0.229535, -0.830238, 0.507955,
		34.543701, 34.631493, 28.459583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180565, 35.136150, 27.998268>,  <34.383030, 35.212662, 28.104015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180565, 35.136150, 27.998268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041191, 34.778790, 28.111712>,  <34.957565, 34.564373, 28.179777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.041191, 34.778790, 28.111712>,  <35.180565, 35.136150, 27.998268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041191, 34.778790, 28.111712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599183, -0.444971, -0.665568,
		0.720814, -0.061973, 0.690352,
		-0.348434, -0.893398, 0.283608,
		34.936661, 34.510769, 28.196795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732876, 34.619213, 28.004387>,  <35.180565, 35.136150, 27.998268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732876, 34.619213, 28.004387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429081, 34.359043, 28.008831>,  <35.246803, 34.202942, 28.011497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.429081, 34.359043, 28.008831>,  <35.732876, 34.619213, 28.004387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429081, 34.359043, 28.008831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607419, -0.715174, -0.345787,
		0.232854, -0.255873, 0.938247,
		-0.759488, -0.650427, 0.011109,
		35.201233, 34.163914, 28.012163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929520, 34.066071, 28.255058>,  <35.732876, 34.619213, 28.004387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929520, 34.066071, 28.255058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630157, 33.941433, 28.020861>,  <35.450542, 33.866650, 27.880342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630157, 33.941433, 28.020861>,  <35.929520, 34.066071, 28.255058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630157, 33.941433, 28.020861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573743, -0.747019, -0.335831,
		-0.332733, -0.587260, 0.737844,
		-0.748404, -0.311591, -0.585494,
		35.405636, 33.847958, 27.845213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.068016, 33.288342, 28.251923>,  <35.929520, 34.066071, 28.255058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.068016, 33.288342, 28.251923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823269, 33.364822, 27.944921>,  <35.676422, 33.410709, 27.760721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823269, 33.364822, 27.944921>,  <36.068016, 33.288342, 28.251923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823269, 33.364822, 27.944921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542764, -0.604336, -0.583254,
		-0.575346, -0.773448, 0.265999,
		-0.611869, 0.191198, -0.767502,
		35.639709, 33.422184, 27.714670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909122, 32.640121, 27.876492>,  <36.068016, 33.288342, 28.251923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909122, 32.640121, 27.876492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833038, 32.929119, 27.610615>,  <35.787388, 33.102520, 27.451088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.833038, 32.929119, 27.610615>,  <35.909122, 32.640121, 27.876492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833038, 32.929119, 27.610615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541188, -0.487728, -0.685009,
		-0.819107, -0.490018, -0.298237,
		-0.190208, 0.722498, -0.664694,
		35.775974, 33.145870, 27.411207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657860, 32.338596, 27.222815>,  <35.909122, 32.640121, 27.876492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657860, 32.338596, 27.222815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814205, 32.700115, 27.153101>,  <35.908012, 32.917027, 27.111273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814205, 32.700115, 27.153101>,  <35.657860, 32.338596, 27.222815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814205, 32.700115, 27.153101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632757, -0.401344, -0.662225,
		-0.668465, 0.148559, -0.728755,
		0.390861, 0.903799, -0.174283,
		35.931465, 32.971256, 27.100817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727657, 32.371906, 26.456322>,  <35.657860, 32.338596, 27.222815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727657, 32.371906, 26.456322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970165, 32.670712, 26.565432>,  <36.115669, 32.849995, 26.630898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.970165, 32.670712, 26.565432>,  <35.727657, 32.371906, 26.456322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970165, 32.670712, 26.565432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715007, -0.361872, -0.598175,
		-0.348136, 0.557692, -0.753513,
		0.606272, 0.747013, 0.272773,
		36.152046, 32.894817, 26.647264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024632, 32.489277, 25.883860>,  <35.727657, 32.371906, 26.456322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024632, 32.489277, 25.883860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270020, 32.683945, 26.132637>,  <36.417252, 32.800743, 26.281904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.270020, 32.683945, 26.132637>,  <36.024632, 32.489277, 25.883860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270020, 32.683945, 26.132637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737057, -0.070064, -0.672189,
		-0.283555, 0.870775, -0.401682,
		0.613468, 0.486665, 0.621944,
		36.454060, 32.829945, 26.319220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314022, 33.036251, 25.447119>,  <36.024632, 32.489277, 25.883860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314022, 33.036251, 25.447119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542912, 32.951004, 25.763887>,  <36.680244, 32.899857, 25.953949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542912, 32.951004, 25.763887>,  <36.314022, 33.036251, 25.447119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542912, 32.951004, 25.763887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800901, -0.062492, -0.595527,
		0.176407, 0.975026, 0.134929,
		0.572222, -0.213120, 0.791923,
		36.714577, 32.887070, 26.001465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857208, 33.458401, 25.557922>,  <36.314022, 33.036251, 25.447119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857208, 33.458401, 25.557922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007671, 33.173561, 25.795044>,  <37.097950, 33.002655, 25.937317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.007671, 33.173561, 25.795044>,  <36.857208, 33.458401, 25.557922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007671, 33.173561, 25.795044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887210, 0.092357, -0.452026,
		0.267140, 0.695975, 0.666525,
		0.376157, -0.712102, 0.592804,
		37.120518, 32.959930, 25.972885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550293, 33.724174, 25.649139>,  <36.857208, 33.458401, 25.557922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550293, 33.724174, 25.649139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566273, 33.336559, 25.746599>,  <37.575859, 33.103989, 25.805075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566273, 33.336559, 25.746599>,  <37.550293, 33.724174, 25.649139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566273, 33.336559, 25.746599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805628, -0.113008, -0.581543,
		0.591073, 0.219523, 0.776172,
		0.039949, -0.969040, 0.243650,
		37.578259, 33.045849, 25.819695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241970, 33.515381, 25.862337>,  <37.550293, 33.724174, 25.649139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241970, 33.515381, 25.862337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085018, 33.166416, 25.745764>,  <37.990849, 32.957035, 25.675819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.085018, 33.166416, 25.745764>,  <38.241970, 33.515381, 25.862337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085018, 33.166416, 25.745764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852091, -0.225443, -0.472352,
		0.346384, -0.433669, 0.831835,
		-0.392376, -0.872414, -0.291435,
		37.967304, 32.904694, 25.658333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726276, 32.991673, 26.139336>,  <38.241970, 33.515381, 25.862337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726276, 32.991673, 26.139336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508518, 32.814457, 25.854420>,  <38.377865, 32.708126, 25.683470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.508518, 32.814457, 25.854420>,  <38.726276, 32.991673, 26.139336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508518, 32.814457, 25.854420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838500, -0.263586, -0.476908,
		0.023539, -0.856878, 0.514981,
		-0.544393, -0.443037, -0.712287,
		38.345200, 32.681545, 25.640734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012501, 32.286049, 25.968113>,  <38.726276, 32.991673, 26.139336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012501, 32.286049, 25.968113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802353, 32.412773, 25.652233>,  <38.676266, 32.488808, 25.462706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.802353, 32.412773, 25.652233>,  <39.012501, 32.286049, 25.968113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802353, 32.412773, 25.652233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725888, -0.317348, -0.610227,
		-0.443934, -0.893824, -0.063244,
		-0.525365, 0.316809, -0.789698,
		38.644745, 32.507816, 25.415323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195637, 31.890730, 25.446127>,  <39.012501, 32.286049, 25.968113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195637, 31.890730, 25.446127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.024025, 32.160465, 25.205729>,  <38.921059, 32.322308, 25.061489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.024025, 32.160465, 25.205729>,  <39.195637, 31.890730, 25.446127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024025, 32.160465, 25.205729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669090, -0.209736, -0.712972,
		-0.606836, -0.708010, -0.361209,
		-0.429033, 0.674339, -0.600998,
		38.895313, 32.362766, 25.025429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228222, 31.561899, 24.818384>,  <39.195637, 31.890730, 25.446127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228222, 31.561899, 24.818384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182060, 31.950623, 24.736149>,  <39.154362, 32.183857, 24.686808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.182060, 31.950623, 24.736149>,  <39.228222, 31.561899, 24.818384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182060, 31.950623, 24.736149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622007, -0.090667, -0.777745,
		-0.774461, -0.217632, -0.594009,
		-0.115405, 0.971811, -0.205587,
		39.147438, 32.242165, 24.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298740, 31.682184, 24.068174>,  <39.228222, 31.561899, 24.818384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298740, 31.682184, 24.068174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364830, 32.058041, 24.188023>,  <39.404484, 32.283554, 24.259932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.364830, 32.058041, 24.188023>,  <39.298740, 31.682184, 24.068174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364830, 32.058041, 24.188023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714742, 0.095253, -0.692872,
		-0.679591, 0.328633, -0.655863,
		0.165227, 0.939642, 0.299621,
		39.414398, 32.339931, 24.277908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116676, 32.145386, 23.530191>,  <39.298740, 31.682184, 24.068174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116676, 32.145386, 23.530191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.385223, 32.327576, 23.764050>,  <39.546352, 32.436890, 23.904364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.385223, 32.327576, 23.764050>,  <39.116676, 32.145386, 23.530191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385223, 32.327576, 23.764050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574798, 0.177971, -0.798707,
		-0.467843, 0.872277, -0.142324,
		0.671364, 0.455478, 0.584646,
		39.586632, 32.464218, 23.939444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296066, 32.741272, 23.205675>,  <39.116676, 32.145386, 23.530191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296066, 32.741272, 23.205675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596474, 32.732151, 23.469631>,  <39.776718, 32.726677, 23.628004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.596474, 32.732151, 23.469631>,  <39.296066, 32.741272, 23.205675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596474, 32.732151, 23.469631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650031, 0.200974, -0.732850,
		-0.115907, 0.979331, 0.165759,
		0.751017, -0.022806, 0.659889,
		39.821777, 32.725307, 23.667599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695976, 33.204376, 22.877872>,  <39.296066, 32.741272, 23.205675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695976, 33.204376, 22.877872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927124, 32.985058, 23.119678>,  <40.065815, 32.853466, 23.264763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927124, 32.985058, 23.119678>,  <39.695976, 33.204376, 22.877872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927124, 32.985058, 23.119678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771009, 0.123896, -0.624656,
		0.267597, 0.827059, 0.494334,
		0.577873, -0.548292, 0.604516,
		40.100487, 32.820572, 23.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386265, 33.560421, 22.985077>,  <39.695976, 33.204376, 22.877872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386265, 33.560421, 22.985077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.453178, 33.185963, 23.108789>,  <40.493328, 32.961288, 23.183018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.453178, 33.185963, 23.108789>,  <40.386265, 33.560421, 22.985077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453178, 33.185963, 23.108789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787923, -0.061618, -0.612683,
		0.592615, 0.346183, 0.727299,
		0.167285, -0.936141, 0.309281,
		40.503365, 32.905121, 23.201574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036232, 33.618008, 23.018995>,  <40.386265, 33.560421, 22.985077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036232, 33.618008, 23.018995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967693, 33.223942, 23.022596>,  <40.926571, 32.987503, 23.024757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.967693, 33.223942, 23.022596>,  <41.036232, 33.618008, 23.018995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967693, 33.223942, 23.022596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794993, -0.143659, -0.589363,
		0.581915, -0.093831, 0.807818,
		-0.171351, -0.985169, 0.009002,
		40.916286, 32.928391, 23.025297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654465, 33.260071, 23.050848>,  <41.036232, 33.618008, 23.018995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654465, 33.260071, 23.050848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407295, 32.996929, 22.878613>,  <41.258995, 32.839046, 22.775270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.407295, 32.996929, 22.878613>,  <41.654465, 33.260071, 23.050848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407295, 32.996929, 22.878613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720495, -0.254554, -0.645050,
		0.314738, -0.708828, 0.631271,
		-0.617922, -0.657849, -0.430589,
		41.221920, 32.799576, 22.749435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221313, 32.993008, 23.511904>,  <41.654465, 33.260071, 23.050848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221313, 32.993008, 23.511904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.548279, 33.090702, 23.720587>,  <42.744457, 33.149319, 23.845797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.548279, 33.090702, 23.720587>,  <42.221313, 32.993008, 23.511904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548279, 33.090702, 23.720587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573768, 0.425665, 0.699714,
		-0.051179, -0.871297, 0.488080,
		0.817418, 0.244234, 0.521707,
		42.793503, 33.163971, 23.877098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203808, 32.704090, 24.139013>,  <42.221313, 32.993008, 23.511904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203808, 32.704090, 24.139013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452789, 33.012646, 24.191961>,  <42.602177, 33.197777, 24.223730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.452789, 33.012646, 24.191961>,  <42.203808, 32.704090, 24.139013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452789, 33.012646, 24.191961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534742, 0.295658, 0.791604,
		0.571495, -0.563517, 0.596524,
		0.622449, 0.771385, 0.132369,
		42.639523, 33.244061, 24.231672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460918, 32.617523, 24.755272>,  <42.203808, 32.704090, 24.139013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460918, 32.617523, 24.755272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492859, 33.007259, 24.671097>,  <42.512024, 33.241100, 24.620592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.492859, 33.007259, 24.671097>,  <42.460918, 32.617523, 24.755272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.492859, 33.007259, 24.671097> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370783, 0.224998, 0.901052,
		0.925280, 0.006076, 0.379236,
		0.079852, 0.974340, -0.210439,
		42.516815, 33.299561, 24.607965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718899, 32.869194, 25.322275>,  <42.460918, 32.617523, 24.755272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718899, 32.869194, 25.322275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.563778, 33.193588, 25.147045>,  <42.470707, 33.388226, 25.041906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.563778, 33.193588, 25.147045>,  <42.718899, 32.869194, 25.322275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563778, 33.193588, 25.147045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414506, 0.271062, 0.868741,
		0.823285, 0.518480, 0.231043,
		-0.387798, 0.810989, -0.438075,
		42.447437, 33.436886, 25.015623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807671, 33.393661, 25.770096>,  <42.718899, 32.869194, 25.322275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807671, 33.393661, 25.770096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524071, 33.531803, 25.524151>,  <42.353912, 33.614689, 25.376585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.524071, 33.531803, 25.524151>,  <42.807671, 33.393661, 25.770096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524071, 33.531803, 25.524151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585808, 0.196996, 0.786143,
		0.392626, 0.917562, 0.062644,
		-0.708995, 0.345357, -0.614861,
		42.311371, 33.635410, 25.339693>
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
