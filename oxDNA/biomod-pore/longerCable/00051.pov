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
	<24.585438, 34.156254, 35.066925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291025, 34.425632, 35.094433>,  <24.114378, 34.587261, 35.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.291025, 34.425632, 35.094433>,  <24.585438, 34.156254, 35.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.291025, 34.425632, 35.094433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416847, 0.530925, -0.737806,
		-0.533384, -0.514381, -0.671501,
		-0.736030, 0.673447, 0.068769,
		24.070217, 34.627666, 35.115063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.145309, 34.220287, 34.393860>,  <24.585438, 34.156254, 35.066925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.145309, 34.220287, 34.393860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187428, 34.550732, 34.615295>,  <24.212698, 34.748997, 34.748158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.187428, 34.550732, 34.615295>,  <24.145309, 34.220287, 34.393860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.187428, 34.550732, 34.615295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529244, 0.424746, -0.734501,
		-0.841911, 0.370323, -0.392489,
		0.105295, 0.826107, 0.553589,
		24.219015, 34.798565, 34.781372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.848864, 34.830727, 33.967442>,  <24.145309, 34.220287, 34.393860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.848864, 34.830727, 33.967442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147339, 34.834431, 34.233711>,  <24.326424, 34.836655, 34.393471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.147339, 34.834431, 34.233711>,  <23.848864, 34.830727, 33.967442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.147339, 34.834431, 34.233711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656018, 0.159990, -0.737593,
		-0.113334, 0.987075, 0.113305,
		0.746187, 0.009264, 0.665672,
		24.371195, 34.837212, 34.433414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293800, 35.430080, 33.916588>,  <23.848864, 34.830727, 33.967442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293800, 35.430080, 33.916588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505951, 35.119591, 34.052925>,  <24.633242, 34.933296, 34.134727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.505951, 35.119591, 34.052925>,  <24.293800, 35.430080, 33.916588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.505951, 35.119591, 34.052925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649361, 0.113503, -0.751962,
		0.545007, 0.620152, 0.564250,
		0.530375, -0.776227, 0.340843,
		24.665064, 34.886723, 34.155178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.966200, 35.654297, 33.905170>,  <24.293800, 35.430080, 33.916588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.966200, 35.654297, 33.905170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987234, 35.256664, 33.867149>,  <24.999855, 35.018085, 33.844337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.987234, 35.256664, 33.867149>,  <24.966200, 35.654297, 33.905170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.987234, 35.256664, 33.867149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737848, 0.102818, -0.667090,
		0.672915, -0.035055, 0.738888,
		0.052586, -0.994082, -0.095053,
		25.003010, 34.958439, 33.838634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583694, 35.523933, 34.152016>,  <24.966200, 35.654297, 33.905170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583694, 35.523933, 34.152016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464777, 35.248806, 33.887131>,  <25.393427, 35.083729, 33.728199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464777, 35.248806, 33.887131>,  <25.583694, 35.523933, 34.152016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464777, 35.248806, 33.887131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801807, 0.196706, -0.564281,
		0.518383, -0.698721, 0.493018,
		-0.297296, -0.687819, -0.662208,
		25.375587, 35.042461, 33.688469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.104927, 34.960445, 34.091038>,  <25.583694, 35.523933, 34.152016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.104927, 34.960445, 34.091038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914505, 35.019127, 33.744202>,  <25.800253, 35.054337, 33.536098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914505, 35.019127, 33.744202>,  <26.104927, 34.960445, 34.091038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914505, 35.019127, 33.744202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877238, 0.148577, -0.456485,
		0.061863, -0.977959, -0.199424,
		-0.476054, 0.146702, -0.867094,
		25.771688, 35.063137, 33.484074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687672, 35.419540, 33.855774>,  <26.104927, 34.960445, 34.091038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687672, 35.419540, 33.855774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985506, 35.679996, 33.914574>,  <27.164207, 35.836269, 33.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.985506, 35.679996, 33.914574>,  <26.687672, 35.419540, 33.855774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985506, 35.679996, 33.914574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520160, 0.427947, 0.739118,
		0.418355, -0.626805, 0.657339,
		0.744589, 0.651134, 0.147005,
		27.208881, 35.875340, 33.958675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.867504, 35.459583, 34.595322>,  <26.687672, 35.419540, 33.855774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.867504, 35.459583, 34.595322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067236, 35.791733, 34.496414>,  <27.187075, 35.991024, 34.437069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.067236, 35.791733, 34.496414>,  <26.867504, 35.459583, 34.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067236, 35.791733, 34.496414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528458, 0.518057, 0.672569,
		0.686586, -0.205161, 0.697501,
		0.499331, 0.830377, -0.247272,
		27.217035, 36.040844, 34.422234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147612, 35.682999, 35.214409>,  <26.867504, 35.459583, 34.595322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147612, 35.682999, 35.214409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121719, 35.990341, 34.959709>,  <27.106184, 36.174747, 34.806889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121719, 35.990341, 34.959709>,  <27.147612, 35.682999, 35.214409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121719, 35.990341, 34.959709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463705, 0.541848, 0.700984,
		0.883622, 0.340638, 0.321213,
		-0.064733, 0.768353, -0.636745,
		27.102299, 36.220848, 34.768684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562227, 36.263397, 35.505024>,  <27.147612, 35.682999, 35.214409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562227, 36.263397, 35.505024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283024, 36.392494, 35.249332>,  <27.115501, 36.469952, 35.095917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.283024, 36.392494, 35.249332>,  <27.562227, 36.263397, 35.505024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283024, 36.392494, 35.249332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458499, 0.484268, 0.745160,
		0.550054, 0.813217, -0.190048,
		-0.698011, 0.322742, -0.639233,
		27.073620, 36.489315, 35.057564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513439, 36.908619, 35.908581>,  <27.562227, 36.263397, 35.505024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513439, 36.908619, 35.908581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529011, 37.185863, 36.196491>,  <27.538353, 37.352211, 36.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.529011, 37.185863, 36.196491>,  <27.513439, 36.908619, 35.908581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529011, 37.185863, 36.196491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609160, 0.587454, -0.532750,
		-0.792091, -0.417719, 0.445087,
		0.038929, 0.693116, 0.719775,
		27.540689, 37.393799, 36.412422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.806847, 37.129562, 36.106136>,  <27.513439, 36.908619, 35.908581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.806847, 37.129562, 36.106136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070204, 37.420937, 36.181927>,  <27.228218, 37.595760, 36.227402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070204, 37.420937, 36.181927>,  <26.806847, 37.129562, 36.106136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070204, 37.420937, 36.181927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588533, 0.655161, -0.473702,
		-0.469200, 0.200366, 0.860061,
		0.658392, 0.728435, 0.189479,
		27.267721, 37.639465, 36.238770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169895, 36.837833, 36.014328>,  <26.806847, 37.129562, 36.106136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169895, 36.837833, 36.014328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158590, 37.168598, 35.789680>,  <26.151808, 37.367058, 35.654892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.158590, 37.168598, 35.789680>,  <26.169895, 36.837833, 36.014328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.158590, 37.168598, 35.789680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598392, -0.436052, -0.672150,
		-0.800705, -0.355060, -0.482497,
		-0.028260, 0.826917, -0.561614,
		26.150112, 37.416672, 35.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894415, 36.708515, 35.374634>,  <26.169895, 36.837833, 36.014328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894415, 36.708515, 35.374634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179546, 36.988884, 35.364948>,  <26.350626, 37.157104, 35.359138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179546, 36.988884, 35.364948>,  <25.894415, 36.708515, 35.374634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179546, 36.988884, 35.364948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506364, -0.538240, -0.673716,
		-0.485254, 0.467982, -0.738594,
		0.712828, 0.700921, -0.024214,
		26.393394, 37.199162, 35.357685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061533, 36.725834, 34.735210>,  <25.894415, 36.708515, 35.374634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061533, 36.725834, 34.735210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374048, 36.904690, 34.909409>,  <26.561558, 37.012001, 35.013927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374048, 36.904690, 34.909409>,  <26.061533, 36.725834, 34.735210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374048, 36.904690, 34.909409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613922, -0.424601, -0.665443,
		-0.112633, 0.787263, -0.606243,
		0.781290, 0.447137, 0.435494,
		26.608435, 37.038830, 35.040058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314579, 37.222015, 34.297218>,  <26.061533, 36.725834, 34.735210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314579, 37.222015, 34.297218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577820, 37.041542, 34.538326>,  <26.735764, 36.933258, 34.682991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577820, 37.041542, 34.538326>,  <26.314579, 37.222015, 34.297218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577820, 37.041542, 34.538326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492460, -0.347650, -0.797886,
		0.569548, 0.821931, -0.006598,
		0.658101, -0.451186, 0.602772,
		26.775249, 36.906185, 34.719158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896677, 37.182247, 33.967049>,  <26.314579, 37.222015, 34.297218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896677, 37.182247, 33.967049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007324, 36.901337, 34.229435>,  <27.073711, 36.732788, 34.386868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007324, 36.901337, 34.229435>,  <26.896677, 37.182247, 33.967049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007324, 36.901337, 34.229435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579226, -0.422822, -0.696935,
		0.766799, 0.572734, 0.289819,
		0.276616, -0.702280, 0.655962,
		27.090309, 36.690651, 34.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779863, 37.147732, 33.902672>,  <26.896677, 37.182247, 33.967049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779863, 37.147732, 33.902672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608591, 36.823994, 34.063480>,  <27.505829, 36.629749, 34.159966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608591, 36.823994, 34.063480>,  <27.779863, 37.147732, 33.902672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608591, 36.823994, 34.063480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554206, -0.586563, -0.590593,
		0.713806, -0.030075, 0.699697,
		-0.428179, -0.809345, 0.402024,
		27.480137, 36.581188, 34.184086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296453, 36.648289, 34.168674>,  <27.779863, 37.147732, 33.902672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296453, 36.648289, 34.168674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968765, 36.430779, 34.095798>,  <27.772152, 36.300274, 34.052074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968765, 36.430779, 34.095798>,  <28.296453, 36.648289, 34.168674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968765, 36.430779, 34.095798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523564, -0.579534, -0.624517,
		0.234010, -0.607003, 0.759465,
		-0.819219, -0.543771, -0.182189,
		27.723000, 36.267647, 34.041142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.376507, 36.006119, 34.239536>,  <28.296453, 36.648289, 34.168674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.376507, 36.006119, 34.239536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093815, 36.028290, 33.957413>,  <27.924200, 36.041592, 33.788139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093815, 36.028290, 33.957413>,  <28.376507, 36.006119, 34.239536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093815, 36.028290, 33.957413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552032, -0.580315, -0.598745,
		-0.442486, -0.812504, 0.379531,
		-0.706730, 0.055423, -0.705309,
		27.881796, 36.044918, 33.745819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333670, 35.340256, 34.064007>,  <28.376507, 36.006119, 34.239536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333670, 35.340256, 34.064007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240118, 35.577774, 33.756058>,  <28.183987, 35.720287, 33.571289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.240118, 35.577774, 33.756058>,  <28.333670, 35.340256, 34.064007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240118, 35.577774, 33.756058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496057, -0.608141, -0.619752,
		-0.836199, -0.526847, -0.152328,
		-0.233878, 0.593799, -0.769873,
		28.169954, 35.755913, 33.525097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038490, 34.957222, 33.489639>,  <28.333670, 35.340256, 34.064007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038490, 34.957222, 33.489639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212770, 35.291088, 33.354881>,  <28.317339, 35.491405, 33.274025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.212770, 35.291088, 33.354881>,  <28.038490, 34.957222, 33.489639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212770, 35.291088, 33.354881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499294, -0.535551, -0.681095,
		-0.748912, 0.128543, -0.650083,
		0.435703, 0.834663, -0.336899,
		28.343481, 35.541489, 33.253811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920675, 35.091942, 32.750626>,  <28.038490, 34.957222, 33.489639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920675, 35.091942, 32.750626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275621, 35.221081, 32.882290>,  <28.488590, 35.298565, 32.961288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275621, 35.221081, 32.882290>,  <27.920675, 35.091942, 32.750626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275621, 35.221081, 32.882290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437816, -0.366197, -0.821107,
		-0.144558, 0.872735, -0.466301,
		0.887367, 0.322851, 0.329161,
		28.541832, 35.317936, 32.981037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205568, 35.480995, 32.235447>,  <27.920675, 35.091942, 32.750626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205568, 35.480995, 32.235447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505526, 35.349995, 32.465370>,  <28.685499, 35.271393, 32.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505526, 35.349995, 32.465370>,  <28.205568, 35.480995, 32.235447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505526, 35.349995, 32.465370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393822, -0.477154, -0.785639,
		0.531570, 0.815517, -0.228837,
		0.749892, -0.327501, 0.574809,
		28.730494, 35.251743, 32.637814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715771, 35.602161, 31.860260>,  <28.205568, 35.480995, 32.235447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715771, 35.602161, 31.860260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897373, 35.338196, 32.099724>,  <29.006334, 35.179817, 32.243401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.897373, 35.338196, 32.099724>,  <28.715771, 35.602161, 31.860260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.897373, 35.338196, 32.099724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355023, -0.482270, -0.800858,
		0.817213, 0.576132, 0.015331,
		0.454007, -0.659914, 0.598657,
		29.033575, 35.140221, 32.279320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439852, 35.493893, 31.656162>,  <28.715771, 35.602161, 31.860260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439852, 35.493893, 31.656162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351652, 35.156754, 31.852522>,  <29.298733, 34.954468, 31.970337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.351652, 35.156754, 31.852522>,  <29.439852, 35.493893, 31.656162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351652, 35.156754, 31.852522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429916, -0.535742, -0.726742,
		0.875530, 0.050799, 0.480486,
		-0.220499, -0.842853, 0.490897,
		29.285503, 34.903896, 31.999790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067513, 35.034061, 31.788725>,  <29.439852, 35.493893, 31.656162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067513, 35.034061, 31.788725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710279, 34.858822, 31.747797>,  <29.495939, 34.753677, 31.723240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.710279, 34.858822, 31.747797>,  <30.067513, 35.034061, 31.788725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.710279, 34.858822, 31.747797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379826, -0.612356, -0.693363,
		0.241104, -0.658096, 0.713287,
		-0.893085, -0.438098, -0.102320,
		29.442354, 34.727394, 31.717100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148371, 34.424961, 32.018318>,  <30.067513, 35.034061, 31.788725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148371, 34.424961, 32.018318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829330, 34.397846, 31.778572>,  <29.637905, 34.381577, 31.634726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.829330, 34.397846, 31.778572>,  <30.148371, 34.424961, 32.018318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829330, 34.397846, 31.778572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443248, -0.739803, -0.506184,
		-0.409099, -0.669400, 0.620115,
		-0.797602, -0.067786, -0.599363,
		29.590050, 34.377510, 31.598763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798628, 33.813530, 32.123898>,  <30.148371, 34.424961, 32.018318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798628, 33.813530, 32.123898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777061, 33.949696, 31.748405>,  <29.764122, 34.031395, 31.523109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.777061, 33.949696, 31.748405>,  <29.798628, 33.813530, 32.123898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777061, 33.949696, 31.748405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512071, -0.797646, -0.318661,
		-0.857249, -0.497878, -0.131307,
		-0.053918, 0.340410, -0.938730,
		29.760885, 34.051819, 31.466787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790426, 33.141762, 31.681242>,  <29.798628, 33.813530, 32.123898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790426, 33.141762, 31.681242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846392, 33.427967, 31.407463>,  <29.879971, 33.599689, 31.243196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.846392, 33.427967, 31.407463>,  <29.790426, 33.141762, 31.681242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846392, 33.427967, 31.407463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538753, -0.634979, -0.553667,
		-0.830764, -0.291281, -0.474328,
		0.139916, 0.715512, -0.684446,
		29.888367, 33.642620, 31.202129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511248, 32.839832, 31.047644>,  <29.790426, 33.141762, 31.681242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511248, 32.839832, 31.047644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812737, 33.100536, 31.013927>,  <29.993629, 33.256958, 30.993698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.812737, 33.100536, 31.013927>,  <29.511248, 32.839832, 31.047644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812737, 33.100536, 31.013927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498942, -0.650980, -0.572086,
		-0.427738, 0.389137, -0.815851,
		0.753722, 0.651765, -0.084292,
		30.038853, 33.296066, 30.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738272, 32.844788, 30.333700>,  <29.511248, 32.839832, 31.047644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738272, 32.844788, 30.333700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058027, 32.997375, 30.519373>,  <30.249880, 33.088928, 30.630777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.058027, 32.997375, 30.519373>,  <29.738272, 32.844788, 30.333700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.058027, 32.997375, 30.519373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595165, -0.608489, -0.524900,
		0.082218, 0.695863, -0.713452,
		0.799387, 0.381465, 0.464182,
		30.297844, 33.111816, 30.658628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189116, 32.909126, 29.797375>,  <29.738272, 32.844788, 30.333700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189116, 32.909126, 29.797375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404200, 32.927635, 30.134119>,  <30.533251, 32.938740, 30.336164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404200, 32.927635, 30.134119>,  <30.189116, 32.909126, 29.797375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404200, 32.927635, 30.134119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642941, -0.668442, -0.373915,
		0.545431, 0.742323, -0.389181,
		0.537710, 0.046276, 0.841859,
		30.565514, 32.941517, 30.386677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910770, 32.994854, 29.530210>,  <30.189116, 32.909126, 29.797375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910770, 32.994854, 29.530210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805641, 32.819862, 29.874195>,  <30.742563, 32.714867, 30.080585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805641, 32.819862, 29.874195>,  <30.910770, 32.994854, 29.530210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805641, 32.819862, 29.874195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505280, -0.821711, -0.263598,
		0.821959, 0.365243, 0.437014,
		-0.262822, -0.437481, 0.859963,
		30.726795, 32.688618, 30.132183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418909, 32.614330, 29.840570>,  <30.910770, 32.994854, 29.530210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418909, 32.614330, 29.840570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088362, 32.433601, 29.975014>,  <30.890034, 32.325165, 30.055679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088362, 32.433601, 29.975014>,  <31.418909, 32.614330, 29.840570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088362, 32.433601, 29.975014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366869, -0.884769, -0.287386,
		0.427227, -0.114179, 0.896906,
		-0.826369, -0.451826, 0.336108,
		30.840450, 32.298054, 30.075846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600042, 32.040192, 30.291054>,  <31.418909, 32.614330, 29.840570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600042, 32.040192, 30.291054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260250, 32.001816, 30.083525>,  <31.056374, 31.978790, 29.959007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260250, 32.001816, 30.083525>,  <31.600042, 32.040192, 30.291054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260250, 32.001816, 30.083525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362064, -0.821262, -0.440951,
		-0.383783, -0.562427, 0.732384,
		-0.849482, -0.095941, -0.518821,
		31.005405, 31.973034, 29.927879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285793, 31.976252, 30.925602>,  <31.600042, 32.040192, 30.291054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285793, 31.976252, 30.925602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087814, 32.313793, 31.008488>,  <30.969027, 32.516319, 31.058220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087814, 32.313793, 31.008488>,  <31.285793, 31.976252, 30.925602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087814, 32.313793, 31.008488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856977, -0.513467, 0.044075,
		0.143591, -0.155763, 0.977302,
		-0.494947, 0.843854, 0.207215,
		30.939331, 32.566948, 31.070652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045458, 32.171238, 31.646704>,  <31.285793, 31.976252, 30.925602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045458, 32.171238, 31.646704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785242, 32.375656, 31.421982>,  <30.629112, 32.498306, 31.287149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.785242, 32.375656, 31.421982>,  <31.045458, 32.171238, 31.646704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785242, 32.375656, 31.421982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758847, -0.467362, 0.453568,
		-0.030771, 0.721389, 0.691846,
		-0.650541, 0.511048, -0.561805,
		30.590080, 32.528969, 31.253441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149858, 32.936024, 31.497185>,  <31.045458, 32.171238, 31.646704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149858, 32.936024, 31.497185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950285, 32.937168, 31.150532>,  <30.830540, 32.937855, 30.942539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950285, 32.937168, 31.150532>,  <31.149858, 32.936024, 31.497185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950285, 32.937168, 31.150532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398843, 0.887045, 0.232544,
		0.769408, 0.461675, -0.441439,
		-0.498936, 0.002856, -0.866634,
		30.800604, 32.938026, 30.890541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259222, 33.641773, 31.291435>,  <31.149858, 32.936024, 31.497185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259222, 33.641773, 31.291435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946333, 33.479919, 31.101952>,  <30.758598, 33.382809, 30.988262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946333, 33.479919, 31.101952>,  <31.259222, 33.641773, 31.291435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946333, 33.479919, 31.101952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492271, 0.867466, 0.071909,
		0.381830, 0.289442, -0.877741,
		-0.782224, -0.404630, -0.473709,
		30.711666, 33.358532, 30.959839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987343, 34.159668, 30.830629>,  <31.259222, 33.641773, 31.291435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987343, 34.159668, 30.830629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701719, 33.884022, 30.880009>,  <30.530344, 33.718636, 30.909636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.701719, 33.884022, 30.880009>,  <30.987343, 34.159668, 30.830629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701719, 33.884022, 30.880009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630231, 0.709521, 0.315262,
		-0.304840, 0.147315, -0.940942,
		-0.714060, -0.689114, 0.123448,
		30.487501, 33.677288, 30.917044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459776, 34.411331, 30.489805>,  <30.987343, 34.159668, 30.830629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459776, 34.411331, 30.489805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338352, 34.158546, 30.775036>,  <30.265499, 34.006878, 30.946175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.338352, 34.158546, 30.775036>,  <30.459776, 34.411331, 30.489805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.338352, 34.158546, 30.775036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508979, 0.740218, 0.439338,
		-0.805477, -0.229577, -0.546353,
		-0.303558, -0.631959, 0.713078,
		30.247284, 33.968960, 30.988960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812538, 34.550537, 30.591764>,  <30.459776, 34.411331, 30.489805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812538, 34.550537, 30.591764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637882, 34.197598, 30.661972>,  <29.533089, 33.985832, 30.704096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637882, 34.197598, 30.661972>,  <29.812538, 34.550537, 30.591764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637882, 34.197598, 30.661972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531838, 0.410524, 0.740688,
		-0.725599, 0.230067, -0.648518,
		-0.436640, -0.882349, 0.175517,
		29.506889, 33.932892, 30.714628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.061407, 34.600185, 30.538675>,  <29.812538, 34.550537, 30.591764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.061407, 34.600185, 30.538675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196554, 34.319317, 30.789371>,  <29.277643, 34.150795, 30.939789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196554, 34.319317, 30.789371>,  <29.061407, 34.600185, 30.538675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196554, 34.319317, 30.789371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591980, 0.359153, 0.721505,
		-0.731713, -0.614793, -0.294322,
		0.337870, -0.702167, 0.626742,
		29.297915, 34.108665, 30.977394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512838, 34.387604, 30.908150>,  <29.061407, 34.600185, 30.538675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512838, 34.387604, 30.908150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845509, 34.339500, 31.124983>,  <29.045111, 34.310638, 31.255083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.845509, 34.339500, 31.124983>,  <28.512838, 34.387604, 30.908150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.845509, 34.339500, 31.124983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433489, 0.469463, 0.769215,
		-0.346995, -0.874724, 0.338309,
		0.831675, -0.120260, 0.542084,
		29.095011, 34.303421, 31.287607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268919, 34.196461, 31.482908>,  <28.512838, 34.387604, 30.908150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268919, 34.196461, 31.482908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624464, 34.372429, 31.534126>,  <28.837791, 34.478008, 31.564857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624464, 34.372429, 31.534126>,  <28.268919, 34.196461, 31.482908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624464, 34.372429, 31.534126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413945, 0.651271, 0.635999,
		0.196395, -0.618320, 0.760993,
		0.888864, 0.439916, 0.128044,
		28.891123, 34.504402, 31.572540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803185, 34.201839, 32.077499>,  <28.268919, 34.196461, 31.482908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803185, 34.201839, 32.077499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190073, 34.302864, 32.066959>,  <29.422207, 34.363480, 32.060635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190073, 34.302864, 32.066959>,  <28.803185, 34.201839, 32.077499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190073, 34.302864, 32.066959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160557, 0.688645, 0.707100,
		0.196735, -0.679691, 0.706623,
		0.967222, 0.252565, -0.026351,
		29.480240, 34.378632, 32.059055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199451, 34.040607, 32.696560>,  <28.803185, 34.201839, 32.077499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199451, 34.040607, 32.696560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342096, 34.365292, 32.511539>,  <29.427683, 34.560101, 32.400528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.342096, 34.365292, 32.511539>,  <29.199451, 34.040607, 32.696560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342096, 34.365292, 32.511539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313277, 0.570334, 0.759326,
		0.880162, -0.125879, 0.457679,
		0.356613, 0.811710, -0.462551,
		29.449080, 34.608803, 32.372772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.597431, 34.442673, 33.183395>,  <29.199451, 34.040607, 32.696560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.597431, 34.442673, 33.183395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429585, 34.656231, 32.889763>,  <29.328876, 34.784367, 32.713581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429585, 34.656231, 32.889763>,  <29.597431, 34.442673, 33.183395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429585, 34.656231, 32.889763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363097, 0.642478, 0.674821,
		0.831914, 0.549711, -0.075741,
		-0.419619, 0.533892, -0.734085,
		29.303699, 34.816399, 32.669537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900164, 35.094265, 33.209942>,  <29.597431, 34.442673, 33.183395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900164, 35.094265, 33.209942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534805, 35.113514, 33.048252>,  <29.315590, 35.125065, 32.951241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.534805, 35.113514, 33.048252>,  <29.900164, 35.094265, 33.209942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534805, 35.113514, 33.048252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271864, 0.666967, 0.693718,
		0.302987, 0.743531, -0.596121,
		-0.913394, 0.048124, -0.404221,
		29.260788, 35.127953, 32.926987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072502, 35.739098, 33.689022>,  <29.900164, 35.094265, 33.209942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072502, 35.739098, 33.689022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155123, 35.606674, 34.057312>,  <30.204695, 35.527222, 34.278286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155123, 35.606674, 34.057312>,  <30.072502, 35.739098, 33.689022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155123, 35.606674, 34.057312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406932, -0.826706, -0.388541,
		0.889799, 0.454928, -0.036042,
		0.206554, -0.331056, 0.920726,
		30.217089, 35.507359, 34.333530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.752041, 35.383598, 33.591110>,  <30.072502, 35.739098, 33.689022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.752041, 35.383598, 33.591110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602449, 35.284367, 33.948566>,  <30.512693, 35.224827, 34.163040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.602449, 35.284367, 33.948566>,  <30.752041, 35.383598, 33.591110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602449, 35.284367, 33.948566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279354, -0.948942, -0.146528,
		0.884365, 0.194843, 0.424188,
		-0.373980, -0.248083, 0.893641,
		30.490255, 35.209942, 34.216660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312334, 34.950443, 33.999729>,  <30.752041, 35.383598, 33.591110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312334, 34.950443, 33.999729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918247, 34.907776, 34.053352>,  <30.681795, 34.882175, 34.085526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.918247, 34.907776, 34.053352>,  <31.312334, 34.950443, 33.999729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918247, 34.907776, 34.053352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115760, -0.991346, 0.061916,
		0.126295, 0.076519, 0.989037,
		-0.985215, -0.106671, 0.134060,
		30.622683, 34.875774, 34.093571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344727, 35.822617, 33.788322>,  <31.312334, 34.950443, 33.999729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344727, 35.822617, 33.788322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435850, 35.839333, 34.177444>,  <31.490524, 35.849361, 34.410919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435850, 35.839333, 34.177444>,  <31.344727, 35.822617, 33.788322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435850, 35.839333, 34.177444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685606, 0.716310, 0.129783,
		-0.691409, -0.696529, 0.191834,
		0.227810, 0.041789, 0.972808,
		31.504192, 35.851868, 34.469288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739037, 35.893436, 34.227215>,  <31.344727, 35.822617, 33.788322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739037, 35.893436, 34.227215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044111, 36.027088, 34.448723>,  <31.227156, 36.107281, 34.581627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044111, 36.027088, 34.448723>,  <30.739037, 35.893436, 34.227215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044111, 36.027088, 34.448723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557142, 0.774276, 0.300150,
		-0.328483, -0.537450, 0.776689,
		0.762687, 0.334132, 0.553773,
		31.272917, 36.127327, 34.614853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563824, 36.099785, 35.001671>,  <30.739037, 35.893436, 34.227215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563824, 36.099785, 35.001671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875082, 36.311127, 34.865829>,  <31.061836, 36.437931, 34.784325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875082, 36.311127, 34.865829>,  <30.563824, 36.099785, 35.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875082, 36.311127, 34.865829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466545, 0.848235, 0.250667,
		0.420508, -0.036613, 0.906550,
		0.778145, 0.528353, -0.339608,
		31.108526, 36.469631, 34.763947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614748, 36.622066, 35.463272>,  <30.563824, 36.099785, 35.001671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614748, 36.622066, 35.463272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732437, 36.759922, 35.106697>,  <30.803051, 36.842636, 34.892754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732437, 36.759922, 35.106697>,  <30.614748, 36.622066, 35.463272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732437, 36.759922, 35.106697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537524, 0.830893, 0.143824,
		0.790254, 0.436851, 0.429721,
		0.294223, 0.344642, -0.891434,
		30.820704, 36.863316, 34.839268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356503, 37.199615, 35.902588>,  <30.614748, 36.622066, 35.463272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356503, 37.199615, 35.902588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327557, 37.172398, 36.300610>,  <30.310190, 37.156067, 36.539421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327557, 37.172398, 36.300610>,  <30.356503, 37.199615, 35.902588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327557, 37.172398, 36.300610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807637, 0.589392, -0.018430,
		-0.585223, -0.804977, -0.097603,
		-0.072363, -0.068042, 0.995055,
		30.305847, 37.151985, 36.599125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080736, 36.995853, 36.295803>,  <30.356503, 37.199615, 35.902588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080736, 36.995853, 36.295803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007357, 37.323627, 36.078594>,  <30.963329, 37.520294, 35.948269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007357, 37.323627, 36.078594>,  <31.080736, 36.995853, 36.295803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007357, 37.323627, 36.078594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162816, -0.519436, -0.838854,
		-0.969452, -0.242300, -0.038127,
		-0.183450, 0.819437, -0.543019,
		30.952322, 37.569458, 35.915688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813335, 36.984318, 36.912296>,  <31.080736, 36.995853, 36.295803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813335, 36.984318, 36.912296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879026, 36.606617, 37.026436>,  <30.918440, 36.379997, 37.094917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.879026, 36.606617, 37.026436>,  <30.813335, 36.984318, 36.912296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879026, 36.606617, 37.026436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943237, 0.065668, -0.325562,
		0.288674, 0.322613, 0.901437,
		0.164226, -0.944250, 0.285344,
		30.928295, 36.323341, 37.112038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356348, 36.871021, 37.307491>,  <30.813335, 36.984318, 36.912296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356348, 36.871021, 37.307491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293465, 36.517963, 37.130299>,  <31.255733, 36.306129, 37.023983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293465, 36.517963, 37.130299>,  <31.356348, 36.871021, 37.307491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293465, 36.517963, 37.130299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926743, 0.023131, -0.374983,
		0.341222, -0.469477, 0.814346,
		-0.157209, -0.882642, -0.442977,
		31.246302, 36.253170, 36.997406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982012, 36.441563, 37.427765>,  <31.356348, 36.871021, 37.307491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982012, 36.441563, 37.427765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785030, 36.319454, 37.101749>,  <31.666842, 36.246189, 36.906139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.785030, 36.319454, 37.101749>,  <31.982012, 36.441563, 37.427765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785030, 36.319454, 37.101749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858497, -0.016436, -0.512555,
		0.143074, -0.952122, 0.270173,
		-0.492455, -0.305276, -0.815043,
		31.637295, 36.227871, 36.857235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212467, 35.772583, 37.231239>,  <31.982012, 36.441563, 37.427765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212467, 35.772583, 37.231239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101929, 36.002316, 36.923012>,  <32.035606, 36.140156, 36.738075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.101929, 36.002316, 36.923012>,  <32.212467, 35.772583, 37.231239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101929, 36.002316, 36.923012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954628, 0.071456, -0.289100,
		-0.110979, -0.815496, -0.568023,
		-0.276349, 0.574335, -0.770565,
		32.019024, 36.174618, 36.691841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352348, 35.448730, 36.578049>,  <32.212467, 35.772583, 37.231239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352348, 35.448730, 36.578049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380703, 35.845665, 36.537552>,  <32.397717, 36.083824, 36.513252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380703, 35.845665, 36.537552>,  <32.352348, 35.448730, 36.578049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380703, 35.845665, 36.537552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918782, -0.104476, -0.380691,
		-0.388350, -0.066035, -0.919143,
		0.070889, 0.992333, -0.101245,
		32.401970, 36.143364, 36.507179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314724, 34.640022, 36.552311>,  <32.352348, 35.448730, 36.578049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314724, 34.640022, 36.552311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034164, 34.711945, 36.276424>,  <31.865828, 34.755096, 36.110893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034164, 34.711945, 36.276424>,  <32.314724, 34.640022, 36.552311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034164, 34.711945, 36.276424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694853, -0.043088, -0.717860,
		-0.158792, -0.982758, -0.094715,
		-0.701401, 0.179803, -0.689715,
		31.823744, 34.765884, 36.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626450, 34.285995, 35.956375>,  <32.314724, 34.640022, 36.552311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626450, 34.285995, 35.956375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375237, 34.582794, 35.862545>,  <32.224510, 34.760872, 35.806248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375237, 34.582794, 35.862545>,  <32.626450, 34.285995, 35.956375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375237, 34.582794, 35.862545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542498, 0.201341, -0.815572,
		-0.557920, -0.639459, -0.528978,
		-0.628030, 0.741993, -0.234573,
		32.186829, 34.805393, 35.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318981, 34.134377, 35.373508>,  <32.626450, 34.285995, 35.956375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318981, 34.134377, 35.373508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392323, 34.518864, 35.455921>,  <32.436329, 34.749554, 35.505367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.392323, 34.518864, 35.455921>,  <32.318981, 34.134377, 35.373508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392323, 34.518864, 35.455921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624682, 0.047900, -0.779409,
		-0.759048, 0.271608, -0.591671,
		0.183352, 0.961215, 0.206027,
		32.447327, 34.807228, 35.517731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398033, 34.328907, 34.716671>,  <32.318981, 34.134377, 35.373508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398033, 34.328907, 34.716671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514069, 34.641830, 34.937160>,  <32.583691, 34.829586, 35.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514069, 34.641830, 34.937160>,  <32.398033, 34.328907, 34.716671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514069, 34.641830, 34.937160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453915, 0.394600, -0.798907,
		-0.842503, 0.481960, -0.240633,
		0.290087, 0.782308, 0.551220,
		32.601093, 34.876522, 35.102528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202232, 34.991589, 34.413868>,  <32.398033, 34.328907, 34.716671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202232, 34.991589, 34.413868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529312, 35.069023, 34.630714>,  <32.725559, 35.115482, 34.760822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529312, 35.069023, 34.630714>,  <32.202232, 34.991589, 34.413868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529312, 35.069023, 34.630714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475537, 0.303539, -0.825669,
		-0.324392, 0.932946, 0.156146,
		0.817701, 0.193587, 0.542116,
		32.774624, 35.127098, 34.793350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363262, 35.692421, 34.257641>,  <32.202232, 34.991589, 34.413868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363262, 35.692421, 34.257641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699799, 35.529495, 34.399765>,  <32.901722, 35.431740, 34.485039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.699799, 35.529495, 34.399765>,  <32.363262, 35.692421, 34.257641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699799, 35.529495, 34.399765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505572, 0.360542, -0.783841,
		0.191162, 0.839112, 0.509263,
		0.841340, -0.407310, 0.355310,
		32.952202, 35.407303, 34.506359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864628, 36.219055, 34.046772>,  <32.363262, 35.692421, 34.257641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864628, 36.219055, 34.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104652, 35.912594, 34.138809>,  <33.248669, 35.728718, 34.194031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.104652, 35.912594, 34.138809>,  <32.864628, 36.219055, 34.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104652, 35.912594, 34.138809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696532, 0.358947, -0.621290,
		0.393410, 0.533078, 0.749037,
		0.600060, -0.766150, 0.230092,
		33.284672, 35.682751, 34.207836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569016, 36.483437, 34.118252>,  <32.864628, 36.219055, 34.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569016, 36.483437, 34.118252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620487, 36.092060, 34.053642>,  <33.651371, 35.857235, 34.014877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620487, 36.092060, 34.053642>,  <33.569016, 36.483437, 34.118252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620487, 36.092060, 34.053642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500890, 0.204703, -0.840955,
		0.855892, 0.027307, 0.516434,
		0.128680, -0.978443, -0.161526,
		33.659092, 35.798527, 34.005184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259518, 36.418091, 34.087830>,  <33.569016, 36.483437, 34.118252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259518, 36.418091, 34.087830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121525, 36.103119, 33.883499>,  <34.038731, 35.914135, 33.760902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121525, 36.103119, 33.883499>,  <34.259518, 36.418091, 34.087830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121525, 36.103119, 33.883499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606800, 0.228106, -0.761421,
		0.716088, -0.572643, 0.399122,
		-0.344980, -0.787432, -0.510823,
		34.018032, 35.866890, 33.730251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849121, 36.081741, 33.900406>,  <34.259518, 36.418091, 34.087830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849121, 36.081741, 33.900406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557747, 35.952164, 33.658928>,  <34.382923, 35.874416, 33.514042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557747, 35.952164, 33.658928>,  <34.849121, 36.081741, 33.900406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557747, 35.952164, 33.658928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629023, 0.032960, -0.776688,
		0.271498, -0.945503, 0.179756,
		-0.728436, -0.323940, -0.603692,
		34.339214, 35.854980, 33.477821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.131855, 35.471462, 33.614079>,  <34.849121, 36.081741, 33.900406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.131855, 35.471462, 33.614079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839355, 35.590946, 33.368790>,  <34.663857, 35.662636, 33.221615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839355, 35.590946, 33.368790>,  <35.131855, 35.471462, 33.614079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839355, 35.590946, 33.368790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626003, -0.063173, -0.777258,
		-0.270917, -0.952249, -0.140802,
		-0.731248, 0.298715, -0.613225,
		34.619980, 35.680561, 33.184822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209126, 34.991951, 33.044334>,  <35.131855, 35.471462, 33.614079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209126, 34.991951, 33.044334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 35.309063, 32.935001>,  <34.860462, 35.499329, 32.869404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991211, 35.309063, 32.935001>,  <35.209126, 34.991951, 33.044334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991211, 35.309063, 32.935001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531915, 0.074708, -0.843496,
		-0.648285, -0.604915, -0.462390,
		-0.544788, 0.792778, -0.273331,
		34.827774, 35.546898, 32.853001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921631, 34.850002, 32.420910>,  <35.209126, 34.991951, 33.044334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921631, 34.850002, 32.420910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906994, 35.249706, 32.425571>,  <34.898212, 35.489529, 32.428368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906994, 35.249706, 32.425571>,  <34.921631, 34.850002, 32.420910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906994, 35.249706, 32.425571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596421, 0.031196, -0.802065,
		-0.801837, -0.022395, -0.597122,
		-0.036590, 0.999262, 0.011657,
		34.896015, 35.549484, 32.429070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947369, 35.082165, 31.703543>,  <34.921631, 34.850002, 32.420910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947369, 35.082165, 31.703543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008949, 35.430737, 31.889833>,  <35.045898, 35.639881, 32.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008949, 35.430737, 31.889833>,  <34.947369, 35.082165, 31.703543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008949, 35.430737, 31.889833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553817, 0.314243, -0.771064,
		-0.818282, 0.376636, -0.434235,
		0.153955, 0.871434, 0.465726,
		35.055138, 35.692165, 32.029552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792770, 35.691265, 31.228424>,  <34.947369, 35.082165, 31.703543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792770, 35.691265, 31.228424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046947, 35.808552, 31.514147>,  <35.199455, 35.878925, 31.685579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046947, 35.808552, 31.514147>,  <34.792770, 35.691265, 31.228424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046947, 35.808552, 31.514147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463697, 0.594792, -0.656664,
		-0.617411, 0.748495, 0.241991,
		0.635444, 0.293221, 0.714305,
		35.237579, 35.896519, 31.728439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805931, 36.436646, 31.137207>,  <34.792770, 35.691265, 31.228424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805931, 36.436646, 31.137207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129692, 36.337761, 31.350283>,  <35.323948, 36.278431, 31.478128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129692, 36.337761, 31.350283>,  <34.805931, 36.436646, 31.137207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129692, 36.337761, 31.350283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577157, 0.502396, -0.643808,
		-0.108464, 0.828543, 0.549319,
		0.809398, -0.247214, 0.532691,
		35.372513, 36.263596, 31.510090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166710, 37.023884, 31.307816>,  <34.805931, 36.436646, 31.137207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166710, 37.023884, 31.307816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473125, 36.775509, 31.374296>,  <35.656975, 36.626484, 31.414185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473125, 36.775509, 31.374296>,  <35.166710, 37.023884, 31.307816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473125, 36.775509, 31.374296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609558, 0.619667, -0.494420,
		0.204014, 0.480054, 0.853186,
		0.766040, -0.620935, 0.166200,
		35.702938, 36.589230, 31.424156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688595, 37.413311, 31.543850>,  <35.166710, 37.023884, 31.307816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688595, 37.413311, 31.543850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854904, 37.088463, 31.380098>,  <35.954689, 36.893555, 31.281847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.854904, 37.088463, 31.380098>,  <35.688595, 37.413311, 31.543850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854904, 37.088463, 31.380098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487720, 0.579034, -0.653337,
		0.767634, 0.071978, 0.636834,
		0.415774, -0.812120, -0.409381,
		35.979637, 36.844826, 31.257284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380352, 37.539051, 31.566782>,  <35.688595, 37.413311, 31.543850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380352, 37.539051, 31.566782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366314, 37.240276, 31.301195>,  <36.357891, 37.061012, 31.141844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366314, 37.240276, 31.301195>,  <36.380352, 37.539051, 31.566782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366314, 37.240276, 31.301195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579475, 0.526081, -0.622453,
		0.814234, -0.406597, 0.414368,
		-0.035097, -0.746939, -0.663966,
		36.355785, 37.016193, 31.102005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069511, 37.579361, 31.171694>,  <36.380352, 37.539051, 31.566782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069511, 37.579361, 31.171694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818203, 37.358192, 30.952770>,  <36.667416, 37.225491, 30.821415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818203, 37.358192, 30.952770>,  <37.069511, 37.579361, 31.171694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818203, 37.358192, 30.952770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342624, 0.434954, -0.832721,
		0.698483, -0.710700, -0.083827,
		-0.628275, -0.552920, -0.547311,
		36.629719, 37.192318, 30.788576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472145, 37.293262, 30.683029>,  <37.069511, 37.579361, 31.171694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472145, 37.293262, 30.683029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100555, 37.260017, 30.538748>,  <36.877602, 37.240070, 30.452179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100555, 37.260017, 30.538748>,  <37.472145, 37.293262, 30.683029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100555, 37.260017, 30.538748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327318, 0.270588, -0.905343,
		0.172849, -0.959101, -0.224163,
		-0.928970, -0.083115, -0.360702,
		36.821865, 37.235081, 30.430536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439091, 36.878738, 29.964190>,  <37.472145, 37.293262, 30.683029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439091, 36.878738, 29.964190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134075, 37.133110, 30.011740>,  <36.951065, 37.285732, 30.040270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134075, 37.133110, 30.011740>,  <37.439091, 36.878738, 29.964190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134075, 37.133110, 30.011740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186605, 0.392142, -0.900779,
		-0.619446, -0.664696, -0.417691,
		-0.762538, 0.635928, 0.118876,
		36.905315, 37.323887, 30.047403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128281, 36.891121, 29.300089>,  <37.439091, 36.878738, 29.964190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128281, 36.891121, 29.300089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991394, 37.219685, 29.482595>,  <36.909264, 37.416824, 29.592100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.991394, 37.219685, 29.482595>,  <37.128281, 36.891121, 29.300089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991394, 37.219685, 29.482595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049017, 0.469318, -0.881668,
		-0.938344, -0.324082, -0.120343,
		-0.342212, 0.821409, 0.456266,
		36.888729, 37.466106, 29.619476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577747, 37.175751, 28.884747>,  <37.128281, 36.891121, 29.300089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577747, 37.175751, 28.884747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700996, 37.495991, 29.090309>,  <36.774944, 37.688133, 29.213648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.700996, 37.495991, 29.090309>,  <36.577747, 37.175751, 28.884747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700996, 37.495991, 29.090309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019898, 0.534649, -0.844840,
		-0.951139, 0.270539, 0.148806,
		0.308121, 0.800600, 0.513908,
		36.793434, 37.736172, 29.244482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296791, 37.625069, 28.496998>,  <36.577747, 37.175751, 28.884747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296791, 37.625069, 28.496998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539150, 37.848743, 28.723343>,  <36.684566, 37.982948, 28.859150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539150, 37.848743, 28.723343>,  <36.296791, 37.625069, 28.496998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539150, 37.848743, 28.723343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156457, 0.613645, -0.773926,
		-0.780005, 0.557454, 0.284319,
		0.605899, 0.559182, 0.565864,
		36.720921, 38.016499, 28.893103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082462, 38.291931, 28.365305>,  <36.296791, 37.625069, 28.496998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082462, 38.291931, 28.365305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458965, 38.305611, 28.499689>,  <36.684868, 38.313820, 28.580320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458965, 38.305611, 28.499689>,  <36.082462, 38.291931, 28.365305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458965, 38.305611, 28.499689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262114, 0.553275, -0.790685,
		-0.212922, 0.832296, 0.511808,
		0.941255, 0.034203, 0.335961,
		36.741341, 38.315872, 28.600477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362667, 38.987564, 28.173944>,  <36.082462, 38.291931, 28.365305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362667, 38.987564, 28.173944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706631, 38.796211, 28.245180>,  <36.913010, 38.681400, 28.287922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706631, 38.796211, 28.245180>,  <36.362667, 38.987564, 28.173944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706631, 38.796211, 28.245180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430643, 0.492561, -0.756260,
		0.274058, 0.727006, 0.629567,
		0.859906, -0.478378, 0.178090,
		36.964603, 38.652699, 28.298607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952465, 39.492645, 28.146906>,  <36.362667, 38.987564, 28.173944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952465, 39.492645, 28.146906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113361, 39.128902, 28.104427>,  <37.209900, 38.910656, 28.078941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113361, 39.128902, 28.104427>,  <36.952465, 39.492645, 28.146906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113361, 39.128902, 28.104427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422617, 0.287318, -0.859560,
		0.812156, 0.300870, 0.499879,
		0.402241, -0.909354, -0.106195,
		37.234032, 38.856094, 28.072569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637577, 39.652050, 28.039759>,  <36.952465, 39.492645, 28.146906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637577, 39.652050, 28.039759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555500, 39.287266, 27.897646>,  <37.506252, 39.068394, 27.812378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555500, 39.287266, 27.897646>,  <37.637577, 39.652050, 28.039759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555500, 39.287266, 27.897646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462157, 0.229700, -0.856533,
		0.862732, -0.339951, 0.374336,
		-0.205194, -0.911960, -0.355280,
		37.493942, 39.013680, 27.791061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208744, 39.540936, 27.694246>,  <37.637577, 39.652050, 28.039759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208744, 39.540936, 27.694246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986767, 39.243641, 27.544775>,  <37.853580, 39.065266, 27.455091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986767, 39.243641, 27.544775>,  <38.208744, 39.540936, 27.694246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986767, 39.243641, 27.544775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475498, 0.085187, -0.875583,
		0.682599, -0.663581, 0.306135,
		-0.554942, -0.743238, -0.373680,
		37.820286, 39.020668, 27.432671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668194, 39.090958, 27.380045>,  <38.208744, 39.540936, 27.694246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668194, 39.090958, 27.380045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318703, 39.009605, 27.203300>,  <38.109009, 38.960793, 27.097254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318703, 39.009605, 27.203300>,  <38.668194, 39.090958, 27.380045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318703, 39.009605, 27.203300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382155, 0.274989, -0.882235,
		0.300943, -0.939689, -0.162538,
		-0.873723, -0.203387, -0.441863,
		38.056583, 38.948589, 27.070742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828342, 38.666267, 26.887535>,  <38.668194, 39.090958, 27.380045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828342, 38.666267, 26.887535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480381, 38.840313, 26.794632>,  <38.271603, 38.944740, 26.738890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.480381, 38.840313, 26.794632>,  <38.828342, 38.666267, 26.887535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480381, 38.840313, 26.794632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408870, 0.372813, -0.832968,
		-0.275845, -0.819566, -0.502216,
		-0.869905, 0.435111, -0.232258,
		38.219410, 38.970844, 26.724955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708591, 38.594997, 26.124212>,  <38.828342, 38.666267, 26.887535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708591, 38.594997, 26.124212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475876, 38.898136, 26.242319>,  <38.336246, 39.080021, 26.313183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475876, 38.898136, 26.242319>,  <38.708591, 38.594997, 26.124212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475876, 38.898136, 26.242319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493432, 0.617469, -0.612583,
		-0.646563, -0.210702, -0.733185,
		-0.581791, 0.757850, 0.295265,
		38.301338, 39.125492, 26.330898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445370, 38.895618, 25.567968>,  <38.708591, 38.594997, 26.124212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445370, 38.895618, 25.567968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397800, 39.183823, 25.841238>,  <38.369259, 39.356743, 26.005199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.397800, 39.183823, 25.841238>,  <38.445370, 38.895618, 25.567968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397800, 39.183823, 25.841238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320542, 0.679076, -0.660385,
		-0.939739, 0.140449, -0.311712,
		-0.118926, 0.720507, 0.683174,
		38.362122, 39.399975, 26.046190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202618, 39.412125, 25.140396>,  <38.445370, 38.895618, 25.567968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202618, 39.412125, 25.140396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291489, 39.615543, 25.473146>,  <38.344810, 39.737595, 25.672796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291489, 39.615543, 25.473146>,  <38.202618, 39.412125, 25.140396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291489, 39.615543, 25.473146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263380, 0.790177, -0.553399,
		-0.938758, 0.342055, 0.041622,
		0.222182, 0.508545, 0.831876,
		38.358143, 39.768108, 25.722710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750809, 39.995872, 25.106960>,  <38.202618, 39.412125, 25.140396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750809, 39.995872, 25.106960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079529, 40.047020, 25.329058>,  <38.276760, 40.077709, 25.462317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079529, 40.047020, 25.329058>,  <37.750809, 39.995872, 25.106960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079529, 40.047020, 25.329058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262518, 0.779922, -0.568161,
		-0.505698, 0.612675, 0.607370,
		0.821799, 0.127872, 0.555243,
		38.326069, 40.085381, 25.495630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671467, 40.708504, 25.130384>,  <37.750809, 39.995872, 25.106960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671467, 40.708504, 25.130384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037121, 40.586353, 25.237040>,  <38.256516, 40.513062, 25.301033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037121, 40.586353, 25.237040>,  <37.671467, 40.708504, 25.130384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037121, 40.586353, 25.237040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386347, 0.855494, -0.344769,
		-0.122824, 0.418183, 0.900021,
		0.914139, -0.305375, 0.266639,
		38.311363, 40.494740, 25.317032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030220, 41.231773, 25.502439>,  <37.671467, 40.708504, 25.130384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030220, 41.231773, 25.502439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316071, 41.007050, 25.335737>,  <38.487579, 40.872215, 25.235716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316071, 41.007050, 25.335737>,  <38.030220, 41.231773, 25.502439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316071, 41.007050, 25.335737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413759, 0.819874, -0.395739,
		0.564016, 0.110368, 0.818355,
		0.714625, -0.561805, -0.416756,
		38.530457, 40.838509, 25.210711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519680, 41.689247, 25.427929>,  <38.030220, 41.231773, 25.502439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519680, 41.689247, 25.427929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672642, 41.401344, 25.196165>,  <38.764420, 41.228603, 25.057106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.672642, 41.401344, 25.196165>,  <38.519680, 41.689247, 25.427929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672642, 41.401344, 25.196165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552294, 0.680772, -0.481166,
		0.740769, -0.136006, 0.657847,
		0.382402, -0.719758, -0.579410,
		38.787361, 41.185417, 25.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216221, 41.883453, 25.354179>,  <38.519680, 41.689247, 25.427929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216221, 41.883453, 25.354179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150154, 41.625656, 25.055555>,  <39.110516, 41.470978, 24.876381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150154, 41.625656, 25.055555>,  <39.216221, 41.883453, 25.354179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150154, 41.625656, 25.055555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429402, 0.634457, -0.642712,
		0.887882, -0.426728, 0.171955,
		-0.165166, -0.644490, -0.746561,
		39.100605, 41.432308, 24.831587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852459, 41.601887, 24.976845>,  <39.216221, 41.883453, 25.354179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852459, 41.601887, 24.976845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547207, 41.597836, 24.718380>,  <39.364056, 41.595406, 24.563301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547207, 41.597836, 24.718380>,  <39.852459, 41.601887, 24.976845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547207, 41.597836, 24.718380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488652, 0.645284, -0.587221,
		0.422901, -0.763876, -0.487491,
		-0.763134, -0.010123, -0.646161,
		39.318268, 41.594799, 24.524532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179096, 41.714512, 24.380486>,  <39.852459, 41.601887, 24.976845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179096, 41.714512, 24.380486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808186, 41.747540, 24.234419>,  <39.585640, 41.767357, 24.146778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808186, 41.747540, 24.234419>,  <40.179096, 41.714512, 24.380486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808186, 41.747540, 24.234419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327998, 0.649440, -0.686036,
		0.180506, -0.755916, -0.629292,
		-0.927273, 0.082573, -0.365167,
		39.530003, 41.772312, 24.124868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212975, 41.605801, 23.593388>,  <40.179096, 41.714512, 24.380486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212975, 41.605801, 23.593388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897896, 41.828487, 23.698917>,  <39.708847, 41.962097, 23.762236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897896, 41.828487, 23.698917>,  <40.212975, 41.605801, 23.593388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897896, 41.828487, 23.698917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301019, 0.721446, -0.623620,
		-0.537512, -0.411808, -0.735863,
		-0.787698, 0.556713, 0.263824,
		39.661587, 41.995502, 23.778065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182682, 41.871613, 23.039497>,  <40.212975, 41.605801, 23.593388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182682, 41.871613, 23.039497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950512, 42.089016, 23.282055>,  <39.811211, 42.219456, 23.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950512, 42.089016, 23.282055>,  <40.182682, 41.871613, 23.039497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950512, 42.089016, 23.282055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290940, 0.833925, -0.468959,
		-0.760567, -0.095771, -0.642158,
		-0.580424, 0.543504, 0.606392,
		39.776386, 42.252068, 23.463972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914059, 42.293812, 22.571339>,  <40.182682, 41.871613, 23.039497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914059, 42.293812, 22.571339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870335, 42.465233, 22.930090>,  <39.844101, 42.568085, 23.145342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870335, 42.465233, 22.930090>,  <39.914059, 42.293812, 22.571339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870335, 42.465233, 22.930090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238210, 0.887287, -0.394939,
		-0.965043, 0.170476, -0.199072,
		-0.109307, 0.428554, 0.896880,
		39.837543, 42.593800, 23.199154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464836, 42.952316, 22.580854>,  <39.914059, 42.293812, 22.571339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464836, 42.952316, 22.580854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717144, 42.980457, 22.889963>,  <39.868530, 42.997341, 23.075428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717144, 42.980457, 22.889963>,  <39.464836, 42.952316, 22.580854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717144, 42.980457, 22.889963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326263, 0.879530, -0.346379,
		-0.704045, 0.470614, 0.531831,
		0.630772, 0.070349, 0.772773,
		39.906376, 43.001560, 23.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463188, 43.526726, 23.020901>,  <39.464836, 42.952316, 22.580854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463188, 43.526726, 23.020901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319668, 43.176651, 23.150711>,  <39.233555, 42.966606, 23.228598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319668, 43.176651, 23.150711>,  <39.463188, 43.526726, 23.020901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319668, 43.176651, 23.150711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787730, 0.097389, -0.608274,
		0.500746, -0.473887, -0.724351,
		-0.358797, -0.875184, 0.324527,
		39.212029, 42.914097, 23.248070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.280128, 44.213707, 23.409332>,  <39.463188, 43.526726, 23.020901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.280128, 44.213707, 23.409332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540073, 44.448879, 23.601999>,  <39.696041, 44.589985, 23.717600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540073, 44.448879, 23.601999>,  <39.280128, 44.213707, 23.409332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540073, 44.448879, 23.601999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486477, 0.165152, -0.857942,
		-0.583963, 0.791869, -0.178690,
		0.649867, 0.587935, 0.481669,
		39.735035, 44.625259, 23.746500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291988, 44.783390, 23.046848>,  <39.280128, 44.213707, 23.409332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291988, 44.783390, 23.046848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631001, 44.780815, 23.259130>,  <39.834408, 44.779270, 23.386499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631001, 44.780815, 23.259130>,  <39.291988, 44.783390, 23.046848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631001, 44.780815, 23.259130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530434, 0.044536, -0.846556,
		-0.018189, 0.998987, 0.041159,
		0.847531, -0.006434, 0.530707,
		39.885262, 44.778885, 23.418343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759975, 45.183979, 22.692593>,  <39.291988, 44.783390, 23.046848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759975, 45.183979, 22.692593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986332, 44.936798, 22.910915>,  <40.122147, 44.788490, 23.041908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986332, 44.936798, 22.910915>,  <39.759975, 45.183979, 22.692593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986332, 44.936798, 22.910915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636895, -0.092763, -0.765350,
		0.523581, 0.780723, 0.341078,
		0.565887, -0.617953, 0.545808,
		40.156097, 44.751411, 23.074657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314423, 44.763077, 22.287968>,  <39.759975, 45.183979, 22.692593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314423, 44.763077, 22.287968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713726, 44.784489, 22.297863>,  <40.953308, 44.797337, 22.303801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713726, 44.784489, 22.297863>,  <40.314423, 44.763077, 22.287968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713726, 44.784489, 22.297863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049230, 0.525632, 0.849286,
		0.032459, -0.849026, 0.527353,
		0.998260, 0.053529, 0.024736,
		41.013203, 44.800549, 22.305285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536133, 44.279461, 22.826929>,  <40.314423, 44.763077, 22.287968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536133, 44.279461, 22.826929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748245, 44.614365, 22.773567>,  <40.875511, 44.815308, 22.741550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748245, 44.614365, 22.773567>,  <40.536133, 44.279461, 22.826929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748245, 44.614365, 22.773567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211499, 0.283015, 0.935506,
		0.821018, -0.467865, 0.327157,
		0.530281, 0.837261, -0.133407,
		40.907330, 44.865543, 22.733545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017765, 44.385746, 23.426407>,  <40.536133, 44.279461, 22.826929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017765, 44.385746, 23.426407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754742, 44.680252, 23.362480>,  <40.596928, 44.856956, 23.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.754742, 44.680252, 23.362480>,  <41.017765, 44.385746, 23.426407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.754742, 44.680252, 23.362480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258441, -0.021170, 0.965795,
		0.707694, 0.676367, 0.204200,
		-0.657555, 0.736261, -0.159819,
		40.557476, 44.901131, 23.314535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050583, 44.972614, 23.970964>,  <41.017765, 44.385746, 23.426407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050583, 44.972614, 23.970964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686726, 44.952297, 23.806055>,  <40.468410, 44.940109, 23.707109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686726, 44.952297, 23.806055>,  <41.050583, 44.972614, 23.970964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686726, 44.952297, 23.806055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415079, 0.149467, 0.897424,
		0.016040, 0.987461, -0.157043,
		-0.909644, -0.050790, -0.412272,
		40.413834, 44.937061, 23.682373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614857, 45.470310, 24.332302>,  <41.050583, 44.972614, 23.970964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614857, 45.470310, 24.332302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345249, 45.233799, 24.155170>,  <40.183487, 45.091892, 24.048891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345249, 45.233799, 24.155170>,  <40.614857, 45.470310, 24.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345249, 45.233799, 24.155170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585416, 0.061918, 0.808365,
		-0.450547, 0.804089, -0.387875,
		-0.674015, -0.591275, -0.442829,
		40.143044, 45.056416, 24.022322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880215, 45.827358, 24.295443>,  <40.614857, 45.470310, 24.332302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880215, 45.827358, 24.295443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851425, 45.429176, 24.270479>,  <39.834152, 45.190269, 24.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851425, 45.429176, 24.270479>,  <39.880215, 45.827358, 24.295443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851425, 45.429176, 24.270479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533398, -0.014454, 0.845741,
		-0.842796, 0.094161, -0.529932,
		-0.071976, -0.995452, -0.062407,
		39.829834, 45.130539, 24.251757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302490, 45.692043, 24.646952>,  <39.880215, 45.827358, 24.295443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302490, 45.692043, 24.646952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427235, 45.313553, 24.612555>,  <39.502083, 45.086460, 24.591917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427235, 45.313553, 24.612555>,  <39.302490, 45.692043, 24.646952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427235, 45.313553, 24.612555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364770, -0.202808, 0.908742,
		-0.877317, -0.252036, -0.408404,
		0.311863, -0.946228, -0.085992,
		39.520794, 45.029686, 24.586758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731350, 45.266018, 24.739033>,  <39.302490, 45.692043, 24.646952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731350, 45.266018, 24.739033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033371, 45.010143, 24.796574>,  <39.214584, 44.856617, 24.831099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033371, 45.010143, 24.796574>,  <38.731350, 45.266018, 24.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033371, 45.010143, 24.796574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387067, -0.257793, 0.885281,
		-0.529222, -0.724112, -0.442250,
		0.755052, -0.639691, 0.143850,
		39.259888, 44.818237, 24.839729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470215, 44.646526, 24.997805>,  <38.731350, 45.266018, 24.739033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470215, 44.646526, 24.997805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851902, 44.652107, 25.117317>,  <39.080914, 44.655457, 25.189024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851902, 44.652107, 25.117317>,  <38.470215, 44.646526, 24.997805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851902, 44.652107, 25.117317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258751, -0.462588, 0.847974,
		0.150040, -0.886464, -0.437801,
		0.954220, 0.013949, 0.298780,
		39.138168, 44.656292, 25.206951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597912, 44.009045, 25.198317>,  <38.470215, 44.646526, 24.997805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597912, 44.009045, 25.198317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884319, 44.213257, 25.388760>,  <39.056164, 44.335785, 25.503025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884319, 44.213257, 25.388760>,  <38.597912, 44.009045, 25.198317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884319, 44.213257, 25.388760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339435, -0.341353, 0.876506,
		0.610004, -0.789200, -0.071122,
		0.716016, 0.510531, 0.476109,
		39.099125, 44.366417, 25.531591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792755, 43.581993, 25.820148>,  <38.597912, 44.009045, 25.198317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792755, 43.581993, 25.820148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944641, 43.939091, 25.917171>,  <39.035770, 44.153347, 25.975386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944641, 43.939091, 25.917171>,  <38.792755, 43.581993, 25.820148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944641, 43.939091, 25.917171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261997, -0.147686, 0.953701,
		0.887230, -0.425681, 0.177817,
		0.379712, 0.892740, 0.242559,
		39.058556, 44.206913, 25.989939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251049, 43.481464, 26.433342>,  <38.792755, 43.581993, 25.820148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251049, 43.481464, 26.433342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140388, 43.864952, 26.407049>,  <39.073994, 44.095043, 26.391273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140388, 43.864952, 26.407049>,  <39.251049, 43.481464, 26.433342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140388, 43.864952, 26.407049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347586, -0.036060, 0.936954,
		0.895907, 0.282056, 0.343214,
		-0.276650, 0.958720, -0.065732,
		39.057392, 44.152569, 26.387329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573536, 43.835297, 26.967386>,  <39.251049, 43.481464, 26.433342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573536, 43.835297, 26.967386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273773, 44.085953, 26.881874>,  <39.093914, 44.236347, 26.830566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273773, 44.085953, 26.881874>,  <39.573536, 43.835297, 26.967386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273773, 44.085953, 26.881874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346427, -0.095947, 0.933157,
		0.564246, 0.773377, 0.288990,
		-0.749410, 0.626644, -0.213781,
		39.048950, 44.273945, 26.817739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533623, 44.042545, 27.506889>,  <39.573536, 43.835297, 26.967386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533623, 44.042545, 27.506889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184044, 44.166660, 27.357256>,  <38.974297, 44.241131, 27.267475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184044, 44.166660, 27.357256>,  <39.533623, 44.042545, 27.506889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184044, 44.166660, 27.357256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408748, -0.052820, 0.911118,
		0.262950, 0.949174, 0.172992,
		-0.873946, 0.310288, -0.374084,
		38.921860, 44.259747, 27.245031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256260, 44.686802, 27.952169>,  <39.533623, 44.042545, 27.506889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256260, 44.686802, 27.952169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958481, 44.491661, 27.769831>,  <38.779812, 44.374577, 27.660427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958481, 44.491661, 27.769831>,  <39.256260, 44.686802, 27.952169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958481, 44.491661, 27.769831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455345, -0.128370, 0.881012,
		-0.488318, 0.863438, -0.126574,
		-0.744451, -0.487849, -0.455847,
		38.735146, 44.345306, 27.633076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690708, 44.882275, 28.228504>,  <39.256260, 44.686802, 27.952169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690708, 44.882275, 28.228504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551926, 44.542294, 28.069910>,  <38.468658, 44.338306, 27.974754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551926, 44.542294, 28.069910>,  <38.690708, 44.882275, 28.228504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551926, 44.542294, 28.069910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490397, -0.195945, 0.849186,
		-0.799458, 0.489064, -0.348831,
		-0.346955, -0.849954, -0.396485,
		38.447838, 44.287308, 27.950964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964600, 44.947639, 28.271162>,  <38.690708, 44.882275, 28.228504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964600, 44.947639, 28.271162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057686, 44.560242, 28.235689>,  <38.113537, 44.327805, 28.214405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057686, 44.560242, 28.235689>,  <37.964600, 44.947639, 28.271162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057686, 44.560242, 28.235689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592379, -0.213476, 0.776862,
		-0.771316, -0.128257, -0.623395,
		0.232718, -0.968493, -0.088681,
		38.127502, 44.269695, 28.209085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305538, 44.503220, 28.349892>,  <37.964600, 44.947639, 28.271162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305538, 44.503220, 28.349892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594463, 44.236351, 28.422722>,  <37.767818, 44.076229, 28.466419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.594463, 44.236351, 28.422722>,  <37.305538, 44.503220, 28.349892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594463, 44.236351, 28.422722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543896, -0.385425, 0.745402,
		-0.427132, -0.637444, -0.641268,
		0.722312, -0.667168, 0.182076,
		37.811157, 44.036201, 28.477345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936527, 43.882294, 28.356426>,  <37.305538, 44.503220, 28.349892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936527, 43.882294, 28.356426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276375, 43.785564, 28.543900>,  <37.480282, 43.727528, 28.656384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276375, 43.785564, 28.543900>,  <36.936527, 43.882294, 28.356426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276375, 43.785564, 28.543900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485758, -0.704910, 0.516858,
		0.205392, -0.666800, -0.716374,
		0.849620, -0.241826, 0.468686,
		37.531261, 43.713017, 28.684505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756397, 43.223911, 28.559919>,  <36.936527, 43.882294, 28.356426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756397, 43.223911, 28.559919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087246, 43.317169, 28.764471>,  <37.285755, 43.373123, 28.887203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087246, 43.317169, 28.764471>,  <36.756397, 43.223911, 28.559919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087246, 43.317169, 28.764471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199341, -0.729043, 0.654797,
		0.525479, -0.643538, -0.556535,
		0.827124, 0.233142, 0.511380,
		37.335384, 43.387112, 28.917885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151794, 42.579430, 28.700075>,  <36.756397, 43.223911, 28.559919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151794, 42.579430, 28.700075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243355, 42.869286, 28.960073>,  <37.298290, 43.043201, 29.116074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.243355, 42.869286, 28.960073>,  <37.151794, 42.579430, 28.700075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243355, 42.869286, 28.960073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233544, -0.607344, 0.759336,
		0.945020, -0.325613, 0.030216,
		0.228898, 0.724644, 0.649997,
		37.312023, 43.086678, 29.155073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523746, 42.274609, 29.273424>,  <37.151794, 42.579430, 28.700075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523746, 42.274609, 29.273424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379536, 42.611683, 29.433376>,  <37.293007, 42.813927, 29.529348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379536, 42.611683, 29.433376>,  <37.523746, 42.274609, 29.273424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379536, 42.611683, 29.433376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040330, -0.442396, 0.895913,
		0.931876, 0.306875, 0.193482,
		-0.360529, 0.842683, 0.399882,
		37.271378, 42.864487, 29.553341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865696, 42.329266, 29.909925>,  <37.523746, 42.274609, 29.273424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865696, 42.329266, 29.909925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559769, 42.585377, 29.938480>,  <37.376213, 42.739044, 29.955612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559769, 42.585377, 29.938480>,  <37.865696, 42.329266, 29.909925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559769, 42.585377, 29.938480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224755, -0.369021, 0.901836,
		0.603767, 0.673699, 0.426140,
		-0.764821, 0.640276, 0.071386,
		37.330322, 42.777458, 29.959896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862125, 42.531616, 30.640619>,  <37.865696, 42.329266, 29.909925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862125, 42.531616, 30.640619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494049, 42.586628, 30.494011>,  <37.273205, 42.619637, 30.406046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494049, 42.586628, 30.494011>,  <37.862125, 42.531616, 30.640619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494049, 42.586628, 30.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390837, -0.269428, 0.880145,
		0.022298, 0.953149, 0.301677,
		-0.920190, 0.137532, -0.366519,
		37.217991, 42.627888, 30.384056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467102, 42.880512, 31.179876>,  <37.862125, 42.531616, 30.640619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467102, 42.880512, 31.179876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202217, 42.718857, 30.927483>,  <37.043285, 42.621864, 30.776047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202217, 42.718857, 30.927483>,  <37.467102, 42.880512, 31.179876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202217, 42.718857, 30.927483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556242, -0.299086, 0.775334,
		-0.502060, 0.864419, -0.026739,
		-0.662216, -0.404137, -0.630985,
		37.003551, 42.597614, 30.738188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787327, 43.109379, 31.409517>,  <37.467102, 42.880512, 31.179876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787327, 43.109379, 31.409517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678764, 42.805374, 31.173307>,  <36.613628, 42.622971, 31.031582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678764, 42.805374, 31.173307>,  <36.787327, 43.109379, 31.409517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678764, 42.805374, 31.173307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600376, -0.345860, 0.721061,
		-0.752255, 0.550236, -0.362426,
		-0.271405, -0.760014, -0.590523,
		36.597343, 42.577370, 30.996151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030422, 43.074760, 31.410500>,  <36.787327, 43.109379, 31.409517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030422, 43.074760, 31.410500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181499, 42.721706, 31.298573>,  <36.272144, 42.509872, 31.231417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181499, 42.721706, 31.298573>,  <36.030422, 43.074760, 31.410500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181499, 42.721706, 31.298573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676870, -0.469402, 0.567018,
		-0.631819, -0.024758, -0.774721,
		0.377694, -0.882637, -0.279819,
		36.294807, 42.456917, 31.214626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464619, 42.564026, 31.326101>,  <36.030422, 43.074760, 31.410500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464619, 42.564026, 31.326101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773727, 42.311329, 31.350519>,  <35.959194, 42.159710, 31.365170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773727, 42.311329, 31.350519>,  <35.464619, 42.564026, 31.326101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773727, 42.311329, 31.350519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611354, -0.715082, 0.338976,
		-0.170494, -0.299270, -0.938813,
		0.772773, -0.631740, 0.061043,
		36.005558, 42.121807, 31.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204147, 41.842190, 31.275089>,  <35.464619, 42.564026, 31.326101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204147, 41.842190, 31.275089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562935, 41.782120, 31.441408>,  <35.778210, 41.746078, 31.541199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562935, 41.782120, 31.441408>,  <35.204147, 41.842190, 31.275089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562935, 41.782120, 31.441408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373539, -0.760491, 0.531152,
		0.236446, -0.631746, -0.738235,
		0.896973, -0.150170, 0.415797,
		35.832027, 41.737068, 31.566147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340912, 41.075172, 31.226566>,  <35.204147, 41.842190, 31.275089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340912, 41.075172, 31.226566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516617, 41.248741, 31.541212>,  <35.622040, 41.352882, 31.730000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516617, 41.248741, 31.541212>,  <35.340912, 41.075172, 31.226566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516617, 41.248741, 31.541212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390335, -0.696455, 0.602154,
		0.809128, -0.571546, -0.136552,
		0.439261, 0.433919, 0.786616,
		35.648396, 41.378918, 31.777197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523571, 40.546890, 31.567207>,  <35.340912, 41.075172, 31.226566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523571, 40.546890, 31.567207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603600, 40.821968, 31.846365>,  <35.651615, 40.987015, 32.013859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603600, 40.821968, 31.846365>,  <35.523571, 40.546890, 31.567207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603600, 40.821968, 31.846365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156019, -0.680844, 0.715619,
		0.967279, -0.252060, -0.028926,
		0.200073, 0.687690, 0.697892,
		35.663620, 41.028275, 32.055733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838943, 40.256077, 32.227802>,  <35.523571, 40.546890, 31.567207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838943, 40.256077, 32.227802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708969, 40.599236, 32.387012>,  <35.630985, 40.805130, 32.482540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.708969, 40.599236, 32.387012>,  <35.838943, 40.256077, 32.227802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708969, 40.599236, 32.387012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233032, -0.480516, 0.845459,
		0.916576, 0.181968, 0.356056,
		-0.324937, 0.857900, 0.398025,
		35.611488, 40.856606, 32.506420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210960, 40.345722, 32.897404>,  <35.838943, 40.256077, 32.227802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210960, 40.345722, 32.897404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859978, 40.537552, 32.901024>,  <35.649387, 40.652649, 32.903194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859978, 40.537552, 32.901024>,  <36.210960, 40.345722, 32.897404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859978, 40.537552, 32.901024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255037, -0.482437, 0.837980,
		0.406240, 0.732982, 0.545626,
		-0.877454, 0.479576, 0.009048,
		35.596741, 40.681423, 32.903740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097958, 40.509125, 33.578815>,  <36.210960, 40.345722, 32.897404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097958, 40.509125, 33.578815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736160, 40.546272, 33.412315>,  <35.519081, 40.568562, 33.312416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736160, 40.546272, 33.412315>,  <36.097958, 40.509125, 33.578815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736160, 40.546272, 33.412315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408731, -0.467451, 0.783855,
		-0.121780, 0.879127, 0.460766,
		-0.904493, 0.092871, -0.416253,
		35.464813, 40.574135, 33.287441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747120, 40.652546, 34.171486>,  <36.097958, 40.509125, 33.578815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747120, 40.652546, 34.171486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478546, 40.539577, 33.897434>,  <35.317402, 40.471794, 33.733002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478546, 40.539577, 33.897434>,  <35.747120, 40.652546, 34.171486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478546, 40.539577, 33.897434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535774, -0.453721, 0.712098,
		-0.511974, 0.845206, 0.153330,
		-0.671438, -0.282426, -0.685132,
		35.277115, 40.454849, 33.691895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094379, 40.749149, 34.430309>,  <35.747120, 40.652546, 34.171486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094379, 40.749149, 34.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015739, 40.480995, 34.144112>,  <34.968555, 40.320103, 33.972393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015739, 40.480995, 34.144112>,  <35.094379, 40.749149, 34.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015739, 40.480995, 34.144112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539996, -0.535063, 0.649702,
		-0.818384, 0.514097, -0.256811,
		-0.196600, -0.670383, -0.715497,
		34.956760, 40.279881, 33.929462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413300, 40.546593, 34.578598>,  <35.094379, 40.749149, 34.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413300, 40.546593, 34.578598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538380, 40.251923, 34.338757>,  <34.613426, 40.075119, 34.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538380, 40.251923, 34.338757>,  <34.413300, 40.546593, 34.578598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538380, 40.251923, 34.338757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607121, -0.640490, 0.470294,
		-0.730495, 0.216971, -0.647535,
		0.312700, -0.736679, -0.599602,
		34.632191, 40.030918, 34.158875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860397, 40.160301, 34.467648>,  <34.413300, 40.546593, 34.578598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860397, 40.160301, 34.467648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131054, 39.889336, 34.352222>,  <34.293446, 39.726757, 34.282967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131054, 39.889336, 34.352222>,  <33.860397, 40.160301, 34.467648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131054, 39.889336, 34.352222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494999, -0.708622, 0.502823,
		-0.545101, -0.197393, -0.814801,
		0.676639, -0.677415, -0.288561,
		34.334045, 39.686111, 34.265656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530075, 39.497570, 34.285309>,  <33.860397, 40.160301, 34.467648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530075, 39.497570, 34.285309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910999, 39.405380, 34.365303>,  <34.139553, 39.350067, 34.413300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910999, 39.405380, 34.365303>,  <33.530075, 39.497570, 34.285309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910999, 39.405380, 34.365303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296314, -0.854952, 0.425740,
		0.072855, -0.464693, -0.882469,
		0.952308, -0.230471, 0.199983,
		34.196693, 39.336239, 34.425297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622845, 38.790672, 34.169579>,  <33.530075, 39.497570, 34.285309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622845, 38.790672, 34.169579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932709, 38.866924, 34.410759>,  <34.118629, 38.912678, 34.555470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932709, 38.866924, 34.410759>,  <33.622845, 38.790672, 34.169579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932709, 38.866924, 34.410759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167543, -0.857535, 0.486377,
		0.609774, -0.477800, -0.632363,
		0.774665, 0.190632, 0.602954,
		34.165108, 38.924114, 34.591644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971172, 38.191589, 34.107155>,  <33.622845, 38.790672, 34.169579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971172, 38.191589, 34.107155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061317, 38.385208, 34.445366>,  <34.115402, 38.501381, 34.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061317, 38.385208, 34.445366>,  <33.971172, 38.191589, 34.107155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061317, 38.385208, 34.445366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077798, -0.856137, 0.510858,
		0.971164, -0.180907, -0.155282,
		0.225360, 0.484046, 0.845524,
		34.128925, 38.530422, 34.699024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568092, 37.839558, 34.432201>,  <33.971172, 38.191589, 34.107155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568092, 37.839558, 34.432201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368099, 38.033527, 34.719219>,  <34.248104, 38.149910, 34.891430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368099, 38.033527, 34.719219>,  <34.568092, 37.839558, 34.432201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368099, 38.033527, 34.719219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099328, -0.855180, 0.508725,
		0.860321, 0.183081, 0.475741,
		-0.499982, 0.484921, 0.717544,
		34.218105, 38.179005, 34.934483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837902, 37.538120, 35.136658>,  <34.568092, 37.839558, 34.432201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837902, 37.538120, 35.136658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501869, 37.715343, 35.261848>,  <34.300247, 37.821678, 35.336964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501869, 37.715343, 35.261848>,  <34.837902, 37.538120, 35.136658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501869, 37.715343, 35.261848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216589, -0.802948, 0.555304,
		0.497337, 0.398715, 0.770507,
		-0.840086, 0.443057, 0.312979,
		34.249844, 37.848259, 35.355743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311508, 37.186146, 35.567394>,  <34.837902, 37.538120, 35.136658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311508, 37.186146, 35.567394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445507, 37.343849, 35.909698>,  <35.525906, 37.438473, 36.115082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445507, 37.343849, 35.909698>,  <35.311508, 37.186146, 35.567394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445507, 37.343849, 35.909698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046862, -0.900149, 0.433055,
		0.941053, -0.185176, -0.283072,
		0.334998, 0.394262, 0.855765,
		35.546005, 37.462128, 36.166428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734756, 37.796547, 35.735001>,  <35.311508, 37.186146, 35.567394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734756, 37.796547, 35.735001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966541, 37.760162, 36.058964>,  <36.105614, 37.738331, 36.253342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966541, 37.760162, 36.058964>,  <35.734756, 37.796547, 35.735001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966541, 37.760162, 36.058964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466457, 0.851907, -0.238058,
		-0.668310, 0.515732, 0.536080,
		0.579465, -0.090962, 0.809905,
		36.140381, 37.732872, 36.301937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725807, 38.414135, 36.123119>,  <35.734756, 37.796547, 35.735001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725807, 38.414135, 36.123119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077579, 38.242153, 36.204838>,  <36.288643, 38.138962, 36.253868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.077579, 38.242153, 36.204838>,  <35.725807, 38.414135, 36.123119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077579, 38.242153, 36.204838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473814, 0.831964, -0.288678,
		-0.045849, 0.350672, 0.935375,
		0.879430, -0.429959, 0.204298,
		36.341408, 38.113167, 36.266129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086906, 38.919857, 36.480419>,  <35.725807, 38.414135, 36.123119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086906, 38.919857, 36.480419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385448, 38.678867, 36.367298>,  <36.564571, 38.534271, 36.299427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385448, 38.678867, 36.367298>,  <36.086906, 38.919857, 36.480419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385448, 38.678867, 36.367298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575575, 0.797635, -0.180254,
		0.334173, -0.028241, 0.942089,
		0.746353, -0.602478, -0.282803,
		36.609356, 38.498123, 36.282455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777874, 39.101151, 36.836586>,  <36.086906, 38.919857, 36.480419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777874, 39.101151, 36.836586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870701, 38.891102, 36.509075>,  <36.926395, 38.765072, 36.312569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870701, 38.891102, 36.509075>,  <36.777874, 39.101151, 36.836586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870701, 38.891102, 36.509075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582013, 0.749410, -0.315668,
		0.779362, -0.403283, 0.479539,
		0.232068, -0.525118, -0.818777,
		36.940323, 38.733566, 36.263443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552597, 39.268250, 36.722115>,  <36.777874, 39.101151, 36.836586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552597, 39.268250, 36.722115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387020, 39.128567, 36.385853>,  <37.287674, 39.044758, 36.184097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387020, 39.128567, 36.385853>,  <37.552597, 39.268250, 36.722115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387020, 39.128567, 36.385853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433873, 0.736160, -0.519445,
		0.800253, -0.579758, -0.153216,
		-0.413944, -0.349211, -0.840656,
		37.262836, 39.023804, 36.133656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994923, 39.181259, 36.226444>,  <37.552597, 39.268250, 36.722115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994923, 39.181259, 36.226444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664497, 39.206341, 36.002415>,  <37.466240, 39.221390, 35.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664497, 39.206341, 36.002415>,  <37.994923, 39.181259, 36.226444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664497, 39.206341, 36.002415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444485, 0.683466, -0.579058,
		0.346481, -0.727284, -0.592460,
		-0.826066, 0.062707, -0.560074,
		37.416679, 39.225151, 35.834393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335384, 39.264896, 35.551971>,  <37.994923, 39.181259, 36.226444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335384, 39.264896, 35.551971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953423, 39.383404, 35.544193>,  <37.724243, 39.454510, 35.539528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.953423, 39.383404, 35.544193>,  <38.335384, 39.264896, 35.551971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953423, 39.383404, 35.544193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244910, 0.748968, -0.615684,
		-0.167848, -0.592682, -0.787753,
		-0.954906, 0.296270, -0.019441,
		37.666950, 39.472286, 35.538361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147152, 39.269749, 34.845215>,  <38.335384, 39.264896, 35.551971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147152, 39.269749, 34.845215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926132, 39.535213, 35.046906>,  <37.793522, 39.694492, 35.167919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926132, 39.535213, 35.046906>,  <38.147152, 39.269749, 34.845215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926132, 39.535213, 35.046906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254694, 0.710474, -0.656016,
		-0.793615, -0.234055, -0.561600,
		-0.552546, 0.663660, 0.504230,
		37.760368, 39.734310, 35.198174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657722, 39.647457, 34.333454>,  <38.147152, 39.269749, 34.845215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657722, 39.647457, 34.333454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672901, 39.870113, 34.665409>,  <37.682007, 40.003708, 34.864582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.672901, 39.870113, 34.665409>,  <37.657722, 39.647457, 34.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672901, 39.870113, 34.665409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166117, 0.815413, -0.554533,
		-0.985376, 0.158900, -0.061527,
		0.037945, 0.556644, 0.829884,
		37.684284, 40.037106, 34.914375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283218, 40.197865, 34.089779>,  <37.657722, 39.647457, 34.333454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283218, 40.197865, 34.089779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458187, 40.336655, 34.421627>,  <37.563168, 40.419930, 34.620735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458187, 40.336655, 34.421627>,  <37.283218, 40.197865, 34.089779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458187, 40.336655, 34.421627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319918, 0.802161, -0.504172,
		-0.840423, 0.485948, 0.239882,
		0.437425, 0.346976, 0.829619,
		37.589417, 40.440746, 34.670513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120316, 40.928413, 34.076145>,  <37.283218, 40.197865, 34.089779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120316, 40.928413, 34.076145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431648, 40.873909, 34.321301>,  <37.618446, 40.841206, 34.468395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.431648, 40.873909, 34.321301>,  <37.120316, 40.928413, 34.076145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431648, 40.873909, 34.321301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427806, 0.829585, -0.358846,
		-0.459547, 0.541499, 0.703985,
		0.778331, -0.136262, 0.612890,
		37.665146, 40.833031, 34.505169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207657, 41.512447, 34.422485>,  <37.120316, 40.928413, 34.076145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207657, 41.512447, 34.422485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580574, 41.371334, 34.454433>,  <37.804325, 41.286667, 34.473602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580574, 41.371334, 34.454433>,  <37.207657, 41.512447, 34.422485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580574, 41.371334, 34.454433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354808, 0.848974, -0.391605,
		0.070346, 0.393427, 0.916661,
		0.932289, -0.352787, 0.079869,
		37.860260, 41.265499, 34.478394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489231, 42.025879, 34.554958>,  <37.207657, 41.512447, 34.422485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489231, 42.025879, 34.554958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818493, 41.818241, 34.462914>,  <38.016052, 41.693657, 34.407684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.818493, 41.818241, 34.462914>,  <37.489231, 42.025879, 34.554958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818493, 41.818241, 34.462914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459073, 0.846917, -0.268297,
		0.334159, 0.115212, 0.935449,
		0.823158, -0.519093, -0.230114,
		38.065441, 41.662514, 34.393879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190845, 42.440681, 34.634617>,  <37.489231, 42.025879, 34.554958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190845, 42.440681, 34.634617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288666, 42.141609, 34.387661>,  <38.347359, 41.962166, 34.239487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288666, 42.141609, 34.387661>,  <38.190845, 42.440681, 34.634617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288666, 42.141609, 34.387661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552446, 0.630708, -0.544987,
		0.796869, -0.207800, 0.567291,
		0.244547, -0.747681, -0.617390,
		38.362030, 41.917305, 34.202446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932846, 42.616302, 34.471405>,  <38.190845, 42.440681, 34.634617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932846, 42.616302, 34.471405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798515, 42.370159, 34.186153>,  <38.717915, 42.222473, 34.015003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.798515, 42.370159, 34.186153>,  <38.932846, 42.616302, 34.471405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798515, 42.370159, 34.186153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564759, 0.474372, -0.675291,
		0.753834, -0.629530, 0.188219,
		-0.335831, -0.615355, -0.713130,
		38.697765, 42.185551, 33.972214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631371, 42.437866, 34.089123>,  <38.932846, 42.616302, 34.471405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631371, 42.437866, 34.089123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321804, 42.352119, 33.850761>,  <39.136063, 42.300671, 33.707745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321804, 42.352119, 33.850761>,  <39.631371, 42.437866, 34.089123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321804, 42.352119, 33.850761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348144, 0.642001, -0.683104,
		0.529007, -0.736125, -0.422223,
		-0.773917, -0.214372, -0.595900,
		39.089630, 42.287807, 33.671989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999535, 42.417217, 33.376858>,  <39.631371, 42.437866, 34.089123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.999535, 42.417217, 33.376858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606606, 42.446716, 33.308029>,  <39.370850, 42.464417, 33.266731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606606, 42.446716, 33.308029>,  <39.999535, 42.417217, 33.376858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606606, 42.446716, 33.308029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187178, 0.371394, -0.909412,
		-0.003158, -0.925542, -0.378631,
		-0.982321, 0.073744, -0.172068,
		39.311909, 42.468838, 33.256409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829845, 42.000443, 32.731441>,  <39.999535, 42.417217, 33.376858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829845, 42.000443, 32.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568851, 42.299015, 32.783756>,  <39.412254, 42.478157, 32.815144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568851, 42.299015, 32.783756>,  <39.829845, 42.000443, 32.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568851, 42.299015, 32.783756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191293, 0.329231, -0.924670,
		-0.733261, -0.578314, -0.357605,
		-0.652484, 0.746431, 0.130785,
		39.373108, 42.522945, 32.822990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347836, 41.931995, 32.263149>,  <39.829845, 42.000443, 32.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347836, 41.931995, 32.263149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309307, 42.317329, 32.363316>,  <39.286190, 42.548531, 32.423416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309307, 42.317329, 32.363316>,  <39.347836, 41.931995, 32.263149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309307, 42.317329, 32.363316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071054, 0.257597, -0.963636,
		-0.992811, -0.075021, -0.093260,
		-0.096317, 0.963336, 0.250415,
		39.280411, 42.606331, 32.438438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868702, 42.199986, 31.795815>,  <39.347836, 41.931995, 32.263149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868702, 42.199986, 31.795815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038116, 42.537319, 31.928123>,  <39.139767, 42.739719, 32.007507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038116, 42.537319, 31.928123>,  <38.868702, 42.199986, 31.795815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038116, 42.537319, 31.928123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085234, 0.400617, -0.912272,
		-0.901861, 0.358186, 0.241556,
		0.423535, 0.843332, 0.330771,
		39.165176, 42.790318, 32.027355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571449, 42.705013, 31.358177>,  <38.868702, 42.199986, 31.795815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571449, 42.705013, 31.358177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910793, 42.850700, 31.511866>,  <39.114399, 42.938114, 31.604078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910793, 42.850700, 31.511866>,  <38.571449, 42.705013, 31.358177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910793, 42.850700, 31.511866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208335, 0.437511, -0.874746,
		-0.486700, 0.822149, 0.295288,
		0.848363, 0.364219, 0.384219,
		39.165302, 42.959965, 31.627131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546570, 43.354717, 31.018707>,  <38.571449, 42.705013, 31.358177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546570, 43.354717, 31.018707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909920, 43.267372, 31.161358>,  <39.127930, 43.214966, 31.246948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.909920, 43.267372, 31.161358>,  <38.546570, 43.354717, 31.018707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.909920, 43.267372, 31.161358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418165, 0.476045, -0.773641,
		-0.000838, 0.851881, 0.523735,
		0.908371, -0.218360, 0.356625,
		39.182430, 43.201862, 31.268345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876904, 43.936317, 31.037615>,  <38.546570, 43.354717, 31.018707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876904, 43.936317, 31.037615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148750, 43.643894, 31.013332>,  <39.311859, 43.468441, 30.998762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148750, 43.643894, 31.013332>,  <38.876904, 43.936317, 31.037615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148750, 43.643894, 31.013332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384550, 0.425515, -0.819182,
		0.624699, 0.533381, 0.570312,
		0.679612, -0.731055, -0.060707,
		39.352634, 43.424576, 30.995121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493217, 44.259823, 30.786779>,  <38.876904, 43.936317, 31.037615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493217, 44.259823, 30.786779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560696, 43.869785, 30.729176>,  <39.601181, 43.635765, 30.694613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560696, 43.869785, 30.729176>,  <39.493217, 44.259823, 30.786779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560696, 43.869785, 30.729176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406046, 0.201879, -0.891275,
		0.898147, 0.091880, 0.429989,
		0.168696, -0.975091, -0.144010,
		39.611305, 43.577259, 30.685972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147903, 44.304878, 30.627777>,  <39.493217, 44.259823, 30.786779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147903, 44.304878, 30.627777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027729, 43.948040, 30.492777>,  <39.955624, 43.733936, 30.411777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027729, 43.948040, 30.492777>,  <40.147903, 44.304878, 30.627777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027729, 43.948040, 30.492777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641193, 0.073060, -0.763894,
		0.706124, -0.445902, 0.550056,
		-0.300435, -0.892095, -0.337498,
		39.937599, 43.680412, 30.391527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656395, 44.065117, 30.287279>,  <40.147903, 44.304878, 30.627777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656395, 44.065117, 30.287279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383701, 43.810841, 30.142433>,  <40.220085, 43.658276, 30.055525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383701, 43.810841, 30.142433>,  <40.656395, 44.065117, 30.287279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383701, 43.810841, 30.142433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484178, -0.020973, -0.874719,
		0.548457, -0.771658, 0.322086,
		-0.681739, -0.635692, -0.362117,
		40.179180, 43.620132, 30.033798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023998, 43.458397, 30.097538>,  <40.656395, 44.065117, 30.287279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023998, 43.458397, 30.097538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685280, 43.477367, 29.885618>,  <40.482048, 43.488750, 29.758467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.685280, 43.477367, 29.885618>,  <41.023998, 43.458397, 30.097538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685280, 43.477367, 29.885618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507459, -0.226520, -0.831369,
		-0.159439, -0.972851, 0.167749,
		-0.846797, 0.047427, -0.529798,
		40.431240, 43.491596, 29.726679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.130341, 42.966087, 29.604015>,  <41.023998, 43.458397, 30.097538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.130341, 42.966087, 29.604015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845211, 43.202286, 29.452648>,  <40.674133, 43.344006, 29.361828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845211, 43.202286, 29.452648>,  <41.130341, 42.966087, 29.604015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845211, 43.202286, 29.452648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374892, -0.135202, -0.917157,
		-0.592741, -0.795635, -0.124997,
		-0.712822, 0.590496, -0.378417,
		40.631363, 43.379436, 29.339123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815830, 42.581360, 29.033962>,  <41.130341, 42.966087, 29.604015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815830, 42.581360, 29.033962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736645, 42.971443, 28.994421>,  <40.689133, 43.205494, 28.970697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736645, 42.971443, 28.994421>,  <40.815830, 42.581360, 29.033962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736645, 42.971443, 28.994421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353875, -0.022943, -0.935011,
		-0.914103, -0.220075, -0.340562,
		-0.197959, 0.975213, -0.098851,
		40.677258, 43.264008, 28.964766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597515, 42.587940, 28.348480>,  <40.815830, 42.581360, 29.033962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597515, 42.587940, 28.348480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680107, 42.971764, 28.425016>,  <40.729660, 43.202057, 28.470938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.680107, 42.971764, 28.425016>,  <40.597515, 42.587940, 28.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680107, 42.971764, 28.425016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300850, 0.123818, -0.945599,
		-0.931051, 0.252809, -0.263119,
		0.206477, 0.959561, 0.191339,
		40.742050, 43.259632, 28.482418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294151, 43.023792, 27.814354>,  <40.597515, 42.587940, 28.348480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294151, 43.023792, 27.814354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604214, 43.211884, 27.983122>,  <40.790253, 43.324738, 28.084383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604214, 43.211884, 27.983122>,  <40.294151, 43.023792, 27.814354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604214, 43.211884, 27.983122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345276, 0.243958, -0.906239,
		-0.529067, 0.848159, 0.026749,
		0.775160, 0.470225, 0.421919,
		40.836761, 43.352951, 28.109697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396957, 43.744080, 27.416389>,  <40.294151, 43.023792, 27.814354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396957, 43.744080, 27.416389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751308, 43.670986, 27.586956>,  <40.963921, 43.627129, 27.689297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751308, 43.670986, 27.586956>,  <40.396957, 43.744080, 27.416389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751308, 43.670986, 27.586956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460320, 0.231929, -0.856922,
		0.057690, 0.955415, 0.289576,
		0.885877, -0.182733, 0.426417,
		41.017071, 43.616165, 27.714882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928394, 44.329025, 27.308046>,  <40.396957, 43.744080, 27.416389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928394, 44.329025, 27.308046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164875, 44.015556, 27.384295>,  <41.306763, 43.827473, 27.430042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164875, 44.015556, 27.384295>,  <40.928394, 44.329025, 27.308046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164875, 44.015556, 27.384295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564157, 0.232918, -0.792134,
		0.576379, 0.575847, 0.579817,
		0.591198, -0.783677, 0.190619,
		41.342236, 43.780453, 27.441481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571739, 44.650372, 27.119114>,  <40.928394, 44.329025, 27.308046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571739, 44.650372, 27.119114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640640, 44.257130, 27.143860>,  <41.681980, 44.021183, 27.158707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640640, 44.257130, 27.143860>,  <41.571739, 44.650372, 27.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640640, 44.257130, 27.143860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693625, 0.076461, -0.716267,
		0.699437, 0.166289, 0.695079,
		0.172254, -0.983108, 0.061863,
		41.692318, 43.962196, 27.162418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237564, 44.540993, 26.965208>,  <41.571739, 44.650372, 27.119114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237564, 44.540993, 26.965208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112698, 44.162727, 26.928837>,  <42.037777, 43.935768, 26.907013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112698, 44.162727, 26.928837>,  <42.237564, 44.540993, 26.965208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112698, 44.162727, 26.928837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575032, -0.111888, -0.810443,
		0.756236, -0.305277, 0.578717,
		-0.312162, -0.945667, -0.090930,
		42.019051, 43.879028, 26.901558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862453, 44.066795, 26.967941>,  <42.237564, 44.540993, 26.965208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862453, 44.066795, 26.967941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584873, 43.860680, 26.766781>,  <42.418324, 43.737011, 26.646084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.584873, 43.860680, 26.766781>,  <42.862453, 44.066795, 26.967941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584873, 43.860680, 26.766781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664921, -0.190648, -0.722173,
		0.276250, -0.835542, 0.474926,
		-0.693950, -0.515289, -0.502903,
		42.376690, 43.706093, 26.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.200069, 43.438728, 26.827190>,  <42.862453, 44.066795, 26.967941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.200069, 43.438728, 26.827190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890789, 43.496414, 26.580172>,  <42.705219, 43.531025, 26.431961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890789, 43.496414, 26.580172>,  <43.200069, 43.438728, 26.827190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890789, 43.496414, 26.580172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578318, -0.239213, -0.779952,
		-0.260213, -0.960196, 0.101552,
		-0.773199, 0.144224, -0.617545,
		42.658829, 43.539680, 26.394909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400780, 43.003704, 26.311811>,  <43.200069, 43.438728, 26.827190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400780, 43.003704, 26.311811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110416, 43.218788, 26.140263>,  <42.936199, 43.347839, 26.037333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110416, 43.218788, 26.140263>,  <43.400780, 43.003704, 26.311811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110416, 43.218788, 26.140263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413726, -0.156758, -0.896804,
		-0.549446, -0.828432, -0.108671,
		-0.725906, 0.537706, -0.428874,
		42.892643, 43.380100, 26.011600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135311, 43.038315, 26.217550>,  <43.400780, 43.003704, 26.311811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135311, 43.038315, 26.217550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429432, 42.826241, 26.048677>,  <44.605904, 42.698994, 25.947353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429432, 42.826241, 26.048677>,  <44.135311, 43.038315, 26.217550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429432, 42.826241, 26.048677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192913, -0.760881, 0.619552,
		-0.649707, -0.374112, -0.661756,
		0.735299, -0.530189, -0.422179,
		44.650021, 42.667183, 25.922024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869091, 42.464149, 25.860260>,  <44.135311, 43.038315, 26.217550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869091, 42.464149, 25.860260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217926, 42.424389, 26.051916>,  <44.427227, 42.400532, 26.166910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217926, 42.424389, 26.051916>,  <43.869091, 42.464149, 25.860260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217926, 42.424389, 26.051916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393683, -0.724066, 0.566341,
		0.290639, -0.682531, -0.670583,
		0.872091, -0.099396, 0.479142,
		44.479553, 42.394569, 26.195658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.918308, 41.656734, 26.001738>,  <43.869091, 42.464149, 25.860260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.918308, 41.656734, 26.001738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193886, 41.827202, 26.236256>,  <44.359230, 41.929482, 26.376966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193886, 41.827202, 26.236256>,  <43.918308, 41.656734, 26.001738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193886, 41.827202, 26.236256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260092, -0.609658, 0.748778,
		0.676546, -0.668354, -0.309175,
		0.688940, 0.426169, 0.586295,
		44.400566, 41.955051, 26.412144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219032, 41.115826, 26.379982>,  <43.918308, 41.656734, 26.001738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219032, 41.115826, 26.379982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347137, 41.416317, 26.610836>,  <44.424000, 41.596611, 26.749348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347137, 41.416317, 26.610836>,  <44.219032, 41.115826, 26.379982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347137, 41.416317, 26.610836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209211, -0.538094, 0.816508,
		0.923938, -0.382243, -0.015168,
		0.320266, 0.751229, 0.577135,
		44.443218, 41.641685, 26.783976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615932, 40.803398, 26.799547>,  <44.219032, 41.115826, 26.379982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615932, 40.803398, 26.799547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508961, 41.151314, 26.965416>,  <44.444778, 41.360062, 27.064938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508961, 41.151314, 26.965416>,  <44.615932, 40.803398, 26.799547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508961, 41.151314, 26.965416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314590, -0.485579, 0.815626,
		0.910776, 0.087671, 0.403485,
		-0.267431, 0.869786, 0.414673,
		44.428730, 41.412251, 27.089817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.809345, 40.751324, 27.540470>,  <44.615932, 40.803398, 26.799547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.809345, 40.751324, 27.540470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538090, 41.045261, 27.535812>,  <44.375336, 41.221622, 27.533018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538090, 41.045261, 27.535812>,  <44.809345, 40.751324, 27.540470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538090, 41.045261, 27.535812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292102, -0.254956, 0.921778,
		0.674394, 0.628492, 0.387544,
		-0.678136, 0.734844, -0.011643,
		44.334648, 41.265713, 27.532320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828487, 41.043655, 28.200451>,  <44.809345, 40.751324, 27.540470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828487, 41.043655, 28.200451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478851, 41.161942, 28.046297>,  <44.269070, 41.232914, 27.953806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478851, 41.161942, 28.046297>,  <44.828487, 41.043655, 28.200451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478851, 41.161942, 28.046297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484959, -0.485541, 0.727368,
		0.027975, 0.822680, 0.567817,
		-0.874089, 0.295716, -0.385383,
		44.216625, 41.250656, 27.930681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.554630, 41.226631, 28.831154>,  <44.828487, 41.043655, 28.200451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.554630, 41.226631, 28.831154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248947, 41.189808, 28.575808>,  <44.065536, 41.167713, 28.422600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248947, 41.189808, 28.575808>,  <44.554630, 41.226631, 28.831154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248947, 41.189808, 28.575808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524201, -0.487992, 0.697909,
		-0.375766, 0.867980, 0.324670,
		-0.764207, -0.092058, -0.638367,
		44.019684, 41.162189, 28.384298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902325, 41.595657, 29.074398>,  <44.554630, 41.226631, 28.831154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902325, 41.595657, 29.074398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771183, 41.321281, 28.814550>,  <43.692497, 41.156658, 28.658642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771183, 41.321281, 28.814550>,  <43.902325, 41.595657, 29.074398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771183, 41.321281, 28.814550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640219, -0.344338, 0.686696,
		-0.694719, 0.641032, -0.326258,
		-0.327851, -0.685937, -0.649618,
		43.672829, 41.115501, 28.619665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.260845, 41.678890, 29.110004>,  <43.902325, 41.595657, 29.074398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.260845, 41.678890, 29.110004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273533, 41.317123, 28.939814>,  <43.281143, 41.100063, 28.837700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.273533, 41.317123, 28.939814>,  <43.260845, 41.678890, 29.110004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273533, 41.317123, 28.939814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655200, -0.340281, 0.674479,
		-0.754790, 0.257379, -0.603365,
		0.031717, -0.904414, -0.425475,
		43.283047, 41.045799, 28.812172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540123, 41.484787, 29.007370>,  <43.260845, 41.678890, 29.110004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540123, 41.484787, 29.007370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743393, 41.140305, 29.003664>,  <42.865356, 40.933617, 29.001440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743393, 41.140305, 29.003664>,  <42.540123, 41.484787, 29.007370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743393, 41.140305, 29.003664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695204, -0.416529, 0.585829,
		-0.508377, -0.291262, -0.810382,
		0.508177, -0.861203, -0.009267,
		42.895847, 40.881943, 29.000883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026417, 40.917007, 28.861420>,  <42.540123, 41.484787, 29.007370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026417, 40.917007, 28.861420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352673, 40.769157, 29.039457>,  <42.548428, 40.680447, 29.146280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352673, 40.769157, 29.039457>,  <42.026417, 40.917007, 28.861420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352673, 40.769157, 29.039457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578558, -0.521763, 0.626924,
		0.000505, -0.768857, -0.639421,
		0.815641, -0.369626, 0.445092,
		42.597366, 40.658268, 29.172985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850616, 40.212887, 29.064928>,  <42.026417, 40.917007, 28.861420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850616, 40.212887, 29.064928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161953, 40.289097, 29.304222>,  <42.348755, 40.334824, 29.447798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.161953, 40.289097, 29.304222>,  <41.850616, 40.212887, 29.064928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161953, 40.289097, 29.304222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519666, -0.339202, 0.784149,
		0.352324, -0.921217, -0.165005,
		0.778341, 0.190527, 0.598234,
		42.395454, 40.346256, 29.483692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918983, 39.629951, 29.498976>,  <41.850616, 40.212887, 29.064928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918983, 39.629951, 29.498976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094238, 39.939266, 29.682304>,  <42.199390, 40.124855, 29.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.094238, 39.939266, 29.682304>,  <41.918983, 39.629951, 29.498976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094238, 39.939266, 29.682304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478386, -0.231079, 0.847201,
		0.761041, -0.590443, 0.268688,
		0.438136, 0.773291, 0.458320,
		42.225677, 40.171253, 29.819801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179211, 39.409191, 30.234121>,  <41.918983, 39.629951, 29.498976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179211, 39.409191, 30.234121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158779, 39.807949, 30.258112>,  <42.146519, 40.047203, 30.272507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.158779, 39.807949, 30.258112>,  <42.179211, 39.409191, 30.234121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.158779, 39.807949, 30.258112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297096, -0.072506, 0.952091,
		0.953480, 0.030813, 0.299876,
		-0.051080, 0.996892, 0.059978,
		42.143456, 40.107018, 30.276106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548683, 39.592937, 30.806753>,  <42.179211, 39.409191, 30.234121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548683, 39.592937, 30.806753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311878, 39.912476, 30.764095>,  <42.169796, 40.104198, 30.738501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311878, 39.912476, 30.764095>,  <42.548683, 39.592937, 30.806753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311878, 39.912476, 30.764095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362148, -0.145475, 0.920699,
		0.719977, 0.583687, 0.375422,
		-0.592014, 0.798841, -0.106643,
		42.134274, 40.152126, 30.732101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.373817, 39.809315, 31.510431>,  <42.548683, 39.592937, 30.806753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.373817, 39.809315, 31.510431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118202, 40.041386, 31.308428>,  <41.964832, 40.180626, 31.187225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118202, 40.041386, 31.308428>,  <42.373817, 39.809315, 31.510431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118202, 40.041386, 31.308428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486371, 0.203846, 0.849641,
		0.595884, 0.788571, 0.151915,
		-0.639035, 0.580174, -0.505007,
		41.926491, 40.215439, 31.156925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354782, 40.492062, 31.765997>,  <42.373817, 39.809315, 31.510431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354782, 40.492062, 31.765997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997944, 40.432777, 31.595259>,  <41.783840, 40.397205, 31.492815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.997944, 40.432777, 31.595259>,  <42.354782, 40.492062, 31.765997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.997944, 40.432777, 31.595259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451427, 0.332998, 0.827844,
		0.019443, 0.931207, -0.363973,
		-0.892096, -0.148211, -0.426847,
		41.730316, 40.388313, 31.467205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942257, 41.042370, 31.952532>,  <42.354782, 40.492062, 31.765997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942257, 41.042370, 31.952532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657490, 40.781876, 31.847416>,  <41.486629, 40.625580, 31.784346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657490, 40.781876, 31.847416>,  <41.942257, 41.042370, 31.952532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657490, 40.781876, 31.847416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484134, 0.184066, 0.855415,
		-0.508708, 0.736212, -0.446327,
		-0.711920, -0.651239, -0.262789,
		41.443913, 40.586506, 31.768579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393238, 41.215496, 32.243015>,  <41.942257, 41.042370, 31.952532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393238, 41.215496, 32.243015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251617, 40.855488, 32.141335>,  <41.166645, 40.639484, 32.080326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251617, 40.855488, 32.141335>,  <41.393238, 41.215496, 32.243015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251617, 40.855488, 32.141335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665713, 0.051625, 0.744420,
		-0.656869, 0.432784, -0.617432,
		-0.354048, -0.900018, -0.254199,
		41.145405, 40.585484, 32.065075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607437, 41.296906, 32.124992>,  <41.393238, 41.215496, 32.243015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607437, 41.296906, 32.124992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731541, 40.926750, 32.212067>,  <40.806004, 40.704655, 32.264309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731541, 40.926750, 32.212067>,  <40.607437, 41.296906, 32.124992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731541, 40.926750, 32.212067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622174, -0.024533, 0.782494,
		-0.718774, -0.378214, -0.583367,
		0.310263, -0.925393, 0.217681,
		40.824619, 40.649132, 32.277370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073940, 41.024025, 32.433617>,  <40.607437, 41.296906, 32.124992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073940, 41.024025, 32.433617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354816, 40.762627, 32.546654>,  <40.523342, 40.605785, 32.614475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354816, 40.762627, 32.546654>,  <40.073940, 41.024025, 32.433617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354816, 40.762627, 32.546654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511634, -0.187130, 0.838578,
		-0.495129, -0.733429, -0.465755,
		0.702195, -0.653501, 0.282594,
		40.565475, 40.566578, 32.631432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603966, 40.328098, 32.650894>,  <40.073940, 41.024025, 32.433617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603966, 40.328098, 32.650894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967945, 40.296268, 32.813702>,  <40.186333, 40.277168, 32.911385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967945, 40.296268, 32.813702>,  <39.603966, 40.328098, 32.650894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967945, 40.296268, 32.813702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411744, -0.290833, 0.863645,
		0.049649, -0.953459, -0.297408,
		0.909946, -0.079577, 0.407020,
		40.240929, 40.272396, 32.935806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550018, 39.743309, 33.080791>,  <39.603966, 40.328098, 32.650894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550018, 39.743309, 33.080791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870117, 39.947659, 33.206406>,  <40.062176, 40.070267, 33.281773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.870117, 39.947659, 33.206406>,  <39.550018, 39.743309, 33.080791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870117, 39.947659, 33.206406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178366, -0.297198, 0.938008,
		0.572533, -0.806649, -0.146709,
		0.800244, 0.510873, 0.314034,
		40.110191, 40.100922, 33.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998367, 39.248314, 33.480503>,  <39.550018, 39.743309, 33.080791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998367, 39.248314, 33.480503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152519, 39.589054, 33.622395>,  <40.245010, 39.793499, 33.707527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152519, 39.589054, 33.622395>,  <39.998367, 39.248314, 33.480503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152519, 39.589054, 33.622395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067633, -0.409462, 0.909817,
		0.920277, -0.326631, -0.215411,
		0.385377, 0.851853, 0.354727,
		40.268131, 39.844608, 33.728813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573879, 39.050034, 33.924583>,  <39.998367, 39.248314, 33.480503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573879, 39.050034, 33.924583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479767, 39.419586, 34.045307>,  <40.423302, 39.641319, 34.117741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479767, 39.419586, 34.045307>,  <40.573879, 39.050034, 33.924583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479767, 39.419586, 34.045307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235324, -0.247135, 0.939971,
		0.943009, 0.292178, -0.159266,
		-0.235279, 0.923881, 0.301808,
		40.409184, 39.696751, 34.135849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136703, 39.292820, 34.347103>,  <40.573879, 39.050034, 33.924583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136703, 39.292820, 34.347103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803059, 39.497158, 34.430332>,  <40.602871, 39.619762, 34.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.803059, 39.497158, 34.430332>,  <41.136703, 39.292820, 34.347103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803059, 39.497158, 34.430332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040222, -0.319889, 0.946601,
		0.550131, 0.797938, 0.246274,
		-0.834109, 0.510849, 0.208076,
		40.552826, 39.650414, 34.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347385, 39.711746, 34.981388>,  <41.136703, 39.292820, 34.347103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347385, 39.711746, 34.981388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948559, 39.694527, 34.956081>,  <40.709263, 39.684193, 34.940899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.948559, 39.694527, 34.956081>,  <41.347385, 39.711746, 34.981388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948559, 39.694527, 34.956081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047230, -0.304306, 0.951403,
		-0.060212, 0.951601, 0.301380,
		-0.997068, -0.043052, -0.063267,
		40.649437, 39.681610, 34.937099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.044315, 40.027855, 35.602654>,  <41.347385, 39.711746, 34.981388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.044315, 40.027855, 35.602654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717281, 39.828274, 35.487698>,  <40.521061, 39.708523, 35.418724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717281, 39.828274, 35.487698>,  <41.044315, 40.027855, 35.602654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717281, 39.828274, 35.487698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048345, -0.437869, 0.897738,
		-0.573774, 0.747872, 0.333873,
		-0.817585, -0.498958, -0.287394,
		40.472004, 39.678585, 35.401478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592812, 39.847969, 36.246597>,  <41.044315, 40.027855, 35.602654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592812, 39.847969, 36.246597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475368, 39.587326, 35.966827>,  <40.404903, 39.430939, 35.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475368, 39.587326, 35.966827>,  <40.592812, 39.847969, 36.246597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475368, 39.587326, 35.966827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224780, -0.664100, 0.713053,
		-0.929121, 0.366578, 0.048518,
		-0.293610, -0.651607, -0.699429,
		40.387287, 39.391846, 35.757000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933475, 39.673656, 36.433208>,  <40.592812, 39.847969, 36.246597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933475, 39.673656, 36.433208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057259, 39.361515, 36.215847>,  <40.131527, 39.174229, 36.085430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057259, 39.361515, 36.215847>,  <39.933475, 39.673656, 36.433208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057259, 39.361515, 36.215847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356190, -0.624970, 0.694651,
		-0.881683, -0.021412, -0.471356,
		0.309458, -0.780355, -0.543399,
		40.150097, 39.127407, 36.052826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432732, 39.204967, 36.599121>,  <39.933475, 39.673656, 36.433208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432732, 39.204967, 36.599121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727966, 39.007191, 36.415489>,  <39.905106, 38.888523, 36.305309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.727966, 39.007191, 36.415489>,  <39.432732, 39.204967, 36.599121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727966, 39.007191, 36.415489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210258, -0.815092, 0.539831,
		-0.641106, -0.301918, -0.705570,
		0.738088, -0.494440, -0.459080,
		39.949394, 38.858860, 36.277763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180622, 38.539085, 36.436386>,  <39.432732, 39.204967, 36.599121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180622, 38.539085, 36.436386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575760, 38.479420, 36.453873>,  <39.812843, 38.443619, 36.464363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575760, 38.479420, 36.453873>,  <39.180622, 38.539085, 36.436386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575760, 38.479420, 36.453873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148912, -0.827549, 0.541284,
		-0.044566, -0.541214, -0.839703,
		0.987846, -0.149164, 0.043713,
		39.872112, 38.434669, 36.466988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270306, 37.806305, 36.540596>,  <39.180622, 38.539085, 36.436386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270306, 37.806305, 36.540596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651169, 37.880131, 36.638027>,  <39.879688, 37.924427, 36.696487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.651169, 37.880131, 36.638027>,  <39.270306, 37.806305, 36.540596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651169, 37.880131, 36.638027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034198, -0.727693, 0.685050,
		0.303688, -0.660606, -0.686566,
		0.952158, 0.184562, 0.243582,
		39.936817, 37.935501, 36.711102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691097, 37.225388, 36.379848>,  <39.270306, 37.806305, 36.540596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691097, 37.225388, 36.379848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897255, 37.420006, 36.662022>,  <40.020950, 37.536777, 36.831326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897255, 37.420006, 36.662022>,  <39.691097, 37.225388, 36.379848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897255, 37.420006, 36.662022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031160, -0.812007, 0.582815,
		0.856385, -0.322362, -0.403345,
		0.515397, 0.486546, 0.705436,
		40.051872, 37.565971, 36.873653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177795, 36.854374, 36.463326>,  <39.691097, 37.225388, 36.379848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.177795, 36.854374, 36.463326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138046, 37.075527, 36.794250>,  <40.114197, 37.208218, 36.992805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138046, 37.075527, 36.794250>,  <40.177795, 36.854374, 36.463326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138046, 37.075527, 36.794250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054896, -0.833207, 0.550229,
		0.993535, 0.009264, 0.113152,
		-0.099376, 0.552883, 0.827312,
		40.108234, 37.241394, 37.042442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622601, 36.522274, 36.965855>,  <40.177795, 36.854374, 36.463326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622601, 36.522274, 36.965855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371830, 36.731773, 37.196560>,  <40.221367, 36.857475, 37.334984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371830, 36.731773, 37.196560>,  <40.622601, 36.522274, 36.965855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371830, 36.731773, 37.196560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094685, -0.786042, 0.610878,
		0.773305, 0.328364, 0.542380,
		-0.626924, 0.523751, 0.576759,
		40.183754, 36.888897, 37.369587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923393, 36.465809, 37.594593>,  <40.622601, 36.522274, 36.965855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923393, 36.465809, 37.594593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542572, 36.563370, 37.668465>,  <40.314079, 36.621906, 37.712788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542572, 36.563370, 37.668465>,  <40.923393, 36.465809, 37.594593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542572, 36.563370, 37.668465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030416, -0.676140, 0.736145,
		0.304418, 0.695231, 0.651140,
		-0.952053, 0.243901, 0.184683,
		40.256958, 36.636539, 37.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008026, 36.393269, 38.293751>,  <40.923393, 36.465809, 37.594593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008026, 36.393269, 38.293751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612652, 36.387344, 38.233383>,  <40.375427, 36.383789, 38.197163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612652, 36.387344, 38.233383>,  <41.008026, 36.393269, 38.293751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612652, 36.387344, 38.233383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095999, -0.709298, 0.698342,
		-0.117390, 0.704754, 0.699673,
		-0.988435, -0.014811, -0.150920,
		40.316120, 36.382900, 38.188107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808739, 36.596935, 38.907944>,  <41.008026, 36.393269, 38.293751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808739, 36.596935, 38.907944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538765, 36.397530, 38.690342>,  <40.376781, 36.277885, 38.559780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538765, 36.397530, 38.690342>,  <40.808739, 36.596935, 38.907944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538765, 36.397530, 38.690342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021362, -0.750157, 0.660915,
		-0.737565, 0.434456, 0.516959,
		-0.674939, -0.498511, -0.544008,
		40.336285, 36.247978, 38.527138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262283, 36.301258, 39.400970>,  <40.808739, 36.596935, 38.907944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262283, 36.301258, 39.400970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259655, 36.094154, 39.058769>,  <40.258080, 35.969891, 38.853451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259655, 36.094154, 39.058769>,  <40.262283, 36.301258, 39.400970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259655, 36.094154, 39.058769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309435, -0.812476, 0.494098,
		-0.950898, 0.267966, -0.154878,
		-0.006566, -0.517761, -0.855500,
		40.257687, 35.938828, 38.802120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581463, 36.031010, 39.348942>,  <40.262283, 36.301258, 39.400970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581463, 36.031010, 39.348942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840527, 35.751759, 39.226852>,  <39.995964, 35.584209, 39.153599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840527, 35.751759, 39.226852>,  <39.581463, 36.031010, 39.348942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840527, 35.751759, 39.226852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446917, -0.672516, 0.589904,
		-0.617091, -0.245650, -0.747566,
		0.647660, -0.698125, -0.305218,
		40.034824, 35.542320, 39.135288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170818, 35.451134, 39.259262>,  <39.581463, 36.031010, 39.348942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170818, 35.451134, 39.259262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540260, 35.297810, 39.261246>,  <39.761925, 35.205814, 39.262436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540260, 35.297810, 39.261246>,  <39.170818, 35.451134, 39.259262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540260, 35.297810, 39.261246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292543, -0.696419, 0.655301,
		-0.247725, -0.606693, -0.755352,
		0.923608, -0.383307, 0.004963,
		39.817341, 35.182819, 39.262733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044071, 34.771862, 39.233208>,  <39.170818, 35.451134, 39.259262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044071, 34.771862, 39.233208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419033, 34.803097, 39.368954>,  <39.644012, 34.821838, 39.450401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.419033, 34.803097, 39.368954>,  <39.044071, 34.771862, 39.233208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419033, 34.803097, 39.368954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191053, -0.699448, 0.688673,
		0.291146, -0.710405, -0.640749,
		0.937407, 0.078087, 0.339367,
		39.700256, 34.826523, 39.470764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273251, 34.095917, 39.297066>,  <39.044071, 34.771862, 39.233208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273251, 34.095917, 39.297066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476891, 34.324348, 39.554649>,  <39.599075, 34.461407, 39.709202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476891, 34.324348, 39.554649>,  <39.273251, 34.095917, 39.297066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476891, 34.324348, 39.554649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139120, -0.683741, 0.716341,
		0.849392, -0.454274, -0.268640,
		0.509096, 0.571081, 0.643963,
		39.629620, 34.495674, 39.747837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629475, 33.581856, 39.656891>,  <39.273251, 34.095917, 39.297066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629475, 33.581856, 39.656891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652943, 33.931103, 39.850475>,  <39.667023, 34.140652, 39.966625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.652943, 33.931103, 39.850475>,  <39.629475, 33.581856, 39.656891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652943, 33.931103, 39.850475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109782, -0.487497, 0.866196,
		0.992223, 0.002312, -0.124454,
		0.058668, 0.873122, 0.483959,
		39.670544, 34.193039, 39.995663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066456, 33.482780, 40.235760>,  <39.629475, 33.581856, 39.656891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066456, 33.482780, 40.235760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852871, 33.806110, 40.334957>,  <39.724720, 34.000107, 40.394474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852871, 33.806110, 40.334957>,  <40.066456, 33.482780, 40.235760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852871, 33.806110, 40.334957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020192, -0.281033, 0.959486,
		0.845269, 0.517334, 0.133738,
		-0.533959, 0.808323, 0.247995,
		39.692684, 34.048607, 40.409355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301922, 33.615417, 40.868835>,  <40.066456, 33.482780, 40.235760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301922, 33.615417, 40.868835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954296, 33.813133, 40.876884>,  <39.745720, 33.931763, 40.881714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954296, 33.813133, 40.876884>,  <40.301922, 33.615417, 40.868835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954296, 33.813133, 40.876884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106007, -0.225802, 0.968388,
		0.483210, 0.839458, 0.248634,
		-0.869063, 0.494292, 0.020121,
		39.693577, 33.961422, 40.882919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259727, 33.927757, 41.460941>,  <40.301922, 33.615417, 40.868835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259727, 33.927757, 41.460941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875584, 33.908508, 41.351109>,  <39.645096, 33.896957, 41.285210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875584, 33.908508, 41.351109>,  <40.259727, 33.927757, 41.460941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875584, 33.908508, 41.351109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255441, -0.242492, 0.935921,
		-0.111621, 0.968959, 0.220587,
		-0.960360, -0.048121, -0.274579,
		39.587475, 33.894073, 41.268734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962681, 34.373554, 41.886398>,  <40.259727, 33.927757, 41.460941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.962681, 34.373554, 41.886398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695564, 34.109779, 41.748302>,  <39.535294, 33.951515, 41.665443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.695564, 34.109779, 41.748302>,  <39.962681, 34.373554, 41.886398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695564, 34.109779, 41.748302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330046, -0.153409, 0.931416,
		-0.667174, 0.735940, -0.115199,
		-0.667794, -0.659437, -0.345244,
		39.495228, 33.911949, 41.644730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307140, 34.598465, 42.085365>,  <39.962681, 34.373554, 41.886398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307140, 34.598465, 42.085365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324074, 34.199387, 42.064186>,  <39.334232, 33.959938, 42.051479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324074, 34.199387, 42.064186>,  <39.307140, 34.598465, 42.085365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324074, 34.199387, 42.064186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111466, -0.057385, 0.992110,
		-0.992866, -0.036097, -0.113639,
		0.042334, -0.997699, -0.052952,
		39.336773, 33.900078, 42.048302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794338, 34.345242, 42.527531>,  <39.307140, 34.598465, 42.085365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794338, 34.345242, 42.527531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058338, 34.045956, 42.500496>,  <39.216740, 33.866383, 42.484276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.058338, 34.045956, 42.500496>,  <38.794338, 34.345242, 42.527531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058338, 34.045956, 42.500496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000468, -0.089555, 0.995982,
		-0.751264, -0.657381, -0.058756,
		0.660002, -0.748218, -0.067587,
		39.256340, 33.821491, 42.480221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769024, 34.096600, 43.193989>,  <38.794338, 34.345242, 42.527531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769024, 34.096600, 43.193989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035378, 33.835579, 43.049335>,  <39.195190, 33.678967, 42.962543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035378, 33.835579, 43.049335>,  <38.769024, 34.096600, 43.193989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035378, 33.835579, 43.049335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174704, -0.334866, 0.925928,
		-0.725314, -0.679738, -0.108978,
		0.665882, -0.652550, -0.361636,
		39.235142, 33.639812, 42.940845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773090, 33.568699, 43.706654>,  <38.769024, 34.096600, 43.193989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773090, 33.568699, 43.706654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090382, 33.508026, 43.470764>,  <39.280758, 33.471622, 43.329231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.090382, 33.508026, 43.470764>,  <38.773090, 33.568699, 43.706654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090382, 33.508026, 43.470764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506605, -0.372941, 0.777346,
		-0.337841, -0.915373, -0.218987,
		0.793231, -0.151680, -0.589727,
		39.328350, 33.462521, 43.293846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986027, 32.841232, 43.672733>,  <38.773090, 33.568699, 43.706654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986027, 32.841232, 43.672733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320587, 33.033588, 43.567520>,  <39.521324, 33.149002, 43.504395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.320587, 33.033588, 43.567520>,  <38.986027, 32.841232, 43.672733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320587, 33.033588, 43.567520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498684, -0.468452, 0.729292,
		0.227491, -0.741147, -0.631624,
		0.836399, 0.480888, -0.263029,
		39.571507, 33.177856, 43.488613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512165, 32.316002, 43.719624>,  <38.986027, 32.841232, 43.672733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512165, 32.316002, 43.719624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703365, 32.667332, 43.716625>,  <39.818085, 32.878132, 43.714825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703365, 32.667332, 43.716625>,  <39.512165, 32.316002, 43.719624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703365, 32.667332, 43.716625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653908, -0.350143, 0.670674,
		0.586446, -0.325487, -0.741714,
		0.478001, 0.878327, -0.007498,
		39.846767, 32.930828, 43.714375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149353, 32.141758, 43.642242>,  <39.512165, 32.316002, 43.719624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149353, 32.141758, 43.642242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187469, 32.511715, 43.789478>,  <40.210339, 32.733688, 43.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187469, 32.511715, 43.789478>,  <40.149353, 32.141758, 43.642242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187469, 32.511715, 43.789478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666719, -0.333883, 0.666339,
		0.739192, 0.181911, -0.648462,
		0.095296, 0.924895, 0.368087,
		40.216057, 32.789185, 43.899906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876156, 32.348488, 43.534225>,  <40.149353, 32.141758, 43.642242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876156, 32.348488, 43.534225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723896, 32.571541, 43.829292>,  <40.632542, 32.705372, 44.006332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.723896, 32.571541, 43.829292>,  <40.876156, 32.348488, 43.534225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723896, 32.571541, 43.829292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717953, -0.324534, 0.615810,
		0.582794, 0.764016, -0.276821,
		-0.380651, 0.557635, 0.737664,
		40.609699, 32.738831, 44.050591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437176, 32.746597, 43.936916>,  <40.876156, 32.348488, 43.534225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437176, 32.746597, 43.936916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125504, 32.699654, 44.183201>,  <40.938499, 32.671486, 44.330971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125504, 32.699654, 44.183201>,  <41.437176, 32.746597, 43.936916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125504, 32.699654, 44.183201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625711, -0.087864, 0.775091,
		-0.036867, 0.989195, 0.141896,
		-0.779183, -0.117361, 0.615711,
		40.891750, 32.664444, 44.367912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722290, 32.996861, 44.396999>,  <41.437176, 32.746597, 43.936916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722290, 32.996861, 44.396999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420452, 32.762379, 44.514946>,  <41.239349, 32.621689, 44.585712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420452, 32.762379, 44.514946>,  <41.722290, 32.996861, 44.396999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420452, 32.762379, 44.514946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555886, -0.332310, 0.761945,
		-0.348669, 0.738875, 0.576623,
		-0.754599, -0.586204, 0.294864,
		41.194073, 32.586517, 44.603405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734581, 33.084614, 45.134655>,  <41.722290, 32.996861, 44.396999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734581, 33.084614, 45.134655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549686, 32.745827, 45.029594>,  <41.438751, 32.542553, 44.966557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549686, 32.745827, 45.029594>,  <41.734581, 33.084614, 45.134655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549686, 32.745827, 45.029594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333884, -0.440628, 0.833287,
		-0.821499, 0.297478, 0.486463,
		-0.462234, -0.846967, -0.262652,
		41.411015, 32.491737, 44.950798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575340, 32.451118, 45.430874>,  <41.734581, 33.084614, 45.134655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575340, 32.451118, 45.430874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380882, 32.631813, 45.131649>,  <41.264206, 32.740231, 44.952114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.380882, 32.631813, 45.131649>,  <41.575340, 32.451118, 45.430874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380882, 32.631813, 45.131649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737168, 0.247723, 0.628662,
		0.469303, 0.857068, 0.212578,
		-0.486145, 0.451739, -0.748060,
		41.235039, 32.767334, 44.907230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979130, 31.928810, 45.277702>,  <41.575340, 32.451118, 45.430874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979130, 31.928810, 45.277702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671822, 31.953461, 45.532566>,  <41.487438, 31.968252, 45.685482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.671822, 31.953461, 45.532566>,  <41.979130, 31.928810, 45.277702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671822, 31.953461, 45.532566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574531, 0.372539, -0.728786,
		-0.282280, -0.925968, -0.250802,
		-0.768266, 0.061628, 0.637157,
		41.441341, 31.971949, 45.723713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.448338, 31.463509, 45.056923>,  <41.979130, 31.928810, 45.277702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.448338, 31.463509, 45.056923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319908, 31.781675, 45.262535>,  <41.242851, 31.972576, 45.385902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.319908, 31.781675, 45.262535>,  <41.448338, 31.463509, 45.056923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319908, 31.781675, 45.262535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638221, 0.219277, -0.737965,
		-0.699704, -0.565004, 0.437247,
		-0.321075, 0.795417, 0.514026,
		41.223587, 32.020302, 45.416744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744373, 31.572870, 45.024498>,  <41.448338, 31.463509, 45.056923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744373, 31.572870, 45.024498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891979, 31.936556, 45.101604>,  <40.980541, 32.154766, 45.147869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891979, 31.936556, 45.101604>,  <40.744373, 31.572870, 45.024498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891979, 31.936556, 45.101604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675648, 0.404845, -0.616117,
		-0.638223, 0.097112, 0.763702,
		0.369013, 0.909214, 0.192767,
		41.002682, 32.209320, 45.159435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226593, 32.030624, 45.183846>,  <40.744373, 31.572870, 45.024498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226593, 32.030624, 45.183846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508923, 32.290474, 45.070854>,  <40.678322, 32.446384, 45.003059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508923, 32.290474, 45.070854>,  <40.226593, 32.030624, 45.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508923, 32.290474, 45.070854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576426, 0.294917, -0.762074,
		-0.411756, 0.700720, 0.582621,
		0.705826, 0.649627, -0.282479,
		40.720669, 32.485363, 44.986111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126175, 32.851788, 45.335148>,  <40.226593, 32.030624, 45.183846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126175, 32.851788, 45.335148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372719, 32.807716, 45.023258>,  <40.520645, 32.781273, 44.836124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372719, 32.807716, 45.023258>,  <40.126175, 32.851788, 45.335148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372719, 32.807716, 45.023258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652636, 0.482597, -0.584094,
		0.440647, 0.868884, 0.225544,
		0.616357, -0.110181, -0.779720,
		40.557625, 32.774662, 44.789341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079063, 33.492184, 44.968212>,  <40.126175, 32.851788, 45.335148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079063, 33.492184, 44.968212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251339, 33.272778, 44.681538>,  <40.354706, 33.141132, 44.509533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251339, 33.272778, 44.681538>,  <40.079063, 33.492184, 44.968212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251339, 33.272778, 44.681538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536644, 0.482820, -0.692025,
		0.725615, 0.682654, -0.086410,
		0.430692, -0.548515, -0.716683,
		40.380547, 33.108223, 44.466534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178928, 33.986073, 44.445183>,  <40.079063, 33.492184, 44.968212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178928, 33.986073, 44.445183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220608, 33.632042, 44.263729>,  <40.245617, 33.419624, 44.154858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220608, 33.632042, 44.263729>,  <40.178928, 33.986073, 44.445183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220608, 33.632042, 44.263729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416499, 0.375358, -0.828031,
		0.903145, 0.275217, -0.329521,
		0.104199, -0.885078, -0.453630,
		40.251869, 33.366520, 44.127640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400185, 34.091331, 43.788055>,  <40.178928, 33.986073, 44.445183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400185, 34.091331, 43.788055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234734, 33.727261, 43.779278>,  <40.135464, 33.508816, 43.774010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234734, 33.727261, 43.779278>,  <40.400185, 34.091331, 43.788055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234734, 33.727261, 43.779278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322850, 0.169171, -0.931208,
		0.851279, -0.378092, -0.363827,
		-0.413631, -0.910180, -0.021945,
		40.110645, 33.454208, 43.772694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633575, 33.780704, 43.112209>,  <40.400185, 34.091331, 43.788055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633575, 33.780704, 43.112209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308914, 33.572422, 43.218105>,  <40.114117, 33.447453, 43.281643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.308914, 33.572422, 43.218105>,  <40.633575, 33.780704, 43.112209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308914, 33.572422, 43.218105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397017, 0.159295, -0.903882,
		0.428485, -0.838743, -0.336022,
		-0.811651, -0.520707, 0.264740,
		40.065418, 33.416210, 43.297527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396099, 33.431297, 42.566772>,  <40.633575, 33.780704, 43.112209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396099, 33.431297, 42.566772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 33.419205, 42.781788>,  <39.856773, 33.411949, 42.910797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059021, 33.419205, 42.781788>,  <40.396099, 33.431297, 42.566772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059021, 33.419205, 42.781788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532866, 0.189424, -0.824726,
		-0.076890, -0.981430, -0.175736,
		-0.842699, -0.030230, 0.537535,
		39.806210, 33.410137, 42.943050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166779, 32.777821, 42.359966>,  <40.396099, 33.431297, 42.566772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166779, 32.777821, 42.359966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899513, 33.063404, 42.443710>,  <39.739155, 33.234753, 42.493958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899513, 33.063404, 42.443710>,  <40.166779, 32.777821, 42.359966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899513, 33.063404, 42.443710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310610, -0.011976, -0.950462,
		-0.676080, -0.700089, 0.229763,
		-0.668160, 0.713955, 0.209358,
		39.699066, 33.277592, 42.506519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500858, 32.706505, 42.219666>,  <40.166779, 32.777821, 42.359966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500858, 32.706505, 42.219666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 33.041042, 42.260323>,  <39.156090, 33.241764, 42.284718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285378, 33.041042, 42.260323>,  <39.500858, 32.706505, 42.219666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285378, 33.041042, 42.260323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025726, 0.136915, -0.990249,
		-0.842103, -0.530835, -0.095272,
		-0.538703, 0.836342, 0.101640,
		39.123768, 33.291946, 42.290813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991940, 32.750179, 41.703625>,  <39.500858, 32.706505, 42.219666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991940, 32.750179, 41.703625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023087, 33.134483, 41.810120>,  <39.041775, 33.365067, 41.874016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023087, 33.134483, 41.810120>,  <38.991940, 32.750179, 41.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023087, 33.134483, 41.810120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007102, 0.266509, -0.963806,
		-0.996938, 0.076941, 0.013929,
		0.077868, 0.960756, 0.266239,
		39.046448, 33.422710, 41.889992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553043, 33.087872, 41.294098>,  <38.991940, 32.750179, 41.703625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553043, 33.087872, 41.294098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825466, 33.365410, 41.387684>,  <38.988918, 33.531933, 41.443836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825466, 33.365410, 41.387684>,  <38.553043, 33.087872, 41.294098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825466, 33.365410, 41.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027358, 0.295194, -0.955046,
		-0.731720, 0.656841, 0.182061,
		0.681056, 0.693845, 0.233969,
		39.029781, 33.573563, 41.457874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334488, 33.728275, 41.026409>,  <38.553043, 33.087872, 41.294098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334488, 33.728275, 41.026409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730923, 33.764328, 41.065643>,  <38.968784, 33.785961, 41.089184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730923, 33.764328, 41.065643>,  <38.334488, 33.728275, 41.026409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730923, 33.764328, 41.065643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043666, 0.475789, -0.878475,
		-0.125847, 0.874929, 0.467613,
		0.991088, 0.090135, 0.098081,
		39.028248, 33.791367, 41.095066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844143, 34.232113, 40.750851>,  <38.334488, 33.728275, 41.026409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844143, 34.232113, 40.750851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526211, 34.014763, 40.858921>,  <37.335453, 33.884354, 40.923763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526211, 34.014763, 40.858921>,  <37.844143, 34.232113, 40.750851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526211, 34.014763, 40.858921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078724, -0.349133, -0.933761,
		0.601708, -0.763448, 0.234724,
		-0.794827, -0.543373, 0.270177,
		37.287762, 33.851749, 40.939976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522282, 34.529755, 40.892410>,  <37.844143, 34.232113, 40.750851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522282, 34.529755, 40.892410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884094, 34.362495, 40.859013>,  <39.101181, 34.262142, 40.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884094, 34.362495, 40.859013>,  <38.522282, 34.529755, 40.892410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884094, 34.362495, 40.859013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217944, 0.621689, -0.752332,
		0.366494, 0.662312, 0.653472,
		0.904535, -0.418145, -0.083498,
		39.155453, 34.237053, 40.833961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976166, 35.039955, 40.855007>,  <38.522282, 34.529755, 40.892410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976166, 35.039955, 40.855007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205570, 34.747219, 40.707771>,  <39.343212, 34.571575, 40.619431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205570, 34.747219, 40.707771>,  <38.976166, 35.039955, 40.855007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205570, 34.747219, 40.707771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349812, 0.625089, -0.697779,
		0.740756, 0.271419, 0.614502,
		0.573509, -0.731844, -0.368093,
		39.377625, 34.527664, 40.597343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643719, 35.409164, 40.714451>,  <38.976166, 35.039955, 40.855007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643719, 35.409164, 40.714451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620308, 35.063847, 40.513931>,  <39.606262, 34.856655, 40.393620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620308, 35.063847, 40.513931>,  <39.643719, 35.409164, 40.714451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620308, 35.063847, 40.513931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425382, 0.432725, -0.794858,
		0.903120, -0.259762, 0.341904,
		-0.058524, -0.863292, -0.501301,
		39.602749, 34.804859, 40.363541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318245, 35.268139, 40.502048>,  <39.643719, 35.409164, 40.714451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318245, 35.268139, 40.502048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112793, 35.008076, 40.278095>,  <39.989521, 34.852036, 40.143723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112793, 35.008076, 40.278095>,  <40.318245, 35.268139, 40.502048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112793, 35.008076, 40.278095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451806, 0.349797, -0.820679,
		0.729419, -0.674487, 0.114079,
		-0.513633, -0.650160, -0.559886,
		39.958702, 34.813026, 40.110130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.741833, 34.788052, 40.036564>,  <40.318245, 35.268139, 40.502048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.741833, 34.788052, 40.036564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389503, 34.885269, 39.874039>,  <40.178108, 34.943600, 39.776524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389503, 34.885269, 39.874039>,  <40.741833, 34.788052, 40.036564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389503, 34.885269, 39.874039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458462, 0.223602, -0.860125,
		-0.118195, -0.943892, -0.308379,
		-0.880819, 0.243042, -0.406310,
		40.125259, 34.958183, 39.752144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990303, 34.623539, 39.329250>,  <40.741833, 34.788052, 40.036564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990303, 34.623539, 39.329250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642326, 34.820408, 39.316792>,  <40.433540, 34.938530, 39.309315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.642326, 34.820408, 39.316792>,  <40.990303, 34.623539, 39.329250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642326, 34.820408, 39.316792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261783, 0.407346, -0.874951,
		-0.417939, -0.769308, -0.483209,
		-0.869940, 0.492172, -0.031146,
		40.381344, 34.968060, 39.307449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798920, 34.562908, 38.636913>,  <40.990303, 34.623539, 39.329250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798920, 34.562908, 38.636913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595490, 34.862476, 38.806839>,  <40.473431, 35.042217, 38.908794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595490, 34.862476, 38.806839>,  <40.798920, 34.562908, 38.636913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595490, 34.862476, 38.806839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053599, 0.519968, -0.852503,
		-0.859348, -0.410792, -0.304584,
		-0.508575, 0.748921, 0.424815,
		40.442917, 35.087154, 38.934284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283089, 34.895859, 38.120346>,  <40.798920, 34.562908, 38.636913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283089, 34.895859, 38.120346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399887, 35.178772, 38.377869>,  <40.469967, 35.348522, 38.532383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.399887, 35.178772, 38.377869>,  <40.283089, 34.895859, 38.120346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399887, 35.178772, 38.377869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070670, 0.655348, -0.752014,
		-0.953806, 0.265080, 0.141372,
		0.291991, 0.707285, 0.643808,
		40.487484, 35.390957, 38.571011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650723, 34.938034, 37.443810>,  <40.283089, 34.895859, 38.120346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650723, 34.938034, 37.443810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781040, 35.296055, 37.321995>,  <40.859230, 35.510868, 37.248905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.781040, 35.296055, 37.321995>,  <40.650723, 34.938034, 37.443810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781040, 35.296055, 37.321995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742014, -0.042448, 0.669039,
		0.585896, -0.443941, -0.677969,
		0.325792, 0.895050, -0.304541,
		40.878777, 35.564571, 37.230633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402668, 35.004524, 37.086926>,  <40.650723, 34.938034, 37.443810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402668, 35.004524, 37.086926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315861, 35.352627, 37.263817>,  <41.263775, 35.561489, 37.369953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.315861, 35.352627, 37.263817>,  <41.402668, 35.004524, 37.086926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315861, 35.352627, 37.263817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846358, -0.057986, 0.529448,
		0.486396, 0.489182, -0.723961,
		-0.217017, 0.870252, 0.442227,
		41.250755, 35.613701, 37.396484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.917252, 35.549225, 37.227726>,  <41.402668, 35.004524, 37.086926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.917252, 35.549225, 37.227726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673512, 35.622356, 37.536343>,  <41.527267, 35.666237, 37.721512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.673512, 35.622356, 37.536343>,  <41.917252, 35.549225, 37.227726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673512, 35.622356, 37.536343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790406, 0.062886, 0.609348,
		0.062886, 0.981132, -0.182827,
		-0.609348, 0.182827, 0.771537,
		41.490707, 35.677204, 37.767803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278770, 35.850479, 37.765884>,  <41.917252, 35.549225, 37.227726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278770, 35.850479, 37.765884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529892, 35.607285, 37.571480>,  <42.680565, 35.461369, 37.454838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.529892, 35.607285, 37.571480>,  <42.278770, 35.850479, 37.765884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529892, 35.607285, 37.571480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063439, 0.582356, -0.810455,
		0.775782, 0.539639, 0.327035,
		0.627804, -0.607990, -0.486015,
		42.718231, 35.424889, 37.425674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844963, 36.228767, 37.671230>,  <42.278770, 35.850479, 37.765884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844963, 36.228767, 37.671230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867939, 35.953094, 37.382305>,  <42.881725, 35.787693, 37.208950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867939, 35.953094, 37.382305>,  <42.844963, 36.228767, 37.671230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867939, 35.953094, 37.382305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200117, 0.716770, -0.667977,
		0.978086, -0.106175, 0.179091,
		0.057444, -0.689179, -0.722310,
		42.885174, 35.746342, 37.165611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493149, 36.193932, 37.344833>,  <42.844963, 36.228767, 37.671230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493149, 36.193932, 37.344833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239189, 36.128063, 37.042896>,  <43.086811, 36.088543, 36.861736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239189, 36.128063, 37.042896>,  <43.493149, 36.193932, 37.344833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239189, 36.128063, 37.042896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355083, 0.805526, -0.474388,
		0.686160, -0.569221, -0.452959,
		-0.634902, -0.164668, -0.754840,
		43.048717, 36.078663, 36.816444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.782990, 36.126137, 36.666107>,  <43.493149, 36.193932, 37.344833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.782990, 36.126137, 36.666107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100319, 36.144844, 36.908909>,  <44.290714, 36.156067, 37.054592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.100319, 36.144844, 36.908909>,  <43.782990, 36.126137, 36.666107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.100319, 36.144844, 36.908909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539451, 0.408162, -0.736476,
		-0.282200, 0.911711, 0.298574,
		0.793319, 0.046767, 0.607007,
		44.338314, 36.158875, 37.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090214, 36.861023, 36.623482>,  <43.782990, 36.126137, 36.666107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090214, 36.861023, 36.623482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335911, 36.556873, 36.707897>,  <44.483330, 36.374382, 36.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.335911, 36.556873, 36.707897>,  <44.090214, 36.861023, 36.623482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335911, 36.556873, 36.707897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571276, 0.243987, -0.783654,
		0.544381, 0.601914, 0.584251,
		0.614242, -0.760375, 0.211038,
		44.520184, 36.328762, 36.771210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.740768, 36.952648, 36.477001>,  <44.090214, 36.861023, 36.623482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.740768, 36.952648, 36.477001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770184, 36.553829, 36.485920>,  <44.787834, 36.314537, 36.491272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770184, 36.553829, 36.485920>,  <44.740768, 36.952648, 36.477001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770184, 36.553829, 36.485920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450566, 0.013267, -0.892645,
		0.889709, 0.075693, 0.450210,
		0.073540, -0.997043, 0.022301,
		44.792244, 36.254715, 36.492611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.241116, 36.742695, 36.049816>,  <44.740768, 36.952648, 36.477001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.241116, 36.742695, 36.049816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052647, 36.391285, 36.081299>,  <44.939564, 36.180439, 36.100189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052647, 36.391285, 36.081299>,  <45.241116, 36.742695, 36.049816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052647, 36.391285, 36.081299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231225, -0.209134, -0.950157,
		0.851193, -0.429492, 0.301675,
		-0.471176, -0.878521, 0.078704,
		44.911293, 36.127728, 36.104912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.693630, 36.152050, 35.818989>,  <45.241116, 36.742695, 36.049816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.693630, 36.152050, 35.818989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303055, 36.088757, 35.760284>,  <45.068710, 36.050781, 35.725063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.303055, 36.088757, 35.760284>,  <45.693630, 36.152050, 35.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.303055, 36.088757, 35.760284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145421, 0.020048, -0.989167,
		0.159463, -0.987198, 0.003435,
		-0.976434, -0.158235, -0.146757,
		45.010124, 36.041286, 35.716259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550632, 35.417721, 35.485229>,  <45.693630, 36.152050, 35.818989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550632, 35.417721, 35.485229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283089, 35.699169, 35.389267>,  <45.122562, 35.868038, 35.331688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283089, 35.699169, 35.389267>,  <45.550632, 35.417721, 35.485229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283089, 35.699169, 35.389267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334326, -0.003529, -0.942451,
		-0.663971, -0.710571, -0.232877,
		-0.668856, 0.703617, -0.239905,
		45.082432, 35.910255, 35.317295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137131, 35.303406, 34.864830>,  <45.550632, 35.417721, 35.485229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137131, 35.303406, 34.864830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164375, 35.699665, 34.912109>,  <45.180721, 35.937420, 34.940475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164375, 35.699665, 34.912109>,  <45.137131, 35.303406, 34.864830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164375, 35.699665, 34.912109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318905, 0.090639, -0.943443,
		-0.945336, 0.101956, -0.309750,
		0.068114, 0.990651, 0.118198,
		45.184811, 35.996861, 34.947567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059551, 35.586449, 34.166283>,  <45.137131, 35.303406, 34.864830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059551, 35.586449, 34.166283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231998, 35.857315, 34.404804>,  <45.335468, 36.019836, 34.547916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231998, 35.857315, 34.404804>,  <45.059551, 35.586449, 34.166283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231998, 35.857315, 34.404804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542628, 0.333435, -0.770958,
		-0.720897, 0.655947, -0.223699,
		0.431118, 0.677167, 0.596307,
		45.361332, 36.060467, 34.583698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167397, 35.026211, 33.870102>,  <45.059551, 35.586449, 34.166283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167397, 35.026211, 33.870102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483204, 34.890335, 33.665646>,  <45.672688, 34.808811, 33.542973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.483204, 34.890335, 33.665646>,  <45.167397, 35.026211, 33.870102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.483204, 34.890335, 33.665646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546913, 0.011536, 0.837110,
		-0.278462, -0.940466, 0.194890,
		0.789522, -0.339691, -0.511141,
		45.720062, 34.788429, 33.512302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.515537, 34.589008, 34.275127>,  <45.167397, 35.026211, 33.870102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.515537, 34.589008, 34.275127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794876, 34.671494, 34.000961>,  <45.962479, 34.720985, 33.836464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794876, 34.671494, 34.000961>,  <45.515537, 34.589008, 34.275127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794876, 34.671494, 34.000961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715485, -0.174471, 0.676492,
		0.019920, -0.962826, -0.269386,
		0.698344, 0.206217, -0.685412,
		46.004379, 34.733360, 33.795338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104340, 34.093304, 34.327179>,  <45.515537, 34.589008, 34.275127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104340, 34.093304, 34.327179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256596, 34.428875, 34.171581>,  <46.347950, 34.630219, 34.078220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.256596, 34.428875, 34.171581>,  <46.104340, 34.093304, 34.327179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256596, 34.428875, 34.171581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749065, -0.033060, 0.661671,
		0.542231, -0.543243, -0.640993,
		0.380639, 0.838924, -0.388998,
		46.370789, 34.680553, 34.054882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716362, 33.942146, 34.071522>,  <46.104340, 34.093304, 34.327179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716362, 33.942146, 34.071522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698467, 34.328724, 34.172707>,  <46.687729, 34.560669, 34.233418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.698467, 34.328724, 34.172707>,  <46.716362, 33.942146, 34.071522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.698467, 34.328724, 34.172707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794596, -0.119049, 0.595353,
		0.605489, 0.227638, -0.762604,
		-0.044738, 0.966441, 0.252963,
		46.685047, 34.618656, 34.248596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414967, 34.235855, 34.077503>,  <46.716362, 33.942146, 34.071522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414967, 34.235855, 34.077503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201077, 34.469875, 34.321400>,  <47.072742, 34.610287, 34.467739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.201077, 34.469875, 34.321400>,  <47.414967, 34.235855, 34.077503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.201077, 34.469875, 34.321400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712207, -0.076316, 0.697809,
		0.454787, 0.807398, -0.375869,
		-0.534725, 0.585051, 0.609742,
		47.040661, 34.645390, 34.504322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.776291, 34.905544, 34.321274>,  <47.414967, 34.235855, 34.077503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.776291, 34.905544, 34.321274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504025, 34.801365, 34.595165>,  <47.340664, 34.738857, 34.759502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.504025, 34.801365, 34.595165>,  <47.776291, 34.905544, 34.321274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.504025, 34.801365, 34.595165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713430, -0.023282, 0.700340,
		-0.166460, 0.965207, 0.201658,
		-0.680668, -0.260447, 0.684732,
		47.299824, 34.723232, 34.800587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.745079, 35.500347, 34.910252>,  <47.776291, 34.905544, 34.321274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.745079, 35.500347, 34.910252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683304, 35.116459, 35.004128>,  <47.646236, 34.886124, 35.060452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683304, 35.116459, 35.004128>,  <47.745079, 35.500347, 34.910252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683304, 35.116459, 35.004128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740085, 0.044991, 0.671006,
		-0.654539, 0.277323, 0.703328,
		-0.154442, -0.959723, 0.234691,
		47.636971, 34.828541, 35.074535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.244282, 36.435646, 28.912901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874676, 36.485535, 28.768322>,  <39.652912, 36.515469, 28.681574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.874676, 36.485535, 28.768322>,  <40.244282, 36.435646, 28.912901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874676, 36.485535, 28.768322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377698, -0.444912, 0.812033,
		-0.059537, 0.886847, 0.458211,
		-0.924013, 0.124719, -0.361449,
		39.597473, 36.522949, 28.659887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895496, 36.651260, 29.544701>,  <40.244282, 36.435646, 28.912901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895496, 36.651260, 29.544701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637154, 36.509407, 29.274261>,  <39.482147, 36.424294, 29.111998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.637154, 36.509407, 29.274261>,  <39.895496, 36.651260, 29.544701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637154, 36.509407, 29.274261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544605, -0.406622, 0.733529,
		-0.535050, 0.841958, 0.069484,
		-0.645854, -0.354633, -0.676098,
		39.443398, 36.403019, 29.071432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262527, 36.870518, 29.772125>,  <39.895496, 36.651260, 29.544701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262527, 36.870518, 29.772125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192871, 36.558472, 29.531759>,  <39.151077, 36.371246, 29.387539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.192871, 36.558472, 29.531759>,  <39.262527, 36.870518, 29.772125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192871, 36.558472, 29.531759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513652, -0.448680, 0.731332,
		-0.840140, 0.436018, -0.322572,
		-0.174143, -0.780111, -0.600916,
		39.140629, 36.324440, 29.351484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475395, 36.711197, 29.659534>,  <39.262527, 36.870518, 29.772125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475395, 36.711197, 29.659534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661903, 36.361702, 29.604137>,  <38.773808, 36.152004, 29.570900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.661903, 36.361702, 29.604137>,  <38.475395, 36.711197, 29.659534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661903, 36.361702, 29.604137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529431, -0.401029, 0.747582,
		-0.708726, -0.275256, -0.649570,
		0.466272, -0.873734, -0.138490,
		38.801785, 36.099583, 29.562590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042774, 36.252666, 29.723896>,  <38.475395, 36.711197, 29.659534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042774, 36.252666, 29.723896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356335, 36.011620, 29.783695>,  <38.544472, 35.866993, 29.819574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356335, 36.011620, 29.783695>,  <38.042774, 36.252666, 29.723896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356335, 36.011620, 29.783695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435482, -0.362019, 0.824195,
		-0.442550, -0.711194, -0.546216,
		0.783904, -0.602615, 0.149501,
		38.591507, 35.830833, 29.828545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716976, 35.512455, 29.891914>,  <38.042774, 36.252666, 29.723896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716976, 35.512455, 29.891914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080219, 35.521240, 30.059183>,  <38.298164, 35.526512, 30.159544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080219, 35.521240, 30.059183>,  <37.716976, 35.512455, 29.891914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080219, 35.521240, 30.059183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372641, -0.413144, 0.830934,
		0.191018, -0.910401, -0.366992,
		0.908103, 0.021967, 0.418170,
		38.352650, 35.527832, 30.184633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714127, 34.905926, 30.258598>,  <37.716976, 35.512455, 29.891914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714127, 34.905926, 30.258598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014069, 35.120560, 30.413412>,  <38.194035, 35.249340, 30.506300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.014069, 35.120560, 30.413412>,  <37.714127, 34.905926, 30.258598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014069, 35.120560, 30.413412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197524, -0.376747, 0.905012,
		0.631426, -0.755078, -0.176519,
		0.749857, 0.536581, 0.387033,
		38.239025, 35.281532, 30.529522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122768, 34.408134, 30.677618>,  <37.714127, 34.905926, 30.258598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122768, 34.408134, 30.677618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 34.777252, 30.815620>,  <38.232548, 34.998722, 30.898422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191380, 34.777252, 30.815620>,  <38.122768, 34.408134, 30.677618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191380, 34.777252, 30.815620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190914, -0.312423, 0.930561,
		0.966504, -0.225484, 0.122585,
		0.171529, 0.922794, 0.345007,
		38.242840, 35.054089, 30.919123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417664, 34.224426, 31.350224>,  <38.122768, 34.408134, 30.677618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417664, 34.224426, 31.350224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351498, 34.618763, 31.361166>,  <38.311798, 34.855366, 31.367731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351498, 34.618763, 31.361166>,  <38.417664, 34.224426, 31.350224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351498, 34.618763, 31.361166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115463, -0.046905, 0.992204,
		0.979442, 0.160968, 0.121588,
		-0.165416, 0.985845, 0.027355,
		38.301872, 34.914516, 31.369373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810139, 34.603981, 31.871922>,  <38.417664, 34.224426, 31.350224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810139, 34.603981, 31.871922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504597, 34.860241, 31.840700>,  <38.321270, 35.013996, 31.821968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.504597, 34.860241, 31.840700>,  <38.810139, 34.603981, 31.871922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504597, 34.860241, 31.840700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202462, -0.123037, 0.971530,
		0.612804, 0.757915, 0.223689,
		-0.763859, 0.640646, -0.078052,
		38.275440, 35.052433, 31.817286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852932, 35.050358, 32.433010>,  <38.810139, 34.603981, 31.871922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852932, 35.050358, 32.433010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479839, 35.104935, 32.299507>,  <38.255985, 35.137680, 32.219406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.479839, 35.104935, 32.299507>,  <38.852932, 35.050358, 32.433010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479839, 35.104935, 32.299507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356667, -0.213321, 0.909551,
		0.052907, 0.967407, 0.247637,
		-0.932732, 0.136445, -0.333756,
		38.200020, 35.145870, 32.199379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590263, 35.593105, 32.869274>,  <38.852932, 35.050358, 32.433010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590263, 35.593105, 32.869274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253464, 35.431858, 32.725864>,  <38.051384, 35.335110, 32.639820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.253464, 35.431858, 32.725864>,  <38.590263, 35.593105, 32.869274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253464, 35.431858, 32.725864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450974, 0.161206, 0.877858,
		-0.296084, 0.900838, -0.317530,
		-0.841995, -0.403118, -0.358524,
		38.000866, 35.310925, 32.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029491, 36.012573, 33.032696>,  <38.590263, 35.593105, 32.869274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029491, 36.012573, 33.032696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890377, 35.643288, 32.967312>,  <37.806908, 35.421715, 32.928082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.890377, 35.643288, 32.967312>,  <38.029491, 36.012573, 33.032696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890377, 35.643288, 32.967312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250877, -0.076351, 0.965003,
		-0.903384, 0.376627, -0.205059,
		-0.347790, -0.923213, -0.163461,
		37.786041, 35.366325, 32.918274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394756, 35.924156, 33.436718>,  <38.029491, 36.012573, 33.032696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394756, 35.924156, 33.436718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534920, 35.554417, 33.376335>,  <37.619019, 35.332573, 33.340107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.534920, 35.554417, 33.376335>,  <37.394756, 35.924156, 33.436718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534920, 35.554417, 33.376335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337299, -0.274906, 0.900364,
		-0.873753, -0.264575, -0.408112,
		0.350406, -0.924352, -0.150958,
		37.640041, 35.277111, 33.331047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850414, 35.472004, 33.699707>,  <37.394756, 35.924156, 33.436718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850414, 35.472004, 33.699707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147263, 35.208965, 33.647820>,  <37.325371, 35.051140, 33.616688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147263, 35.208965, 33.647820>,  <36.850414, 35.472004, 33.699707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147263, 35.208965, 33.647820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299158, -0.498150, 0.813849,
		-0.599807, -0.565164, -0.566411,
		0.742116, -0.657599, -0.129721,
		37.369896, 35.011684, 33.608902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620510, 34.773087, 33.744957>,  <36.850414, 35.472004, 33.699707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620510, 34.773087, 33.744957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011681, 34.730221, 33.816700>,  <37.246384, 34.704502, 33.859745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.011681, 34.730221, 33.816700>,  <36.620510, 34.773087, 33.744957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011681, 34.730221, 33.816700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208419, -0.440371, 0.873290,
		-0.014602, -0.891397, -0.452988,
		0.977931, -0.107163, 0.179354,
		37.305061, 34.698071, 33.870506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537060, 34.064651, 33.982456>,  <36.620510, 34.773087, 33.744957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537060, 34.064651, 33.982456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890472, 34.220814, 34.085964>,  <37.102520, 34.314510, 34.148067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890472, 34.220814, 34.085964>,  <36.537060, 34.064651, 33.982456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890472, 34.220814, 34.085964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049220, -0.472029, 0.880208,
		0.465781, -0.790427, -0.397836,
		0.883530, 0.390402, 0.258767,
		37.155533, 34.337933, 34.163593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864586, 33.544678, 34.290947>,  <36.537060, 34.064651, 33.982456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864586, 33.544678, 34.290947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077682, 33.857185, 34.421055>,  <37.205540, 34.044689, 34.499119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.077682, 33.857185, 34.421055>,  <36.864586, 33.544678, 34.290947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077682, 33.857185, 34.421055> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077830, -0.427956, 0.900442,
		0.842690, -0.454389, -0.288797,
		0.532744, 0.781271, 0.325269,
		37.237507, 34.091568, 34.518635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325974, 33.265598, 34.662399>,  <36.864586, 33.544678, 34.290947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325974, 33.265598, 34.662399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322540, 33.638935, 34.805954>,  <37.320480, 33.862938, 34.892086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322540, 33.638935, 34.805954>,  <37.325974, 33.265598, 34.662399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322540, 33.638935, 34.805954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022361, -0.358989, 0.933074,
		0.999713, -0.000018, 0.023950,
		-0.008581, 0.933342, 0.358886,
		37.319965, 33.918938, 34.913620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747463, 33.295948, 35.266228>,  <37.325974, 33.265598, 34.662399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747463, 33.295948, 35.266228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537800, 33.632858, 35.316551>,  <37.412003, 33.835003, 35.346745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.537800, 33.632858, 35.316551>,  <37.747463, 33.295948, 35.266228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537800, 33.632858, 35.316551> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232883, -0.283868, 0.930153,
		0.819157, 0.458252, 0.344944,
		-0.524163, 0.842273, 0.125813,
		37.380550, 33.885540, 35.354294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865818, 33.518257, 36.011856>,  <37.747463, 33.295948, 35.266228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865818, 33.518257, 36.011856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519299, 33.694660, 35.918018>,  <37.311386, 33.800503, 35.861713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.519299, 33.694660, 35.918018>,  <37.865818, 33.518257, 36.011856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519299, 33.694660, 35.918018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367519, -0.244635, 0.897265,
		0.338312, 0.863518, 0.374007,
		-0.866300, 0.441010, -0.234596,
		37.259407, 33.826962, 35.847641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701126, 34.137161, 36.452106>,  <37.865818, 33.518257, 36.011856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701126, 34.137161, 36.452106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351543, 34.002529, 36.311874>,  <37.141792, 33.921749, 36.227734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.351543, 34.002529, 36.311874>,  <37.701126, 34.137161, 36.452106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351543, 34.002529, 36.311874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323390, -0.135735, 0.936480,
		-0.362786, 0.931821, 0.009780,
		-0.873959, -0.336579, -0.350584,
		37.089355, 33.901554, 36.206699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230068, 34.531849, 36.666180>,  <37.701126, 34.137161, 36.452106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230068, 34.531849, 36.666180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565331, 34.384083, 36.826694>,  <38.766487, 34.295422, 36.923004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.565331, 34.384083, 36.826694>,  <38.230068, 34.531849, 36.666180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565331, 34.384083, 36.826694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539032, 0.448577, -0.712897,
		0.083347, 0.813824, 0.575103,
		0.838151, -0.369417, 0.401290,
		38.816776, 34.273258, 36.947083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610363, 35.114532, 36.756348>,  <38.230068, 34.531849, 36.666180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610363, 35.114532, 36.756348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855522, 34.798470, 36.756905>,  <39.002617, 34.608829, 36.757240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.855522, 34.798470, 36.756905>,  <38.610363, 35.114532, 36.756348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855522, 34.798470, 36.756905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572853, 0.443124, -0.689551,
		0.544240, 0.423421, 0.724236,
		0.612897, -0.790162, 0.001393,
		39.039391, 34.561420, 36.757324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229206, 35.371082, 36.766460>,  <38.610363, 35.114532, 36.756348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229206, 35.371082, 36.766460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314316, 35.000343, 36.642727>,  <39.365379, 34.777901, 36.568485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314316, 35.000343, 36.642727>,  <39.229206, 35.371082, 36.766460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314316, 35.000343, 36.642727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561390, 0.375073, -0.737673,
		0.799731, -0.016703, 0.600125,
		0.212770, -0.926845, -0.309335,
		39.378147, 34.722290, 36.549927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879581, 35.384232, 36.681683>,  <39.229206, 35.371082, 36.766460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879581, 35.384232, 36.681683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769714, 35.073452, 36.455090>,  <39.703793, 34.886982, 36.319134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.769714, 35.073452, 36.455090>,  <39.879581, 35.384232, 36.681683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769714, 35.073452, 36.455090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482575, 0.398183, -0.780110,
		0.831672, -0.487644, 0.265568,
		-0.274671, -0.776952, -0.566482,
		39.687313, 34.840366, 36.285145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.494415, 35.189243, 36.238617>,  <39.879581, 35.384232, 36.681683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.494415, 35.189243, 36.238617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171398, 35.030445, 36.064137>,  <39.977589, 34.935165, 35.959450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.171398, 35.030445, 36.064137>,  <40.494415, 35.189243, 36.238617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171398, 35.030445, 36.064137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331207, 0.306718, -0.892315,
		0.488033, -0.865055, -0.116201,
		-0.807543, -0.396992, -0.436201,
		39.929134, 34.911346, 35.933277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760735, 34.811321, 35.741077>,  <40.494415, 35.189243, 36.238617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760735, 34.811321, 35.741077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379791, 34.858852, 35.628719>,  <40.151226, 34.887371, 35.561306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379791, 34.858852, 35.628719>,  <40.760735, 34.811321, 35.741077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379791, 34.858852, 35.628719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293375, 0.105104, -0.950202,
		-0.083385, -0.987336, -0.134957,
		-0.952354, 0.118825, -0.280896,
		40.094086, 34.894501, 35.544449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811451, 34.527397, 35.092743>,  <40.760735, 34.811321, 35.741077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811451, 34.527397, 35.092743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459854, 34.718124, 35.094051>,  <40.248894, 34.832561, 35.094837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.459854, 34.718124, 35.094051>,  <40.811451, 34.527397, 35.092743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459854, 34.718124, 35.094051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127634, 0.241878, -0.961876,
		-0.459430, -0.845068, -0.273468,
		-0.878995, 0.476818, 0.003267,
		40.196156, 34.861172, 35.095032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349953, 34.284954, 34.532944>,  <40.811451, 34.527397, 35.092743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349953, 34.284954, 34.532944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224171, 34.652634, 34.627758>,  <40.148701, 34.873241, 34.684647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224171, 34.652634, 34.627758>,  <40.349953, 34.284954, 34.532944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224171, 34.652634, 34.627758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084304, 0.275758, -0.957523,
		-0.945523, -0.281111, -0.164205,
		-0.314451, 0.919203, 0.237037,
		40.129837, 34.928394, 34.698868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865963, 34.339558, 34.097721>,  <40.349953, 34.284954, 34.532944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865963, 34.339558, 34.097721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.990448, 34.700043, 34.218365>,  <40.065140, 34.916332, 34.290749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.990448, 34.700043, 34.218365>,  <39.865963, 34.339558, 34.097721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990448, 34.700043, 34.218365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173453, 0.258170, -0.950401,
		-0.934377, 0.348094, -0.075971,
		0.311215, 0.901210, 0.301605,
		40.083813, 34.970406, 34.308846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606140, 34.755173, 33.616882>,  <39.865963, 34.339558, 34.097721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606140, 34.755173, 33.616882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886688, 34.988148, 33.781250>,  <40.055016, 35.127934, 33.879871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.886688, 34.988148, 33.781250>,  <39.606140, 34.755173, 33.616882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886688, 34.988148, 33.781250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265324, 0.321743, -0.908892,
		-0.661581, 0.746493, 0.071126,
		0.701366, 0.582434, 0.410921,
		40.097099, 35.162880, 33.904526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546867, 35.346516, 33.173809>,  <39.606140, 34.755173, 33.616882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546867, 35.346516, 33.173809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.880791, 35.425941, 33.379204>,  <40.081142, 35.473598, 33.502441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.880791, 35.425941, 33.379204>,  <39.546867, 35.346516, 33.173809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880791, 35.425941, 33.379204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428953, 0.350060, -0.832741,
		-0.345108, 0.915439, 0.207055,
		0.834805, 0.198569, 0.513489,
		40.131233, 35.485512, 33.533249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602795, 36.044205, 33.039326>,  <39.546867, 35.346516, 33.173809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602795, 36.044205, 33.039326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955322, 35.887760, 33.145386>,  <40.166840, 35.793896, 33.209023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.955322, 35.887760, 33.145386>,  <39.602795, 36.044205, 33.039326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955322, 35.887760, 33.145386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422616, 0.401479, -0.812533,
		0.211339, 0.828160, 0.519122,
		0.881324, -0.391109, 0.265145,
		40.219719, 35.770428, 33.224930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.946018, 36.576519, 32.941185>,  <39.602795, 36.044205, 33.039326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.946018, 36.576519, 32.941185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.235706, 36.300945, 32.953041>,  <40.409519, 36.135601, 32.960155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.235706, 36.300945, 32.953041>,  <39.946018, 36.576519, 32.941185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235706, 36.300945, 32.953041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482295, 0.475342, -0.735827,
		0.492848, 0.547194, 0.676520,
		0.724219, -0.688933, 0.029638,
		40.452972, 36.094265, 32.961933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532909, 36.894115, 33.057243>,  <39.946018, 36.576519, 32.941185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532909, 36.894115, 33.057243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.609570, 36.554527, 32.860256>,  <40.655567, 36.350777, 32.742065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.609570, 36.554527, 32.860256>,  <40.532909, 36.894115, 33.057243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609570, 36.554527, 32.860256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500278, 0.516190, -0.695176,
		0.844388, -0.113138, 0.523649,
		0.191651, -0.848969, -0.492465,
		40.667065, 36.299835, 32.712517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362164, 36.843414, 33.066494>,  <40.532909, 36.894115, 33.057243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362164, 36.843414, 33.066494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.192120, 36.607971, 32.791447>,  <41.090096, 36.466705, 32.626419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.192120, 36.607971, 32.791447>,  <41.362164, 36.843414, 33.066494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192120, 36.607971, 32.791447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602970, 0.382421, -0.700130,
		0.675064, -0.712244, 0.192345,
		-0.425106, -0.588611, -0.687620,
		41.064587, 36.431389, 32.585159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928970, 36.658363, 32.672615>,  <41.362164, 36.843414, 33.066494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928970, 36.658363, 32.672615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606480, 36.605152, 32.442032>,  <41.412987, 36.573223, 32.303684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.606480, 36.605152, 32.442032>,  <41.928970, 36.658363, 32.672615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606480, 36.605152, 32.442032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490223, 0.395233, -0.776835,
		0.331172, -0.908898, -0.253436,
		-0.806230, -0.133026, -0.576452,
		41.364613, 36.565243, 32.269096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178608, 36.467793, 31.962881>,  <41.928970, 36.658363, 32.672615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178608, 36.467793, 31.962881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803192, 36.558697, 31.858963>,  <41.577942, 36.613239, 31.796612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803192, 36.558697, 31.858963>,  <42.178608, 36.467793, 31.962881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803192, 36.558697, 31.858963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324091, 0.321216, -0.889823,
		-0.118772, -0.919333, -0.375127,
		-0.938540, 0.227261, -0.259796,
		41.521629, 36.626877, 31.781025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034958, 36.124508, 31.240557>,  <42.178608, 36.467793, 31.962881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034958, 36.124508, 31.240557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778786, 36.430820, 31.263987>,  <41.625084, 36.614609, 31.278044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.778786, 36.430820, 31.263987>,  <42.034958, 36.124508, 31.240557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778786, 36.430820, 31.263987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181633, 0.225121, -0.957251,
		-0.746229, -0.602415, -0.283265,
		-0.640431, 0.765779, 0.058573,
		41.586655, 36.660553, 31.281559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.563644, 36.121944, 30.648926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525688, 36.500538, 30.772324>,  <41.502914, 36.727692, 30.846363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.525688, 36.500538, 30.772324>,  <41.563644, 36.121944, 30.648926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525688, 36.500538, 30.772324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084359, 0.316425, -0.944859,
		-0.991907, -0.063636, -0.109871,
		-0.094893, 0.946481, 0.308495,
		41.497219, 36.784481, 30.864872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127911, 36.522820, 30.177443>,  <41.563644, 36.121944, 30.648926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127911, 36.522820, 30.177443> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299152, 36.824562, 30.376509>,  <41.401897, 37.005608, 30.495949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.299152, 36.824562, 30.376509>,  <41.127911, 36.522820, 30.177443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299152, 36.824562, 30.376509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136541, 0.490366, -0.860754,
		-0.893356, 0.436443, 0.106926,
		0.428103, 0.754360, 0.497663,
		41.427582, 37.050869, 30.525808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796978, 37.073666, 30.122578>,  <41.127911, 36.522820, 30.177443>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796978, 37.073666, 30.122578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159622, 37.214577, 30.215488>,  <41.377209, 37.299122, 30.271235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.159622, 37.214577, 30.215488>,  <40.796978, 37.073666, 30.122578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159622, 37.214577, 30.215488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047706, 0.461366, -0.885926,
		-0.419255, 0.814274, 0.401475,
		0.906614, 0.352277, 0.232276,
		41.431606, 37.320259, 30.285172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793808, 37.815132, 29.919649>,  <40.796978, 37.073666, 30.122578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793808, 37.815132, 29.919649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168701, 37.675747, 29.924793>,  <41.393639, 37.592113, 29.927879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.168701, 37.675747, 29.924793>,  <40.793808, 37.815132, 29.919649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.168701, 37.675747, 29.924793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168791, 0.421084, -0.891178,
		0.305130, 0.837412, 0.453471,
		0.937233, -0.348467, 0.012863,
		41.449871, 37.571205, 29.928652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249138, 38.462074, 29.689148>,  <40.793808, 37.815132, 29.919649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249138, 38.462074, 29.689148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447723, 38.116562, 29.654701>,  <41.566875, 37.909256, 29.634033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.447723, 38.116562, 29.654701>,  <41.249138, 38.462074, 29.689148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447723, 38.116562, 29.654701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257552, 0.241313, -0.935647,
		0.828972, 0.442331, 0.342270,
		0.496459, -0.863778, -0.086118,
		41.596661, 37.857430, 29.628866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956631, 38.661350, 29.388739>,  <41.249138, 38.462074, 29.689148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956631, 38.661350, 29.388739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910202, 38.267834, 29.334055>,  <41.882343, 38.031723, 29.301245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.910202, 38.267834, 29.334055>,  <41.956631, 38.661350, 29.388739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910202, 38.267834, 29.334055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363709, 0.085979, -0.927536,
		0.924252, -0.157388, 0.347832,
		-0.116076, -0.983787, -0.136710,
		41.875378, 37.972698, 29.293041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608028, 38.459942, 29.103870>,  <41.956631, 38.661350, 29.388739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608028, 38.459942, 29.103870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.352047, 38.168335, 29.006725>,  <42.198456, 37.993370, 28.948439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.352047, 38.168335, 29.006725>,  <42.608028, 38.459942, 29.103870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352047, 38.168335, 29.006725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386580, -0.032306, -0.921690,
		0.664086, -0.683728, 0.302499,
		-0.639958, -0.729021, -0.242862,
		42.160061, 37.949627, 28.933867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066746, 38.054474, 28.720186>,  <42.608028, 38.459942, 29.103870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066746, 38.054474, 28.720186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696774, 37.937943, 28.622511>,  <42.474789, 37.868023, 28.563906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.696774, 37.937943, 28.622511>,  <43.066746, 38.054474, 28.720186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696774, 37.937943, 28.622511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281523, -0.093319, -0.955006,
		0.255429, -0.952062, 0.168328,
		-0.924933, -0.291324, -0.244190,
		42.419292, 37.850544, 28.549253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118164, 37.429028, 28.301052>,  <43.066746, 38.054474, 28.720186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118164, 37.429028, 28.301052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.771339, 37.589863, 28.183393>,  <42.563244, 37.686363, 28.112799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.771339, 37.589863, 28.183393>,  <43.118164, 37.429028, 28.301052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771339, 37.589863, 28.183393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322786, 0.003676, -0.946465,
		-0.379484, -0.915592, -0.132977,
		-0.867065, 0.402091, -0.294146,
		42.511219, 37.710491, 28.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.989147, 37.141788, 27.509100>,  <43.118164, 37.429028, 28.301052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.989147, 37.141788, 27.509100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.757938, 37.463615, 27.563604>,  <42.619213, 37.656712, 27.596306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.757938, 37.463615, 27.563604>,  <42.989147, 37.141788, 27.509100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757938, 37.463615, 27.563604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216715, 0.312336, -0.924922,
		-0.786719, -0.505095, -0.354898,
		-0.578021, 0.804566, 0.136259,
		42.584534, 37.704987, 27.604483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775928, 37.206635, 26.958145>,  <42.989147, 37.141788, 27.509100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775928, 37.206635, 26.958145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.704128, 37.574638, 27.097494>,  <42.661049, 37.795441, 27.181105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.704128, 37.574638, 27.097494>,  <42.775928, 37.206635, 26.958145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704128, 37.574638, 27.097494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209831, 0.381783, -0.900118,
		-0.961119, -0.088475, -0.261577,
		-0.179503, 0.920008, 0.348374,
		42.650276, 37.850639, 27.202007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322338, 37.557076, 26.440491>,  <42.775928, 37.206635, 26.958145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322338, 37.557076, 26.440491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.506954, 37.825127, 26.673012>,  <42.617725, 37.985958, 26.812525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.506954, 37.825127, 26.673012>,  <42.322338, 37.557076, 26.440491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506954, 37.825127, 26.673012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341735, 0.470397, -0.813599,
		-0.818656, 0.574161, -0.011897,
		0.461541, 0.670123, 0.581304,
		42.645416, 38.026165, 26.847403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317421, 38.186897, 25.941208>,  <42.322338, 37.557076, 26.440491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317421, 38.186897, 25.941208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.574799, 38.301620, 26.225101>,  <42.729225, 38.370457, 26.395437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.574799, 38.301620, 26.225101>,  <42.317421, 38.186897, 25.941208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.574799, 38.301620, 26.225101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458767, 0.597722, -0.657466,
		-0.612791, 0.748644, 0.253020,
		0.643443, 0.286812, 0.709732,
		42.767830, 38.387665, 26.438021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317947, 38.927372, 25.919748>,  <42.317421, 38.186897, 25.941208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317947, 38.927372, 25.919748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656837, 38.812702, 26.098648>,  <42.860172, 38.743900, 26.205988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.656837, 38.812702, 26.098648>,  <42.317947, 38.927372, 25.919748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656837, 38.812702, 26.098648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490721, 0.744807, -0.452168,
		-0.203491, 0.602562, 0.771693,
		0.847222, -0.286674, 0.447251,
		42.911003, 38.726700, 26.232824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604767, 39.528416, 26.284498>,  <42.317947, 38.927372, 25.919748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604767, 39.528416, 26.284498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.929253, 39.298058, 26.243956>,  <43.123943, 39.159843, 26.219631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.929253, 39.298058, 26.243956>,  <42.604767, 39.528416, 26.284498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.929253, 39.298058, 26.243956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544741, 0.807292, -0.227019,
		0.212560, 0.128950, 0.968602,
		0.811219, -0.575892, -0.101354,
		43.172619, 39.125290, 26.213549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136627, 39.845470, 26.556875>,  <42.604767, 39.528416, 26.284498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136627, 39.845470, 26.556875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329136, 39.586967, 26.319986>,  <43.444641, 39.431866, 26.177853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.329136, 39.586967, 26.319986>,  <43.136627, 39.845470, 26.556875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.329136, 39.586967, 26.319986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451714, 0.761844, -0.464272,
		0.751222, -0.044077, 0.658576,
		0.481268, -0.646260, -0.592224,
		43.473515, 39.393089, 26.142319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803684, 40.129662, 26.598476>,  <43.136627, 39.845470, 26.556875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803684, 40.129662, 26.598476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759335, 39.906502, 26.269489>,  <43.732723, 39.772606, 26.072098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.759335, 39.906502, 26.269489>,  <43.803684, 40.129662, 26.598476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759335, 39.906502, 26.269489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508760, 0.679050, -0.529201,
		0.853739, -0.477114, 0.208548,
		-0.110874, -0.557901, -0.822468,
		43.726074, 39.739132, 26.022749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463566, 40.133728, 26.283365>,  <43.803684, 40.129662, 26.598476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463566, 40.133728, 26.283365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.235348, 39.987606, 25.989147>,  <44.098415, 39.899933, 25.812616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.235348, 39.987606, 25.989147>,  <44.463566, 40.133728, 26.283365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235348, 39.987606, 25.989147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547057, 0.498954, -0.672141,
		0.612540, -0.785874, -0.084835,
		-0.570546, -0.365304, -0.735547,
		44.064182, 39.878014, 25.768482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900162, 40.086037, 25.708876>,  <44.463566, 40.133728, 26.283365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900162, 40.086037, 25.708876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.553570, 40.056072, 25.511450>,  <44.345615, 40.038094, 25.392994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.553570, 40.056072, 25.511450>,  <44.900162, 40.086037, 25.708876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553570, 40.056072, 25.511450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350993, 0.611642, -0.709012,
		0.354996, -0.787581, -0.503681,
		-0.866477, -0.074908, -0.493566,
		44.293629, 40.033600, 25.363380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.020344, 39.778835, 24.989044>,  <44.900162, 40.086037, 25.708876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.020344, 39.778835, 24.989044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694008, 40.010139, 24.991037>,  <44.498207, 40.148922, 24.992233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.694008, 40.010139, 24.991037>,  <45.020344, 39.778835, 24.989044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.694008, 40.010139, 24.991037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314487, 0.450890, -0.835342,
		-0.485295, -0.679933, -0.549708,
		-0.815835, 0.578263, 0.004985,
		44.449257, 40.183617, 24.992533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779343, 39.846970, 24.240040>,  <45.020344, 39.778835, 24.989044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779343, 39.846970, 24.240040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.636631, 40.162807, 24.439741>,  <44.551006, 40.352310, 24.559563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.636631, 40.162807, 24.439741>,  <44.779343, 39.846970, 24.240040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636631, 40.162807, 24.439741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404870, 0.612318, -0.679078,
		-0.841897, -0.040146, -0.538143,
		-0.356776, 0.789592, 0.499255,
		44.529598, 40.399685, 24.589518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.551609, 40.374989, 23.725927>,  <44.779343, 39.846970, 24.240040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.551609, 40.374989, 23.725927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.547916, 40.597305, 24.058435>,  <44.545700, 40.730698, 24.257940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.547916, 40.597305, 24.058435>,  <44.551609, 40.374989, 23.725927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547916, 40.597305, 24.058435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358678, 0.777825, -0.516080,
		-0.933416, 0.293394, -0.206530,
		-0.009230, 0.555795, 0.831268,
		44.545147, 40.764046, 24.307816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046684, 40.883648, 23.696310>,  <44.551609, 40.374989, 23.725927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046684, 40.883648, 23.696310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.349510, 41.020061, 23.919218>,  <44.531208, 41.101910, 24.052963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.349510, 41.020061, 23.919218>,  <44.046684, 40.883648, 23.696310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.349510, 41.020061, 23.919218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219285, 0.670842, -0.708438,
		-0.615438, 0.658536, 0.433090,
		0.757067, 0.341029, 0.557269,
		44.576630, 41.122372, 24.086399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407391, 41.037903, 23.328682>,  <44.046684, 40.883648, 23.696310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407391, 41.037903, 23.328682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.129215, 41.262146, 23.148867>,  <42.962311, 41.396694, 23.040977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.129215, 41.262146, 23.148867>,  <43.407391, 41.037903, 23.328682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.129215, 41.262146, 23.148867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600557, -0.109914, 0.791992,
		0.394589, 0.820752, 0.413117,
		-0.695436, 0.560611, -0.449537,
		42.920586, 41.430328, 23.014006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111221, 41.466904, 23.862642>,  <43.407391, 41.037903, 23.328682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111221, 41.466904, 23.862642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.841377, 41.417229, 23.571583>,  <42.679470, 41.387421, 23.396948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.841377, 41.417229, 23.571583>,  <43.111221, 41.466904, 23.862642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841377, 41.417229, 23.571583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593669, -0.494549, 0.634806,
		-0.438696, 0.860231, 0.259900,
		-0.674613, -0.124192, -0.727649,
		42.638992, 41.379971, 23.353289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534554, 41.728760, 24.041473>,  <43.111221, 41.466904, 23.862642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534554, 41.728760, 24.041473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.431732, 41.439091, 23.785505>,  <42.370037, 41.265289, 23.631926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.431732, 41.439091, 23.785505>,  <42.534554, 41.728760, 24.041473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.431732, 41.439091, 23.785505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594344, -0.403666, 0.695563,
		-0.762021, 0.559131, -0.326643,
		-0.257056, -0.724172, -0.639919,
		42.354614, 41.221840, 23.593529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846371, 41.625381, 24.076399>,  <42.534554, 41.728760, 24.041473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846371, 41.625381, 24.076399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958233, 41.288662, 23.891716>,  <42.025349, 41.086632, 23.780907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.958233, 41.288662, 23.891716>,  <41.846371, 41.625381, 24.076399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958233, 41.288662, 23.891716> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685218, -0.511840, 0.518167,
		-0.672511, 0.171464, -0.719951,
		0.279653, -0.841796, -0.461708,
		42.042130, 41.036121, 23.753204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215378, 41.289795, 24.054653>,  <41.846371, 41.625381, 24.076399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215378, 41.289795, 24.054653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495293, 41.010532, 23.994154>,  <41.663242, 40.842976, 23.957853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.495293, 41.010532, 23.994154>,  <41.215378, 41.289795, 24.054653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495293, 41.010532, 23.994154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430029, -0.580781, 0.691208,
		-0.570407, -0.418664, -0.706652,
		0.699793, -0.698151, -0.151244,
		41.705231, 40.801086, 23.948778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973473, 40.762222, 23.778681>,  <41.215378, 41.289795, 24.054653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973473, 40.762222, 23.778681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288506, 40.585606, 23.950617>,  <41.477524, 40.479637, 24.053778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.288506, 40.585606, 23.950617>,  <40.973473, 40.762222, 23.778681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288506, 40.585606, 23.950617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603144, -0.695264, 0.390928,
		0.126242, -0.567142, -0.813887,
		0.787579, -0.441540, 0.429840,
		41.524780, 40.453144, 24.079569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739960, 40.115879, 23.823328>,  <40.973473, 40.762222, 23.778681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739960, 40.115879, 23.823328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069458, 40.125702, 24.049898>,  <41.267159, 40.131596, 24.185841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.069458, 40.125702, 24.049898>,  <40.739960, 40.115879, 23.823328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069458, 40.125702, 24.049898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432570, -0.618606, 0.655905,
		0.366500, -0.785318, -0.498953,
		0.823749, 0.024557, 0.566424,
		41.316582, 40.133068, 24.219826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022724, 39.381882, 23.804014>,  <40.739960, 40.115879, 23.823328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022724, 39.381882, 23.804014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166855, 39.578506, 24.121134>,  <41.253334, 39.696480, 24.311405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.166855, 39.578506, 24.121134>,  <41.022724, 39.381882, 23.804014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166855, 39.578506, 24.121134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327125, -0.729332, 0.600886,
		0.873586, -0.475861, -0.101997,
		0.360328, 0.491560, 0.792800,
		41.274952, 39.725975, 24.358974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322800, 38.953510, 24.227667>,  <41.022724, 39.381882, 23.804014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322800, 38.953510, 24.227667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.257065, 39.255432, 24.481680>,  <41.217625, 39.436584, 24.634087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.257065, 39.255432, 24.481680>,  <41.322800, 38.953510, 24.227667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257065, 39.255432, 24.481680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537156, -0.608435, 0.584183,
		0.827319, -0.245107, 0.505437,
		-0.164339, 0.754804, 0.635031,
		41.207764, 39.481873, 24.672190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452461, 38.558838, 24.875431>,  <41.322800, 38.953510, 24.227667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452461, 38.558838, 24.875431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.261391, 38.891491, 24.988722>,  <41.146748, 39.091084, 25.056696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.261391, 38.891491, 24.988722>,  <41.452461, 38.558838, 24.875431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261391, 38.891491, 24.988722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385195, -0.487999, 0.783251,
		0.789589, 0.265043, 0.553445,
		-0.477676, 0.831630, 0.283225,
		41.118088, 39.140980, 25.073689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666557, 38.835823, 25.542429>,  <41.452461, 38.558838, 24.875431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666557, 38.835823, 25.542429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287338, 38.935825, 25.463726>,  <41.059807, 38.995827, 25.416504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.287338, 38.935825, 25.463726>,  <41.666557, 38.835823, 25.542429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287338, 38.935825, 25.463726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307624, -0.562642, 0.767334,
		0.081130, 0.787993, 0.610316,
		-0.948043, 0.250001, -0.196758,
		41.002926, 39.010826, 25.404699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474861, 38.796570, 26.199450>,  <41.666557, 38.835823, 25.542429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474861, 38.796570, 26.199450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145145, 38.782501, 25.973419>,  <40.947315, 38.774059, 25.837801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.145145, 38.782501, 25.973419>,  <41.474861, 38.796570, 26.199450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145145, 38.782501, 25.973419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465465, -0.526106, 0.711726,
		-0.322320, 0.849692, 0.417295,
		-0.824289, -0.035167, -0.565076,
		40.897858, 38.771950, 25.803896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929077, 38.943672, 26.590565>,  <41.474861, 38.796570, 26.199450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929077, 38.943672, 26.590565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746841, 38.748146, 26.292974>,  <40.637501, 38.630833, 26.114420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.746841, 38.748146, 26.292974>,  <40.929077, 38.943672, 26.590565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746841, 38.748146, 26.292974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476466, -0.572058, 0.667630,
		-0.751944, 0.658644, 0.027721,
		-0.455589, -0.488812, -0.743977,
		40.610165, 38.601501, 26.069782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279278, 38.938435, 26.833357>,  <40.929077, 38.943672, 26.590565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279278, 38.938435, 26.833357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299610, 38.649296, 26.557701>,  <40.311810, 38.475815, 26.392307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.299610, 38.649296, 26.557701>,  <40.279278, 38.938435, 26.833357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299610, 38.649296, 26.557701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526913, -0.605591, 0.596341,
		-0.848398, 0.332801, -0.411661,
		0.050835, -0.722844, -0.689139,
		40.314861, 38.432442, 26.350960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598591, 38.677910, 26.633083>,  <40.279278, 38.938435, 26.833357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598591, 38.677910, 26.633083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834396, 38.368786, 26.539068>,  <39.975880, 38.183311, 26.482658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.834396, 38.368786, 26.539068>,  <39.598591, 38.677910, 26.633083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834396, 38.368786, 26.539068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505164, -0.579777, 0.639271,
		-0.630306, -0.258123, -0.732180,
		0.589511, -0.772807, -0.235043,
		40.011250, 38.136944, 26.468557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165253, 38.154877, 26.537006>,  <39.598591, 38.677910, 26.633083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165253, 38.154877, 26.537006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524937, 37.998207, 26.614998>,  <39.740746, 37.904205, 26.661793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.524937, 37.998207, 26.614998>,  <39.165253, 38.154877, 26.537006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524937, 37.998207, 26.614998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437201, -0.787461, 0.434466,
		-0.016629, -0.475921, -0.879331,
		0.899210, -0.391669, 0.194978,
		39.794701, 37.880707, 26.673491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110874, 37.470543, 26.480484>,  <39.165253, 38.154877, 26.537006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.110874, 37.470543, 26.480484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446583, 37.487709, 26.697290>,  <39.648006, 37.498009, 26.827374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.446583, 37.487709, 26.697290>,  <39.110874, 37.470543, 26.480484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446583, 37.487709, 26.697290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326474, -0.757389, 0.565489,
		0.434783, -0.651553, -0.621645,
		0.839272, 0.042914, 0.542015,
		39.698364, 37.500584, 26.859896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229897, 36.799965, 26.635900>,  <39.110874, 37.470543, 26.480484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229897, 36.799965, 26.635900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479828, 36.984112, 26.888136>,  <39.629787, 37.094601, 27.039478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.479828, 36.984112, 26.888136>,  <39.229897, 36.799965, 26.635900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479828, 36.984112, 26.888136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287108, -0.615591, 0.733905,
		0.726053, -0.639616, -0.252466,
		0.624833, 0.460369, 0.630591,
		39.667278, 37.122223, 27.077312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718468, 36.356079, 27.064487>,  <39.229897, 36.799965, 26.635900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718468, 36.356079, 27.064487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711224, 36.677151, 27.302944>,  <39.706879, 36.869793, 27.446018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.711224, 36.677151, 27.302944>,  <39.718468, 36.356079, 27.064487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711224, 36.677151, 27.302944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180849, -0.589033, 0.787613,
		0.983344, -0.093550, 0.155828,
		-0.018107, 0.802676, 0.596141,
		39.705791, 36.917953, 27.481787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990810, 36.089577, 27.549814>,  <39.718468, 36.356079, 27.064487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990810, 36.089577, 27.549814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837906, 36.417309, 27.720730>,  <39.746162, 36.613949, 27.823280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.837906, 36.417309, 27.720730>,  <39.990810, 36.089577, 27.549814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837906, 36.417309, 27.720730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348983, -0.556167, 0.754248,
		0.855623, 0.139199, 0.498531,
		-0.382257, 0.819330, 0.427291,
		39.723228, 36.663109, 27.848917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095108, 36.030151, 28.203463>,  <39.990810, 36.089577, 27.549814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095108, 36.030151, 28.203463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826061, 36.326073, 28.196831>,  <39.664631, 36.503624, 28.192852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.826061, 36.326073, 28.196831>,  <40.095108, 36.030151, 28.203463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826061, 36.326073, 28.196831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446975, -0.388328, 0.805862,
		0.589741, 0.549450, 0.591871,
		-0.672621, 0.739801, -0.016577,
		39.624275, 36.548012, 28.191858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.352737, 35.231167, 33.607414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014805, 35.418182, 33.503368>,  <40.812046, 35.530392, 33.440941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014805, 35.418182, 33.503368>,  <41.352737, 35.231167, 33.607414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014805, 35.418182, 33.503368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377069, -0.175396, 0.909426,
		0.379571, 0.866395, 0.324476,
		-0.844834, 0.467542, -0.260115,
		40.761356, 35.558445, 33.425335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240856, 35.823246, 34.037388>,  <41.352737, 35.231167, 33.607414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240856, 35.823246, 34.037388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887745, 35.699936, 33.895588>,  <40.675880, 35.625950, 33.810509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.887745, 35.699936, 33.895588>,  <41.240856, 35.823246, 34.037388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887745, 35.699936, 33.895588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331894, -0.124823, 0.935022,
		-0.332498, 0.943071, 0.007875,
		-0.882775, -0.308279, -0.354503,
		40.622913, 35.607452, 33.789238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903805, 36.015327, 34.521431>,  <41.240856, 35.823246, 34.037388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903805, 36.015327, 34.521431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668556, 35.756378, 34.327515>,  <40.527409, 35.601009, 34.211163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668556, 35.756378, 34.327515>,  <40.903805, 36.015327, 34.521431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668556, 35.756378, 34.327515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435059, -0.252078, 0.864396,
		-0.681789, 0.719285, -0.133391,
		-0.588122, -0.647368, -0.484795,
		40.492119, 35.562168, 34.182076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294136, 36.209091, 34.798290>,  <40.903805, 36.015327, 34.521431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294136, 36.209091, 34.798290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250313, 35.839199, 34.652485>,  <40.224018, 35.617264, 34.565002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.250313, 35.839199, 34.652485>,  <40.294136, 36.209091, 34.798290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250313, 35.839199, 34.652485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525128, -0.257515, 0.811126,
		-0.843942, 0.280278, -0.457391,
		-0.109556, -0.924733, -0.364510,
		40.217445, 35.561779, 34.543133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670193, 36.082272, 34.936394>,  <40.294136, 36.209091, 34.798290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670193, 36.082272, 34.936394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828896, 35.720528, 34.873512>,  <39.924118, 35.503479, 34.835785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.828896, 35.720528, 34.873512>,  <39.670193, 36.082272, 34.936394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828896, 35.720528, 34.873512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478374, -0.349880, 0.805445,
		-0.783416, -0.244365, -0.571441,
		0.396758, -0.904361, -0.157204,
		39.947922, 35.449219, 34.826351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140148, 35.656593, 34.993389>,  <39.670193, 36.082272, 34.936394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140148, 35.656593, 34.993389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451866, 35.411877, 35.047657>,  <39.638897, 35.265045, 35.080215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.451866, 35.411877, 35.047657>,  <39.140148, 35.656593, 34.993389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451866, 35.411877, 35.047657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472365, -0.431229, 0.768709,
		-0.411785, -0.663139, -0.625045,
		0.779297, -0.611792, 0.135670,
		39.685654, 35.228336, 35.088356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867065, 35.017235, 35.176208>,  <39.140148, 35.656593, 34.993389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867065, 35.017235, 35.176208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249893, 34.974991, 35.284187>,  <39.479588, 34.949642, 35.348976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.249893, 34.974991, 35.284187>,  <38.867065, 35.017235, 35.176208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249893, 34.974991, 35.284187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281073, -0.565851, 0.775120,
		0.070888, -0.817715, -0.571241,
		0.957065, -0.105613, 0.269950,
		39.537014, 34.943306, 35.365173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957397, 34.360497, 35.349300>,  <38.867065, 35.017235, 35.176208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957397, 34.360497, 35.349300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273766, 34.517784, 35.536842>,  <39.463585, 34.612156, 35.649368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.273766, 34.517784, 35.536842>,  <38.957397, 34.360497, 35.349300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273766, 34.517784, 35.536842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162149, -0.604138, 0.780209,
		0.590047, -0.693106, -0.414064,
		0.790919, 0.393220, 0.468855,
		39.511040, 34.635750, 35.677498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261074, 33.791927, 35.725475>,  <38.957397, 34.360497, 35.349300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261074, 33.791927, 35.725475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.433506, 34.109627, 35.896751>,  <39.536964, 34.300247, 35.999516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.433506, 34.109627, 35.896751>,  <39.261074, 33.791927, 35.725475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433506, 34.109627, 35.896751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037866, -0.458199, 0.888043,
		0.901521, -0.399028, -0.167443,
		0.431076, 0.794249, 0.428185,
		39.562828, 34.347900, 36.025208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609512, 33.509392, 36.212250>,  <39.261074, 33.791927, 35.725475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609512, 33.509392, 36.212250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570869, 33.891975, 36.322414>,  <39.547684, 34.121525, 36.388515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.570869, 33.891975, 36.322414>,  <39.609512, 33.509392, 36.212250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570869, 33.891975, 36.322414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221348, -0.290425, 0.930945,
		0.970398, 0.028972, 0.239767,
		-0.096606, 0.956459, 0.275415,
		39.541889, 34.178913, 36.405041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014172, 33.635555, 36.751526>,  <39.609512, 33.509392, 36.212250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014172, 33.635555, 36.751526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.709381, 33.894062, 36.768154>,  <39.526508, 34.049168, 36.778133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.709381, 33.894062, 36.768154>,  <40.014172, 33.635555, 36.751526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709381, 33.894062, 36.768154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254088, -0.357395, 0.898726,
		0.595677, 0.674245, 0.436536,
		-0.761977, 0.646269, 0.041574,
		39.480789, 34.087944, 36.780628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958149, 33.972054, 37.387444>,  <40.014172, 33.635555, 36.751526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958149, 33.972054, 37.387444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589390, 34.023777, 37.241356>,  <39.368134, 34.054810, 37.153706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.589390, 34.023777, 37.241356>,  <39.958149, 33.972054, 37.387444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589390, 34.023777, 37.241356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380310, -0.481949, 0.789360,
		-0.073946, 0.866605, 0.493485,
		-0.921898, 0.129307, -0.365216,
		39.312820, 34.062569, 37.131790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545704, 34.330486, 37.949394>,  <39.958149, 33.972054, 37.387444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545704, 34.330486, 37.949394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333202, 34.105068, 37.696354>,  <39.205700, 33.969818, 37.544529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333202, 34.105068, 37.696354>,  <39.545704, 34.330486, 37.949394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333202, 34.105068, 37.696354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409557, -0.482808, 0.774054,
		-0.741641, 0.670305, 0.025688,
		-0.531254, -0.563550, -0.632598,
		39.173824, 33.936005, 37.506573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539368, 35.114143, 38.016575>,  <39.545704, 34.330486, 37.949394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539368, 35.114143, 38.016575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646378, 35.407475, 38.266586>,  <39.710583, 35.583473, 38.416592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646378, 35.407475, 38.266586>,  <39.539368, 35.114143, 38.016575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646378, 35.407475, 38.266586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441838, 0.483088, -0.755913,
		-0.856277, 0.478386, -0.194775,
		0.267525, 0.733330, 0.625026,
		39.726635, 35.627472, 38.454094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.193939, 35.693001, 37.782841>,  <39.539368, 35.114143, 38.016575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.193939, 35.693001, 37.782841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477901, 35.851925, 38.015453>,  <39.648277, 35.947281, 38.155022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.477901, 35.851925, 38.015453>,  <39.193939, 35.693001, 37.782841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477901, 35.851925, 38.015453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188975, 0.687958, -0.700715,
		-0.678471, 0.607337, 0.413304,
		0.709905, 0.397310, 0.581531,
		39.690872, 35.971119, 38.189911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025848, 36.296265, 37.918354>,  <39.193939, 35.693001, 37.782841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025848, 36.296265, 37.918354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407280, 36.349514, 38.026398>,  <39.636139, 36.381462, 38.091225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.407280, 36.349514, 38.026398>,  <39.025848, 36.296265, 37.918354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407280, 36.349514, 38.026398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019211, 0.868258, -0.495741,
		-0.300517, 0.477919, 0.825399,
		0.953583, 0.133122, 0.270108,
		39.693356, 36.389450, 38.107430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044060, 37.059204, 38.009811>,  <39.025848, 36.296265, 37.918354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044060, 37.059204, 38.009811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424927, 36.951763, 37.951527>,  <39.653446, 36.887299, 37.916557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.424927, 36.951763, 37.951527>,  <39.044060, 37.059204, 38.009811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424927, 36.951763, 37.951527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104479, 0.734247, -0.670795,
		0.287165, 0.623484, 0.727189,
		0.952166, -0.268605, -0.145709,
		39.710575, 36.871181, 37.907814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469086, 37.671410, 38.146118>,  <39.044060, 37.059204, 38.009811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469086, 37.671410, 38.146118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.684135, 37.432220, 37.908333>,  <39.813168, 37.288708, 37.765663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.684135, 37.432220, 37.908333>,  <39.469086, 37.671410, 38.146118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684135, 37.432220, 37.908333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128945, 0.755036, -0.642879,
		0.833264, 0.268977, 0.483034,
		0.537628, -0.597973, -0.594462,
		39.845425, 37.252831, 37.729996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048195, 38.023354, 38.130146>,  <39.469086, 37.671410, 38.146118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048195, 38.023354, 38.130146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.069420, 37.782780, 37.811283>,  <40.082157, 37.638435, 37.619965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.069420, 37.782780, 37.811283>,  <40.048195, 38.023354, 38.130146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069420, 37.782780, 37.811283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313751, 0.767897, -0.558475,
		0.948021, -0.220472, 0.229452,
		0.053067, -0.601437, -0.797156,
		40.085339, 37.602348, 37.572136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663731, 38.283497, 37.759151>,  <40.048195, 38.023354, 38.130146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663731, 38.283497, 37.759151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474804, 38.064865, 37.482552>,  <40.361446, 37.933685, 37.316593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474804, 38.064865, 37.482552>,  <40.663731, 38.283497, 37.759151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474804, 38.064865, 37.482552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017606, 0.790213, -0.612579,
		0.881251, -0.277159, -0.382858,
		-0.472321, -0.546577, -0.691496,
		40.333107, 37.900890, 37.275105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086052, 38.470509, 37.144165>,  <40.663731, 38.283497, 37.759151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086052, 38.470509, 37.144165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738914, 38.310467, 37.026344>,  <40.530632, 38.214443, 36.955650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.738914, 38.310467, 37.026344>,  <41.086052, 38.470509, 37.144165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738914, 38.310467, 37.026344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092481, 0.712590, -0.695458,
		0.488151, -0.576310, -0.655421,
		-0.867846, -0.400102, -0.294553,
		40.478561, 38.190437, 36.937977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139397, 38.207321, 36.459583>,  <41.086052, 38.470509, 37.144165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139397, 38.207321, 36.459583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746765, 38.282150, 36.475147>,  <40.511189, 38.327049, 36.484486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.746765, 38.282150, 36.475147>,  <41.139397, 38.207321, 36.459583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746765, 38.282150, 36.475147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080221, 0.588262, -0.804681,
		-0.173423, -0.786734, -0.592431,
		-0.981575, 0.187076, 0.038906,
		40.452293, 38.338272, 36.486820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998127, 38.101482, 35.846302>,  <41.139397, 38.207321, 36.459583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998127, 38.101482, 35.846302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.699856, 38.333679, 35.977139>,  <40.520893, 38.472996, 36.055641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.699856, 38.333679, 35.977139>,  <40.998127, 38.101482, 35.846302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699856, 38.333679, 35.977139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083073, 0.406077, -0.910055,
		-0.661104, -0.705783, -0.254581,
		-0.745681, 0.580492, 0.327090,
		40.476151, 38.507828, 36.075264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470737, 38.125290, 35.342510>,  <40.998127, 38.101482, 35.846302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470737, 38.125290, 35.342510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378704, 38.452324, 35.553650>,  <40.323486, 38.648544, 35.680332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.378704, 38.452324, 35.553650>,  <40.470737, 38.125290, 35.342510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378704, 38.452324, 35.553650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046134, 0.550950, -0.833262,
		-0.972078, -0.167366, -0.164481,
		-0.230080, 0.817584, 0.527845,
		40.309681, 38.697598, 35.712002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063072, 38.488018, 34.898415>,  <40.470737, 38.125290, 35.342510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063072, 38.488018, 34.898415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.155861, 38.774651, 35.161533>,  <40.211536, 38.946629, 35.319405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.155861, 38.774651, 35.161533>,  <40.063072, 38.488018, 34.898415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155861, 38.774651, 35.161533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018876, 0.679437, -0.733491,
		-0.972539, 0.157735, 0.171138,
		0.231974, 0.716579, 0.657801,
		40.225452, 38.989624, 35.358875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679756, 38.999126, 34.685673>,  <40.063072, 38.488018, 34.898415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679756, 38.999126, 34.685673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937000, 39.191868, 34.923740>,  <40.091347, 39.307514, 35.066582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.937000, 39.191868, 34.923740>,  <39.679756, 38.999126, 34.685673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937000, 39.191868, 34.923740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157461, 0.843814, -0.513014,
		-0.749413, 0.236206, 0.618536,
		0.643107, 0.481854, 0.595172,
		40.129932, 39.336426, 35.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352612, 39.714466, 34.782677>,  <39.679756, 38.999126, 34.685673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352612, 39.714466, 34.782677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748436, 39.707764, 34.839939>,  <39.985931, 39.703743, 34.874298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.748436, 39.707764, 34.839939>,  <39.352612, 39.714466, 34.782677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.748436, 39.707764, 34.839939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118369, 0.661188, -0.740823,
		-0.082242, 0.750033, 0.656267,
		0.989558, -0.016755, 0.143158,
		40.045303, 39.702736, 34.882885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.575222, 40.371208, 34.900570>,  <39.352612, 39.714466, 34.782677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.575222, 40.371208, 34.900570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856266, 40.135880, 34.740459>,  <40.024891, 39.994682, 34.644394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856266, 40.135880, 34.740459>,  <39.575222, 40.371208, 34.900570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856266, 40.135880, 34.740459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049583, 0.601628, -0.797236,
		0.709849, 0.540296, 0.451879,
		0.702606, -0.588323, -0.400276,
		40.067047, 39.959381, 34.620377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059052, 40.786438, 34.771332>,  <39.575222, 40.371208, 34.900570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059052, 40.786438, 34.771332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697296, 40.934387, 34.686230>,  <38.480244, 41.023159, 34.635170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697296, 40.934387, 34.686230>,  <39.059052, 40.786438, 34.771332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697296, 40.934387, 34.686230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412637, -0.631153, 0.656792,
		0.108651, 0.681789, 0.723435,
		-0.904392, 0.369877, -0.212756,
		38.425980, 41.045349, 34.622402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650311, 40.768806, 35.322208>,  <39.059052, 40.786438, 34.771332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650311, 40.768806, 35.322208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348717, 40.793388, 35.060604>,  <38.167759, 40.808136, 34.903641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348717, 40.793388, 35.060604>,  <38.650311, 40.768806, 35.322208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348717, 40.793388, 35.060604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508900, -0.684189, 0.522404,
		-0.415363, 0.726711, 0.547142,
		-0.753985, 0.061453, -0.654011,
		38.122520, 40.811825, 34.864403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103859, 40.829479, 35.824295>,  <38.650311, 40.768806, 35.322208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103859, 40.829479, 35.824295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976677, 40.689453, 35.471851>,  <37.900368, 40.605438, 35.260384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.976677, 40.689453, 35.471851>,  <38.103859, 40.829479, 35.824295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976677, 40.689453, 35.471851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592159, -0.652462, 0.472907,
		-0.740440, 0.672122, 0.000160,
		-0.317956, -0.350065, -0.881112,
		37.881290, 40.584435, 35.207520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474876, 40.690586, 36.060032>,  <38.103859, 40.829479, 35.824295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474876, 40.690586, 36.060032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544052, 40.481628, 35.726040>,  <37.585556, 40.356255, 35.525642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.544052, 40.481628, 35.726040>,  <37.474876, 40.690586, 36.060032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544052, 40.481628, 35.726040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477751, -0.785839, 0.392697,
		-0.861305, 0.331003, -0.385475,
		0.172937, -0.522393, -0.834984,
		37.595932, 40.324909, 35.475544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782761, 40.391548, 35.779800>,  <37.474876, 40.690586, 36.060032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782761, 40.391548, 35.779800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071522, 40.188526, 35.591652>,  <37.244778, 40.066715, 35.478764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.071522, 40.188526, 35.591652>,  <36.782761, 40.391548, 35.779800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071522, 40.188526, 35.591652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472915, -0.858085, 0.200105,
		-0.505179, 0.077988, -0.859483,
		0.721904, -0.507551, -0.470369,
		37.288094, 40.036263, 35.450542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449425, 39.910606, 35.286381>,  <36.782761, 40.391548, 35.779800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449425, 39.910606, 35.286381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818413, 39.775269, 35.360752>,  <37.039806, 39.694065, 35.405376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818413, 39.775269, 35.360752>,  <36.449425, 39.910606, 35.286381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818413, 39.775269, 35.360752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361753, -0.925742, 0.110161,
		0.134850, -0.168881, -0.976368,
		0.922470, -0.338349, 0.185930,
		37.095154, 39.673763, 35.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387871, 39.212997, 35.102402>,  <36.449425, 39.910606, 35.286381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387871, 39.212997, 35.102402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729736, 39.215187, 35.310062>,  <36.934856, 39.216499, 35.434658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729736, 39.215187, 35.310062>,  <36.387871, 39.212997, 35.102402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729736, 39.215187, 35.310062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188748, -0.928246, 0.320520,
		0.483652, -0.371926, -0.792308,
		0.854667, 0.005473, 0.519149,
		36.986137, 39.216827, 35.465805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700684, 38.576393, 35.007889>,  <36.387871, 39.212997, 35.102402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700684, 38.576393, 35.007889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.849018, 38.720951, 35.350086>,  <36.938019, 38.807686, 35.555405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.849018, 38.720951, 35.350086>,  <36.700684, 38.576393, 35.007889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849018, 38.720951, 35.350086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093383, -0.901999, 0.421519,
		0.923992, -0.236204, -0.300745,
		0.370836, 0.361395, 0.855496,
		36.960270, 38.829369, 35.606735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203300, 38.111774, 35.194275>,  <36.700684, 38.576393, 35.007889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203300, 38.111774, 35.194275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.119228, 38.297913, 35.538200>,  <37.068787, 38.409595, 35.744556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.119228, 38.297913, 35.538200>,  <37.203300, 38.111774, 35.194275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119228, 38.297913, 35.538200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193841, -0.881834, 0.429877,
		0.958255, -0.076318, 0.275543,
		-0.210176, 0.465343, 0.859815,
		37.056175, 38.437515, 35.796146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468014, 37.685966, 35.666233>,  <37.203300, 38.111774, 35.194275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468014, 37.685966, 35.666233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222080, 37.926205, 35.870689>,  <37.074520, 38.070347, 35.993362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222080, 37.926205, 35.870689>,  <37.468014, 37.685966, 35.666233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222080, 37.926205, 35.870689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310188, -0.780037, 0.543439,
		0.725096, 0.175575, 0.665891,
		-0.614834, 0.600596, 0.511140,
		37.037632, 38.106384, 36.024033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528728, 37.534416, 36.322056>,  <37.468014, 37.685966, 35.666233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528728, 37.534416, 36.322056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163635, 37.697201, 36.307632>,  <36.944580, 37.794872, 36.298977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163635, 37.697201, 36.307632>,  <37.528728, 37.534416, 36.322056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163635, 37.697201, 36.307632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354115, -0.743998, 0.566630,
		0.203768, 0.529952, 0.823183,
		-0.912733, 0.406963, -0.036060,
		36.889816, 37.819290, 36.296814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191261, 37.636036, 37.059063>,  <37.528728, 37.534416, 36.322056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191261, 37.636036, 37.059063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912296, 37.591831, 36.775826>,  <36.744919, 37.565308, 36.605881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.912296, 37.591831, 36.775826>,  <37.191261, 37.636036, 37.059063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912296, 37.591831, 36.775826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336085, -0.822225, 0.459339,
		-0.632978, 0.558330, 0.536289,
		-0.697413, -0.110512, -0.708097,
		36.703072, 37.558678, 36.563396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.231636, 43.384094, 32.248081> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896351, 43.268894, 32.062847>,  <39.695179, 43.199772, 31.951706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896351, 43.268894, 32.062847>,  <40.231636, 43.384094, 32.248081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896351, 43.268894, 32.062847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407876, -0.232564, 0.882922,
		-0.361983, 0.928960, 0.077469,
		-0.838216, -0.288005, -0.463085,
		39.644886, 43.182491, 31.923922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820805, 43.712315, 32.638264>,  <40.231636, 43.384094, 32.248081>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820805, 43.712315, 32.638264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613724, 43.434978, 32.437763>,  <39.489475, 43.268578, 32.317463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613724, 43.434978, 32.437763>,  <39.820805, 43.712315, 32.638264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613724, 43.434978, 32.437763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428518, -0.296959, 0.853339,
		-0.740510, 0.656573, -0.143373,
		-0.517704, -0.693344, -0.501255,
		39.458412, 43.226974, 32.287388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026424, 43.828808, 32.712868>,  <39.820805, 43.712315, 32.638264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026424, 43.828808, 32.712868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109985, 43.446625, 32.629486>,  <39.160122, 43.217316, 32.579456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109985, 43.446625, 32.629486>,  <39.026424, 43.828808, 32.712868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109985, 43.446625, 32.629486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482191, -0.286078, 0.828041,
		-0.850795, -0.072465, -0.520477,
		0.208901, -0.955462, -0.208452,
		39.172657, 43.159985, 32.566952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385750, 43.363876, 33.005604>,  <39.026424, 43.828808, 32.712868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385750, 43.363876, 33.005604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673557, 43.093109, 32.943542>,  <38.846241, 42.930649, 32.906307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673557, 43.093109, 32.943542>,  <38.385750, 43.363876, 33.005604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673557, 43.093109, 32.943542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411083, -0.595208, 0.690463,
		-0.559732, -0.433024, -0.706534,
		0.719522, -0.676918, -0.155148,
		38.889412, 42.890034, 32.896999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081619, 42.640274, 33.029327>,  <38.385750, 43.363876, 33.005604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081619, 42.640274, 33.029327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469879, 42.574669, 33.099682>,  <38.702835, 42.535305, 33.141895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469879, 42.574669, 33.099682>,  <38.081619, 42.640274, 33.029327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469879, 42.574669, 33.099682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240136, -0.621224, 0.745932,
		-0.013080, -0.766276, -0.642378,
		0.970651, -0.164014, 0.175885,
		38.761074, 42.525463, 33.152447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089893, 41.952042, 32.960514>,  <38.081619, 42.640274, 33.029327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089893, 41.952042, 32.960514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401157, 42.070393, 33.182114>,  <38.587917, 42.141403, 33.315075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401157, 42.070393, 33.182114>,  <38.089893, 41.952042, 32.960514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401157, 42.070393, 33.182114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217650, -0.700389, 0.679767,
		0.589143, -0.649549, -0.480621,
		0.778164, 0.295873, 0.554003,
		38.634605, 42.159153, 33.348316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462460, 41.388458, 32.969547>,  <38.089893, 41.952042, 32.960514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462460, 41.388458, 32.969547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542610, 41.613911, 33.290089>,  <38.590702, 41.749180, 33.482414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542610, 41.613911, 33.290089>,  <38.462460, 41.388458, 32.969547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542610, 41.613911, 33.290089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222471, -0.770401, 0.597486,
		0.954126, -0.298001, -0.028980,
		0.200377, 0.563629, 0.801356,
		38.602722, 41.783001, 33.530495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920452, 41.041786, 33.440773>,  <38.462460, 41.388458, 32.969547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920452, 41.041786, 33.440773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736385, 41.304317, 33.679932>,  <38.625946, 41.461838, 33.823425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736385, 41.304317, 33.679932>,  <38.920452, 41.041786, 33.440773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736385, 41.304317, 33.679932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181266, -0.728700, 0.660408,
		0.869133, 0.195517, 0.454292,
		-0.460163, 0.656330, 0.597897,
		38.598335, 41.501217, 33.859303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240273, 41.033421, 34.092796>,  <38.920452, 41.041786, 33.440773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240273, 41.033421, 34.092796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881832, 41.187469, 34.181057>,  <38.666767, 41.279900, 34.234013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881832, 41.187469, 34.181057>,  <39.240273, 41.033421, 34.092796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881832, 41.187469, 34.181057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144195, -0.722752, 0.675897,
		0.419782, 0.573853, 0.703190,
		-0.896097, 0.385126, 0.220652,
		38.613003, 41.303009, 34.247253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933464, 40.845612, 34.505329>,  <39.240273, 41.033421, 34.092796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933464, 40.845612, 34.505329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083000, 40.495163, 34.383575>,  <40.172722, 40.284893, 34.310524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083000, 40.495163, 34.383575>,  <39.933464, 40.845612, 34.505329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083000, 40.495163, 34.383575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295054, 0.423469, -0.856515,
		0.879310, 0.230392, 0.416814,
		0.373842, -0.876124, -0.304382,
		40.195152, 40.232327, 34.292259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587299, 41.009575, 34.182140>,  <39.933464, 40.845612, 34.505329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587299, 41.009575, 34.182140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471527, 40.652832, 34.043106>,  <40.402065, 40.438786, 33.959686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471527, 40.652832, 34.043106>,  <40.587299, 41.009575, 34.182140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471527, 40.652832, 34.043106> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398421, 0.217931, -0.890936,
		0.870340, -0.396348, 0.292260,
		-0.289428, -0.891860, -0.347588,
		40.384697, 40.385273, 33.938831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178783, 40.735107, 33.820026>,  <40.587299, 41.009575, 34.182140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178783, 40.735107, 33.820026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845001, 40.574688, 33.668842>,  <40.644733, 40.478436, 33.578133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845001, 40.574688, 33.668842>,  <41.178783, 40.735107, 33.820026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845001, 40.574688, 33.668842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333794, 0.177891, -0.925709,
		0.438487, -0.898620, -0.014575,
		-0.834453, -0.401046, -0.377957,
		40.594666, 40.454376, 33.555454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431114, 40.189800, 33.441185>,  <41.178783, 40.735107, 33.820026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431114, 40.189800, 33.441185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061813, 40.240601, 33.296146>,  <40.840233, 40.271080, 33.209126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061813, 40.240601, 33.296146>,  <41.431114, 40.189800, 33.441185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061813, 40.240601, 33.296146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307303, -0.322316, -0.895364,
		-0.230577, -0.938075, 0.258553,
		-0.923255, 0.126996, -0.362592,
		40.784836, 40.278702, 33.187370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524582, 39.730984, 32.959427>,  <41.431114, 40.189800, 33.441185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524582, 39.730984, 32.959427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220394, 39.974213, 32.868267>,  <41.037884, 40.120152, 32.813572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220394, 39.974213, 32.868267>,  <41.524582, 39.730984, 32.959427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220394, 39.974213, 32.868267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255684, -0.042217, -0.965838,
		-0.596924, -0.792755, -0.123371,
		-0.760465, 0.608076, -0.227896,
		40.992256, 40.156635, 32.799900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188202, 39.352325, 32.427673>,  <41.524582, 39.730984, 32.959427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188202, 39.352325, 32.427673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084862, 39.738144, 32.406120>,  <41.022858, 39.969635, 32.393188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084862, 39.738144, 32.406120>,  <41.188202, 39.352325, 32.427673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.084862, 39.738144, 32.406120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194012, -0.002833, -0.980995,
		-0.946370, -0.263892, -0.186402,
		-0.258349, 0.964548, -0.053879,
		41.007359, 40.027508, 32.389957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714603, 39.385643, 31.859270>,  <41.188202, 39.352325, 32.427673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714603, 39.385643, 31.859270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814499, 39.771324, 31.894934>,  <40.874435, 40.002731, 31.916332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814499, 39.771324, 31.894934>,  <40.714603, 39.385643, 31.859270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814499, 39.771324, 31.894934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206257, 0.036993, -0.977798,
		-0.946090, 0.262588, -0.189634,
		0.249743, 0.964199, 0.089159,
		40.889423, 40.060585, 31.921680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577457, 39.710308, 31.249514>,  <40.714603, 39.385643, 31.859270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577457, 39.710308, 31.249514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829697, 39.981213, 31.401127>,  <40.981041, 40.143757, 31.492094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829697, 39.981213, 31.401127>,  <40.577457, 39.710308, 31.249514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829697, 39.981213, 31.401127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538536, -0.030165, -0.842062,
		-0.558865, 0.735121, -0.383753,
		0.630594, 0.677264, 0.379031,
		41.018875, 40.184391, 31.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.641994, 40.232788, 30.737873>,  <40.577457, 39.710308, 31.249514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.641994, 40.232788, 30.737873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969353, 40.287617, 30.961100>,  <41.165768, 40.320515, 31.095036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969353, 40.287617, 30.961100>,  <40.641994, 40.232788, 30.737873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969353, 40.287617, 30.961100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569035, -0.057802, -0.820279,
		-0.080183, 0.988873, -0.125306,
		0.818395, 0.137076, 0.558068,
		41.214870, 40.328739, 31.128521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959000, 40.652084, 30.416414>,  <40.641994, 40.232788, 30.737873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959000, 40.652084, 30.416414> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249794, 40.508816, 30.650751>,  <41.424271, 40.422855, 30.791353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249794, 40.508816, 30.650751>,  <40.959000, 40.652084, 30.416414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249794, 40.508816, 30.650751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660485, 0.131450, -0.739244,
		0.187765, 0.924357, 0.332127,
		0.726983, -0.358169, 0.585842,
		41.467888, 40.401363, 30.826504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416191, 41.167316, 30.483912>,  <40.959000, 40.652084, 30.416414>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416191, 41.167316, 30.483912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636860, 40.841702, 30.556580>,  <41.769260, 40.646332, 30.600182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636860, 40.841702, 30.556580>,  <41.416191, 41.167316, 30.483912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636860, 40.841702, 30.556580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610921, 0.246091, -0.752472,
		0.567830, 0.526106, 0.633073,
		0.551674, -0.814034, 0.181672,
		41.802361, 40.597492, 30.611082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153034, 41.397732, 30.378716>,  <41.416191, 41.167316, 30.483912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153034, 41.397732, 30.378716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139980, 40.999695, 30.341339>,  <42.132149, 40.760872, 30.318914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139980, 40.999695, 30.341339>,  <42.153034, 41.397732, 30.378716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139980, 40.999695, 30.341339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703107, 0.043589, -0.709747,
		0.710335, -0.088857, 0.698232,
		-0.032630, -0.995090, -0.093439,
		42.130192, 40.701168, 30.313307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845600, 41.221584, 30.389742>,  <42.153034, 41.397732, 30.378716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845600, 41.221584, 30.389742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652534, 40.921120, 30.209616>,  <42.536694, 40.740841, 30.101540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652534, 40.921120, 30.209616>,  <42.845600, 41.221584, 30.389742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.652534, 40.921120, 30.209616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694805, -0.015399, -0.719033,
		0.533177, -0.659936, 0.529346,
		-0.482667, -0.751164, -0.450316,
		42.507736, 40.695770, 30.074520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392212, 40.653011, 30.273314>,  <42.845600, 41.221584, 30.389742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392212, 40.653011, 30.273314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087860, 40.572803, 30.026463>,  <42.905247, 40.524677, 29.878351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087860, 40.572803, 30.026463>,  <43.392212, 40.653011, 30.273314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087860, 40.572803, 30.026463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627899, 0.012419, -0.778196,
		0.163709, -0.979611, 0.116458,
		-0.760883, -0.200522, -0.617129,
		42.859596, 40.512646, 29.841324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.034348, 38.165787, 26.868418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289524, 38.415310, 27.049034>,  <37.442631, 38.565025, 27.157404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.289524, 38.415310, 27.049034>,  <37.034348, 38.165787, 26.868418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289524, 38.415310, 27.049034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227532, -0.407489, 0.884411,
		0.735700, -0.666946, -0.118020,
		0.637946, 0.623808, 0.451541,
		37.480907, 38.602451, 27.184496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468681, 37.772598, 27.320034>,  <37.034348, 38.165787, 26.868418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468681, 37.772598, 27.320034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.469784, 38.146355, 27.462526>,  <37.470448, 38.370609, 27.548021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.469784, 38.146355, 27.462526>,  <37.468681, 37.772598, 27.320034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469784, 38.146355, 27.462526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381211, -0.328351, 0.864213,
		0.924484, -0.138184, 0.355295,
		0.002759, 0.934393, 0.356232,
		37.470612, 38.426674, 27.569395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684170, 37.645576, 27.957283>,  <37.468681, 37.772598, 27.320034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684170, 37.645576, 27.957283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565338, 38.027157, 27.973881>,  <37.494038, 38.256104, 27.983839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565338, 38.027157, 27.973881>,  <37.684170, 37.645576, 27.957283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565338, 38.027157, 27.973881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344804, -0.147702, 0.926981,
		0.890423, 0.261080, 0.372805,
		-0.297081, 0.953951, 0.041496,
		37.476215, 38.313343, 27.986330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964878, 37.912975, 28.586445>,  <37.684170, 37.645576, 27.957283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964878, 37.912975, 28.586445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664040, 38.144157, 28.459747>,  <37.483536, 38.282867, 28.383728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.664040, 38.144157, 28.459747>,  <37.964878, 37.912975, 28.586445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664040, 38.144157, 28.459747> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411055, -0.035686, 0.910912,
		0.515159, 0.815291, 0.264409,
		-0.752094, 0.577951, -0.316745,
		37.438412, 38.317543, 28.364723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992252, 38.445919, 29.136745>,  <37.964878, 37.912975, 28.586445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992252, 38.445919, 29.136745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635979, 38.417931, 28.957066>,  <37.422215, 38.401138, 28.849257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.635979, 38.417931, 28.957066>,  <37.992252, 38.445919, 29.136745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635979, 38.417931, 28.957066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444791, -0.070204, 0.892879,
		-0.094013, 0.995075, 0.031406,
		-0.890687, -0.069973, -0.449201,
		37.368774, 38.396938, 28.822306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570168, 38.743122, 29.599302>,  <37.992252, 38.445919, 29.136745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570168, 38.743122, 29.599302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324013, 38.502621, 29.395420>,  <37.176319, 38.358322, 29.273090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.324013, 38.502621, 29.395420>,  <37.570168, 38.743122, 29.599302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324013, 38.502621, 29.395420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362060, -0.358775, 0.860345,
		-0.700152, 0.713987, 0.003096,
		-0.615385, -0.601251, -0.509703,
		37.139397, 38.322247, 29.242510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960484, 38.797745, 29.974281>,  <37.570168, 38.743122, 29.599302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960484, 38.797745, 29.974281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929504, 38.463497, 29.756752>,  <36.910915, 38.262947, 29.626234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.929504, 38.463497, 29.756752>,  <36.960484, 38.797745, 29.974281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929504, 38.463497, 29.756752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515337, -0.433391, 0.739324,
		-0.853481, 0.337513, -0.397059,
		-0.077450, -0.835618, -0.543824,
		36.906269, 38.212811, 29.593605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374947, 38.566357, 30.139273>,  <36.960484, 38.797745, 29.974281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374947, 38.566357, 30.139273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524010, 38.232677, 29.976675>,  <36.613445, 38.032471, 29.879116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.524010, 38.232677, 29.976675>,  <36.374947, 38.566357, 30.139273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524010, 38.232677, 29.976675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369507, -0.535215, 0.759612,
		-0.851230, -0.132871, -0.507693,
		0.372655, -0.834201, -0.406494,
		36.635807, 37.982418, 29.854727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853394, 38.087841, 30.143456>,  <36.374947, 38.566357, 30.139273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853394, 38.087841, 30.143456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183491, 37.863083, 30.120634>,  <36.381550, 37.728230, 30.106941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183491, 37.863083, 30.120634>,  <35.853394, 38.087841, 30.143456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183491, 37.863083, 30.120634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398420, -0.650781, 0.646333,
		-0.400298, -0.510649, -0.760920,
		0.825241, -0.561892, -0.057054,
		36.431065, 37.694515, 30.103518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631577, 37.363392, 30.067644>,  <35.853394, 38.087841, 30.143456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631577, 37.363392, 30.067644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010067, 37.360863, 30.197018>,  <36.237164, 37.359344, 30.274641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.010067, 37.360863, 30.197018>,  <35.631577, 37.363392, 30.067644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010067, 37.360863, 30.197018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233976, -0.703812, 0.670749,
		0.223391, -0.710358, -0.667448,
		0.946230, -0.006328, 0.323432,
		36.293938, 37.358963, 30.294046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763828, 36.662296, 30.049200>,  <35.631577, 37.363392, 30.067644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763828, 36.662296, 30.049200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028023, 36.842319, 30.289600>,  <36.186539, 36.950333, 30.433842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.028023, 36.842319, 30.289600>,  <35.763828, 36.662296, 30.049200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028023, 36.842319, 30.289600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030867, -0.783491, 0.620636,
		0.750202, -0.428474, -0.503594,
		0.660488, 0.450058, 0.601002,
		36.226170, 36.977337, 30.469900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133572, 36.080170, 30.250067>,  <35.763828, 36.662296, 30.049200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133572, 36.080170, 30.250067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.226883, 36.360851, 30.519346>,  <36.282871, 36.529259, 30.680914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.226883, 36.360851, 30.519346>,  <36.133572, 36.080170, 30.250067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226883, 36.360851, 30.519346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195971, -0.644170, 0.739352,
		0.952457, -0.304404, -0.012760,
		0.233281, 0.701700, 0.673198,
		36.296867, 36.571362, 30.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477375, 35.769501, 30.736929>,  <36.133572, 36.080170, 30.250067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477375, 35.769501, 30.736929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344254, 36.099731, 30.919209>,  <36.264381, 36.297871, 31.028576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.344254, 36.099731, 30.919209>,  <36.477375, 35.769501, 30.736929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344254, 36.099731, 30.919209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325768, -0.554148, 0.766026,
		0.884940, 0.106482, 0.453368,
		-0.332801, 0.825580, 0.455699,
		36.244411, 36.347404, 31.055918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615692, 35.698582, 31.446394>,  <36.477375, 35.769501, 30.736929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615692, 35.698582, 31.446394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323246, 35.971439, 31.441374>,  <36.147778, 36.135155, 31.438362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.323246, 35.971439, 31.441374>,  <36.615692, 35.698582, 31.446394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323246, 35.971439, 31.441374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435790, -0.452761, 0.777878,
		0.524939, 0.574187, 0.628290,
		-0.731113, 0.682141, -0.012553,
		36.103912, 36.176083, 31.437609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349842, 35.809799, 31.375303>,  <36.615692, 35.698582, 31.446394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349842, 35.809799, 31.375303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613712, 35.549217, 31.525198>,  <37.772034, 35.392868, 31.615135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613712, 35.549217, 31.525198>,  <37.349842, 35.809799, 31.375303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613712, 35.549217, 31.525198> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634930, 0.216316, -0.741668,
		0.402102, 0.727196, 0.556328,
		0.659680, -0.651455, 0.374738,
		37.811615, 35.353779, 31.637619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930115, 36.161045, 31.402342>,  <37.349842, 35.809799, 31.375303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930115, 36.161045, 31.402342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066326, 35.785011, 31.408985>,  <38.148052, 35.559391, 31.412971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.066326, 35.785011, 31.408985>,  <37.930115, 36.161045, 31.402342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066326, 35.785011, 31.408985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530600, 0.177557, -0.828817,
		0.776210, 0.291051, 0.559274,
		0.340531, -0.940087, 0.016610,
		38.168484, 35.502987, 31.413969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684643, 36.186157, 31.417767>,  <37.930115, 36.161045, 31.402342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684643, 36.186157, 31.417767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567291, 35.840958, 31.253252>,  <38.496880, 35.633839, 31.154543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.567291, 35.840958, 31.253252>,  <38.684643, 36.186157, 31.417767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567291, 35.840958, 31.253252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441490, 0.259290, -0.858985,
		0.847949, -0.433585, 0.304937,
		-0.293376, -0.863002, -0.411288,
		38.479279, 35.582058, 31.129866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232319, 35.934086, 30.988808>,  <38.684643, 36.186157, 31.417767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232319, 35.934086, 30.988808> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930653, 35.718613, 30.838577>,  <38.749653, 35.589329, 30.748440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.930653, 35.718613, 30.838577>,  <39.232319, 35.934086, 30.988808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930653, 35.718613, 30.838577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380154, 0.108218, -0.918571,
		0.535464, -0.835529, 0.123169,
		-0.754163, -0.538685, -0.375576,
		38.704403, 35.557007, 30.725904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595451, 35.447971, 30.558208>,  <39.232319, 35.934086, 30.988808>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595451, 35.447971, 30.558208> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213112, 35.481903, 30.445665>,  <38.983707, 35.502262, 30.378139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213112, 35.481903, 30.445665>,  <39.595451, 35.447971, 30.558208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213112, 35.481903, 30.445665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293839, 0.263280, -0.918881,
		-0.003870, -0.960983, -0.276580,
		-0.955847, 0.084826, -0.281355,
		38.926357, 35.507351, 30.361259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555344, 35.045887, 30.019993>,  <39.595451, 35.447971, 30.558208>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555344, 35.045887, 30.019993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242847, 35.286446, 29.953077>,  <39.055351, 35.430782, 29.912928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.242847, 35.286446, 29.953077>,  <39.555344, 35.045887, 30.019993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242847, 35.286446, 29.953077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291842, 0.114985, -0.949530,
		-0.551807, -0.790634, -0.265344,
		-0.781241, 0.601396, -0.167290,
		39.008476, 35.466866, 29.902891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229870, 34.893002, 29.276558>,  <39.555344, 35.045887, 30.019993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229870, 34.893002, 29.276558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114513, 35.264137, 29.371170>,  <39.045300, 35.486816, 29.427938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.114513, 35.264137, 29.371170>,  <39.229870, 34.893002, 29.276558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114513, 35.264137, 29.371170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148197, 0.287303, -0.946306,
		-0.945974, -0.237855, -0.220359,
		-0.288394, 0.927837, 0.236532,
		39.027996, 35.542488, 29.442129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841942, 35.197559, 28.679750>,  <39.229870, 34.893002, 29.276558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841942, 35.197559, 28.679750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923874, 35.543476, 28.863136>,  <38.973034, 35.751026, 28.973167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.923874, 35.543476, 28.863136>,  <38.841942, 35.197559, 28.679750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923874, 35.543476, 28.863136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229599, 0.412876, -0.881373,
		-0.951489, 0.285792, -0.113986,
		0.204827, 0.864787, 0.458464,
		38.985321, 35.802914, 29.000675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642181, 35.821102, 28.207895>,  <38.841942, 35.197559, 28.679750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642181, 35.821102, 28.207895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925201, 35.959763, 28.454216>,  <39.095013, 36.042957, 28.602009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.925201, 35.959763, 28.454216>,  <38.642181, 35.821102, 28.207895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925201, 35.959763, 28.454216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350273, 0.584797, -0.731656,
		-0.613749, 0.733379, 0.292348,
		0.707546, 0.346652, 0.615801,
		39.137466, 36.063759, 28.638956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434875, 36.638271, 28.229828>,  <38.642181, 35.821102, 28.207895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434875, 36.638271, 28.229828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809978, 36.584419, 28.357878>,  <39.035042, 36.552109, 28.434708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809978, 36.584419, 28.357878>,  <38.434875, 36.638271, 28.229828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809978, 36.584419, 28.357878> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302755, 0.768519, -0.563665,
		-0.170133, 0.625502, 0.761447,
		0.937760, -0.134634, 0.320125,
		39.091305, 36.544029, 28.453915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619419, 37.314667, 28.230370>,  <38.434875, 36.638271, 28.229828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619419, 37.314667, 28.230370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945992, 37.083694, 28.232014>,  <39.141933, 36.945110, 28.233000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945992, 37.083694, 28.232014>,  <38.619419, 37.314667, 28.230370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945992, 37.083694, 28.232014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430236, 0.603524, -0.671309,
		0.385155, 0.549844, 0.741166,
		0.816427, -0.577434, 0.004113,
		39.190918, 36.910465, 28.233248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194302, 37.706902, 28.405128>,  <38.619419, 37.314667, 28.230370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194302, 37.706902, 28.405128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365166, 37.385418, 28.239439>,  <39.467686, 37.192528, 28.140026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365166, 37.385418, 28.239439>,  <39.194302, 37.706902, 28.405128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365166, 37.385418, 28.239439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446284, 0.585841, -0.676476,
		0.786360, 0.104105, 0.608934,
		0.427163, -0.803711, -0.414222,
		39.493313, 37.144306, 28.115173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902832, 37.755928, 28.397589>,  <39.194302, 37.706902, 28.405128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902832, 37.755928, 28.397589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814014, 37.515213, 28.090721>,  <39.760723, 37.370785, 27.906601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.814014, 37.515213, 28.090721>,  <39.902832, 37.755928, 28.397589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814014, 37.515213, 28.090721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414959, 0.653676, -0.632864,
		0.882330, -0.458867, 0.104574,
		-0.222043, -0.601789, -0.767168,
		39.747402, 37.334675, 27.860571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452259, 37.902901, 27.964087>,  <39.902832, 37.755928, 28.397589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452259, 37.902901, 27.964087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.219139, 37.683979, 27.723820>,  <40.079269, 37.552624, 27.579660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.219139, 37.683979, 27.723820>,  <40.452259, 37.902901, 27.964087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219139, 37.683979, 27.723820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336237, 0.510518, -0.791401,
		0.739792, -0.663194, -0.113503,
		-0.582798, -0.547308, -0.600667,
		40.044300, 37.519787, 27.543619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125629, 37.618366, 28.227333>,  <40.452259, 37.902901, 27.964087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125629, 37.618366, 28.227333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.510719, 37.703800, 28.293716>,  <41.741772, 37.755062, 28.333546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.510719, 37.703800, 28.293716>,  <41.125629, 37.618366, 28.227333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510719, 37.703800, 28.293716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111434, -0.245875, 0.962875,
		0.246462, -0.945477, -0.212909,
		0.962725, 0.213587, 0.165958,
		41.799538, 37.767876, 28.343504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.226212, 37.113499, 28.682684>,  <41.125629, 37.618366, 28.227333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.226212, 37.113499, 28.682684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534935, 37.360626, 28.742825>,  <41.720169, 37.508904, 28.778908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.534935, 37.360626, 28.742825>,  <41.226212, 37.113499, 28.682684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534935, 37.360626, 28.742825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089584, -0.128441, 0.987663,
		0.629509, -0.775758, -0.043785,
		0.771811, 0.617820, 0.150351,
		41.766479, 37.545971, 28.787930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784470, 36.750355, 29.069399>,  <41.226212, 37.113499, 28.682684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784470, 36.750355, 29.069399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.789555, 37.144585, 29.136908>,  <41.792606, 37.381123, 29.177414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.789555, 37.144585, 29.136908>,  <41.784470, 36.750355, 29.069399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789555, 37.144585, 29.136908> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035757, -0.169127, 0.984945,
		0.999280, -0.006485, -0.037391,
		0.012711, 0.985573, 0.168773,
		41.793369, 37.440258, 29.187540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357117, 36.778709, 29.406023>,  <41.784470, 36.750355, 29.069399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357117, 36.778709, 29.406023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150467, 37.112343, 29.483387>,  <42.026478, 37.312523, 29.529806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.150467, 37.112343, 29.483387>,  <42.357117, 36.778709, 29.406023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.150467, 37.112343, 29.483387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183548, -0.112753, 0.976523,
		0.836306, 0.539997, -0.094843,
		-0.516626, 0.834080, 0.193411,
		41.995480, 37.362568, 29.541410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699009, 37.251740, 29.905922>,  <42.357117, 36.778709, 29.406023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699009, 37.251740, 29.905922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317940, 37.368397, 29.940220>,  <42.089298, 37.438393, 29.960798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.317940, 37.368397, 29.940220>,  <42.699009, 37.251740, 29.905922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317940, 37.368397, 29.940220> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047833, -0.134735, 0.989726,
		0.300204, 0.946989, 0.114409,
		-0.952675, 0.291647, 0.085746,
		42.032139, 37.455891, 29.965944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597359, 37.645615, 30.642496>,  <42.699009, 37.251740, 29.905922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597359, 37.645615, 30.642496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.231419, 37.532444, 30.527256>,  <42.011856, 37.464542, 30.458113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.231419, 37.532444, 30.527256>,  <42.597359, 37.645615, 30.642496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231419, 37.532444, 30.527256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261448, -0.128685, 0.956601,
		-0.307723, 0.950469, 0.043756,
		-0.914850, -0.282928, -0.288098,
		41.956963, 37.447567, 30.440826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067726, 38.003963, 31.076836>,  <42.597359, 37.645615, 30.642496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067726, 38.003963, 31.076836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.873005, 37.696404, 30.911028>,  <41.756172, 37.511868, 30.811544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.873005, 37.696404, 30.911028>,  <42.067726, 38.003963, 31.076836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.873005, 37.696404, 30.911028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393796, -0.230409, 0.889852,
		-0.779712, 0.596415, -0.190625,
		-0.486799, -0.768896, -0.414518,
		41.726967, 37.465736, 30.786673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261890, 37.992332, 31.229614>,  <42.067726, 38.003963, 31.076836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261890, 37.992332, 31.229614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355564, 37.619106, 31.120405>,  <41.411766, 37.395168, 31.054880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.355564, 37.619106, 31.120405>,  <41.261890, 37.992332, 31.229614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355564, 37.619106, 31.120405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300908, -0.336607, 0.892273,
		-0.924453, -0.126798, -0.359595,
		0.234181, -0.933069, -0.273023,
		41.425819, 37.339184, 31.038498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713131, 37.600121, 31.502455>,  <41.261890, 37.992332, 31.229614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713131, 37.600121, 31.502455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969234, 37.299026, 31.441196>,  <41.122898, 37.118370, 31.404442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969234, 37.299026, 31.441196>,  <40.713131, 37.600121, 31.502455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969234, 37.299026, 31.441196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396459, -0.494574, 0.773445,
		-0.657944, -0.434488, -0.615085,
		0.640258, -0.752739, -0.153146,
		41.161312, 37.073204, 31.395252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337051, 36.903736, 31.440153>,  <40.713131, 37.600121, 31.502455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337051, 36.903736, 31.440153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714207, 36.818478, 31.542557>,  <40.940498, 36.767323, 31.603998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.714207, 36.818478, 31.542557>,  <40.337051, 36.903736, 31.440153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714207, 36.818478, 31.542557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332692, -0.563503, 0.756161,
		-0.016907, -0.798145, -0.602228,
		0.942884, -0.213141, 0.256010,
		40.997070, 36.754536, 31.619360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322796, 36.266609, 31.576712>,  <40.337051, 36.903736, 31.440153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322796, 36.266609, 31.576712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663307, 36.350811, 31.768969>,  <40.867615, 36.401333, 31.884323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.663307, 36.350811, 31.768969>,  <40.322796, 36.266609, 31.576712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663307, 36.350811, 31.768969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215816, -0.694473, 0.686390,
		0.478284, -0.688037, -0.545757,
		0.851274, 0.210506, 0.480644,
		40.918690, 36.413963, 31.913162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676422, 35.548401, 31.734215>,  <40.322796, 36.266609, 31.576712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676422, 35.548401, 31.734215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.809185, 35.832596, 31.982422>,  <40.888844, 36.003113, 32.131348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.809185, 35.832596, 31.982422>,  <40.676422, 35.548401, 31.734215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809185, 35.832596, 31.982422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115579, -0.622222, 0.774262,
		0.936204, -0.328703, -0.124403,
		0.331908, 0.710489, 0.620518,
		40.908756, 36.045742, 32.168579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034065, 35.188938, 32.188744>,  <40.676422, 35.548401, 31.734215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034065, 35.188938, 32.188744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.915398, 35.541542, 32.335670>,  <40.844196, 35.753105, 32.423824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.915398, 35.541542, 32.335670>,  <41.034065, 35.188938, 32.188744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915398, 35.541542, 32.335670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419106, -0.465793, 0.779350,
		0.858100, 0.077270, 0.507636,
		-0.296674, 0.881513, 0.367313,
		40.826397, 35.805996, 32.445866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230610, 35.104259, 32.856888>,  <41.034065, 35.188938, 32.188744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230610, 35.104259, 32.856888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.977654, 35.412376, 32.889702>,  <40.825878, 35.597248, 32.909389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.977654, 35.412376, 32.889702>,  <41.230610, 35.104259, 32.856888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.977654, 35.412376, 32.889702> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393797, -0.410867, 0.822260,
		0.667089, 0.487683, 0.563168,
		-0.632390, 0.770294, 0.082036,
		40.787937, 35.643463, 32.914314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.686653, 40.058826, 29.625378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334610, 40.197247, 29.495352>,  <43.123386, 40.280296, 29.417336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.334610, 40.197247, 29.495352>,  <43.686653, 40.058826, 29.625378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334610, 40.197247, 29.495352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402378, 0.180235, -0.897556,
		-0.252010, -0.920742, -0.297868,
		-0.880104, 0.346048, -0.325065,
		43.070580, 40.301060, 29.397833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619247, 39.756905, 29.014677>,  <43.686653, 40.058826, 29.625378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619247, 39.756905, 29.014677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387897, 40.081799, 28.984329>,  <43.249088, 40.276733, 28.966122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.387897, 40.081799, 28.984329>,  <43.619247, 39.756905, 29.014677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.387897, 40.081799, 28.984329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520233, 0.295608, -0.801233,
		-0.628361, -0.502884, -0.593524,
		-0.578377, 0.812234, -0.075868,
		43.214386, 40.325470, 28.961569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369301, 39.841236, 28.353350>,  <43.619247, 39.756905, 29.014677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369301, 39.841236, 28.353350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341820, 40.212456, 28.499775>,  <43.325329, 40.435188, 28.587629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.341820, 40.212456, 28.499775>,  <43.369301, 39.841236, 28.353350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341820, 40.212456, 28.499775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568554, 0.337935, -0.750031,
		-0.819772, 0.156596, -0.550864,
		-0.068704, 0.928050, 0.366063,
		43.321209, 40.490871, 28.609594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.178932, 40.272648, 27.786165>,  <43.369301, 39.841236, 28.353350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.178932, 40.272648, 27.786165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354095, 40.518196, 28.048887>,  <43.459194, 40.665527, 28.206520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.354095, 40.518196, 28.048887>,  <43.178932, 40.272648, 27.786165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.354095, 40.518196, 28.048887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389965, 0.528568, -0.754018,
		-0.810038, 0.586324, -0.007924,
		0.437910, 0.613873, 0.656806,
		43.485470, 40.702358, 28.245930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960327, 40.927765, 27.583691>,  <43.178932, 40.272648, 27.786165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960327, 40.927765, 27.583691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259033, 41.055958, 27.816805>,  <43.438255, 41.132874, 27.956673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.259033, 41.055958, 27.816805>,  <42.960327, 40.927765, 27.583691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259033, 41.055958, 27.816805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266648, 0.658479, -0.703778,
		-0.609300, 0.680953, 0.406271,
		0.746761, 0.320481, 0.582786,
		43.483063, 41.152103, 27.991640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063713, 41.642178, 27.566664>,  <42.960327, 40.927765, 27.583691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063713, 41.642178, 27.566664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.431648, 41.525909, 27.672045>,  <43.652409, 41.456150, 27.735273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.431648, 41.525909, 27.672045>,  <43.063713, 41.642178, 27.566664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.431648, 41.525909, 27.672045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381023, 0.502145, -0.776319,
		0.093358, 0.814471, 0.572644,
		0.919840, -0.290666, 0.263453,
		43.707600, 41.438709, 27.751081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473625, 42.197395, 27.599541>,  <43.063713, 41.642178, 27.566664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473625, 42.197395, 27.599541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.757515, 41.916012, 27.584375>,  <43.927849, 41.747181, 27.575277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.757515, 41.916012, 27.584375>,  <43.473625, 42.197395, 27.599541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.757515, 41.916012, 27.584375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515802, 0.555541, -0.652168,
		0.479837, 0.443303, 0.757126,
		0.709722, -0.703461, -0.037912,
		43.970432, 41.704975, 27.573002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.118782, 42.593346, 27.582275>,  <43.473625, 42.197395, 27.599541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.118782, 42.593346, 27.582275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234436, 42.230293, 27.460545>,  <44.303829, 42.012463, 27.387506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.234436, 42.230293, 27.460545>,  <44.118782, 42.593346, 27.582275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.234436, 42.230293, 27.460545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656016, 0.419379, -0.627506,
		0.697170, -0.018211, 0.716674,
		0.289131, -0.907628, -0.304326,
		44.321175, 41.958004, 27.369247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780365, 42.642239, 27.492908>,  <44.118782, 42.593346, 27.582275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780365, 42.642239, 27.492908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.669075, 42.328564, 27.271049>,  <44.602299, 42.140358, 27.137934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.669075, 42.328564, 27.271049>,  <44.780365, 42.642239, 27.492908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.669075, 42.328564, 27.271049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391780, 0.434576, -0.810957,
		0.876982, -0.442930, 0.186320,
		-0.278227, -0.784191, -0.554647,
		44.585606, 42.093307, 27.104656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.325100, 42.501144, 27.171297>,  <44.780365, 42.642239, 27.492908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.325100, 42.501144, 27.171297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.031406, 42.353409, 26.943441>,  <44.855190, 42.264767, 26.806728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.031406, 42.353409, 26.943441>,  <45.325100, 42.501144, 27.171297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031406, 42.353409, 26.943441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422047, 0.408908, -0.809117,
		0.531768, -0.834496, -0.144357,
		-0.734234, -0.369337, -0.569641,
		44.811134, 42.242607, 26.772549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.708004, 42.307125, 26.643513>,  <45.325100, 42.501144, 27.171297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.708004, 42.307125, 26.643513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.329727, 42.329693, 26.515465>,  <45.102760, 42.343231, 26.438635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.329727, 42.329693, 26.515465>,  <45.708004, 42.307125, 26.643513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329727, 42.329693, 26.515465> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293952, 0.568817, -0.768140,
		0.138755, -0.820527, -0.554511,
		-0.945695, 0.056416, -0.320122,
		45.046021, 42.346619, 26.419428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690361, 42.102570, 25.952360>,  <45.708004, 42.307125, 26.643513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690361, 42.102570, 25.952360> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.400295, 42.370644, 26.015587>,  <45.226254, 42.531487, 26.053522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.400295, 42.370644, 26.015587>,  <45.690361, 42.102570, 25.952360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400295, 42.370644, 26.015587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263275, 0.481978, -0.835693,
		-0.636254, -0.564402, -0.525958,
		-0.725167, 0.670185, 0.158068,
		45.182747, 42.571697, 26.063007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128994, 42.105843, 25.441992>,  <45.690361, 42.102570, 25.952360>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128994, 42.105843, 25.441992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224186, 42.459671, 25.602444>,  <45.281300, 42.671967, 25.698715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.224186, 42.459671, 25.602444>,  <45.128994, 42.105843, 25.441992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224186, 42.459671, 25.602444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585848, 0.198679, -0.785690,
		-0.774693, 0.421977, -0.470942,
		0.237977, 0.884569, 0.401129,
		45.295578, 42.725040, 25.722782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225239, 41.807388, 24.901855>,  <45.128994, 42.105843, 25.441992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225239, 41.807388, 24.901855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.938244, 41.708584, 24.641333>,  <44.766048, 41.649300, 24.485020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.938244, 41.708584, 24.641333>,  <45.225239, 41.807388, 24.901855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.938244, 41.708584, 24.641333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329442, -0.703501, 0.629725,
		-0.613747, 0.666386, 0.423374,
		-0.717484, -0.247014, -0.651307,
		44.723000, 41.634480, 24.445940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.651470, 41.509830, 25.356825>,  <45.225239, 41.807388, 24.901855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.651470, 41.509830, 25.356825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.601830, 41.290184, 25.026234>,  <44.572044, 41.158394, 24.827879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.601830, 41.290184, 25.026234>,  <44.651470, 41.509830, 25.356825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601830, 41.290184, 25.026234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383773, -0.741538, 0.550309,
		-0.915051, 0.385472, -0.118715,
		-0.124097, -0.549121, -0.826478,
		44.564602, 41.125446, 24.778290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.956478, 41.260159, 25.387272>,  <44.651470, 41.509830, 25.356825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.956478, 41.260159, 25.387272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.134399, 41.020222, 25.121239>,  <44.241154, 40.876259, 24.961618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.134399, 41.020222, 25.121239>,  <43.956478, 41.260159, 25.387272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.134399, 41.020222, 25.121239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535236, -0.773430, 0.339600,
		-0.718100, 0.204918, -0.665087,
		0.444808, -0.599845, -0.665080,
		44.267841, 40.840267, 24.921715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443779, 40.957661, 24.968439>,  <43.956478, 41.260159, 25.387272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443779, 40.957661, 24.968439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.756966, 40.709709, 24.989265>,  <43.944878, 40.560936, 25.001760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.756966, 40.709709, 24.989265>,  <43.443779, 40.957661, 24.968439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756966, 40.709709, 24.989265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544102, -0.641868, 0.540331,
		-0.301521, -0.451391, -0.839840,
		0.782967, -0.619880, 0.052066,
		43.991856, 40.523746, 25.004885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155151, 40.259911, 24.932093>,  <43.443779, 40.957661, 24.968439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155151, 40.259911, 24.932093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.516079, 40.193039, 25.091022>,  <43.732635, 40.152916, 25.186380>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.516079, 40.193039, 25.091022>,  <43.155151, 40.259911, 24.932093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516079, 40.193039, 25.091022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349849, -0.822504, 0.448434,
		0.251835, -0.543636, -0.800649,
		0.902322, -0.167175, 0.397326,
		43.786774, 40.142887, 25.210220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282154, 39.557682, 24.785042>,  <43.155151, 40.259911, 24.932093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282154, 39.557682, 24.785042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.539478, 39.644226, 25.078802>,  <43.693874, 39.696152, 25.255058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.539478, 39.644226, 25.078802>,  <43.282154, 39.557682, 24.785042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539478, 39.644226, 25.078802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364222, -0.757249, 0.542140,
		0.673421, -0.616248, -0.408342,
		0.643309, 0.216361, 0.734398,
		43.732471, 39.709133, 25.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.301807, 38.920906, 25.085201>,  <43.282154, 39.557682, 24.785042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.301807, 38.920906, 25.085201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.489773, 39.167542, 25.337868>,  <43.602551, 39.315521, 25.489468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.489773, 39.167542, 25.337868>,  <43.301807, 38.920906, 25.085201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489773, 39.167542, 25.337868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035055, -0.701996, 0.711318,
		0.882017, -0.356399, -0.308261,
		0.469911, 0.616588, 0.631666,
		43.630745, 39.352516, 25.527369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.890385, 38.523438, 25.346878>,  <43.301807, 38.920906, 25.085201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.890385, 38.523438, 25.346878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.795464, 38.808502, 25.610937>,  <43.738510, 38.979542, 25.769373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.795464, 38.808502, 25.610937>,  <43.890385, 38.523438, 25.346878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795464, 38.808502, 25.610937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319530, -0.699008, 0.639756,
		0.917381, -0.059120, 0.393596,
		-0.237305, 0.712666, 0.660147,
		43.724274, 39.022301, 25.808981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151608, 38.343235, 26.017471>,  <43.890385, 38.523438, 25.346878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151608, 38.343235, 26.017471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.844044, 38.590466, 26.082897>,  <43.659504, 38.738804, 26.122152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.844044, 38.590466, 26.082897>,  <44.151608, 38.343235, 26.017471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.844044, 38.590466, 26.082897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361554, -0.631344, 0.686064,
		0.527308, 0.468385, 0.708916,
		-0.768912, 0.618078, 0.163566,
		43.613369, 38.775890, 26.131968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030567, 38.365009, 26.716072>,  <44.151608, 38.343235, 26.017471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030567, 38.365009, 26.716072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.678204, 38.505280, 26.588938>,  <43.466785, 38.589443, 26.512657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.678204, 38.505280, 26.588938>,  <44.030567, 38.365009, 26.716072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678204, 38.505280, 26.588938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460636, -0.481066, 0.745916,
		0.108677, 0.803493, 0.585311,
		-0.880911, 0.350679, -0.317837,
		43.413929, 38.610481, 26.493587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677387, 38.645519, 27.290976>,  <44.030567, 38.365009, 26.716072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677387, 38.645519, 27.290976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376049, 38.583530, 27.035336>,  <43.195244, 38.546337, 26.881950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.376049, 38.583530, 27.035336>,  <43.677387, 38.645519, 27.290976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376049, 38.583530, 27.035336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585937, -0.283049, 0.759316,
		-0.298572, 0.946502, 0.122429,
		-0.753347, -0.154975, -0.639101,
		43.150043, 38.537037, 26.843605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092770, 38.939144, 27.612663>,  <43.677387, 38.645519, 27.290976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092770, 38.939144, 27.612663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961971, 38.655731, 27.362528>,  <42.883492, 38.485683, 27.212446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.961971, 38.655731, 27.362528>,  <43.092770, 38.939144, 27.612663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.961971, 38.655731, 27.362528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564332, -0.384375, 0.730606,
		-0.758026, 0.591805, -0.274161,
		-0.326996, -0.708536, -0.625340,
		42.863873, 38.443169, 27.174927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424267, 39.050842, 27.650366>,  <43.092770, 38.939144, 27.612663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424267, 39.050842, 27.650366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.482594, 38.682518, 27.505674>,  <42.517590, 38.461525, 27.418859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.482594, 38.682518, 27.505674>,  <42.424267, 39.050842, 27.650366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482594, 38.682518, 27.505674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438638, -0.387907, 0.810632,
		-0.886755, 0.040463, -0.460466,
		0.145817, -0.920810, -0.361727,
		42.526340, 38.406277, 27.397156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800037, 38.727692, 27.693727>,  <42.424267, 39.050842, 27.650366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800037, 38.727692, 27.693727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062523, 38.426041, 27.704189>,  <42.220013, 38.245052, 27.710466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.062523, 38.426041, 27.704189>,  <41.800037, 38.727692, 27.693727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062523, 38.426041, 27.704189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540610, -0.445675, 0.713523,
		-0.526428, -0.482361, -0.700144,
		0.656212, -0.754123, 0.026153,
		42.259388, 38.199802, 27.712036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340237, 38.079300, 27.706507>,  <41.800037, 38.727692, 27.693727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340237, 38.079300, 27.706507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706490, 38.004925, 27.849083>,  <41.926239, 37.960300, 27.934629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.706490, 38.004925, 27.849083>,  <41.340237, 38.079300, 27.706507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706490, 38.004925, 27.849083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401335, -0.474611, 0.783374,
		0.023516, -0.860333, -0.509189,
		0.915629, -0.185933, 0.356443,
		41.981178, 37.949146, 27.956017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852848, 37.468361, 27.474104>,  <41.340237, 38.079300, 27.706507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852848, 37.468361, 27.474104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503788, 37.498520, 27.281111>,  <40.294350, 37.516617, 27.165314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.503788, 37.498520, 27.281111>,  <40.852848, 37.468361, 27.474104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503788, 37.498520, 27.281111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488045, 0.169065, -0.856288,
		0.017007, -0.982716, -0.184334,
		-0.872653, 0.075400, -0.482485,
		40.241993, 37.521141, 27.136366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972973, 37.342834, 26.814968>,  <40.852848, 37.468361, 27.474104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972973, 37.342834, 26.814968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608597, 37.500797, 26.767231>,  <40.389973, 37.595573, 26.738588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.608597, 37.500797, 26.767231>,  <40.972973, 37.342834, 26.814968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608597, 37.500797, 26.767231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317963, 0.487752, -0.813017,
		-0.262857, -0.778553, -0.569878,
		-0.910937, 0.394908, -0.119342,
		40.335316, 37.619270, 26.731428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807968, 37.263168, 26.041786>,  <40.972973, 37.342834, 26.814968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807968, 37.263168, 26.041786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556942, 37.537701, 26.188810>,  <40.406326, 37.702419, 26.277025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.556942, 37.537701, 26.188810>,  <40.807968, 37.263168, 26.041786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556942, 37.537701, 26.188810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083569, 0.528757, -0.844649,
		-0.774063, -0.499359, -0.389188,
		-0.627569, 0.686336, 0.367560,
		40.368671, 37.743603, 26.299078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424519, 37.473385, 25.455755>,  <40.807968, 37.263168, 26.041786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424519, 37.473385, 25.455755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.362103, 37.769852, 25.716928>,  <40.324654, 37.947731, 25.873632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.362103, 37.769852, 25.716928>,  <40.424519, 37.473385, 25.455755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362103, 37.769852, 25.716928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223331, 0.670385, -0.707606,
		-0.962171, 0.035402, -0.270135,
		-0.156044, 0.741168, 0.652932,
		40.315289, 37.992203, 25.912807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098713, 38.047729, 24.984989>,  <40.424519, 37.473385, 25.455755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098713, 38.047729, 24.984989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219238, 38.203678, 25.333061>,  <40.291553, 38.297245, 25.541904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.219238, 38.203678, 25.333061>,  <40.098713, 38.047729, 24.984989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219238, 38.203678, 25.333061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380009, 0.787891, -0.484583,
		-0.874531, 0.476687, 0.089247,
		0.301312, 0.389868, 0.870180,
		40.309631, 38.320637, 25.594116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849586, 38.786732, 25.012201>,  <40.098713, 38.047729, 24.984989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849586, 38.786732, 25.012201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146095, 38.794102, 25.280581>,  <40.324001, 38.798523, 25.441608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146095, 38.794102, 25.280581>,  <39.849586, 38.786732, 25.012201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146095, 38.794102, 25.280581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265646, 0.909946, -0.318482,
		-0.616394, 0.414317, 0.669626,
		0.741276, 0.018427, 0.670947,
		40.368477, 38.799629, 25.481865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761978, 39.385242, 25.341019>,  <39.849586, 38.786732, 25.012201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761978, 39.385242, 25.341019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.142128, 39.261929, 25.357775>,  <40.370216, 39.187939, 25.367828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.142128, 39.261929, 25.357775>,  <39.761978, 39.385242, 25.341019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142128, 39.261929, 25.357775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304584, 0.894487, -0.327293,
		0.063432, 0.323808, 0.943994,
		0.950371, -0.308287, 0.041888,
		40.427238, 39.169441, 25.370340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540642, 40.187996, 25.606571>,  <39.761978, 39.385242, 25.341019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540642, 40.187996, 25.606571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169827, 40.286594, 25.493546>,  <38.947338, 40.345753, 25.425730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.169827, 40.286594, 25.493546>,  <39.540642, 40.187996, 25.606571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169827, 40.286594, 25.493546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366943, -0.441304, 0.818904,
		0.077157, 0.862840, 0.499554,
		-0.927038, 0.246492, -0.282563,
		38.891716, 40.360542, 25.408777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288166, 40.408272, 26.284397>,  <39.540642, 40.187996, 25.606571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288166, 40.408272, 26.284397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986408, 40.310722, 26.040623>,  <38.805351, 40.252193, 25.894358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986408, 40.310722, 26.040623>,  <39.288166, 40.408272, 26.284397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986408, 40.310722, 26.040623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451488, -0.481165, 0.751425,
		-0.476490, 0.842025, 0.252885,
		-0.754398, -0.243872, -0.609434,
		38.760090, 40.237560, 25.857792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802311, 40.342285, 26.747368>,  <39.288166, 40.408272, 26.284397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802311, 40.342285, 26.747368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632645, 40.183064, 26.422005>,  <38.530846, 40.087528, 26.226788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632645, 40.183064, 26.422005>,  <38.802311, 40.342285, 26.747368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632645, 40.183064, 26.422005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596874, -0.552615, 0.581686,
		-0.681045, 0.732234, -0.003188,
		-0.424169, -0.398058, -0.813407,
		38.505394, 40.063644, 26.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073338, 40.331413, 26.917974>,  <38.802311, 40.342285, 26.747368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073338, 40.331413, 26.917974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151791, 40.069260, 26.626219>,  <38.198864, 39.911968, 26.451166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.151791, 40.069260, 26.626219>,  <38.073338, 40.331413, 26.917974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151791, 40.069260, 26.626219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666128, -0.634907, 0.391365,
		-0.719587, 0.409106, -0.561094,
		0.196133, -0.655382, -0.729388,
		38.210632, 39.872646, 26.407402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438866, 40.074234, 26.539230>,  <38.073338, 40.331413, 26.917974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438866, 40.074234, 26.539230> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689522, 39.767380, 26.484344>,  <37.839916, 39.583267, 26.451414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.689522, 39.767380, 26.484344>,  <37.438866, 40.074234, 26.539230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689522, 39.767380, 26.484344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671097, -0.620706, 0.405405,
		-0.396168, -0.161960, -0.903781,
		0.626641, -0.767133, -0.137213,
		37.877514, 39.537239, 26.443180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062584, 39.503567, 26.364723>,  <37.438866, 40.074234, 26.539230>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062584, 39.503567, 26.364723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410065, 39.343548, 26.481562>,  <37.618553, 39.247536, 26.551664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410065, 39.343548, 26.481562>,  <37.062584, 39.503567, 26.364723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410065, 39.343548, 26.481562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490623, -0.613747, 0.618550,
		-0.068175, -0.680644, -0.729435,
		0.868701, -0.400048, 0.292098,
		37.670673, 39.223534, 26.569191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879204, 38.877396, 26.561951>,  <37.062584, 39.503567, 26.364723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879204, 38.877396, 26.561951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244831, 38.888527, 26.723791>,  <37.464207, 38.895206, 26.820894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244831, 38.888527, 26.723791>,  <36.879204, 38.877396, 26.561951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244831, 38.888527, 26.723791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301591, -0.620353, 0.724020,
		0.271143, -0.783829, -0.558653,
		0.914070, 0.027828, 0.404600,
		37.519051, 38.896873, 26.845171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.108982, 44.267216, 25.468225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.343239, 43.981537, 25.621559>,  <42.483791, 43.810127, 25.713560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.343239, 43.981537, 25.621559>,  <42.108982, 44.267216, 25.468225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343239, 43.981537, 25.621559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689886, -0.190902, 0.698294,
		-0.425543, -0.673403, -0.604517,
		0.585637, -0.714202, 0.383334,
		42.518929, 43.767277, 25.736559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706936, 43.548622, 25.467520>,  <42.108982, 44.267216, 25.468225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706936, 43.548622, 25.467520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979465, 43.530270, 25.759739>,  <42.142982, 43.519257, 25.935070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979465, 43.530270, 25.759739>,  <41.706936, 43.548622, 25.467520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979465, 43.530270, 25.759739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731368, -0.001680, 0.681982,
		-0.030066, -0.998945, -0.034704,
		0.681321, -0.045886, 0.730546,
		42.183861, 43.516506, 25.978903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446102, 43.071793, 26.026524>,  <41.706936, 43.548622, 25.467520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446102, 43.071793, 26.026524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.729301, 43.273178, 26.224619>,  <41.899223, 43.394009, 26.343475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.729301, 43.273178, 26.224619>,  <41.446102, 43.071793, 26.026524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729301, 43.273178, 26.224619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565120, -0.016656, 0.824841,
		0.423526, -0.863856, 0.272724,
		0.708001, 0.503464, 0.495237,
		41.941700, 43.424217, 26.373190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491619, 42.729012, 26.748003>,  <41.446102, 43.071793, 26.026524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491619, 42.729012, 26.748003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680172, 43.079239, 26.790304>,  <41.793304, 43.289375, 26.815685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.680172, 43.079239, 26.790304>,  <41.491619, 42.729012, 26.748003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680172, 43.079239, 26.790304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250523, 0.017967, 0.967944,
		0.845597, -0.482768, 0.227819,
		0.471385, 0.875564, 0.105752,
		41.821587, 43.341908, 26.822029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882809, 42.677582, 27.346251>,  <41.491619, 42.729012, 26.748003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882809, 42.677582, 27.346251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.795551, 43.060669, 27.271208>,  <41.743195, 43.290520, 27.226181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.795551, 43.060669, 27.271208>,  <41.882809, 42.677582, 27.346251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795551, 43.060669, 27.271208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230100, 0.136344, 0.963569,
		0.948402, 0.253367, 0.190627,
		-0.218146, 0.957714, -0.187609,
		41.730106, 43.347984, 27.214926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191914, 42.933784, 27.929859>,  <41.882809, 42.677582, 27.346251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191914, 42.933784, 27.929859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922245, 43.179504, 27.765848>,  <41.760445, 43.326939, 27.667442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.922245, 43.179504, 27.765848>,  <42.191914, 42.933784, 27.929859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922245, 43.179504, 27.765848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309526, 0.269059, 0.912031,
		0.670585, 0.741781, 0.008751,
		-0.674173, 0.614303, -0.410027,
		41.719994, 43.363796, 27.642839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135643, 43.496700, 28.382597>,  <42.191914, 42.933784, 27.929859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135643, 43.496700, 28.382597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785110, 43.532253, 28.193224>,  <41.574791, 43.553585, 28.079599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.785110, 43.532253, 28.193224>,  <42.135643, 43.496700, 28.382597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785110, 43.532253, 28.193224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473646, 0.020039, 0.880487,
		0.087744, 0.995841, 0.024537,
		-0.876334, 0.088879, -0.473434,
		41.522209, 43.558918, 28.051193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854313, 44.093792, 28.548237>,  <42.135643, 43.496700, 28.382597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854313, 44.093792, 28.548237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561852, 43.842339, 28.442236>,  <41.386375, 43.691467, 28.378635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561852, 43.842339, 28.442236>,  <41.854313, 44.093792, 28.548237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561852, 43.842339, 28.442236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425422, 0.116472, 0.897469,
		-0.533315, 0.768929, -0.352595,
		-0.731157, -0.628636, -0.265003,
		41.342503, 43.653748, 28.362736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208443, 44.463036, 28.791815>,  <41.854313, 44.093792, 28.548237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208443, 44.463036, 28.791815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.067905, 44.097980, 28.708241>,  <40.983582, 43.878948, 28.658096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.067905, 44.097980, 28.708241>,  <41.208443, 44.463036, 28.791815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067905, 44.097980, 28.708241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495632, -0.008021, 0.868495,
		-0.794295, 0.408697, -0.449513,
		-0.351346, -0.912635, -0.208935,
		40.962502, 43.824188, 28.645559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437817, 44.526562, 28.848080>,  <41.208443, 44.463036, 28.791815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437817, 44.526562, 28.848080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527298, 44.137436, 28.872032>,  <40.580986, 43.903961, 28.886404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.527298, 44.137436, 28.872032>,  <40.437817, 44.526562, 28.848080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527298, 44.137436, 28.872032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670604, -0.109043, 0.733757,
		-0.707281, -0.204301, -0.676768,
		0.223704, -0.972816, 0.059881,
		40.594410, 43.845592, 28.889996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705486, 44.153938, 28.862837>,  <40.437817, 44.526562, 28.848080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705486, 44.153938, 28.862837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970497, 43.893681, 29.011286>,  <40.129501, 43.737526, 29.100355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.970497, 43.893681, 29.011286>,  <39.705486, 44.153938, 28.862837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970497, 43.893681, 29.011286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565364, -0.109357, 0.817560,
		-0.491353, -0.751471, -0.440300,
		0.662522, -0.650640, 0.371122,
		40.169254, 43.698490, 29.122622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353813, 43.534573, 29.044640>,  <39.705486, 44.153938, 28.862837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353813, 43.534573, 29.044640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.689106, 43.522430, 29.262426>,  <39.890282, 43.515144, 29.393099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.689106, 43.522430, 29.262426>,  <39.353813, 43.534573, 29.044640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689106, 43.522430, 29.262426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516146, -0.366333, 0.774205,
		0.175955, -0.929988, -0.322741,
		0.838232, -0.030357, 0.544468,
		39.940575, 43.513325, 29.425766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793411, 43.233124, 28.664452>,  <39.353813, 43.534573, 29.044640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793411, 43.233124, 28.664452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460331, 43.446056, 28.603485>,  <38.260483, 43.573814, 28.566906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.460331, 43.446056, 28.603485>,  <38.793411, 43.233124, 28.664452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460331, 43.446056, 28.603485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346800, 0.286798, -0.893016,
		-0.431668, -0.796473, -0.423430,
		-0.832702, 0.532332, -0.152415,
		38.210522, 43.605755, 28.557760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491528, 43.049427, 27.922798>,  <38.793411, 43.233124, 28.664452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491528, 43.049427, 27.922798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.353535, 43.411449, 28.022287>,  <38.270741, 43.628662, 28.081980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.353535, 43.411449, 28.022287>,  <38.491528, 43.049427, 27.922798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353535, 43.411449, 28.022287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259428, 0.346609, -0.901421,
		-0.902045, -0.246448, -0.354370,
		-0.344981, 0.905056, 0.248722,
		38.250042, 43.682964, 28.096905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033390, 43.234028, 27.416248>,  <38.491528, 43.049427, 27.922798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033390, 43.234028, 27.416248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.165737, 43.566277, 27.595398>,  <38.245144, 43.765625, 27.702887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.165737, 43.566277, 27.595398>,  <38.033390, 43.234028, 27.416248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165737, 43.566277, 27.595398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310636, 0.352287, -0.882836,
		-0.891086, 0.431224, -0.141463,
		0.330864, 0.830626, 0.447872,
		38.264996, 43.815464, 27.729759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682808, 43.831203, 27.140152>,  <38.033390, 43.234028, 27.416248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682808, 43.831203, 27.140152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030468, 43.965569, 27.285337>,  <38.239063, 44.046188, 27.372448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.030468, 43.965569, 27.285337>,  <37.682808, 43.831203, 27.140152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030468, 43.965569, 27.285337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173220, 0.480664, -0.859626,
		-0.463219, 0.810017, 0.359583,
		0.869150, 0.335908, 0.362964,
		38.291214, 44.066341, 27.394226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722801, 44.478054, 26.858511>,  <37.682808, 43.831203, 27.140152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722801, 44.478054, 26.858511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102268, 44.416866, 26.969234>,  <38.329948, 44.380154, 27.035667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.102268, 44.416866, 26.969234>,  <37.722801, 44.478054, 26.858511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102268, 44.416866, 26.969234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316222, 0.444680, -0.838012,
		0.005102, 0.882530, 0.470228,
		0.948671, -0.152972, 0.276807,
		38.386871, 44.370975, 27.052277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061905, 45.052723, 26.612553>,  <37.722801, 44.478054, 26.858511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061905, 45.052723, 26.612553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378498, 44.814293, 26.666597>,  <38.568455, 44.671234, 26.699024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.378498, 44.814293, 26.666597>,  <38.061905, 45.052723, 26.612553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.378498, 44.814293, 26.666597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448127, 0.415625, -0.791478,
		0.415625, 0.686986, 0.596076,
		0.791478, -0.596076, 0.135113,
		38.615940, 44.635471, 26.707130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635021, 45.375088, 26.342272>,  <38.061905, 45.052723, 26.612553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635021, 45.375088, 26.342272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773991, 45.000305, 26.357275>,  <38.857372, 44.775436, 26.366276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.773991, 45.000305, 26.357275>,  <38.635021, 45.375088, 26.342272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773991, 45.000305, 26.357275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520288, 0.159335, -0.838995,
		0.780128, 0.310998, 0.542845,
		0.347420, -0.936959, 0.037507,
		38.878216, 44.719219, 26.368526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373264, 45.448074, 26.184391>,  <38.635021, 45.375088, 26.342272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373264, 45.448074, 26.184391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281837, 45.060707, 26.144535>,  <39.226982, 44.828285, 26.120621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.281837, 45.060707, 26.144535>,  <39.373264, 45.448074, 26.184391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281837, 45.060707, 26.144535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590500, -0.056536, -0.805055,
		0.773996, -0.242843, 0.584772,
		-0.228563, -0.968417, -0.099640,
		39.213268, 44.770184, 26.114643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080280, 45.041752, 26.057310>,  <39.373264, 45.448074, 26.184391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080280, 45.041752, 26.057310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767006, 44.846893, 25.902748>,  <39.579041, 44.729977, 25.810011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.767006, 44.846893, 25.902748>,  <40.080280, 45.041752, 26.057310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767006, 44.846893, 25.902748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530420, -0.199154, -0.824010,
		0.324461, -0.850309, 0.414367,
		-0.783186, -0.487148, -0.386404,
		39.532051, 44.700748, 25.786827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375519, 44.672867, 25.550196>,  <40.080280, 45.041752, 26.057310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375519, 44.672867, 25.550196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989521, 44.649719, 25.447876>,  <39.757923, 44.635830, 25.386484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.989521, 44.649719, 25.447876>,  <40.375519, 44.672867, 25.550196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989521, 44.649719, 25.447876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258489, -0.045026, -0.964964,
		0.044329, -0.997308, 0.058409,
		-0.964997, -0.057874, -0.255797,
		39.700024, 44.632359, 25.371138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403320, 44.237968, 25.008518>,  <40.375519, 44.672867, 25.550196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403320, 44.237968, 25.008518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041130, 44.406178, 24.985613>,  <39.823818, 44.507103, 24.971869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.041130, 44.406178, 24.985613>,  <40.403320, 44.237968, 25.008518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041130, 44.406178, 24.985613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065999, 0.006235, -0.997800,
		-0.419240, -0.907261, -0.033400,
		-0.905473, 0.420522, -0.057265,
		39.769489, 44.532333, 24.968433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938019, 43.790565, 24.547817>,  <40.403320, 44.237968, 25.008518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938019, 43.790565, 24.547817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821091, 44.171474, 24.582991>,  <39.750935, 44.400021, 24.604094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.821091, 44.171474, 24.582991>,  <39.938019, 43.790565, 24.547817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821091, 44.171474, 24.582991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086421, 0.117877, -0.989261,
		-0.952407, -0.281584, -0.116754,
		-0.292323, 0.952268, 0.087932,
		39.733395, 44.457153, 24.609371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415043, 43.866684, 24.053017>,  <39.938019, 43.790565, 24.547817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415043, 43.866684, 24.053017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572201, 44.225788, 24.132671>,  <39.666496, 44.441250, 24.180464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.572201, 44.225788, 24.132671>,  <39.415043, 43.866684, 24.053017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572201, 44.225788, 24.132671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155033, 0.148783, -0.976642,
		-0.906421, 0.414590, -0.080727,
		0.392895, 0.897763, 0.199135,
		39.690071, 44.495117, 24.192411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706398, 43.211029, 24.175938>,  <39.415043, 43.866684, 24.053017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706398, 43.211029, 24.175938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659966, 43.043617, 23.815636>,  <39.632107, 42.943169, 23.599455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.659966, 43.043617, 23.815636>,  <39.706398, 43.211029, 24.175938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659966, 43.043617, 23.815636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625218, -0.673881, 0.393685,
		-0.771770, 0.608867, -0.183447,
		-0.116080, -0.418529, -0.900755,
		39.625141, 42.918060, 23.545410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881824, 43.068752, 24.003763>,  <39.706398, 43.211029, 24.175938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881824, 43.068752, 24.003763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122253, 42.816502, 23.807388>,  <39.266510, 42.665150, 23.689564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.122253, 42.816502, 23.807388>,  <38.881824, 43.068752, 24.003763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122253, 42.816502, 23.807388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431193, -0.773106, 0.465165,
		-0.672893, -0.067910, -0.736616,
		0.601072, -0.630631, -0.490935,
		39.302574, 42.627312, 23.660107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459248, 42.583374, 23.948217>,  <38.881824, 43.068752, 24.003763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459248, 42.583374, 23.948217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815319, 42.409206, 23.894550>,  <39.028961, 42.304707, 23.862350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.815319, 42.409206, 23.894550>,  <38.459248, 42.583374, 23.948217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815319, 42.409206, 23.894550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276033, -0.749673, 0.601495,
		-0.362483, -0.498401, -0.787530,
		0.890175, -0.435416, -0.134169,
		39.082371, 42.278580, 23.854300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313229, 41.952782, 23.933126>,  <38.459248, 42.583374, 23.948217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313229, 41.952782, 23.933126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.705868, 41.881142, 23.959627>,  <38.941452, 41.838158, 23.975527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.705868, 41.881142, 23.959627>,  <38.313229, 41.952782, 23.933126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705868, 41.881142, 23.959627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189793, -0.876638, 0.442137,
		-0.021108, -0.446575, -0.894497,
		0.981597, -0.179102, 0.066252,
		39.000347, 41.827412, 23.979504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460331, 41.292210, 23.646046>,  <38.313229, 41.952782, 23.933126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460331, 41.292210, 23.646046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737289, 41.392517, 23.916662>,  <38.903465, 41.452702, 24.079031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.737289, 41.392517, 23.916662>,  <38.460331, 41.292210, 23.646046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737289, 41.392517, 23.916662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210904, -0.826364, 0.522151,
		0.690009, -0.504218, -0.519280,
		0.692393, 0.250771, 0.676540,
		38.945007, 41.467747, 24.119625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780445, 40.612217, 23.806818>,  <38.460331, 41.292210, 23.646046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780445, 40.612217, 23.806818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895687, 40.857414, 24.101093>,  <38.964832, 41.004532, 24.277658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.895687, 40.857414, 24.101093>,  <38.780445, 40.612217, 23.806818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895687, 40.857414, 24.101093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176374, -0.721152, 0.669950,
		0.941215, -0.322774, -0.099655,
		0.288109, 0.612990, 0.735688,
		38.982121, 41.041313, 24.321800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176380, 40.201248, 24.263824>,  <38.780445, 40.612217, 23.806818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176380, 40.201248, 24.263824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059532, 40.495651, 24.508108>,  <38.989426, 40.672295, 24.654678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.059532, 40.495651, 24.508108>,  <39.176380, 40.201248, 24.263824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059532, 40.495651, 24.508108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349665, -0.676541, 0.648095,
		0.890170, -0.024224, 0.454984,
		-0.292116, 0.736006, 0.610707,
		38.971897, 40.716454, 24.691320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583839, 40.128670, 24.883064>,  <39.176380, 40.201248, 24.263824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583839, 40.128670, 24.883064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243477, 40.326374, 24.954231>,  <39.039257, 40.444996, 24.996931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.243477, 40.326374, 24.954231>,  <39.583839, 40.128670, 24.883064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243477, 40.326374, 24.954231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201234, -0.619548, 0.758726,
		0.485239, 0.609805, 0.626643,
		-0.850910, 0.494265, 0.177915,
		38.988205, 40.474655, 25.007607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271690, 40.214935, 25.251493>,  <39.583839, 40.128670, 24.883064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271690, 40.214935, 25.251493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.528862, 39.912754, 25.200991>,  <40.683163, 39.731445, 25.170689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.528862, 39.912754, 25.200991>,  <40.271690, 40.214935, 25.251493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528862, 39.912754, 25.200991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665388, 0.632534, -0.396434,
		0.379349, 0.170867, 0.909340,
		0.642926, -0.755450, -0.126259,
		40.721741, 39.686119, 25.163113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921814, 40.556248, 25.401171>,  <40.271690, 40.214935, 25.251493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921814, 40.556248, 25.401171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.016994, 40.224667, 25.198700>,  <41.074104, 40.025719, 25.077217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.016994, 40.224667, 25.198700>,  <40.921814, 40.556248, 25.401171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016994, 40.224667, 25.198700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851295, 0.428907, -0.302218,
		0.467627, -0.358990, 0.807744,
		0.237954, -0.828954, -0.506175,
		41.088379, 39.975979, 25.046848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691681, 40.487846, 25.395361>,  <40.921814, 40.556248, 25.401171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691681, 40.487846, 25.395361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561802, 40.254147, 25.097847>,  <41.483875, 40.113926, 24.919338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.561802, 40.254147, 25.097847>,  <41.691681, 40.487846, 25.395361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561802, 40.254147, 25.097847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730913, 0.344101, -0.589373,
		0.600281, -0.735012, 0.315310,
		-0.324698, -0.584254, -0.743787,
		41.464394, 40.078869, 24.874710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.240650, 40.166809, 25.120411>,  <41.691681, 40.487846, 25.395361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.240650, 40.166809, 25.120411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963085, 40.141415, 24.833508>,  <41.796547, 40.126179, 24.661366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.963085, 40.141415, 24.833508>,  <42.240650, 40.166809, 25.120411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963085, 40.141415, 24.833508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671039, 0.304243, -0.676123,
		0.261145, -0.950477, -0.168515,
		-0.693909, -0.063486, -0.717259,
		41.754913, 40.122368, 24.618330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548939, 39.862537, 24.559526>,  <42.240650, 40.166809, 25.120411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548939, 39.862537, 24.559526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229000, 40.054287, 24.415062>,  <42.037037, 40.169338, 24.328382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.229000, 40.054287, 24.415062>,  <42.548939, 39.862537, 24.559526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229000, 40.054287, 24.415062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558787, 0.375114, -0.739627,
		-0.219084, -0.793402, -0.567904,
		-0.799850, 0.479377, -0.361161,
		41.989044, 40.198101, 24.306713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629486, 39.908218, 23.835800>,  <42.548939, 39.862537, 24.559526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629486, 39.908218, 23.835800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.341412, 40.184814, 23.858316>,  <42.168568, 40.350773, 23.871826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.341412, 40.184814, 23.858316>,  <42.629486, 39.908218, 23.835800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341412, 40.184814, 23.858316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344277, 0.426643, -0.836331,
		-0.602331, -0.582937, -0.545327,
		-0.720188, 0.691492, 0.056289,
		42.125355, 40.392262, 23.875202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401184, 39.923046, 23.186705>,  <42.629486, 39.908218, 23.835800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401184, 39.923046, 23.186705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.280239, 40.259678, 23.365734>,  <42.207672, 40.461658, 23.473152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.280239, 40.259678, 23.365734>,  <42.401184, 39.923046, 23.186705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.280239, 40.259678, 23.365734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270581, 0.526018, -0.806282,
		-0.913983, -0.122682, -0.386762,
		-0.302360, 0.841578, 0.447576,
		42.189529, 40.512150, 23.500008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124424, 40.321457, 22.696615>,  <42.401184, 39.923046, 23.186705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124424, 40.321457, 22.696615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193905, 40.596096, 22.979008>,  <42.235596, 40.760880, 23.148443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193905, 40.596096, 22.979008>,  <42.124424, 40.321457, 22.696615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193905, 40.596096, 22.979008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489881, 0.561647, -0.666760,
		-0.854309, 0.461667, -0.238790,
		0.173706, 0.686597, 0.705982,
		42.246017, 40.802074, 23.190802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824997, 40.954315, 22.455496>,  <42.124424, 40.321457, 22.696615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824997, 40.954315, 22.455496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100765, 41.054577, 22.727341>,  <42.266224, 41.114735, 22.890448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.100765, 41.054577, 22.727341>,  <41.824997, 40.954315, 22.455496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.100765, 41.054577, 22.727341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417352, 0.629387, -0.655507,
		-0.592048, 0.735556, 0.329297,
		0.689418, 0.250659, 0.679613,
		42.307590, 41.129776, 22.931225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.877750, 33.876545, 35.674412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231682, 33.890503, 35.860256>,  <36.444042, 33.898876, 35.971764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231682, 33.890503, 35.860256>,  <35.877750, 33.876545, 35.674412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231682, 33.890503, 35.860256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413018, 0.402760, -0.816823,
		-0.215630, 0.914640, 0.341960,
		0.884827, 0.034896, 0.464611,
		36.497131, 33.900970, 35.999638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139275, 34.442772, 35.387840>,  <35.877750, 33.876545, 35.674412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139275, 34.442772, 35.387840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457912, 34.253857, 35.538776>,  <36.649094, 34.140507, 35.629337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457912, 34.253857, 35.538776>,  <36.139275, 34.442772, 35.387840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457912, 34.253857, 35.538776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558609, 0.336476, -0.758116,
		0.231080, 0.814696, 0.531857,
		0.796592, -0.472286, 0.377344,
		36.696892, 34.112171, 35.651981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585518, 34.927692, 35.306728>,  <36.139275, 34.442772, 35.387840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585518, 34.927692, 35.306728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800457, 34.590668, 35.321423>,  <36.929420, 34.388454, 35.330238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800457, 34.590668, 35.321423>,  <36.585518, 34.927692, 35.306728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800457, 34.590668, 35.321423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547284, 0.315230, -0.775313,
		0.641668, 0.436717, 0.630508,
		0.537348, -0.842560, 0.036736,
		36.961662, 34.337898, 35.332443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358963, 35.129799, 35.331581>,  <36.585518, 34.927692, 35.306728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358963, 35.129799, 35.331581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329948, 34.751671, 35.204388>,  <37.312538, 34.524796, 35.128071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329948, 34.751671, 35.204388>,  <37.358963, 35.129799, 35.331581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329948, 34.751671, 35.204388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462751, 0.250533, -0.850350,
		0.883516, -0.208832, 0.419273,
		-0.072539, -0.945316, -0.317987,
		37.308186, 34.468075, 35.108990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934097, 35.118710, 35.025211>,  <37.358963, 35.129799, 35.331581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934097, 35.118710, 35.025211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727436, 34.819061, 34.859375>,  <37.603439, 34.639271, 34.759872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.727436, 34.819061, 34.859375>,  <37.934097, 35.118710, 35.025211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727436, 34.819061, 34.859375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467965, 0.158434, -0.869430,
		0.716996, -0.643205, 0.268709,
		-0.516649, -0.749123, -0.414594,
		37.572441, 34.594326, 34.734997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364151, 34.847511, 34.572651>,  <37.934097, 35.118710, 35.025211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364151, 34.847511, 34.572651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002884, 34.721870, 34.455605>,  <37.786121, 34.646484, 34.385376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.002884, 34.721870, 34.455605>,  <38.364151, 34.847511, 34.572651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002884, 34.721870, 34.455605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285007, 0.070999, -0.955892,
		0.321023, -0.946731, 0.025397,
		-0.903169, -0.314102, -0.292617,
		37.731934, 34.627640, 34.367821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520218, 34.469490, 34.004444>,  <38.364151, 34.847511, 34.572651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520218, 34.469490, 34.004444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131943, 34.560745, 33.974205>,  <37.898979, 34.615498, 33.956062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.131943, 34.560745, 33.974205>,  <38.520218, 34.469490, 34.004444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131943, 34.560745, 33.974205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067289, -0.043992, -0.996763,
		-0.230726, -0.972634, 0.027352,
		-0.970689, 0.228139, -0.075598,
		37.840736, 34.629189, 33.951527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275867, 34.080757, 33.535191>,  <38.520218, 34.469490, 34.004444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275867, 34.080757, 33.535191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991665, 34.362202, 33.539543>,  <37.821144, 34.531067, 33.542156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.991665, 34.362202, 33.539543>,  <38.275867, 34.080757, 33.535191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991665, 34.362202, 33.539543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027914, -0.012731, -0.999529,
		-0.703140, -0.710473, 0.028686,
		-0.710504, 0.703609, 0.010881,
		37.778515, 34.573284, 33.542809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954292, 33.970669, 32.947285>,  <38.275867, 34.080757, 33.535191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954292, 33.970669, 32.947285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835461, 34.339214, 33.047550>,  <37.764164, 34.560341, 33.107712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835461, 34.339214, 33.047550>,  <37.954292, 33.970669, 32.947285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835461, 34.339214, 33.047550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094597, 0.232828, -0.967906,
		-0.950157, -0.311253, 0.017991,
		-0.297075, 0.921365, 0.250667,
		37.746338, 34.615623, 33.122749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303650, 34.200859, 32.748222>,  <37.954292, 33.970669, 32.947285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303650, 34.200859, 32.748222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480614, 34.554131, 32.810543>,  <37.586792, 34.766094, 32.847935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.480614, 34.554131, 32.810543>,  <37.303650, 34.200859, 32.748222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480614, 34.554131, 32.810543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083409, 0.213497, -0.973377,
		-0.892926, 0.417636, 0.168118,
		0.442410, 0.883175, 0.155802,
		37.613338, 34.819084, 32.857285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980080, 34.631458, 32.291946>,  <37.303650, 34.200859, 32.748222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980080, 34.631458, 32.291946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296932, 34.856991, 32.385437>,  <37.487041, 34.992310, 32.441532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296932, 34.856991, 32.385437>,  <36.980080, 34.631458, 32.291946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296932, 34.856991, 32.385437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103920, 0.252747, -0.961935,
		-0.601443, 0.786264, 0.141614,
		0.792128, 0.563833, 0.233722,
		37.534569, 35.026142, 32.455555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937241, 35.240452, 31.947929>,  <36.980080, 34.631458, 32.291946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937241, 35.240452, 31.947929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330601, 35.220905, 32.017830>,  <37.566616, 35.209179, 32.059769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.330601, 35.220905, 32.017830>,  <36.937241, 35.240452, 31.947929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.330601, 35.220905, 32.017830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181307, 0.303115, -0.935547,
		-0.007257, 0.951701, 0.306942,
		0.983400, -0.048862, 0.174750,
		37.625622, 35.206245, 32.070255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490646, 35.810341, 32.182125>,  <36.937241, 35.240452, 31.947929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490646, 35.810341, 32.182125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170910, 35.924942, 31.970856>,  <35.979069, 35.993702, 31.844093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170910, 35.924942, 31.970856>,  <36.490646, 35.810341, 32.182125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170910, 35.924942, 31.970856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595923, -0.265392, 0.757920,
		0.076971, 0.920590, 0.382871,
		-0.799345, 0.286500, -0.528173,
		35.931107, 36.010891, 31.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050545, 36.229778, 32.743393>,  <36.490646, 35.810341, 32.182125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050545, 36.229778, 32.743393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810375, 36.159428, 32.431355>,  <35.666271, 36.117218, 32.244129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.810375, 36.159428, 32.431355>,  <36.050545, 36.229778, 32.743393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810375, 36.159428, 32.431355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759481, -0.179986, 0.625135,
		-0.250353, 0.967818, -0.025506,
		-0.600426, -0.175876, -0.780100,
		35.630249, 36.106667, 32.197323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465271, 36.681828, 32.706444>,  <36.050545, 36.229778, 32.743393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465271, 36.681828, 32.706444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330292, 36.371689, 32.492916>,  <35.249302, 36.185604, 32.364799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330292, 36.371689, 32.492916>,  <35.465271, 36.681828, 32.706444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330292, 36.371689, 32.492916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834145, -0.016524, 0.551298,
		-0.436268, 0.631319, -0.641176,
		-0.337450, -0.775347, -0.533820,
		35.229057, 36.139084, 32.332771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808460, 36.791924, 32.560833>,  <35.465271, 36.681828, 32.706444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808460, 36.791924, 32.560833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822224, 36.397133, 32.497982>,  <34.830482, 36.160259, 32.460274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822224, 36.397133, 32.497982>,  <34.808460, 36.791924, 32.560833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822224, 36.397133, 32.497982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861024, -0.109096, 0.496725,
		-0.507399, 0.118196, -0.853567,
		0.034410, -0.986979, -0.157125,
		34.832546, 36.101040, 32.450844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084831, 36.550961, 32.400894>,  <34.808460, 36.791924, 32.560833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084831, 36.550961, 32.400894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298405, 36.239197, 32.532009>,  <34.426548, 36.052139, 32.610676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.298405, 36.239197, 32.532009>,  <34.084831, 36.550961, 32.400894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298405, 36.239197, 32.532009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770803, -0.289341, 0.567578,
		-0.347533, -0.555703, -0.755258,
		0.533932, -0.779407, 0.327782,
		34.458584, 36.005375, 32.630344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595936, 36.052223, 32.511181>,  <34.084831, 36.550961, 32.400894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595936, 36.052223, 32.511181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921154, 35.938572, 32.714447>,  <34.116283, 35.870380, 32.836407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.921154, 35.938572, 32.714447>,  <33.595936, 36.052223, 32.511181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921154, 35.938572, 32.714447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582177, -0.389287, 0.713811,
		-0.004989, -0.876202, -0.481918,
		0.813046, -0.284122, 0.508163,
		34.165070, 35.853336, 32.866898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456177, 35.352734, 32.667515>,  <33.595936, 36.052223, 32.511181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456177, 35.352734, 32.667515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731968, 35.481724, 32.926941>,  <33.897442, 35.559116, 33.082596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731968, 35.481724, 32.926941>,  <33.456177, 35.352734, 32.667515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731968, 35.481724, 32.926941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527180, -0.390616, 0.754652,
		0.496696, -0.862224, -0.099317,
		0.689474, 0.322475, 0.648565,
		33.938808, 35.578465, 33.121510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682266, 34.796940, 33.131729>,  <33.456177, 35.352734, 32.667515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682266, 34.796940, 33.131729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759773, 35.142143, 33.318348>,  <33.806278, 35.349266, 33.430321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759773, 35.142143, 33.318348>,  <33.682266, 34.796940, 33.131729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759773, 35.142143, 33.318348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520798, -0.312534, 0.794413,
		0.831399, -0.396910, 0.388894,
		0.193768, 0.863009, 0.466550,
		33.817905, 35.401047, 33.458313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752941, 34.558315, 33.796955>,  <33.682266, 34.796940, 33.131729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752941, 34.558315, 33.796955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744373, 34.951324, 33.870926>,  <33.739231, 35.187130, 33.915306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.744373, 34.951324, 33.870926>,  <33.752941, 34.558315, 33.796955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744373, 34.951324, 33.870926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597863, -0.160839, 0.785296,
		0.801312, -0.093739, 0.590857,
		-0.021420, 0.982519, 0.184925,
		33.737949, 35.246078, 33.926403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011368, 34.623653, 34.399437>,  <33.752941, 34.558315, 33.796955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011368, 34.623653, 34.399437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783749, 34.949459, 34.354275>,  <33.647179, 35.144943, 34.327175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.783749, 34.949459, 34.354275>,  <34.011368, 34.623653, 34.399437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783749, 34.949459, 34.354275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521384, -0.251209, 0.815508,
		0.635880, 0.522933, 0.567625,
		-0.569048, 0.814516, -0.112910,
		33.613033, 35.193813, 34.320400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075485, 35.107754, 35.027351>,  <34.011368, 34.623653, 34.399437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075485, 35.107754, 35.027351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726223, 35.184143, 34.847965>,  <33.516666, 35.229977, 34.740334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.726223, 35.184143, 34.847965>,  <34.075485, 35.107754, 35.027351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726223, 35.184143, 34.847965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482664, -0.210324, 0.850176,
		0.068034, 0.958798, 0.275820,
		-0.873159, 0.190970, -0.448469,
		33.464275, 35.241432, 34.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784904, 35.389164, 35.551346>,  <34.075485, 35.107754, 35.027351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784904, 35.389164, 35.551346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470043, 35.313728, 35.316460>,  <33.281128, 35.268467, 35.175529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470043, 35.313728, 35.316460>,  <33.784904, 35.389164, 35.551346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470043, 35.313728, 35.316460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565840, -0.157986, 0.809238,
		-0.245387, 0.969265, 0.017647,
		-0.787153, -0.188591, -0.587216,
		33.233898, 35.257153, 35.140293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266293, 35.853775, 35.776012>,  <33.784904, 35.389164, 35.551346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266293, 35.853775, 35.776012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053852, 35.573360, 35.585651>,  <32.926388, 35.405113, 35.471436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053852, 35.573360, 35.585651>,  <33.266293, 35.853775, 35.776012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053852, 35.573360, 35.585651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633573, -0.044362, 0.772410,
		-0.562599, 0.711745, -0.420597,
		-0.531100, -0.701036, -0.475901,
		32.894524, 35.363049, 35.442883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628605, 36.047756, 35.926189>,  <33.266293, 35.853775, 35.776012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628605, 36.047756, 35.926189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578735, 35.665298, 35.820179>,  <32.548813, 35.435825, 35.756573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.578735, 35.665298, 35.820179>,  <32.628605, 36.047756, 35.926189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578735, 35.665298, 35.820179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681253, -0.111706, 0.723475,
		-0.721353, 0.270753, -0.637450,
		-0.124675, -0.956146, -0.265031,
		32.541332, 35.378456, 35.740669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933910, 36.516632, 35.407482>,  <32.628605, 36.047756, 35.926189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933910, 36.516632, 35.407482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787205, 36.747196, 35.699574>,  <32.699181, 36.885532, 35.874828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787205, 36.747196, 35.699574>,  <32.933910, 36.516632, 35.407482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787205, 36.747196, 35.699574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817420, 0.574444, -0.042887,
		-0.444198, 0.581178, -0.681851,
		-0.366761, 0.576408, 0.730233,
		32.677177, 36.920120, 35.918644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833321, 37.248314, 35.260906>,  <32.933910, 36.516632, 35.407482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833321, 37.248314, 35.260906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936459, 37.184933, 35.642147>,  <32.998341, 37.146904, 35.870892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936459, 37.184933, 35.642147>,  <32.833321, 37.248314, 35.260906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936459, 37.184933, 35.642147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854467, 0.497861, -0.148391,
		-0.451002, 0.852659, 0.263762,
		0.257844, -0.158451, 0.953105,
		33.013813, 37.137398, 35.928078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191032, 37.948410, 35.154743>,  <32.833321, 37.248314, 35.260906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191032, 37.948410, 35.154743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452618, 37.859627, 35.444038>,  <33.609566, 37.806355, 35.617615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.452618, 37.859627, 35.444038>,  <33.191032, 37.948410, 35.154743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452618, 37.859627, 35.444038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641564, 0.669329, -0.374692,
		-0.400917, 0.709036, 0.580115,
		0.653958, -0.221961, 0.723237,
		33.648804, 37.793037, 35.661011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215565, 38.517361, 35.645638>,  <33.191032, 37.948410, 35.154743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215565, 38.517361, 35.645638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532711, 38.291351, 35.554321>,  <33.723000, 38.155746, 35.499531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.532711, 38.291351, 35.554321>,  <33.215565, 38.517361, 35.645638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532711, 38.291351, 35.554321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402884, 0.767071, -0.499285,
		0.457223, 0.303891, 0.835822,
		0.792863, -0.565024, -0.228290,
		33.770569, 38.121845, 35.485836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836102, 38.939659, 35.890789>,  <33.215565, 38.517361, 35.645638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836102, 38.939659, 35.890789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982918, 38.703392, 35.603348>,  <34.071007, 38.561630, 35.430885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.982918, 38.703392, 35.603348>,  <33.836102, 38.939659, 35.890789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982918, 38.703392, 35.603348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434737, 0.791887, -0.428858,
		0.822364, -0.154993, 0.547443,
		0.367043, -0.590671, -0.718601,
		34.093029, 38.526192, 35.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468758, 39.123592, 35.827965>,  <33.836102, 38.939659, 35.890789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468758, 39.123592, 35.827965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391476, 38.944077, 35.478966>,  <34.345104, 38.836369, 35.269566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.391476, 38.944077, 35.478966>,  <34.468758, 39.123592, 35.827965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391476, 38.944077, 35.478966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414972, 0.768428, -0.487151,
		0.889083, -0.456186, 0.037768,
		-0.193210, -0.448790, -0.872500,
		34.333511, 38.809441, 35.217216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050430, 39.262444, 35.438190>,  <34.468758, 39.123592, 35.827965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050430, 39.262444, 35.438190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777657, 39.142422, 35.171379>,  <34.613991, 39.070408, 35.011292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.777657, 39.142422, 35.171379>,  <35.050430, 39.262444, 35.438190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777657, 39.142422, 35.171379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334725, 0.682845, -0.649371,
		0.650321, -0.666103, -0.365225,
		-0.681940, -0.300050, -0.667029,
		34.573074, 39.052406, 34.971268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372437, 38.950039, 34.722183>,  <35.050430, 39.262444, 35.438190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372437, 38.950039, 34.722183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008953, 39.083111, 34.621334>,  <34.790863, 39.162956, 34.560825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008953, 39.083111, 34.621334>,  <35.372437, 38.950039, 34.722183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008953, 39.083111, 34.621334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398211, 0.509744, -0.762619,
		-0.125191, -0.793399, -0.595688,
		-0.908710, 0.332683, -0.252125,
		34.736340, 39.182915, 34.545696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342518, 38.820820, 34.068932>,  <35.372437, 38.950039, 34.722183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342518, 38.820820, 34.068932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052052, 39.090485, 34.122887>,  <34.877773, 39.252285, 34.155262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.052052, 39.090485, 34.122887>,  <35.342518, 38.820820, 34.068932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052052, 39.090485, 34.122887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321605, 0.506488, -0.800025,
		-0.607667, -0.537566, -0.584606,
		-0.726162, 0.674161, 0.134892,
		34.834202, 39.292732, 34.163353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059769, 39.030342, 33.413357>,  <35.342518, 38.820820, 34.068932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059769, 39.030342, 33.413357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918083, 39.343559, 33.617855>,  <34.833073, 39.531490, 33.740555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918083, 39.343559, 33.617855>,  <35.059769, 39.030342, 33.413357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918083, 39.343559, 33.617855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222676, 0.601591, -0.767140,
		-0.908268, -0.157886, -0.387455,
		-0.354210, 0.783046, 0.511248,
		34.811821, 39.578472, 33.771229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650280, 39.450161, 32.907986>,  <35.059769, 39.030342, 33.413357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650280, 39.450161, 32.907986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696556, 39.705769, 33.212162>,  <34.724323, 39.859135, 33.394669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.696556, 39.705769, 33.212162>,  <34.650280, 39.450161, 32.907986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696556, 39.705769, 33.212162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215502, 0.731196, -0.647234,
		-0.969626, 0.238757, -0.053115,
		0.115694, 0.639021, 0.760439,
		34.731266, 39.897476, 33.440292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309650, 40.090061, 32.808548>,  <34.650280, 39.450161, 32.907986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309650, 40.090061, 32.808548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604214, 40.195145, 33.057930>,  <34.780952, 40.258194, 33.207558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604214, 40.195145, 33.057930>,  <34.309650, 40.090061, 32.808548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604214, 40.195145, 33.057930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311752, 0.686092, -0.657335,
		-0.600431, 0.678427, 0.423343,
		0.736406, 0.262706, 0.623452,
		34.825134, 40.273956, 33.244965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.199623, 40.817265, 32.984264>,  <34.309650, 40.090061, 32.808548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.199623, 40.817265, 32.984264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581581, 40.703465, 33.018276>,  <34.810757, 40.635185, 33.038685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.581581, 40.703465, 33.018276>,  <34.199623, 40.817265, 32.984264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581581, 40.703465, 33.018276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268949, 0.707326, -0.653726,
		0.125836, 0.647111, 0.751939,
		0.954899, -0.284495, 0.085032,
		34.868050, 40.618114, 33.043785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526848, 41.449936, 33.019337>,  <34.199623, 40.817265, 32.984264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526848, 41.449936, 33.019337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845245, 41.213131, 32.968872>,  <35.036282, 41.071049, 32.938595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.845245, 41.213131, 32.968872>,  <34.526848, 41.449936, 33.019337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845245, 41.213131, 32.968872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356395, 0.626836, -0.692863,
		0.489267, 0.506550, 0.709947,
		0.795990, -0.592016, -0.126159,
		35.084042, 41.035526, 32.931023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151009, 41.938545, 32.986290>,  <34.526848, 41.449936, 33.019337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151009, 41.938545, 32.986290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308865, 41.600079, 32.843040>,  <35.403580, 41.396999, 32.757092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.308865, 41.600079, 32.843040>,  <35.151009, 41.938545, 32.986290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308865, 41.600079, 32.843040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597581, 0.532435, -0.599508,
		0.697966, 0.022580, 0.715775,
		0.394641, -0.846170, -0.358128,
		35.427258, 41.346230, 32.735603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915821, 42.026978, 32.901180>,  <35.151009, 41.938545, 32.986290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915821, 42.026978, 32.901180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822670, 41.722183, 32.659473>,  <35.766781, 41.539307, 32.514450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.822670, 41.722183, 32.659473>,  <35.915821, 42.026978, 32.901180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822670, 41.722183, 32.659473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589261, 0.383740, -0.710995,
		0.773653, -0.521647, 0.359646,
		-0.232878, -0.761989, -0.604268,
		35.752808, 41.493587, 32.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569950, 41.824829, 32.647121>,  <35.915821, 42.026978, 32.901180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569950, 41.824829, 32.647121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283043, 41.702972, 32.396454>,  <36.110897, 41.629856, 32.246056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.283043, 41.702972, 32.396454>,  <36.569950, 41.824829, 32.647121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283043, 41.702972, 32.396454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546215, 0.312572, -0.777141,
		0.432632, -0.899716, -0.057796,
		-0.717271, -0.304647, -0.626667,
		36.067860, 41.611580, 32.208454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014137, 41.482265, 32.116001>,  <36.569950, 41.824829, 32.647121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014137, 41.482265, 32.116001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648491, 41.575172, 31.983072>,  <36.429104, 41.630917, 31.903316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648491, 41.575172, 31.983072>,  <37.014137, 41.482265, 32.116001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648491, 41.575172, 31.983072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403348, 0.437747, -0.803547,
		-0.041167, -0.868579, -0.493838,
		-0.914120, 0.232268, -0.332319,
		36.374256, 41.644852, 31.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969658, 41.287487, 31.452333>,  <37.014137, 41.482265, 32.116001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969658, 41.287487, 31.452333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667156, 41.547794, 31.425240>,  <36.485657, 41.703979, 31.408983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.667156, 41.547794, 31.425240>,  <36.969658, 41.287487, 31.452333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667156, 41.547794, 31.425240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435469, 0.423369, -0.794434,
		-0.488316, -0.630286, -0.603562,
		-0.756250, 0.650767, -0.067733,
		36.440281, 41.743023, 31.404921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738644, 41.295967, 30.781254>,  <36.969658, 41.287487, 31.452333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738644, 41.295967, 30.781254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592224, 41.644505, 30.911957>,  <36.504372, 41.853626, 30.990379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.592224, 41.644505, 30.911957>,  <36.738644, 41.295967, 30.781254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592224, 41.644505, 30.911957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230161, 0.424988, -0.875449,
		-0.901684, -0.245251, -0.356116,
		-0.366049, 0.871342, 0.326758,
		36.482410, 41.905907, 31.009985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476158, 41.522572, 30.261583>,  <36.738644, 41.295967, 30.781254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476158, 41.522572, 30.261583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526852, 41.837898, 30.502415>,  <36.557266, 42.027092, 30.646914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.526852, 41.837898, 30.502415>,  <36.476158, 41.522572, 30.261583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526852, 41.837898, 30.502415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314688, 0.543667, -0.778073,
		-0.940697, 0.288074, -0.179173,
		0.126732, 0.788315, 0.602079,
		36.564873, 42.074394, 30.683039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009258, 42.103100, 30.086529>,  <36.476158, 41.522572, 30.261583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009258, 42.103100, 30.086529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313370, 42.267345, 30.287874>,  <36.495838, 42.365891, 30.408682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.313370, 42.267345, 30.287874>,  <36.009258, 42.103100, 30.086529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313370, 42.267345, 30.287874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260981, 0.516523, -0.815533,
		-0.594864, 0.751401, 0.285541,
		0.760280, 0.410611, 0.503362,
		36.541454, 42.390530, 30.438883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976707, 42.774834, 29.974289>,  <36.009258, 42.103100, 30.086529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976707, 42.774834, 29.974289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357098, 42.748585, 30.095184>,  <36.585331, 42.732834, 30.167721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.357098, 42.748585, 30.095184>,  <35.976707, 42.774834, 29.974289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357098, 42.748585, 30.095184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288513, 0.540274, -0.790483,
		-0.111417, 0.838926, 0.532718,
		0.950971, -0.065623, 0.302238,
		36.642387, 42.728897, 30.185856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265900, 43.440071, 29.987505>,  <35.976707, 42.774834, 29.974289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265900, 43.440071, 29.987505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611702, 43.239758, 30.004694>,  <36.819183, 43.119568, 30.015007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611702, 43.239758, 30.004694>,  <36.265900, 43.440071, 29.987505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611702, 43.239758, 30.004694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417090, 0.667050, -0.617317,
		0.280477, 0.551597, 0.785540,
		0.864505, -0.500784, 0.042973,
		36.871052, 43.089523, 30.017586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746670, 43.890171, 30.078592>,  <36.265900, 43.440071, 29.987505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746670, 43.890171, 30.078592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956722, 43.590668, 29.916803>,  <37.082752, 43.410965, 29.819731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956722, 43.590668, 29.916803>,  <36.746670, 43.890171, 30.078592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956722, 43.590668, 29.916803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383829, 0.632575, -0.672699,
		0.759549, 0.198006, 0.619579,
		0.525129, -0.748760, -0.404471,
		37.114262, 43.366039, 29.795462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515259, 44.028160, 30.016407>,  <36.746670, 43.890171, 30.078592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515259, 44.028160, 30.016407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444553, 43.750828, 29.736963>,  <37.402130, 43.584431, 29.569298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.444553, 43.750828, 29.736963>,  <37.515259, 44.028160, 30.016407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444553, 43.750828, 29.736963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561662, 0.511818, -0.650060,
		0.808264, -0.507287, 0.298946,
		-0.176761, -0.693327, -0.698608,
		37.391525, 43.542831, 29.527380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256344, 43.769943, 29.787039>,  <37.515259, 44.028160, 30.016407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256344, 43.769943, 29.787039> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974377, 43.672165, 29.520704>,  <37.805199, 43.613499, 29.360903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974377, 43.672165, 29.520704>,  <38.256344, 43.769943, 29.787039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974377, 43.672165, 29.520704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599266, 0.296932, -0.743446,
		0.379443, -0.923080, -0.062821,
		-0.704914, -0.244449, -0.665838,
		37.762901, 43.598831, 29.320953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643433, 43.463043, 29.334068>,  <38.256344, 43.769943, 29.787039>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643433, 43.463043, 29.334068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306656, 43.547958, 29.135645>,  <38.104591, 43.598907, 29.016590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.306656, 43.547958, 29.135645>,  <38.643433, 43.463043, 29.334068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306656, 43.547958, 29.135645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537387, 0.247240, -0.806280,
		-0.048515, -0.945414, -0.322240,
		-0.841939, 0.212284, -0.496059,
		38.054073, 43.611645, 28.986828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201122, 43.007870, 29.507143>,  <38.643433, 43.463043, 29.334068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201122, 43.007870, 29.507143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512291, 43.182407, 29.688002>,  <39.698994, 43.287132, 29.796516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.512291, 43.182407, 29.688002>,  <39.201122, 43.007870, 29.507143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512291, 43.182407, 29.688002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352084, -0.293308, 0.888823,
		0.520454, -0.850630, -0.074540,
		0.777923, 0.436348, 0.452147,
		39.745667, 43.313313, 29.823647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580193, 42.498421, 29.923445>,  <39.201122, 43.007870, 29.507143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580193, 42.498421, 29.923445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.671158, 42.852123, 30.086597>,  <39.725735, 43.064346, 30.184488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.671158, 42.852123, 30.086597>,  <39.580193, 42.498421, 29.923445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671158, 42.852123, 30.086597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150450, -0.381923, 0.911866,
		0.962107, -0.268732, 0.046184,
		0.227409, 0.884261, 0.407881,
		39.739380, 43.117401, 30.208961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959976, 42.296532, 30.564764>,  <39.580193, 42.498421, 29.923445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959976, 42.296532, 30.564764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.849152, 42.679802, 30.593443>,  <39.782658, 42.909763, 30.610649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.849152, 42.679802, 30.593443>,  <39.959976, 42.296532, 30.564764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.849152, 42.679802, 30.593443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237942, -0.140712, 0.961033,
		0.930925, 0.249204, 0.266975,
		-0.277059, 0.958174, 0.071696,
		39.766033, 42.967255, 30.614952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279263, 42.553078, 31.152319>,  <39.959976, 42.296532, 30.564764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279263, 42.553078, 31.152319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.989361, 42.821247, 31.088745>,  <39.815422, 42.982151, 31.050602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.989361, 42.821247, 31.088745>,  <40.279263, 42.553078, 31.152319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989361, 42.821247, 31.088745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335495, -0.141906, 0.931293,
		0.601811, 0.728278, 0.327772,
		-0.724753, 0.670428, -0.158933,
		39.771935, 43.022377, 31.041065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.363716, 42.988701, 31.641218>,  <40.279263, 42.553078, 31.152319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.363716, 42.988701, 31.641218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983772, 43.071888, 31.547829>,  <39.755806, 43.121799, 31.491795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.983772, 43.071888, 31.547829>,  <40.363716, 42.988701, 31.641218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983772, 43.071888, 31.547829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289560, -0.303362, 0.907814,
		0.117967, 0.929904, 0.348370,
		-0.949863, 0.207966, -0.233476,
		39.698814, 43.134277, 31.477785>
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
