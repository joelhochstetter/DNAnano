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
	<23.996326, 34.915173, 34.773895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263189, 34.934792, 35.071217>,  <24.423307, 34.946564, 35.249607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263189, 34.934792, 35.071217>,  <23.996326, 34.915173, 34.773895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263189, 34.934792, 35.071217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629121, -0.571407, -0.526974,
		0.398880, 0.819200, -0.412075,
		0.667159, 0.049045, 0.743299,
		24.463337, 34.949505, 35.294205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.669382, 35.172501, 34.552193>,  <23.996326, 34.915173, 34.773895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.669382, 35.172501, 34.552193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713276, 34.922657, 34.861469>,  <24.739613, 34.772751, 35.047035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.713276, 34.922657, 34.861469>,  <24.669382, 35.172501, 34.552193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.713276, 34.922657, 34.861469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371941, -0.695566, -0.614693,
		0.921747, 0.355034, 0.155990,
		0.109735, -0.624611, 0.773188,
		24.746197, 34.735275, 35.093426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.385344, 34.931488, 34.578926>,  <24.669382, 35.172501, 34.552193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.385344, 34.931488, 34.578926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174376, 34.682915, 34.810665>,  <25.047794, 34.533772, 34.949707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.174376, 34.682915, 34.810665>,  <25.385344, 34.931488, 34.578926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174376, 34.682915, 34.810665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479555, -0.780641, -0.400783,
		0.701323, 0.066447, 0.709740,
		-0.527421, -0.621438, 0.579346,
		25.016150, 34.496483, 34.984470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820253, 34.348366, 35.007565>,  <25.385344, 34.931488, 34.578926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820253, 34.348366, 35.007565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439041, 34.232334, 34.972740>,  <25.210314, 34.162716, 34.951843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.439041, 34.232334, 34.972740>,  <25.820253, 34.348366, 35.007565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.439041, 34.232334, 34.972740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287782, -0.777742, -0.558838,
		0.094395, -0.557646, 0.824694,
		-0.953033, -0.290084, -0.087065,
		25.153131, 34.145309, 34.946621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277531, 34.900536, 34.837498>,  <25.820253, 34.348366, 35.007565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277531, 34.900536, 34.837498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339090, 34.857571, 34.444607>,  <26.376026, 34.831791, 34.208870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.339090, 34.857571, 34.444607>,  <26.277531, 34.900536, 34.837498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.339090, 34.857571, 34.444607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966373, 0.190894, -0.172289,
		0.206008, 0.975716, -0.074421,
		0.153899, -0.107411, -0.982231,
		26.385260, 34.825348, 34.149937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.029667, 35.048161, 34.924469>,  <26.277531, 34.900536, 34.837498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.029667, 35.048161, 34.924469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299355, 34.924606, 35.192802>,  <27.461168, 34.850475, 35.353802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299355, 34.924606, 35.192802>,  <27.029667, 35.048161, 34.924469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299355, 34.924606, 35.192802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738507, 0.288954, -0.609190,
		-0.005670, 0.906143, 0.422934,
		0.674221, -0.308886, 0.670831,
		27.501621, 34.831940, 35.394051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.542431, 35.564583, 34.879978>,  <27.029667, 35.048161, 34.924469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.542431, 35.564583, 34.879978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661680, 35.203186, 35.003151>,  <27.733231, 34.986347, 35.077057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661680, 35.203186, 35.003151>,  <27.542431, 35.564583, 34.879978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661680, 35.203186, 35.003151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741291, 0.015910, -0.670995,
		0.601340, 0.428310, 0.674493,
		0.298125, -0.903492, 0.307935,
		27.751118, 34.932140, 35.095531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314322, 35.584896, 34.984280>,  <27.542431, 35.564583, 34.879978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314322, 35.584896, 34.984280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179697, 35.215172, 34.912312>,  <28.098923, 34.993336, 34.869129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179697, 35.215172, 34.912312>,  <28.314322, 35.584896, 34.984280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179697, 35.215172, 34.912312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680949, -0.106922, -0.724483,
		0.650412, -0.366349, 0.665397,
		-0.336559, -0.924314, -0.179921,
		28.078730, 34.937878, 34.858334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915358, 35.352482, 34.728092>,  <28.314322, 35.584896, 34.984280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915358, 35.352482, 34.728092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663063, 35.053917, 34.643204>,  <28.511686, 34.874779, 34.592270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663063, 35.053917, 34.643204>,  <28.915358, 35.352482, 34.728092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663063, 35.053917, 34.643204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636492, -0.341180, -0.691718,
		0.443901, -0.571371, 0.690281,
		-0.630738, -0.746413, -0.212223,
		28.473843, 34.829994, 34.579536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298586, 34.795738, 34.623325>,  <28.915358, 35.352482, 34.728092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298586, 34.795738, 34.623325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956388, 34.712872, 34.433498>,  <28.751070, 34.663151, 34.319603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.956388, 34.712872, 34.433498>,  <29.298586, 34.795738, 34.623325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956388, 34.712872, 34.433498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517503, -0.310408, -0.797394,
		0.017887, -0.927754, 0.372763,
		-0.855494, -0.207169, -0.474564,
		28.699739, 34.650723, 34.291130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512800, 34.269318, 34.421341>,  <29.298586, 34.795738, 34.623325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512800, 34.269318, 34.421341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189417, 34.306396, 34.188858>,  <28.995386, 34.328644, 34.049370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189417, 34.306396, 34.188858>,  <29.512800, 34.269318, 34.421341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189417, 34.306396, 34.188858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443267, -0.553741, -0.704901,
		-0.387179, -0.827513, 0.406588,
		-0.808459, 0.092696, -0.581206,
		28.946878, 34.334206, 34.014496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412151, 33.623833, 34.113724>,  <29.512800, 34.269318, 34.421341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412151, 33.623833, 34.113724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239956, 33.879318, 33.858624>,  <29.136639, 34.032612, 33.705563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.239956, 33.879318, 33.858624>,  <29.412151, 33.623833, 34.113724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239956, 33.879318, 33.858624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609999, -0.314906, -0.727142,
		-0.665268, -0.702052, -0.254053,
		-0.430489, 0.638716, -0.637747,
		29.110809, 34.070934, 33.667301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172876, 33.267963, 33.539597>,  <29.412151, 33.623833, 34.113724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172876, 33.267963, 33.539597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232321, 33.641220, 33.408653>,  <29.267988, 33.865173, 33.330086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.232321, 33.641220, 33.408653>,  <29.172876, 33.267963, 33.539597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.232321, 33.641220, 33.408653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630396, -0.344448, -0.695670,
		-0.761916, -0.102980, -0.639437,
		0.148613, 0.933141, -0.327358,
		29.276905, 33.921162, 33.310448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.383348, 33.138111, 32.893242>,  <29.172876, 33.267963, 33.539597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.383348, 33.138111, 32.893242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483849, 33.524986, 32.908337>,  <29.544149, 33.757111, 32.917393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483849, 33.524986, 32.908337>,  <29.383348, 33.138111, 32.893242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483849, 33.524986, 32.908337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521068, -0.102296, -0.847363,
		-0.815697, 0.232564, -0.529671,
		0.251250, 0.967186, 0.037739,
		29.559223, 33.815144, 32.919659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306959, 33.419430, 32.177452>,  <29.383348, 33.138111, 32.893242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306959, 33.419430, 32.177452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547058, 33.668915, 32.377724>,  <29.691116, 33.818607, 32.497887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.547058, 33.668915, 32.377724>,  <29.306959, 33.419430, 32.177452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547058, 33.668915, 32.377724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661566, -0.035376, -0.749052,
		-0.449483, 0.780850, -0.433864,
		0.600245, 0.623716, 0.500683,
		29.727131, 33.856030, 32.527927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545776, 33.880566, 31.698433>,  <29.306959, 33.419430, 32.177452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545776, 33.880566, 31.698433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809067, 33.924759, 31.996300>,  <29.967041, 33.951275, 32.175018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809067, 33.924759, 31.996300>,  <29.545776, 33.880566, 31.698433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809067, 33.924759, 31.996300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745176, 0.044975, -0.665350,
		-0.107003, 0.992860, -0.052728,
		0.658228, 0.110486, 0.744667,
		30.006535, 33.957905, 32.219700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040758, 34.350079, 31.459921>,  <29.545776, 33.880566, 31.698433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040758, 34.350079, 31.459921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228857, 34.173676, 31.765699>,  <30.341717, 34.067833, 31.949165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.228857, 34.173676, 31.765699>,  <30.040758, 34.350079, 31.459921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.228857, 34.173676, 31.765699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860945, 0.038823, -0.507215,
		0.194009, 0.896663, 0.397941,
		0.470249, -0.441009, 0.764445,
		30.369932, 34.041374, 31.995033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667004, 34.742294, 31.526190>,  <30.040758, 34.350079, 31.459921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667004, 34.742294, 31.526190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724907, 34.372818, 31.668083>,  <30.759649, 34.151131, 31.753220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724907, 34.372818, 31.668083>,  <30.667004, 34.742294, 31.526190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724907, 34.372818, 31.668083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862038, -0.058259, -0.503484,
		0.485731, 0.378675, 0.787826,
		0.144759, -0.923694, 0.354731,
		30.768335, 34.095711, 31.774502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408005, 34.651424, 31.744633>,  <30.667004, 34.742294, 31.526190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408005, 34.651424, 31.744633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288351, 34.270256, 31.724789>,  <31.216558, 34.041553, 31.712883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288351, 34.270256, 31.724789>,  <31.408005, 34.651424, 31.744633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288351, 34.270256, 31.724789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826216, -0.232648, -0.513071,
		0.477374, -0.194466, 0.856911,
		-0.299134, -0.952921, -0.049611,
		31.198610, 33.984379, 31.709906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952452, 34.250065, 32.061893>,  <31.408005, 34.651424, 31.744633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952452, 34.250065, 32.061893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738384, 34.018620, 31.815708>,  <31.609943, 33.879753, 31.667997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738384, 34.018620, 31.815708>,  <31.952452, 34.250065, 32.061893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738384, 34.018620, 31.815708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833973, -0.245923, -0.493975,
		0.134467, -0.777640, 0.614162,
		-0.535171, -0.578618, -0.615462,
		31.577833, 33.845036, 31.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323532, 33.642578, 31.955612>,  <31.952452, 34.250065, 32.061893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323532, 33.642578, 31.955612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079647, 33.657375, 31.638908>,  <31.933315, 33.666252, 31.448887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079647, 33.657375, 31.638908>,  <32.323532, 33.642578, 31.955612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079647, 33.657375, 31.638908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766155, -0.228477, -0.600670,
		-0.203115, -0.972846, 0.110968,
		-0.609713, 0.036987, -0.791759,
		31.896732, 33.668472, 31.401381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500488, 33.065411, 31.606379>,  <32.323532, 33.642578, 31.955612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500488, 33.065411, 31.606379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308235, 33.290127, 31.337044>,  <32.192883, 33.424957, 31.175442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.308235, 33.290127, 31.337044>,  <32.500488, 33.065411, 31.606379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.308235, 33.290127, 31.337044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743794, -0.145560, -0.652367,
		-0.464505, -0.814373, -0.347896,
		-0.480631, 0.561791, -0.673339,
		32.164047, 33.458664, 31.135042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603779, 32.721249, 31.017670>,  <32.500488, 33.065411, 31.606379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603779, 32.721249, 31.017670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491528, 33.094521, 30.927843>,  <32.424179, 33.318481, 30.873947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491528, 33.094521, 30.927843>,  <32.603779, 32.721249, 31.017670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491528, 33.094521, 30.927843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717925, 0.048787, -0.694409,
		-0.637051, -0.356091, -0.683641,
		-0.280625, 0.933177, -0.224567,
		32.407341, 33.374474, 30.860474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413059, 32.766270, 30.286495>,  <32.603779, 32.721249, 31.017670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413059, 32.766270, 30.286495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512047, 33.147736, 30.354942>,  <32.571438, 33.376614, 30.396011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512047, 33.147736, 30.354942>,  <32.413059, 32.766270, 30.286495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512047, 33.147736, 30.354942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762928, -0.082931, -0.641142,
		-0.597243, 0.289214, -0.748101,
		0.247468, 0.953665, 0.171120,
		32.586288, 33.433834, 30.406279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492554, 33.081589, 29.652508>,  <32.413059, 32.766270, 30.286495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492554, 33.081589, 29.652508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720825, 33.235634, 29.942616>,  <32.857788, 33.328060, 30.116680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720825, 33.235634, 29.942616>,  <32.492554, 33.081589, 29.652508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720825, 33.235634, 29.942616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804617, -0.085764, -0.587569,
		-0.164080, 0.918874, -0.358815,
		0.570675, 0.385116, 0.725269,
		32.892029, 33.351170, 30.160196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865723, 33.787907, 29.532259>,  <32.492554, 33.081589, 29.652508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865723, 33.787907, 29.532259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083237, 33.546669, 29.765697>,  <33.213745, 33.401928, 29.905760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083237, 33.546669, 29.765697>,  <32.865723, 33.787907, 29.532259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083237, 33.546669, 29.765697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646935, -0.141723, -0.749260,
		0.534580, 0.784982, 0.313094,
		0.543782, -0.603091, 0.583594,
		33.246372, 33.365742, 29.940775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478203, 34.085819, 29.422781>,  <32.865723, 33.787907, 29.532259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478203, 34.085819, 29.422781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491608, 33.706936, 29.550322>,  <33.499649, 33.479607, 29.626846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491608, 33.706936, 29.550322>,  <33.478203, 34.085819, 29.422781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491608, 33.706936, 29.550322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544688, -0.250178, -0.800454,
		0.837969, 0.200500, 0.507550,
		0.033513, -0.947212, 0.318852,
		33.501663, 33.422771, 29.645977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178783, 33.856560, 29.716494>,  <33.478203, 34.085819, 29.422781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178783, 33.856560, 29.716494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976208, 33.532715, 29.597807>,  <33.854664, 33.338406, 29.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976208, 33.532715, 29.597807>,  <34.178783, 33.856560, 29.716494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976208, 33.532715, 29.597807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691460, -0.175724, -0.700717,
		0.515172, -0.560038, 0.648811,
		-0.506440, -0.809616, -0.296716,
		33.824276, 33.289829, 29.508793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026974, 33.917145, 30.428576>,  <34.178783, 33.856560, 29.716494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026974, 33.917145, 30.428576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998161, 33.614651, 30.168444>,  <33.980873, 33.433155, 30.012365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.998161, 33.614651, 30.168444>,  <34.026974, 33.917145, 30.428576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998161, 33.614651, 30.168444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649092, -0.459515, 0.606239,
		-0.757292, 0.465791, -0.457764,
		-0.072031, -0.756231, -0.650328,
		33.976551, 33.387783, 29.973345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800224, 33.216404, 30.539940>,  <34.026974, 33.917145, 30.428576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800224, 33.216404, 30.539940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503502, 33.150200, 30.799889>,  <33.325470, 33.110477, 30.955858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.503502, 33.150200, 30.799889>,  <33.800224, 33.216404, 30.539940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503502, 33.150200, 30.799889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635666, -0.482311, 0.602749,
		0.213679, 0.860222, 0.462989,
		-0.741802, -0.165512, 0.649873,
		33.280960, 33.100548, 30.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902599, 33.397633, 31.340328>,  <33.800224, 33.216404, 30.539940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902599, 33.397633, 31.340328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647369, 33.091450, 31.307013>,  <33.494232, 32.907742, 31.287024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647369, 33.091450, 31.307013>,  <33.902599, 33.397633, 31.340328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647369, 33.091450, 31.307013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638422, -0.586420, 0.498526,
		-0.430442, 0.264923, 0.862864,
		-0.638072, -0.765459, -0.083287,
		33.455948, 32.861813, 31.282026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620285, 33.157001, 32.017853>,  <33.902599, 33.397633, 31.340328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620285, 33.157001, 32.017853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637547, 32.862881, 31.747309>,  <33.647903, 32.686409, 31.584982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637547, 32.862881, 31.747309>,  <33.620285, 33.157001, 32.017853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637547, 32.862881, 31.747309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753744, -0.420390, 0.505115,
		-0.655749, -0.531605, 0.536087,
		0.043156, -0.735301, -0.676365,
		33.650494, 32.642292, 31.544399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493568, 32.369751, 32.236107>,  <33.620285, 33.157001, 32.017853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493568, 32.369751, 32.236107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735508, 32.408543, 31.919943>,  <33.880672, 32.431816, 31.730244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735508, 32.408543, 31.919943>,  <33.493568, 32.369751, 32.236107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735508, 32.408543, 31.919943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674708, -0.589634, 0.443960,
		-0.423000, -0.801827, -0.422072,
		0.604847, 0.096980, -0.790414,
		33.916962, 32.437637, 31.682819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759258, 31.642902, 31.908432>,  <33.493568, 32.369751, 32.236107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759258, 31.642902, 31.908432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064835, 31.889181, 31.831163>,  <34.248180, 32.036949, 31.784801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.064835, 31.889181, 31.831163>,  <33.759258, 31.642902, 31.908432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064835, 31.889181, 31.831163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644464, -0.712842, 0.276626,
		0.032618, -0.335817, -0.941362,
		0.763938, 0.615697, -0.193171,
		34.294018, 32.073891, 31.773212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281651, 31.235125, 31.661394>,  <33.759258, 31.642902, 31.908432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281651, 31.235125, 31.661394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490536, 31.546875, 31.799879>,  <34.615868, 31.733925, 31.882969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490536, 31.546875, 31.799879>,  <34.281651, 31.235125, 31.661394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490536, 31.546875, 31.799879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637408, -0.626408, 0.448691,
		0.566568, -0.013636, -0.823902,
		0.522217, 0.779376, 0.346211,
		34.647202, 31.780687, 31.903742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788212, 30.833033, 31.233141>,  <34.281651, 31.235125, 31.661394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788212, 30.833033, 31.233141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700790, 30.674898, 30.876278>,  <34.648338, 30.580017, 30.662161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700790, 30.674898, 30.876278>,  <34.788212, 30.833033, 31.233141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700790, 30.674898, 30.876278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013276, -0.912969, 0.407812,
		-0.975734, 0.100973, 0.194286,
		-0.218555, -0.395337, -0.892156,
		34.635223, 30.556297, 30.608631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.294762, 30.338076, 31.026276>,  <34.788212, 30.833033, 31.233141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.294762, 30.338076, 31.026276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065716, 30.024027, 30.931881>,  <33.928288, 29.835598, 30.875244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065716, 30.024027, 30.931881>,  <34.294762, 30.338076, 31.026276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065716, 30.024027, 30.931881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717013, 0.340048, 0.608489,
		-0.397491, 0.517639, -0.757661,
		-0.572619, -0.785122, -0.235988,
		33.893929, 29.788490, 30.861084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646881, 30.604866, 30.747641>,  <34.294762, 30.338076, 31.026276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646881, 30.604866, 30.747641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576344, 30.232336, 30.875099>,  <33.534019, 30.008818, 30.951574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576344, 30.232336, 30.875099>,  <33.646881, 30.604866, 30.747641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576344, 30.232336, 30.875099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657219, 0.352393, 0.666244,
		-0.732779, -0.091932, -0.674228,
		-0.176344, -0.931326, 0.318646,
		33.523441, 29.952938, 30.970694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971996, 30.558517, 30.890009>,  <33.646881, 30.604866, 30.747641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971996, 30.558517, 30.890009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108532, 30.234434, 31.080610>,  <33.190453, 30.039984, 31.194971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108532, 30.234434, 31.080610>,  <32.971996, 30.558517, 30.890009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108532, 30.234434, 31.080610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635799, 0.174353, 0.751904,
		-0.692278, -0.559612, -0.455616,
		0.341337, -0.810207, 0.476502,
		33.210934, 29.991373, 31.223560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406006, 30.236610, 31.156986>,  <32.971996, 30.558517, 30.890009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406006, 30.236610, 31.156986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716877, 30.088203, 31.360294>,  <32.903400, 29.999159, 31.482279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716877, 30.088203, 31.360294>,  <32.406006, 30.236610, 31.156986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716877, 30.088203, 31.360294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554272, -0.021162, 0.832067,
		-0.297954, -0.928385, -0.222091,
		0.777178, -0.371017, 0.508272,
		32.950031, 29.976898, 31.512775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158527, 29.782442, 31.571529>,  <32.406006, 30.236610, 31.156986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158527, 29.782442, 31.571529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492702, 29.912411, 31.748829>,  <32.693207, 29.990391, 31.855209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492702, 29.912411, 31.748829>,  <32.158527, 29.782442, 31.571529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492702, 29.912411, 31.748829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488531, 0.069596, 0.869767,
		0.251756, -0.943178, 0.216876,
		0.835438, 0.324920, 0.443250,
		32.743336, 30.009886, 31.881804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255825, 29.340446, 32.206535>,  <32.158527, 29.782442, 31.571529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255825, 29.340446, 32.206535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473358, 29.673223, 32.250565>,  <32.603878, 29.872890, 32.276981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.473358, 29.673223, 32.250565>,  <32.255825, 29.340446, 32.206535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473358, 29.673223, 32.250565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238369, 0.027375, 0.970789,
		0.804628, -0.554185, 0.213196,
		0.543833, 0.831943, 0.110074,
		32.636509, 29.922806, 32.283588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492039, 29.307499, 32.864853>,  <32.255825, 29.340446, 32.206535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492039, 29.307499, 32.864853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582478, 29.690187, 32.791576>,  <32.636742, 29.919802, 32.747612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582478, 29.690187, 32.791576>,  <32.492039, 29.307499, 32.864853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582478, 29.690187, 32.791576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266488, 0.241640, 0.933057,
		0.936943, -0.162147, 0.309590,
		0.226102, 0.956723, -0.183193,
		32.650307, 29.977203, 32.736618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.892738, 29.622717, 33.480473>,  <32.492039, 29.307499, 32.864853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.892738, 29.622717, 33.480473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694221, 29.902706, 33.275055>,  <32.575111, 30.070700, 33.151802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694221, 29.902706, 33.275055>,  <32.892738, 29.622717, 33.480473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694221, 29.902706, 33.275055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454508, 0.294500, 0.840650,
		0.739670, 0.650622, 0.171984,
		-0.496296, 0.699972, -0.513546,
		32.545334, 30.112698, 33.120991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985432, 30.264887, 33.835045>,  <32.892738, 29.622717, 33.480473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985432, 30.264887, 33.835045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646690, 30.333389, 33.633644>,  <32.443447, 30.374491, 33.512802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646690, 30.333389, 33.633644>,  <32.985432, 30.264887, 33.835045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646690, 30.333389, 33.633644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324988, 0.582774, 0.744820,
		0.420982, 0.794384, -0.437868,
		-0.846851, 0.171254, -0.503503,
		32.392635, 30.384766, 33.482594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983738, 30.907145, 34.042801>,  <32.985432, 30.264887, 33.835045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983738, 30.907145, 34.042801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630230, 30.875202, 33.858379>,  <32.418125, 30.856037, 33.747726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630230, 30.875202, 33.858379>,  <32.983738, 30.907145, 34.042801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630230, 30.875202, 33.858379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422360, 0.560228, 0.712570,
		0.201392, 0.824481, -0.528841,
		-0.883772, -0.079855, -0.461053,
		32.365097, 30.851246, 33.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.680298, 31.538698, 33.874828>,  <32.983738, 30.907145, 34.042801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.680298, 31.538698, 33.874828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356949, 31.303545, 33.886967>,  <32.162937, 31.162453, 33.894249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.356949, 31.303545, 33.886967>,  <32.680298, 31.538698, 33.874828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356949, 31.303545, 33.886967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445575, 0.644757, 0.621089,
		-0.384696, 0.488551, -0.783152,
		-0.808376, -0.587883, 0.030349,
		32.114437, 31.127180, 33.896072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137165, 32.077389, 33.813137>,  <32.680298, 31.538698, 33.874828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137165, 32.077389, 33.813137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940750, 31.750282, 33.933231>,  <31.822903, 31.554018, 34.005287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940750, 31.750282, 33.933231>,  <32.137165, 32.077389, 33.813137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940750, 31.750282, 33.933231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465248, 0.537558, 0.703261,
		-0.736498, 0.205640, -0.644424,
		-0.491034, -0.817767, 0.300237,
		31.793440, 31.504951, 34.023304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310318, 32.149921, 33.669014>,  <32.137165, 32.077389, 33.813137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310318, 32.149921, 33.669014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394917, 31.911440, 33.978802>,  <31.445677, 31.768351, 34.164673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394917, 31.911440, 33.978802>,  <31.310318, 32.149921, 33.669014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394917, 31.911440, 33.978802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691366, 0.468840, 0.549729,
		-0.690856, -0.651709, -0.313039,
		0.211498, -0.596208, 0.774471,
		31.458366, 31.732578, 34.211143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712330, 32.234726, 33.909245>,  <31.310318, 32.149921, 33.669014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712330, 32.234726, 33.909245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890863, 32.027805, 34.201324>,  <30.997984, 31.903654, 34.376572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890863, 32.027805, 34.201324>,  <30.712330, 32.234726, 33.909245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890863, 32.027805, 34.201324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468007, 0.560555, 0.683189,
		-0.762729, -0.646668, 0.008095,
		0.446334, -0.517300, 0.730196,
		31.024763, 31.872616, 34.420383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187210, 31.965359, 34.353718>,  <30.712330, 32.234726, 33.909245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187210, 31.965359, 34.353718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515680, 31.983629, 34.581257>,  <30.712763, 31.994591, 34.717781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515680, 31.983629, 34.581257>,  <30.187210, 31.965359, 34.353718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515680, 31.983629, 34.581257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517928, 0.478208, 0.709273,
		-0.239632, -0.877058, 0.416348,
		0.821175, 0.045674, 0.568847,
		30.762033, 31.997332, 34.751911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956051, 31.653439, 35.052128>,  <30.187210, 31.965359, 34.353718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956051, 31.653439, 35.052128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262489, 31.906706, 35.096298>,  <30.446352, 32.058666, 35.122799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262489, 31.906706, 35.096298>,  <29.956051, 31.653439, 35.052128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262489, 31.906706, 35.096298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482230, 0.452660, 0.750035,
		0.424907, -0.627856, 0.652113,
		0.766100, 0.633163, 0.110432,
		30.492317, 32.096657, 35.129425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907265, 31.872499, 35.773907>,  <29.956051, 31.653439, 35.052128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907265, 31.872499, 35.773907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157627, 32.125931, 35.591999>,  <30.307844, 32.277988, 35.482853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.157627, 32.125931, 35.591999>,  <29.907265, 31.872499, 35.773907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.157627, 32.125931, 35.591999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350684, 0.749481, 0.561514,
		0.696606, -0.191976, 0.691293,
		0.625908, 0.633580, -0.454770,
		30.345400, 32.316006, 35.455566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.134598, 32.139790, 36.302345>,  <29.907265, 31.872499, 35.773907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.134598, 32.139790, 36.302345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229366, 32.416798, 36.029793>,  <30.286228, 32.583004, 35.866261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229366, 32.416798, 36.029793>,  <30.134598, 32.139790, 36.302345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229366, 32.416798, 36.029793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339972, 0.716105, 0.609600,
		0.910103, 0.087224, 0.405099,
		0.236921, 0.692520, -0.681383,
		30.300442, 32.624554, 35.825378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245451, 32.752605, 36.699036>,  <30.134598, 32.139790, 36.302345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245451, 32.752605, 36.699036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218025, 32.928104, 36.340637>,  <30.201571, 33.033401, 36.125599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218025, 32.928104, 36.340637>,  <30.245451, 32.752605, 36.699036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218025, 32.928104, 36.340637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300241, 0.847396, 0.437921,
		0.951396, 0.299039, 0.073629,
		-0.068563, 0.438743, -0.895993,
		30.197456, 33.059727, 36.071838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624485, 33.368942, 36.677307>,  <30.245451, 32.752605, 36.699036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624485, 33.368942, 36.677307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342520, 33.411728, 36.396835>,  <30.173342, 33.437401, 36.228550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342520, 33.411728, 36.396835>,  <30.624485, 33.368942, 36.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342520, 33.411728, 36.396835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332275, 0.823583, 0.459679,
		0.626653, 0.557019, -0.545010,
		-0.704911, 0.106966, -0.701184,
		30.131046, 33.443817, 36.186481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782974, 34.042274, 36.325176>,  <30.624485, 33.368942, 36.677307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782974, 34.042274, 36.325176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406488, 33.907528, 36.315083>,  <30.180597, 33.826679, 36.309025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.406488, 33.907528, 36.315083>,  <30.782974, 34.042274, 36.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.406488, 33.907528, 36.315083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299912, 0.798913, 0.521336,
		-0.155456, 0.498259, -0.852978,
		-0.941216, -0.336863, -0.025238,
		30.124125, 33.806469, 36.307510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500345, 34.290745, 36.965229>,  <30.782974, 34.042274, 36.325176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500345, 34.290745, 36.965229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240931, 34.536736, 36.785809>,  <30.085281, 34.684330, 36.678154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240931, 34.536736, 36.785809>,  <30.500345, 34.290745, 36.965229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240931, 34.536736, 36.785809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399370, 0.776574, 0.487275,
		0.647998, 0.136877, -0.749241,
		-0.648538, 0.614978, -0.448554,
		30.046370, 34.721230, 36.651241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829384, 34.728424, 36.556786>,  <30.500345, 34.290745, 36.965229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829384, 34.728424, 36.556786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489655, 34.894730, 36.686886>,  <30.285816, 34.994514, 36.764946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489655, 34.894730, 36.686886>,  <30.829384, 34.728424, 36.556786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489655, 34.894730, 36.686886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526626, 0.709671, 0.468010,
		-0.036239, 0.568777, -0.821693,
		-0.849325, 0.415764, 0.325250,
		30.234858, 35.019459, 36.784462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485868, 35.028320, 36.450935>,  <30.829384, 34.728424, 36.556786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485868, 35.028320, 36.450935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443468, 35.271145, 36.765957>,  <31.418028, 35.416840, 36.954967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.443468, 35.271145, 36.765957>,  <31.485868, 35.028320, 36.450935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443468, 35.271145, 36.765957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993146, 0.025413, 0.114087,
		0.049244, 0.794247, -0.605596,
		-0.106003, 0.607063, 0.787552,
		31.411667, 35.453262, 37.002224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.862020, 35.784397, 36.360020>,  <31.485868, 35.028320, 36.450935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.862020, 35.784397, 36.360020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829737, 35.606068, 36.716610>,  <31.810368, 35.499069, 36.930565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.829737, 35.606068, 36.716610>,  <31.862020, 35.784397, 36.360020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829737, 35.606068, 36.716610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996615, -0.050142, 0.065150,
		0.015655, 0.893714, 0.448364,
		-0.080708, -0.445826, 0.891474,
		31.805525, 35.472321, 36.984051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378807, 36.194405, 36.847095>,  <31.862020, 35.784397, 36.360020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378807, 36.194405, 36.847095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291283, 35.809788, 36.913490>,  <32.238766, 35.579018, 36.953327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291283, 35.809788, 36.913490>,  <32.378807, 36.194405, 36.847095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291283, 35.809788, 36.913490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973876, -0.204619, 0.098474,
		-0.060722, 0.183201, 0.981198,
		-0.218813, -0.961545, 0.165990,
		32.225639, 35.521324, 36.963287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832756, 35.814713, 37.262825>,  <32.378807, 36.194405, 36.847095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832756, 35.814713, 37.262825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644581, 35.542606, 37.037994>,  <32.531677, 35.379341, 36.903095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644581, 35.542606, 37.037994>,  <32.832756, 35.814713, 37.262825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644581, 35.542606, 37.037994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881643, -0.389318, -0.266716,
		-0.037389, -0.621023, 0.782900,
		-0.470434, -0.680266, -0.562076,
		32.503452, 35.338528, 36.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160465, 35.250824, 37.372005>,  <32.832756, 35.814713, 37.262825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160465, 35.250824, 37.372005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966866, 35.216232, 37.023693>,  <32.850704, 35.195477, 36.814705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966866, 35.216232, 37.023693>,  <33.160465, 35.250824, 37.372005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966866, 35.216232, 37.023693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854172, -0.262858, -0.448660,
		-0.190092, -0.960951, 0.201094,
		-0.483999, -0.086482, -0.870784,
		32.821667, 35.190289, 36.762459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691078, 34.726589, 37.356583>,  <33.160465, 35.250824, 37.372005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691078, 34.726589, 37.356583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761810, 34.971451, 37.664867>,  <33.804249, 35.118366, 37.849838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.761810, 34.971451, 37.664867>,  <33.691078, 34.726589, 37.356583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761810, 34.971451, 37.664867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940674, -0.125289, 0.315333,
		0.289594, -0.780751, 0.553681,
		0.176826, 0.612152, 0.770716,
		33.814857, 35.155098, 37.896084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302670, 35.004974, 37.010807>,  <33.691078, 34.726589, 37.356583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302670, 35.004974, 37.010807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504421, 34.691929, 37.156750>,  <34.625473, 34.504101, 37.244316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.504421, 34.691929, 37.156750>,  <34.302670, 35.004974, 37.010807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504421, 34.691929, 37.156750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207274, -0.300447, -0.931004,
		0.838236, 0.545203, 0.010676,
		0.504378, -0.782614, 0.364852,
		34.655735, 34.457146, 37.266205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006046, 35.255138, 36.852612>,  <34.302670, 35.004974, 37.010807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006046, 35.255138, 36.852612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303780, 35.476616, 36.703270>,  <35.482418, 35.609501, 36.613667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303780, 35.476616, 36.703270>,  <35.006046, 35.255138, 36.852612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303780, 35.476616, 36.703270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133818, 0.671398, 0.728915,
		0.654261, -0.492596, 0.573839,
		0.744335, 0.553691, -0.373352,
		35.527081, 35.642723, 36.591263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359043, 35.339611, 37.399612>,  <35.006046, 35.255138, 36.852612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359043, 35.339611, 37.399612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462471, 35.618488, 37.132160>,  <35.524529, 35.785812, 36.971687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462471, 35.618488, 37.132160>,  <35.359043, 35.339611, 37.399612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462471, 35.618488, 37.132160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014000, 0.689391, 0.724254,
		0.965891, -0.196633, 0.168496,
		0.258572, 0.697191, -0.668629,
		35.540043, 35.827644, 36.931572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965412, 35.797535, 37.785744>,  <35.359043, 35.339611, 37.399612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965412, 35.797535, 37.785744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797127, 36.000221, 37.484745>,  <35.696156, 36.121834, 37.304146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797127, 36.000221, 37.484745>,  <35.965412, 35.797535, 37.785744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797127, 36.000221, 37.484745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110624, 0.794627, 0.596934,
		0.900425, 0.334380, -0.278253,
		-0.420711, 0.506713, -0.752492,
		35.670914, 36.152237, 37.258999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407818, 36.340672, 37.679241>,  <35.965412, 35.797535, 37.785744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407818, 36.340672, 37.679241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048542, 36.468380, 37.558365>,  <35.832977, 36.545006, 37.485840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048542, 36.468380, 37.558365>,  <36.407818, 36.340672, 37.679241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048542, 36.468380, 37.558365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049298, 0.756230, 0.652447,
		0.436839, 0.571122, -0.694976,
		-0.898188, 0.319275, -0.302195,
		35.779087, 36.564163, 37.467705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444431, 36.985428, 37.819675>,  <36.407818, 36.340672, 37.679241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444431, 36.985428, 37.819675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057404, 36.948658, 37.725567>,  <35.825188, 36.926598, 37.669102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057404, 36.948658, 37.725567>,  <36.444431, 36.985428, 37.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057404, 36.948658, 37.725567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229011, 0.712227, 0.663542,
		0.106574, 0.695905, -0.710182,
		-0.967572, -0.091923, -0.235275,
		35.767132, 36.921082, 37.654984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232002, 37.654556, 37.612759>,  <36.444431, 36.985428, 37.819675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232002, 37.654556, 37.612759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907234, 37.467327, 37.752293>,  <35.712372, 37.354988, 37.836014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907234, 37.467327, 37.752293>,  <36.232002, 37.654556, 37.612759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907234, 37.467327, 37.752293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202382, 0.786198, 0.583896,
		-0.547561, 0.403481, -0.733062,
		-0.811923, -0.468077, 0.348834,
		35.663658, 37.326904, 37.856941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691425, 38.220509, 37.665989>,  <36.232002, 37.654556, 37.612759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691425, 38.220509, 37.665989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558929, 37.906731, 37.875725>,  <35.479431, 37.718464, 38.001568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558929, 37.906731, 37.875725>,  <35.691425, 38.220509, 37.665989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558929, 37.906731, 37.875725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420432, 0.620203, 0.662258,
		-0.844699, -0.001082, -0.535241,
		-0.331241, -0.784441, 0.524339,
		35.459557, 37.671398, 38.033028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130432, 38.555340, 38.033558>,  <35.691425, 38.220509, 37.665989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130432, 38.555340, 38.033558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161579, 38.206135, 38.226131>,  <35.180267, 37.996613, 38.341675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161579, 38.206135, 38.226131>,  <35.130432, 38.555340, 38.033558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161579, 38.206135, 38.226131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465439, 0.395210, 0.791944,
		-0.881648, -0.285748, -0.375560,
		0.077872, -0.873016, 0.481435,
		35.184940, 37.944229, 38.370564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498863, 38.399490, 38.308739>,  <35.130432, 38.555340, 38.033558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498863, 38.399490, 38.308739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771942, 38.222042, 38.540993>,  <34.935787, 38.115574, 38.680344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771942, 38.222042, 38.540993>,  <34.498863, 38.399490, 38.308739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771942, 38.222042, 38.540993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504432, 0.288772, 0.813732,
		-0.528657, -0.848417, -0.026633,
		0.682693, -0.443620, 0.580630,
		34.976749, 38.088955, 38.715183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041359, 38.019260, 38.840843>,  <34.498863, 38.399490, 38.308739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041359, 38.019260, 38.840843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410301, 38.042744, 38.993591>,  <34.631664, 38.056835, 39.085239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410301, 38.042744, 38.993591>,  <34.041359, 38.019260, 38.840843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410301, 38.042744, 38.993591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386246, 0.163279, 0.907829,
		-0.009054, -0.984832, 0.173277,
		0.922351, 0.058708, 0.381866,
		34.687008, 38.060356, 39.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993793, 37.757256, 39.471073>,  <34.041359, 38.019260, 38.840843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993793, 37.757256, 39.471073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337482, 37.954552, 39.525414>,  <34.543697, 38.072929, 39.558018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337482, 37.954552, 39.525414>,  <33.993793, 37.757256, 39.471073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337482, 37.954552, 39.525414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287574, 0.246004, 0.925626,
		0.423133, -0.834385, 0.353213,
		0.859221, 0.493238, 0.135855,
		34.595249, 38.102524, 39.566170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202618, 37.571484, 40.138279>,  <33.993793, 37.757256, 39.471073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202618, 37.571484, 40.138279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389488, 37.910789, 40.038532>,  <34.501610, 38.114372, 39.978683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389488, 37.910789, 40.038532>,  <34.202618, 37.571484, 40.138279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389488, 37.910789, 40.038532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122867, 0.341587, 0.931784,
		0.875585, -0.404670, 0.263806,
		0.467178, 0.848270, -0.249368,
		34.529640, 38.165272, 39.963722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530323, 37.708736, 40.707455>,  <34.202618, 37.571484, 40.138279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530323, 37.708736, 40.707455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558239, 38.065418, 40.528576>,  <34.574989, 38.279427, 40.421249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.558239, 38.065418, 40.528576>,  <34.530323, 37.708736, 40.707455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558239, 38.065418, 40.528576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071807, 0.442638, 0.893821,
		0.994974, -0.094495, -0.033137,
		0.069794, 0.891708, -0.447198,
		34.579178, 38.332932, 40.394417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972633, 38.136845, 41.123158>,  <34.530323, 37.708736, 40.707455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972633, 38.136845, 41.123158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770969, 38.413280, 40.915997>,  <34.649971, 38.579140, 40.791702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770969, 38.413280, 40.915997>,  <34.972633, 38.136845, 41.123158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770969, 38.413280, 40.915997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158905, 0.515218, 0.842199,
		0.848865, 0.506900, -0.149935,
		-0.504160, 0.691088, -0.517900,
		34.619720, 38.620605, 40.760628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222980, 38.802040, 41.428497>,  <34.972633, 38.136845, 41.123158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222980, 38.802040, 41.428497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886539, 38.893158, 41.232269>,  <34.684677, 38.947830, 41.114532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.886539, 38.893158, 41.232269>,  <35.222980, 38.802040, 41.428497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886539, 38.893158, 41.232269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218675, 0.686344, 0.693623,
		0.494704, 0.690682, -0.527471,
		-0.841100, 0.227793, -0.490572,
		34.634209, 38.961494, 41.085098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.210449, 39.528030, 41.334644>,  <35.222980, 38.802040, 41.428497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.210449, 39.528030, 41.334644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829571, 39.412567, 41.294647>,  <34.601044, 39.343288, 41.270649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829571, 39.412567, 41.294647>,  <35.210449, 39.528030, 41.334644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829571, 39.412567, 41.294647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264033, 0.612998, 0.744661,
		-0.153658, 0.735465, -0.659909,
		-0.952195, -0.288661, -0.099995,
		34.543911, 39.325970, 41.264648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705666, 40.113602, 41.277077>,  <35.210449, 39.528030, 41.334644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705666, 40.113602, 41.277077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475895, 39.813259, 41.407459>,  <34.338032, 39.633053, 41.485687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.475895, 39.813259, 41.407459>,  <34.705666, 40.113602, 41.277077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475895, 39.813259, 41.407459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272778, 0.551040, 0.788636,
		-0.771766, 0.364102, -0.521350,
		-0.574429, -0.750855, 0.325955,
		34.303566, 39.588001, 41.505245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050808, 40.431068, 41.416645>,  <34.705666, 40.113602, 41.277077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050808, 40.431068, 41.416645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029819, 40.078293, 41.604015>,  <34.017227, 39.866627, 41.716438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029819, 40.078293, 41.604015>,  <34.050808, 40.431068, 41.416645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029819, 40.078293, 41.604015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335671, 0.457357, 0.823498,
		-0.940517, -0.114030, -0.320040,
		-0.052469, -0.881942, 0.468428,
		34.014080, 39.813709, 41.744545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422409, 40.494350, 41.773720>,  <34.050808, 40.431068, 41.416645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422409, 40.494350, 41.773720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632984, 40.210785, 41.961468>,  <33.759327, 40.040646, 42.074116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632984, 40.210785, 41.961468>,  <33.422409, 40.494350, 41.773720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632984, 40.210785, 41.961468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222854, 0.417710, 0.880826,
		-0.820490, -0.568299, 0.061913,
		0.526434, -0.708911, 0.469374,
		33.790913, 39.998112, 42.102280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938931, 40.285583, 42.366024>,  <33.422409, 40.494350, 41.773720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938931, 40.285583, 42.366024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319386, 40.203495, 42.458302>,  <33.547661, 40.154243, 42.513668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.319386, 40.203495, 42.458302>,  <32.938931, 40.285583, 42.366024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319386, 40.203495, 42.458302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104983, 0.487698, 0.866677,
		-0.290366, -0.848550, 0.442325,
		0.951139, -0.205217, 0.230694,
		33.604729, 40.141930, 42.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860416, 39.931179, 42.965664>,  <32.938931, 40.285583, 42.366024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860416, 39.931179, 42.965664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240330, 40.055756, 42.977718>,  <33.468277, 40.130501, 42.984951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240330, 40.055756, 42.977718>,  <32.860416, 39.931179, 42.965664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240330, 40.055756, 42.977718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157542, 0.392763, 0.906045,
		0.270345, -0.865297, 0.422106,
		0.949786, 0.311444, 0.030139,
		33.525265, 40.149189, 42.986759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213287, 39.796169, 43.663212>,  <32.860416, 39.931179, 42.965664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213287, 39.796169, 43.663212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450268, 40.091797, 43.534973>,  <33.592457, 40.269173, 43.458031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450268, 40.091797, 43.534973>,  <33.213287, 39.796169, 43.663212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450268, 40.091797, 43.534973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130363, 0.480664, 0.867160,
		0.794992, -0.471952, 0.381115,
		0.592447, 0.739069, -0.320599,
		33.628002, 40.313519, 43.438793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745502, 39.871765, 44.142727>,  <33.213287, 39.796169, 43.663212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745502, 39.871765, 44.142727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734619, 40.225101, 43.955547>,  <33.728088, 40.437103, 43.843239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734619, 40.225101, 43.955547>,  <33.745502, 39.871765, 44.142727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734619, 40.225101, 43.955547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123759, 0.461545, 0.878442,
		0.991939, 0.081811, 0.096765,
		-0.027205, 0.883336, -0.467949,
		33.726460, 40.490101, 43.815163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097126, 40.383350, 44.690449>,  <33.745502, 39.871765, 44.142727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097126, 40.383350, 44.690449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934864, 40.662914, 44.454830>,  <33.837505, 40.830650, 44.313461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934864, 40.662914, 44.454830>,  <34.097126, 40.383350, 44.690449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934864, 40.662914, 44.454830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137413, 0.590492, 0.795259,
		0.903636, 0.403546, -0.143499,
		-0.405659, 0.698906, -0.589042,
		33.813168, 40.872585, 44.278118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448204, 41.078423, 44.815491>,  <34.097126, 40.383350, 44.690449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448204, 41.078423, 44.815491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079918, 41.138508, 44.671421>,  <33.858948, 41.174557, 44.584980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079918, 41.138508, 44.671421>,  <34.448204, 41.078423, 44.815491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079918, 41.138508, 44.671421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161330, 0.693877, 0.701789,
		0.355332, 0.704252, -0.614628,
		-0.920712, 0.150210, -0.360174,
		33.803703, 41.183571, 44.563370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382946, 41.713272, 44.476658>,  <34.448204, 41.078423, 44.815491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382946, 41.713272, 44.476658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007835, 41.651436, 44.601025>,  <33.782768, 41.614334, 44.675644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007835, 41.651436, 44.601025>,  <34.382946, 41.713272, 44.476658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007835, 41.651436, 44.601025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038617, 0.843436, 0.535840,
		-0.345079, 0.514507, -0.784986,
		-0.937779, -0.154593, 0.310920,
		33.726501, 41.605057, 44.694302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166737, 42.460976, 44.621101>,  <34.382946, 41.713272, 44.476658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166737, 42.460976, 44.621101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883888, 42.234119, 44.790016>,  <33.714180, 42.098003, 44.891365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883888, 42.234119, 44.790016>,  <34.166737, 42.460976, 44.621101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883888, 42.234119, 44.790016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095500, 0.668349, 0.737692,
		-0.700616, 0.481307, -0.526764,
		-0.707118, -0.567145, 0.422291,
		33.671753, 42.063976, 44.916702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483482, 42.761173, 44.603306>,  <34.166737, 42.460976, 44.621101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483482, 42.761173, 44.603306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475147, 42.515831, 44.919117>,  <33.470146, 42.368626, 45.108604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475147, 42.515831, 44.919117>,  <33.483482, 42.761173, 44.603306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475147, 42.515831, 44.919117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053442, 0.789257, 0.611733,
		-0.998354, -0.029445, -0.049229,
		-0.020842, -0.613356, 0.789531,
		33.468895, 42.331825, 45.155975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131859, 43.039047, 45.105206>,  <33.483482, 42.761173, 44.603306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131859, 43.039047, 45.105206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271221, 42.757481, 45.352791>,  <33.354839, 42.588539, 45.501343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271221, 42.757481, 45.352791>,  <33.131859, 43.039047, 45.105206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271221, 42.757481, 45.352791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120674, 0.621161, 0.774337,
		-0.929545, -0.344474, 0.131470,
		0.348403, -0.703915, 0.618966,
		33.375744, 42.546307, 45.538479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619835, 43.081882, 45.672390>,  <33.131859, 43.039047, 45.105206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619835, 43.081882, 45.672390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952850, 42.899464, 45.798180>,  <33.152660, 42.790012, 45.873653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.952850, 42.899464, 45.798180>,  <32.619835, 43.081882, 45.672390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.952850, 42.899464, 45.798180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000779, 0.566728, 0.823905,
		-0.553960, -0.686181, 0.471470,
		0.832543, -0.456043, 0.314479,
		33.202614, 42.762650, 45.892525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501839, 42.723236, 46.259655>,  <32.619835, 43.081882, 45.672390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501839, 42.723236, 46.259655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891594, 42.804619, 46.297981>,  <33.125446, 42.853451, 46.320976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891594, 42.804619, 46.297981>,  <32.501839, 42.723236, 46.259655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891594, 42.804619, 46.297981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163450, 0.348049, 0.923118,
		0.154468, -0.915132, 0.372389,
		0.974384, 0.203459, 0.095816,
		33.183910, 42.865658, 46.326725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573921, 42.778095, 47.006115>,  <32.501839, 42.723236, 46.259655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573921, 42.778095, 47.006115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936447, 42.903759, 46.893047>,  <33.153961, 42.979156, 46.825207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.936447, 42.903759, 46.893047>,  <32.573921, 42.778095, 47.006115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936447, 42.903759, 46.893047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128337, 0.432690, 0.892362,
		0.402645, -0.845038, 0.351836,
		0.906315, 0.314151, -0.282670,
		33.208340, 42.998005, 46.808247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018272, 42.536892, 47.499660>,  <32.573921, 42.778095, 47.006115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018272, 42.536892, 47.499660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207230, 42.842079, 47.323151>,  <33.320602, 43.025192, 47.217243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207230, 42.842079, 47.323151>,  <33.018272, 42.536892, 47.499660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207230, 42.842079, 47.323151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041288, 0.480954, 0.875773,
		0.880422, -0.431926, 0.195697,
		0.472391, 0.762970, -0.441276,
		33.348946, 43.070969, 47.190769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588776, 42.645737, 47.906235>,  <33.018272, 42.536892, 47.499660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588776, 42.645737, 47.906235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512901, 43.004387, 47.746197>,  <33.467377, 43.219578, 47.650173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512901, 43.004387, 47.746197>,  <33.588776, 42.645737, 47.906235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512901, 43.004387, 47.746197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320374, 0.441714, 0.838003,
		0.928106, 0.030774, -0.371042,
		-0.189683, 0.896628, -0.400098,
		33.455997, 43.273376, 47.626167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145947, 43.122932, 48.034924>,  <33.588776, 42.645737, 47.906235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145947, 43.122932, 48.034924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873814, 43.389954, 47.913918>,  <33.710533, 43.550167, 47.841312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873814, 43.389954, 47.913918>,  <34.145947, 43.122932, 48.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873814, 43.389954, 47.913918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266562, 0.609876, 0.746321,
		0.682705, 0.427110, -0.592866,
		-0.680336, 0.667553, -0.302514,
		33.669712, 43.590221, 47.823162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500717, 43.713348, 47.942657>,  <34.145947, 43.122932, 48.034924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500717, 43.713348, 47.942657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116604, 43.810383, 47.997810>,  <33.886135, 43.868603, 48.030903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116604, 43.810383, 47.997810>,  <34.500717, 43.713348, 47.942657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116604, 43.810383, 47.997810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255030, 0.562542, 0.786452,
		0.113216, 0.790380, -0.602065,
		-0.960282, 0.242583, 0.137882,
		33.828518, 43.883160, 48.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389816, 44.445232, 47.965572>,  <34.500717, 43.713348, 47.942657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389816, 44.445232, 47.965572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074123, 44.308117, 48.169380>,  <33.884708, 44.225849, 48.291664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074123, 44.308117, 48.169380>,  <34.389816, 44.445232, 47.965572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074123, 44.308117, 48.169380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208724, 0.630575, 0.747536,
		-0.577540, 0.696326, -0.426120,
		-0.789229, -0.342790, 0.509522,
		33.837353, 44.205280, 48.322235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248463, 44.990990, 48.334522>,  <34.389816, 44.445232, 47.965572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248463, 44.990990, 48.334522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022011, 44.708641, 48.504814>,  <33.886139, 44.539230, 48.606991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022011, 44.708641, 48.504814>,  <34.248463, 44.990990, 48.334522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022011, 44.708641, 48.504814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159138, 0.413157, 0.896647,
		-0.808810, 0.575367, -0.121568,
		-0.566128, -0.705871, 0.425728,
		33.852173, 44.496880, 48.632534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658161, 45.287678, 48.712448>,  <34.248463, 44.990990, 48.334522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658161, 45.287678, 48.712448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726059, 44.936234, 48.890987>,  <33.766800, 44.725365, 48.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726059, 44.936234, 48.890987>,  <33.658161, 45.287678, 48.712448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726059, 44.936234, 48.890987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035526, 0.447167, 0.893745,
		-0.984847, -0.167567, 0.044691,
		0.169746, -0.878614, 0.446344,
		33.776981, 44.672649, 49.024891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152714, 45.180473, 49.172520>,  <33.658161, 45.287678, 48.712448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152714, 45.180473, 49.172520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487766, 44.997898, 49.292542>,  <33.688797, 44.888351, 49.364555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487766, 44.997898, 49.292542>,  <33.152714, 45.180473, 49.172520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487766, 44.997898, 49.292542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149827, 0.336265, 0.929773,
		-0.525283, -0.823765, 0.213280,
		0.837633, -0.456439, 0.300057,
		33.739056, 44.860966, 49.382557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096558, 44.858765, 49.829414>,  <33.152714, 45.180473, 49.172520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096558, 44.858765, 49.829414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490673, 44.925957, 49.842007>,  <33.727142, 44.966270, 49.849560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490673, 44.925957, 49.842007>,  <33.096558, 44.858765, 49.829414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490673, 44.925957, 49.842007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101153, 0.424720, 0.899656,
		0.137755, -0.889604, 0.435463,
		0.985288, 0.167981, 0.031479,
		33.786259, 44.976353, 49.851452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214169, 44.865452, 50.594097>,  <33.096558, 44.858765, 49.829414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214169, 44.865452, 50.594097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517784, 45.028965, 50.391415>,  <33.699955, 45.127071, 50.269806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517784, 45.028965, 50.391415>,  <33.214169, 44.865452, 50.594097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517784, 45.028965, 50.391415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149147, 0.648424, 0.746527,
		0.633722, -0.642222, 0.431216,
		0.759047, 0.408776, -0.506706,
		33.745495, 45.151600, 50.239403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949020, 44.892677, 50.737904>,  <33.214169, 44.865452, 50.594097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949020, 44.892677, 50.737904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740459, 45.101204, 51.008121>,  <33.615322, 45.226318, 51.170254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740459, 45.101204, 51.008121>,  <33.949020, 44.892677, 50.737904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740459, 45.101204, 51.008121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091038, -0.753177, 0.651488,
		0.848440, 0.401189, 0.345249,
		-0.521403, 0.521318, 0.675549,
		33.584038, 45.257599, 51.210785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346867, 45.086838, 51.362728>,  <33.949020, 44.892677, 50.737904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346867, 45.086838, 51.362728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953529, 45.027122, 51.404186>,  <33.717525, 44.991291, 51.429062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.953529, 45.027122, 51.404186>,  <34.346867, 45.086838, 51.362728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953529, 45.027122, 51.404186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181729, -0.815446, 0.549566,
		0.002475, 0.559250, 0.828996,
		-0.983345, -0.149293, 0.103650,
		33.658527, 44.982334, 51.435280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515800, 44.827682, 52.042072>,  <34.346867, 45.086838, 51.362728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515800, 44.827682, 52.042072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191547, 44.755527, 51.819241>,  <33.996998, 44.712234, 51.685543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.191547, 44.755527, 51.819241>,  <34.515800, 44.827682, 52.042072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191547, 44.755527, 51.819241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031174, -0.936723, 0.348680,
		-0.584727, 0.300018, 0.753713,
		-0.810631, -0.180387, -0.557080,
		33.948357, 44.701412, 51.652115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085262, 44.468815, 52.394157>,  <34.515800, 44.827682, 52.042072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085262, 44.468815, 52.394157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868587, 44.416698, 52.061989>,  <33.738583, 44.385429, 51.862686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868587, 44.416698, 52.061989>,  <34.085262, 44.468815, 52.394157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868587, 44.416698, 52.061989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273255, -0.906963, 0.320547,
		-0.794926, 0.400553, 0.455686,
		-0.541686, -0.130292, -0.830421,
		33.706081, 44.377609, 51.812862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393326, 44.247601, 52.606834>,  <34.085262, 44.468815, 52.394157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393326, 44.247601, 52.606834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527645, 44.111385, 52.255547>,  <33.608238, 44.029655, 52.044773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527645, 44.111385, 52.255547>,  <33.393326, 44.247601, 52.606834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527645, 44.111385, 52.255547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066463, -0.938602, 0.338539,
		-0.939600, -0.055298, -0.337780,
		0.335761, -0.340541, -0.878235,
		33.628384, 44.009224, 51.992081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881210, 43.744862, 52.197144>,  <33.393326, 44.247601, 52.606834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881210, 43.744862, 52.197144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258453, 43.635567, 52.121372>,  <33.484798, 43.569988, 52.075909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258453, 43.635567, 52.121372>,  <32.881210, 43.744862, 52.197144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258453, 43.635567, 52.121372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194717, -0.915735, 0.351447,
		-0.269496, -0.294568, -0.916843,
		0.943110, -0.273239, -0.189430,
		33.541386, 43.553596, 52.064545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986740, 43.247791, 51.807182>,  <32.881210, 43.744862, 52.197144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986740, 43.247791, 51.807182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290123, 43.250504, 52.067856>,  <33.472153, 43.252132, 52.224258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290123, 43.250504, 52.067856>,  <32.986740, 43.247791, 51.807182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290123, 43.250504, 52.067856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415825, -0.764921, 0.491920,
		0.501823, -0.644088, -0.577342,
		0.758461, 0.006784, 0.651683,
		33.517662, 43.252537, 52.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290306, 42.696861, 51.474415>,  <32.986740, 43.247791, 51.807182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290306, 42.696861, 51.474415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421455, 42.923313, 51.171890>,  <33.500145, 43.059185, 50.990376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.421455, 42.923313, 51.171890>,  <33.290306, 42.696861, 51.474415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421455, 42.923313, 51.171890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443663, -0.799059, -0.405792,
		-0.834065, -0.202499, -0.513157,
		0.327871, 0.566126, -0.756309,
		33.519817, 43.093151, 50.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095444, 42.449455, 50.891426>,  <33.290306, 42.696861, 51.474415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095444, 42.449455, 50.891426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431507, 42.657398, 50.829613>,  <33.633144, 42.782162, 50.792526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.431507, 42.657398, 50.829613>,  <33.095444, 42.449455, 50.891426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431507, 42.657398, 50.829613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373905, -0.761618, -0.529276,
		-0.392841, 0.386897, -0.834259,
		0.840162, 0.519854, -0.154532,
		33.683556, 42.813354, 50.783253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267780, 42.386974, 50.179920>,  <33.095444, 42.449455, 50.891426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267780, 42.386974, 50.179920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615414, 42.498051, 50.343666>,  <33.823994, 42.564697, 50.441914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615414, 42.498051, 50.343666>,  <33.267780, 42.386974, 50.179920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615414, 42.498051, 50.343666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454700, -0.774330, -0.440068,
		0.194776, 0.568594, -0.799227,
		0.869086, 0.277694, 0.409361,
		33.876141, 42.581360, 50.466473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752151, 42.371063, 49.661453>,  <33.267780, 42.386974, 50.179920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752151, 42.371063, 49.661453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977562, 42.339157, 49.990349>,  <34.112808, 42.320011, 50.187687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977562, 42.339157, 49.990349>,  <33.752151, 42.371063, 49.661453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977562, 42.339157, 49.990349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585301, -0.663851, -0.465538,
		0.582981, 0.743599, -0.327405,
		0.563522, -0.079769, 0.822241,
		34.146618, 42.315228, 50.237022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523624, 42.293449, 49.393784>,  <33.752151, 42.371063, 49.661453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523624, 42.293449, 49.393784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543949, 42.145737, 49.764954>,  <34.556145, 42.057110, 49.987656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543949, 42.145737, 49.764954>,  <34.523624, 42.293449, 49.393784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543949, 42.145737, 49.764954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654175, -0.689750, -0.310323,
		0.754635, 0.622795, 0.206527,
		0.050815, -0.369285, 0.927926,
		34.559193, 42.034950, 50.043331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204018, 42.171143, 49.394051>,  <34.523624, 42.293449, 49.393784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204018, 42.171143, 49.394051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044754, 41.949886, 49.686764>,  <34.949196, 41.817131, 49.862392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044754, 41.949886, 49.686764>,  <35.204018, 42.171143, 49.394051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044754, 41.949886, 49.686764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582250, -0.768834, -0.264347,
		0.708841, 0.320829, 0.628182,
		-0.398158, -0.553139, 0.731784,
		34.925308, 41.783943, 49.906300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783352, 41.862659, 49.732330>,  <35.204018, 42.171143, 49.394051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783352, 41.862659, 49.732330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466637, 41.633652, 49.817459>,  <35.276608, 41.496246, 49.868534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466637, 41.633652, 49.817459>,  <35.783352, 41.862659, 49.732330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466637, 41.633652, 49.817459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544073, -0.819450, -0.180240,
		0.277586, -0.026923, 0.960323,
		-0.791790, -0.572518, 0.212820,
		35.229099, 41.461895, 49.881306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110397, 41.397610, 49.932156>,  <35.783352, 41.862659, 49.732330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110397, 41.397610, 49.932156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738064, 41.252628, 49.913483>,  <35.514664, 41.165642, 49.902279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738064, 41.252628, 49.913483>,  <36.110397, 41.397610, 49.932156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738064, 41.252628, 49.913483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364764, -0.913701, -0.179157,
		0.022280, -0.183795, 0.982712,
		-0.930833, -0.362450, -0.046685,
		35.458813, 41.143894, 49.899479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160603, 40.740715, 50.316914>,  <36.110397, 41.397610, 49.932156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160603, 40.740715, 50.316914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855873, 40.723454, 50.058376>,  <35.673035, 40.713097, 49.903255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855873, 40.723454, 50.058376>,  <36.160603, 40.740715, 50.316914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855873, 40.723454, 50.058376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363806, -0.854060, -0.371790,
		-0.535969, -0.518382, 0.666346,
		-0.761828, -0.043153, -0.646340,
		35.627323, 40.710506, 49.864475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940861, 40.026169, 50.286358>,  <36.160603, 40.740715, 50.316914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940861, 40.026169, 50.286358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803730, 40.201584, 49.954056>,  <35.721451, 40.306831, 49.754673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803730, 40.201584, 49.954056>,  <35.940861, 40.026169, 50.286358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803730, 40.201584, 49.954056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241596, -0.813444, -0.529093,
		-0.907801, -0.382094, 0.172921,
		-0.342825, 0.438534, -0.830758,
		35.700882, 40.333145, 49.704830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807877, 39.491917, 49.873932>,  <35.940861, 40.026169, 50.286358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807877, 39.491917, 49.873932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735550, 39.775875, 49.601654>,  <35.692154, 39.946251, 49.438286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735550, 39.775875, 49.601654>,  <35.807877, 39.491917, 49.873932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735550, 39.775875, 49.601654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259248, -0.633228, -0.729255,
		-0.948735, -0.308328, -0.069544,
		-0.180813, 0.709899, -0.680699,
		35.681305, 39.988846, 49.397446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408451, 39.216724, 49.397896>,  <35.807877, 39.491917, 49.873932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408451, 39.216724, 49.397896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564819, 39.525173, 49.196877>,  <35.658642, 39.710243, 49.076263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564819, 39.525173, 49.196877>,  <35.408451, 39.216724, 49.397896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564819, 39.525173, 49.196877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147323, -0.591380, -0.792821,
		-0.908558, 0.235892, -0.344786,
		0.390920, 0.771119, -0.502551,
		35.682095, 39.756508, 49.046112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066387, 39.260315, 48.644619>,  <35.408451, 39.216724, 49.397896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066387, 39.260315, 48.644619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410061, 39.464115, 48.625809>,  <35.616264, 39.586395, 48.614521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410061, 39.464115, 48.625809>,  <35.066387, 39.260315, 48.644619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410061, 39.464115, 48.625809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182542, -0.391095, -0.902066,
		-0.477994, 0.766457, -0.429028,
		0.859186, 0.509498, -0.047030,
		35.667816, 39.616966, 48.611698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995495, 39.735348, 48.038658>,  <35.066387, 39.260315, 48.644619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995495, 39.735348, 48.038658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379314, 39.665024, 48.126614>,  <35.609608, 39.622829, 48.179386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.379314, 39.665024, 48.126614>,  <34.995495, 39.735348, 48.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379314, 39.665024, 48.126614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194187, -0.152211, -0.969084,
		0.203840, 0.972586, -0.111915,
		0.959552, -0.175806, 0.219891,
		35.667179, 39.612282, 48.192581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337284, 40.092472, 47.518909>,  <34.995495, 39.735348, 48.038658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337284, 40.092472, 47.518909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595608, 39.831028, 47.676758>,  <35.750603, 39.674160, 47.771465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.595608, 39.831028, 47.676758>,  <35.337284, 40.092472, 47.518909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595608, 39.831028, 47.676758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339582, -0.217023, -0.915197,
		0.683823, 0.725049, 0.081798,
		0.645810, -0.653609, 0.394619,
		35.789352, 39.634945, 47.795143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045555, 40.259186, 47.198776>,  <35.337284, 40.092472, 47.518909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045555, 40.259186, 47.198776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028027, 39.878895, 47.321537>,  <36.017509, 39.650719, 47.395195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028027, 39.878895, 47.321537>,  <36.045555, 40.259186, 47.198776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028027, 39.878895, 47.321537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190895, -0.309507, -0.931539,
		0.980632, 0.017765, 0.195053,
		-0.043821, -0.950731, 0.306904,
		36.014881, 39.593674, 47.413609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261909, 39.997581, 46.621296>,  <36.045555, 40.259186, 47.198776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261909, 39.997581, 46.621296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167397, 39.667202, 46.826031>,  <36.110691, 39.468975, 46.948872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167397, 39.667202, 46.826031>,  <36.261909, 39.997581, 46.621296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167397, 39.667202, 46.826031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015797, -0.529951, -0.847881,
		0.971557, -0.192250, 0.138263,
		-0.236278, -0.825949, 0.511840,
		36.096512, 39.419418, 46.979584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812958, 39.426609, 46.516613>,  <36.261909, 39.997581, 46.621296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812958, 39.426609, 46.516613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474251, 39.238586, 46.616234>,  <36.271027, 39.125771, 46.676006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.474251, 39.238586, 46.616234>,  <36.812958, 39.426609, 46.516613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474251, 39.238586, 46.616234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050106, -0.536567, -0.842369,
		0.529595, -0.700813, 0.477902,
		-0.846769, -0.470060, 0.249048,
		36.220219, 39.097569, 46.690948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956886, 38.700768, 46.526798>,  <36.812958, 39.426609, 46.516613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956886, 38.700768, 46.526798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562584, 38.735981, 46.469475>,  <36.326004, 38.757111, 46.435081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562584, 38.735981, 46.469475>,  <36.956886, 38.700768, 46.526798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562584, 38.735981, 46.469475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015353, -0.801418, -0.597908,
		-0.167484, -0.591591, 0.788650,
		-0.985755, 0.088032, -0.143307,
		36.266857, 38.762390, 46.426483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640110, 38.043449, 46.435772>,  <36.956886, 38.700768, 46.526798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640110, 38.043449, 46.435772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355843, 38.265377, 46.262741>,  <36.185284, 38.398533, 46.158924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355843, 38.265377, 46.262741>,  <36.640110, 38.043449, 46.435772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355843, 38.265377, 46.262741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082367, -0.676256, -0.732047,
		-0.698699, -0.484605, 0.526287,
		-0.710658, 0.554829, -0.432584,
		36.142643, 38.431824, 46.132969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223370, 37.599762, 46.138966>,  <36.640110, 38.043449, 46.435772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223370, 37.599762, 46.138966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087891, 37.934193, 45.966335>,  <36.006603, 38.134853, 45.862759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087891, 37.934193, 45.966335>,  <36.223370, 37.599762, 46.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087891, 37.934193, 45.966335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071513, -0.480232, -0.874222,
		-0.938172, -0.265237, 0.222445,
		-0.338701, 0.836078, -0.431572,
		35.986279, 38.185017, 45.836864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594250, 37.391777, 45.840214>,  <36.223370, 37.599762, 46.138966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594250, 37.391777, 45.840214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725704, 37.706875, 45.631809>,  <35.804577, 37.895935, 45.506767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725704, 37.706875, 45.631809>,  <35.594250, 37.391777, 45.840214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725704, 37.706875, 45.631809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232844, -0.467050, -0.853023,
		-0.915303, 0.401651, 0.029931,
		0.328638, 0.787744, -0.521015,
		35.824295, 37.943199, 45.475506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139473, 37.401833, 45.255188>,  <35.594250, 37.391777, 45.840214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139473, 37.401833, 45.255188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440502, 37.644901, 45.153698>,  <35.621120, 37.790741, 45.092804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440502, 37.644901, 45.153698>,  <35.139473, 37.401833, 45.255188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440502, 37.644901, 45.153698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062289, -0.317877, -0.946084,
		-0.655561, 0.727797, -0.201373,
		0.752569, 0.607672, -0.253722,
		35.666271, 37.827202, 45.077583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964832, 37.686501, 44.579868>,  <35.139473, 37.401833, 45.255188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964832, 37.686501, 44.579868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361916, 37.728279, 44.603939>,  <35.600166, 37.753345, 44.618382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361916, 37.728279, 44.603939>,  <34.964832, 37.686501, 44.579868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361916, 37.728279, 44.603939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103135, -0.477571, -0.872519,
		-0.062390, 0.872364, -0.484860,
		0.992709, 0.104443, 0.060176,
		35.659729, 37.759613, 44.621990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143520, 37.973801, 43.915310>,  <34.964832, 37.686501, 44.579868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143520, 37.973801, 43.915310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480724, 37.808437, 44.052963>,  <35.683048, 37.709221, 44.135555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480724, 37.808437, 44.052963>,  <35.143520, 37.973801, 43.915310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480724, 37.808437, 44.052963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184174, -0.379264, -0.906774,
		0.505385, 0.827800, -0.243584,
		0.843010, -0.413408, 0.344133,
		35.733627, 37.684414, 44.156204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540268, 38.170574, 43.351303>,  <35.143520, 37.973801, 43.915310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540268, 38.170574, 43.351303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752487, 37.896954, 43.551544>,  <35.879818, 37.732780, 43.671688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752487, 37.896954, 43.551544>,  <35.540268, 38.170574, 43.351303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752487, 37.896954, 43.551544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204755, -0.469661, -0.858775,
		0.822555, 0.558119, -0.109114,
		0.530545, -0.684048, 0.500600,
		35.911652, 37.691738, 43.701725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115101, 38.184757, 43.055824>,  <35.540268, 38.170574, 43.351303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115101, 38.184757, 43.055824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096344, 37.822124, 43.223591>,  <36.085091, 37.604546, 43.324249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096344, 37.822124, 43.223591>,  <36.115101, 38.184757, 43.055824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096344, 37.822124, 43.223591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289562, -0.414186, -0.862904,
		0.956010, 0.080987, 0.281932,
		-0.046889, -0.906582, 0.419417,
		36.082279, 37.550148, 43.349415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699249, 37.852558, 42.830093>,  <36.115101, 38.184757, 43.055824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699249, 37.852558, 42.830093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473381, 37.548264, 42.958111>,  <36.337860, 37.365688, 43.034924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473381, 37.548264, 42.958111>,  <36.699249, 37.852558, 42.830093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473381, 37.548264, 42.958111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280463, -0.541580, -0.792485,
		0.776204, -0.357727, 0.519170,
		-0.564666, -0.760738, 0.320048,
		36.303982, 37.320042, 43.054127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127014, 37.301151, 42.765003>,  <36.699249, 37.852558, 42.830093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127014, 37.301151, 42.765003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759254, 37.144714, 42.781780>,  <36.538601, 37.050854, 42.791847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759254, 37.144714, 42.781780>,  <37.127014, 37.301151, 42.765003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759254, 37.144714, 42.781780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231215, -0.623630, -0.746743,
		0.318203, -0.676854, 0.663789,
		-0.919395, -0.391094, 0.041943,
		36.483437, 37.027386, 42.794361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195019, 36.599899, 42.789555>,  <37.127014, 37.301151, 42.765003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195019, 36.599899, 42.789555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820972, 36.645134, 42.655228>,  <36.596546, 36.672276, 42.574631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820972, 36.645134, 42.655228>,  <37.195019, 36.599899, 42.789555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820972, 36.645134, 42.655228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153229, -0.725472, -0.670978,
		-0.319509, -0.678897, 0.661069,
		-0.935112, 0.113089, -0.335822,
		36.540440, 36.679062, 42.554482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029186, 35.909908, 42.625072>,  <37.195019, 36.599899, 42.789555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029186, 35.909908, 42.625072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753593, 36.132191, 42.438957>,  <36.588238, 36.265560, 42.327286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753593, 36.132191, 42.438957>,  <37.029186, 35.909908, 42.625072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753593, 36.132191, 42.438957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099573, -0.563318, -0.820219,
		-0.717907, -0.611446, 0.332782,
		-0.688981, 0.555705, -0.465293,
		36.546898, 36.298901, 42.299370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668480, 35.447048, 42.227634>,  <37.029186, 35.909908, 42.625072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668480, 35.447048, 42.227634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575417, 35.797123, 42.057968>,  <36.519577, 36.007168, 41.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575417, 35.797123, 42.057968>,  <36.668480, 35.447048, 42.227634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575417, 35.797123, 42.057968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036501, -0.427968, -0.903057,
		-0.971873, -0.225586, 0.067626,
		-0.232658, 0.875188, -0.424165,
		36.505619, 36.059681, 41.930717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088829, 35.287197, 41.769581>,  <36.668480, 35.447048, 42.227634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088829, 35.287197, 41.769581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246365, 35.632748, 41.643974>,  <36.340885, 35.840080, 41.568611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246365, 35.632748, 41.643974>,  <36.088829, 35.287197, 41.769581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246365, 35.632748, 41.643974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000592, -0.341386, -0.939923,
		-0.919179, 0.370364, -0.133940,
		0.393839, 0.863878, -0.314014,
		36.364517, 35.891911, 41.549770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587681, 35.511436, 41.349182>,  <36.088829, 35.287197, 41.769581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587681, 35.511436, 41.349182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939480, 35.678642, 41.258190>,  <36.150558, 35.778965, 41.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939480, 35.678642, 41.258190>,  <35.587681, 35.511436, 41.349182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939480, 35.678642, 41.258190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115013, -0.277136, -0.953922,
		-0.461797, 0.865135, -0.195663,
		0.879497, 0.418015, -0.227482,
		36.203327, 35.804047, 41.189945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510380, 35.677364, 40.691605>,  <35.587681, 35.511436, 41.349182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510380, 35.677364, 40.691605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906509, 35.704395, 40.740093>,  <36.144188, 35.720615, 40.769184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.906509, 35.704395, 40.740093>,  <35.510380, 35.677364, 40.691605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906509, 35.704395, 40.740093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137865, -0.378668, -0.915207,
		-0.015946, 0.923062, -0.384320,
		0.990323, 0.067579, 0.121219,
		36.203606, 35.724670, 40.776459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790108, 35.817440, 40.010056>,  <35.510380, 35.677364, 40.691605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790108, 35.817440, 40.010056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109989, 35.677181, 40.204998>,  <36.301918, 35.593025, 40.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109989, 35.677181, 40.204998>,  <35.790108, 35.817440, 40.010056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109989, 35.677181, 40.204998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171309, -0.644723, -0.744974,
		0.575433, 0.679249, -0.455520,
		0.799706, -0.350647, 0.487356,
		36.349899, 35.571987, 40.351204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291451, 35.922478, 39.554630>,  <35.790108, 35.817440, 40.010056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291451, 35.922478, 39.554630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403831, 35.634747, 39.808758>,  <36.471260, 35.462109, 39.961235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403831, 35.634747, 39.808758>,  <36.291451, 35.922478, 39.554630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403831, 35.634747, 39.808758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383820, -0.522526, -0.761347,
		0.879630, 0.457751, 0.129288,
		0.280951, -0.719327, 0.635323,
		36.488117, 35.418949, 39.999355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974064, 35.771889, 39.430515>,  <36.291451, 35.922478, 39.554630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974064, 35.771889, 39.430515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844128, 35.431946, 39.596512>,  <36.766167, 35.227978, 39.696110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844128, 35.431946, 39.596512>,  <36.974064, 35.771889, 39.430515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844128, 35.431946, 39.596512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527522, -0.527002, -0.666325,
		0.784983, 0.002464, 0.619513,
		-0.324843, -0.849860, 0.414988,
		36.746674, 35.176987, 39.721008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579842, 35.347549, 39.311321>,  <36.974064, 35.771889, 39.430515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579842, 35.347549, 39.311321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299770, 35.078541, 39.407200>,  <37.131725, 34.917133, 39.464729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299770, 35.078541, 39.407200>,  <37.579842, 35.347549, 39.311321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299770, 35.078541, 39.407200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477843, -0.690868, -0.542556,
		0.530484, -0.265349, 0.805094,
		-0.700181, -0.672526, 0.239700,
		37.089718, 34.876781, 39.479111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985264, 34.816425, 39.457325>,  <37.579842, 35.347549, 39.311321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985264, 34.816425, 39.457325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626293, 34.643642, 39.421448>,  <37.410912, 34.539974, 39.399921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626293, 34.643642, 39.421448>,  <37.985264, 34.816425, 39.457325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626293, 34.643642, 39.421448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411512, -0.746334, -0.523110,
		0.159020, -0.506361, 0.847532,
		-0.897424, -0.431954, -0.089692,
		37.357067, 34.514057, 39.394539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136726, 34.104225, 39.643394>,  <37.985264, 34.816425, 39.457325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136726, 34.104225, 39.643394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813046, 34.162159, 39.415638>,  <37.618835, 34.196918, 39.278984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.813046, 34.162159, 39.415638>,  <38.136726, 34.104225, 39.643394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.813046, 34.162159, 39.415638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258347, -0.782702, -0.566246,
		-0.527679, -0.605310, 0.595948,
		-0.809204, 0.144835, -0.569396,
		37.570286, 34.205608, 39.244820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836781, 34.570744, 40.111237>,  <38.136726, 34.104225, 39.643394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836781, 34.570744, 40.111237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197094, 34.684364, 39.979839>,  <38.413280, 34.752537, 39.901001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.197094, 34.684364, 39.979839>,  <37.836781, 34.570744, 40.111237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197094, 34.684364, 39.979839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367723, -0.096508, 0.924914,
		0.231021, -0.953940, -0.191385,
		0.900783, 0.284051, -0.328490,
		38.467327, 34.769581, 39.881294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359882, 34.193253, 40.554234>,  <37.836781, 34.570744, 40.111237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359882, 34.193253, 40.554234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516853, 34.528782, 40.403297>,  <38.611034, 34.730099, 40.312737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.516853, 34.528782, 40.403297>,  <38.359882, 34.193253, 40.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516853, 34.528782, 40.403297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474121, 0.167071, 0.864463,
		0.788171, -0.518141, -0.332139,
		0.392423, 0.838819, -0.377342,
		38.634579, 34.780426, 40.290096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952950, 34.205383, 40.943386>,  <38.359882, 34.193253, 40.554234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952950, 34.205383, 40.943386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912369, 34.578888, 40.806103>,  <38.888020, 34.802990, 40.723732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912369, 34.578888, 40.806103>,  <38.952950, 34.205383, 40.943386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912369, 34.578888, 40.806103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395075, 0.354433, 0.847521,
		0.913030, -0.049613, -0.404864,
		-0.101449, 0.933764, -0.343209,
		38.881935, 34.859016, 40.703140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677696, 34.529324, 40.952118>,  <38.952950, 34.205383, 40.943386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677696, 34.529324, 40.952118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382198, 34.798119, 40.972851>,  <39.204899, 34.959396, 40.985291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382198, 34.798119, 40.972851>,  <39.677696, 34.529324, 40.952118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382198, 34.798119, 40.972851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339655, 0.304769, 0.889804,
		0.582141, 0.674943, -0.453391,
		-0.738746, 0.671988, 0.051829,
		39.160576, 34.999714, 40.988400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948673, 35.044121, 41.210106>,  <39.677696, 34.529324, 40.952118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948673, 35.044121, 41.210106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570946, 35.160072, 41.272369>,  <39.344307, 35.229641, 41.309727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570946, 35.160072, 41.272369>,  <39.948673, 35.044121, 41.210106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570946, 35.160072, 41.272369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283236, 0.475416, 0.832921,
		0.167440, 0.830633, -0.531049,
		-0.944320, 0.289877, 0.155662,
		39.287651, 35.247036, 41.319069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928230, 35.802410, 41.371891>,  <39.948673, 35.044121, 41.210106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928230, 35.802410, 41.371891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590157, 35.643978, 41.515442>,  <39.387314, 35.548920, 41.601570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.590157, 35.643978, 41.515442>,  <39.928230, 35.802410, 41.371891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590157, 35.643978, 41.515442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127483, 0.502678, 0.855022,
		-0.519054, 0.768399, -0.374361,
		-0.845181, -0.396078, 0.358875,
		39.336601, 35.525154, 41.623104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585697, 36.418560, 41.709377>,  <39.928230, 35.802410, 41.371891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585697, 36.418560, 41.709377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409229, 36.085358, 41.842922>,  <39.303349, 35.885437, 41.923050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409229, 36.085358, 41.842922>,  <39.585697, 36.418560, 41.709377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409229, 36.085358, 41.842922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053381, 0.347007, 0.936342,
		-0.895833, 0.430911, -0.108623,
		-0.441173, -0.833008, 0.333863,
		39.276878, 35.835457, 41.943081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135597, 36.678406, 42.027943>,  <39.585697, 36.418560, 41.709377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135597, 36.678406, 42.027943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180702, 36.306362, 42.167763>,  <39.207764, 36.083138, 42.251656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180702, 36.306362, 42.167763>,  <39.135597, 36.678406, 42.027943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180702, 36.306362, 42.167763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338644, 0.366709, 0.866513,
		-0.934133, 0.020664, 0.356325,
		0.112762, -0.930106, 0.349553,
		39.214531, 36.027328, 42.272629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608658, 36.552227, 42.549892>,  <39.135597, 36.678406, 42.027943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608658, 36.552227, 42.549892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888737, 36.277519, 42.627941>,  <39.056786, 36.112694, 42.674770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.888737, 36.277519, 42.627941>,  <38.608658, 36.552227, 42.549892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888737, 36.277519, 42.627941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010216, 0.282907, 0.959093,
		-0.713875, -0.669562, 0.205107,
		0.700199, -0.686768, 0.195120,
		39.098797, 36.071487, 42.686478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394897, 36.166164, 43.104527>,  <38.608658, 36.552227, 42.549892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394897, 36.166164, 43.104527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784191, 36.074406, 43.109943>,  <39.017769, 36.019348, 43.113194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784191, 36.074406, 43.109943>,  <38.394897, 36.166164, 43.104527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784191, 36.074406, 43.109943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060198, 0.311371, 0.948380,
		-0.221774, -0.922184, 0.316848,
		0.973239, -0.229400, 0.013541,
		39.076164, 36.005585, 43.114006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524872, 35.760029, 43.655842>,  <38.394897, 36.166164, 43.104527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524872, 35.760029, 43.655842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890030, 35.908356, 43.587589>,  <39.109123, 35.997353, 43.546638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890030, 35.908356, 43.587589>,  <38.524872, 35.760029, 43.655842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890030, 35.908356, 43.587589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097109, 0.208729, 0.973140,
		0.396476, -0.904945, 0.154537,
		0.912895, 0.370819, -0.170635,
		39.163898, 36.019600, 43.536400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950695, 35.450016, 44.168221>,  <38.524872, 35.760029, 43.655842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950695, 35.450016, 44.168221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121758, 35.785404, 44.033115>,  <39.224396, 35.986637, 43.952053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121758, 35.785404, 44.033115>,  <38.950695, 35.450016, 44.168221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121758, 35.785404, 44.033115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106799, 0.324172, 0.939950,
		0.897612, -0.438044, 0.049085,
		0.427652, 0.838469, -0.337763,
		39.250053, 36.036945, 43.931786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393818, 35.600956, 44.664837>,  <38.950695, 35.450016, 44.168221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393818, 35.600956, 44.664837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364063, 35.946056, 44.464783>,  <39.346210, 36.153114, 44.344749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364063, 35.946056, 44.464783>,  <39.393818, 35.600956, 44.664837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364063, 35.946056, 44.464783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058341, 0.504428, 0.861480,
		0.995521, 0.034905, -0.087856,
		-0.074387, 0.862748, -0.500132,
		39.341747, 36.204880, 44.314743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816517, 36.070843, 45.047096>,  <39.393818, 35.600956, 44.664837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816517, 36.070843, 45.047096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564560, 36.295227, 44.832226>,  <39.413387, 36.429859, 44.703304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564560, 36.295227, 44.832226>,  <39.816517, 36.070843, 45.047096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564560, 36.295227, 44.832226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110046, 0.620192, 0.776693,
		0.768846, 0.548348, -0.328923,
		-0.629893, 0.560961, -0.537175,
		39.375591, 36.463516, 44.671074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144779, 36.717606, 45.101833>,  <39.816517, 36.070843, 45.047096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144779, 36.717606, 45.101833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753319, 36.744930, 45.024307>,  <39.518440, 36.761326, 44.977791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753319, 36.744930, 45.024307>,  <40.144779, 36.717606, 45.101833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753319, 36.744930, 45.024307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091831, 0.698355, 0.709836,
		0.183848, 0.712483, -0.677176,
		-0.978655, 0.068316, -0.193820,
		39.459721, 36.765427, 44.966160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957794, 37.405930, 45.005726>,  <40.144779, 36.717606, 45.101833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957794, 37.405930, 45.005726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602211, 37.246284, 45.095585>,  <39.388863, 37.150497, 45.149502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602211, 37.246284, 45.095585>,  <39.957794, 37.405930, 45.005726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602211, 37.246284, 45.095585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057870, 0.584464, 0.809353,
		-0.454324, 0.706478, -0.542659,
		-0.888955, -0.399113, 0.224652,
		39.335526, 37.126553, 45.162979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442768, 38.026234, 45.046658>,  <39.957794, 37.405930, 45.005726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442768, 38.026234, 45.046658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306644, 37.720833, 45.266201>,  <39.224968, 37.537590, 45.397926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306644, 37.720833, 45.266201>,  <39.442768, 38.026234, 45.046658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306644, 37.720833, 45.266201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424813, 0.645573, 0.634641,
		-0.838882, -0.017188, -0.544042,
		-0.340311, -0.763505, 0.548861,
		39.204552, 37.491783, 45.430859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761089, 38.254662, 45.224850>,  <39.442768, 38.026234, 45.046658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761089, 38.254662, 45.224850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815773, 37.947468, 45.475132>,  <38.848583, 37.763153, 45.625301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.815773, 37.947468, 45.475132>,  <38.761089, 38.254662, 45.224850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815773, 37.947468, 45.475132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453087, 0.513223, 0.728914,
		-0.880922, -0.383148, -0.277802,
		0.136707, -0.767984, 0.625708,
		38.856785, 37.717072, 45.662846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196922, 38.305271, 45.674751>,  <38.761089, 38.254662, 45.224850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196922, 38.305271, 45.674751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432449, 38.055187, 45.879654>,  <38.573765, 37.905136, 46.002598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432449, 38.055187, 45.879654>,  <38.196922, 38.305271, 45.674751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432449, 38.055187, 45.879654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293019, 0.425546, 0.856184,
		-0.753285, -0.654235, 0.067369,
		0.588814, -0.625210, 0.512261,
		38.609093, 37.867626, 46.033333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764465, 37.924595, 46.215225>,  <38.196922, 38.305271, 45.674751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764465, 37.924595, 46.215225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138805, 37.909630, 46.355392>,  <38.363407, 37.900650, 46.439491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138805, 37.909630, 46.355392>,  <37.764465, 37.924595, 46.215225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138805, 37.909630, 46.355392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320650, 0.322103, 0.890749,
		-0.146197, -0.945965, 0.289442,
		0.935847, -0.037415, 0.350415,
		38.419559, 37.898407, 46.460518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600994, 37.687923, 46.859653>,  <37.764465, 37.924595, 46.215225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600994, 37.687923, 46.859653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969219, 37.843819, 46.869968>,  <38.190155, 37.937355, 46.876156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969219, 37.843819, 46.869968>,  <37.600994, 37.687923, 46.859653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969219, 37.843819, 46.869968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245947, 0.527116, 0.813424,
		0.303425, -0.755153, 0.581100,
		0.920566, 0.389733, 0.025787,
		38.245388, 37.960739, 46.877705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730125, 37.625515, 47.612061>,  <37.600994, 37.687923, 46.859653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730125, 37.625515, 47.612061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969589, 37.891956, 47.434109>,  <38.113266, 38.051823, 47.327339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969589, 37.891956, 47.434109>,  <37.730125, 37.625515, 47.612061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969589, 37.891956, 47.434109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055936, 0.588810, 0.806334,
		0.799051, -0.457831, 0.389754,
		0.598656, 0.666103, -0.444880,
		38.149185, 38.091785, 47.300644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100266, 37.791416, 48.166416>,  <37.730125, 37.625515, 47.612061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100266, 37.791416, 48.166416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134232, 38.090137, 47.902576>,  <38.154610, 38.269371, 47.744274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134232, 38.090137, 47.902576>,  <38.100266, 37.791416, 48.166416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134232, 38.090137, 47.902576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158954, 0.663666, 0.730945,
		0.983628, 0.042780, 0.175061,
		0.084913, 0.746805, -0.659600,
		38.159706, 38.314178, 47.704697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769287, 38.277252, 48.303204>,  <38.100266, 37.791416, 48.166416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769287, 38.277252, 48.303204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490940, 38.497551, 48.118839>,  <38.323933, 38.629730, 48.008221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.490940, 38.497551, 48.118839>,  <38.769287, 38.277252, 48.303204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490940, 38.497551, 48.118839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067717, 0.689247, 0.721355,
		0.714966, 0.470759, -0.516923,
		-0.695872, 0.550749, -0.460910,
		38.282177, 38.662777, 47.980568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028507, 38.945198, 48.534111>,  <38.769287, 38.277252, 48.303204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028507, 38.945198, 48.534111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656212, 39.019085, 48.407864>,  <38.432835, 39.063416, 48.332115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656212, 39.019085, 48.407864>,  <39.028507, 38.945198, 48.534111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656212, 39.019085, 48.407864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103223, 0.695270, 0.711298,
		0.350827, 0.694608, -0.628045,
		-0.930734, 0.184714, -0.315619,
		38.376991, 39.074497, 48.313179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890549, 39.632011, 48.441437>,  <39.028507, 38.945198, 48.534111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890549, 39.632011, 48.441437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529484, 39.475113, 48.512260>,  <38.312847, 39.380974, 48.554752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529484, 39.475113, 48.512260>,  <38.890549, 39.632011, 48.441437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529484, 39.475113, 48.512260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135340, 0.649275, 0.748415,
		-0.408521, 0.651601, -0.639160,
		-0.902659, -0.392248, 0.177055,
		38.258686, 39.357437, 48.565376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455322, 40.190613, 48.700436>,  <38.890549, 39.632011, 48.441437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455322, 40.190613, 48.700436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247787, 39.863792, 48.801018>,  <38.123268, 39.667698, 48.861366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247787, 39.863792, 48.801018>,  <38.455322, 40.190613, 48.700436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247787, 39.863792, 48.801018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282936, 0.441688, 0.851386,
		-0.806694, 0.370584, -0.460338,
		-0.518836, -0.817055, 0.251455,
		38.092136, 39.618675, 48.876453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814568, 40.456146, 48.871220>,  <38.455322, 40.190613, 48.700436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814568, 40.456146, 48.871220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845341, 40.105850, 49.061867>,  <37.863804, 39.895672, 49.176254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845341, 40.105850, 49.061867>,  <37.814568, 40.456146, 48.871220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845341, 40.105850, 49.061867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411150, 0.407631, 0.815348,
		-0.908316, -0.258684, -0.328702,
		0.076928, -0.875740, 0.476615,
		37.868420, 39.843128, 49.204853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198116, 40.358967, 49.277287>,  <37.814568, 40.456146, 48.871220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198116, 40.358967, 49.277287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465195, 40.114784, 49.447712>,  <37.625443, 39.968273, 49.549965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.465195, 40.114784, 49.447712>,  <37.198116, 40.358967, 49.277287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465195, 40.114784, 49.447712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336748, 0.262749, 0.904192,
		-0.663919, -0.747197, -0.030136,
		0.667692, -0.610459, 0.426061,
		37.665501, 39.931648, 49.575531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804409, 40.019352, 49.929852>,  <37.198116, 40.358967, 49.277287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804409, 40.019352, 49.929852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199284, 39.987305, 49.985039>,  <37.436211, 39.968075, 50.018150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199284, 39.987305, 49.985039>,  <36.804409, 40.019352, 49.929852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199284, 39.987305, 49.985039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087705, 0.449833, 0.888796,
		-0.133273, -0.889512, 0.437044,
		0.987191, -0.080122, 0.137965,
		37.495441, 39.963268, 50.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963810, 39.821671, 50.675358>,  <36.804409, 40.019352, 49.929852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963810, 39.821671, 50.675358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325333, 39.952480, 50.564945>,  <37.542244, 40.030964, 50.498699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325333, 39.952480, 50.564945>,  <36.963810, 39.821671, 50.675358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325333, 39.952480, 50.564945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045164, 0.568522, 0.821428,
		0.425553, -0.754877, 0.499063,
		0.903806, 0.327021, -0.276030,
		37.596474, 40.050587, 50.482136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401402, 39.661968, 51.194855>,  <36.963810, 39.821671, 50.675358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401402, 39.661968, 51.194855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537468, 39.971043, 50.980476>,  <37.619106, 40.156487, 50.851849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537468, 39.971043, 50.980476>,  <37.401402, 39.661968, 51.194855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537468, 39.971043, 50.980476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055560, 0.585453, 0.808800,
		0.938724, -0.245346, 0.242079,
		0.340162, 0.772690, -0.535948,
		37.639515, 40.202850, 50.819691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932823, 40.013058, 51.616459>,  <37.401402, 39.661968, 51.194855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932823, 40.013058, 51.616459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772652, 40.270397, 51.355461>,  <37.676548, 40.424801, 51.198860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772652, 40.270397, 51.355461>,  <37.932823, 40.013058, 51.616459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772652, 40.270397, 51.355461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110986, 0.672784, 0.731467,
		0.909581, 0.365320, -0.198000,
		-0.400431, 0.643353, -0.652497,
		37.652523, 40.463402, 51.159714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271172, 40.591621, 51.784988>,  <37.932823, 40.013058, 51.616459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271172, 40.591621, 51.784988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960594, 40.711369, 51.563175>,  <37.774246, 40.783215, 51.430088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960594, 40.711369, 51.563175>,  <38.271172, 40.591621, 51.784988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960594, 40.711369, 51.563175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138936, 0.776991, 0.613989,
		0.614677, 0.553774, -0.561699,
		-0.776446, 0.299365, -0.554537,
		37.727661, 40.801178, 51.396812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337101, 41.342140, 51.765476>,  <38.271172, 40.591621, 51.784988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337101, 41.342140, 51.765476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957310, 41.262447, 51.668480>,  <37.729435, 41.214630, 51.610283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957310, 41.262447, 51.668480>,  <38.337101, 41.342140, 51.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957310, 41.262447, 51.668480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284490, 0.872632, 0.396963,
		0.132521, 0.445893, -0.885221,
		-0.949476, -0.199231, -0.242494,
		37.672466, 41.202679, 51.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950069, 41.908833, 51.319778>,  <38.337101, 41.342140, 51.765476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950069, 41.908833, 51.319778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735828, 41.694187, 51.580601>,  <37.607285, 41.565399, 51.737095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735828, 41.694187, 51.580601>,  <37.950069, 41.908833, 51.319778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735828, 41.694187, 51.580601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177974, 0.826534, 0.534011,
		-0.825505, 0.169966, -0.538194,
		-0.535599, -0.536613, 0.652058,
		37.575150, 41.533203, 51.776218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622681, 41.914654, 51.243195>,  <37.950069, 41.908833, 51.319778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622681, 41.914654, 51.243195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535378, 42.242420, 51.031185>,  <38.482994, 42.439079, 50.903980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535378, 42.242420, 51.031185>,  <38.622681, 41.914654, 51.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535378, 42.242420, 51.031185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820086, -0.140394, -0.554751,
		-0.528983, -0.555742, -0.641348,
		-0.218257, 0.819414, -0.530022,
		38.469902, 42.488243, 50.872177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684109, 41.785461, 50.467163>,  <38.622681, 41.914654, 51.243195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684109, 41.785461, 50.467163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769753, 42.169609, 50.538540>,  <38.821140, 42.400097, 50.581364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769753, 42.169609, 50.538540>,  <38.684109, 41.785461, 50.467163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769753, 42.169609, 50.538540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656888, -0.006361, -0.753961,
		-0.722949, 0.278644, -0.632220,
		0.214108, 0.960373, 0.178439,
		38.833984, 42.457722, 50.592072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686623, 41.991821, 49.794147>,  <38.684109, 41.785461, 50.467163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686623, 41.991821, 49.794147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880833, 42.249733, 50.030289>,  <38.997360, 42.404480, 50.171974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880833, 42.249733, 50.030289>,  <38.686623, 41.991821, 49.794147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880833, 42.249733, 50.030289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752813, 0.034943, -0.657306,
		-0.444448, 0.763566, -0.468436,
		0.485528, 0.644783, 0.590353,
		39.026489, 42.443169, 50.207394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833729, 42.569096, 49.365479>,  <38.686623, 41.991821, 49.794147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833729, 42.569096, 49.365479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098946, 42.601868, 49.663113>,  <39.258076, 42.621529, 49.841694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098946, 42.601868, 49.663113>,  <38.833729, 42.569096, 49.365479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098946, 42.601868, 49.663113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747564, -0.020679, -0.663868,
		-0.039003, 0.996424, -0.074957,
		0.663044, 0.081928, 0.744084,
		39.297859, 42.626446, 49.886337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173145, 43.205143, 49.248932>,  <38.833729, 42.569096, 49.365479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173145, 43.205143, 49.248932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405884, 42.954292, 49.456074>,  <39.545528, 42.803783, 49.580357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.405884, 42.954292, 49.456074>,  <39.173145, 43.205143, 49.248932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405884, 42.954292, 49.456074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681497, 0.028443, -0.731269,
		0.443869, 0.778398, 0.443934,
		0.581845, -0.627127, 0.517850,
		39.580437, 42.766155, 49.611427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876724, 43.481884, 49.163067>,  <39.173145, 43.205143, 49.248932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876724, 43.481884, 49.163067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904350, 43.099731, 49.277943>,  <39.920925, 42.870441, 49.346867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904350, 43.099731, 49.277943>,  <39.876724, 43.481884, 49.163067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904350, 43.099731, 49.277943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740389, -0.143849, -0.656606,
		0.668621, 0.257982, 0.697418,
		0.069069, -0.955381, 0.287187,
		39.925072, 42.813118, 49.364098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619373, 43.338200, 49.047615>,  <39.876724, 43.481884, 49.163067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619373, 43.338200, 49.047615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437634, 42.982525, 49.069202>,  <40.328590, 42.769119, 49.082153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437634, 42.982525, 49.069202>,  <40.619373, 43.338200, 49.047615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437634, 42.982525, 49.069202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688229, -0.388841, -0.612490,
		0.565603, -0.241144, 0.788634,
		-0.454351, -0.889186, 0.053967,
		40.301327, 42.715771, 49.085392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293026, 42.894871, 48.984406>,  <40.619373, 43.338200, 49.047615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293026, 42.894871, 48.984406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957657, 42.690563, 48.908352>,  <40.756435, 42.567978, 48.862720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957657, 42.690563, 48.908352>,  <41.293026, 42.894871, 48.984406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957657, 42.690563, 48.908352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461013, -0.478563, -0.747292,
		0.290705, -0.714204, 0.636713,
		-0.838426, -0.510774, -0.190136,
		40.706127, 42.537331, 48.851311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512505, 42.208603, 48.781261>,  <41.293026, 42.894871, 48.984406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512505, 42.208603, 48.781261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127708, 42.224136, 48.673138>,  <40.896832, 42.233456, 48.608261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.127708, 42.224136, 48.673138>,  <41.512505, 42.208603, 48.781261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.127708, 42.224136, 48.673138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160901, -0.719192, -0.675924,
		-0.220653, -0.693725, 0.685607,
		-0.961989, 0.038830, -0.270313,
		40.839111, 42.235786, 48.592045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252846, 41.542076, 48.925724>,  <41.512505, 42.208603, 48.781261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252846, 41.542076, 48.925724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054817, 41.722359, 48.628601>,  <40.936001, 41.830528, 48.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054817, 41.722359, 48.628601>,  <41.252846, 41.542076, 48.925724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054817, 41.722359, 48.628601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160893, -0.792592, -0.588143,
		-0.853826, -0.410686, 0.319873,
		-0.495070, 0.450706, -0.742812,
		40.906296, 41.857571, 48.405758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964252, 40.981133, 48.557243>,  <41.252846, 41.542076, 48.925724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964252, 40.981133, 48.557243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939590, 41.285370, 48.298725>,  <40.924793, 41.467911, 48.143616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.939590, 41.285370, 48.298725>,  <40.964252, 40.981133, 48.557243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.939590, 41.285370, 48.298725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235385, -0.618182, -0.749964,
		-0.969945, -0.198365, -0.140920,
		-0.061652, 0.760593, -0.646294,
		40.921093, 41.513550, 48.104836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549744, 40.741817, 48.039730>,  <40.964252, 40.981133, 48.557243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549744, 40.741817, 48.039730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696293, 41.058311, 47.843887>,  <40.784222, 41.248207, 47.726379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.696293, 41.058311, 47.843887>,  <40.549744, 40.741817, 48.039730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.696293, 41.058311, 47.843887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055340, -0.506736, -0.860323,
		-0.928820, 0.342297, -0.141869,
		0.366376, 0.791234, -0.489609,
		40.806206, 41.295681, 47.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090618, 40.897121, 47.445320>,  <40.549744, 40.741817, 48.039730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090618, 40.897121, 47.445320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443768, 41.053661, 47.341496>,  <40.655659, 41.147587, 47.279202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443768, 41.053661, 47.341496>,  <40.090618, 40.897121, 47.445320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443768, 41.053661, 47.341496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157988, -0.272977, -0.948959,
		-0.442232, 0.878822, -0.179176,
		0.882877, 0.391352, -0.259562,
		40.708630, 41.171066, 47.263626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929119, 41.154343, 46.748276>,  <40.090618, 40.897121, 47.445320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929119, 41.154343, 46.748276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328548, 41.138840, 46.762943>,  <40.568207, 41.129539, 46.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.328548, 41.138840, 46.762943>,  <39.929119, 41.154343, 46.748276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328548, 41.138840, 46.762943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011413, -0.516287, -0.856339,
		0.052120, 0.855538, -0.515110,
		0.998575, -0.038754, 0.036673,
		40.628120, 41.127213, 46.773945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101536, 41.418610, 46.081127>,  <39.929119, 41.154343, 46.748276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101536, 41.418610, 46.081127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395130, 41.194992, 46.235394>,  <40.571285, 41.060822, 46.327953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.395130, 41.194992, 46.235394>,  <40.101536, 41.418610, 46.081127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395130, 41.194992, 46.235394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000468, -0.567434, -0.823419,
		0.679168, 0.604556, -0.416225,
		0.733983, -0.559045, 0.385666,
		40.615326, 41.027279, 46.351093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569790, 41.529156, 45.546837>,  <40.101536, 41.418610, 46.081127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569790, 41.529156, 45.546837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650341, 41.201900, 45.762276>,  <40.698673, 41.005547, 45.891541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650341, 41.201900, 45.762276>,  <40.569790, 41.529156, 45.546837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650341, 41.201900, 45.762276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065820, -0.537321, -0.840805,
		0.977299, 0.204772, -0.054356,
		0.201380, -0.818141, 0.538602,
		40.710754, 40.956459, 45.923855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295635, 41.317928, 45.252777>,  <40.569790, 41.529156, 45.546837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.295635, 41.317928, 45.252777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085297, 41.034782, 45.441418>,  <40.959091, 40.864895, 45.554604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085297, 41.034782, 45.441418>,  <41.295635, 41.317928, 45.252777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085297, 41.034782, 45.441418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155881, -0.625257, -0.764693,
		0.836172, -0.328599, 0.439134,
		-0.525849, -0.707868, 0.471600,
		40.927544, 40.822422, 45.582897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500053, 40.850037, 44.906696>,  <41.295635, 41.317928, 45.252777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500053, 40.850037, 44.906696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189148, 40.671642, 45.084213>,  <41.002605, 40.564606, 45.190723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189148, 40.671642, 45.084213>,  <41.500053, 40.850037, 44.906696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189148, 40.671642, 45.084213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025658, -0.682305, -0.730617,
		0.628646, -0.579273, 0.518890,
		-0.777268, -0.445986, 0.443791,
		40.955967, 40.537846, 45.217350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581177, 40.066990, 44.939064>,  <41.500053, 40.850037, 44.906696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581177, 40.066990, 44.939064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189117, 40.142372, 44.963684>,  <40.953880, 40.187603, 44.978455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.189117, 40.142372, 44.963684>,  <41.581177, 40.066990, 44.939064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.189117, 40.142372, 44.963684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189323, -0.797580, -0.572734,
		-0.058845, -0.573018, 0.817428,
		-0.980150, 0.188460, 0.061552,
		40.895073, 40.198910, 44.982151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301632, 39.373947, 44.986916>,  <41.581177, 40.066990, 44.939064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301632, 39.373947, 44.986916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997311, 39.610699, 44.880440>,  <40.814716, 39.752750, 44.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997311, 39.610699, 44.880440>,  <41.301632, 39.373947, 44.986916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997311, 39.610699, 44.880440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228173, -0.627927, -0.744073,
		-0.607542, -0.505362, 0.612782,
		-0.760809, 0.591876, -0.266182,
		40.769070, 39.788261, 44.800583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768387, 38.913288, 44.985577>,  <41.301632, 39.373947, 44.986916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768387, 38.913288, 44.985577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639118, 39.221695, 44.766090>,  <40.561558, 39.406738, 44.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639118, 39.221695, 44.766090>,  <40.768387, 38.913288, 44.985577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639118, 39.221695, 44.766090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282503, -0.631992, -0.721650,
		-0.903191, -0.078201, 0.422056,
		-0.323169, 0.771019, -0.548718,
		40.542168, 39.452999, 44.601475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156967, 38.754124, 44.766823>,  <40.768387, 38.913288, 44.985577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156967, 38.754124, 44.766823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251301, 39.048645, 44.513134>,  <40.307899, 39.225357, 44.360920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251301, 39.048645, 44.513134>,  <40.156967, 38.754124, 44.766823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251301, 39.048645, 44.513134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157327, -0.615090, -0.772601,
		-0.958974, 0.281985, -0.029218,
		0.235834, 0.736307, -0.634219,
		40.322052, 39.269539, 44.322868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841022, 38.558208, 44.257275>,  <40.156967, 38.754124, 44.766823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841022, 38.558208, 44.257275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062546, 38.833820, 44.070286>,  <40.195461, 38.999187, 43.958092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062546, 38.833820, 44.070286>,  <39.841022, 38.558208, 44.257275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062546, 38.833820, 44.070286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098661, -0.611776, -0.784854,
		-0.826776, 0.388540, -0.406789,
		0.553811, 0.689033, -0.467468,
		40.228687, 39.040531, 43.930046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549011, 38.581318, 43.514854>,  <39.841022, 38.558208, 44.257275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549011, 38.581318, 43.514854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928402, 38.707954, 43.519897>,  <40.156036, 38.783936, 43.522923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928402, 38.707954, 43.519897>,  <39.549011, 38.581318, 43.514854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928402, 38.707954, 43.519897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233432, -0.671340, -0.703429,
		-0.214237, 0.670129, -0.710654,
		0.948479, 0.316590, 0.012604,
		40.212944, 38.802933, 43.523678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756821, 38.748741, 42.736526>,  <39.549011, 38.581318, 43.514854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756821, 38.748741, 42.736526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081615, 38.676666, 42.958591>,  <40.276493, 38.633423, 43.091831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081615, 38.676666, 42.958591>,  <39.756821, 38.748741, 42.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081615, 38.676666, 42.958591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365309, -0.584935, -0.724155,
		0.455217, 0.790812, -0.409138,
		0.811990, -0.180186, 0.555163,
		40.325211, 38.622612, 43.125141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256615, 38.673367, 42.252384>,  <39.756821, 38.748741, 42.736526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256615, 38.673367, 42.252384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442055, 38.515926, 42.569912>,  <40.553318, 38.421463, 42.760429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442055, 38.515926, 42.569912>,  <40.256615, 38.673367, 42.252384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442055, 38.515926, 42.569912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531068, -0.593723, -0.604533,
		0.709254, 0.701836, -0.066222,
		0.463600, -0.393599, 0.793823,
		40.581135, 38.397846, 42.808060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909107, 38.743355, 42.143845>,  <40.256615, 38.673367, 42.252384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909107, 38.743355, 42.143845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887600, 38.431721, 42.393688>,  <40.874695, 38.244740, 42.543594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887600, 38.431721, 42.393688>,  <40.909107, 38.743355, 42.143845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887600, 38.431721, 42.393688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565361, -0.539353, -0.624072,
		0.823090, 0.319578, 0.469460,
		-0.053765, -0.779082, 0.624613,
		40.871471, 38.197998, 42.581074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543339, 38.476788, 42.200718>,  <40.909107, 38.743355, 42.143845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543339, 38.476788, 42.200718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305359, 38.186462, 42.338840>,  <41.162571, 38.012268, 42.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305359, 38.186462, 42.338840>,  <41.543339, 38.476788, 42.200718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305359, 38.186462, 42.338840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562455, -0.682851, -0.466218,
		0.574180, -0.083154, 0.814496,
		-0.594947, -0.725810, 0.345308,
		41.126873, 37.968719, 42.442432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006165, 38.062233, 42.543911>,  <41.543339, 38.476788, 42.200718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006165, 38.062233, 42.543911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678162, 37.872169, 42.416279>,  <41.481361, 37.758129, 42.339699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678162, 37.872169, 42.416279>,  <42.006165, 38.062233, 42.543911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678162, 37.872169, 42.416279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567843, -0.605523, -0.557581,
		0.071731, -0.638406, 0.766350,
		-0.820005, -0.475162, -0.319080,
		41.432159, 37.729622, 42.320557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319592, 37.455994, 42.263760>,  <42.006165, 38.062233, 42.543911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319592, 37.455994, 42.263760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946701, 37.462223, 42.119144>,  <41.722965, 37.465961, 42.032375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.946701, 37.462223, 42.119144>,  <42.319592, 37.455994, 42.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946701, 37.462223, 42.119144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329698, -0.375259, -0.866302,
		-0.149160, -0.926789, 0.344693,
		-0.932229, 0.015573, -0.361534,
		41.667034, 37.466896, 42.010685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086067, 36.781509, 42.106461>,  <42.319592, 37.455994, 42.263760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086067, 36.781509, 42.106461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853683, 37.007950, 41.872532>,  <41.714252, 37.143814, 41.732174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853683, 37.007950, 41.872532>,  <42.086067, 36.781509, 42.106461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853683, 37.007950, 41.872532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350975, -0.474051, -0.807523,
		-0.734374, -0.674396, 0.076718,
		-0.580958, 0.566097, -0.584827,
		41.679398, 37.177780, 41.697083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925713, 36.290890, 41.612179>,  <42.086067, 36.781509, 42.106461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925713, 36.290890, 41.612179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821045, 36.648430, 41.466537>,  <41.758244, 36.862953, 41.379154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.821045, 36.648430, 41.466537>,  <41.925713, 36.290890, 41.612179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821045, 36.648430, 41.466537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427322, -0.230961, -0.874101,
		-0.865405, -0.384311, -0.321525,
		-0.261667, 0.893846, -0.364100,
		41.742546, 36.916584, 41.357307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567062, 36.222729, 40.943218>,  <41.925713, 36.290890, 41.612179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567062, 36.222729, 40.943218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724327, 36.589790, 40.966301>,  <41.818687, 36.810028, 40.980148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.724327, 36.589790, 40.966301>,  <41.567062, 36.222729, 40.943218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.724327, 36.589790, 40.966301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534170, -0.176879, -0.826666,
		-0.748388, 0.355839, -0.559727,
		0.393164, 0.917656, 0.057704,
		41.842278, 36.865086, 40.983612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516933, 36.460541, 40.248039>,  <41.567062, 36.222729, 40.943218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516933, 36.460541, 40.248039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795593, 36.684666, 40.427254>,  <41.962788, 36.819141, 40.534782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795593, 36.684666, 40.427254>,  <41.516933, 36.460541, 40.248039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795593, 36.684666, 40.427254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531795, 0.015861, -0.846724,
		-0.481536, 0.828130, -0.286921,
		0.696647, 0.560311, 0.448033,
		42.004589, 36.852760, 40.561665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622475, 36.997761, 39.750095>,  <41.516933, 36.460541, 40.248039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622475, 36.997761, 39.750095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947227, 37.013863, 39.983070>,  <42.142078, 37.023525, 40.122856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947227, 37.013863, 39.983070>,  <41.622475, 36.997761, 39.750095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947227, 37.013863, 39.983070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576170, 0.105783, -0.810456,
		-0.094236, 0.993574, 0.062689,
		0.811879, 0.040254, 0.582436,
		42.190792, 37.025940, 40.157803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027340, 37.738571, 39.696796>,  <41.622475, 36.997761, 39.750095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027340, 37.738571, 39.696796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269623, 37.437099, 39.798851>,  <42.414993, 37.256218, 39.860085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.269623, 37.437099, 39.798851>,  <42.027340, 37.738571, 39.696796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269623, 37.437099, 39.798851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602988, 0.225566, -0.765197,
		0.519162, 0.617324, 0.591085,
		0.605703, -0.753678, 0.255134,
		42.451332, 37.210995, 39.875393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705536, 38.073742, 39.592438>,  <42.027340, 37.738571, 39.696796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705536, 38.073742, 39.592438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778210, 37.680405, 39.594414>,  <42.821812, 37.444401, 39.595600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778210, 37.680405, 39.594414>,  <42.705536, 38.073742, 39.592438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778210, 37.680405, 39.594414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616254, 0.109943, -0.779835,
		0.766304, 0.144724, 0.625965,
		0.181681, -0.983345, 0.004937,
		42.832714, 37.385403, 39.595894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.458965, 37.958164, 39.670010>,  <42.705536, 38.073742, 39.592438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.458965, 37.958164, 39.670010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313961, 37.610474, 39.535534>,  <43.226959, 37.401859, 39.454849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313961, 37.610474, 39.535534>,  <43.458965, 37.958164, 39.670010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313961, 37.610474, 39.535534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729840, -0.040436, -0.682421,
		0.579587, -0.492751, 0.649057,
		-0.362509, -0.869230, -0.336194,
		43.205208, 37.349705, 39.434677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969704, 37.607029, 39.431705>,  <43.458965, 37.958164, 39.670010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969704, 37.607029, 39.431705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666473, 37.398758, 39.274620>,  <43.484535, 37.273796, 39.180370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.666473, 37.398758, 39.274620>,  <43.969704, 37.607029, 39.431705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.666473, 37.398758, 39.274620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519006, -0.117006, -0.846724,
		0.394919, -0.845699, 0.358933,
		-0.758071, -0.520676, -0.392715,
		43.439053, 37.242554, 39.156807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.309258, 36.946514, 39.142967>,  <43.969704, 37.607029, 39.431705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.309258, 36.946514, 39.142967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967159, 36.944668, 38.935688>,  <43.761898, 36.943562, 38.811321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967159, 36.944668, 38.935688>,  <44.309258, 36.946514, 39.142967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967159, 36.944668, 38.935688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511052, -0.173221, -0.841915,
		-0.085877, -0.984872, 0.150506,
		-0.855249, -0.004615, -0.518197,
		43.710587, 36.943283, 38.780228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.288647, 36.340649, 38.721592>,  <44.309258, 36.946514, 39.142967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.288647, 36.340649, 38.721592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042736, 36.614502, 38.564957>,  <43.895191, 36.778812, 38.470978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042736, 36.614502, 38.564957>,  <44.288647, 36.340649, 38.721592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042736, 36.614502, 38.564957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485848, -0.062374, -0.871815,
		-0.621295, -0.726218, -0.294280,
		-0.614772, 0.684629, -0.391584,
		43.858303, 36.819889, 38.447483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862251, 36.105083, 38.087898>,  <44.288647, 36.340649, 38.721592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862251, 36.105083, 38.087898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953804, 36.494171, 38.072811>,  <44.008736, 36.727623, 38.063759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.953804, 36.494171, 38.072811>,  <43.862251, 36.105083, 38.087898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953804, 36.494171, 38.072811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528991, -0.156809, -0.834014,
		-0.817178, 0.170941, -0.550453,
		0.228884, 0.972723, -0.037715,
		44.022469, 36.785988, 38.061497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612667, 36.609585, 37.516182>,  <43.862251, 36.105083, 38.087898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612667, 36.609585, 37.516182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977955, 36.729481, 37.626595>,  <44.197128, 36.801418, 37.692844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.977955, 36.729481, 37.626595>,  <43.612667, 36.609585, 37.516182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977955, 36.729481, 37.626595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324640, -0.125781, -0.937437,
		-0.246265, 0.945694, -0.212172,
		0.913216, 0.299737, 0.276034,
		44.251919, 36.819401, 37.709404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820251, 37.194164, 37.044472>,  <43.612667, 36.609585, 37.516182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820251, 37.194164, 37.044472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145111, 37.053005, 37.230324>,  <44.340027, 36.968307, 37.341835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145111, 37.053005, 37.230324>,  <43.820251, 37.194164, 37.044472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145111, 37.053005, 37.230324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531112, 0.117488, -0.839116,
		0.241535, 0.928255, 0.282847,
		0.812146, -0.352900, 0.464630,
		44.388756, 36.947136, 37.369713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379189, 37.694378, 37.169464>,  <43.820251, 37.194164, 37.044472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379189, 37.694378, 37.169464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533459, 37.326252, 37.143291>,  <44.626019, 37.105377, 37.127586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533459, 37.326252, 37.143291>,  <44.379189, 37.694378, 37.169464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533459, 37.326252, 37.143291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586927, 0.299443, -0.752231,
		0.711881, 0.251711, 0.655643,
		0.385673, -0.920313, -0.065432,
		44.649162, 37.050159, 37.123661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146137, 37.580669, 37.364052>,  <44.379189, 37.694378, 37.169464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146137, 37.580669, 37.364052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999916, 37.342701, 37.077713>,  <44.912182, 37.199921, 36.905910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.999916, 37.342701, 37.077713>,  <45.146137, 37.580669, 37.364052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.999916, 37.342701, 37.077713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500534, 0.522761, -0.690063,
		0.784750, -0.610562, 0.106681,
		-0.365558, -0.594925, -0.715844,
		44.890247, 37.164223, 36.862961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.594799, 36.887928, 37.558380>,  <45.146137, 37.580669, 37.364052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.594799, 36.887928, 37.558380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647797, 37.089462, 37.899811>,  <45.679596, 37.210384, 38.104668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647797, 37.089462, 37.899811>,  <45.594799, 36.887928, 37.558380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647797, 37.089462, 37.899811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990849, -0.089711, -0.100849,
		0.025763, 0.859126, -0.511115,
		0.132495, 0.503839, 0.853575,
		45.687546, 37.240616, 38.155884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285721, 36.482353, 36.882591>,  <45.594799, 36.887928, 37.558380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285721, 36.482353, 36.882591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148792, 36.173916, 36.667843>,  <45.066635, 35.988853, 36.538994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148792, 36.173916, 36.667843>,  <45.285721, 36.482353, 36.882591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148792, 36.173916, 36.667843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151034, -0.518804, 0.841446,
		-0.927364, 0.369131, 0.061137,
		-0.342322, -0.771093, -0.536872,
		45.046097, 35.942589, 36.506783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584980, 36.294518, 37.117638>,  <45.285721, 36.482353, 36.882591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584980, 36.294518, 37.117638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829433, 35.991844, 37.024734>,  <44.976105, 35.810238, 36.968990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.829433, 35.991844, 37.024734>,  <44.584980, 36.294518, 37.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.829433, 35.991844, 37.024734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349230, -0.521093, 0.778782,
		-0.710324, -0.394824, -0.582713,
		0.611129, -0.756688, -0.232260,
		45.012772, 35.764839, 36.955055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.284794, 35.687691, 37.026703>,  <44.584980, 36.294518, 37.117638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.284794, 35.687691, 37.026703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651253, 35.545593, 37.100971>,  <44.871128, 35.460335, 37.145531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651253, 35.545593, 37.100971>,  <44.284794, 35.687691, 37.026703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651253, 35.545593, 37.100971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365676, -0.550998, 0.750122,
		-0.164173, -0.755118, -0.634700,
		0.916148, -0.355245, 0.185670,
		44.926098, 35.439018, 37.156673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216381, 34.954441, 37.099785>,  <44.284794, 35.687691, 37.026703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216381, 34.954441, 37.099785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549042, 35.071190, 37.288746>,  <44.748638, 35.141239, 37.402122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549042, 35.071190, 37.288746>,  <44.216381, 34.954441, 37.099785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549042, 35.071190, 37.288746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294983, -0.488557, 0.821156,
		0.470473, -0.822266, -0.320210,
		0.831649, 0.291875, 0.472407,
		44.798538, 35.158752, 37.430470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545059, 34.341507, 37.364723>,  <44.216381, 34.954441, 37.099785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545059, 34.341507, 37.364723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716320, 34.617195, 37.598526>,  <44.819077, 34.782608, 37.738808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716320, 34.617195, 37.598526>,  <44.545059, 34.341507, 37.364723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716320, 34.617195, 37.598526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129160, -0.593485, 0.794414,
		0.894428, -0.415628, -0.165084,
		0.428156, 0.689224, 0.584512,
		44.844769, 34.823963, 37.773880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913658, 34.002819, 37.725082>,  <44.545059, 34.341507, 37.364723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913658, 34.002819, 37.725082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911888, 34.331043, 37.953697>,  <44.910828, 34.527977, 38.090866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.911888, 34.331043, 37.953697>,  <44.913658, 34.002819, 37.725082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911888, 34.331043, 37.953697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166725, -0.564147, 0.808666,
		0.985993, -0.091712, 0.139304,
		-0.004423, 0.820565, 0.571536,
		44.910561, 34.577213, 38.125156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.348091, 33.874836, 38.375362>,  <44.913658, 34.002819, 37.725082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.348091, 33.874836, 38.375362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127884, 34.194210, 38.472874>,  <44.995758, 34.385834, 38.531380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127884, 34.194210, 38.472874>,  <45.348091, 33.874836, 38.375362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127884, 34.194210, 38.472874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112217, -0.360140, 0.926124,
		0.827247, 0.482491, 0.287862,
		-0.550517, 0.798437, 0.243781,
		44.962730, 34.433743, 38.546009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.589970, 34.103306, 39.061096>,  <45.348091, 33.874836, 38.375362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.589970, 34.103306, 39.061096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231949, 34.280491, 39.040432>,  <45.017136, 34.386803, 39.028034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231949, 34.280491, 39.040432>,  <45.589970, 34.103306, 39.061096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231949, 34.280491, 39.040432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244451, -0.390428, 0.887586,
		0.372994, 0.807065, 0.457736,
		-0.895053, 0.442958, -0.051661,
		44.963432, 34.413380, 39.024933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.383240, 34.512985, 39.740341>,  <45.589970, 34.103306, 39.061096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.383240, 34.512985, 39.740341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036041, 34.429585, 39.560074>,  <44.827721, 34.379543, 39.451912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036041, 34.429585, 39.560074>,  <45.383240, 34.512985, 39.740341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036041, 34.429585, 39.560074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328250, -0.440064, 0.835820,
		-0.372594, 0.873424, 0.313534,
		-0.868001, -0.208504, -0.450667,
		44.775642, 34.367035, 39.424873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920647, 34.515957, 40.288696>,  <45.383240, 34.512985, 39.740341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920647, 34.515957, 40.288696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739021, 34.313320, 39.995525>,  <44.630047, 34.191738, 39.819622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.739021, 34.313320, 39.995525>,  <44.920647, 34.515957, 40.288696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.739021, 34.313320, 39.995525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509175, -0.527511, 0.680053,
		-0.731139, 0.681980, -0.018419,
		-0.454067, -0.506592, -0.732931,
		44.602802, 34.161343, 39.775646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216614, 34.462002, 40.442039>,  <44.920647, 34.515957, 40.288696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216614, 34.462002, 40.442039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299393, 34.154072, 40.200531>,  <44.349060, 33.969315, 40.055626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.299393, 34.154072, 40.200531>,  <44.216614, 34.462002, 40.442039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.299393, 34.154072, 40.200531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587860, -0.591149, 0.552235,
		-0.782044, 0.240649, -0.574887,
		0.206950, -0.769825, -0.603773,
		44.361477, 33.923122, 40.019398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546364, 34.032261, 40.322075>,  <44.216614, 34.462002, 40.442039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546364, 34.032261, 40.322075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848373, 33.789597, 40.222553>,  <44.029579, 33.643997, 40.162842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848373, 33.789597, 40.222553>,  <43.546364, 34.032261, 40.322075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848373, 33.789597, 40.222553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438262, -0.749145, 0.496697,
		-0.487718, -0.265975, -0.831498,
		0.755022, -0.606662, -0.248804,
		44.074879, 33.607597, 40.147911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262688, 33.347649, 40.215923>,  <43.546364, 34.032261, 40.322075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262688, 33.347649, 40.215923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645351, 33.239426, 40.259029>,  <43.874950, 33.174492, 40.284893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.645351, 33.239426, 40.259029>,  <43.262688, 33.347649, 40.215923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.645351, 33.239426, 40.259029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283576, -0.781166, 0.556205,
		-0.066302, -0.562655, -0.824029,
		0.956655, -0.270553, 0.107762,
		43.932346, 33.158260, 40.291359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193344, 32.627712, 40.085968>,  <43.262688, 33.347649, 40.215923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193344, 32.627712, 40.085968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544495, 32.689396, 40.267323>,  <43.755184, 32.726406, 40.376137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.544495, 32.689396, 40.267323>,  <43.193344, 32.627712, 40.085968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544495, 32.689396, 40.267323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163402, -0.793466, 0.586269,
		0.450155, -0.588754, -0.671364,
		0.877872, 0.154210, 0.453386,
		43.807858, 32.735661, 40.403339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520123, 31.933939, 40.235794>,  <43.193344, 32.627712, 40.085968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520123, 31.933939, 40.235794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709530, 32.180836, 40.487125>,  <43.823174, 32.328976, 40.637924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.709530, 32.180836, 40.487125>,  <43.520123, 31.933939, 40.235794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709530, 32.180836, 40.487125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052398, -0.692365, 0.719642,
		0.879223, -0.373688, -0.295506,
		0.473520, 0.617242, 0.628324,
		43.851585, 32.366009, 40.675621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.158157, 31.555252, 40.434303>,  <43.520123, 31.933939, 40.235794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.158157, 31.555252, 40.434303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048096, 31.821354, 40.711929>,  <43.982059, 31.981016, 40.878506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.048096, 31.821354, 40.711929>,  <44.158157, 31.555252, 40.434303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048096, 31.821354, 40.711929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063763, -0.707713, 0.703617,
		0.959283, 0.237859, 0.152311,
		-0.275154, 0.665256, 0.694064,
		43.965549, 32.020931, 40.920147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581322, 31.522821, 40.881664>,  <44.158157, 31.555252, 40.434303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581322, 31.522821, 40.881664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288864, 31.701130, 41.088245>,  <44.113392, 31.808115, 41.212193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288864, 31.701130, 41.088245>,  <44.581322, 31.522821, 40.881664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288864, 31.701130, 41.088245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037308, -0.729748, 0.682697,
		0.681204, 0.518416, 0.516919,
		-0.731142, 0.445771, 0.516449,
		44.069523, 31.834862, 41.243179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714256, 31.480703, 41.647442>,  <44.581322, 31.522821, 40.881664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714256, 31.480703, 41.647442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317818, 31.531231, 41.630646>,  <44.079952, 31.561548, 41.620567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.317818, 31.531231, 41.630646>,  <44.714256, 31.480703, 41.647442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.317818, 31.531231, 41.630646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122832, -0.746237, 0.654250,
		0.051307, 0.653585, 0.755112,
		-0.991100, 0.126320, -0.041994,
		44.020489, 31.569126, 41.618046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532764, 31.394310, 42.337063>,  <44.714256, 31.480703, 41.647442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532764, 31.394310, 42.337063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191246, 31.373280, 42.129887>,  <43.986336, 31.360661, 42.005581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191246, 31.373280, 42.129887>,  <44.532764, 31.394310, 42.337063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191246, 31.373280, 42.129887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391199, -0.591645, 0.704925,
		-0.343500, 0.804482, 0.484578,
		-0.853798, -0.052576, -0.517943,
		43.935108, 31.357508, 41.974503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.014259, 31.603279, 42.882595>,  <44.532764, 31.394310, 42.337063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.014259, 31.603279, 42.882595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836979, 31.400986, 42.586540>,  <43.730610, 31.279610, 42.408909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.836979, 31.400986, 42.586540>,  <44.014259, 31.603279, 42.882595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.836979, 31.400986, 42.586540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660284, -0.374258, 0.651119,
		-0.606296, 0.777279, -0.168055,
		-0.443205, -0.505735, -0.740136,
		43.704018, 31.249266, 42.364498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272144, 31.613066, 43.040878>,  <44.014259, 31.603279, 42.882595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272144, 31.613066, 43.040878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348701, 31.292671, 42.813972>,  <43.394634, 31.100433, 42.677830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.348701, 31.292671, 42.813972>,  <43.272144, 31.613066, 43.040878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348701, 31.292671, 42.813972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438144, -0.586890, 0.680874,
		-0.878293, 0.118227, -0.463275,
		0.191394, -0.800988, -0.567262,
		43.406120, 31.052374, 42.643795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589687, 31.311096, 43.000729>,  <43.272144, 31.613066, 43.040878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589687, 31.311096, 43.000729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876884, 31.042379, 42.927872>,  <43.049202, 30.881149, 42.884155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.876884, 31.042379, 42.927872>,  <42.589687, 31.311096, 43.000729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876884, 31.042379, 42.927872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342232, -0.568590, 0.748053,
		-0.606105, -0.474760, -0.638153,
		0.717993, -0.671795, -0.182147,
		43.092285, 30.840841, 42.873230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963814, 31.404713, 43.101456>,  <42.589687, 31.311096, 43.000729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963814, 31.404713, 43.101456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753353, 31.480488, 42.769848>,  <41.627079, 31.525953, 42.570881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.753353, 31.480488, 42.769848>,  <41.963814, 31.404713, 43.101456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.753353, 31.480488, 42.769848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131696, -0.944959, -0.299514,
		-0.840133, -0.266769, 0.472241,
		-0.526150, 0.189439, -0.829023,
		41.595509, 31.537319, 42.521141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343372, 30.963215, 42.996498>,  <41.963814, 31.404713, 43.101456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343372, 30.963215, 42.996498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544266, 31.087811, 42.673824>,  <41.664803, 31.162567, 42.480221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.544266, 31.087811, 42.673824>,  <41.343372, 30.963215, 42.996498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544266, 31.087811, 42.673824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259831, -0.944121, -0.202790,
		-0.824770, -0.107752, -0.555106,
		0.502236, 0.311489, -0.806681,
		41.694935, 31.181257, 42.431820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026161, 30.771942, 42.360516>,  <41.343372, 30.963215, 42.996498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026161, 30.771942, 42.360516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419830, 30.819990, 42.308392>,  <41.656033, 30.848820, 42.277119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419830, 30.819990, 42.308392>,  <41.026161, 30.771942, 42.360516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419830, 30.819990, 42.308392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098113, -0.981595, -0.163847,
		-0.147591, 0.148469, -0.977841,
		0.984170, 0.120122, -0.130308,
		41.715080, 30.856026, 42.269299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919590, 30.241735, 41.845154>,  <41.026161, 30.771942, 42.360516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919590, 30.241735, 41.845154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969971, 30.637419, 41.815212>,  <41.000198, 30.874828, 41.797249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969971, 30.637419, 41.815212>,  <40.919590, 30.241735, 41.845154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969971, 30.637419, 41.815212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935212, 0.093226, -0.341597,
		-0.330933, 0.113024, 0.936861,
		0.125949, 0.989209, -0.074850,
		41.007755, 30.934181, 41.792759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.333927, 30.503761, 42.058601>,  <40.919590, 30.241735, 41.845154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.333927, 30.503761, 42.058601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483604, 30.798264, 41.833069>,  <40.573410, 30.974964, 41.697750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.483604, 30.798264, 41.833069>,  <40.333927, 30.503761, 42.058601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483604, 30.798264, 41.833069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916952, 0.202966, -0.343517,
		-0.138478, 0.645548, 0.751060,
		0.374197, 0.736256, -0.563830,
		40.595863, 31.019140, 41.663921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047905, 31.175142, 42.231972>,  <40.333927, 30.503761, 42.058601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047905, 31.175142, 42.231972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149364, 31.146973, 41.846081>,  <40.210239, 31.130072, 41.614544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149364, 31.146973, 41.846081>,  <40.047905, 31.175142, 42.231972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149364, 31.146973, 41.846081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944028, 0.199412, -0.262764,
		0.210883, 0.977382, -0.015899,
		0.253651, -0.070422, -0.964729,
		40.225460, 31.125847, 41.556664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049156, 31.881334, 41.805264>,  <40.047905, 31.175142, 42.231972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049156, 31.881334, 41.805264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965816, 31.525982, 41.641621>,  <39.915813, 31.312771, 41.543434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965816, 31.525982, 41.641621>,  <40.049156, 31.881334, 41.805264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965816, 31.525982, 41.641621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932518, 0.306580, -0.190838,
		0.294960, 0.341735, -0.892309,
		-0.208348, -0.888384, -0.409102,
		39.903313, 31.259466, 41.518890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830334, 31.982664, 41.101738>,  <40.049156, 31.881334, 41.805264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830334, 31.982664, 41.101738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702579, 31.619394, 41.209969>,  <39.625927, 31.401432, 41.274906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702579, 31.619394, 41.209969>,  <39.830334, 31.982664, 41.101738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702579, 31.619394, 41.209969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938849, 0.264488, -0.220472,
		0.128662, -0.324449, -0.937112,
		-0.319387, -0.908173, 0.270580,
		39.606762, 31.346943, 41.291142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671650, 31.889277, 40.409557>,  <39.830334, 31.982664, 41.101738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671650, 31.889277, 40.409557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516758, 32.200794, 40.212162>,  <39.423824, 32.387707, 40.093723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.516758, 32.200794, 40.212162>,  <39.671650, 31.889277, 40.409557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516758, 32.200794, 40.212162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647579, -0.151257, -0.746835,
		-0.656276, -0.608769, -0.445761,
		-0.387226, 0.778795, -0.493492,
		39.400589, 32.434433, 40.064114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642086, 31.623047, 39.769661>,  <39.671650, 31.889277, 40.409557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642086, 31.623047, 39.769661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595577, 32.015610, 39.708572>,  <39.567673, 32.251148, 39.671921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595577, 32.015610, 39.708572>,  <39.642086, 31.623047, 39.769661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595577, 32.015610, 39.708572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630467, -0.045885, -0.774859,
		-0.767458, -0.186382, -0.613408,
		-0.116274, 0.981405, -0.152722,
		39.560696, 32.310032, 39.662754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439980, 31.729408, 38.962242>,  <39.642086, 31.623047, 39.769661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439980, 31.729408, 38.962242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637272, 32.010166, 39.167793>,  <39.755646, 32.178623, 39.291122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.637272, 32.010166, 39.167793>,  <39.439980, 31.729408, 38.962242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637272, 32.010166, 39.167793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683715, 0.052436, -0.727863,
		-0.537830, 0.710347, -0.454034,
		0.493227, 0.701896, 0.513876,
		39.785240, 32.220734, 39.321957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610363, 32.225964, 38.543011>,  <39.439980, 31.729408, 38.962242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610363, 32.225964, 38.543011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868996, 32.246273, 38.847469>,  <40.024178, 32.258461, 39.030144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.868996, 32.246273, 38.847469>,  <39.610363, 32.225964, 38.543011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868996, 32.246273, 38.847469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761630, 0.013248, -0.647877,
		-0.042981, 0.998622, -0.030107,
		0.646585, 0.050777, 0.761150,
		40.062973, 32.261505, 39.075813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955715, 32.720985, 38.313007>,  <39.610363, 32.225964, 38.543011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955715, 32.720985, 38.313007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177139, 32.537586, 38.591103>,  <40.309994, 32.427547, 38.757957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177139, 32.537586, 38.591103>,  <39.955715, 32.720985, 38.313007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177139, 32.537586, 38.591103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817196, 0.138163, -0.559555,
		0.160496, 0.877892, 0.451161,
		0.553563, -0.458493, 0.695235,
		40.343208, 32.400040, 38.799675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529354, 33.054916, 38.374973>,  <39.955715, 32.720985, 38.313007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529354, 33.054916, 38.374973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648853, 32.715462, 38.549587>,  <40.720554, 32.511787, 38.654358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648853, 32.715462, 38.549587>,  <40.529354, 33.054916, 38.374973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648853, 32.715462, 38.549587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889436, 0.081795, -0.449682,
		0.345909, 0.522615, 0.779244,
		0.298749, -0.848636, 0.436539,
		40.738480, 32.460873, 38.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192886, 33.188515, 38.508114>,  <40.529354, 33.054916, 38.374973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192886, 33.188515, 38.508114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171246, 32.790085, 38.480080>,  <41.158260, 32.551029, 38.463257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.171246, 32.790085, 38.480080>,  <41.192886, 33.188515, 38.508114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.171246, 32.790085, 38.480080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854064, -0.009790, -0.520076,
		0.517348, -0.087994, 0.851239,
		-0.054097, -0.996073, -0.070087,
		41.155018, 32.491264, 38.459053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806122, 32.957832, 38.875252>,  <41.192886, 33.188515, 38.508114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806122, 32.957832, 38.875252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700787, 32.661453, 38.628139>,  <41.637585, 32.483627, 38.479874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700787, 32.661453, 38.628139>,  <41.806122, 32.957832, 38.875252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700787, 32.661453, 38.628139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895346, 0.050710, -0.442474,
		0.359178, -0.669646, 0.650050,
		-0.263337, -0.740947, -0.617779,
		41.621784, 32.439171, 38.442806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410389, 32.567646, 38.720558>,  <41.806122, 32.957832, 38.875252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410389, 32.567646, 38.720558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169910, 32.415501, 38.439449>,  <42.025623, 32.324215, 38.270782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169910, 32.415501, 38.439449>,  <42.410389, 32.567646, 38.720558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169910, 32.415501, 38.439449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798226, -0.244625, -0.550449,
		0.037454, -0.891898, 0.450682,
		-0.601193, -0.380363, -0.702774,
		41.989552, 32.301392, 38.228619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764469, 31.964170, 38.478260>,  <42.410389, 32.567646, 38.720558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764469, 31.964170, 38.478260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497681, 32.077244, 38.202511>,  <42.337608, 32.145088, 38.037060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497681, 32.077244, 38.202511>,  <42.764469, 31.964170, 38.478260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497681, 32.077244, 38.202511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714321, -0.020496, -0.699518,
		-0.211871, -0.958994, -0.188255,
		-0.666976, 0.282683, -0.689372,
		42.297588, 32.162048, 37.995701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938091, 31.511801, 37.917267>,  <42.764469, 31.964170, 38.478260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938091, 31.511801, 37.917267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723621, 31.802198, 37.745010>,  <42.594940, 31.976437, 37.641655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723621, 31.802198, 37.745010>,  <42.938091, 31.511801, 37.917267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723621, 31.802198, 37.745010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650130, 0.029780, -0.759239,
		-0.538377, -0.687057, -0.487957,
		-0.536172, 0.725993, -0.430644,
		42.562771, 32.019997, 37.615818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066559, 31.383106, 37.203846>,  <42.938091, 31.511801, 37.917267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066559, 31.383106, 37.203846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936260, 31.760725, 37.224487>,  <42.858082, 31.987297, 37.236874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936260, 31.760725, 37.224487>,  <43.066559, 31.383106, 37.203846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936260, 31.760725, 37.224487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676502, 0.270859, -0.684821,
		-0.660482, -0.188167, -0.726882,
		-0.325743, 0.944049, 0.051603,
		42.838539, 32.043941, 37.239967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869705, 31.634243, 36.514103>,  <43.066559, 31.383106, 37.203846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869705, 31.634243, 36.514103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943989, 31.960695, 36.732990>,  <42.988560, 32.156567, 36.864323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943989, 31.960695, 36.732990>,  <42.869705, 31.634243, 36.514103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943989, 31.960695, 36.732990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672201, 0.300678, -0.676564,
		-0.716700, 0.493481, -0.492765,
		0.185709, 0.816131, 0.547214,
		42.999702, 32.205536, 36.897156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192150, 31.988747, 36.019371>,  <42.869705, 31.634243, 36.514103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192150, 31.988747, 36.019371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288033, 32.180851, 36.356865>,  <43.345562, 32.296112, 36.559361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288033, 32.180851, 36.356865>,  <43.192150, 31.988747, 36.019371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288033, 32.180851, 36.356865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820787, 0.363902, -0.440321,
		-0.518506, 0.798077, -0.306960,
		0.239707, 0.480258, 0.843737,
		43.359943, 32.324928, 36.609985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825874, 32.511166, 35.748688>,  <43.192150, 31.988747, 36.019371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825874, 32.511166, 35.748688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814335, 32.546482, 36.146957>,  <43.807411, 32.567673, 36.385921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.814335, 32.546482, 36.146957>,  <43.825874, 32.511166, 35.748688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.814335, 32.546482, 36.146957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926930, 0.375180, -0.006412,
		-0.374124, 0.922738, -0.092661,
		-0.028848, 0.088289, 0.995677,
		43.805679, 32.572968, 36.445660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850903, 33.178516, 35.970726>,  <43.825874, 32.511166, 35.748688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850903, 33.178516, 35.970726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022778, 32.936993, 36.239288>,  <44.125904, 32.792080, 36.400425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.022778, 32.936993, 36.239288>,  <43.850903, 33.178516, 35.970726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.022778, 32.936993, 36.239288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882727, 0.437469, -0.171505,
		-0.190165, 0.666363, 0.720970,
		0.429686, -0.603806, 0.671408,
		44.151684, 32.755852, 36.440712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127274, 33.584862, 36.558395>,  <43.850903, 33.178516, 35.970726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127274, 33.584862, 36.558395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318806, 33.236641, 36.513039>,  <44.433723, 33.027706, 36.485825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318806, 33.236641, 36.513039>,  <44.127274, 33.584862, 36.558395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318806, 33.236641, 36.513039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864388, 0.490086, -0.112470,
		0.153483, -0.044162, 0.987164,
		0.478828, -0.870555, -0.113393,
		44.462456, 32.975475, 36.479019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.838531, 33.690880, 36.852196>,  <44.127274, 33.584862, 36.558395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.838531, 33.690880, 36.852196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893394, 33.347679, 36.654198>,  <44.926311, 33.141758, 36.535400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893394, 33.347679, 36.654198>,  <44.838531, 33.690880, 36.852196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893394, 33.347679, 36.654198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909908, 0.306628, -0.279370,
		0.391479, -0.412083, 0.822758,
		0.137157, -0.858002, -0.494996,
		44.934540, 33.090279, 36.505699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.458538, 33.464035, 36.990871>,  <44.838531, 33.690880, 36.852196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.458538, 33.464035, 36.990871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422668, 33.213493, 36.681126>,  <45.401146, 33.063168, 36.495277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.422668, 33.213493, 36.681126>,  <45.458538, 33.464035, 36.990871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.422668, 33.213493, 36.681126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887794, 0.302127, -0.347191,
		0.451420, -0.718609, 0.528980,
		-0.089675, -0.626355, -0.774363,
		45.395767, 33.025585, 36.448818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160992, 33.112988, 36.915489>,  <45.458538, 33.464035, 36.990871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160992, 33.112988, 36.915489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979126, 33.059589, 36.563248>,  <45.870007, 33.027550, 36.351902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979126, 33.059589, 36.563248>,  <46.160992, 33.112988, 36.915489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979126, 33.059589, 36.563248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836970, 0.274051, -0.473685,
		0.304563, -0.952406, -0.012873,
		-0.454668, -0.133493, -0.880600,
		45.842724, 33.019543, 36.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.611080, 32.702412, 36.537434>,  <46.160992, 33.112988, 36.915489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.611080, 32.702412, 36.537434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382565, 32.893074, 36.270172>,  <46.245457, 33.007473, 36.109814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382565, 32.893074, 36.270172>,  <46.611080, 32.702412, 36.537434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382565, 32.893074, 36.270172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814321, 0.227476, -0.533981,
		-0.102539, -0.849147, -0.518108,
		-0.571286, 0.476660, -0.668153,
		46.211178, 33.036072, 36.069725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979591, 32.522961, 35.958401>,  <46.611080, 32.702412, 36.537434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979591, 32.522961, 35.958401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773083, 32.860584, 35.900379>,  <46.649178, 33.063156, 35.865566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.773083, 32.860584, 35.900379>,  <46.979591, 32.522961, 35.958401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.773083, 32.860584, 35.900379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795849, 0.410252, -0.445329,
		-0.316375, -0.345348, -0.883539,
		-0.516267, 0.844055, -0.145051,
		46.618202, 33.113800, 35.856865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.164570, 32.709644, 35.235016>,  <46.979591, 32.522961, 35.958401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.164570, 32.709644, 35.235016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011684, 33.052639, 35.372784>,  <46.919952, 33.258438, 35.455444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011684, 33.052639, 35.372784>,  <47.164570, 32.709644, 35.235016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011684, 33.052639, 35.372784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645495, 0.514457, -0.564509,
		-0.661249, 0.006557, -0.750138,
		-0.382212, 0.857491, 0.344417,
		46.897022, 33.309887, 35.476109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.341518, 33.196442, 34.841553>,  <47.164570, 32.709644, 35.235016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.341518, 33.196442, 34.841553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225903, 33.455128, 35.123890>,  <47.156532, 33.610340, 35.293293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225903, 33.455128, 35.123890>,  <47.341518, 33.196442, 34.841553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225903, 33.455128, 35.123890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546009, 0.716995, -0.433350,
		-0.786340, 0.260140, -0.560354,
		-0.289040, 0.646719, 0.705841,
		47.139191, 33.649143, 35.335644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525013, 33.719936, 34.564774>,  <47.341518, 33.196442, 34.841553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525013, 33.719936, 34.564774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433304, 33.909489, 34.904861>,  <47.378277, 34.023220, 35.108913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.433304, 33.909489, 34.904861>,  <47.525013, 33.719936, 34.564774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.433304, 33.909489, 34.904861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668758, 0.711367, -0.216150,
		-0.707246, 0.519034, -0.480007,
		-0.229272, 0.473879, 0.850219,
		47.364521, 34.051651, 35.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855526, 34.326534, 34.375839>,  <47.525013, 33.719936, 34.564774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855526, 34.326534, 34.375839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721256, 34.399830, 34.745434>,  <47.640694, 34.443810, 34.967190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.721256, 34.399830, 34.745434>,  <47.855526, 34.326534, 34.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.721256, 34.399830, 34.745434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671146, 0.734806, 0.098095,
		-0.660973, 0.653056, -0.369638,
		-0.335674, 0.183243, 0.923983,
		47.620556, 34.454803, 35.022629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669914, 35.076828, 34.504375>,  <47.855526, 34.326534, 34.375839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669914, 35.076828, 34.504375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772102, 34.936138, 34.864601>,  <47.833416, 34.851723, 35.080738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.772102, 34.936138, 34.864601>,  <47.669914, 35.076828, 34.504375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.772102, 34.936138, 34.864601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761637, 0.646968, 0.036621,
		-0.595519, 0.676551, 0.433169,
		0.255471, -0.351726, 0.900568,
		47.848743, 34.830620, 35.134773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.510300, 42.016079, 42.523777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126369, 42.121502, 42.485268>,  <36.896011, 42.184757, 42.462162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.126369, 42.121502, 42.485268>,  <37.510300, 42.016079, 42.523777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126369, 42.121502, 42.485268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061528, -0.532465, -0.844213,
		-0.273760, -0.804375, 0.527291,
		-0.959828, 0.263555, -0.096277,
		36.838421, 42.200569, 42.456383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100185, 41.414494, 42.505718>,  <37.510300, 42.016079, 42.523777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100185, 41.414494, 42.505718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852394, 41.681736, 42.340851>,  <36.703720, 41.842083, 42.241932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852394, 41.681736, 42.340851>,  <37.100185, 41.414494, 42.505718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852394, 41.681736, 42.340851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293252, -0.683982, -0.667961,
		-0.728185, -0.292918, 0.619634,
		-0.619476, 0.668108, -0.412166,
		36.666550, 41.882168, 42.217201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435955, 41.106476, 42.360027>,  <37.100185, 41.414494, 42.505718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435955, 41.106476, 42.360027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460487, 41.414780, 42.106358>,  <36.475208, 41.599762, 41.954155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460487, 41.414780, 42.106358>,  <36.435955, 41.106476, 42.360027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460487, 41.414780, 42.106358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262239, -0.600601, -0.755321,
		-0.963052, 0.212631, 0.165285,
		0.061334, 0.770757, -0.634170,
		36.478889, 41.646008, 41.916107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841156, 41.000656, 41.949959>,  <36.435955, 41.106476, 42.360027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841156, 41.000656, 41.949959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089417, 41.237305, 41.744133>,  <36.238373, 41.379292, 41.620640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089417, 41.237305, 41.744133>,  <35.841156, 41.000656, 41.949959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089417, 41.237305, 41.744133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159913, -0.546955, -0.821747,
		-0.767604, 0.592307, -0.244863,
		0.620655, 0.591619, -0.514562,
		36.275612, 41.414791, 41.589764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557198, 41.068909, 41.294250>,  <35.841156, 41.000656, 41.949959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557198, 41.068909, 41.294250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939045, 41.162926, 41.221085>,  <36.168152, 41.219337, 41.177185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.939045, 41.162926, 41.221085>,  <35.557198, 41.068909, 41.294250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939045, 41.162926, 41.221085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033216, -0.526312, -0.849642,
		-0.295973, 0.817160, -0.494620,
		0.954619, 0.235042, -0.182917,
		36.225430, 41.233437, 41.166210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519402, 41.299374, 40.657139>,  <35.557198, 41.068909, 41.294250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519402, 41.299374, 40.657139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898567, 41.184284, 40.711788>,  <36.126068, 41.115231, 40.744579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898567, 41.184284, 40.711788>,  <35.519402, 41.299374, 40.657139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898567, 41.184284, 40.711788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008866, -0.452609, -0.891665,
		0.318394, 0.844013, -0.431587,
		0.947917, -0.287727, 0.136625,
		36.182941, 41.097965, 40.752777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900921, 41.252186, 39.959347>,  <35.519402, 41.299374, 40.657139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900921, 41.252186, 39.959347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184574, 41.063580, 40.169033>,  <36.354767, 40.950417, 40.294846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184574, 41.063580, 40.169033>,  <35.900921, 41.252186, 39.959347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184574, 41.063580, 40.169033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215708, -0.562764, -0.797977,
		0.671267, 0.678950, -0.297366,
		0.709134, -0.471511, 0.524220,
		36.397316, 40.922127, 40.326298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454708, 41.112782, 39.546268>,  <35.900921, 41.252186, 39.959347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454708, 41.112782, 39.546268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532833, 40.843407, 39.831459>,  <36.579708, 40.681782, 40.002571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.532833, 40.843407, 39.831459>,  <36.454708, 41.112782, 39.546268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532833, 40.843407, 39.831459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374166, -0.620820, -0.688899,
		0.906560, 0.401323, 0.130723,
		0.195315, -0.673441, 0.712972,
		36.591427, 40.641373, 40.045349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075397, 40.894958, 39.428249>,  <36.454708, 41.112782, 39.546268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075397, 40.894958, 39.428249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941208, 40.590946, 39.650894>,  <36.860695, 40.408539, 39.784481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941208, 40.590946, 39.650894>,  <37.075397, 40.894958, 39.428249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941208, 40.590946, 39.650894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348916, -0.649074, -0.675989,
		0.875052, -0.032565, 0.482932,
		-0.335472, -0.760028, 0.556611,
		36.840565, 40.362938, 39.817879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556328, 40.467693, 39.376587>,  <37.075397, 40.894958, 39.428249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556328, 40.467693, 39.376587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251713, 40.233852, 39.488514>,  <37.068943, 40.093548, 39.555668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251713, 40.233852, 39.488514>,  <37.556328, 40.467693, 39.376587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251713, 40.233852, 39.488514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366404, -0.744458, -0.558149,
		0.534605, -0.322528, 0.781136,
		-0.761542, -0.584600, 0.279816,
		37.023251, 40.058472, 39.572460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888851, 39.879364, 39.606632>,  <37.556328, 40.467693, 39.376587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888851, 39.879364, 39.606632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513016, 39.792519, 39.500774>,  <37.287514, 39.740414, 39.437260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.513016, 39.792519, 39.500774>,  <37.888851, 39.879364, 39.606632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.513016, 39.792519, 39.500774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341146, -0.657466, -0.671831,
		-0.028132, -0.721527, 0.691814,
		-0.939589, -0.217109, -0.264642,
		37.231140, 39.727386, 39.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893196, 39.212421, 39.752243>,  <37.888851, 39.879364, 39.606632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893196, 39.212421, 39.752243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582401, 39.273617, 39.507984>,  <37.395924, 39.310333, 39.361431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.582401, 39.273617, 39.507984>,  <37.893196, 39.212421, 39.752243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582401, 39.273617, 39.507984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383674, -0.653952, -0.652028,
		-0.499088, -0.740905, 0.449412,
		-0.776985, 0.152991, -0.610646,
		37.349304, 39.319515, 39.324791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623981, 38.579559, 39.678246>,  <37.893196, 39.212421, 39.752243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623981, 38.579559, 39.678246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527378, 38.818298, 39.372189>,  <37.469414, 38.961540, 39.188553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527378, 38.818298, 39.372189>,  <37.623981, 38.579559, 39.678246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527378, 38.818298, 39.372189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530639, -0.578929, -0.619083,
		-0.812462, -0.555531, -0.176893,
		-0.241511, 0.596847, -0.765144,
		37.454926, 38.997353, 39.142647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405754, 38.173038, 39.191513>,  <37.623981, 38.579559, 39.678246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405754, 38.173038, 39.191513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491364, 38.496819, 38.972794>,  <37.542728, 38.691086, 38.841560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.491364, 38.496819, 38.972794>,  <37.405754, 38.173038, 39.191513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491364, 38.496819, 38.972794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394519, -0.583714, -0.709671,
		-0.893614, -0.063833, -0.444273,
		0.214028, 0.809446, -0.546798,
		37.555573, 38.739651, 38.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315063, 37.966908, 38.464283>,  <37.405754, 38.173038, 39.191513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315063, 37.966908, 38.464283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540516, 38.297276, 38.458931>,  <37.675789, 38.495495, 38.455719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.540516, 38.297276, 38.458931>,  <37.315063, 37.966908, 38.464283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540516, 38.297276, 38.458931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475146, -0.337422, -0.812640,
		-0.675689, 0.451671, -0.582613,
		0.563632, 0.825918, -0.013383,
		37.709606, 38.545052, 38.454918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486382, 38.116463, 37.734825>,  <37.315063, 37.966908, 38.464283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486382, 38.116463, 37.734825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768112, 38.340061, 37.909840>,  <37.937153, 38.474220, 38.014851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.768112, 38.340061, 37.909840>,  <37.486382, 38.116463, 37.734825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768112, 38.340061, 37.909840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657029, -0.279984, -0.699944,
		-0.268764, 0.780467, -0.564480,
		0.704328, 0.559000, 0.437540,
		37.979412, 38.507763, 38.041103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835171, 38.523792, 37.237015>,  <37.486382, 38.116463, 37.734825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835171, 38.523792, 37.237015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100548, 38.506672, 37.535816>,  <38.259773, 38.496399, 37.715096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.100548, 38.506672, 37.535816>,  <37.835171, 38.523792, 37.237015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100548, 38.506672, 37.535816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704821, -0.299335, -0.643138,
		0.251133, 0.953187, -0.168423,
		0.663446, -0.042805, 0.746999,
		38.299580, 38.493832, 37.759914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374283, 38.772209, 37.030617>,  <37.835171, 38.523792, 37.237015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374283, 38.772209, 37.030617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559193, 38.619198, 37.350609>,  <38.670139, 38.527390, 37.542606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.559193, 38.619198, 37.350609>,  <38.374283, 38.772209, 37.030617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559193, 38.619198, 37.350609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803745, -0.200324, -0.560236,
		0.374562, 0.901966, 0.214852,
		0.462274, -0.382529, 0.799984,
		38.697876, 38.504440, 37.590603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123486, 39.004166, 37.059929>,  <38.374283, 38.772209, 37.030617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123486, 39.004166, 37.059929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125202, 38.664356, 37.270943>,  <39.126232, 38.460472, 37.397552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.125202, 38.664356, 37.270943>,  <39.123486, 39.004166, 37.059929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125202, 38.664356, 37.270943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829100, -0.291918, -0.476841,
		0.559084, 0.439426, 0.703085,
		0.004294, -0.849522, 0.527535,
		39.126492, 38.409500, 37.429203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769272, 38.920963, 37.239506>,  <39.123486, 39.004166, 37.059929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769272, 38.920963, 37.239506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602516, 38.558636, 37.269676>,  <39.502460, 38.341240, 37.287781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.602516, 38.558636, 37.269676>,  <39.769272, 38.920963, 37.239506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602516, 38.558636, 37.269676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781417, -0.399551, -0.479319,
		0.464315, -0.140881, 0.874393,
		-0.416892, -0.905821, 0.075431,
		39.477448, 38.286888, 37.292305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403282, 38.396000, 37.269897>,  <39.769272, 38.920963, 37.239506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403282, 38.396000, 37.269897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063240, 38.206337, 37.178253>,  <39.859215, 38.092541, 37.123268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.063240, 38.206337, 37.178253>,  <40.403282, 38.396000, 37.269897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063240, 38.206337, 37.178253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489786, -0.552081, -0.674771,
		0.193459, -0.685844, 0.701564,
		-0.850107, -0.474157, -0.229112,
		39.808208, 38.064091, 37.109520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537708, 37.711510, 37.141087>,  <40.403282, 38.396000, 37.269897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537708, 37.711510, 37.141087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197399, 37.790451, 36.946255>,  <39.993214, 37.837814, 36.829357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.197399, 37.790451, 36.946255>,  <40.537708, 37.711510, 37.141087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197399, 37.790451, 36.946255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360923, -0.454269, -0.814478,
		-0.382004, -0.868729, 0.315249,
		-0.850769, 0.197353, -0.487077,
		39.942169, 37.849659, 36.800133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714081, 37.993877, 37.777248>,  <40.537708, 37.711510, 37.141087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714081, 37.993877, 37.777248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.032112, 38.163441, 37.603741>,  <41.222931, 38.265179, 37.499638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.032112, 38.163441, 37.603741>,  <40.714081, 37.993877, 37.777248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032112, 38.163441, 37.603741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134069, 0.820335, 0.555947,
		0.591505, -0.383866, 0.709062,
		0.795077, 0.423908, -0.433767,
		41.270634, 38.290615, 37.473610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005047, 38.426605, 38.323135>,  <40.714081, 37.993877, 37.777248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005047, 38.426605, 38.323135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.204334, 38.535938, 37.993999>,  <41.323906, 38.601536, 37.796516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.204334, 38.535938, 37.993999>,  <41.005047, 38.426605, 38.323135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204334, 38.535938, 37.993999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056743, 0.957256, 0.283622,
		0.865191, -0.094616, 0.492435,
		0.498221, 0.273329, -0.822841,
		41.353802, 38.617935, 37.747147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692249, 38.879604, 38.460117>,  <41.005047, 38.426605, 38.323135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692249, 38.879604, 38.460117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.570335, 38.991127, 38.095837>,  <41.497189, 39.058041, 37.877270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.570335, 38.991127, 38.095837>,  <41.692249, 38.879604, 38.460117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570335, 38.991127, 38.095837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036455, 0.958908, 0.281367,
		0.951725, 0.052556, -0.302420,
		-0.304780, 0.278808, -0.910700,
		41.478901, 39.074768, 37.822628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001713, 39.520546, 38.344582>,  <41.692249, 38.879604, 38.460117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001713, 39.520546, 38.344582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712517, 39.504749, 38.068687>,  <41.539001, 39.495270, 37.903152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.712517, 39.504749, 38.068687>,  <42.001713, 39.520546, 38.344582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.712517, 39.504749, 38.068687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200820, 0.967269, 0.155118,
		0.661030, 0.250660, -0.707255,
		-0.722988, -0.039493, -0.689731,
		41.495621, 39.492901, 37.861767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930691, 40.285736, 38.228455>,  <42.001713, 39.520546, 38.344582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930691, 40.285736, 38.228455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.621223, 40.112091, 38.043854>,  <41.435543, 40.007904, 37.933094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.621223, 40.112091, 38.043854>,  <41.930691, 40.285736, 38.228455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621223, 40.112091, 38.043854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579710, 0.778950, 0.239109,
		0.255691, 0.452530, -0.854306,
		-0.773666, -0.434111, -0.461506,
		41.389122, 39.981857, 37.905403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642365, 40.816929, 37.811085>,  <41.930691, 40.285736, 38.228455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642365, 40.816929, 37.811085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.342781, 40.558575, 37.870258>,  <41.163029, 40.403561, 37.905762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.342781, 40.558575, 37.870258>,  <41.642365, 40.816929, 37.811085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342781, 40.558575, 37.870258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583986, 0.748916, 0.313187,
		-0.313077, 0.148171, -0.938098,
		-0.748962, -0.645887, 0.147938,
		41.118092, 40.364807, 37.914639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175163, 41.200508, 37.585255>,  <41.642365, 40.816929, 37.811085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175163, 41.200508, 37.585255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996250, 40.912571, 37.797581>,  <40.888905, 40.739807, 37.924976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996250, 40.912571, 37.797581>,  <41.175163, 41.200508, 37.585255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996250, 40.912571, 37.797581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649636, 0.669403, 0.360377,
		-0.614746, -0.183649, -0.767047,
		-0.447281, -0.719842, 0.530818,
		40.862064, 40.696617, 37.956825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462833, 41.191849, 37.382378>,  <41.175163, 41.200508, 37.585255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462833, 41.191849, 37.382378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521698, 41.036804, 37.746376>,  <40.557018, 40.943775, 37.964775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.521698, 41.036804, 37.746376>,  <40.462833, 41.191849, 37.382378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521698, 41.036804, 37.746376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704503, 0.604699, 0.371504,
		-0.694275, -0.695769, -0.184086,
		0.147164, -0.387615, 0.909998,
		40.565845, 40.920521, 38.019375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766544, 41.168045, 37.714809>,  <40.462833, 41.191849, 37.382378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766544, 41.168045, 37.714809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006317, 41.127491, 38.032402>,  <40.150181, 41.103157, 38.222958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.006317, 41.127491, 38.032402>,  <39.766544, 41.168045, 37.714809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006317, 41.127491, 38.032402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594383, 0.607974, 0.526381,
		-0.536086, -0.787457, 0.304176,
		0.599434, -0.101388, 0.793977,
		40.186146, 41.097073, 38.270596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352859, 41.078827, 38.292461>,  <39.766544, 41.168045, 37.714809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352859, 41.078827, 38.292461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692944, 41.147793, 38.491428>,  <39.896992, 41.189171, 38.610809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.692944, 41.147793, 38.491428>,  <39.352859, 41.078827, 38.292461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692944, 41.147793, 38.491428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512385, 0.487943, 0.706664,
		-0.120875, -0.855679, 0.503193,
		0.850206, 0.172411, 0.497417,
		39.948006, 41.199516, 38.640652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236706, 40.918217, 38.951046>,  <39.352859, 41.078827, 38.292461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.236706, 40.918217, 38.951046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574791, 41.119396, 39.023338>,  <39.777641, 41.240105, 39.066715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.574791, 41.119396, 39.023338>,  <39.236706, 40.918217, 38.951046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574791, 41.119396, 39.023338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381519, 0.331014, 0.863060,
		0.374256, -0.798415, 0.471662,
		0.845207, 0.502954, 0.180727,
		39.828354, 41.270279, 39.077557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479370, 40.743759, 39.688877>,  <39.236706, 40.918217, 38.951046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479370, 40.743759, 39.688877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640244, 41.102364, 39.614571>,  <39.736771, 41.317528, 39.569988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.640244, 41.102364, 39.614571>,  <39.479370, 40.743759, 39.688877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640244, 41.102364, 39.614571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219344, 0.291338, 0.931134,
		0.888894, -0.333745, 0.313818,
		0.402188, 0.896514, -0.185764,
		39.760899, 41.371319, 39.558842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052418, 40.782879, 40.181995>,  <39.479370, 40.743759, 39.688877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052418, 40.782879, 40.181995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951580, 41.157673, 40.085243>,  <39.891079, 41.382549, 40.027191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951580, 41.157673, 40.085243>,  <40.052418, 40.782879, 40.181995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951580, 41.157673, 40.085243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086208, 0.227217, 0.970021,
		0.963856, 0.265388, 0.023496,
		-0.252093, 0.936986, -0.241883,
		39.875954, 41.438770, 40.012680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473141, 41.089863, 40.582199>,  <40.052418, 40.782879, 40.181995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473141, 41.089863, 40.582199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207279, 41.361191, 40.456902>,  <40.047764, 41.523987, 40.381721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.207279, 41.361191, 40.456902>,  <40.473141, 41.089863, 40.582199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207279, 41.361191, 40.456902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117936, 0.318748, 0.940474,
		0.737787, 0.662031, -0.131858,
		-0.664652, 0.678318, -0.313245,
		40.007885, 41.564686, 40.362926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668709, 41.809433, 40.714912>,  <40.473141, 41.089863, 40.582199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668709, 41.809433, 40.714912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271378, 41.817936, 40.669586>,  <40.032978, 41.823040, 40.642391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271378, 41.817936, 40.669586>,  <40.668709, 41.809433, 40.714912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271378, 41.817936, 40.669586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094365, 0.414760, 0.905025,
		0.066240, 0.909682, -0.409988,
		-0.993332, 0.021260, -0.113315,
		39.973377, 41.824314, 40.635593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498386, 42.284355, 41.124043>,  <40.668709, 41.809433, 40.714912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498386, 42.284355, 41.124043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152397, 42.089924, 41.074169>,  <39.944805, 41.973263, 41.044247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.152397, 42.089924, 41.074169>,  <40.498386, 42.284355, 41.124043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152397, 42.089924, 41.074169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298616, 0.298896, 0.906361,
		-0.403299, 0.821210, -0.403689,
		-0.864973, -0.486082, -0.124681,
		39.892906, 41.944099, 41.036766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159378, 42.762901, 41.297554>,  <40.498386, 42.284355, 41.124043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159378, 42.762901, 41.297554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959507, 42.417900, 41.329575>,  <39.839584, 42.210899, 41.348785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.959507, 42.417900, 41.329575>,  <40.159378, 42.762901, 41.297554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959507, 42.417900, 41.329575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404558, 0.314092, 0.858882,
		-0.765931, 0.396782, -0.505879,
		-0.499682, -0.862502, 0.080052,
		39.809601, 42.159149, 41.353592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493988, 42.973011, 41.544239>,  <40.159378, 42.762901, 41.297554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493988, 42.973011, 41.544239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525513, 42.583523, 41.629715>,  <39.544426, 42.349831, 41.681000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525513, 42.583523, 41.629715>,  <39.493988, 42.973011, 41.544239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525513, 42.583523, 41.629715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441654, 0.158065, 0.883152,
		-0.893717, -0.163978, -0.417589,
		0.078812, -0.973718, 0.213687,
		39.549156, 42.291409, 41.693821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.926273, 42.873791, 41.972038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140434, 42.544369, 42.046978>,  <39.268932, 42.346714, 42.091942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140434, 42.544369, 42.046978>,  <38.926273, 42.873791, 41.972038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140434, 42.544369, 42.046978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377513, -0.034923, 0.925345,
		-0.755529, -0.566162, -0.329600,
		0.535406, -0.823554, 0.187348,
		39.301056, 42.297302, 42.103184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510067, 42.440220, 42.300472>,  <38.926273, 42.873791, 41.972038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510067, 42.440220, 42.300472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863640, 42.287224, 42.408070>,  <39.075783, 42.195427, 42.472630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863640, 42.287224, 42.408070>,  <38.510067, 42.440220, 42.300472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863640, 42.287224, 42.408070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304772, -0.034974, 0.951783,
		-0.354643, -0.923296, -0.147488,
		0.883936, -0.382493, 0.268992,
		39.128822, 42.172478, 42.488766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395004, 41.808262, 42.766266>,  <38.510067, 42.440220, 42.300472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395004, 41.808262, 42.766266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764404, 41.942093, 42.841320>,  <38.986042, 42.022392, 42.886353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.764404, 41.942093, 42.841320>,  <38.395004, 41.808262, 42.766266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764404, 41.942093, 42.841320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153844, -0.125049, 0.980150,
		0.351405, -0.934033, -0.064009,
		0.923497, 0.334583, 0.187638,
		39.041454, 42.042469, 42.897610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484035, 41.492443, 43.416332>,  <38.395004, 41.808262, 42.766266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484035, 41.492443, 43.416332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828773, 41.695068, 43.426235>,  <39.035618, 41.816643, 43.432178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.828773, 41.695068, 43.426235>,  <38.484035, 41.492443, 43.416332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828773, 41.695068, 43.426235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137594, 0.186550, 0.972763,
		0.488150, -0.841778, 0.230478,
		0.861845, 0.506566, 0.024759,
		39.087326, 41.847038, 43.433662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833488, 41.248592, 44.037106>,  <38.484035, 41.492443, 43.416332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833488, 41.248592, 44.037106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930767, 41.610554, 43.897392>,  <38.989136, 41.827732, 43.813564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.930767, 41.610554, 43.897392>,  <38.833488, 41.248592, 44.037106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930767, 41.610554, 43.897392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235923, 0.404468, 0.883598,
		0.940849, -0.132482, 0.311853,
		0.243196, 0.904905, -0.349288,
		39.003727, 41.882027, 43.792606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184673, 41.546108, 44.554848>,  <38.833488, 41.248592, 44.037106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184673, 41.546108, 44.554848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050388, 41.853699, 44.337234>,  <38.969818, 42.038254, 44.206669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.050388, 41.853699, 44.337234>,  <39.184673, 41.546108, 44.554848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050388, 41.853699, 44.337234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329508, 0.445188, 0.832606,
		0.882451, 0.458780, 0.103928,
		-0.335715, 0.768979, -0.544029,
		38.949673, 42.084393, 44.174026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344864, 42.105938, 45.009670>,  <39.184673, 41.546108, 44.554848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344864, 42.105938, 45.009670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095001, 42.276089, 44.747723>,  <38.945084, 42.378181, 44.590553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.095001, 42.276089, 44.747723>,  <39.344864, 42.105938, 45.009670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095001, 42.276089, 44.747723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334329, 0.612181, 0.716560,
		0.705708, 0.666548, -0.240188,
		-0.624660, 0.425380, -0.654868,
		38.907604, 42.403702, 44.551262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380375, 42.837856, 45.092442>,  <39.344864, 42.105938, 45.009670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380375, 42.837856, 45.092442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027557, 42.795521, 44.908791>,  <38.815868, 42.770119, 44.798599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027557, 42.795521, 44.908791>,  <39.380375, 42.837856, 45.092442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027557, 42.795521, 44.908791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443447, 0.515801, 0.733010,
		0.159238, 0.850145, -0.501893,
		-0.882042, -0.105840, -0.459130,
		38.762943, 42.763767, 44.771053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076145, 43.599663, 44.979027>,  <39.380375, 42.837856, 45.092442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076145, 43.599663, 44.979027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795368, 43.315041, 44.966629>,  <38.626900, 43.144268, 44.959190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.795368, 43.315041, 44.966629>,  <39.076145, 43.599663, 44.979027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795368, 43.315041, 44.966629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573415, 0.538789, 0.617173,
		-0.422453, 0.450995, -0.786217,
		-0.701946, -0.711555, -0.030994,
		38.584785, 43.101574, 44.957329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436352, 43.986656, 45.064426>,  <39.076145, 43.599663, 44.979027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436352, 43.986656, 45.064426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335712, 43.610512, 45.156013>,  <38.275330, 43.384827, 45.210968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.335712, 43.610512, 45.156013>,  <38.436352, 43.986656, 45.064426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335712, 43.610512, 45.156013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596378, 0.336962, 0.728553,
		-0.762255, 0.046748, -0.645587,
		-0.251596, -0.940357, 0.228972,
		38.260235, 43.328403, 45.224705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756859, 44.090603, 45.205372>,  <38.436352, 43.986656, 45.064426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756859, 44.090603, 45.205372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868286, 43.753387, 45.389408>,  <37.935143, 43.551060, 45.499828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.868286, 43.753387, 45.389408>,  <37.756859, 44.090603, 45.205372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868286, 43.753387, 45.389408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569927, 0.240485, 0.785716,
		-0.773035, -0.481094, -0.413480,
		0.278568, -0.843039, 0.460092,
		37.951855, 43.500477, 45.527435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154037, 43.820724, 45.544846>,  <37.756859, 44.090603, 45.205372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154037, 43.820724, 45.544846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463184, 43.651314, 45.733864>,  <37.648674, 43.549667, 45.847275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.463184, 43.651314, 45.733864>,  <37.154037, 43.820724, 45.544846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463184, 43.651314, 45.733864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401824, 0.249719, 0.881009,
		-0.491137, -0.870784, 0.022816,
		0.772866, -0.423528, 0.472548,
		37.695045, 43.524254, 45.875629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838459, 43.400482, 46.086178>,  <37.154037, 43.820724, 45.544846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838459, 43.400482, 46.086178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217632, 43.459011, 46.199326>,  <37.445137, 43.494129, 46.267212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217632, 43.459011, 46.199326>,  <36.838459, 43.400482, 46.086178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217632, 43.459011, 46.199326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310546, 0.227794, 0.922860,
		0.070602, -0.962652, 0.261374,
		0.947933, 0.146324, 0.282865,
		37.502010, 43.502911, 46.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.799675, 43.174595, 46.739578>,  <36.838459, 43.400482, 46.086178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.799675, 43.174595, 46.739578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138706, 43.386845, 46.742519>,  <37.342125, 43.514194, 46.744282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138706, 43.386845, 46.742519>,  <36.799675, 43.174595, 46.739578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138706, 43.386845, 46.742519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065533, 0.090915, 0.993700,
		0.526613, -0.842717, 0.111830,
		0.847575, 0.530624, 0.007349,
		37.392979, 43.546032, 46.744724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130604, 42.900764, 47.241188>,  <36.799675, 43.174595, 46.739578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130604, 42.900764, 47.241188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286930, 43.264008, 47.181057>,  <37.380726, 43.481953, 47.144978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286930, 43.264008, 47.181057>,  <37.130604, 42.900764, 47.241188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286930, 43.264008, 47.181057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102910, 0.205402, 0.973252,
		0.914700, -0.364887, 0.173728,
		0.390811, 0.908112, -0.150330,
		37.404175, 43.536442, 47.135960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537918, 43.017864, 47.881680>,  <37.130604, 42.900764, 47.241188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537918, 43.017864, 47.881680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504200, 43.376221, 47.707195>,  <37.483971, 43.591232, 47.602505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504200, 43.376221, 47.707195>,  <37.537918, 43.017864, 47.881680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504200, 43.376221, 47.707195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041803, 0.434201, 0.899846,
		0.995563, 0.094089, 0.000849,
		-0.084296, 0.895889, -0.436208,
		37.478912, 43.644989, 47.576332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065575, 43.466564, 48.231770>,  <37.537918, 43.017864, 47.881680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065575, 43.466564, 48.231770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787582, 43.708488, 48.076229>,  <37.620785, 43.853642, 47.982906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787582, 43.708488, 48.076229>,  <38.065575, 43.466564, 48.231770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787582, 43.708488, 48.076229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220676, 0.335283, 0.915908,
		0.684325, 0.722350, -0.099548,
		-0.694983, 0.604811, -0.388848,
		37.579086, 43.889931, 47.959576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259201, 44.126286, 48.368790>,  <38.065575, 43.466564, 48.231770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259201, 44.126286, 48.368790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865013, 44.146732, 48.303993>,  <37.628502, 44.159000, 48.265114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865013, 44.146732, 48.303993>,  <38.259201, 44.126286, 48.368790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865013, 44.146732, 48.303993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140973, 0.285922, 0.947827,
		0.094770, 0.956889, -0.274560,
		-0.985467, 0.051120, -0.161992,
		37.569374, 44.162067, 48.255394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149105, 44.800198, 48.552876>,  <38.259201, 44.126286, 48.368790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149105, 44.800198, 48.552876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781086, 44.643482, 48.551399>,  <37.560276, 44.549454, 48.550514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.781086, 44.643482, 48.551399>,  <38.149105, 44.800198, 48.552876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781086, 44.643482, 48.551399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222618, 0.514978, 0.827792,
		-0.322419, 0.762430, -0.561023,
		-0.920047, -0.391790, -0.003692,
		37.505074, 44.525944, 48.550293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752346, 45.357334, 48.761780>,  <38.149105, 44.800198, 48.552876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752346, 45.357334, 48.761780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542648, 45.022217, 48.822796>,  <37.416832, 44.821148, 48.859406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.542648, 45.022217, 48.822796>,  <37.752346, 45.357334, 48.761780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542648, 45.022217, 48.822796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284501, 0.341152, 0.895921,
		-0.802639, 0.426281, -0.417199,
		-0.524243, -0.837795, 0.152545,
		37.385376, 44.770878, 48.868561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166229, 45.658909, 49.028030>,  <37.752346, 45.357334, 48.761780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166229, 45.658909, 49.028030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163589, 45.270554, 49.123814>,  <37.162006, 45.037540, 49.181286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.163589, 45.270554, 49.123814>,  <37.166229, 45.658909, 49.028030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163589, 45.270554, 49.123814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085750, 0.239133, 0.967193,
		-0.996295, -0.014152, -0.084831,
		-0.006598, -0.970884, 0.239460,
		37.161610, 44.979290, 49.195652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574635, 45.588783, 49.436314>,  <37.166229, 45.658909, 49.028030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574635, 45.588783, 49.436314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840023, 45.301758, 49.521084>,  <36.999256, 45.129543, 49.571945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.840023, 45.301758, 49.521084>,  <36.574635, 45.588783, 49.436314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840023, 45.301758, 49.521084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031457, 0.309753, 0.950296,
		-0.747542, -0.623826, 0.228084,
		0.663469, -0.717561, 0.211930,
		37.039062, 45.086491, 49.584663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393635, 45.290531, 50.089661>,  <36.574635, 45.588783, 49.436314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393635, 45.290531, 50.089661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768970, 45.162868, 50.036503>,  <36.994171, 45.086269, 50.004608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768970, 45.162868, 50.036503>,  <36.393635, 45.290531, 50.089661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768970, 45.162868, 50.036503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218550, 0.249758, 0.943322,
		-0.267881, -0.914197, 0.304109,
		0.938336, -0.319162, -0.132892,
		37.050472, 45.067120, 49.996635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028465, 45.997402, 49.991016>,  <36.393635, 45.290531, 50.089661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028465, 45.997402, 49.991016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999180, 46.044617, 50.387138>,  <35.981609, 46.072945, 50.624813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.999180, 46.044617, 50.387138>,  <36.028465, 45.997402, 49.991016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999180, 46.044617, 50.387138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862736, 0.490651, -0.122265,
		-0.500327, -0.863324, 0.065915,
		-0.073214, 0.118040, 0.990306,
		35.977215, 46.080029, 50.684231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455524, 46.372452, 49.584160>,  <36.028465, 45.997402, 49.991016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455524, 46.372452, 49.584160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205944, 46.583057, 49.353176>,  <35.056194, 46.709423, 49.214584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205944, 46.583057, 49.353176>,  <35.455524, 46.372452, 49.584160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205944, 46.583057, 49.353176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113027, -0.670378, -0.733361,
		-0.773247, -0.522850, 0.358772,
		-0.623950, 0.526518, -0.577463,
		35.018761, 46.741013, 49.179935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907440, 45.947056, 49.298962>,  <35.455524, 46.372452, 49.584160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907440, 45.947056, 49.298962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891697, 46.247532, 49.035397>,  <34.882252, 46.427818, 48.877258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.891697, 46.247532, 49.035397>,  <34.907440, 45.947056, 49.298962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891697, 46.247532, 49.035397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036863, -0.660066, -0.750302,
		-0.998545, -0.005239, 0.053668,
		-0.039355, 0.751189, -0.658913,
		34.879890, 46.472889, 48.837723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314148, 45.837513, 48.718826>,  <34.907440, 45.947056, 49.298962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314148, 45.837513, 48.718826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563896, 46.105705, 48.558521>,  <34.713745, 46.266621, 48.462337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563896, 46.105705, 48.558521>,  <34.314148, 45.837513, 48.718826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563896, 46.105705, 48.558521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071360, -0.461948, -0.884031,
		-0.777859, 0.580565, -0.240583,
		0.624375, 0.670483, -0.400760,
		34.751209, 46.306850, 48.438293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038677, 45.925373, 48.072666>,  <34.314148, 45.837513, 48.718826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038677, 45.925373, 48.072666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423359, 46.032890, 48.051231>,  <34.654167, 46.097401, 48.038372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.423359, 46.032890, 48.051231>,  <34.038677, 45.925373, 48.072666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423359, 46.032890, 48.051231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128303, -0.614260, -0.778603,
		-0.242201, 0.741911, -0.625225,
		0.961705, 0.268796, -0.053585,
		34.711872, 46.113529, 48.035156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142509, 46.028496, 47.425182>,  <34.038677, 45.925373, 48.072666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142509, 46.028496, 47.425182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525909, 45.999191, 47.535397>,  <34.755947, 45.981609, 47.601524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525909, 45.999191, 47.535397>,  <34.142509, 46.028496, 47.425182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525909, 45.999191, 47.535397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170718, -0.626534, -0.760467,
		0.228345, 0.775943, -0.588023,
		0.958495, -0.073263, 0.275534,
		34.813457, 45.977211, 47.618057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481564, 46.071476, 46.862881>,  <34.142509, 46.028496, 47.425182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481564, 46.071476, 46.862881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759071, 45.892994, 47.089012>,  <34.925575, 45.785904, 47.224689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759071, 45.892994, 47.089012>,  <34.481564, 46.071476, 46.862881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759071, 45.892994, 47.089012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261569, -0.575246, -0.775031,
		0.671021, 0.685562, -0.282374,
		0.693767, -0.446202, 0.565324,
		34.967201, 45.759132, 47.258610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025711, 45.870678, 46.372993>,  <34.481564, 46.071476, 46.862881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025711, 45.870678, 46.372993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095387, 45.630581, 46.685242>,  <35.137192, 45.486523, 46.872589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.095387, 45.630581, 46.685242>,  <35.025711, 45.870678, 46.372993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095387, 45.630581, 46.685242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376848, -0.691755, -0.616004,
		0.909749, 0.401475, 0.105705,
		0.174189, -0.600244, 0.780619,
		35.147644, 45.450508, 46.919426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.689682, 45.734715, 46.309704>,  <35.025711, 45.870678, 46.372993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.689682, 45.734715, 46.309704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539482, 45.445480, 46.541615>,  <35.449360, 45.271938, 46.680759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539482, 45.445480, 46.541615>,  <35.689682, 45.734715, 46.309704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539482, 45.445480, 46.541615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514873, -0.682895, -0.518228,
		0.770651, 0.103914, 0.628728,
		-0.375504, -0.723088, 0.579776,
		35.426830, 45.228554, 46.715546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241009, 45.272934, 46.533974>,  <35.689682, 45.734715, 46.309704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241009, 45.272934, 46.533974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897312, 45.073715, 46.580719>,  <35.691093, 44.954185, 46.608768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.897312, 45.073715, 46.580719>,  <36.241009, 45.272934, 46.533974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897312, 45.073715, 46.580719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318639, -0.699758, -0.639382,
		0.400220, -0.512144, 0.759956,
		-0.859240, -0.498044, 0.116868,
		35.639542, 44.924301, 46.615780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464787, 44.591633, 46.453033>,  <36.241009, 45.272934, 46.533974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464787, 44.591633, 46.453033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072472, 44.521965, 46.417881>,  <35.837082, 44.480164, 46.396790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.072472, 44.521965, 46.417881>,  <36.464787, 44.591633, 46.453033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072472, 44.521965, 46.417881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191856, -0.779559, -0.596220,
		0.035334, -0.601626, 0.797997,
		-0.980787, -0.174167, -0.087880,
		35.778236, 44.469715, 46.391518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326118, 43.866547, 46.684116>,  <36.464787, 44.591633, 46.453033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326118, 43.866547, 46.684116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033527, 43.978294, 46.435314>,  <35.857971, 44.045341, 46.286034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033527, 43.978294, 46.435314>,  <36.326118, 43.866547, 46.684116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033527, 43.978294, 46.435314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213076, -0.772880, -0.597708,
		-0.647716, -0.569747, 0.505820,
		-0.731480, 0.279367, -0.622006,
		35.814083, 44.062103, 46.248711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151386, 43.204746, 46.366905>,  <36.326118, 43.866547, 46.684116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151386, 43.204746, 46.366905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982178, 43.457886, 46.107506>,  <35.880653, 43.609772, 45.951866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.982178, 43.457886, 46.107506>,  <36.151386, 43.204746, 46.366905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982178, 43.457886, 46.107506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087307, -0.683888, -0.724344,
		-0.901902, -0.363034, 0.234050,
		-0.423026, 0.632853, -0.648495,
		35.855270, 43.647743, 45.912956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847996, 42.827595, 45.902340>,  <36.151386, 43.204746, 46.366905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847996, 42.827595, 45.902340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890808, 43.162949, 45.688553>,  <35.916496, 43.364162, 45.560280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.890808, 43.162949, 45.688553>,  <35.847996, 42.827595, 45.902340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890808, 43.162949, 45.688553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265162, -0.542154, -0.797345,
		-0.958245, -0.056380, -0.280335,
		0.107030, 0.838386, -0.534466,
		35.922916, 43.414463, 45.528214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355675, 42.720833, 45.251099>,  <35.847996, 42.827595, 45.902340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355675, 42.720833, 45.251099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652451, 42.974468, 45.163963>,  <35.830517, 43.126652, 45.111683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.652451, 42.974468, 45.163963>,  <35.355675, 42.720833, 45.251099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652451, 42.974468, 45.163963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155403, -0.478693, -0.864120,
		-0.652208, 0.607273, -0.453701,
		0.741940, 0.634092, -0.217835,
		35.875034, 43.164696, 45.098614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213718, 42.842136, 44.605011>,  <35.355675, 42.720833, 45.251099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213718, 42.842136, 44.605011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585346, 42.983204, 44.649651>,  <35.808323, 43.067844, 44.676434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.585346, 42.983204, 44.649651>,  <35.213718, 42.842136, 44.605011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585346, 42.983204, 44.649651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210295, -0.255365, -0.943697,
		-0.304314, 0.900229, -0.311417,
		0.929069, 0.352670, 0.111603,
		35.864067, 43.089005, 44.683132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390919, 43.282757, 44.027122>,  <35.213718, 42.842136, 44.605011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390919, 43.282757, 44.027122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736317, 43.136803, 44.166397>,  <35.943554, 43.049229, 44.249962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.736317, 43.136803, 44.166397>,  <35.390919, 43.282757, 44.027122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736317, 43.136803, 44.166397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347457, -0.070022, -0.935078,
		0.365580, 0.928414, 0.066320,
		0.863496, -0.364889, 0.348182,
		35.995365, 43.027336, 44.270851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830421, 43.467922, 43.540268>,  <35.390919, 43.282757, 44.027122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830421, 43.467922, 43.540268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058498, 43.192806, 43.719963>,  <36.195347, 43.027737, 43.827782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058498, 43.192806, 43.719963>,  <35.830421, 43.467922, 43.540268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058498, 43.192806, 43.719963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397132, -0.247930, -0.883639,
		0.719141, 0.682255, 0.131776,
		0.570196, -0.687793, 0.449242,
		36.229557, 42.986469, 43.854736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569988, 43.647541, 43.384312>,  <35.830421, 43.467922, 43.540268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569988, 43.647541, 43.384312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556446, 43.258026, 43.474277>,  <36.548321, 43.024315, 43.528255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556446, 43.258026, 43.474277>,  <36.569988, 43.647541, 43.384312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556446, 43.258026, 43.474277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421086, -0.217989, -0.880436,
		0.906389, 0.064904, 0.417428,
		-0.033851, -0.973791, 0.224913,
		36.546291, 42.965889, 43.541752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102879, 43.378693, 42.945103>,  <36.569988, 43.647541, 43.384312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102879, 43.378693, 42.945103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863705, 43.073879, 43.044521>,  <36.720200, 42.890991, 43.104172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863705, 43.073879, 43.044521>,  <37.102879, 43.378693, 42.945103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863705, 43.073879, 43.044521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287745, -0.493484, -0.820778,
		0.748113, -0.419258, 0.514344,
		-0.597938, -0.762035, 0.248542,
		36.684322, 42.845268, 43.119083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491356, 42.784145, 42.813545>,  <37.102879, 43.378693, 42.945103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491356, 42.784145, 42.813545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098961, 42.710930, 42.787735>,  <36.863525, 42.667000, 42.772247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098961, 42.710930, 42.787735>,  <37.491356, 42.784145, 42.813545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098961, 42.710930, 42.787735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157294, -0.555029, -0.816824,
		0.113698, -0.811442, 0.573267,
		-0.980985, -0.183042, -0.064529,
		36.804665, 42.656017, 42.768375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.878716, 29.834780, 42.461243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647789, 30.136789, 42.585598>,  <43.509235, 30.317995, 42.660210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647789, 30.136789, 42.585598>,  <43.878716, 29.834780, 42.461243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647789, 30.136789, 42.585598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198467, 0.499081, -0.843522,
		-0.792035, -0.425276, -0.437973,
		-0.577313, 0.755022, 0.310886,
		43.474594, 30.363297, 42.678864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.706982, 30.110222, 41.853607>,  <43.878716, 29.834780, 42.461243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.706982, 30.110222, 41.853607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579117, 30.403236, 42.094009>,  <43.502399, 30.579044, 42.238251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.579117, 30.403236, 42.094009>,  <43.706982, 30.110222, 41.853607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579117, 30.403236, 42.094009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207643, 0.673025, -0.709875,
		-0.924502, -0.102122, -0.367244,
		-0.319658, 0.732536, 0.601007,
		43.483219, 30.622997, 42.274311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085835, 30.542280, 41.505257>,  <43.706982, 30.110222, 41.853607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085835, 30.542280, 41.505257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283134, 30.769123, 41.769104>,  <43.401512, 30.905230, 41.927414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283134, 30.769123, 41.769104>,  <43.085835, 30.542280, 41.505257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283134, 30.769123, 41.769104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189545, 0.669991, -0.717764,
		-0.848987, 0.479063, 0.222978,
		0.493247, 0.567108, 0.659618,
		43.431110, 30.939255, 41.966988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721401, 31.221853, 41.437965>,  <43.085835, 30.542280, 41.505257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721401, 31.221853, 41.437965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083561, 31.272142, 41.600178>,  <43.300858, 31.302315, 41.697506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.083561, 31.272142, 41.600178>,  <42.721401, 31.221853, 41.437965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083561, 31.272142, 41.600178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105902, 0.858088, -0.502463,
		-0.411149, 0.497874, 0.763595,
		0.905395, 0.125721, 0.405528,
		43.355179, 31.309858, 41.721836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872437, 32.023560, 41.464687>,  <42.721401, 31.221853, 41.437965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872437, 32.023560, 41.464687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240799, 31.908978, 41.570423>,  <43.461815, 31.840229, 41.633865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.240799, 31.908978, 41.570423>,  <42.872437, 32.023560, 41.464687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240799, 31.908978, 41.570423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389129, 0.714912, -0.580930,
		-0.022568, 0.637844, 0.769835,
		0.920907, -0.286454, 0.264337,
		43.517071, 31.823042, 41.649723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138638, 32.571014, 41.733154>,  <42.872437, 32.023560, 41.464687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138638, 32.571014, 41.733154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434128, 32.338974, 41.595886>,  <43.611423, 32.199749, 41.513523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.434128, 32.338974, 41.595886>,  <43.138638, 32.571014, 41.733154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434128, 32.338974, 41.595886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372851, 0.775875, -0.508921,
		0.561484, 0.248001, 0.789450,
		0.738727, -0.580098, -0.343174,
		43.655746, 32.164944, 41.492935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742378, 32.975159, 41.838108>,  <43.138638, 32.571014, 41.733154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742378, 32.975159, 41.838108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813988, 32.699066, 41.557671>,  <43.856953, 32.533409, 41.389408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.813988, 32.699066, 41.557671>,  <43.742378, 32.975159, 41.838108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.813988, 32.699066, 41.557671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431406, 0.695517, -0.574582,
		0.884216, -0.199589, 0.422287,
		0.179028, -0.690232, -0.701091,
		43.867695, 32.491997, 41.347343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388718, 33.029678, 41.632275>,  <43.742378, 32.975159, 41.838108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388718, 33.029678, 41.632275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221798, 32.830338, 41.328300>,  <44.121647, 32.710735, 41.145916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.221798, 32.830338, 41.328300>,  <44.388718, 33.029678, 41.632275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.221798, 32.830338, 41.328300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429601, 0.628713, -0.648200,
		0.800814, -0.596965, -0.048271,
		-0.417301, -0.498350, -0.759939,
		44.096607, 32.680832, 41.100319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888077, 33.026157, 41.076939>,  <44.388718, 33.029678, 41.632275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888077, 33.026157, 41.076939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564873, 32.921989, 40.865547>,  <44.370949, 32.859489, 40.738712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.564873, 32.921989, 40.865547>,  <44.888077, 33.026157, 41.076939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564873, 32.921989, 40.865547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373019, 0.468193, -0.801032,
		0.456026, -0.844383, -0.281172,
		-0.808021, -0.260409, -0.528479,
		44.322468, 32.843864, 40.707001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.143440, 32.718842, 40.367466>,  <44.888077, 33.026157, 41.076939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.143440, 32.718842, 40.367466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768513, 32.854122, 40.333862>,  <44.543556, 32.935291, 40.313698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.768513, 32.854122, 40.333862>,  <45.143440, 32.718842, 40.367466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.768513, 32.854122, 40.333862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289710, 0.622269, -0.727220,
		-0.193670, -0.705974, -0.681244,
		-0.937316, 0.338204, -0.084013,
		44.487320, 32.955582, 40.308659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042698, 32.865921, 39.700752>,  <45.143440, 32.718842, 40.367466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042698, 32.865921, 39.700752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748962, 33.093559, 39.848743>,  <44.572720, 33.230141, 39.937538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.748962, 33.093559, 39.848743>,  <45.042698, 32.865921, 39.700752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.748962, 33.093559, 39.848743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141051, 0.661091, -0.736928,
		-0.663968, -0.488969, -0.565735,
		-0.734337, 0.569094, 0.369974,
		44.528660, 33.264286, 39.959736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786015, 33.170593, 39.104942>,  <45.042698, 32.865921, 39.700752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786015, 33.170593, 39.104942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611053, 33.382721, 39.395443>,  <44.506077, 33.509998, 39.569744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.611053, 33.382721, 39.395443>,  <44.786015, 33.170593, 39.104942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611053, 33.382721, 39.395443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137565, 0.837558, -0.528746,
		-0.888682, -0.131368, -0.439304,
		-0.437403, 0.530319, 0.726251,
		44.479832, 33.541817, 39.613319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093712, 33.435963, 38.809246>,  <44.786015, 33.170593, 39.104942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093712, 33.435963, 38.809246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219879, 33.672710, 39.105949>,  <44.295582, 33.814758, 39.283970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219879, 33.672710, 39.105949>,  <44.093712, 33.435963, 38.809246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219879, 33.672710, 39.105949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064105, 0.766585, -0.638935,
		-0.946784, 0.249084, 0.203855,
		0.315421, 0.591865, 0.741758,
		44.314507, 33.850269, 39.328476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.669182, 34.040665, 38.802273>,  <44.093712, 33.435963, 38.809246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.669182, 34.040665, 38.802273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004402, 34.144444, 38.994259>,  <44.205532, 34.206711, 39.109451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.004402, 34.144444, 38.994259>,  <43.669182, 34.040665, 38.802273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.004402, 34.144444, 38.994259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160458, 0.723602, -0.671308,
		-0.521471, 0.639601, 0.564782,
		0.838046, 0.259444, 0.479966,
		44.255817, 34.222275, 39.138248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715591, 34.782829, 38.708755>,  <43.669182, 34.040665, 38.802273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715591, 34.782829, 38.708755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081722, 34.701752, 38.847946>,  <44.301399, 34.653103, 38.931461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081722, 34.701752, 38.847946>,  <43.715591, 34.782829, 38.708755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081722, 34.701752, 38.847946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396407, 0.605791, -0.689840,
		-0.070974, 0.769371, 0.634847,
		0.915327, -0.202698, 0.347979,
		44.356319, 34.640942, 38.952339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.124893, 35.388000, 38.763557>,  <43.715591, 34.782829, 38.708755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.124893, 35.388000, 38.763557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419502, 35.119644, 38.729046>,  <44.596268, 34.958630, 38.708340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.419502, 35.119644, 38.729046>,  <44.124893, 35.388000, 38.763557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419502, 35.119644, 38.729046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371532, 0.507836, -0.777217,
		0.565242, 0.540382, 0.623289,
		0.736522, -0.670888, -0.086281,
		44.640457, 34.918377, 38.703163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758308, 35.643856, 38.826408>,  <44.124893, 35.388000, 38.763557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758308, 35.643856, 38.826408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813011, 35.326046, 38.589760>,  <44.845833, 35.135361, 38.447769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.813011, 35.326046, 38.589760>,  <44.758308, 35.643856, 38.826408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813011, 35.326046, 38.589760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436721, 0.584422, -0.683905,
		0.889141, -0.164845, 0.426912,
		0.136758, -0.794529, -0.591625,
		44.854038, 35.087688, 38.412273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474426, 35.650623, 38.508354>,  <44.758308, 35.643856, 38.826408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474426, 35.650623, 38.508354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309505, 35.390106, 38.253540>,  <45.210552, 35.233795, 38.100651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.309505, 35.390106, 38.253540>,  <45.474426, 35.650623, 38.508354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309505, 35.390106, 38.253540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555879, 0.374152, -0.742300,
		0.721807, -0.660169, 0.207778,
		-0.412303, -0.651297, -0.637039,
		45.185814, 35.194717, 38.062428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.915699, 35.481785, 38.040417>,  <45.474426, 35.650623, 38.508354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.915699, 35.481785, 38.040417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.579960, 35.380238, 37.848152>,  <45.378517, 35.319309, 37.732792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.579960, 35.380238, 37.848152>,  <45.915699, 35.481785, 38.040417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579960, 35.380238, 37.848152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363898, 0.394456, -0.843791,
		0.403845, -0.883141, -0.238687,
		-0.839338, -0.253903, -0.480672,
		45.328156, 35.304077, 37.703953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.198368, 35.200665, 37.392929>,  <45.915699, 35.481785, 38.040417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.198368, 35.200665, 37.392929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807549, 35.245800, 37.320671>,  <45.573055, 35.272881, 37.277317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807549, 35.245800, 37.320671>,  <46.198368, 35.200665, 37.392929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807549, 35.245800, 37.320671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212804, 0.481229, -0.850372,
		-0.009025, -0.869301, -0.494200,
		-0.977053, 0.112843, -0.180648,
		45.514431, 35.279652, 37.266476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.077229, 34.841652, 36.739967>,  <46.198368, 35.200665, 37.392929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.077229, 34.841652, 36.739967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824005, 35.140503, 36.820999>,  <45.672073, 35.319813, 36.869617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.824005, 35.140503, 36.820999>,  <46.077229, 34.841652, 36.739967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824005, 35.140503, 36.820999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232284, 0.432974, -0.870963,
		-0.738433, -0.504313, -0.447644,
		-0.633056, 0.747129, 0.202579,
		45.634087, 35.364643, 36.881771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353115, 34.381523, 36.128876>,  <46.077229, 34.841652, 36.739967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353115, 34.381523, 36.128876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.508995, 34.081627, 35.914951>,  <46.602524, 33.901688, 35.786598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.508995, 34.081627, 35.914951>,  <46.353115, 34.381523, 36.128876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508995, 34.081627, 35.914951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872179, -0.486916, 0.047069,
		-0.295696, 0.448105, -0.843662,
		0.389701, -0.749743, -0.534807,
		46.625904, 33.856705, 35.754509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.955143, 34.195702, 35.566654>,  <46.353115, 34.381523, 36.128876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.955143, 34.195702, 35.566654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144207, 33.858643, 35.669834>,  <46.257645, 33.656406, 35.731743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.144207, 33.858643, 35.669834>,  <45.955143, 34.195702, 35.566654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144207, 33.858643, 35.669834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871372, -0.490586, -0.005939,
		0.131550, -0.221962, -0.966140,
		0.472657, -0.842649, 0.257948,
		46.286003, 33.605846, 35.747219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656799, 33.747280, 35.210403>,  <45.955143, 34.195702, 35.566654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656799, 33.747280, 35.210403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.814651, 33.530186, 35.506973>,  <45.909363, 33.399929, 35.684914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.814651, 33.530186, 35.506973>,  <45.656799, 33.747280, 35.210403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.814651, 33.530186, 35.506973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861892, -0.498308, 0.093977,
		0.318453, -0.676112, -0.664425,
		0.394627, -0.542735, 0.741423,
		45.933041, 33.367367, 35.729401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.318436, 33.113285, 35.123447>,  <45.656799, 33.747280, 35.210403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.318436, 33.113285, 35.123447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487110, 33.070580, 35.483624>,  <45.588314, 33.044956, 35.699730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.487110, 33.070580, 35.483624>,  <45.318436, 33.113285, 35.123447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487110, 33.070580, 35.483624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812632, -0.485044, 0.323050,
		0.402261, -0.867948, -0.291296,
		0.421682, -0.106766, 0.900436,
		45.613613, 33.038551, 35.753754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263863, 32.339897, 35.328323>,  <45.318436, 33.113285, 35.123447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263863, 32.339897, 35.328323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306740, 32.533768, 35.675564>,  <45.332466, 32.650089, 35.883907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306740, 32.533768, 35.675564>,  <45.263863, 32.339897, 35.328323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306740, 32.533768, 35.675564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781718, -0.498430, 0.374813,
		0.614351, -0.718787, 0.325452,
		0.107196, 0.484678, 0.868099,
		45.338898, 32.679173, 35.935993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.013420, 31.916534, 35.870583>,  <45.263863, 32.339897, 35.328323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.013420, 31.916534, 35.870583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986565, 32.270027, 36.055843>,  <44.970451, 32.482124, 36.167000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.986565, 32.270027, 36.055843>,  <45.013420, 31.916534, 35.870583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986565, 32.270027, 36.055843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783019, -0.334365, 0.524482,
		0.618364, -0.327443, 0.714428,
		-0.067142, 0.883731, 0.463153,
		44.966423, 32.535145, 36.194790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.051846, 31.795120, 36.642300>,  <45.013420, 31.916534, 35.870583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.051846, 31.795120, 36.642300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878765, 32.153446, 36.601734>,  <44.774918, 32.368443, 36.577396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878765, 32.153446, 36.601734>,  <45.051846, 31.795120, 36.642300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878765, 32.153446, 36.601734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817042, -0.342115, 0.464112,
		0.381064, 0.283680, 0.879952,
		-0.432704, 0.895814, -0.101411,
		44.748955, 32.422192, 36.571312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.681683, 31.995348, 37.292706>,  <45.051846, 31.795120, 36.642300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.681683, 31.995348, 37.292706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519024, 32.227833, 37.010761>,  <44.421429, 32.367325, 36.841595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519024, 32.227833, 37.010761>,  <44.681683, 31.995348, 37.292706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519024, 32.227833, 37.010761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912223, -0.216203, 0.348002,
		0.049868, 0.784507, 0.618112,
		-0.406647, 0.581210, -0.704864,
		44.397030, 32.402195, 36.799301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127518, 32.372612, 37.677376>,  <44.681683, 31.995348, 37.292706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127518, 32.372612, 37.677376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017601, 32.413010, 37.294903>,  <43.951653, 32.437248, 37.065418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.017601, 32.413010, 37.294903>,  <44.127518, 32.372612, 37.677376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.017601, 32.413010, 37.294903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939862, -0.238019, 0.244963,
		-0.202851, 0.965996, 0.160324,
		-0.274793, 0.100992, -0.956185,
		43.935162, 32.443306, 37.008049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609833, 32.814880, 37.786186>,  <44.127518, 32.372612, 37.677376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609833, 32.814880, 37.786186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527409, 32.698807, 37.412376>,  <43.477955, 32.629162, 37.188091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.527409, 32.698807, 37.412376>,  <43.609833, 32.814880, 37.786186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527409, 32.698807, 37.412376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973215, -0.038725, 0.226614,
		-0.101948, 0.956188, -0.274429,
		-0.206059, -0.290181, -0.934524,
		43.465591, 32.611752, 37.132019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134319, 33.264080, 37.563145>,  <43.609833, 32.814880, 37.786186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134319, 33.264080, 37.563145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069458, 32.942581, 37.334167>,  <43.030540, 32.749683, 37.196781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.069458, 32.942581, 37.334167>,  <43.134319, 33.264080, 37.563145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069458, 32.942581, 37.334167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861179, -0.167946, 0.479754,
		-0.481742, 0.570774, -0.664937,
		-0.162158, -0.803748, -0.572446,
		43.020809, 32.701458, 37.162434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443726, 33.247227, 37.389168>,  <43.134319, 33.264080, 37.563145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443726, 33.247227, 37.389168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549114, 32.867588, 37.320110>,  <42.612347, 32.639805, 37.278675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.549114, 32.867588, 37.320110>,  <42.443726, 33.247227, 37.389168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549114, 32.867588, 37.320110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848018, -0.313179, 0.427532,
		-0.459836, 0.033760, -0.887362,
		0.263469, -0.949094, -0.172640,
		42.628155, 32.582859, 37.268318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862446, 32.957386, 36.985004>,  <42.443726, 33.247227, 37.389168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862446, 32.957386, 36.985004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.070644, 32.680534, 37.185020>,  <42.195564, 32.514423, 37.305031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.070644, 32.680534, 37.185020>,  <41.862446, 32.957386, 36.985004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070644, 32.680534, 37.185020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806853, -0.207034, 0.553286,
		-0.279420, -0.691442, -0.666207,
		0.520493, -0.692130, 0.500042,
		42.226791, 32.472897, 37.335033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404686, 32.413895, 37.032772>,  <41.862446, 32.957386, 36.985004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404686, 32.413895, 37.032772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683609, 32.354088, 37.313171>,  <41.850964, 32.318203, 37.481411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.683609, 32.354088, 37.313171>,  <41.404686, 32.413895, 37.032772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683609, 32.354088, 37.313171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715216, -0.209464, 0.666776,
		0.047137, -0.966317, -0.253001,
		0.697312, -0.149521, 0.700999,
		41.892803, 32.309231, 37.523472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171227, 31.810507, 37.357624>,  <41.404686, 32.413895, 37.032772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171227, 31.810507, 37.357624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423851, 31.976246, 37.619755>,  <41.575424, 32.075687, 37.777031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.423851, 31.976246, 37.619755>,  <41.171227, 31.810507, 37.357624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.423851, 31.976246, 37.619755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609136, -0.257744, 0.750014,
		0.479672, -0.872860, 0.089613,
		0.631560, 0.414347, 0.655323,
		41.613319, 32.100552, 37.816353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166618, 31.386572, 37.844631>,  <41.171227, 31.810507, 37.357624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166618, 31.386572, 37.844631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295258, 31.723515, 38.017609>,  <41.372440, 31.925680, 38.121395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.295258, 31.723515, 38.017609>,  <41.166618, 31.386572, 37.844631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295258, 31.723515, 38.017609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583099, -0.183656, 0.791370,
		0.746038, -0.506659, 0.432115,
		0.321593, 0.842358, 0.432447,
		41.391735, 31.976221, 38.147343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189980, 31.175749, 38.508091>,  <41.166618, 31.386572, 37.844631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189980, 31.175749, 38.508091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164688, 31.574940, 38.505508>,  <41.149513, 31.814455, 38.503960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.164688, 31.574940, 38.505508>,  <41.189980, 31.175749, 38.508091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164688, 31.574940, 38.505508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557358, -0.029948, 0.829732,
		0.827861, 0.056062, 0.558124,
		-0.063231, 0.997978, -0.006454,
		41.145718, 31.874332, 38.503571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.231506, 31.380892, 39.160770>,  <41.189980, 31.175749, 38.508091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.231506, 31.380892, 39.160770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075615, 31.703659, 38.983234>,  <40.982079, 31.897320, 38.876713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075615, 31.703659, 38.983234>,  <41.231506, 31.380892, 39.160770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075615, 31.703659, 38.983234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599299, 0.143716, 0.787519,
		0.699252, 0.572910, 0.427576,
		-0.389728, 0.806920, -0.443838,
		40.958698, 31.945736, 38.850082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.221989, 31.922459, 39.618843>,  <41.231506, 31.380892, 39.160770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.221989, 31.922459, 39.618843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920620, 32.028183, 39.378010>,  <40.739799, 32.091618, 39.233509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920620, 32.028183, 39.378010>,  <41.221989, 31.922459, 39.618843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920620, 32.028183, 39.378010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562766, 0.214381, 0.798333,
		0.340084, 0.940308, -0.012773,
		-0.753417, 0.264312, -0.602081,
		40.694595, 32.107475, 39.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992897, 32.551601, 39.938721>,  <41.221989, 31.922459, 39.618843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992897, 32.551601, 39.938721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698933, 32.439548, 39.691681>,  <40.522552, 32.372318, 39.543457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.698933, 32.439548, 39.691681>,  <40.992897, 32.551601, 39.938721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698933, 32.439548, 39.691681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675627, 0.381084, 0.631112,
		0.058563, 0.881080, -0.469328,
		-0.734914, -0.280131, -0.617599,
		40.478458, 32.355511, 39.506401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581512, 33.104248, 39.883450>,  <40.992897, 32.551601, 39.938721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581512, 33.104248, 39.883450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348473, 32.814644, 39.735729>,  <40.208649, 32.640881, 39.647095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.348473, 32.814644, 39.735729>,  <40.581512, 33.104248, 39.883450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348473, 32.814644, 39.735729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793586, 0.408635, 0.450819,
		-0.175486, 0.555723, -0.812635,
		-0.582602, -0.724009, -0.369305,
		40.173691, 32.597443, 39.624939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.238194, 42.568993, 39.400909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106770, 42.194397, 39.449970>,  <40.027916, 41.969639, 39.479404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106770, 42.194397, 39.449970>,  <40.238194, 42.568993, 39.400909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106770, 42.194397, 39.449970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591260, -0.305208, -0.746498,
		0.736518, -0.172754, 0.653986,
		-0.328562, -0.936485, 0.122648,
		40.008202, 41.913452, 39.486763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822590, 42.084473, 39.242588>,  <40.238194, 42.568993, 39.400909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822590, 42.084473, 39.242588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513443, 41.836994, 39.186161>,  <40.327957, 41.688507, 39.152306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513443, 41.836994, 39.186161>,  <40.822590, 42.084473, 39.242588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513443, 41.836994, 39.186161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549233, -0.540841, -0.637052,
		0.317846, -0.569832, 0.757803,
		-0.772863, -0.618695, -0.141066,
		40.281586, 41.651386, 39.143841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101379, 41.460266, 38.995102>,  <40.822590, 42.084473, 39.242588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101379, 41.460266, 38.995102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717407, 41.372272, 38.925667>,  <40.487022, 41.319477, 38.884007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717407, 41.372272, 38.925667>,  <41.101379, 41.460266, 38.995102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717407, 41.372272, 38.925667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278901, -0.810143, -0.515637,
		-0.027198, -0.543392, 0.839038,
		-0.959935, -0.219985, -0.173587,
		40.429428, 41.306278, 38.873592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879528, 40.897854, 39.308846>,  <41.101379, 41.460266, 38.995102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879528, 40.897854, 39.308846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634735, 40.939949, 38.995308>,  <40.487862, 40.965206, 38.807186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634735, 40.939949, 38.995308>,  <40.879528, 40.897854, 39.308846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634735, 40.939949, 38.995308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374465, -0.834412, -0.404393,
		-0.696605, -0.541000, 0.471232,
		-0.611978, 0.105243, -0.783841,
		40.451141, 40.971523, 38.760155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623146, 40.279560, 39.187988>,  <40.879528, 40.897854, 39.308846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623146, 40.279560, 39.187988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612938, 40.476318, 38.839874>,  <40.606812, 40.594372, 38.631008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612938, 40.476318, 38.839874>,  <40.623146, 40.279560, 39.187988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612938, 40.476318, 38.839874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418154, -0.785494, -0.456230,
		-0.908017, -0.375556, -0.185640,
		-0.025521, 0.491891, -0.870283,
		40.605282, 40.623886, 38.578789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301506, 39.806606, 38.784069>,  <40.623146, 40.279560, 39.187988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301506, 39.806606, 38.784069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472588, 40.072018, 38.538532>,  <40.575237, 40.231262, 38.391209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472588, 40.072018, 38.538532>,  <40.301506, 39.806606, 38.784069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472588, 40.072018, 38.538532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551890, -0.729510, -0.404020,
		-0.715884, -0.165976, -0.678205,
		0.427700, 0.663526, -0.613845,
		40.600899, 40.271076, 38.354378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213356, 39.535851, 38.232548>,  <40.301506, 39.806606, 38.784069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213356, 39.535851, 38.232548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483795, 39.807987, 38.119392>,  <40.646057, 39.971272, 38.051498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483795, 39.807987, 38.119392>,  <40.213356, 39.535851, 38.232548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483795, 39.807987, 38.119392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479557, -0.697800, -0.532071,
		-0.559391, 0.224070, -0.798044,
		0.676097, 0.680343, -0.282889,
		40.686623, 40.012089, 38.034527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189060, 39.448536, 37.581280>,  <40.213356, 39.535851, 38.232548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189060, 39.448536, 37.581280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 39.611652, 37.665878>,  <40.757534, 39.709522, 37.716637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544357, 39.611652, 37.665878>,  <40.189060, 39.448536, 37.581280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544357, 39.611652, 37.665878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457658, -0.745785, -0.484101,
		-0.039677, 0.526794, -0.849066,
		0.888243, 0.407789, 0.211501,
		40.810829, 39.733990, 37.729328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505917, 39.398861, 36.986801>,  <40.189060, 39.448536, 37.581280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505917, 39.398861, 36.986801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800846, 39.434521, 37.254654>,  <40.977802, 39.455917, 37.415367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.800846, 39.434521, 37.254654>,  <40.505917, 39.398861, 36.986801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800846, 39.434521, 37.254654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470745, -0.778759, -0.414649,
		0.484516, 0.620956, -0.616164,
		0.737322, 0.089152, 0.669633,
		41.022041, 39.461266, 37.455544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190353, 39.287270, 36.566864>,  <40.505917, 39.398861, 36.986801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190353, 39.287270, 36.566864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270363, 39.225719, 36.953918>,  <41.318367, 39.188789, 37.186150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270363, 39.225719, 36.953918>,  <41.190353, 39.287270, 36.566864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270363, 39.225719, 36.953918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538599, -0.807722, -0.239783,
		0.818476, 0.569128, -0.078682,
		0.200021, -0.153879, 0.967633,
		41.330368, 39.179554, 37.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841358, 39.167122, 36.670109>,  <41.190353, 39.287270, 36.566864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841358, 39.167122, 36.670109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680016, 38.977203, 36.982998>,  <41.583210, 38.863255, 37.170731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680016, 38.977203, 36.982998>,  <41.841358, 39.167122, 36.670109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680016, 38.977203, 36.982998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580951, -0.793337, -0.181968,
		0.706963, 0.381034, 0.595833,
		-0.403360, -0.474794, 0.782222,
		41.559006, 38.834766, 37.217663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369041, 38.728249, 36.940624>,  <41.841358, 39.167122, 36.670109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369041, 38.728249, 36.940624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025295, 38.594406, 37.095303>,  <41.819050, 38.514099, 37.188110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025295, 38.594406, 37.095303>,  <42.369041, 38.728249, 36.940624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025295, 38.594406, 37.095303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348159, -0.936712, -0.036811,
		0.374542, 0.102998, 0.921471,
		-0.859362, -0.334606, 0.386698,
		41.767487, 38.494026, 37.211311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494690, 38.278625, 37.580963>,  <42.369041, 38.728249, 36.940624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494690, 38.278625, 37.580963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197582, 38.219711, 37.319706>,  <42.019318, 38.184364, 37.162952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197582, 38.219711, 37.319706>,  <42.494690, 38.278625, 37.580963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197582, 38.219711, 37.319706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466526, -0.813563, -0.347085,
		-0.480251, -0.562513, 0.673006,
		-0.742773, -0.147287, -0.653142,
		41.974751, 38.175526, 37.123764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176495, 37.673031, 37.730125>,  <42.494690, 38.278625, 37.580963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176495, 37.673031, 37.730125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193695, 37.779251, 37.344872>,  <42.204014, 37.842983, 37.113720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193695, 37.779251, 37.344872>,  <42.176495, 37.673031, 37.730125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193695, 37.779251, 37.344872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391560, -0.891384, -0.228288,
		-0.919147, -0.367310, -0.142308,
		0.042999, 0.265552, -0.963137,
		42.206596, 37.858917, 37.055931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987171, 37.524731, 37.838196>,  <42.176495, 37.673031, 37.730125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987171, 37.524731, 37.838196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274097, 37.323589, 38.031113>,  <43.446251, 37.202904, 38.146862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274097, 37.323589, 38.031113>,  <42.987171, 37.524731, 37.838196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274097, 37.323589, 38.031113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623249, -0.153625, 0.766786,
		-0.311487, -0.850612, -0.423598,
		0.717313, -0.502851, 0.482290,
		43.489292, 37.172733, 38.175800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641586, 36.958427, 38.097088>,  <42.987171, 37.524731, 37.838196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641586, 36.958427, 38.097088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980789, 36.949909, 38.308910>,  <43.184311, 36.944798, 38.436005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980789, 36.949909, 38.308910>,  <42.641586, 36.958427, 38.097088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980789, 36.949909, 38.308910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522765, -0.197941, 0.829178,
		0.087161, -0.979983, -0.178989,
		0.848010, -0.021297, 0.529553,
		43.235191, 36.943520, 38.467777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512547, 36.522541, 38.615505>,  <42.641586, 36.958427, 38.097088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512547, 36.522541, 38.615505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818821, 36.725697, 38.773376>,  <43.002586, 36.847591, 38.868099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818821, 36.725697, 38.773376>,  <42.512547, 36.522541, 38.615505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818821, 36.725697, 38.773376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419459, -0.070896, 0.905002,
		0.487624, -0.858498, 0.158756,
		0.765687, 0.507892, 0.394676,
		43.048527, 36.878063, 38.891781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761398, 36.117767, 39.187489>,  <42.512547, 36.522541, 38.615505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761398, 36.117767, 39.187489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887962, 36.493084, 39.243343>,  <42.963902, 36.718273, 39.276855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887962, 36.493084, 39.243343>,  <42.761398, 36.117767, 39.187489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887962, 36.493084, 39.243343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223068, -0.069480, 0.972324,
		0.922024, -0.338797, 0.187318,
		0.316406, 0.938290, 0.139637,
		42.982883, 36.774570, 39.285233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231163, 36.125057, 39.801735>,  <42.761398, 36.117767, 39.187489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231163, 36.125057, 39.801735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089069, 36.494240, 39.742462>,  <43.003815, 36.715752, 39.706898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089069, 36.494240, 39.742462>,  <43.231163, 36.125057, 39.801735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.089069, 36.494240, 39.742462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263096, 0.053392, 0.963291,
		0.896990, 0.381177, 0.223860,
		-0.355232, 0.922959, -0.148178,
		42.982498, 36.771126, 39.698009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319454, 36.439529, 40.444962>,  <43.231163, 36.125057, 39.801735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319454, 36.439529, 40.444962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058727, 36.667988, 40.245388>,  <42.902290, 36.805061, 40.125645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058727, 36.667988, 40.245388>,  <43.319454, 36.439529, 40.444962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058727, 36.667988, 40.245388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464149, 0.219850, 0.858039,
		0.599755, 0.790860, 0.121795,
		-0.651813, 0.571144, -0.498933,
		42.863182, 36.839333, 40.095707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234760, 36.985840, 40.926609>,  <43.319454, 36.439529, 40.444962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234760, 36.985840, 40.926609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923077, 36.987560, 40.675907>,  <42.736065, 36.988590, 40.525486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923077, 36.987560, 40.675907>,  <43.234760, 36.985840, 40.926609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923077, 36.987560, 40.675907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619025, 0.151394, 0.770641,
		0.098199, 0.988464, -0.115306,
		-0.779208, 0.004299, -0.626751,
		42.689316, 36.988850, 40.487881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957203, 37.648575, 40.990894>,  <43.234760, 36.985840, 40.926609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957203, 37.648575, 40.990894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667400, 37.406384, 40.859146>,  <42.493519, 37.261070, 40.780098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.667400, 37.406384, 40.859146>,  <42.957203, 37.648575, 40.990894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.667400, 37.406384, 40.859146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460521, 0.069673, 0.884910,
		-0.512846, 0.792806, -0.329314,
		-0.724506, -0.605479, -0.329373,
		42.450050, 37.224739, 40.760334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370289, 38.040283, 41.069054>,  <42.957203, 37.648575, 40.990894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370289, 38.040283, 41.069054> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228668, 37.668571, 41.026920>,  <42.143696, 37.445545, 41.001640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228668, 37.668571, 41.026920>,  <42.370289, 38.040283, 41.069054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.228668, 37.668571, 41.026920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677267, 0.177097, 0.714105,
		-0.644947, 0.324166, -0.692069,
		-0.354052, -0.929276, -0.105329,
		42.122452, 37.389790, 40.995323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665619, 38.174244, 40.883522>,  <42.370289, 38.040283, 41.069054>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665619, 38.174244, 40.883522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686646, 37.800148, 41.023560>,  <41.699261, 37.575691, 41.107582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686646, 37.800148, 41.023560>,  <41.665619, 38.174244, 40.883522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686646, 37.800148, 41.023560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689490, 0.219616, 0.690198,
		-0.722386, -0.277671, -0.633292,
		0.052566, -0.935237, 0.350099,
		41.702415, 37.519577, 41.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013397, 37.948502, 40.911400>,  <41.665619, 38.174244, 40.883522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013397, 37.948502, 40.911400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193096, 37.696869, 41.165150>,  <41.300915, 37.545891, 41.317398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193096, 37.696869, 41.165150>,  <41.013397, 37.948502, 40.911400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193096, 37.696869, 41.165150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678699, 0.221445, 0.700235,
		-0.580985, -0.745129, -0.327474,
		0.449247, -0.629083, 0.634375,
		41.327869, 37.508144, 41.355461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540375, 37.659405, 41.392078>,  <41.013397, 37.948502, 40.911400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540375, 37.659405, 41.392078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881214, 37.581665, 41.586460>,  <41.085720, 37.535023, 41.703091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881214, 37.581665, 41.586460>,  <40.540375, 37.659405, 41.392078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881214, 37.581665, 41.586460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477233, 0.092682, 0.873876,
		-0.214875, -0.976544, -0.013774,
		0.852102, -0.194347, 0.485954,
		41.136845, 37.523361, 41.732246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337070, 37.081852, 41.954113>,  <40.540375, 37.659405, 41.392078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337070, 37.081852, 41.954113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661270, 37.286362, 42.068436>,  <40.855789, 37.409065, 42.137032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661270, 37.286362, 42.068436>,  <40.337070, 37.081852, 41.954113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661270, 37.286362, 42.068436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476053, 0.290698, 0.829981,
		0.341259, -0.808763, 0.479003,
		0.810503, 0.511270, 0.285811,
		40.904423, 37.439743, 42.154179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362663, 36.941582, 42.717468>,  <40.337070, 37.081852, 41.954113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362663, 36.941582, 42.717468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589287, 37.257221, 42.622524>,  <40.725262, 37.446606, 42.565559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589287, 37.257221, 42.622524>,  <40.362663, 36.941582, 42.717468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589287, 37.257221, 42.622524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315802, 0.473981, 0.821956,
		0.761106, -0.390727, 0.517735,
		0.566557, 0.789098, -0.237358,
		40.759254, 37.493950, 42.551315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368755, 36.359375, 43.261223>,  <40.362663, 36.941582, 42.717468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368755, 36.359375, 43.261223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990635, 36.257343, 43.342556>,  <39.763763, 36.196125, 43.391354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990635, 36.257343, 43.342556>,  <40.368755, 36.359375, 43.261223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.990635, 36.257343, 43.342556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044819, -0.515851, -0.855505,
		0.323106, -0.817823, 0.476202,
		-0.945301, -0.255076, 0.203329,
		39.707047, 36.180820, 43.403553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362244, 35.811172, 42.902187>,  <40.368755, 36.359375, 43.261223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362244, 35.811172, 42.902187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974098, 35.880909, 42.969124>,  <39.741211, 35.922749, 43.009285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974098, 35.880909, 42.969124>,  <40.362244, 35.811172, 42.902187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.974098, 35.880909, 42.969124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234879, -0.517553, -0.822782,
		-0.056834, -0.837702, 0.543162,
		-0.970362, 0.174339, 0.167344,
		39.682991, 35.933212, 43.019325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013996, 35.154404, 42.758877>,  <40.362244, 35.811172, 42.902187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013996, 35.154404, 42.758877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729473, 35.435551, 42.757298>,  <39.558758, 35.604240, 42.756351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729473, 35.435551, 42.757298>,  <40.013996, 35.154404, 42.758877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729473, 35.435551, 42.757298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500585, -0.510522, -0.699129,
		-0.493403, -0.495329, 0.714985,
		-0.711314, 0.702863, -0.003939,
		39.516079, 35.646412, 42.756115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371857, 34.831642, 42.756790>,  <40.013996, 35.154404, 42.758877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371857, 34.831642, 42.756790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321117, 35.194641, 42.596611>,  <39.290672, 35.412441, 42.500504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321117, 35.194641, 42.596611>,  <39.371857, 34.831642, 42.756790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321117, 35.194641, 42.596611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455470, -0.411919, -0.789221,
		-0.881167, 0.082276, 0.465591,
		-0.126852, 0.907498, -0.400444,
		39.283062, 35.466892, 42.476479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723328, 34.792446, 42.487812>,  <39.371857, 34.831642, 42.756790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723328, 34.792446, 42.487812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884964, 35.118290, 42.321377>,  <38.981945, 35.313797, 42.221516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884964, 35.118290, 42.321377>,  <38.723328, 34.792446, 42.487812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884964, 35.118290, 42.321377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241911, -0.343513, -0.907457,
		-0.882152, 0.467347, 0.058254,
		0.404087, 0.814607, -0.416088,
		39.006191, 35.362671, 42.196552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254860, 35.078907, 42.087257>,  <38.723328, 34.792446, 42.487812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254860, 35.078907, 42.087257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619434, 35.174591, 41.953354>,  <38.838181, 35.232002, 41.873013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619434, 35.174591, 41.953354>,  <38.254860, 35.078907, 42.087257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619434, 35.174591, 41.953354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266001, -0.278131, -0.922977,
		-0.313889, 0.930282, -0.189869,
		0.911437, 0.239207, -0.334758,
		38.892864, 35.246353, 41.852928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014122, 35.254948, 41.448051>,  <38.254860, 35.078907, 42.087257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014122, 35.254948, 41.448051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412865, 35.277065, 41.425339>,  <38.652111, 35.290337, 41.411713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412865, 35.277065, 41.425339>,  <38.014122, 35.254948, 41.448051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412865, 35.277065, 41.425339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056856, -0.000152, -0.998382,
		-0.055216, 0.998470, 0.002992,
		0.996854, 0.055297, -0.056777,
		38.711922, 35.293655, 41.408306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204300, 35.859200, 40.987053>,  <38.014122, 35.254948, 41.448051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204300, 35.859200, 40.987053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493397, 35.582897, 40.996017>,  <38.666855, 35.417118, 41.001396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493397, 35.582897, 40.996017>,  <38.204300, 35.859200, 40.987053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493397, 35.582897, 40.996017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138477, -0.176504, -0.974511,
		0.677099, 0.701220, -0.223220,
		0.722745, -0.690751, 0.022408,
		38.710220, 35.375671, 41.002739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684059, 36.133320, 40.375656>,  <38.204300, 35.859200, 40.987053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684059, 36.133320, 40.375656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782261, 35.754105, 40.456593>,  <38.841183, 35.526573, 40.505154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782261, 35.754105, 40.456593>,  <38.684059, 36.133320, 40.375656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782261, 35.754105, 40.456593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114899, -0.178804, -0.977153,
		0.962562, 0.263144, 0.065032,
		0.245503, -0.948042, 0.202345,
		38.855911, 35.469692, 40.517296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121777, 35.901451, 39.783401>,  <38.684059, 36.133320, 40.375656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121777, 35.901451, 39.783401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992439, 35.561481, 39.949806>,  <38.914837, 35.357498, 40.049648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992439, 35.561481, 39.949806>,  <39.121777, 35.901451, 39.783401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992439, 35.561481, 39.949806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036913, -0.427968, -0.903040,
		0.945560, -0.307352, 0.107009,
		-0.323348, -0.849928, 0.416015,
		38.895435, 35.306503, 40.074612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533680, 35.308617, 39.650143>,  <39.121777, 35.901451, 39.783401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533680, 35.308617, 39.650143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158756, 35.175526, 39.691612>,  <38.933804, 35.095673, 39.716496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158756, 35.175526, 39.691612>,  <39.533680, 35.308617, 39.650143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158756, 35.175526, 39.691612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047456, -0.416572, -0.907863,
		0.345256, -0.846027, 0.406246,
		-0.937308, -0.332724, 0.103675,
		38.877563, 35.075710, 39.722713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.450840, 34.526562, 39.645760>,  <39.533680, 35.308617, 39.650143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.450840, 34.526562, 39.645760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163303, 34.743233, 39.471474>,  <38.990780, 34.873238, 39.366901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163303, 34.743233, 39.471474>,  <39.450840, 34.526562, 39.645760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163303, 34.743233, 39.471474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078507, -0.559511, -0.825097,
		-0.690728, -0.627320, 0.359673,
		-0.718840, 0.541680, -0.435719,
		38.947651, 34.905735, 39.340759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.568974, 37.739300, 47.003460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218994, 37.810223, 46.823227>,  <39.009007, 37.852776, 46.715088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.218994, 37.810223, 46.823227>,  <39.568974, 37.739300, 47.003460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218994, 37.810223, 46.823227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276334, -0.581301, -0.765329,
		-0.397622, -0.794136, 0.459613,
		-0.874949, 0.177305, -0.450585,
		38.956509, 37.863415, 46.688053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456646, 37.158821, 46.752155>,  <39.568974, 37.739300, 47.003460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456646, 37.158821, 46.752155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.192211, 37.356121, 46.526001>,  <39.033550, 37.474503, 46.390308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.192211, 37.356121, 46.526001>,  <39.456646, 37.158821, 46.752155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192211, 37.356121, 46.526001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226816, -0.586910, -0.777233,
		-0.715202, -0.642060, 0.276123,
		-0.661090, 0.493250, -0.565389,
		38.993885, 37.504097, 46.356384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019279, 36.675537, 46.455570>,  <39.456646, 37.158821, 46.752155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019279, 36.675537, 46.455570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985020, 36.992577, 46.214092>,  <38.964462, 37.182800, 46.069206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.985020, 36.992577, 46.214092>,  <39.019279, 36.675537, 46.455570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985020, 36.992577, 46.214092> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185125, -0.582712, -0.791313,
		-0.978975, -0.179537, -0.096819,
		-0.085653, 0.792599, -0.603697,
		38.959324, 37.230358, 46.032982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678394, 36.409424, 45.926888>,  <39.019279, 36.675537, 46.455570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678394, 36.409424, 45.926888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803368, 36.757416, 45.774303>,  <38.878353, 36.966213, 45.682755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803368, 36.757416, 45.774303>,  <38.678394, 36.409424, 45.926888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803368, 36.757416, 45.774303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001719, -0.401043, -0.916058,
		-0.949937, 0.286867, -0.123805,
		0.312438, 0.869984, -0.381458,
		38.897099, 37.018410, 45.659866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212124, 36.525105, 45.391541>,  <38.678394, 36.409424, 45.926888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212124, 36.525105, 45.391541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547127, 36.734558, 45.329075>,  <38.748127, 36.860229, 45.291595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.547127, 36.734558, 45.329075>,  <38.212124, 36.525105, 45.391541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547127, 36.734558, 45.329075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104552, -0.434067, -0.894793,
		-0.536332, 0.733068, -0.418281,
		0.837506, 0.523639, -0.156160,
		38.798378, 36.891651, 45.282227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143433, 36.907333, 44.747627>,  <38.212124, 36.525105, 45.391541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143433, 36.907333, 44.747627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532124, 36.853851, 44.825462>,  <38.765339, 36.821762, 44.872162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532124, 36.853851, 44.825462>,  <38.143433, 36.907333, 44.747627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532124, 36.853851, 44.825462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120491, -0.427924, -0.895747,
		0.203037, 0.893870, -0.399715,
		0.971729, -0.133707, 0.194588,
		38.823643, 36.813740, 44.883839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473881, 37.146126, 44.085377>,  <38.143433, 36.907333, 44.747627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473881, 37.146126, 44.085377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763367, 36.946114, 44.275620>,  <38.937057, 36.826107, 44.389767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763367, 36.946114, 44.275620>,  <38.473881, 37.146126, 44.085377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763367, 36.946114, 44.275620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379279, -0.287559, -0.879464,
		0.576524, 0.816872, -0.018460,
		0.723718, -0.500030, 0.475607,
		38.980484, 36.796104, 44.418301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183655, 37.325447, 43.771584>,  <38.473881, 37.146126, 44.085377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183655, 37.325447, 43.771584> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.208466, 36.960476, 43.933392>,  <39.223351, 36.741493, 44.030476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.208466, 36.960476, 43.933392>,  <39.183655, 37.325447, 43.771584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208466, 36.960476, 43.933392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426560, -0.342183, -0.837232,
		0.902330, 0.224481, 0.367979,
		0.062027, -0.912425, 0.404516,
		39.227074, 36.686749, 44.054745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843063, 37.104881, 43.505135>,  <39.183655, 37.325447, 43.771584>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843063, 37.104881, 43.505135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667290, 36.778103, 43.654533>,  <39.561825, 36.582035, 43.744171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.667290, 36.778103, 43.654533>,  <39.843063, 37.104881, 43.505135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667290, 36.778103, 43.654533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124727, -0.467256, -0.875280,
		0.889573, -0.338045, 0.307224,
		-0.439436, -0.816944, 0.373494,
		39.535458, 36.533020, 43.766582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610580, 37.199150, 43.336872>,  <39.843063, 37.104881, 43.505135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610580, 37.199150, 43.336872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724171, 37.511066, 43.113701>,  <40.792324, 37.698215, 42.979797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724171, 37.511066, 43.113701>,  <40.610580, 37.199150, 43.336872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724171, 37.511066, 43.113701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126837, 0.607323, 0.784265,
		0.950404, -0.151948, 0.271373,
		0.283979, 0.779789, -0.557930,
		40.809364, 37.745003, 42.946323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855049, 37.662647, 43.816971>,  <40.610580, 37.199150, 43.336872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855049, 37.662647, 43.816971> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.829002, 37.895859, 43.493034>,  <40.813374, 38.035786, 43.298672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.829002, 37.895859, 43.493034>,  <40.855049, 37.662647, 43.816971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829002, 37.895859, 43.493034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044680, 0.812453, 0.581312,
		0.996877, 0.001670, -0.078954,
		-0.065118, 0.583024, -0.809841,
		40.809467, 38.070766, 43.250084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284782, 38.364162, 43.884449>,  <40.855049, 37.662647, 43.816971>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284782, 38.364162, 43.884449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991615, 38.451950, 43.626869>,  <40.815716, 38.504623, 43.472321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.991615, 38.451950, 43.626869>,  <41.284782, 38.364162, 43.884449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991615, 38.451950, 43.626869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219467, 0.819661, 0.529141,
		0.643949, 0.529141, -0.552575,
		-0.732915, 0.219468, -0.643949,
		40.771740, 38.517792, 43.433685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504810, 39.047493, 43.611012>,  <41.284782, 38.364162, 43.884449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504810, 39.047493, 43.611012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110008, 38.991508, 43.579422>,  <40.873127, 38.957916, 43.560467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.110008, 38.991508, 43.579422>,  <41.504810, 39.047493, 43.611012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110008, 38.991508, 43.579422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160679, 0.850196, 0.501348,
		-0.003024, 0.507521, -0.861634,
		-0.987002, -0.139963, -0.078977,
		40.813908, 38.949520, 43.555729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205772, 39.732964, 43.399624>,  <41.504810, 39.047493, 43.611012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205772, 39.732964, 43.399624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.889359, 39.538601, 43.548302>,  <40.699512, 39.421982, 43.637508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.889359, 39.538601, 43.548302>,  <41.205772, 39.732964, 43.399624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889359, 39.538601, 43.548302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218649, 0.791994, 0.570033,
		-0.571367, 0.369644, -0.732737,
		-0.791033, -0.485910, 0.371697,
		40.652050, 39.392826, 43.659809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607998, 40.194515, 43.468338>,  <41.205772, 39.732964, 43.399624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607998, 40.194515, 43.468338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.549789, 39.900917, 43.733688>,  <40.514866, 39.724758, 43.892899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.549789, 39.900917, 43.733688>,  <40.607998, 40.194515, 43.468338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549789, 39.900917, 43.733688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042082, 0.665316, 0.745375,
		-0.988460, 0.136382, -0.065928,
		-0.145519, -0.733999, 0.663377,
		40.506134, 39.680717, 43.932701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088249, 40.470680, 43.830795>,  <40.607998, 40.194515, 43.468338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088249, 40.470680, 43.830795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233570, 40.181255, 44.065559>,  <40.320763, 40.007599, 44.206417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.233570, 40.181255, 44.065559>,  <40.088249, 40.470680, 43.830795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.233570, 40.181255, 44.065559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182331, 0.672993, 0.716824,
		-0.913658, -0.153408, 0.376425,
		0.363297, -0.723565, 0.586914,
		40.342560, 39.964184, 44.241634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791744, 40.560196, 44.493488>,  <40.088249, 40.470680, 43.830795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791744, 40.560196, 44.493488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097904, 40.316906, 44.577614>,  <40.281601, 40.170933, 44.628090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.097904, 40.316906, 44.577614>,  <39.791744, 40.560196, 44.493488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097904, 40.316906, 44.577614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119876, 0.455820, 0.881962,
		-0.632297, -0.649839, 0.421794,
		0.765395, -0.608225, 0.210313,
		40.327522, 40.134438, 44.640709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580746, 40.262455, 45.159031>,  <39.791744, 40.560196, 44.493488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580746, 40.262455, 45.159031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975945, 40.269035, 45.097591>,  <40.213062, 40.272984, 45.060726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.975945, 40.269035, 45.097591>,  <39.580746, 40.262455, 45.159031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.975945, 40.269035, 45.097591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138170, 0.350553, 0.926294,
		0.069085, -0.936398, 0.344072,
		0.987996, 0.016452, -0.153600,
		40.272343, 40.273972, 45.051510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954506, 39.876400, 45.671303>,  <39.580746, 40.262455, 45.159031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954506, 39.876400, 45.671303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.247917, 40.122494, 45.555775>,  <40.423965, 40.270149, 45.486458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.247917, 40.122494, 45.555775>,  <39.954506, 39.876400, 45.671303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247917, 40.122494, 45.555775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155172, 0.262127, 0.952476,
		0.661707, -0.743487, 0.096811,
		0.733530, 0.615237, -0.288819,
		40.467976, 40.307064, 45.469128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385941, 39.791492, 46.063496>,  <39.954506, 39.876400, 45.671303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385941, 39.791492, 46.063496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.572140, 40.117817, 45.926235>,  <40.683861, 40.313614, 45.843880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.572140, 40.117817, 45.926235>,  <40.385941, 39.791492, 46.063496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572140, 40.117817, 45.926235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216930, 0.270723, 0.937897,
		0.858050, -0.511032, -0.050953,
		0.465501, 0.815816, -0.343152,
		40.711792, 40.362560, 45.823288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027809, 39.774143, 46.489532>,  <40.385941, 39.791492, 46.063496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027809, 39.774143, 46.489532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969101, 40.129414, 46.315357>,  <40.933876, 40.342575, 46.210854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.969101, 40.129414, 46.315357>,  <41.027809, 39.774143, 46.489532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969101, 40.129414, 46.315357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173750, 0.456509, 0.872589,
		0.973792, 0.052409, -0.221320,
		-0.146766, 0.888174, -0.435439,
		40.925072, 40.395866, 46.184727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568352, 40.323750, 46.806805>,  <41.027809, 39.774143, 46.489532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568352, 40.323750, 46.806805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.303257, 40.571121, 46.637890>,  <41.144199, 40.719543, 46.536541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.303257, 40.571121, 46.637890>,  <41.568352, 40.323750, 46.806805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303257, 40.571121, 46.637890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078626, 0.618262, 0.782030,
		0.744709, 0.485080, -0.458372,
		-0.662741, 0.618425, -0.422285,
		41.104435, 40.756649, 46.511204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918293, 40.911774, 46.843555>,  <41.568352, 40.323750, 46.806805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918293, 40.911774, 46.843555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527382, 40.992817, 46.818676>,  <41.292835, 41.041443, 46.803749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.527382, 40.992817, 46.818676>,  <41.918293, 40.911774, 46.843555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.527382, 40.992817, 46.818676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090829, 0.665520, 0.740833,
		0.191492, 0.718354, -0.668804,
		-0.977282, 0.202610, -0.062195,
		41.234196, 41.053600, 46.800018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.665497, 41.532593, 44.001225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014503, 41.422531, 44.162724>,  <33.223907, 41.356495, 44.259621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.014503, 41.422531, 44.162724>,  <32.665497, 41.532593, 44.001225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014503, 41.422531, 44.162724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192967, -0.565103, -0.802136,
		0.448871, 0.777784, -0.439963,
		0.872513, -0.275157, 0.403745,
		33.276257, 41.339985, 44.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019215, 41.490093, 43.453178>,  <32.665497, 41.532593, 44.001225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019215, 41.490093, 43.453178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266392, 41.303745, 43.706516>,  <33.414696, 41.191936, 43.858517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266392, 41.303745, 43.706516>,  <33.019215, 41.490093, 43.453178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266392, 41.303745, 43.706516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352562, -0.555822, -0.752836,
		0.702746, 0.688498, -0.179217,
		0.617938, -0.465867, 0.633340,
		33.451775, 41.163986, 43.896519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727524, 41.664772, 43.265606>,  <33.019215, 41.490093, 43.453178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727524, 41.664772, 43.265606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704990, 41.299278, 43.426559>,  <33.691471, 41.079983, 43.523132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704990, 41.299278, 43.426559>,  <33.727524, 41.664772, 43.265606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704990, 41.299278, 43.426559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439841, -0.384519, -0.811594,
		0.896307, 0.131266, 0.423560,
		-0.056332, -0.913736, 0.402384,
		33.688091, 41.025158, 43.547276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373428, 41.321136, 43.128887>,  <33.727524, 41.664772, 43.265606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373428, 41.321136, 43.128887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151512, 41.003410, 43.227894>,  <34.018364, 40.812775, 43.287296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.151512, 41.003410, 43.227894>,  <34.373428, 41.321136, 43.128887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151512, 41.003410, 43.227894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393605, -0.512681, -0.763042,
		0.732994, -0.325906, 0.597080,
		-0.554792, -0.794319, 0.247514,
		33.985073, 40.765114, 43.302147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743412, 40.606247, 42.869583>,  <34.373428, 41.321136, 43.128887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743412, 40.606247, 42.869583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374916, 40.460106, 42.923000>,  <34.153820, 40.372421, 42.955051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374916, 40.460106, 42.923000>,  <34.743412, 40.606247, 42.869583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374916, 40.460106, 42.923000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072825, -0.499215, -0.863413,
		0.382115, -0.785686, 0.486504,
		-0.921241, -0.365353, 0.133540,
		34.098545, 40.350502, 42.963062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773426, 39.810642, 42.949234>,  <34.743412, 40.606247, 42.869583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773426, 39.810642, 42.949234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411503, 39.899368, 42.803837>,  <34.194351, 39.952602, 42.716599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.411503, 39.899368, 42.803837>,  <34.773426, 39.810642, 42.949234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411503, 39.899368, 42.803837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107310, -0.707293, -0.698728,
		-0.412082, -0.671219, 0.616160,
		-0.904805, 0.221813, -0.363491,
		34.140060, 39.965912, 42.694790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522892, 39.109703, 42.685555>,  <34.773426, 39.810642, 42.949234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522892, 39.109703, 42.685555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301319, 39.396069, 42.515553>,  <34.168377, 39.567886, 42.413551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.301319, 39.396069, 42.515553>,  <34.522892, 39.109703, 42.685555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.301319, 39.396069, 42.515553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139046, -0.423756, -0.895040,
		-0.820870, -0.554885, 0.135187,
		-0.553930, 0.715914, -0.425003,
		34.135139, 39.610844, 42.388050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913445, 38.781582, 42.454113>,  <34.522892, 39.109703, 42.685555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913445, 38.781582, 42.454113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983368, 39.103008, 42.226524>,  <34.025322, 39.295864, 42.089970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.983368, 39.103008, 42.226524>,  <33.913445, 38.781582, 42.454113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983368, 39.103008, 42.226524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060022, -0.585492, -0.808453,
		-0.982771, 0.107173, -0.150580,
		0.174808, 0.803562, -0.568972,
		34.035809, 39.344078, 42.055832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560127, 38.582695, 41.826199>,  <33.913445, 38.781582, 42.454113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560127, 38.582695, 41.826199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781719, 38.901100, 41.728653>,  <33.914677, 39.092144, 41.670128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.781719, 38.901100, 41.728653>,  <33.560127, 38.582695, 41.826199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781719, 38.901100, 41.728653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071422, -0.337277, -0.938692,
		-0.829458, 0.502604, -0.243699,
		0.553984, 0.796011, -0.243860,
		33.947914, 39.139904, 41.655495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.388645, 38.694504, 41.107384>,  <33.560127, 38.582695, 41.826199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.388645, 38.694504, 41.107384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739265, 38.880070, 41.158684>,  <33.949638, 38.991409, 41.189465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739265, 38.880070, 41.158684>,  <33.388645, 38.694504, 41.107384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739265, 38.880070, 41.158684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307605, -0.334996, -0.890594,
		-0.370191, 0.820101, -0.436341,
		0.876549, 0.463911, 0.128254,
		34.002232, 39.019241, 41.197159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499577, 39.084751, 40.485149>,  <33.388645, 38.694504, 41.107384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499577, 39.084751, 40.485149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855217, 39.057095, 40.666134>,  <34.068600, 39.040501, 40.774723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855217, 39.057095, 40.666134>,  <33.499577, 39.084751, 40.485149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855217, 39.057095, 40.666134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431758, -0.201459, -0.879204,
		0.151940, 0.977054, -0.149265,
		0.889100, -0.069140, 0.452460,
		34.121948, 39.036354, 40.801872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994331, 39.539406, 40.179249>,  <33.499577, 39.084751, 40.485149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994331, 39.539406, 40.179249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179890, 39.227077, 40.346642>,  <34.291225, 39.039680, 40.447075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179890, 39.227077, 40.346642>,  <33.994331, 39.539406, 40.179249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179890, 39.227077, 40.346642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278637, -0.319805, -0.905586,
		0.840931, 0.536698, 0.069210,
		0.463893, -0.780820, 0.418478,
		34.319057, 38.992832, 40.472183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569794, 39.497890, 39.780712>,  <33.994331, 39.539406, 40.179249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569794, 39.497890, 39.780712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581127, 39.144405, 39.967583>,  <34.587929, 38.932316, 40.079704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.581127, 39.144405, 39.967583>,  <34.569794, 39.497890, 39.780712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581127, 39.144405, 39.967583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435255, -0.409828, -0.801620,
		0.899862, 0.226054, 0.373027,
		0.028333, -0.883708, 0.467180,
		34.589626, 38.879292, 40.107738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194561, 39.213379, 39.747643>,  <34.569794, 39.497890, 39.780712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194561, 39.213379, 39.747643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973850, 38.888023, 39.821331>,  <34.841423, 38.692810, 39.865543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973850, 38.888023, 39.821331>,  <35.194561, 39.213379, 39.747643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973850, 38.888023, 39.821331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485363, -0.492816, -0.722188,
		0.678210, -0.309070, 0.666714,
		-0.551774, -0.813393, 0.184222,
		34.808319, 38.644005, 39.876598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968098, 39.409584, 39.901962>,  <35.194561, 39.213379, 39.747643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968098, 39.409584, 39.901962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310272, 39.599205, 39.818531>,  <36.515575, 39.712978, 39.768471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.310272, 39.599205, 39.818531>,  <35.968098, 39.409584, 39.901962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310272, 39.599205, 39.818531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100064, 0.546430, 0.831505,
		0.508146, -0.690430, 0.514873,
		0.855439, 0.474046, -0.208579,
		36.566902, 39.741421, 39.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339634, 39.374798, 40.521004>,  <35.968098, 39.409584, 39.901962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339634, 39.374798, 40.521004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478489, 39.679531, 40.302242>,  <36.561802, 39.862370, 40.170986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478489, 39.679531, 40.302242>,  <36.339634, 39.374798, 40.521004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478489, 39.679531, 40.302242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027506, 0.591194, 0.806061,
		0.937410, -0.264772, 0.226182,
		0.347139, 0.761831, -0.546908,
		36.582630, 39.908081, 40.138168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578701, 39.807419, 41.007835>,  <36.339634, 39.374798, 40.521004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578701, 39.807419, 41.007835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588840, 40.055977, 40.694599>,  <36.594925, 40.205112, 40.506657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588840, 40.055977, 40.694599>,  <36.578701, 39.807419, 41.007835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588840, 40.055977, 40.694599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026102, 0.782664, 0.621897,
		0.999338, -0.036204, 0.003620,
		0.025349, 0.621391, -0.783090,
		36.596447, 40.242393, 40.459671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189358, 40.162785, 41.080849>,  <36.578701, 39.807419, 41.007835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189358, 40.162785, 41.080849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928177, 40.374866, 40.864506>,  <36.771469, 40.502117, 40.734699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928177, 40.374866, 40.864506>,  <37.189358, 40.162785, 41.080849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928177, 40.374866, 40.864506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101924, 0.769121, 0.630924,
		0.750507, 0.356839, -0.556242,
		-0.652955, 0.530207, -0.540860,
		36.732292, 40.533928, 40.702248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457043, 40.835419, 41.007198>,  <37.189358, 40.162785, 41.080849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457043, 40.835419, 41.007198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070438, 40.900364, 40.927711>,  <36.838474, 40.939331, 40.880020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.070438, 40.900364, 40.927711>,  <37.457043, 40.835419, 41.007198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.070438, 40.900364, 40.927711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025449, 0.709922, 0.703821,
		0.255353, 0.685309, -0.682017,
		-0.966513, 0.162365, -0.198721,
		36.780483, 40.949074, 40.868095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436031, 41.569916, 40.996635>,  <37.457043, 40.835419, 41.007198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436031, 41.569916, 40.996635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059608, 41.441776, 41.040062>,  <36.833755, 41.364891, 41.066116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059608, 41.441776, 41.040062>,  <37.436031, 41.569916, 40.996635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059608, 41.441776, 41.040062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230499, 0.842261, 0.487305,
		-0.247548, 0.433559, -0.866456,
		-0.941058, -0.320348, 0.108565,
		36.777290, 41.345673, 41.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081757, 42.197994, 40.822021>,  <37.436031, 41.569916, 40.996635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081757, 42.197994, 40.822021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850082, 41.969452, 41.054604>,  <36.711079, 41.832325, 41.194153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850082, 41.969452, 41.054604>,  <37.081757, 42.197994, 40.822021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850082, 41.969452, 41.054604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044559, 0.734399, 0.677254,
		-0.813974, 0.366349, -0.450815,
		-0.579189, -0.571356, 0.581457,
		36.676327, 41.798046, 41.229042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468937, 42.654827, 41.085987>,  <37.081757, 42.197994, 40.822021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468937, 42.654827, 41.085987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460251, 42.343151, 41.336548>,  <36.455040, 42.156143, 41.486885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.460251, 42.343151, 41.336548>,  <36.468937, 42.654827, 41.085987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460251, 42.343151, 41.336548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048400, 0.626638, 0.777806,
		-0.998592, -0.013429, -0.051320,
		-0.021714, -0.779195, 0.626406,
		36.453735, 42.109394, 41.524471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038330, 42.912651, 41.748611>,  <36.468937, 42.654827, 41.085987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038330, 42.912651, 41.748611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204376, 42.575844, 41.886417>,  <36.304005, 42.373760, 41.969101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.204376, 42.575844, 41.886417>,  <36.038330, 42.912651, 41.748611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204376, 42.575844, 41.886417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202184, 0.283836, 0.937315,
		-0.887020, -0.458747, -0.052418,
		0.415112, -0.842015, 0.344519,
		36.328911, 42.323238, 41.989773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656765, 42.666592, 42.305916>,  <36.038330, 42.912651, 41.748611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656765, 42.666592, 42.305916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028030, 42.523113, 42.345615>,  <36.250790, 42.437027, 42.369434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.028030, 42.523113, 42.345615>,  <35.656765, 42.666592, 42.305916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028030, 42.523113, 42.345615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015705, 0.304181, 0.952485,
		-0.371839, -0.882504, 0.287963,
		0.928164, -0.358694, 0.099247,
		36.306480, 42.415504, 42.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583385, 42.272045, 42.946018>,  <35.656765, 42.666592, 42.305916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583385, 42.272045, 42.946018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959202, 42.383823, 42.866852>,  <36.184692, 42.450890, 42.819351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.959202, 42.383823, 42.866852>,  <35.583385, 42.272045, 42.946018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959202, 42.383823, 42.866852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107895, 0.306944, 0.945592,
		0.324999, -0.909775, 0.258234,
		0.939540, 0.279454, -0.197917,
		36.241066, 42.467659, 42.807476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977436, 41.799545, 43.383347>,  <35.583385, 42.272045, 42.946018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977436, 41.799545, 43.383347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187988, 42.127918, 43.294815>,  <36.314320, 42.324944, 43.241695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187988, 42.127918, 43.294815>,  <35.977436, 41.799545, 43.383347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187988, 42.127918, 43.294815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079574, 0.211598, 0.974112,
		0.846516, -0.530367, 0.046057,
		0.526383, 0.820936, -0.221324,
		36.345901, 42.374199, 43.228416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641163, 41.741444, 43.801765>,  <35.977436, 41.799545, 43.383347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641163, 41.741444, 43.801765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584465, 42.121914, 43.692093>,  <36.550446, 42.350197, 43.626289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.584465, 42.121914, 43.692093>,  <36.641163, 41.741444, 43.801765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584465, 42.121914, 43.692093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043384, 0.270745, 0.961673,
		0.988952, 0.148206, 0.002889,
		-0.141744, 0.951174, -0.274183,
		36.541943, 42.407265, 43.609837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028679, 42.097416, 44.362606>,  <36.641163, 41.741444, 43.801765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028679, 42.097416, 44.362606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779972, 42.368694, 44.205910>,  <36.630749, 42.531460, 44.111893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.779972, 42.368694, 44.205910>,  <37.028679, 42.097416, 44.362606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779972, 42.368694, 44.205910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117187, 0.413993, 0.902706,
		0.774389, 0.607176, -0.177929,
		-0.621762, 0.678195, -0.391744,
		36.593445, 42.572151, 44.088387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636593, 42.557430, 44.192959>,  <37.028679, 42.097416, 44.362606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636593, 42.557430, 44.192959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989956, 42.617836, 44.370403>,  <38.201973, 42.654079, 44.476871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989956, 42.617836, 44.370403>,  <37.636593, 42.557430, 44.192959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989956, 42.617836, 44.370403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466631, -0.370413, -0.803150,
		0.043033, 0.916509, -0.397693,
		0.883405, 0.151014, 0.443612,
		38.254978, 42.663139, 44.503487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010876, 42.807415, 43.694973>,  <37.636593, 42.557430, 44.192959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010876, 42.807415, 43.694973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.280788, 42.688286, 43.965076>,  <38.442738, 42.616810, 44.127136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.280788, 42.688286, 43.965076>,  <38.010876, 42.807415, 43.694973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280788, 42.688286, 43.965076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603011, -0.305015, -0.737118,
		0.425491, 0.904582, -0.026230,
		0.674785, -0.297820, 0.675255,
		38.483223, 42.598938, 44.167652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604195, 43.153667, 43.505291>,  <38.010876, 42.807415, 43.694973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604195, 43.153667, 43.505291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.702316, 42.820911, 43.704403>,  <38.761189, 42.621258, 43.823872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.702316, 42.820911, 43.704403>,  <38.604195, 43.153667, 43.505291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702316, 42.820911, 43.704403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538168, -0.310228, -0.783667,
		0.806349, 0.460128, 0.371595,
		0.245308, -0.831890, 0.497778,
		38.775909, 42.571346, 43.853737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409019, 43.123657, 43.473232>,  <38.604195, 43.153667, 43.505291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409019, 43.123657, 43.473232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283607, 42.754272, 43.561695>,  <39.208359, 42.532642, 43.614773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283607, 42.754272, 43.561695>,  <39.409019, 43.123657, 43.473232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283607, 42.754272, 43.561695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486821, -0.356284, -0.797538,
		0.815292, -0.142390, 0.561269,
		-0.313533, -0.923464, 0.221157,
		39.189548, 42.477234, 43.628044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046055, 42.710911, 43.529442>,  <39.409019, 43.123657, 43.473232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046055, 42.710911, 43.529442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734123, 42.471653, 43.455593>,  <39.546963, 42.328098, 43.411285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.734123, 42.471653, 43.455593>,  <40.046055, 42.710911, 43.529442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734123, 42.471653, 43.455593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319410, -0.126564, -0.939127,
		0.538367, -0.791332, 0.289751,
		-0.779833, -0.598144, -0.184621,
		39.500172, 42.292210, 43.400208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271774, 42.227753, 43.140072>,  <40.046055, 42.710911, 43.529442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271774, 42.227753, 43.140072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.882618, 42.172188, 43.066109>,  <39.649124, 42.138851, 43.021732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.882618, 42.172188, 43.066109>,  <40.271774, 42.227753, 43.140072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882618, 42.172188, 43.066109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217691, -0.280072, -0.934971,
		0.078090, -0.949875, 0.302719,
		-0.972889, -0.138911, -0.184908,
		39.590752, 42.130516, 43.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237652, 41.617607, 42.795837>,  <40.271774, 42.227753, 43.140072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237652, 41.617607, 42.795837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.886322, 41.781830, 42.697865>,  <39.675526, 41.880363, 42.639080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.886322, 41.781830, 42.697865>,  <40.237652, 41.617607, 42.795837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886322, 41.781830, 42.697865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186890, -0.176684, -0.966362,
		-0.440018, -0.894555, 0.078458,
		-0.878326, 0.410553, -0.244928,
		39.622826, 41.904995, 42.624386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112785, 41.259007, 42.239208>,  <40.237652, 41.617607, 42.795837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112785, 41.259007, 42.239208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865349, 41.572098, 42.211834>,  <39.716888, 41.759953, 42.195408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.865349, 41.572098, 42.211834>,  <40.112785, 41.259007, 42.239208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865349, 41.572098, 42.211834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015477, -0.074948, -0.997067,
		-0.785560, -0.617837, 0.034248,
		-0.618592, 0.782726, -0.068439,
		39.679771, 41.806915, 42.191303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695107, 41.050571, 41.826160>,  <40.112785, 41.259007, 42.239208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695107, 41.050571, 41.826160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.640945, 41.445930, 41.798611>,  <39.608448, 41.683144, 41.782082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.640945, 41.445930, 41.798611>,  <39.695107, 41.050571, 41.826160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640945, 41.445930, 41.798611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036318, -0.064517, -0.997256,
		-0.990125, -0.137531, -0.027161,
		-0.135401, 0.988394, -0.068875,
		39.600327, 41.742447, 41.777946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984909, 41.135628, 41.542080>,  <39.695107, 41.050571, 41.826160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984909, 41.135628, 41.542080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251064, 41.422829, 41.460369>,  <39.410759, 41.595150, 41.411343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.251064, 41.422829, 41.460369>,  <38.984909, 41.135628, 41.542080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251064, 41.422829, 41.460369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048888, -0.231145, -0.971690,
		-0.744892, 0.656541, -0.118701,
		0.665392, 0.718001, -0.204275,
		39.450684, 41.638229, 41.399086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704182, 41.514843, 41.033371>,  <38.984909, 41.135628, 41.542080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704182, 41.514843, 41.033371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.087769, 41.626587, 41.014061>,  <39.317921, 41.693634, 41.002476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.087769, 41.626587, 41.014061>,  <38.704182, 41.514843, 41.033371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087769, 41.626587, 41.014061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055379, 0.017585, -0.998310,
		-0.278040, 0.960025, 0.032334,
		0.958972, 0.279361, -0.048276,
		39.375462, 41.710396, 40.999577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697929, 41.957748, 40.506287>,  <38.704182, 41.514843, 41.033371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697929, 41.957748, 40.506287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093563, 41.917912, 40.549736>,  <39.330944, 41.894009, 40.575806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093563, 41.917912, 40.549736>,  <38.697929, 41.957748, 40.506287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093563, 41.917912, 40.549736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107732, -0.014260, -0.994078,
		0.100548, 0.994926, -0.003375,
		0.989082, -0.099589, 0.108619,
		39.390289, 41.888035, 40.582321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981171, 42.291512, 40.004082>,  <38.697929, 41.957748, 40.506287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981171, 42.291512, 40.004082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315956, 42.105530, 40.119530>,  <39.516827, 41.993938, 40.188801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315956, 42.105530, 40.119530>,  <38.981171, 42.291512, 40.004082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315956, 42.105530, 40.119530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383153, 0.121300, -0.915686,
		0.390745, 0.876984, 0.279673,
		0.836966, -0.464957, 0.288622,
		39.567047, 41.966042, 40.206116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536533, 42.613716, 39.583069>,  <38.981171, 42.291512, 40.004082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536533, 42.613716, 39.583069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663624, 42.257946, 39.714504>,  <39.739880, 42.044483, 39.793365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.663624, 42.257946, 39.714504>,  <39.536533, 42.613716, 39.583069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663624, 42.257946, 39.714504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425718, -0.175835, -0.887607,
		0.847239, 0.421900, 0.322779,
		0.317725, -0.889428, 0.328584,
		39.758942, 41.991119, 39.813080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.410320, 34.389656, 30.796143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.223526, 34.173290, 30.516335>,  <33.111450, 34.043472, 30.348450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.223526, 34.173290, 30.516335>,  <33.410320, 34.389656, 30.796143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223526, 34.173290, 30.516335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869887, 0.138954, 0.473274,
		-0.158800, 0.829519, -0.535426,
		-0.466989, -0.540916, -0.699522,
		33.083427, 34.011017, 30.306479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805374, 34.752041, 30.477921>,  <33.410320, 34.389656, 30.796143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805374, 34.752041, 30.477921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759598, 34.354740, 30.470331>,  <32.732132, 34.116360, 30.465778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.759598, 34.354740, 30.470331>,  <32.805374, 34.752041, 30.477921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759598, 34.354740, 30.470331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840286, 0.086594, 0.535183,
		-0.529927, 0.077188, -0.844523,
		-0.114440, -0.993249, -0.018972,
		32.725266, 34.056767, 30.464640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112461, 34.602615, 30.586998>,  <32.805374, 34.752041, 30.477921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112461, 34.602615, 30.586998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190563, 34.213593, 30.637590>,  <32.237427, 33.980179, 30.667946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.190563, 34.213593, 30.637590>,  <32.112461, 34.602615, 30.586998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190563, 34.213593, 30.637590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867689, -0.111193, 0.484512,
		-0.457154, -0.204353, -0.865592,
		0.195260, -0.972561, 0.126483,
		32.249142, 33.921825, 30.675535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537041, 34.224590, 30.321913>,  <32.112461, 34.602615, 30.586998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537041, 34.224590, 30.321913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715431, 33.962311, 30.565607>,  <31.822466, 33.804943, 30.711824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.715431, 33.962311, 30.565607>,  <31.537041, 34.224590, 30.321913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715431, 33.962311, 30.565607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841561, -0.075419, 0.534871,
		-0.304766, -0.751247, -0.585445,
		0.445974, -0.655698, 0.609235,
		31.849224, 33.765602, 30.748377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060528, 33.657402, 30.392588>,  <31.537041, 34.224590, 30.321913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060528, 33.657402, 30.392588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306351, 33.652344, 30.708097>,  <31.453844, 33.649311, 30.897404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306351, 33.652344, 30.708097>,  <31.060528, 33.657402, 30.392588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306351, 33.652344, 30.708097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786506, -0.087229, 0.611391,
		0.061074, -0.996108, -0.063550,
		0.614555, -0.012643, 0.788772,
		31.490717, 33.648552, 30.944729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806173, 33.110424, 30.873697>,  <31.060528, 33.657402, 30.392588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806173, 33.110424, 30.873697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046028, 33.340443, 31.096323>,  <31.189941, 33.478455, 31.229898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.046028, 33.340443, 31.096323>,  <30.806173, 33.110424, 30.873697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046028, 33.340443, 31.096323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672046, -0.015763, 0.740342,
		0.434503, -0.817970, 0.377005,
		0.599634, 0.575045, 0.556562,
		31.225918, 33.512955, 31.263292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804106, 32.770123, 31.589111>,  <30.806173, 33.110424, 30.873697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804106, 32.770123, 31.589111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939240, 33.144428, 31.629536>,  <31.020321, 33.369011, 31.653790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.939240, 33.144428, 31.629536>,  <30.804106, 32.770123, 31.589111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939240, 33.144428, 31.629536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585019, 0.124660, 0.801382,
		0.737306, -0.329858, 0.589554,
		0.337835, 0.935764, 0.101061,
		31.040590, 33.425156, 31.659853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880606, 32.911270, 32.318577>,  <30.804106, 32.770123, 31.589111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880606, 32.911270, 32.318577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846790, 33.274567, 32.154648>,  <30.826500, 33.492542, 32.056290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.846790, 33.274567, 32.154648>,  <30.880606, 32.911270, 32.318577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846790, 33.274567, 32.154648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553800, 0.299094, 0.777077,
		0.828347, 0.292655, 0.477696,
		-0.084540, 0.908238, -0.409826,
		30.821428, 33.547039, 32.031700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901852, 33.355766, 32.892941>,  <30.880606, 32.911270, 32.318577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901852, 33.355766, 32.892941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736742, 33.580063, 32.605835>,  <30.637676, 33.714642, 32.433571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.736742, 33.580063, 32.605835>,  <30.901852, 33.355766, 32.892941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736742, 33.580063, 32.605835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613084, 0.411739, 0.674240,
		0.673606, 0.718359, 0.173826,
		-0.412775, 0.560742, -0.717764,
		30.612909, 33.748287, 32.390507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822258, 33.982738, 33.197849>,  <30.901852, 33.355766, 32.892941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822258, 33.982738, 33.197849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572096, 33.974064, 32.885849>,  <30.421999, 33.968861, 32.698650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.572096, 33.974064, 32.885849>,  <30.822258, 33.982738, 33.197849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572096, 33.974064, 32.885849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708124, 0.435662, 0.555661,
		0.327766, 0.899849, -0.287821,
		-0.625404, -0.021686, -0.780000,
		30.384474, 33.967560, 32.651848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472277, 34.550594, 33.360596>,  <30.822258, 33.982738, 33.197849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472277, 34.550594, 33.360596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255589, 34.355839, 33.086525>,  <30.125576, 34.238983, 32.922081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.255589, 34.355839, 33.086525>,  <30.472277, 34.550594, 33.360596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.255589, 34.355839, 33.086525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834665, 0.407944, 0.370022,
		0.099355, 0.772346, -0.627383,
		-0.541722, -0.486891, -0.685181,
		30.093071, 34.209770, 32.880970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.022331, 35.056705, 33.082703>,  <30.472277, 34.550594, 33.360596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.022331, 35.056705, 33.082703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884489, 34.685768, 33.024345>,  <29.801783, 34.463207, 32.989330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.884489, 34.685768, 33.024345>,  <30.022331, 35.056705, 33.082703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884489, 34.685768, 33.024345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813643, 0.217540, 0.539130,
		-0.468221, 0.304491, -0.829491,
		-0.344607, -0.927341, -0.145890,
		29.781107, 34.407566, 32.980579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333956, 35.139286, 32.969444>,  <30.022331, 35.056705, 33.082703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333956, 35.139286, 32.969444> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330139, 34.750164, 33.062012>,  <29.327850, 34.516689, 33.117554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330139, 34.750164, 33.062012>,  <29.333956, 35.139286, 32.969444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330139, 34.750164, 33.062012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689199, 0.174077, 0.703350,
		-0.724509, -0.152784, -0.672119,
		-0.009540, -0.972807, 0.231420,
		29.327278, 34.458321, 33.131439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583696, 35.024460, 32.910309>,  <29.333956, 35.139286, 32.969444>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583696, 35.024460, 32.910309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736544, 34.732956, 33.137604>,  <28.828253, 34.558052, 33.273979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.736544, 34.732956, 33.137604>,  <28.583696, 35.024460, 32.910309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736544, 34.732956, 33.137604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678751, 0.195947, 0.707744,
		-0.627121, -0.656132, -0.419774,
		0.382120, -0.728763, 0.568233,
		28.851179, 34.514328, 33.308075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980701, 34.665920, 33.251209>,  <28.583696, 35.024460, 32.910309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980701, 34.665920, 33.251209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282560, 34.572987, 33.496658>,  <28.463675, 34.517227, 33.643929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.282560, 34.572987, 33.496658>,  <27.980701, 34.665920, 33.251209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.282560, 34.572987, 33.496658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638307, -0.043450, 0.768555,
		-0.151901, -0.971665, -0.181091,
		0.754646, -0.232336, 0.613620,
		28.508955, 34.503284, 33.680744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738886, 34.116920, 33.657925>,  <27.980701, 34.665920, 33.251209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738886, 34.116920, 33.657925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033390, 34.302074, 33.855373>,  <28.210093, 34.413166, 33.973843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.033390, 34.302074, 33.855373>,  <27.738886, 34.116920, 33.657925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.033390, 34.302074, 33.855373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577842, 0.050437, 0.814589,
		0.352163, -0.884983, 0.304608,
		0.736261, 0.462884, 0.493618,
		28.254269, 34.440941, 34.003460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475393, 34.004658, 34.238327>,  <27.738886, 34.116920, 33.657925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475393, 34.004658, 34.238327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794317, 34.227680, 34.330784>,  <27.985672, 34.361492, 34.386257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.794317, 34.227680, 34.330784>,  <27.475393, 34.004658, 34.238327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794317, 34.227680, 34.330784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234180, -0.067192, 0.969869,
		0.556289, -0.827415, 0.076996,
		0.797310, 0.557558, 0.231142,
		28.033510, 34.394947, 34.400127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886806, 33.644920, 34.759781>,  <27.475393, 34.004658, 34.238327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886806, 33.644920, 34.759781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934011, 34.041157, 34.787495>,  <27.962336, 34.278900, 34.804123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.934011, 34.041157, 34.787495>,  <27.886806, 33.644920, 34.759781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934011, 34.041157, 34.787495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393923, -0.017349, 0.918980,
		0.911536, -0.135746, 0.388169,
		0.118014, 0.990592, 0.069288,
		27.969416, 34.338333, 34.808281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201593, 33.762985, 35.451126>,  <27.886806, 33.644920, 34.759781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201593, 33.762985, 35.451126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063732, 34.123936, 35.347641>,  <27.981016, 34.340508, 35.285549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.063732, 34.123936, 35.347641>,  <28.201593, 33.762985, 35.451126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063732, 34.123936, 35.347641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475420, 0.069847, 0.876982,
		0.809438, 0.425250, 0.404935,
		-0.344653, 0.902377, -0.258709,
		27.960337, 34.394650, 35.270027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550785, 34.194622, 35.890118>,  <28.201593, 33.762985, 35.451126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550785, 34.194622, 35.890118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201286, 34.339680, 35.760468>,  <27.991587, 34.426716, 35.682678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201286, 34.339680, 35.760468>,  <28.550785, 34.194622, 35.890118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201286, 34.339680, 35.760468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351147, -0.009228, 0.936275,
		0.336544, 0.931882, 0.135405,
		-0.873747, 0.362645, -0.324122,
		27.939161, 34.448475, 35.663231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842541, 33.532089, 35.950394>,  <28.550785, 34.194622, 35.890118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842541, 33.532089, 35.950394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224724, 33.606010, 36.042435>,  <29.454035, 33.650364, 36.097660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.224724, 33.606010, 36.042435>,  <28.842541, 33.532089, 35.950394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.224724, 33.606010, 36.042435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294090, -0.531087, -0.794643,
		-0.024649, 0.826919, -0.561780,
		0.955460, 0.184801, 0.230098,
		29.511362, 33.661449, 36.111465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253222, 33.665737, 35.257599>,  <28.842541, 33.532089, 35.950394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253222, 33.665737, 35.257599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529028, 33.613445, 35.542549>,  <29.694511, 33.582069, 35.713520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.529028, 33.613445, 35.542549>,  <29.253222, 33.665737, 35.257599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529028, 33.613445, 35.542549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583736, -0.481926, -0.653452,
		0.428739, 0.866404, -0.255983,
		0.689518, -0.130734, 0.712372,
		29.735884, 33.574226, 35.756260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902466, 33.586552, 34.907650>,  <29.253222, 33.665737, 35.257599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902466, 33.586552, 34.907650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017467, 33.434093, 35.259121>,  <30.086468, 33.342621, 35.470005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017467, 33.434093, 35.259121>,  <29.902466, 33.586552, 34.907650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017467, 33.434093, 35.259121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514356, -0.712452, -0.477336,
		0.807948, 0.589189, -0.008790,
		0.287504, -0.381141, 0.878677,
		30.103718, 33.319752, 35.522724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657650, 33.540741, 34.824604>,  <29.902466, 33.586552, 34.907650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657650, 33.540741, 34.824604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548737, 33.293102, 35.119244>,  <30.483389, 33.144520, 35.296028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.548737, 33.293102, 35.119244>,  <30.657650, 33.540741, 34.824604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548737, 33.293102, 35.119244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582411, -0.715406, -0.385994,
		0.765937, 0.323905, 0.555361,
		-0.272283, -0.619096, 0.736602,
		30.467052, 33.107372, 35.340225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275070, 33.190533, 35.044888>,  <30.657650, 33.540741, 34.824604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275070, 33.190533, 35.044888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.994944, 32.933998, 35.170261>,  <30.826868, 32.780079, 35.245487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.994944, 32.933998, 35.170261>,  <31.275070, 33.190533, 35.044888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.994944, 32.933998, 35.170261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477901, -0.747407, -0.461511,
		0.530250, -0.173412, 0.829917,
		-0.700318, -0.641335, 0.313439,
		30.784849, 32.741596, 35.264294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663303, 32.674500, 35.284897>,  <31.275070, 33.190533, 35.044888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663303, 32.674500, 35.284897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302866, 32.504910, 35.248520>,  <31.086603, 32.403156, 35.226692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302866, 32.504910, 35.248520>,  <31.663303, 32.674500, 35.284897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302866, 32.504910, 35.248520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411144, -0.768734, -0.489907,
		0.137801, -0.478843, 0.867018,
		-0.901095, -0.423979, -0.090941,
		31.032537, 32.377716, 35.221237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698448, 32.025272, 35.609715>,  <31.663303, 32.674500, 35.284897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698448, 32.025272, 35.609715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426962, 32.030643, 35.316006>,  <31.264071, 32.033867, 35.139778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.426962, 32.030643, 35.316006>,  <31.698448, 32.025272, 35.609715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426962, 32.030643, 35.316006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479211, -0.749548, -0.456656,
		-0.556506, -0.661813, 0.502298,
		-0.678718, 0.013425, -0.734276,
		31.223347, 32.034672, 35.095722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660007, 31.335758, 35.428165>,  <31.698448, 32.025272, 35.609715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660007, 31.335758, 35.428165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.478254, 31.495022, 35.109417>,  <31.369204, 31.590580, 34.918167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.478254, 31.495022, 35.109417>,  <31.660007, 31.335758, 35.428165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478254, 31.495022, 35.109417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405446, -0.704090, -0.582985,
		-0.793191, -0.587986, 0.158493,
		-0.454381, 0.398158, -0.796874,
		31.341940, 31.614470, 34.870354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534651, 30.757072, 35.029716>,  <31.660007, 31.335758, 35.428165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534651, 30.757072, 35.029716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504366, 31.061201, 34.771667>,  <31.486195, 31.243677, 34.616837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504366, 31.061201, 34.771667>,  <31.534651, 30.757072, 35.029716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504366, 31.061201, 34.771667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386602, -0.573988, -0.721856,
		-0.919133, -0.304059, -0.250483,
		-0.075712, 0.760320, -0.645121,
		31.481651, 31.289297, 34.578133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229774, 30.417570, 34.497513>,  <31.534651, 30.757072, 35.029716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229774, 30.417570, 34.497513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404667, 30.745144, 34.348824>,  <31.509604, 30.941689, 34.259609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.404667, 30.745144, 34.348824>,  <31.229774, 30.417570, 34.497513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404667, 30.745144, 34.348824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282847, -0.517562, -0.807543,
		-0.853712, 0.247945, -0.457929,
		0.437233, 0.818933, -0.371719,
		31.535837, 30.990824, 34.237309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875841, 30.580078, 33.766785>,  <31.229774, 30.417570, 34.497513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875841, 30.580078, 33.766785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237768, 30.748106, 33.794647>,  <31.454924, 30.848923, 33.811363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.237768, 30.748106, 33.794647>,  <30.875841, 30.580078, 33.766785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237768, 30.748106, 33.794647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287351, -0.481665, -0.827906,
		-0.314227, 0.769117, -0.556525,
		0.904815, 0.420069, 0.069654,
		31.509212, 30.874126, 33.815544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.157743, 30.403418, 33.192726>,  <30.875841, 30.580078, 33.766785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.157743, 30.403418, 33.192726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490353, 30.553253, 33.356800>,  <31.689919, 30.643154, 33.455246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.490353, 30.553253, 33.356800>,  <31.157743, 30.403418, 33.192726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490353, 30.553253, 33.356800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523254, -0.280306, -0.804757,
		-0.186476, 0.883805, -0.429086,
		0.831524, 0.374589, 0.410184,
		31.739809, 30.665630, 33.479855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427971, 30.854485, 32.761372>,  <31.157743, 30.403418, 33.192726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427971, 30.854485, 32.761372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746450, 30.729181, 32.968422>,  <31.937538, 30.653999, 33.092651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.746450, 30.729181, 32.968422>,  <31.427971, 30.854485, 32.761372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746450, 30.729181, 32.968422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497920, -0.146774, -0.854712,
		0.343722, 0.938257, 0.039117,
		0.796198, -0.313260, 0.517626,
		31.985310, 30.635202, 33.123711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012341, 31.130524, 32.487324>,  <31.427971, 30.854485, 32.761372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012341, 31.130524, 32.487324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.189117, 30.836407, 32.692860>,  <32.295185, 30.659937, 32.816181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.189117, 30.836407, 32.692860>,  <32.012341, 31.130524, 32.487324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189117, 30.836407, 32.692860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704391, -0.070230, -0.706329,
		0.555447, 0.674100, 0.486897,
		0.441942, -0.735294, 0.513839,
		32.321701, 30.615818, 32.847012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734303, 31.225422, 32.342701>,  <32.012341, 31.130524, 32.487324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734303, 31.225422, 32.342701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721134, 30.851276, 32.483559>,  <32.713234, 30.626789, 32.568073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.721134, 30.851276, 32.483559>,  <32.734303, 31.225422, 32.342701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721134, 30.851276, 32.483559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650557, -0.287531, -0.702923,
		0.758743, 0.205951, 0.617975,
		-0.032919, -0.935366, 0.352145,
		32.711258, 30.570667, 32.589203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324234, 31.033007, 32.402805>,  <32.734303, 31.225422, 32.342701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324234, 31.033007, 32.402805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.132099, 30.682846, 32.381088>,  <33.016819, 30.472750, 32.368057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.132099, 30.682846, 32.381088>,  <33.324234, 31.033007, 32.402805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132099, 30.682846, 32.381088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701251, -0.346130, -0.623251,
		0.526801, -0.337446, 0.780135,
		-0.480342, -0.875399, -0.054293,
		32.987995, 30.420227, 32.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710556, 30.339130, 32.613216>,  <33.324234, 31.033007, 32.402805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710556, 30.339130, 32.613216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.412090, 30.218346, 32.375877>,  <33.233009, 30.145874, 32.233475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.412090, 30.218346, 32.375877>,  <33.710556, 30.339130, 32.613216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412090, 30.218346, 32.375877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644826, -0.549526, -0.531244,
		-0.165642, -0.778999, 0.604751,
		-0.746165, -0.301964, -0.593343,
		33.188240, 30.127756, 32.197876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.790123, 29.628927, 32.403610>,  <33.710556, 30.339130, 32.613216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.790123, 29.628927, 32.403610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.544254, 29.762321, 32.117683>,  <33.396732, 29.842358, 31.946127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.544254, 29.762321, 32.117683>,  <33.790123, 29.628927, 32.403610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544254, 29.762321, 32.117683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565013, -0.446194, -0.694025,
		-0.550395, -0.830480, 0.085840,
		-0.614675, 0.333488, -0.714815,
		33.359852, 29.862368, 31.903238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838741, 29.101986, 31.863045>,  <33.790123, 29.628927, 32.403610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838741, 29.101986, 31.863045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654503, 29.409800, 31.686108>,  <33.543961, 29.594488, 31.579945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654503, 29.409800, 31.686108>,  <33.838741, 29.101986, 31.863045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654503, 29.409800, 31.686108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418248, -0.251395, -0.872851,
		-0.782892, -0.587042, -0.206065,
		-0.460596, 0.769534, -0.442344,
		33.516323, 29.640659, 31.553404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576405, 28.744949, 31.234894>,  <33.838741, 29.101986, 31.863045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576405, 28.744949, 31.234894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.564396, 29.138155, 31.162468>,  <33.557190, 29.374079, 31.119013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.564396, 29.138155, 31.162468>,  <33.576405, 28.744949, 31.234894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564396, 29.138155, 31.162468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301285, -0.163823, -0.939356,
		-0.953062, -0.082749, -0.291250,
		-0.030018, 0.983013, -0.181064,
		33.555389, 29.433060, 31.108149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191578, 28.795021, 30.649473>,  <33.576405, 28.744949, 31.234894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191578, 28.795021, 30.649473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.426304, 29.113091, 30.710590>,  <33.567139, 29.303932, 30.747261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.426304, 29.113091, 30.710590>,  <33.191578, 28.795021, 30.649473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426304, 29.113091, 30.710590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497592, -0.205268, -0.842773,
		-0.638788, 0.570581, -0.516127,
		0.586815, 0.795174, 0.152794,
		33.602348, 29.351643, 30.756428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300072, 29.156765, 30.102030>,  <33.191578, 28.795021, 30.649473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300072, 29.156765, 30.102030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625824, 29.300636, 30.284203>,  <33.821274, 29.386959, 30.393505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.625824, 29.300636, 30.284203>,  <33.300072, 29.156765, 30.102030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625824, 29.300636, 30.284203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557237, -0.265463, -0.786776,
		-0.162087, 0.894517, -0.416614,
		0.814380, 0.359679, 0.455430,
		33.870136, 29.408541, 30.420832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.814053, 41.660061, 46.924831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.469006, 41.493954, 47.040371>,  <41.261978, 41.394287, 47.109695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.469006, 41.493954, 47.040371>,  <41.814053, 41.660061, 46.924831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469006, 41.493954, 47.040371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091244, 0.689391, 0.718620,
		-0.497552, 0.593542, -0.632574,
		-0.862622, -0.415270, 0.288851,
		41.210220, 41.369373, 47.127026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400761, 42.297318, 47.109947>,  <41.814053, 41.660061, 46.924831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400761, 42.297318, 47.109947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.222149, 41.985325, 47.285332>,  <41.114983, 41.798130, 47.390560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.222149, 41.985325, 47.285332>,  <41.400761, 42.297318, 47.109947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222149, 41.985325, 47.285332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354319, 0.604104, 0.713805,
		-0.821625, 0.163383, -0.546112,
		-0.446531, -0.779978, 0.438457,
		41.088188, 41.751331, 47.416870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660812, 42.460289, 47.251186>,  <41.400761, 42.297318, 47.109947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660812, 42.460289, 47.251186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763428, 42.172504, 47.509354>,  <40.824997, 41.999832, 47.664253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.763428, 42.172504, 47.509354>,  <40.660812, 42.460289, 47.251186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763428, 42.172504, 47.509354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489100, 0.479323, 0.728719,
		-0.833648, -0.502619, -0.228923,
		0.256540, -0.719461, 0.645417,
		40.840389, 41.956665, 47.702980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117359, 42.445652, 47.459980>,  <40.660812, 42.460289, 47.251186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117359, 42.445652, 47.459980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355240, 42.283154, 47.737480>,  <40.497971, 42.185654, 47.903980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.355240, 42.283154, 47.737480>,  <40.117359, 42.445652, 47.459980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355240, 42.283154, 47.737480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474993, 0.518659, 0.710897,
		-0.648620, -0.752300, 0.115484,
		0.594705, -0.406248, 0.693749,
		40.533653, 42.161278, 47.945606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669960, 42.223656, 47.988102>,  <40.117359, 42.445652, 47.459980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669960, 42.223656, 47.988102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025082, 42.233326, 48.171936>,  <40.238155, 42.239128, 48.282238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.025082, 42.233326, 48.171936>,  <39.669960, 42.223656, 47.988102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025082, 42.233326, 48.171936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456110, 0.179409, 0.871651,
		-0.061378, -0.983477, 0.170308,
		0.887804, 0.024179, 0.459586,
		40.291424, 42.240582, 48.309811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564480, 41.905506, 48.652451>,  <39.669960, 42.223656, 47.988102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564480, 41.905506, 48.652451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920486, 42.081253, 48.701168>,  <40.134090, 42.186703, 48.730396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920486, 42.081253, 48.701168>,  <39.564480, 41.905506, 48.652451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920486, 42.081253, 48.701168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254819, 0.257842, 0.931979,
		0.378079, -0.860508, 0.341442,
		0.890014, 0.439367, 0.121789,
		40.187492, 42.213062, 48.737705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936535, 41.495960, 49.182762>,  <39.564480, 41.905506, 48.652451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936535, 41.495960, 49.182762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054375, 41.877659, 49.162296>,  <40.125080, 42.106678, 49.150017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.054375, 41.877659, 49.162296>,  <39.936535, 41.495960, 49.182762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054375, 41.877659, 49.162296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275372, 0.136044, 0.951663,
		0.915085, -0.266271, 0.302853,
		0.294602, 0.954249, -0.051168,
		40.142754, 42.163933, 49.146946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174942, 41.660397, 49.890579>,  <39.936535, 41.495960, 49.182762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174942, 41.660397, 49.890579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097652, 42.011566, 49.715347>,  <40.051277, 42.222267, 49.610207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.097652, 42.011566, 49.715347>,  <40.174942, 41.660397, 49.890579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097652, 42.011566, 49.715347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376869, 0.345834, 0.859284,
		0.905889, 0.331134, 0.264038,
		-0.193225, 0.877923, -0.438081,
		40.039684, 42.274944, 49.583923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484325, 42.181843, 50.312866>,  <40.174942, 41.660397, 49.890579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484325, 42.181843, 50.312866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175743, 42.319214, 50.098606>,  <39.990593, 42.401638, 49.970051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.175743, 42.319214, 50.098606>,  <40.484325, 42.181843, 50.312866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175743, 42.319214, 50.098606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460904, 0.278766, 0.842530,
		0.438669, 0.896854, -0.056767,
		-0.771451, 0.343427, -0.535650,
		39.944309, 42.422241, 49.937912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174694, 42.630783, 50.833000>,  <40.484325, 42.181843, 50.312866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174694, 42.630783, 50.833000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900620, 42.627087, 50.541679>,  <39.736176, 42.624866, 50.366886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900620, 42.627087, 50.541679>,  <40.174694, 42.630783, 50.833000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900620, 42.627087, 50.541679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680956, 0.362981, 0.636037,
		0.258481, 0.931751, -0.255007,
		-0.685191, -0.009245, -0.728305,
		39.695061, 42.624313, 50.323189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757488, 43.217793, 50.906261>,  <40.174694, 42.630783, 50.833000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757488, 43.217793, 50.906261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515766, 42.988091, 50.685337>,  <39.370735, 42.850269, 50.552780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515766, 42.988091, 50.685337>,  <39.757488, 43.217793, 50.906261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515766, 42.988091, 50.685337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708507, 0.070209, 0.702202,
		-0.364466, 0.815661, -0.449291,
		-0.604303, -0.574254, -0.552313,
		39.334476, 42.815815, 50.519642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159473, 43.648239, 50.964016>,  <39.757488, 43.217793, 50.906261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159473, 43.648239, 50.964016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066677, 43.275883, 50.851143>,  <39.011002, 43.052467, 50.783421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.066677, 43.275883, 50.851143>,  <39.159473, 43.648239, 50.964016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066677, 43.275883, 50.851143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780873, 0.005245, 0.624667,
		-0.580016, 0.365263, -0.728123,
		-0.231987, -0.930889, -0.282182,
		38.997082, 42.996616, 50.766487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453720, 43.609062, 50.727055>,  <39.159473, 43.648239, 50.964016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453720, 43.609062, 50.727055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550064, 43.244377, 50.860184>,  <38.607868, 43.025566, 50.940063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.550064, 43.244377, 50.860184>,  <38.453720, 43.609062, 50.727055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550064, 43.244377, 50.860184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753179, 0.040703, 0.656555,
		-0.612135, -0.408813, -0.676877,
		0.240857, -0.911710, 0.332825,
		38.622322, 42.970863, 50.960030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360481, 44.075294, 50.096077>,  <38.453720, 43.609062, 50.727055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360481, 44.075294, 50.096077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754040, 44.112968, 50.156841>,  <38.990173, 44.135574, 50.193302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.754040, 44.112968, 50.156841>,  <38.360481, 44.075294, 50.096077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754040, 44.112968, 50.156841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028583, -0.921868, 0.386447,
		0.176443, -0.375882, -0.909715,
		0.983896, 0.094189, 0.151913,
		39.049210, 44.141224, 50.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674156, 44.037125, 49.890903>,  <38.360481, 44.075294, 50.096077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674156, 44.037125, 49.890903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465511, 44.369766, 49.814629>,  <37.340324, 44.569351, 49.768864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465511, 44.369766, 49.814629>,  <37.674156, 44.037125, 49.890903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465511, 44.369766, 49.814629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317759, -0.396778, -0.861160,
		-0.791802, -0.388598, 0.471212,
		-0.521612, 0.831600, -0.190689,
		37.309029, 44.619247, 49.757423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087841, 43.763313, 49.605019>,  <37.674156, 44.037125, 49.890903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087841, 43.763313, 49.605019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108658, 44.144169, 49.484539>,  <37.121147, 44.372681, 49.412251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.108658, 44.144169, 49.484539>,  <37.087841, 43.763313, 49.605019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108658, 44.144169, 49.484539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081058, -0.296584, -0.951561,
		-0.995350, 0.073940, 0.061743,
		0.052046, 0.952140, -0.301198,
		37.124271, 44.429810, 49.394180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643482, 43.746555, 49.077496>,  <37.087841, 43.763313, 49.605019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643482, 43.746555, 49.077496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852791, 44.082485, 49.019691>,  <36.978374, 44.284042, 48.985008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.852791, 44.082485, 49.019691>,  <36.643482, 43.746555, 49.077496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852791, 44.082485, 49.019691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005530, -0.172922, -0.984920,
		-0.852148, 0.514582, -0.095130,
		0.523272, 0.839824, -0.144510,
		37.009773, 44.334431, 48.976337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282452, 44.048817, 48.629917>,  <36.643482, 43.746555, 49.077496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282452, 44.048817, 48.629917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657150, 44.182045, 48.586887>,  <36.881969, 44.261982, 48.561069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657150, 44.182045, 48.586887>,  <36.282452, 44.048817, 48.629917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657150, 44.182045, 48.586887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030011, -0.229789, -0.972778,
		-0.348727, 0.914472, -0.205258,
		0.936744, 0.333074, -0.107578,
		36.938175, 44.281967, 48.554615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269833, 44.296837, 47.946121>,  <36.282452, 44.048817, 48.629917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269833, 44.296837, 47.946121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657532, 44.273849, 48.041836>,  <36.890152, 44.260056, 48.099262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.657532, 44.273849, 48.041836>,  <36.269833, 44.296837, 47.946121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657532, 44.273849, 48.041836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221680, -0.218297, -0.950370,
		0.106851, 0.974189, -0.198845,
		0.969247, -0.057468, 0.239284,
		36.948307, 44.256611, 48.113621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669510, 44.680511, 47.460018>,  <36.269833, 44.296837, 47.946121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669510, 44.680511, 47.460018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940495, 44.427860, 47.610802>,  <37.103085, 44.276268, 47.701271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.940495, 44.427860, 47.610802>,  <36.669510, 44.680511, 47.460018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940495, 44.427860, 47.610802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223457, -0.311526, -0.923590,
		0.700796, 0.709929, -0.069905,
		0.677460, -0.631627, 0.376955,
		37.143734, 44.238373, 47.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294777, 44.831791, 47.142738>,  <36.669510, 44.680511, 47.460018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294777, 44.831791, 47.142738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380287, 44.465813, 47.279659>,  <37.431591, 44.246223, 47.361813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.380287, 44.465813, 47.279659>,  <37.294777, 44.831791, 47.142738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380287, 44.465813, 47.279659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403989, -0.236236, -0.883734,
		0.889435, 0.327203, 0.319128,
		0.213771, -0.914949, 0.342303,
		37.444420, 44.191330, 47.382351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068230, 44.653542, 47.086460>,  <37.294777, 44.831791, 47.142738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068230, 44.653542, 47.086460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854622, 44.315464, 47.095104>,  <37.726456, 44.112617, 47.100292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.854622, 44.315464, 47.095104>,  <38.068230, 44.653542, 47.086460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854622, 44.315464, 47.095104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496947, -0.334460, -0.800737,
		0.684008, -0.416869, 0.598626,
		-0.534019, -0.845196, 0.021612,
		37.694416, 44.061905, 47.101589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548885, 44.188129, 46.888447>,  <38.068230, 44.653542, 47.086460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548885, 44.188129, 46.888447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227249, 43.953426, 46.850166>,  <38.034267, 43.812603, 46.827198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.227249, 43.953426, 46.850166>,  <38.548885, 44.188129, 46.888447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227249, 43.953426, 46.850166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368464, -0.365523, -0.854767,
		0.466562, -0.722569, 0.510112,
		-0.804086, -0.586760, -0.095701,
		37.986023, 43.777397, 46.821457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717758, 43.583809, 46.659145>,  <38.548885, 44.188129, 46.888447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717758, 43.583809, 46.659145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333195, 43.543354, 46.556808>,  <38.102455, 43.519081, 46.495407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.333195, 43.543354, 46.556808>,  <38.717758, 43.583809, 46.659145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333195, 43.543354, 46.556808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274238, -0.426350, -0.861986,
		-0.021901, -0.898887, 0.437634,
		-0.961412, -0.101138, -0.255847,
		38.044769, 43.513012, 46.480053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617546, 42.918678, 46.500458>,  <38.717758, 43.583809, 46.659145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617546, 42.918678, 46.500458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334862, 43.119423, 46.300983>,  <38.165253, 43.239872, 46.181297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.334862, 43.119423, 46.300983>,  <38.617546, 42.918678, 46.500458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334862, 43.119423, 46.300983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255316, -0.476456, -0.841311,
		-0.659829, -0.721886, 0.208582,
		-0.706711, 0.501867, -0.498688,
		38.122849, 43.269981, 46.151379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162540, 42.403557, 46.180809>,  <38.617546, 42.918678, 46.500458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162540, 42.403557, 46.180809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094154, 42.729179, 45.958786>,  <38.053123, 42.924553, 45.825573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094154, 42.729179, 45.958786>,  <38.162540, 42.403557, 46.180809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094154, 42.729179, 45.958786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237937, -0.512566, -0.825023,
		-0.956115, -0.273120, -0.106061,
		-0.170967, 0.814053, -0.555057,
		38.042866, 42.973396, 45.792271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836468, 42.168957, 45.586693>,  <38.162540, 42.403557, 46.180809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836468, 42.168957, 45.586693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970692, 42.524517, 45.461948>,  <38.051228, 42.737854, 45.387100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970692, 42.524517, 45.461948>,  <37.836468, 42.168957, 45.586693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970692, 42.524517, 45.461948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350891, -0.425178, -0.834326,
		-0.874227, 0.170540, -0.454580,
		0.335563, 0.888898, -0.311861,
		38.071362, 42.791187, 45.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648022, 42.173828, 44.934746>,  <37.836468, 42.168957, 45.586693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648022, 42.173828, 44.934746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933155, 42.453930, 44.950298>,  <38.104237, 42.621990, 44.959629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933155, 42.453930, 44.950298>,  <37.648022, 42.173828, 44.934746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933155, 42.453930, 44.950298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437575, -0.400741, -0.804944,
		-0.548083, 0.590806, -0.592075,
		0.712835, 0.700253, 0.038883,
		38.147007, 42.664005, 44.961964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113197, 42.659058, 44.800274>,  <37.648022, 42.173828, 44.934746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113197, 42.659058, 44.800274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792866, 42.800220, 44.606724>,  <36.600666, 42.884918, 44.490593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792866, 42.800220, 44.606724>,  <37.113197, 42.659058, 44.800274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792866, 42.800220, 44.606724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134407, 0.681433, 0.719433,
		0.583619, 0.641177, -0.498277,
		-0.800826, 0.352903, -0.483877,
		36.552616, 42.906090, 44.461559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085224, 43.463837, 44.761135>,  <37.113197, 42.659058, 44.800274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085224, 43.463837, 44.761135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703297, 43.345440, 44.750507>,  <36.474140, 43.274403, 44.744129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703297, 43.345440, 44.750507>,  <37.085224, 43.463837, 44.761135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703297, 43.345440, 44.750507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220202, 0.644611, 0.732112,
		-0.199568, 0.704888, -0.680666,
		-0.954821, -0.295990, -0.026574,
		36.416851, 43.256641, 44.742535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682064, 44.142281, 44.869747>,  <37.085224, 43.463837, 44.761135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682064, 44.142281, 44.869747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416576, 43.848515, 44.926468>,  <36.257282, 43.672256, 44.960503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416576, 43.848515, 44.926468>,  <36.682064, 44.142281, 44.869747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416576, 43.848515, 44.926468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464857, 0.553534, 0.691020,
		-0.585989, 0.392726, -0.708790,
		-0.663721, -0.734416, 0.141804,
		36.217461, 43.628189, 44.969009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082977, 44.533680, 44.940933>,  <36.682064, 44.142281, 44.869747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082977, 44.533680, 44.940933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042122, 44.185253, 45.133102>,  <36.017609, 43.976196, 45.248405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.042122, 44.185253, 45.133102>,  <36.082977, 44.533680, 44.940933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042122, 44.185253, 45.133102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416645, 0.476012, 0.774480,
		-0.903312, -0.121060, -0.411547,
		-0.102143, -0.871066, 0.480427,
		36.011478, 43.923935, 45.277229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389782, 44.532749, 45.089615>,  <36.082977, 44.533680, 44.940933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389782, 44.532749, 45.089615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547977, 44.268105, 45.344440>,  <35.642895, 44.109318, 45.497337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.547977, 44.268105, 45.344440>,  <35.389782, 44.532749, 45.089615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547977, 44.268105, 45.344440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381288, 0.512759, 0.769219,
		-0.835586, -0.547127, -0.049472,
		0.395493, -0.661612, 0.637067,
		35.666626, 44.069622, 45.535561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822792, 44.378059, 45.476036>,  <35.389782, 44.532749, 45.089615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822792, 44.378059, 45.476036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127975, 44.274193, 45.712837>,  <35.311085, 44.211872, 45.854919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.127975, 44.274193, 45.712837>,  <34.822792, 44.378059, 45.476036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127975, 44.274193, 45.712837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347282, 0.607769, 0.714151,
		-0.545243, -0.750459, 0.373525,
		0.762958, -0.259667, 0.592003,
		35.356861, 44.196293, 45.890438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594822, 44.169399, 46.139599>,  <34.822792, 44.378059, 45.476036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594822, 44.169399, 46.139599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965340, 44.303490, 46.208416>,  <35.187653, 44.383942, 46.249706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965340, 44.303490, 46.208416>,  <34.594822, 44.169399, 46.139599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965340, 44.303490, 46.208416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340546, 0.549425, 0.762994,
		0.161248, -0.765348, 0.623090,
		0.926297, 0.335223, 0.172043,
		35.243229, 44.404057, 46.260029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307026, 43.593071, 46.471569>,  <34.594822, 44.169399, 46.139599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307026, 43.593071, 46.471569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971680, 43.397480, 46.567932>,  <33.770473, 43.280125, 46.625751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971680, 43.397480, 46.567932>,  <34.307026, 43.593071, 46.471569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971680, 43.397480, 46.567932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118793, -0.595220, -0.794733,
		0.532005, -0.637659, 0.557100,
		-0.838367, -0.488982, 0.240911,
		33.720169, 43.250786, 46.640205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462379, 42.972435, 46.229549>,  <34.307026, 43.593071, 46.471569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462379, 42.972435, 46.229549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068817, 42.927326, 46.284988>,  <33.832680, 42.900261, 46.318253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.068817, 42.927326, 46.284988>,  <34.462379, 42.972435, 46.229549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068817, 42.927326, 46.284988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032674, -0.649043, -0.760050,
		0.175673, -0.752347, 0.634912,
		-0.983906, -0.112775, 0.138602,
		33.773643, 42.893494, 46.326569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292610, 42.276775, 46.412537>,  <34.462379, 42.972435, 46.229549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292610, 42.276775, 46.412537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963440, 42.428432, 46.243282>,  <33.765938, 42.519428, 46.141727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963440, 42.428432, 46.243282>,  <34.292610, 42.276775, 46.412537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963440, 42.428432, 46.243282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079761, -0.814481, -0.574681,
		-0.562527, -0.439169, 0.700496,
		-0.822922, 0.379146, -0.423139,
		33.716564, 42.542175, 46.116341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933113, 41.669678, 46.282402>,  <34.292610, 42.276775, 46.412537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933113, 41.669678, 46.282402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722019, 41.936188, 46.071663>,  <33.595364, 42.096096, 45.945221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722019, 41.936188, 46.071663>,  <33.933113, 41.669678, 46.282402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722019, 41.936188, 46.071663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027020, -0.633105, -0.773594,
		-0.848980, -0.394015, 0.352113,
		-0.527733, 0.666280, -0.526848,
		33.563698, 42.136070, 45.913609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244743, 41.344238, 45.997074>,  <33.933113, 41.669678, 46.282402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244743, 41.344238, 45.997074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333611, 41.647697, 45.752094>,  <33.386932, 41.829773, 45.605106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.333611, 41.647697, 45.752094>,  <33.244743, 41.344238, 45.997074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333611, 41.647697, 45.752094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097502, -0.607713, -0.788149,
		-0.970121, 0.234818, -0.061046,
		0.222169, 0.758647, -0.612450,
		33.400261, 41.875290, 45.568359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739101, 41.371086, 45.442558>,  <33.244743, 41.344238, 45.997074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739101, 41.371086, 45.442558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036652, 41.581974, 45.278267>,  <33.215183, 41.708508, 45.179691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.036652, 41.581974, 45.278267>,  <32.739101, 41.371086, 45.442558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036652, 41.581974, 45.278267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130273, -0.488388, -0.862848,
		-0.655499, 0.695357, -0.294618,
		0.743875, 0.527215, -0.410724,
		33.259815, 41.740139, 45.155048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467113, 41.529903, 44.768379>,  <32.739101, 41.371086, 45.442558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467113, 41.529903, 44.768379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866901, 41.536358, 44.757061>,  <33.106773, 41.540230, 44.750271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866901, 41.536358, 44.757061>,  <32.467113, 41.529903, 44.768379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866901, 41.536358, 44.757061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013277, -0.591415, -0.806258,
		-0.029745, 0.806206, -0.590887,
		0.999469, 0.016137, -0.028296,
		33.166740, 41.541199, 44.748573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.778728, 41.011276, 52.584183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.848099, 41.311878, 52.329575>,  <36.889721, 41.492241, 52.176807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.848099, 41.311878, 52.329575>,  <36.778728, 41.011276, 52.584183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848099, 41.311878, 52.329575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506695, -0.622300, -0.596660,
		-0.844503, -0.219049, -0.488705,
		0.173424, 0.751505, -0.636525,
		36.900127, 41.537331, 52.138618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508663, 40.864532, 51.960785>,  <36.778728, 41.011276, 52.584183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508663, 40.864532, 51.960785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.796307, 41.124928, 51.863541>,  <36.968891, 41.281162, 51.805195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.796307, 41.124928, 51.863541>,  <36.508663, 40.864532, 51.960785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796307, 41.124928, 51.863541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245256, -0.565094, -0.787730,
		-0.650178, 0.506840, -0.566022,
		0.719109, 0.650985, -0.243106,
		37.012039, 41.320225, 51.790607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425972, 41.083179, 51.286774>,  <36.508663, 40.864532, 51.960785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425972, 41.083179, 51.286774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.817051, 41.106087, 51.367588>,  <37.051701, 41.119831, 51.416077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.817051, 41.106087, 51.367588>,  <36.425972, 41.083179, 51.286774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817051, 41.106087, 51.367588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203197, -0.500862, -0.841337,
		0.053016, 0.863631, -0.501330,
		0.977702, 0.057264, 0.202040,
		37.110363, 41.123264, 51.428200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812145, 41.369999, 50.690418>,  <36.425972, 41.083179, 51.286774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812145, 41.369999, 50.690418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.094925, 41.182243, 50.902039>,  <37.264591, 41.069592, 51.029011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.094925, 41.182243, 50.902039>,  <36.812145, 41.369999, 50.690418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094925, 41.182243, 50.902039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168287, -0.614909, -0.770433,
		0.686954, 0.633688, -0.355716,
		0.706947, -0.469389, 0.529055,
		37.307011, 41.041428, 51.060757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414330, 41.379696, 50.232132>,  <36.812145, 41.369999, 50.690418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414330, 41.379696, 50.232132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.519840, 41.097862, 50.495640>,  <37.583149, 40.928761, 50.653744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.519840, 41.097862, 50.495640>,  <37.414330, 41.379696, 50.232132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519840, 41.097862, 50.495640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314104, -0.582993, -0.749305,
		0.912008, 0.404575, 0.067530,
		0.263780, -0.704584, 0.658773,
		37.598976, 40.886486, 50.693272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132168, 41.166470, 50.076691>,  <37.414330, 41.379696, 50.232132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132168, 41.166470, 50.076691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987179, 40.876766, 50.311317>,  <37.900185, 40.702942, 50.452095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.987179, 40.876766, 50.311317>,  <38.132168, 41.166470, 50.076691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987179, 40.876766, 50.311317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175821, -0.671206, -0.720118,
		0.915261, -0.157890, 0.370632,
		-0.362470, -0.724261, 0.586568,
		37.878437, 40.659489, 50.487289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682919, 40.594818, 50.126007>,  <38.132168, 41.166470, 50.076691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682919, 40.594818, 50.126007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.327896, 40.436325, 50.220028>,  <38.114883, 40.341228, 50.276440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.327896, 40.436325, 50.220028>,  <38.682919, 40.594818, 50.126007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327896, 40.436325, 50.220028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229737, -0.822887, -0.519690,
		0.399340, -0.407252, 0.821385,
		-0.887552, -0.396236, 0.235051,
		38.061630, 40.317455, 50.290543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760521, 39.870045, 50.298649>,  <38.682919, 40.594818, 50.126007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.760521, 39.870045, 50.298649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.375889, 39.911404, 50.196922>,  <38.145111, 39.936218, 50.135887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.375889, 39.911404, 50.196922>,  <38.760521, 39.870045, 50.298649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375889, 39.911404, 50.196922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077543, -0.786342, -0.612905,
		-0.263353, -0.609076, 0.748111,
		-0.961578, 0.103400, -0.254316,
		38.087414, 39.942425, 50.120628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473907, 39.159363, 50.189018>,  <38.760521, 39.870045, 50.298649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473907, 39.159363, 50.189018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221600, 39.396351, 49.988579>,  <38.070213, 39.538544, 49.868313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.221600, 39.396351, 49.988579>,  <38.473907, 39.159363, 50.189018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221600, 39.396351, 49.988579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123689, -0.714287, -0.688836,
		-0.766050, -0.372515, 0.523832,
		-0.630767, 0.592475, -0.501104,
		38.032368, 39.574093, 49.838249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988857, 38.723595, 49.888592>,  <38.473907, 39.159363, 50.189018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988857, 38.723595, 49.888592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.954754, 39.058861, 49.673111>,  <37.934292, 39.260021, 49.543823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.954754, 39.058861, 49.673111>,  <37.988857, 38.723595, 49.888592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954754, 39.058861, 49.673111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042252, -0.543231, -0.838520,
		-0.995463, -0.048730, 0.081730,
		-0.085259, 0.838169, -0.538707,
		37.929176, 39.310310, 49.511497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511543, 38.606926, 49.420837>,  <37.988857, 38.723595, 49.888592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511543, 38.606926, 49.420837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693718, 38.911911, 49.236996>,  <37.803020, 39.094902, 49.126690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.693718, 38.911911, 49.236996>,  <37.511543, 38.606926, 49.420837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693718, 38.911911, 49.236996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103283, -0.558015, -0.823378,
		-0.884259, 0.327525, -0.332887,
		0.455433, 0.762461, -0.459602,
		37.830349, 39.140648, 49.099113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137882, 38.816219, 48.794456>,  <37.511543, 38.606926, 49.420837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137882, 38.816219, 48.794456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.497593, 38.970276, 48.711536>,  <37.713421, 39.062710, 48.661785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.497593, 38.970276, 48.711536>,  <37.137882, 38.816219, 48.794456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497593, 38.970276, 48.711536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080887, -0.319330, -0.944185,
		-0.429838, 0.865850, -0.256013,
		0.899276, 0.385138, -0.207296,
		37.767376, 39.085819, 48.649349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980030, 39.504665, 48.433765>,  <37.137882, 38.816219, 48.794456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980030, 39.504665, 48.433765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.585312, 39.528610, 48.373569>,  <36.348480, 39.542976, 48.337452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.585312, 39.528610, 48.373569>,  <36.980030, 39.504665, 48.433765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585312, 39.528610, 48.373569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067856, 0.690910, 0.719749,
		0.147059, 0.720458, -0.677727,
		-0.986797, 0.059858, -0.150492,
		36.289272, 39.546566, 48.328423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846958, 40.181797, 48.503269>,  <36.980030, 39.504665, 48.433765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846958, 40.181797, 48.503269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.484653, 40.014072, 48.527813>,  <36.267269, 39.913437, 48.542538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.484653, 40.014072, 48.527813>,  <36.846958, 40.181797, 48.503269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484653, 40.014072, 48.527813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254703, 0.654371, 0.711987,
		-0.338695, 0.629266, -0.699507,
		-0.905766, -0.419313, 0.061356,
		36.212925, 39.888279, 48.546219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285904, 40.659378, 48.337276>,  <36.846958, 40.181797, 48.503269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285904, 40.659378, 48.337276> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090580, 40.389153, 48.558243>,  <35.973385, 40.227016, 48.690823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.090580, 40.389153, 48.558243>,  <36.285904, 40.659378, 48.337276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090580, 40.389153, 48.558243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379897, 0.734452, 0.562368,
		-0.785642, 0.064747, -0.615284,
		-0.488309, -0.675564, 0.552419,
		35.944088, 40.186481, 48.723969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772755, 41.013412, 48.610340>,  <36.285904, 40.659378, 48.337276>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772755, 41.013412, 48.610340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723858, 40.694294, 48.846504>,  <35.694519, 40.502823, 48.988201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723858, 40.694294, 48.846504>,  <35.772755, 41.013412, 48.610340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723858, 40.694294, 48.846504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422500, 0.580109, 0.696396,
		-0.898082, -0.164321, -0.407979,
		-0.122240, -0.797792, 0.590411,
		35.687187, 40.454956, 49.023628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062714, 40.780514, 48.659451>,  <35.772755, 41.013412, 48.610340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062714, 40.780514, 48.659451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267487, 40.664246, 48.982792>,  <35.390350, 40.594486, 49.176796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.267487, 40.664246, 48.982792>,  <35.062714, 40.780514, 48.659451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267487, 40.664246, 48.982792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517007, 0.647247, 0.560157,
		-0.686026, -0.704687, 0.181068,
		0.511931, -0.290669, 0.808356,
		35.421066, 40.577045, 49.225300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546795, 40.726803, 49.118698>,  <35.062714, 40.780514, 48.659451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546795, 40.726803, 49.118698> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868248, 40.701927, 49.355442>,  <35.061119, 40.687004, 49.497490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.868248, 40.701927, 49.355442>,  <34.546795, 40.726803, 49.118698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868248, 40.701927, 49.355442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484260, 0.509743, 0.711093,
		-0.345918, -0.858076, 0.379534,
		0.803637, -0.062186, 0.591861,
		35.109341, 40.683270, 49.533001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364548, 40.494308, 49.707733>,  <34.546795, 40.726803, 49.118698>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364548, 40.494308, 49.707733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699051, 40.700958, 49.781239>,  <34.899754, 40.824947, 49.825340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699051, 40.700958, 49.781239>,  <34.364548, 40.494308, 49.707733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699051, 40.700958, 49.781239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482375, 0.533777, 0.694548,
		0.260730, -0.669466, 0.695582,
		0.836262, 0.516621, 0.183762,
		34.949928, 40.855946, 49.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285213, 40.723473, 50.335426>,  <34.364548, 40.494308, 49.707733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285213, 40.723473, 50.335426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576996, 40.954109, 50.188225>,  <34.752068, 41.092491, 50.099903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.576996, 40.954109, 50.188225>,  <34.285213, 40.723473, 50.335426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576996, 40.954109, 50.188225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336693, 0.770980, 0.540581,
		0.595420, -0.270427, 0.756534,
		0.729461, 0.576593, -0.368006,
		34.795834, 41.127087, 50.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339458, 41.088043, 50.865974>,  <34.285213, 40.723473, 50.335426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339458, 41.088043, 50.865974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534294, 41.298725, 50.587315>,  <34.651196, 41.425133, 50.420116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534294, 41.298725, 50.587315>,  <34.339458, 41.088043, 50.865974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534294, 41.298725, 50.587315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309971, 0.850007, 0.425917,
		0.816491, 0.008482, 0.577295,
		0.487093, 0.526703, -0.696653,
		34.680420, 41.456738, 50.378319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604912, 41.579945, 51.254665>,  <34.339458, 41.088043, 50.865974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604912, 41.579945, 51.254665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.611843, 41.734192, 50.885666>,  <34.616001, 41.826740, 50.664265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.611843, 41.734192, 50.885666>,  <34.604912, 41.579945, 51.254665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611843, 41.734192, 50.885666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181016, 0.908600, 0.376404,
		0.983328, 0.160465, 0.085544,
		0.017326, 0.385614, -0.922498,
		34.617043, 41.849876, 50.608917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952770, 42.257008, 51.250862>,  <34.604912, 41.579945, 51.254665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952770, 42.257008, 51.250862> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700775, 42.283646, 50.941364>,  <34.549576, 42.299629, 50.755665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.700775, 42.283646, 50.941364>,  <34.952770, 42.257008, 51.250862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700775, 42.283646, 50.941364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340749, 0.871585, 0.352463,
		0.697855, 0.485700, -0.526397,
		-0.629991, 0.066598, -0.773741,
		34.511776, 42.303623, 50.709240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961910, 42.983540, 51.044132>,  <34.952770, 42.257008, 51.250862>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961910, 42.983540, 51.044132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641273, 42.845310, 50.848980>,  <34.448891, 42.762371, 50.731888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.641273, 42.845310, 50.848980>,  <34.961910, 42.983540, 51.044132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641273, 42.845310, 50.848980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535503, 0.777877, 0.328853,
		0.265866, 0.524867, -0.808598,
		-0.801593, -0.345576, -0.487878,
		34.400795, 42.741638, 50.702618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736271, 43.489639, 50.527397>,  <34.961910, 42.983540, 51.044132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736271, 43.489639, 50.527397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.407719, 43.280293, 50.618095>,  <34.210587, 43.154682, 50.672512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.407719, 43.280293, 50.618095>,  <34.736271, 43.489639, 50.527397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407719, 43.280293, 50.618095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484395, 0.849968, 0.207163,
		-0.301148, 0.060327, -0.951667,
		-0.821384, -0.523370, 0.226744,
		34.161304, 43.123283, 50.686119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231342, 43.826378, 50.041424>,  <34.736271, 43.489639, 50.527397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231342, 43.826378, 50.041424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068317, 43.634182, 50.352043>,  <33.970501, 43.518864, 50.538414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068317, 43.634182, 50.352043>,  <34.231342, 43.826378, 50.041424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068317, 43.634182, 50.352043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603809, 0.779746, 0.165563,
		-0.685061, -0.401409, -0.607916,
		-0.407562, -0.480486, 0.776548,
		33.946049, 43.490036, 50.585007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900719, 43.477268, 49.497810>,  <34.231342, 43.826378, 50.041424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900719, 43.477268, 49.497810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832363, 43.841785, 49.347958>,  <33.791351, 44.060493, 49.258045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.832363, 43.841785, 49.347958>,  <33.900719, 43.477268, 49.497810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832363, 43.841785, 49.347958> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450645, -0.410412, -0.792768,
		-0.876194, 0.033351, 0.480802,
		-0.170887, 0.911290, -0.374630,
		33.781097, 44.115173, 49.235569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185001, 43.591450, 49.262901>,  <33.900719, 43.477268, 49.497810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185001, 43.591450, 49.262901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.382141, 43.875881, 49.062317>,  <33.500423, 44.046539, 48.941967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.382141, 43.875881, 49.062317>,  <33.185001, 43.591450, 49.262901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382141, 43.875881, 49.062317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325932, -0.383489, -0.864121,
		-0.806765, 0.589323, 0.042762,
		0.492848, 0.711080, -0.501464,
		33.529995, 44.089207, 48.911877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719524, 43.804668, 48.751431>,  <33.185001, 43.591450, 49.262901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719524, 43.804668, 48.751431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081448, 43.933002, 48.639439>,  <33.298599, 44.010002, 48.572243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081448, 43.933002, 48.639439>,  <32.719524, 43.804668, 48.751431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081448, 43.933002, 48.639439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189866, -0.284563, -0.939668,
		-0.381155, 0.903375, -0.196557,
		0.904805, 0.320839, -0.279982,
		33.352890, 44.029255, 48.555443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525639, 44.159397, 48.152061>,  <32.719524, 43.804668, 48.751431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525639, 44.159397, 48.152061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917912, 44.089054, 48.117794>,  <33.153275, 44.046848, 48.097233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.917912, 44.089054, 48.117794>,  <32.525639, 44.159397, 48.152061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917912, 44.089054, 48.117794> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116687, -0.174390, -0.977738,
		0.157001, 0.968846, -0.191542,
		0.980681, -0.175856, -0.085673,
		33.212116, 44.036297, 48.092091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724426, 44.429356, 47.500957>,  <32.525639, 44.159397, 48.152061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724426, 44.429356, 47.500957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030529, 44.186630, 47.586895>,  <33.214191, 44.040993, 47.638458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.030529, 44.186630, 47.586895>,  <32.724426, 44.429356, 47.500957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030529, 44.186630, 47.586895> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054112, -0.271930, -0.960794,
		0.641450, 0.746878, -0.175259,
		0.765254, -0.606818, 0.214845,
		33.260105, 44.004585, 47.651348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200863, 44.331963, 46.938679>,  <32.724426, 44.429356, 47.500957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200863, 44.331963, 46.938679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326851, 44.022240, 47.158222>,  <33.402443, 43.836407, 47.289948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.326851, 44.022240, 47.158222>,  <33.200863, 44.331963, 46.938679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326851, 44.022240, 47.158222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294292, -0.470108, -0.832101,
		0.902322, 0.423612, 0.079801,
		0.314972, -0.774307, 0.548854,
		33.421341, 43.789948, 47.322880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849060, 44.134819, 46.559792>,  <33.200863, 44.331963, 46.938679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849060, 44.134819, 46.559792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713844, 43.811569, 46.752735>,  <33.632713, 43.617619, 46.868500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.713844, 43.811569, 46.752735>,  <33.849060, 44.134819, 46.559792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713844, 43.811569, 46.752735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205309, -0.563504, -0.800195,
		0.918465, -0.171466, 0.356401,
		-0.338039, -0.808123, 0.482355,
		33.612434, 43.569134, 46.897442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624710, 44.187500, 46.888676>,  <33.849060, 44.134819, 46.559792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624710, 44.187500, 46.888676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937462, 44.418434, 46.794567>,  <35.125111, 44.556995, 46.738102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.937462, 44.418434, 46.794567>,  <34.624710, 44.187500, 46.888676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937462, 44.418434, 46.794567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146179, 0.536631, 0.831059,
		0.606056, -0.615393, 0.503973,
		0.781875, 0.577338, -0.235271,
		35.172024, 44.591637, 46.723988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904160, 44.273243, 47.481804>,  <34.624710, 44.187500, 46.888676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904160, 44.273243, 47.481804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.081669, 44.564079, 47.272270>,  <35.188175, 44.738583, 47.146549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.081669, 44.564079, 47.272270>,  <34.904160, 44.273243, 47.481804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081669, 44.564079, 47.272270> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001986, 0.585344, 0.810783,
		0.896135, -0.358767, 0.261206,
		0.443777, 0.727090, -0.523835,
		35.214802, 44.782207, 47.115120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268799, 44.635338, 47.925385>,  <34.904160, 44.273243, 47.481804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268799, 44.635338, 47.925385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261036, 44.889008, 47.616203>,  <35.256378, 45.041210, 47.430695>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.261036, 44.889008, 47.616203>,  <35.268799, 44.635338, 47.925385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261036, 44.889008, 47.616203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088839, 0.768943, 0.633115,
		0.995857, 0.080953, 0.041419,
		-0.019404, 0.634172, -0.772949,
		35.255215, 45.079258, 47.384319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728703, 45.193584, 48.132923>,  <35.268799, 44.635338, 47.925385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728703, 45.193584, 48.132923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489464, 45.365887, 47.862595>,  <35.345921, 45.469269, 47.700397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.489464, 45.365887, 47.862595>,  <35.728703, 45.193584, 48.132923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489464, 45.365887, 47.862595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089598, 0.873927, 0.477727,
		0.796401, 0.225173, -0.561286,
		-0.598094, 0.430752, -0.675822,
		35.310036, 45.495113, 47.659847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005066, 45.916847, 48.060863>,  <35.728703, 45.193584, 48.132923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005066, 45.916847, 48.060863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632824, 45.913349, 47.914497>,  <35.409477, 45.911251, 47.826679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.632824, 45.913349, 47.914497>,  <36.005066, 45.916847, 48.060863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632824, 45.913349, 47.914497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191025, 0.864362, 0.465175,
		0.312214, 0.502794, -0.806052,
		-0.930608, -0.008742, -0.365912,
		35.353642, 45.910728, 47.804722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911942, 46.655102, 47.781994>,  <36.005066, 45.916847, 48.060863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911942, 46.655102, 47.781994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.557110, 46.495010, 47.873997>,  <35.344212, 46.398956, 47.929199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.557110, 46.495010, 47.873997>,  <35.911942, 46.655102, 47.781994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557110, 46.495010, 47.873997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190037, 0.770713, 0.608184,
		-0.420680, 0.495800, -0.759744,
		-0.887082, -0.400230, 0.230003,
		35.290985, 46.374943, 47.942997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552422, 47.156403, 47.820724>,  <35.911942, 46.655102, 47.781994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552422, 47.156403, 47.820724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.329441, 46.886791, 48.014606>,  <35.195652, 46.725025, 48.130936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.329441, 46.886791, 48.014606>,  <35.552422, 47.156403, 47.820724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329441, 46.886791, 48.014606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332558, 0.716235, 0.613525,
		-0.760696, 0.180815, -0.623416,
		-0.557447, -0.674028, 0.484705,
		35.162209, 46.684582, 48.160019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831497, 47.487160, 48.034386>,  <35.552422, 47.156403, 47.820724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831497, 47.487160, 48.034386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835918, 47.174328, 48.283619>,  <34.838573, 46.986629, 48.433159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.835918, 47.174328, 48.283619>,  <34.831497, 47.487160, 48.034386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.835918, 47.174328, 48.283619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245580, 0.601916, 0.759861,
		-0.969313, -0.161420, -0.185406,
		0.011058, -0.782075, 0.623086,
		34.839237, 46.939705, 48.470543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181793, 47.443443, 48.359604>,  <34.831497, 47.487160, 48.034386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181793, 47.443443, 48.359604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436604, 47.265945, 48.611725>,  <34.589489, 47.159447, 48.762997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.436604, 47.265945, 48.611725>,  <34.181793, 47.443443, 48.359604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436604, 47.265945, 48.611725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274564, 0.633438, 0.723444,
		-0.720286, -0.633912, 0.281680,
		0.637027, -0.443747, 0.630306,
		34.627712, 47.132820, 48.800816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.913242, 37.881084, 36.136097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238754, 37.800758, 36.354244>,  <39.434063, 37.752563, 36.485134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238754, 37.800758, 36.354244>,  <38.913242, 37.881084, 36.136097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238754, 37.800758, 36.354244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524999, 0.148457, 0.838055,
		-0.249262, -0.968314, 0.015382,
		0.813784, -0.200819, 0.545369,
		39.482891, 37.740513, 36.517857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698349, 37.370949, 36.691486>,  <38.913242, 37.881084, 36.136097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698349, 37.370949, 36.691486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033520, 37.548092, 36.819077>,  <39.234623, 37.654377, 36.895630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033520, 37.548092, 36.819077>,  <38.698349, 37.370949, 36.691486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033520, 37.548092, 36.819077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429164, 0.173578, 0.886391,
		0.337181, -0.879627, 0.335507,
		0.837930, 0.442862, 0.318977,
		39.284901, 37.680950, 36.914768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020336, 37.103127, 37.351231>,  <38.698349, 37.370949, 36.691486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020336, 37.103127, 37.351231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144688, 37.481998, 37.319698>,  <39.219299, 37.709320, 37.300777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144688, 37.481998, 37.319698>,  <39.020336, 37.103127, 37.351231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144688, 37.481998, 37.319698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486002, 0.229693, 0.843234,
		0.816798, -0.223827, 0.531735,
		0.310874, 0.947176, -0.078833,
		39.237949, 37.766151, 37.296047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195072, 37.346134, 38.119114>,  <39.020336, 37.103127, 37.351231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195072, 37.346134, 38.119114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149509, 37.672878, 37.892925>,  <39.122173, 37.868927, 37.757214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149509, 37.672878, 37.892925>,  <39.195072, 37.346134, 38.119114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149509, 37.672878, 37.892925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610125, 0.391685, 0.688717,
		0.784075, 0.423457, 0.453774,
		-0.113905, 0.816864, -0.565472,
		39.115337, 37.917938, 37.723282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071136, 37.833199, 38.608440>,  <39.195072, 37.346134, 38.119114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071136, 37.833199, 38.608440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990177, 38.045837, 38.279457>,  <38.941601, 38.173420, 38.082066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990177, 38.045837, 38.279457>,  <39.071136, 37.833199, 38.608440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990177, 38.045837, 38.279457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616173, 0.583633, 0.528870,
		0.761160, 0.613821, 0.209427,
		-0.202403, 0.531598, -0.822458,
		38.929455, 38.205318, 38.032719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222935, 38.635082, 38.698742>,  <39.071136, 37.833199, 38.608440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222935, 38.635082, 38.698742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958405, 38.593513, 38.401596>,  <38.799686, 38.568573, 38.223309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958405, 38.593513, 38.401596>,  <39.222935, 38.635082, 38.698742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958405, 38.593513, 38.401596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599609, 0.668282, 0.440305,
		0.450688, 0.736613, -0.504262,
		-0.661324, -0.103920, -0.742867,
		38.760006, 38.562336, 38.178738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875561, 39.281059, 38.657486>,  <39.222935, 38.635082, 38.698742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875561, 39.281059, 38.657486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595139, 39.072647, 38.462738>,  <38.426884, 38.947598, 38.345890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595139, 39.072647, 38.462738>,  <38.875561, 39.281059, 38.657486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595139, 39.072647, 38.462738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687006, 0.310450, 0.656996,
		-0.191167, 0.795075, -0.575596,
		-0.701055, -0.521034, -0.486874,
		38.384823, 38.916336, 38.316677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428932, 39.726902, 38.517715>,  <38.875561, 39.281059, 38.657486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428932, 39.726902, 38.517715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213898, 39.391548, 38.481705>,  <38.084877, 39.190334, 38.460098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213898, 39.391548, 38.481705>,  <38.428932, 39.726902, 38.517715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213898, 39.391548, 38.481705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759211, 0.434810, 0.484292,
		-0.366878, 0.328702, -0.870262,
		-0.537586, -0.838388, -0.090031,
		38.052620, 39.140030, 38.454697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769417, 39.878410, 38.281628>,  <38.428932, 39.726902, 38.517715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769417, 39.878410, 38.281628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703629, 39.509575, 38.421749>,  <37.664154, 39.288273, 38.505821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.703629, 39.509575, 38.421749>,  <37.769417, 39.878410, 38.281628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703629, 39.509575, 38.421749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713735, 0.356377, 0.602974,
		-0.680832, -0.150849, -0.716738,
		-0.164471, -0.922085, 0.350299,
		37.654285, 39.232948, 38.526840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996601, 39.803543, 38.252094>,  <37.769417, 39.878410, 38.281628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996601, 39.803543, 38.252094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 39.551502, 38.525944>,  <37.231106, 39.400276, 38.690254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143166, 39.551502, 38.525944>,  <36.996601, 39.803543, 38.252094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143166, 39.551502, 38.525944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730561, 0.260833, 0.631068,
		-0.576212, -0.731390, -0.364758,
		0.366415, -0.630106, 0.684620,
		37.253090, 39.362469, 38.731331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427460, 39.633137, 38.522179>,  <36.996601, 39.803543, 38.252094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427460, 39.633137, 38.522179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714722, 39.516811, 38.775059>,  <36.887081, 39.447018, 38.926788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714722, 39.516811, 38.775059>,  <36.427460, 39.633137, 38.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714722, 39.516811, 38.775059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550632, 0.318031, 0.771791,
		-0.425503, -0.902378, 0.068268,
		0.718159, -0.290809, 0.632201,
		36.930168, 39.429569, 38.964718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994118, 39.445068, 39.123619>,  <36.427460, 39.633137, 38.522179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994118, 39.445068, 39.123619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375206, 39.529129, 39.211391>,  <36.603859, 39.579567, 39.264057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375206, 39.529129, 39.211391>,  <35.994118, 39.445068, 39.123619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375206, 39.529129, 39.211391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300286, 0.541181, 0.785463,
		0.046316, -0.814222, 0.578703,
		0.952724, 0.210155, 0.219434,
		36.661022, 39.592175, 39.277222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763760, 38.788589, 39.561993>,  <35.994118, 39.445068, 39.123619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763760, 38.788589, 39.561993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430290, 38.567909, 39.571911>,  <35.230209, 38.435501, 39.577862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430290, 38.567909, 39.571911>,  <35.763760, 38.788589, 39.561993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430290, 38.567909, 39.571911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293507, -0.480647, -0.826336,
		0.467811, -0.681615, 0.562631,
		-0.833670, -0.551705, 0.024794,
		35.180187, 38.402397, 39.579350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924568, 38.036377, 39.533833>,  <35.763760, 38.788589, 39.561993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924568, 38.036377, 39.533833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547382, 38.049469, 39.401314>,  <35.321072, 38.057323, 39.321804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547382, 38.049469, 39.401314>,  <35.924568, 38.036377, 39.533833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547382, 38.049469, 39.401314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280382, -0.458434, -0.843341,
		-0.179475, -0.888126, 0.423109,
		-0.942961, 0.032727, -0.331292,
		35.264496, 38.059288, 39.301926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821774, 37.375202, 39.339851>,  <35.924568, 38.036377, 39.533833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821774, 37.375202, 39.339851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533264, 37.584595, 39.158417>,  <35.360161, 37.710232, 39.049557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533264, 37.584595, 39.158417>,  <35.821774, 37.375202, 39.339851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533264, 37.584595, 39.158417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111187, -0.558855, -0.821778,
		-0.683674, -0.643155, 0.344880,
		-0.721268, 0.523482, -0.453584,
		35.316883, 37.741638, 39.022343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302723, 36.911285, 39.130314>,  <35.821774, 37.375202, 39.339851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302723, 36.911285, 39.130314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260777, 37.220982, 38.880657>,  <35.235611, 37.406799, 38.730862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.260777, 37.220982, 38.880657>,  <35.302723, 36.911285, 39.130314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260777, 37.220982, 38.880657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240475, -0.589235, -0.771346,
		-0.964975, -0.230975, -0.124397,
		-0.104863, 0.774243, -0.624141,
		35.229317, 37.453255, 38.693417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980659, 36.648975, 38.653748>,  <35.302723, 36.911285, 39.130314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980659, 36.648975, 38.653748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118145, 36.978596, 38.473610>,  <35.200638, 37.176369, 38.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.118145, 36.978596, 38.473610>,  <34.980659, 36.648975, 38.653748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118145, 36.978596, 38.473610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140433, -0.519270, -0.842993,
		-0.928513, 0.226508, -0.294206,
		0.343717, 0.824046, -0.450340,
		35.221260, 37.225811, 38.338509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597988, 36.710178, 38.100662>,  <34.980659, 36.648975, 38.653748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597988, 36.710178, 38.100662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938969, 36.907345, 38.030960>,  <35.143555, 37.025646, 37.989140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938969, 36.907345, 38.030960>,  <34.597988, 36.710178, 38.100662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938969, 36.907345, 38.030960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178529, -0.587712, -0.789127,
		-0.491383, 0.641582, -0.588995,
		0.852449, 0.492917, -0.174251,
		35.194702, 37.055222, 37.978683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495178, 36.772968, 37.381649>,  <34.597988, 36.710178, 38.100662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495178, 36.772968, 37.381649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887318, 36.821980, 37.443485>,  <35.122601, 36.851387, 37.480587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887318, 36.821980, 37.443485>,  <34.495178, 36.772968, 37.381649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887318, 36.821980, 37.443485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197256, -0.605872, -0.770720,
		-0.000774, 0.786070, -0.618137,
		0.980352, 0.122528, 0.154588,
		35.181423, 36.858738, 37.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678864, 36.992302, 36.776306>,  <34.495178, 36.772968, 37.381649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678864, 36.992302, 36.776306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008442, 36.869305, 36.966698>,  <35.206188, 36.795506, 37.080933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008442, 36.869305, 36.966698>,  <34.678864, 36.992302, 36.776306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008442, 36.869305, 36.966698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302338, -0.471872, -0.828208,
		0.479268, 0.826308, -0.295833,
		0.823950, -0.307492, 0.475977,
		35.255627, 36.777058, 37.109489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262642, 37.065559, 36.321445>,  <34.678864, 36.992302, 36.776306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262642, 37.065559, 36.321445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361553, 36.782944, 36.586674>,  <35.420898, 36.613373, 36.745811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.361553, 36.782944, 36.586674>,  <35.262642, 37.065559, 36.321445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361553, 36.782944, 36.586674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450456, -0.522049, -0.724261,
		0.857872, 0.477775, 0.189174,
		0.247276, -0.706538, 0.663068,
		35.435738, 36.570984, 36.785595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951942, 36.797375, 36.151253>,  <35.262642, 37.065559, 36.321445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951942, 36.797375, 36.151253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841988, 36.506176, 36.402473>,  <35.776016, 36.331455, 36.553207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841988, 36.506176, 36.402473>,  <35.951942, 36.797375, 36.151253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841988, 36.506176, 36.402473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484725, -0.669062, -0.563380,
		0.830348, 0.149567, 0.536797,
		-0.274888, -0.728001, 0.628053,
		35.759521, 36.287777, 36.590889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477985, 36.424583, 36.165386>,  <35.951942, 36.797375, 36.151253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477985, 36.424583, 36.165386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177433, 36.186390, 36.279102>,  <35.997101, 36.043472, 36.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.177433, 36.186390, 36.279102>,  <36.477985, 36.424583, 36.165386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177433, 36.186390, 36.279102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307958, -0.697484, -0.647053,
		0.583598, -0.398636, 0.707462,
		-0.751382, -0.595487, 0.284288,
		35.952019, 36.007744, 36.364388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654625, 35.745319, 36.491608>,  <36.477985, 36.424583, 36.165386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654625, 35.745319, 36.491608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318756, 35.765865, 36.275345>,  <36.117233, 35.778194, 36.145584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318756, 35.765865, 36.275345>,  <36.654625, 35.745319, 36.491608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318756, 35.765865, 36.275345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446737, -0.500785, -0.741377,
		-0.308835, -0.864046, 0.397549,
		-0.839671, 0.051363, -0.540661,
		36.066856, 35.781273, 36.113148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648537, 35.646027, 37.236538>,  <36.654625, 35.745319, 36.491608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648537, 35.646027, 37.236538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792641, 35.999031, 37.357456>,  <36.879101, 36.210835, 37.430008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792641, 35.999031, 37.357456>,  <36.648537, 35.646027, 37.236538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792641, 35.999031, 37.357456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512412, 0.083585, -0.854662,
		-0.779519, 0.462799, -0.422099,
		0.360256, 0.882514, 0.302300,
		36.900719, 36.263786, 37.448147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063843, 35.122784, 37.575180>,  <36.648537, 35.646027, 37.236538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063843, 35.122784, 37.575180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434689, 35.184006, 37.712017>,  <37.657196, 35.220741, 37.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.434689, 35.184006, 37.712017>,  <37.063843, 35.122784, 37.575180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434689, 35.184006, 37.712017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033419, -0.942931, 0.331308,
		0.373280, -0.295728, -0.879322,
		0.927117, 0.153057, 0.342094,
		37.712822, 35.229923, 37.814644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858521, 34.764118, 38.143780>,  <37.063843, 35.122784, 37.575180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858521, 34.764118, 38.143780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701359, 34.817833, 38.507668>,  <36.607059, 34.850060, 38.726002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701359, 34.817833, 38.507668>,  <36.858521, 34.764118, 38.143780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701359, 34.817833, 38.507668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041419, -0.985692, 0.163387,
		0.918645, 0.101875, 0.381724,
		-0.392908, 0.134284, 0.909721,
		36.583485, 34.858120, 38.780582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420654, 34.306438, 38.526367>,  <36.858521, 34.764118, 38.143780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420654, 34.306438, 38.526367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732307, 34.171917, 38.737968>,  <36.919300, 34.091202, 38.864929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732307, 34.171917, 38.737968>,  <36.420654, 34.306438, 38.526367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732307, 34.171917, 38.737968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270247, 0.581237, 0.767548,
		-0.565608, -0.740986, 0.361977,
		0.779137, -0.336308, 0.529002,
		36.966049, 34.071026, 38.896667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128517, 33.984505, 39.161617>,  <36.420654, 34.306438, 38.526367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128517, 33.984505, 39.161617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487999, 34.134018, 39.253376>,  <36.703686, 34.223728, 39.308430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.487999, 34.134018, 39.253376>,  <36.128517, 33.984505, 39.161617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487999, 34.134018, 39.253376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416834, 0.565409, 0.711732,
		0.136334, -0.735253, 0.663940,
		0.898700, 0.373786, 0.229394,
		36.757610, 34.246155, 39.322193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121937, 34.105057, 39.860668>,  <36.128517, 33.984505, 39.161617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121937, 34.105057, 39.860668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427513, 34.335827, 39.745052>,  <36.610859, 34.474289, 39.675682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427513, 34.335827, 39.745052>,  <36.121937, 34.105057, 39.860668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427513, 34.335827, 39.745052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197621, 0.635585, 0.746310,
		0.614272, -0.513022, 0.599566,
		0.763948, 0.576923, -0.289038,
		36.656696, 34.508904, 39.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586864, 34.130013, 40.400497>,  <36.121937, 34.105057, 39.860668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586864, 34.130013, 40.400497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 34.466896, 40.189556>,  <36.658649, 34.669025, 40.062992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.631729, 34.466896, 40.189556>,  <36.586864, 34.130013, 40.400497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631729, 34.466896, 40.189556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066171, 0.535850, 0.841716,
		0.991484, -0.059515, 0.115834,
		0.112164, 0.842213, -0.527349,
		36.665379, 34.719559, 40.031353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819069, 34.535511, 40.906361>,  <36.586864, 34.130013, 40.400497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819069, 34.535511, 40.906361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730976, 34.804726, 40.623936>,  <36.678120, 34.966255, 40.454479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730976, 34.804726, 40.623936>,  <36.819069, 34.535511, 40.906361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730976, 34.804726, 40.623936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163638, 0.688084, 0.706939,
		0.961624, 0.271230, -0.041405,
		-0.220233, 0.673034, -0.706061,
		36.664906, 35.006638, 40.412117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392635, 35.047958, 40.955051>,  <36.819069, 34.535511, 40.906361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392635, 35.047958, 40.955051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076595, 35.206627, 40.768120>,  <36.886971, 35.301826, 40.655960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.076595, 35.206627, 40.768120>,  <37.392635, 35.047958, 40.955051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.076595, 35.206627, 40.768120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012029, 0.752210, 0.658814,
		0.612858, 0.526151, -0.589551,
		-0.790102, 0.396667, -0.467327,
		36.839565, 35.325626, 40.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502010, 35.767963, 40.914524>,  <37.392635, 35.047958, 40.955051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502010, 35.767963, 40.914524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105915, 35.715336, 40.896091>,  <36.868259, 35.683758, 40.885033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105915, 35.715336, 40.896091>,  <37.502010, 35.767963, 40.914524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105915, 35.715336, 40.896091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121372, 0.651048, 0.749269,
		-0.068581, 0.747546, -0.660660,
		-0.990235, -0.131572, -0.046081,
		36.808846, 35.675865, 40.882267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332085, 36.416035, 40.893162>,  <37.502010, 35.767963, 40.914524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332085, 36.416035, 40.893162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003635, 36.214634, 41.000679>,  <36.806564, 36.093796, 41.065189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003635, 36.214634, 41.000679>,  <37.332085, 36.416035, 40.893162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003635, 36.214634, 41.000679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142304, 0.636669, 0.757893,
		-0.552728, 0.584073, -0.594433,
		-0.821122, -0.503499, 0.268789,
		36.757298, 36.063583, 41.081314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984127, 36.985081, 41.189831>,  <37.332085, 36.416035, 40.893162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984127, 36.985081, 41.189831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788616, 36.652981, 41.296989>,  <36.671310, 36.453720, 41.361286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788616, 36.652981, 41.296989>,  <36.984127, 36.985081, 41.189831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788616, 36.652981, 41.296989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399295, 0.485933, 0.777453,
		-0.775665, 0.273034, -0.569031,
		-0.488782, -0.830254, 0.267900,
		36.641983, 36.403904, 41.377361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284973, 37.180408, 41.340199>,  <36.984127, 36.985081, 41.189831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284973, 37.180408, 41.340199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362511, 36.832539, 41.521786>,  <36.409035, 36.623817, 41.630737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.362511, 36.832539, 41.521786>,  <36.284973, 37.180408, 41.340199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.362511, 36.832539, 41.521786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275009, 0.396016, 0.876094,
		-0.941697, -0.294670, -0.162404,
		0.193844, -0.869678, 0.453964,
		36.420666, 36.571636, 41.657974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723255, 37.063084, 41.679855>,  <36.284973, 37.180408, 41.340199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723255, 37.063084, 41.679855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983990, 36.823586, 41.866020>,  <36.140430, 36.679886, 41.977718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.983990, 36.823586, 41.866020>,  <35.723255, 37.063084, 41.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983990, 36.823586, 41.866020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313800, 0.345755, 0.884298,
		-0.690388, -0.722467, 0.037491,
		0.651839, -0.598744, 0.465416,
		36.179543, 36.643963, 42.005646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325794, 36.782352, 42.101830>,  <35.723255, 37.063084, 41.679855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325794, 36.782352, 42.101830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700504, 36.759171, 42.239872>,  <35.925331, 36.745262, 42.322697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700504, 36.759171, 42.239872>,  <35.325794, 36.782352, 42.101830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700504, 36.759171, 42.239872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311615, 0.310548, 0.898029,
		-0.159220, -0.948789, 0.272852,
		0.936774, -0.057960, 0.345102,
		35.981537, 36.741783, 42.343403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300270, 36.564888, 42.853046>,  <35.325794, 36.782352, 42.101830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300270, 36.564888, 42.853046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673622, 36.707272, 42.834728>,  <35.897633, 36.792702, 42.823738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673622, 36.707272, 42.834728>,  <35.300270, 36.564888, 42.853046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673622, 36.707272, 42.834728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041988, 0.235023, 0.971082,
		0.356423, -0.904467, 0.234312,
		0.933380, 0.355954, -0.045791,
		35.953636, 36.814056, 42.820992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680698, 36.250839, 43.466522>,  <35.300270, 36.564888, 42.853046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680698, 36.250839, 43.466522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871536, 36.583332, 43.352383>,  <35.986038, 36.782829, 43.283897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871536, 36.583332, 43.352383>,  <35.680698, 36.250839, 43.466522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871536, 36.583332, 43.352383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047494, 0.299828, 0.952810,
		0.877567, -0.468134, 0.103568,
		0.477096, 0.831236, -0.285353,
		36.014664, 36.832703, 43.266777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144012, 36.381397, 43.960766>,  <35.680698, 36.250839, 43.466522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144012, 36.381397, 43.960766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129269, 36.735687, 43.775665>,  <36.120422, 36.948261, 43.664604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129269, 36.735687, 43.775665>,  <36.144012, 36.381397, 43.960766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129269, 36.735687, 43.775665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021858, 0.462236, 0.886488,
		0.999081, 0.042793, 0.002322,
		-0.036862, 0.885724, -0.462747,
		36.118210, 37.001404, 43.636841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553505, 36.781998, 44.364658>,  <36.144012, 36.381397, 43.960766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553505, 36.781998, 44.364658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353363, 37.048306, 44.143246>,  <36.233280, 37.208092, 44.010399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353363, 37.048306, 44.143246>,  <36.553505, 36.781998, 44.364658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353363, 37.048306, 44.143246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022772, 0.628975, 0.777092,
		0.865523, 0.401424, -0.299547,
		-0.500351, 0.665770, -0.553534,
		36.203259, 37.248035, 43.977184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928074, 37.355171, 44.528385>,  <36.553505, 36.781998, 44.364658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928074, 37.355171, 44.528385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555744, 37.448898, 44.416203>,  <36.332344, 37.505135, 44.348892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555744, 37.448898, 44.416203>,  <36.928074, 37.355171, 44.528385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555744, 37.448898, 44.416203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135396, 0.491684, 0.860183,
		0.339454, 0.838654, -0.425946,
		-0.930827, 0.234321, -0.280454,
		36.276497, 37.519196, 44.332066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934402, 37.979229, 44.657845>,  <36.928074, 37.355171, 44.528385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934402, 37.979229, 44.657845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540951, 37.907398, 44.651947>,  <36.304878, 37.864300, 44.648407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540951, 37.907398, 44.651947>,  <36.934402, 37.979229, 44.657845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540951, 37.907398, 44.651947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120296, 0.593607, 0.795714,
		-0.134139, 0.784464, -0.605494,
		-0.983634, -0.179575, -0.014743,
		36.245861, 37.853527, 44.647526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726910, 38.616066, 44.839935>,  <36.934402, 37.979229, 44.657845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726910, 38.616066, 44.839935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403481, 38.385948, 44.889317>,  <36.209423, 38.247879, 44.918945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403481, 38.385948, 44.889317>,  <36.726910, 38.616066, 44.839935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403481, 38.385948, 44.889317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185767, 0.448688, 0.874168,
		-0.558297, 0.683897, -0.469669,
		-0.808576, -0.575294, 0.123456,
		36.160908, 38.213360, 44.926353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197163, 39.057255, 44.929859>,  <36.726910, 38.616066, 44.839935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197163, 39.057255, 44.929859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068321, 38.713730, 45.089203>,  <35.991016, 38.507614, 45.184811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068321, 38.713730, 45.089203>,  <36.197163, 39.057255, 44.929859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068321, 38.713730, 45.089203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246599, 0.482372, 0.840540,
		-0.914024, 0.172504, -0.367155,
		-0.322102, -0.858813, 0.398360,
		35.971691, 38.456085, 45.208710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520359, 39.196533, 45.183186>,  <36.197163, 39.057255, 44.929859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520359, 39.196533, 45.183186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672340, 38.891716, 45.392918>,  <35.763527, 38.708824, 45.518757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672340, 38.891716, 45.392918>,  <35.520359, 39.196533, 45.183186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672340, 38.891716, 45.392918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234107, 0.469169, 0.851513,
		-0.894892, -0.446283, -0.000138,
		0.379951, -0.762045, 0.524333,
		35.786327, 38.663101, 45.550217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164040, 39.149441, 45.741291>,  <35.520359, 39.196533, 45.183186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164040, 39.149441, 45.741291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474308, 38.933739, 45.872463>,  <35.660469, 38.804317, 45.951168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474308, 38.933739, 45.872463>,  <35.164040, 39.149441, 45.741291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474308, 38.933739, 45.872463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176442, 0.313595, 0.933020,
		-0.605971, -0.781579, 0.148101,
		0.775672, -0.539252, 0.327933,
		35.707008, 38.771961, 45.970844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895874, 38.798920, 46.372311>,  <35.164040, 39.149441, 45.741291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895874, 38.798920, 46.372311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294704, 38.770222, 46.382812>,  <35.534004, 38.753002, 46.389114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.294704, 38.770222, 46.382812>,  <34.895874, 38.798920, 46.372311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294704, 38.770222, 46.382812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009569, 0.223651, 0.974622,
		-0.075793, -0.972025, 0.222311,
		0.997078, -0.071742, 0.026252,
		35.593826, 38.748699, 46.390690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066452, 38.543514, 46.986851>,  <34.895874, 38.798920, 46.372311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066452, 38.543514, 46.986851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415028, 38.710976, 46.884617>,  <35.624172, 38.811451, 46.823277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415028, 38.710976, 46.884617>,  <35.066452, 38.543514, 46.986851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415028, 38.710976, 46.884617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134945, 0.296331, 0.945504,
		0.471577, -0.858439, 0.201739,
		0.871439, 0.418654, -0.255585,
		35.676460, 38.836571, 46.807941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459328, 38.338902, 47.503262>,  <35.066452, 38.543514, 46.986851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459328, 38.338902, 47.503262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663105, 38.661381, 47.382919>,  <35.785370, 38.854870, 47.310715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663105, 38.661381, 47.382919>,  <35.459328, 38.338902, 47.503262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663105, 38.661381, 47.382919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148471, 0.262029, 0.953571,
		0.847599, -0.530459, 0.013792,
		0.509444, 0.806198, -0.300853,
		35.815937, 38.903240, 47.292664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166279, 38.396774, 47.896263>,  <35.459328, 38.338902, 47.503262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166279, 38.396774, 47.896263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092655, 38.754326, 47.732746>,  <36.048481, 38.968857, 47.634636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092655, 38.754326, 47.732746>,  <36.166279, 38.396774, 47.896263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092655, 38.754326, 47.732746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228416, 0.443409, 0.866727,
		0.956006, 0.066155, -0.285789,
		-0.184060, 0.893875, -0.408790,
		36.037437, 39.022488, 47.610107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778591, 38.868683, 48.163544>,  <36.166279, 38.396774, 47.896263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778591, 38.868683, 48.163544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461514, 39.094669, 48.071941>,  <36.271267, 39.230263, 48.016979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461514, 39.094669, 48.071941>,  <36.778591, 38.868683, 48.163544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461514, 39.094669, 48.071941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069111, 0.456514, 0.887028,
		0.605685, 0.687319, -0.400923,
		-0.792698, 0.564968, -0.229002,
		36.223705, 39.264160, 48.003242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279114, 39.232990, 47.726028>,  <36.778591, 38.868683, 48.163544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279114, 39.232990, 47.726028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650787, 39.228794, 47.873814>,  <37.873791, 39.226276, 47.962486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650787, 39.228794, 47.873814>,  <37.279114, 39.232990, 47.726028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650787, 39.228794, 47.873814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294873, -0.581651, -0.758111,
		0.222851, 0.813371, -0.537369,
		0.929187, -0.010490, 0.369462,
		37.929543, 39.225647, 47.984653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716503, 39.553993, 47.290665>,  <37.279114, 39.232990, 47.726028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716503, 39.553993, 47.290665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896084, 39.268616, 47.505863>,  <38.003834, 39.097389, 47.634983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896084, 39.268616, 47.505863>,  <37.716503, 39.553993, 47.290665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896084, 39.268616, 47.505863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179623, -0.517742, -0.836468,
		0.875315, 0.472172, -0.104292,
		0.448954, -0.713440, 0.538001,
		38.030769, 39.054585, 47.667263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374603, 39.335941, 46.965729>,  <37.716503, 39.553993, 47.290665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374603, 39.335941, 46.965729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327290, 39.010208, 47.193012>,  <38.298901, 38.814766, 47.329384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327290, 39.010208, 47.193012>,  <38.374603, 39.335941, 46.965729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327290, 39.010208, 47.193012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164827, -0.580393, -0.797481,
		0.979204, -0.000671, 0.202875,
		-0.118283, -0.814336, 0.568213,
		38.291805, 38.765907, 47.363476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022011, 38.989475, 47.024548>,  <38.374603, 39.335941, 46.965729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022011, 38.989475, 47.024548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736568, 38.714691, 47.079464>,  <38.565304, 38.549820, 47.112411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736568, 38.714691, 47.079464>,  <39.022011, 38.989475, 47.024548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736568, 38.714691, 47.079464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404102, -0.563737, -0.720349,
		0.572246, -0.458568, 0.679889,
		-0.713608, -0.686962, 0.137288,
		38.522488, 38.508602, 47.120651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417702, 38.448612, 47.046467>,  <39.022011, 38.989475, 47.024548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417702, 38.448612, 47.046467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050613, 38.308636, 46.971283>,  <38.830360, 38.224651, 46.926170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050613, 38.308636, 46.971283>,  <39.417702, 38.448612, 47.046467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050613, 38.308636, 46.971283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381429, -0.644201, -0.662960,
		0.110912, -0.680107, 0.724675,
		-0.917720, -0.349942, -0.187963,
		38.775299, 38.203651, 46.914894>
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
