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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.129251, 15.417472, 15.191647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134459, 15.075913, 14.983534>,  <4.137583, 14.870978, 14.858666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.134459, 15.075913, 14.983534>,  <4.129251, 15.417472, 15.191647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.134459, 15.075913, 14.983534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474478, 0.463291, -0.748487,
		0.880171, -0.237117, 0.411187,
		0.013020, -0.853895, -0.520282,
		4.138365, 14.819745, 14.827449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.908967, 15.280372, 15.041672>,  <4.129251, 15.417472, 15.191647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.908967, 15.280372, 15.041672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643126, 15.146443, 14.774479>,  <4.483622, 15.066087, 14.614163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.643126, 15.146443, 14.774479>,  <4.908967, 15.280372, 15.041672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643126, 15.146443, 14.774479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430810, 0.558723, -0.708683,
		0.610499, -0.758766, -0.227084,
		-0.664601, -0.334820, -0.667983,
		4.443746, 15.045998, 14.574084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.247469, 14.973992, 14.442643>,  <4.908967, 15.280372, 15.041672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.247469, 14.973992, 14.442643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.898009, 15.125819, 14.320880>,  <4.688334, 15.216915, 14.247822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.898009, 15.125819, 14.320880>,  <5.247469, 14.973992, 14.442643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.898009, 15.125819, 14.320880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482376, 0.593859, -0.643930,
		-0.063639, -0.709408, -0.701919,
		-0.873650, 0.379568, -0.304408,
		4.635914, 15.239690, 14.229557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.948217, 15.057926, 14.634153>,  <5.247469, 14.973992, 14.442643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.948217, 15.057926, 14.634153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.310420, 14.894316, 14.679331>,  <6.527741, 14.796149, 14.706437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.310420, 14.894316, 14.679331>,  <5.948217, 15.057926, 14.634153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.310420, 14.894316, 14.679331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194253, 0.162933, -0.967326,
		0.377259, 0.897859, 0.226991,
		0.905506, -0.409026, 0.112944,
		6.582072, 14.771607, 14.713214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.534723, 15.479946, 14.410436>,  <5.948217, 15.057926, 14.634153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.534723, 15.479946, 14.410436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570962, 15.083348, 14.373064>,  <6.592706, 14.845389, 14.350641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.570962, 15.083348, 14.373064>,  <6.534723, 15.479946, 14.410436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.570962, 15.083348, 14.373064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041772, 0.097515, -0.994357,
		0.995011, 0.086185, 0.050252,
		0.090598, -0.991495, -0.093429,
		6.598142, 14.785900, 14.345036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.144273, 15.338157, 14.062599>,  <6.534723, 15.479946, 14.410436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.144273, 15.338157, 14.062599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.967190, 14.983508, 14.009064>,  <6.860940, 14.770720, 13.976942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.967190, 14.983508, 14.009064>,  <7.144273, 15.338157, 14.062599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.967190, 14.983508, 14.009064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148835, 0.074532, -0.986050,
		0.884228, -0.456452, 0.098964,
		-0.442708, -0.886621, -0.133839,
		6.834377, 14.717522, 13.968912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.544946, 15.025888, 13.628127>,  <7.144273, 15.338157, 14.062599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.544946, 15.025888, 13.628127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197788, 14.831632, 13.586348>,  <6.989493, 14.715077, 13.561280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.197788, 14.831632, 13.586348>,  <7.544946, 15.025888, 13.628127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.197788, 14.831632, 13.586348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070484, 0.087743, -0.993646,
		0.491723, -0.869742, -0.041921,
		-0.867895, -0.485644, -0.104448,
		6.937419, 14.685939, 13.555014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.532388, 14.709966, 13.027147>,  <7.544946, 15.025888, 13.628127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.532388, 14.709966, 13.027147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.135938, 14.705811, 13.080160>,  <6.898068, 14.703318, 13.111968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.135938, 14.705811, 13.080160>,  <7.532388, 14.709966, 13.027147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.135938, 14.705811, 13.080160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121143, 0.481108, -0.868251,
		-0.054744, -0.876600, -0.478096,
		-0.991124, -0.010386, 0.132532,
		6.838601, 14.702695, 13.119920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.242597, 14.518961, 12.401945>,  <7.532388, 14.709966, 13.027147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.242597, 14.518961, 12.401945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923341, 14.696834, 12.564538>,  <6.731787, 14.803557, 12.662094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.923341, 14.696834, 12.564538>,  <7.242597, 14.518961, 12.401945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.923341, 14.696834, 12.564538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232995, 0.394369, -0.888924,
		-0.555593, -0.804195, -0.211154,
		-0.798141, 0.444683, 0.406483,
		6.683898, 14.830238, 12.686482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.876279, 14.535670, 11.739094>,  <7.242597, 14.518961, 12.401945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.876279, 14.535670, 11.739094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.721119, 14.812749, 11.982306>,  <6.628024, 14.978996, 12.128234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.721119, 14.812749, 11.982306>,  <6.876279, 14.535670, 11.739094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.721119, 14.812749, 11.982306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014246, 0.655101, -0.755407,
		-0.921591, -0.301684, -0.244245,
		-0.387900, 0.692697, 0.608033,
		6.604749, 15.020558, 12.164717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.262327, 14.789702, 11.408291>,  <6.876279, 14.535670, 11.739094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.262327, 14.789702, 11.408291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.394348, 15.067198, 11.664351>,  <6.473560, 15.233695, 11.817986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.394348, 15.067198, 11.664351>,  <6.262327, 14.789702, 11.408291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.394348, 15.067198, 11.664351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274132, 0.719368, -0.638249,
		-0.903281, 0.035170, 0.427605,
		0.330052, 0.693738, 0.640150,
		6.493363, 15.275319, 11.856396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.861990, 15.331759, 11.237247>,  <6.262327, 14.789702, 11.408291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.861990, 15.331759, 11.237247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.164370, 15.502297, 11.435952>,  <6.345797, 15.604620, 11.555175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.164370, 15.502297, 11.435952>,  <5.861990, 15.331759, 11.237247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.164370, 15.502297, 11.435952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107461, 0.829366, -0.548273,
		-0.645751, 0.361084, 0.672773,
		0.755948, 0.426345, 0.496762,
		6.391154, 15.630201, 11.584981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.655430, 15.979411, 11.340666>,  <5.861990, 15.331759, 11.237247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.655430, 15.979411, 11.340666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.052993, 16.016832, 11.363976>,  <6.291531, 16.039286, 11.377963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.052993, 16.016832, 11.363976>,  <5.655430, 15.979411, 11.340666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.052993, 16.016832, 11.363976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036551, 0.778579, -0.626481,
		-0.103982, 0.620535, 0.777255,
		0.993907, 0.093552, 0.058277,
		6.351165, 16.044897, 11.381459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.807879, 16.694435, 11.452745>,  <5.655430, 15.979411, 11.340666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.807879, 16.694435, 11.452745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.146271, 16.535131, 11.310925>,  <6.349307, 16.439548, 11.225832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.146271, 16.535131, 11.310925>,  <5.807879, 16.694435, 11.452745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.146271, 16.535131, 11.310925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021211, 0.689540, -0.723937,
		0.532793, 0.604915, 0.591785,
		0.845980, -0.398261, -0.354551,
		6.400065, 16.415653, 11.204559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.343843, 17.255753, 11.399739>,  <5.807879, 16.694435, 11.452745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.343843, 17.255753, 11.399739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.424218, 16.967089, 11.134761>,  <6.472442, 16.793890, 10.975774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.424218, 16.967089, 11.134761>,  <6.343843, 17.255753, 11.399739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.424218, 16.967089, 11.134761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068242, 0.684907, -0.725427,
		0.977224, 0.100558, 0.186870,
		0.200936, -0.721658, -0.662446,
		6.484499, 16.750591, 10.936027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.748778, 17.593784, 11.074531>,  <6.343843, 17.255753, 11.399739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.748778, 17.593784, 11.074531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.726508, 17.285614, 10.820494>,  <6.713145, 17.100712, 10.668072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.726508, 17.285614, 10.820494>,  <6.748778, 17.593784, 11.074531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.726508, 17.285614, 10.820494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084517, 0.630160, -0.771852,
		0.994865, -0.096650, 0.030029,
		-0.055677, -0.770427, -0.635093,
		6.709805, 17.054485, 10.629966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.219872, 17.780762, 10.524756>,  <6.748778, 17.593784, 11.074531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.219872, 17.780762, 10.524756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978431, 17.499636, 10.374177>,  <6.833566, 17.330959, 10.283830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.978431, 17.499636, 10.374177>,  <7.219872, 17.780762, 10.524756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.978431, 17.499636, 10.374177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027193, 0.453740, -0.890719,
		0.796821, -0.547877, -0.254767,
		-0.603603, -0.702816, -0.376449,
		6.797350, 17.288792, 10.261243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.566576, 17.518259, 9.893001>,  <7.219872, 17.780762, 10.524756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.566576, 17.518259, 9.893001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.176233, 17.438459, 9.857442>,  <6.942028, 17.390579, 9.836106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.176233, 17.438459, 9.857442>,  <7.566576, 17.518259, 9.893001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.176233, 17.438459, 9.857442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002271, 0.397733, -0.917498,
		0.218398, -0.895549, -0.387678,
		-0.975857, -0.199499, -0.088897,
		6.883476, 17.378609, 9.830772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.462566, 17.358448, 9.198938>,  <7.566576, 17.518259, 9.893001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.462566, 17.358448, 9.198938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.090776, 17.437382, 9.323605>,  <6.867702, 17.484741, 9.398404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.090776, 17.437382, 9.323605>,  <7.462566, 17.358448, 9.198938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.090776, 17.437382, 9.323605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207140, 0.419900, -0.883616,
		-0.305234, -0.885858, -0.349411,
		-0.929475, 0.197332, 0.311665,
		6.811933, 17.496582, 9.417104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.950030, 17.084187, 8.684374>,  <7.462566, 17.358448, 9.198938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.950030, 17.084187, 8.684374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.766758, 17.375233, 8.888589>,  <6.656795, 17.549860, 9.011118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.766758, 17.375233, 8.888589>,  <6.950030, 17.084187, 8.684374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.766758, 17.375233, 8.888589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308094, 0.408763, -0.859064,
		-0.833756, -0.550900, 0.036886,
		-0.458180, 0.727614, 0.510537,
		6.629304, 17.593517, 9.041750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.253046, 17.120541, 8.425917>,  <6.950030, 17.084187, 8.684374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.253046, 17.120541, 8.425917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.334653, 17.470774, 8.601067>,  <6.383618, 17.680914, 8.706157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.334653, 17.470774, 8.601067>,  <6.253046, 17.120541, 8.425917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.334653, 17.470774, 8.601067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278909, 0.480732, -0.831328,
		-0.938395, 0.047480, 0.342286,
		0.204019, 0.875581, 0.437874,
		6.395859, 17.733448, 8.732429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.873971, 17.615725, 8.088250>,  <6.253046, 17.120541, 8.425917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.873971, 17.615725, 8.088250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.090905, 17.889334, 8.283384>,  <6.221066, 18.053499, 8.400465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.090905, 17.889334, 8.283384>,  <5.873971, 17.615725, 8.088250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.090905, 17.889334, 8.283384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076441, 0.618410, -0.782129,
		-0.836677, 0.386886, 0.387673,
		0.542336, 0.684024, 0.487835,
		6.253605, 18.094542, 8.429735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.470241, 18.272808, 8.022299>,  <5.873971, 17.615725, 8.088250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.470241, 18.272808, 8.022299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.863444, 18.312643, 8.083978>,  <6.099366, 18.336544, 8.120985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.863444, 18.312643, 8.083978>,  <5.470241, 18.272808, 8.022299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.863444, 18.312643, 8.083978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073452, 0.556436, -0.827637,
		-0.168223, 0.824901, 0.539666,
		0.983008, 0.099588, 0.154196,
		6.158347, 18.342520, 8.130237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.533851, 18.999517, 8.015458>,  <5.470241, 18.272808, 8.022299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.533851, 18.999517, 8.015458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.897054, 18.841898, 7.958543>,  <6.114975, 18.747326, 7.924394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.897054, 18.841898, 7.958543>,  <5.533851, 18.999517, 8.015458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.897054, 18.841898, 7.958543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065136, 0.468279, -0.881177,
		0.413858, 0.790847, 0.450868,
		0.908008, -0.394050, -0.142288,
		6.169456, 18.723682, 7.915856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.799062, 19.495590, 7.589306>,  <5.533851, 18.999517, 8.015458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.799062, 19.495590, 7.589306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.053481, 19.189455, 7.549911>,  <6.206132, 19.005774, 7.526274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.053481, 19.189455, 7.549911>,  <5.799062, 19.495590, 7.589306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.053481, 19.189455, 7.549911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341368, 0.393541, -0.853577,
		0.692035, 0.509294, 0.511573,
		0.636047, -0.765340, -0.098488,
		6.244295, 18.959852, 7.520365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.375211, 19.724001, 7.529211>,  <5.799062, 19.495590, 7.589306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.375211, 19.724001, 7.529211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386147, 19.374645, 7.334708>,  <6.392710, 19.165031, 7.218006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.386147, 19.374645, 7.334708>,  <6.375211, 19.724001, 7.529211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.386147, 19.374645, 7.334708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333377, 0.466557, -0.819259,
		0.942397, -0.139707, 0.303924,
		0.027342, -0.873388, -0.486257,
		6.394350, 19.112629, 7.188831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034897, 19.563318, 7.324968>,  <6.375211, 19.724001, 7.529211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034897, 19.563318, 7.324968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.754167, 19.430338, 7.072963>,  <6.585729, 19.350550, 6.921760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.754167, 19.430338, 7.072963>,  <7.034897, 19.563318, 7.324968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.754167, 19.430338, 7.072963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367142, 0.589092, -0.719846,
		0.610448, -0.736511, -0.291384,
		-0.701826, -0.332449, -0.630014,
		6.543620, 19.330603, 6.883959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.356410, 19.466795, 6.636065>,  <7.034897, 19.563318, 7.324968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.356410, 19.466795, 6.636065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983976, 19.610001, 6.608051>,  <6.760515, 19.695925, 6.591242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983976, 19.610001, 6.608051>,  <7.356410, 19.466795, 6.636065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.983976, 19.610001, 6.608051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321662, 0.715147, -0.620564,
		-0.172085, -0.600326, -0.781022,
		-0.931086, 0.358015, -0.070036,
		6.704650, 19.717405, 6.587040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.884723, 18.999538, 6.355343>,  <7.356410, 19.466795, 6.636065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.884723, 18.999538, 6.355343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183949, 18.906170, 6.106856>,  <8.363485, 18.850149, 5.957764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.183949, 18.906170, 6.106856>,  <7.884723, 18.999538, 6.355343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.183949, 18.906170, 6.106856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494466, 0.820387, 0.287173,
		0.442607, -0.521995, 0.729123,
		0.748066, -0.233422, -0.621218,
		8.408369, 18.836143, 5.920491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.009580, 18.410114, 6.737330>,  <7.884723, 18.999538, 6.355343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.009580, 18.410114, 6.737330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.042920, 18.416796, 7.135882>,  <8.062924, 18.420805, 7.375013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.042920, 18.416796, 7.135882>,  <8.009580, 18.410114, 6.737330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.042920, 18.416796, 7.135882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951367, -0.296229, 0.084552,
		0.296569, -0.954971, -0.008800,
		0.083352, 0.016704, 0.996380,
		8.067925, 18.421806, 7.434796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.325228, 17.741371, 6.517740>,  <8.009580, 18.410114, 6.737330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.325228, 17.741371, 6.517740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350166, 17.407633, 6.298657>,  <8.365129, 17.207390, 6.167208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.350166, 17.407633, 6.298657>,  <8.325228, 17.741371, 6.517740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.350166, 17.407633, 6.298657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160245, -0.533287, 0.830618,
		-0.985106, -0.139552, 0.100451,
		0.062346, -0.834345, -0.547707,
		8.368870, 17.157330, 6.134346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.850843, 17.265095, 6.740868>,  <8.325228, 17.741371, 6.517740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.850843, 17.265095, 6.740868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.189534, 17.121052, 6.584216>,  <8.392749, 17.034626, 6.490224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.189534, 17.121052, 6.584216>,  <7.850843, 17.265095, 6.740868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.189534, 17.121052, 6.584216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148038, -0.547568, 0.823562,
		-0.511007, -0.755312, -0.410335,
		0.846733, -0.360101, -0.391627,
		8.443552, 17.013020, 6.466726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.145339, 16.569958, 6.581586>,  <7.850843, 17.265095, 6.740868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.145339, 16.569958, 6.581586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.492993, 16.700277, 6.730426>,  <8.701586, 16.778469, 6.819731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.492993, 16.700277, 6.730426>,  <8.145339, 16.569958, 6.581586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.492993, 16.700277, 6.730426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036585, -0.792656, 0.608570,
		0.493221, -0.515316, -0.700845,
		0.869135, 0.325800, 0.372101,
		8.753734, 16.798018, 6.842057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.687479, 16.008617, 6.697444>,  <8.145339, 16.569958, 6.581586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.687479, 16.008617, 6.697444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.711618, 16.327160, 6.938167>,  <8.726102, 16.518286, 7.082601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.711618, 16.327160, 6.938167>,  <8.687479, 16.008617, 6.697444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.711618, 16.327160, 6.938167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029319, -0.601231, 0.798537,
		0.997747, -0.065834, -0.012935,
		0.060348, 0.796359, 0.601807,
		8.729723, 16.566067, 7.118709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.369732, 16.159975, 7.158937>,  <8.687479, 16.008617, 6.697444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.369732, 16.159975, 7.158937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.027122, 16.279215, 7.327463>,  <8.821557, 16.350758, 7.428578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.027122, 16.279215, 7.327463>,  <9.369732, 16.159975, 7.158937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.027122, 16.279215, 7.327463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155852, -0.628829, 0.761764,
		0.492016, 0.718131, 0.492147,
		-0.856522, 0.298098, 0.421316,
		8.770165, 16.368645, 7.453857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.520970, 16.313602, 7.903741>,  <9.369732, 16.159975, 7.158937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.520970, 16.313602, 7.903741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129924, 16.242645, 7.858492>,  <8.895296, 16.200071, 7.831343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.129924, 16.242645, 7.858492>,  <9.520970, 16.313602, 7.903741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.129924, 16.242645, 7.858492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040297, -0.369836, 0.928223,
		-0.206499, 0.912004, 0.354410,
		-0.977617, -0.177395, -0.113122,
		8.836638, 16.189426, 7.824556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.949971, 16.644669, 8.442032>,  <9.520970, 16.313602, 7.903741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.949971, 16.644669, 8.442032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.867537, 16.281210, 8.296765>,  <8.818076, 16.063135, 8.209606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.867537, 16.281210, 8.296765>,  <8.949971, 16.644669, 8.442032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.867537, 16.281210, 8.296765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012601, -0.368637, 0.929488,
		-0.978453, 0.196130, 0.064521,
		-0.206086, -0.908647, -0.363165,
		8.805711, 16.008615, 8.187816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.294477, 16.325708, 8.795660>,  <8.949971, 16.644669, 8.442032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.294477, 16.325708, 8.795660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.496871, 16.016474, 8.642653>,  <8.618307, 15.830933, 8.550849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.496871, 16.016474, 8.642653>,  <8.294477, 16.325708, 8.795660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.496871, 16.016474, 8.642653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046468, -0.418400, 0.907073,
		-0.861291, -0.476738, -0.175779,
		0.505982, -0.773086, -0.382517,
		8.648665, 15.784548, 8.527899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.071883, 15.798523, 9.178458>,  <8.294477, 16.325708, 8.795660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.071883, 15.798523, 9.178458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420454, 15.641161, 9.061258>,  <8.629597, 15.546743, 8.990938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420454, 15.641161, 9.061258>,  <8.071883, 15.798523, 9.178458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.420454, 15.641161, 9.061258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044434, -0.658171, 0.751556,
		-0.488509, -0.641907, -0.591028,
		0.871427, -0.393404, -0.292999,
		8.681882, 15.523140, 8.973358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.007953, 15.052801, 9.301569>,  <8.071883, 15.798523, 9.178458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.007953, 15.052801, 9.301569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.401631, 15.123221, 9.309207>,  <8.637838, 15.165474, 9.313789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.401631, 15.123221, 9.309207>,  <8.007953, 15.052801, 9.301569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.401631, 15.123221, 9.309207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105903, -0.671578, 0.733326,
		0.141926, -0.719714, -0.679609,
		0.984196, 0.176051, 0.019095,
		8.696890, 15.176037, 9.314936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.391988, 14.398728, 9.210191>,  <8.007953, 15.052801, 9.301569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.391988, 14.398728, 9.210191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654047, 14.647315, 9.382033>,  <8.811282, 14.796467, 9.485139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.654047, 14.647315, 9.382033>,  <8.391988, 14.398728, 9.210191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.654047, 14.647315, 9.382033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021754, -0.583919, 0.811521,
		0.755188, -0.522320, -0.396072,
		0.655147, 0.621467, 0.429606,
		8.850591, 14.833755, 9.510915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.790329, 13.990216, 9.534172>,  <8.391988, 14.398728, 9.210191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.790329, 13.990216, 9.534172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924218, 14.335549, 9.685229>,  <9.004552, 14.542749, 9.775864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924218, 14.335549, 9.685229>,  <8.790329, 13.990216, 9.534172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.924218, 14.335549, 9.685229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181792, -0.452395, 0.873092,
		0.924614, -0.223592, -0.308375,
		0.334724, 0.863334, 0.377644,
		9.024635, 14.594549, 9.798522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420903, 13.748720, 9.797035>,  <8.790329, 13.990216, 9.534172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420903, 13.748720, 9.797035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.297340, 14.081723, 9.980994>,  <9.223203, 14.281526, 10.091370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.297340, 14.081723, 9.980994>,  <9.420903, 13.748720, 9.797035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.297340, 14.081723, 9.980994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062941, -0.464593, 0.883285,
		0.949008, 0.301798, 0.091117,
		-0.308906, 0.832509, 0.459898,
		9.204668, 14.331476, 10.118963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.921789, 13.820609, 10.329430>,  <9.420903, 13.748720, 9.797035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.921789, 13.820609, 10.329430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609262, 14.049150, 10.429912>,  <9.421746, 14.186274, 10.490201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.609262, 14.049150, 10.429912>,  <9.921789, 13.820609, 10.329430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.609262, 14.049150, 10.429912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023631, -0.429277, 0.902864,
		0.623688, 0.699486, 0.348902,
		-0.781316, 0.571350, 0.251205,
		9.374867, 14.220554, 10.505273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.147869, 13.903384, 10.912320>,  <9.921789, 13.820609, 10.329430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.147869, 13.903384, 10.912320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.756372, 13.985307, 10.916638>,  <9.521474, 14.034460, 10.919230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.756372, 13.985307, 10.916638>,  <10.147869, 13.903384, 10.912320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.756372, 13.985307, 10.916638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044815, -0.264940, 0.963223,
		0.200135, 0.942264, 0.268486,
		-0.978743, 0.204807, 0.010797,
		9.462749, 14.046749, 10.919877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.979147, 14.162867, 11.574122>,  <10.147869, 13.903384, 10.912320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.979147, 14.162867, 11.574122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.618618, 14.048506, 11.443967>,  <9.402301, 13.979889, 11.365873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.618618, 14.048506, 11.443967>,  <9.979147, 14.162867, 11.574122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.618618, 14.048506, 11.443967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278506, -0.192820, 0.940880,
		-0.331742, 0.938659, 0.094168,
		-0.901322, -0.285903, -0.325388,
		9.348221, 13.962735, 11.346351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.551679, 14.438284, 12.071126>,  <9.979147, 14.162867, 11.574122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.551679, 14.438284, 12.071126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.304239, 14.175961, 11.898036>,  <9.155776, 14.018566, 11.794182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.304239, 14.175961, 11.898036>,  <9.551679, 14.438284, 12.071126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.304239, 14.175961, 11.898036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231120, -0.374500, 0.897961,
		-0.750946, 0.655489, 0.080095,
		-0.618599, -0.655808, -0.432725,
		9.118660, 13.979218, 11.768218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.784236, 14.609504, 12.197968>,  <9.551679, 14.438284, 12.071126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.784236, 14.609504, 12.197968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792925, 14.216208, 12.125560>,  <8.798138, 13.980231, 12.082114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.792925, 14.216208, 12.125560>,  <8.784236, 14.609504, 12.197968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.792925, 14.216208, 12.125560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414686, -0.173616, 0.893249,
		-0.909705, 0.055665, -0.411507,
		0.021721, -0.983239, -0.181023,
		8.799441, 13.921237, 12.071253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.223222, 14.413032, 12.506295>,  <8.784236, 14.609504, 12.197968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.223222, 14.413032, 12.506295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.423285, 14.072607, 12.442379>,  <8.543324, 13.868352, 12.404029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.423285, 14.072607, 12.442379>,  <8.223222, 14.413032, 12.506295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.423285, 14.072607, 12.442379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466102, -0.420113, 0.778623,
		-0.729787, -0.314956, -0.606806,
		0.500159, -0.851063, -0.159792,
		8.573334, 13.817288, 12.394442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.702558, 13.922659, 12.425524>,  <8.223222, 14.413032, 12.506295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.702558, 13.922659, 12.425524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.043764, 13.753516, 12.547872>,  <8.248487, 13.652031, 12.621281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.043764, 13.753516, 12.547872>,  <7.702558, 13.922659, 12.425524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.043764, 13.753516, 12.547872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461069, -0.336037, 0.821276,
		-0.244496, -0.841590, -0.481610,
		0.853016, -0.422854, 0.305872,
		8.299669, 13.626659, 12.639632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.453443, 13.394167, 12.772438>,  <7.702558, 13.922659, 12.425524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.453443, 13.394167, 12.772438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.836266, 13.386020, 12.888113>,  <8.065959, 13.381131, 12.957518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.836266, 13.386020, 12.888113>,  <7.453443, 13.394167, 12.772438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.836266, 13.386020, 12.888113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247634, -0.576105, 0.778961,
		0.150737, -0.817122, -0.556408,
		0.957056, -0.020367, 0.289188,
		8.123383, 13.379910, 12.974869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.555405, 12.717467, 12.982543>,  <7.453443, 13.394167, 12.772438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.555405, 12.717467, 12.982543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.847973, 12.937154, 13.144227>,  <8.023514, 13.068966, 13.241238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.847973, 12.937154, 13.144227>,  <7.555405, 12.717467, 12.982543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.847973, 12.937154, 13.144227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193169, -0.401601, 0.895211,
		0.653996, -0.732856, -0.187648,
		0.731420, 0.549217, 0.404211,
		8.067399, 13.101918, 13.265491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691762, 12.186815, 13.404151>,  <7.555405, 12.717467, 12.982543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691762, 12.186815, 13.404151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.865951, 12.507294, 13.568320>,  <7.970464, 12.699581, 13.666822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.865951, 12.507294, 13.568320>,  <7.691762, 12.186815, 13.404151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.865951, 12.507294, 13.568320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283505, -0.310662, 0.907256,
		0.854394, -0.511441, 0.091859,
		0.435471, 0.801197, 0.410424,
		7.996592, 12.747653, 13.691447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.125605, 11.957423, 14.004309>,  <7.691762, 12.186815, 13.404151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.125605, 11.957423, 14.004309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092071, 12.349279, 14.077277>,  <8.071950, 12.584393, 14.121058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.092071, 12.349279, 14.077277>,  <8.125605, 11.957423, 14.004309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.092071, 12.349279, 14.077277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025828, -0.180868, 0.983168,
		0.996145, 0.087137, -0.010139,
		-0.083836, 0.979640, 0.182422,
		8.066920, 12.643171, 14.132004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626585, 12.153267, 14.540831>,  <8.125605, 11.957423, 14.004309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626585, 12.153267, 14.540831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336622, 12.428696, 14.548611>,  <8.162644, 12.593953, 14.553279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.336622, 12.428696, 14.548611>,  <8.626585, 12.153267, 14.540831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.336622, 12.428696, 14.548611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052835, -0.083731, 0.995087,
		0.686818, 0.720318, 0.097078,
		-0.724907, 0.688572, 0.019450,
		8.119150, 12.635267, 14.554445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.844151, 12.721166, 15.021764>,  <8.626585, 12.153267, 14.540831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.844151, 12.721166, 15.021764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444797, 12.714468, 15.000052>,  <8.205184, 12.710449, 14.987025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.444797, 12.714468, 15.000052>,  <8.844151, 12.721166, 15.021764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.444797, 12.714468, 15.000052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055971, 0.126948, 0.990329,
		-0.009692, 0.991768, -0.127680,
		-0.998385, -0.016744, -0.054280,
		8.145281, 12.709445, 14.983768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.669681, 12.996400, 15.609696>,  <8.844151, 12.721166, 15.021764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.669681, 12.996400, 15.609696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.321198, 12.823016, 15.517511>,  <8.112109, 12.718986, 15.462200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.321198, 12.823016, 15.517511>,  <8.669681, 12.996400, 15.609696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.321198, 12.823016, 15.517511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227158, -0.060229, 0.971994,
		-0.435200, 0.899158, -0.045992,
		-0.871206, -0.433459, -0.230463,
		8.059836, 12.692979, 15.448373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.713724, 13.734991, 15.536556>,  <8.669681, 12.996400, 15.609696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.713724, 13.734991, 15.536556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.777234, 13.848236, 15.158215>,  <8.815340, 13.916183, 14.931210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.777234, 13.848236, 15.158215>,  <8.713724, 13.734991, 15.536556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.777234, 13.848236, 15.158215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801475, 0.522490, 0.290931,
		0.576565, -0.804271, -0.143948,
		0.158776, 0.283112, -0.945853,
		8.824867, 13.933169, 14.874458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.252418, 13.309698, 15.099603>,  <8.713724, 13.734991, 15.536556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.252418, 13.309698, 15.099603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.232215, 13.701596, 15.022095>,  <9.220093, 13.936735, 14.975590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.232215, 13.701596, 15.022095>,  <9.252418, 13.309698, 15.099603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.232215, 13.701596, 15.022095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984860, 0.081074, 0.153222,
		0.165828, -0.183097, -0.969008,
		-0.050507, 0.979746, -0.193769,
		9.217063, 13.995520, 14.963964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.937064, 13.396007, 15.048256>,  <9.252418, 13.309698, 15.099603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.937064, 13.396007, 15.048256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.777617, 13.762039, 15.023834>,  <9.681948, 13.981659, 15.009181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.777617, 13.762039, 15.023834>,  <9.937064, 13.396007, 15.048256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.777617, 13.762039, 15.023834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917042, 0.396853, -0.039257,
		-0.011694, -0.071638, -0.997362,
		-0.398618, 0.915082, -0.061054,
		9.658031, 14.036564, 15.005518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.446910, 13.711476, 14.637494>,  <9.937064, 13.396007, 15.048256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.446910, 13.711476, 14.637494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214298, 14.000842, 14.786354>,  <10.074731, 14.174461, 14.875669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.214298, 14.000842, 14.786354>,  <10.446910, 13.711476, 14.637494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.214298, 14.000842, 14.786354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775478, 0.631192, -0.015183,
		-0.245881, 0.279764, -0.928049,
		-0.581529, 0.723415, 0.372149,
		10.039840, 14.217867, 14.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.646336, 14.331055, 14.257579>,  <10.446910, 13.711476, 14.637494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.646336, 14.331055, 14.257579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487321, 14.431920, 14.610482>,  <10.391912, 14.492439, 14.822224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.487321, 14.431920, 14.610482>,  <10.646336, 14.331055, 14.257579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.487321, 14.431920, 14.610482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750306, 0.642819, 0.154354,
		-0.528210, 0.723324, -0.444743,
		-0.397537, 0.252162, 0.882258,
		10.368060, 14.507568, 14.875159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498775, 15.149842, 14.582315>,  <10.646336, 14.331055, 14.257579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498775, 15.149842, 14.582315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508923, 14.926378, 14.913918>,  <10.515012, 14.792299, 15.112881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.508923, 14.926378, 14.913918>,  <10.498775, 15.149842, 14.582315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.508923, 14.926378, 14.913918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345546, 0.783060, 0.517122,
		-0.938059, 0.273341, 0.212910,
		0.025371, -0.558661, 0.829008,
		10.516534, 14.758780, 15.162621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.373375, 15.629056, 15.081043>,  <10.498775, 15.149842, 14.582315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.373375, 15.629056, 15.081043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.560976, 15.315053, 15.242931>,  <10.673537, 15.126651, 15.340064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.560976, 15.315053, 15.242931>,  <10.373375, 15.629056, 15.081043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.560976, 15.315053, 15.242931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388193, 0.594831, 0.703905,
		-0.793311, -0.173025, 0.583712,
		0.469003, -0.785008, 0.404719,
		10.701677, 15.079551, 15.364347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.005165, 15.469390, 15.710032>,  <10.373375, 15.629056, 15.081043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.005165, 15.469390, 15.710032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.392847, 15.370974, 15.705953>,  <10.625457, 15.311924, 15.703506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.392847, 15.370974, 15.705953>,  <10.005165, 15.469390, 15.710032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.392847, 15.370974, 15.705953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183834, 0.695368, 0.694743,
		-0.163844, -0.675224, 0.719186,
		0.969206, -0.246040, -0.010197,
		10.683609, 15.297161, 15.702893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.251699, 15.481484, 16.446413>,  <10.005165, 15.469390, 15.710032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.251699, 15.481484, 16.446413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.583333, 15.486047, 16.222811>,  <10.782313, 15.488784, 16.088650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.583333, 15.486047, 16.222811>,  <10.251699, 15.481484, 16.446413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583333, 15.486047, 16.222811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421956, 0.643200, 0.638942,
		0.366840, -0.765613, 0.528456,
		0.829085, 0.011404, -0.559007,
		10.832058, 15.489469, 16.055109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.645148, 15.603025, 16.951773>,  <10.251699, 15.481484, 16.446413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.645148, 15.603025, 16.951773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841324, 15.699257, 16.616728>,  <10.959029, 15.756996, 16.415701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.841324, 15.699257, 16.616728>,  <10.645148, 15.603025, 16.951773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.841324, 15.699257, 16.616728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515560, 0.694811, 0.501434,
		0.702619, -0.677759, 0.216722,
		0.490432, 0.240584, -0.837613,
		10.988455, 15.771431, 16.365444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340158, 15.607544, 17.123381>,  <10.645148, 15.603025, 16.951773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340158, 15.607544, 17.123381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325789, 15.853732, 16.808445>,  <11.317168, 16.001446, 16.619484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325789, 15.853732, 16.808445>,  <11.340158, 15.607544, 17.123381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325789, 15.853732, 16.808445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677533, 0.594138, 0.433531,
		0.734615, -0.517876, -0.438344,
		-0.035921, 0.615471, -0.787341,
		11.315013, 16.038374, 16.572243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044795, 15.755520, 16.933144>,  <11.340158, 15.607544, 17.123381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044795, 15.755520, 16.933144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.816201, 16.056135, 16.801329>,  <11.679045, 16.236506, 16.722240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.816201, 16.056135, 16.801329>,  <12.044795, 15.755520, 16.933144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.816201, 16.056135, 16.801329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598068, 0.656409, 0.459829,
		0.561890, 0.065700, -0.824599,
		-0.571484, 0.751539, -0.329537,
		11.644756, 16.281597, 16.702467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.536284, 16.302420, 16.811464>,  <12.044795, 15.755520, 16.933144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.536284, 16.302420, 16.811464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189407, 16.501606, 16.810450>,  <11.981281, 16.621119, 16.809841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.189407, 16.501606, 16.810450>,  <12.536284, 16.302420, 16.811464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.189407, 16.501606, 16.810450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467599, 0.816041, 0.339747,
		0.171250, 0.293441, -0.940513,
		-0.867193, 0.497965, -0.002534,
		11.929250, 16.650995, 16.809689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694351, 16.985798, 16.588614>,  <12.536284, 16.302420, 16.811464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.694351, 16.985798, 16.588614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.340603, 17.026249, 16.770893>,  <12.128354, 17.050520, 16.880260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.340603, 17.026249, 16.770893>,  <12.694351, 16.985798, 16.588614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.340603, 17.026249, 16.770893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305109, 0.864068, 0.400368,
		-0.353267, 0.493111, -0.795012,
		-0.884370, 0.101129, 0.455700,
		12.075292, 17.056587, 16.907602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585632, 17.720882, 16.583143>,  <12.694351, 16.985798, 16.588614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585632, 17.720882, 16.583143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328629, 17.570845, 16.850424>,  <12.174428, 17.480822, 17.010792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.328629, 17.570845, 16.850424>,  <12.585632, 17.720882, 16.583143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.328629, 17.570845, 16.850424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138227, 0.800966, 0.582534,
		-0.753710, 0.466646, -0.462778,
		-0.642507, -0.375093, 0.668199,
		12.135878, 17.458317, 17.050884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.128328, 18.275623, 16.754522>,  <12.585632, 17.720882, 16.583143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.128328, 18.275623, 16.754522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125240, 18.001299, 17.045618>,  <12.123387, 17.836704, 17.220276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125240, 18.001299, 17.045618>,  <12.128328, 18.275623, 16.754522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.125240, 18.001299, 17.045618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283253, 0.696454, 0.659333,
		-0.959014, 0.211224, 0.188881,
		-0.007720, -0.685811, 0.727739,
		12.122924, 17.795555, 17.263939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.814358, 18.623711, 17.419521>,  <12.128328, 18.275623, 16.754522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.814358, 18.623711, 17.419521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012392, 18.300329, 17.546827>,  <12.131212, 18.106300, 17.623211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.012392, 18.300329, 17.546827>,  <11.814358, 18.623711, 17.419521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.012392, 18.300329, 17.546827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263829, 0.488898, 0.831489,
		-0.827819, -0.327691, 0.455340,
		0.495086, -0.808454, 0.318265,
		12.160918, 18.057793, 17.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.700768, 18.580404, 18.241919>,  <11.814358, 18.623711, 17.419521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.700768, 18.580404, 18.241919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020432, 18.346422, 18.186539>,  <12.212231, 18.206032, 18.153311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.020432, 18.346422, 18.186539>,  <11.700768, 18.580404, 18.241919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.020432, 18.346422, 18.186539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446258, 0.423025, 0.788609,
		-0.402735, -0.692009, 0.599106,
		0.799161, -0.584957, -0.138448,
		12.260180, 18.170935, 18.145004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.927838, 18.389889, 18.857754>,  <11.700768, 18.580404, 18.241919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.927838, 18.389889, 18.857754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260201, 18.318129, 18.647076>,  <12.459620, 18.275072, 18.520668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260201, 18.318129, 18.647076>,  <11.927838, 18.389889, 18.857754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260201, 18.318129, 18.647076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539200, 0.493228, 0.682634,
		0.137315, -0.851200, 0.506561,
		0.830908, -0.179402, -0.526695,
		12.509474, 18.264309, 18.489067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.446939, 18.135052, 19.282457>,  <11.927838, 18.389889, 18.857754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.446939, 18.135052, 19.282457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.638339, 18.281565, 18.963240>,  <12.753179, 18.369473, 18.771709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.638339, 18.281565, 18.963240>,  <12.446939, 18.135052, 19.282457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.638339, 18.281565, 18.963240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608553, 0.516851, 0.602103,
		0.633011, -0.773758, 0.024409,
		0.478498, 0.366283, -0.798045,
		12.781889, 18.391449, 18.723825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.086034, 18.050480, 19.484787>,  <12.446939, 18.135052, 19.282457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.086034, 18.050480, 19.484787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098075, 18.335894, 19.204796>,  <13.105300, 18.507141, 19.036802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.098075, 18.335894, 19.204796>,  <13.086034, 18.050480, 19.484787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.098075, 18.335894, 19.204796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639226, 0.524628, 0.562278,
		0.768430, -0.464369, -0.440315,
		0.030103, 0.713532, -0.699976,
		13.107106, 18.549953, 18.994802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765592, 18.156473, 19.335546>,  <13.086034, 18.050480, 19.484787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765592, 18.156473, 19.335546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.560235, 18.492302, 19.264500>,  <13.437021, 18.693800, 19.221872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.560235, 18.492302, 19.264500>,  <13.765592, 18.156473, 19.335546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.560235, 18.492302, 19.264500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675511, 0.523023, 0.519741,
		0.529257, 0.146850, -0.835656,
		-0.513392, 0.839572, -0.177615,
		13.406218, 18.744173, 19.211216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.235453, 18.612902, 19.485968>,  <13.765592, 18.156473, 19.335546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.235453, 18.612902, 19.485968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935479, 18.868853, 19.418846>,  <13.755495, 19.022423, 19.378574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.935479, 18.868853, 19.418846>,  <14.235453, 18.612902, 19.485968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.935479, 18.868853, 19.418846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429059, 0.663570, 0.612848,
		0.503496, 0.387598, -0.772178,
		-0.749933, 0.639877, -0.167803,
		13.710499, 19.060816, 19.368505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.474806, 19.376675, 19.383230>,  <14.235453, 18.612902, 19.485968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.474806, 19.376675, 19.383230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.100248, 19.394558, 19.522467>,  <13.875514, 19.405287, 19.606009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.100248, 19.394558, 19.522467>,  <14.474806, 19.376675, 19.383230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100248, 19.394558, 19.522467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261768, 0.749627, 0.607896,
		-0.233762, 0.660349, -0.713649,
		-0.936393, 0.044707, 0.348093,
		13.819330, 19.407970, 19.626894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270751, 20.117065, 19.536249>,  <14.474806, 19.376675, 19.383230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270751, 20.117065, 19.536249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997535, 19.913904, 19.746197>,  <13.833605, 19.792007, 19.872166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997535, 19.913904, 19.746197>,  <14.270751, 20.117065, 19.536249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997535, 19.913904, 19.746197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000683, 0.718180, 0.695857,
		-0.730379, 0.475658, -0.490200,
		-0.683042, -0.507905, 0.524868,
		13.792623, 19.761532, 19.903658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.802002, 20.620674, 19.902508>,  <14.270751, 20.117065, 19.536249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.802002, 20.620674, 19.902508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770789, 20.279791, 20.109449>,  <13.752061, 20.075262, 20.233614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770789, 20.279791, 20.109449>,  <13.802002, 20.620674, 19.902508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770789, 20.279791, 20.109449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031709, 0.516552, 0.855668,
		-0.996446, 0.083175, -0.013285,
		-0.078033, -0.852206, 0.517354,
		13.747379, 20.024128, 20.264656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.180804, 20.649393, 20.301451>,  <13.802002, 20.620674, 19.902508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.180804, 20.649393, 20.301451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424972, 20.375795, 20.461220>,  <13.571472, 20.211636, 20.557081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.424972, 20.375795, 20.461220>,  <13.180804, 20.649393, 20.301451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.424972, 20.375795, 20.461220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014449, 0.494574, 0.869016,
		-0.791947, -0.536234, 0.292014,
		0.610418, -0.683995, 0.399424,
		13.608097, 20.170597, 20.581047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924178, 20.589613, 20.947525>,  <13.180804, 20.649393, 20.301451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924178, 20.589613, 20.947525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281572, 20.413067, 20.980705>,  <13.496009, 20.307138, 21.000612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.281572, 20.413067, 20.980705>,  <12.924178, 20.589613, 20.947525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281572, 20.413067, 20.980705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073257, 0.325469, 0.942711,
		-0.443079, -0.836221, 0.323134,
		0.893484, -0.441367, 0.082949,
		13.549618, 20.280657, 21.005590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931750, 20.283537, 21.587891>,  <12.924178, 20.589613, 20.947525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931750, 20.283537, 21.587891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321795, 20.280558, 21.499256>,  <13.555822, 20.278770, 21.446075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321795, 20.280558, 21.499256>,  <12.931750, 20.283537, 21.587891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.321795, 20.280558, 21.499256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211467, 0.331524, 0.919442,
		0.066613, -0.943417, 0.324848,
		0.975112, -0.007448, -0.221586,
		13.614329, 20.278324, 21.432781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.303436, 19.923677, 22.092476>,  <12.931750, 20.283537, 21.587891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.303436, 19.923677, 22.092476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573412, 20.159702, 21.915260>,  <13.735397, 20.301317, 21.808931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573412, 20.159702, 21.915260>,  <13.303436, 19.923677, 22.092476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573412, 20.159702, 21.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317932, 0.309273, 0.896253,
		0.665866, -0.745772, 0.021140,
		0.674939, 0.590063, -0.443039,
		13.775893, 20.336721, 21.782349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031985, 19.867472, 22.477999>,  <13.303436, 19.923677, 22.092476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031985, 19.867472, 22.477999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998814, 20.227985, 22.307913>,  <13.978910, 20.444294, 22.205860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.998814, 20.227985, 22.307913>,  <14.031985, 19.867472, 22.477999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.998814, 20.227985, 22.307913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295887, 0.429713, 0.853111,
		0.951616, -0.055068, -0.302314,
		-0.082929, 0.901285, -0.425216,
		13.973935, 20.498371, 22.180347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609885, 20.105726, 22.660240>,  <14.031985, 19.867472, 22.477999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609885, 20.105726, 22.660240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398545, 20.428926, 22.555944>,  <14.271742, 20.622847, 22.493366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398545, 20.428926, 22.555944>,  <14.609885, 20.105726, 22.660240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398545, 20.428926, 22.555944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425921, 0.517907, 0.741865,
		0.734465, 0.280910, -0.617780,
		-0.528350, 0.807999, -0.260739,
		14.240041, 20.671326, 22.477722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.145791, 20.665409, 22.647415>,  <14.609885, 20.105726, 22.660240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.145791, 20.665409, 22.647415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.786503, 20.839977, 22.668350>,  <14.570930, 20.944717, 22.680912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.786503, 20.839977, 22.668350>,  <15.145791, 20.665409, 22.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.786503, 20.839977, 22.668350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320467, 0.568723, 0.757532,
		0.300835, 0.697204, -0.650696,
		-0.898220, 0.436419, 0.052339,
		14.517036, 20.970903, 22.684052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281452, 21.319725, 22.704248>,  <15.145791, 20.665409, 22.647415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281452, 21.319725, 22.704248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909313, 21.305740, 22.850250>,  <14.686029, 21.297350, 22.937851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.909313, 21.305740, 22.850250>,  <15.281452, 21.319725, 22.704248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.909313, 21.305740, 22.850250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279647, 0.576205, 0.767974,
		-0.237168, 0.816557, -0.526295,
		-0.930349, -0.034962, 0.365006,
		14.630209, 21.295252, 22.959751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921984, 22.055124, 22.738157>,  <15.281452, 21.319725, 22.704248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921984, 22.055124, 22.738157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736962, 21.819111, 23.002855>,  <14.625950, 21.677504, 23.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.736962, 21.819111, 23.002855>,  <14.921984, 22.055124, 22.738157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.736962, 21.819111, 23.002855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046771, 0.729113, 0.682794,
		-0.885357, 0.346778, -0.309657,
		-0.462553, -0.590033, 0.661744,
		14.598196, 21.642101, 23.201378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325776, 22.464052, 23.086573>,  <14.921984, 22.055124, 22.738157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325776, 22.464052, 23.086573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444632, 22.164137, 23.323057>,  <14.515945, 21.984188, 23.464947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.444632, 22.164137, 23.323057>,  <14.325776, 22.464052, 23.086573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.444632, 22.164137, 23.323057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086166, 0.595593, 0.798652,
		-0.950938, -0.288253, 0.112368,
		0.297139, -0.749786, 0.591209,
		14.533773, 21.939201, 23.500420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.334950, 22.783834, 23.693020>,  <14.325776, 22.464052, 23.086573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.334950, 22.783834, 23.693020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466966, 22.425961, 23.813431>,  <14.546175, 22.211237, 23.885677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.466966, 22.425961, 23.813431>,  <14.334950, 22.783834, 23.693020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466966, 22.425961, 23.813431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066682, 0.340196, 0.937987,
		-0.941609, -0.289498, 0.171937,
		0.330038, -0.894683, 0.301028,
		14.565977, 22.157557, 23.903740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926561, 22.385109, 24.327665>,  <14.334950, 22.783834, 23.693020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926561, 22.385109, 24.327665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319321, 22.310673, 24.341770>,  <14.554976, 22.266010, 24.350233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.319321, 22.310673, 24.341770>,  <13.926561, 22.385109, 24.327665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.319321, 22.310673, 24.341770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038013, 0.375999, 0.925840,
		-0.185550, -0.907741, 0.376267,
		0.981899, -0.186092, 0.035260,
		14.613891, 22.254845, 24.352348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.099065, 22.258818, 25.030966>,  <13.926561, 22.385109, 24.327665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.099065, 22.258818, 25.030966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448537, 22.359982, 24.864727>,  <14.658220, 22.420681, 24.764984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.448537, 22.359982, 24.864727>,  <14.099065, 22.258818, 25.030966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.448537, 22.359982, 24.864727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278142, 0.441205, 0.853215,
		0.399148, -0.861032, 0.315128,
		0.873681, 0.252908, -0.415595,
		14.710641, 22.435854, 24.740047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317103, 22.470610, 25.554760>,  <14.099065, 22.258818, 25.030966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.317103, 22.470610, 25.554760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607816, 22.566866, 25.297426>,  <14.782243, 22.624620, 25.143026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607816, 22.566866, 25.297426>,  <14.317103, 22.470610, 25.554760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.607816, 22.566866, 25.297426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426341, 0.576309, 0.697209,
		0.538540, -0.780998, 0.316253,
		0.726779, 0.240644, -0.643338,
		14.825850, 22.639059, 25.104425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814497, 22.570005, 25.982500>,  <14.317103, 22.470610, 25.554760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814497, 22.570005, 25.982500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918672, 22.762028, 25.647425>,  <14.981176, 22.877241, 25.446379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.918672, 22.762028, 25.647425>,  <14.814497, 22.570005, 25.982500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918672, 22.762028, 25.647425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491585, 0.680814, 0.542988,
		0.830973, -0.553209, -0.058678,
		0.260437, 0.480054, -0.837688,
		14.996803, 22.906044, 25.396118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.515258, 22.508125, 25.945782>,  <14.814497, 22.570005, 25.982500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.515258, 22.508125, 25.945782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408410, 22.826612, 25.728643>,  <15.344301, 23.017706, 25.598360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408410, 22.826612, 25.728643>,  <15.515258, 22.508125, 25.945782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408410, 22.826612, 25.728643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369012, 0.604892, 0.705647,
		0.890212, -0.011825, -0.455392,
		-0.267119, 0.796220, -0.542845,
		15.328275, 23.065479, 25.565790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.167435, 22.962183, 25.896292>,  <15.515258, 22.508125, 25.945782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.167435, 22.962183, 25.896292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843307, 23.192867, 25.854748>,  <15.648829, 23.331278, 25.829821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.843307, 23.192867, 25.854748>,  <16.167435, 22.962183, 25.896292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.843307, 23.192867, 25.854748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321514, 0.585740, 0.744001,
		0.489908, 0.569486, -0.660057,
		-0.810320, 0.576710, -0.103862,
		15.600210, 23.365881, 25.823589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.359194, 23.486721, 26.278738>,  <16.167435, 22.962183, 25.896292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.359194, 23.486721, 26.278738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985743, 23.596365, 26.186476>,  <15.761672, 23.662151, 26.131119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.985743, 23.596365, 26.186476>,  <16.359194, 23.486721, 26.278738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.985743, 23.596365, 26.186476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009768, 0.624130, 0.781259,
		0.358108, 0.731659, -0.580029,
		-0.933629, 0.274110, -0.230653,
		15.705654, 23.678598, 26.117279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356176, 24.222126, 26.291361>,  <16.359194, 23.486721, 26.278738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356176, 24.222126, 26.291361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984355, 24.089512, 26.355875>,  <15.761262, 24.009943, 26.394583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984355, 24.089512, 26.355875>,  <16.356176, 24.222126, 26.291361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984355, 24.089512, 26.355875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064179, 0.576290, 0.814722,
		-0.363055, 0.746977, -0.556970,
		-0.929555, -0.331535, 0.161284,
		15.705488, 23.990051, 26.404261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.021267, 24.817245, 26.578547>,  <16.356176, 24.222126, 26.291361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.021267, 24.817245, 26.578547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766081, 24.523340, 26.670742>,  <15.612968, 24.346998, 26.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.766081, 24.523340, 26.670742>,  <16.021267, 24.817245, 26.578547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.766081, 24.523340, 26.670742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063381, 0.348396, 0.935202,
		-0.767451, 0.582019, -0.268835,
		-0.637967, -0.734761, 0.230488,
		15.574691, 24.302912, 26.739889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445020, 25.157137, 26.959219>,  <16.021267, 24.817245, 26.578547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445020, 25.157137, 26.959219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450574, 24.769274, 27.056849>,  <15.453906, 24.536556, 27.115425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450574, 24.769274, 27.056849>,  <15.445020, 25.157137, 26.959219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450574, 24.769274, 27.056849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094586, 0.241728, 0.965723,
		-0.995420, -0.036495, -0.088359,
		0.013885, -0.969657, 0.244073,
		15.454740, 24.478376, 27.130070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.866563, 24.995146, 27.315498>,  <15.445020, 25.157137, 26.959219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.866563, 24.995146, 27.315498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127549, 24.712425, 27.424841>,  <15.284141, 24.542793, 27.490446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.127549, 24.712425, 27.424841>,  <14.866563, 24.995146, 27.315498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.127549, 24.712425, 27.424841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115251, 0.263971, 0.957620,
		-0.749003, -0.656319, 0.090773,
		0.652465, -0.706799, 0.273356,
		15.323289, 24.500385, 27.506847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.446836, 24.572157, 27.836658>,  <14.866563, 24.995146, 27.315498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.446836, 24.572157, 27.836658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838446, 24.515995, 27.895716>,  <15.073412, 24.482298, 27.931150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.838446, 24.515995, 27.895716>,  <14.446836, 24.572157, 27.836658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.838446, 24.515995, 27.895716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141407, 0.053450, 0.988508,
		-0.146682, -0.988650, 0.032475,
		0.979024, -0.140404, 0.147642,
		15.132153, 24.473873, 27.940008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.599512, 24.023285, 28.332516>,  <14.446836, 24.572157, 27.836658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.599512, 24.023285, 28.332516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875441, 24.311369, 28.362017>,  <15.040998, 24.484221, 28.379717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875441, 24.311369, 28.362017>,  <14.599512, 24.023285, 28.332516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875441, 24.311369, 28.362017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338799, 0.231105, 0.912034,
		0.639813, -0.654129, 0.403428,
		0.689822, 0.720212, 0.073755,
		15.082387, 24.527433, 28.384144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027701, 24.043877, 29.018562>,  <14.599512, 24.023285, 28.332516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027701, 24.043877, 29.018562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044748, 24.419924, 28.883295>,  <15.054976, 24.645554, 28.802135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.044748, 24.419924, 28.883295>,  <15.027701, 24.043877, 29.018562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.044748, 24.419924, 28.883295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131264, 0.340810, 0.930923,
		0.990431, 0.004717, 0.137928,
		0.042616, 0.940120, -0.338168,
		15.057533, 24.701960, 28.781845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.346395, 24.490816, 29.601534>,  <15.027701, 24.043877, 29.018562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.346395, 24.490816, 29.601534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161222, 24.743254, 29.352564>,  <15.050117, 24.894716, 29.203182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.161222, 24.743254, 29.352564>,  <15.346395, 24.490816, 29.601534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.161222, 24.743254, 29.352564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160561, 0.630880, 0.759085,
		0.871729, 0.451344, -0.190728,
		-0.462935, 0.631092, -0.622425,
		15.022341, 24.932581, 29.165836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342146, 25.100018, 30.015175>,  <15.346395, 24.490816, 29.601534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342146, 25.100018, 30.015175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157192, 25.176815, 29.668917>,  <15.046220, 25.222893, 29.461163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157192, 25.176815, 29.668917>,  <15.342146, 25.100018, 30.015175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157192, 25.176815, 29.668917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405764, 0.822235, 0.399105,
		0.788388, 0.535787, -0.302284,
		-0.462384, 0.191993, -0.865644,
		15.018477, 25.234413, 29.409224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.913277, 25.090269, 29.672909>,  <15.342146, 25.100018, 30.015175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.913277, 25.090269, 29.672909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138048, 24.963194, 29.978407>,  <16.272911, 24.886948, 30.161707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138048, 24.963194, 29.978407>,  <15.913277, 25.090269, 29.672909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138048, 24.963194, 29.978407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207299, -0.947929, -0.241781,
		0.800789, -0.022460, -0.598526,
		0.561929, -0.317689, 0.763747,
		16.306627, 24.867887, 30.207531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.522398, 24.671709, 29.400204>,  <15.913277, 25.090269, 29.672909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.522398, 24.671709, 29.400204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371624, 24.577337, 29.758478>,  <16.281158, 24.520714, 29.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.371624, 24.577337, 29.758478>,  <16.522398, 24.671709, 29.400204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.371624, 24.577337, 29.758478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238979, -0.909501, -0.340142,
		0.894879, -0.342262, 0.286442,
		-0.376937, -0.235932, 0.895687,
		16.258543, 24.506557, 30.027184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918036, 24.078575, 29.728264>,  <16.522398, 24.671709, 29.400204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918036, 24.078575, 29.728264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.537533, 24.102518, 29.849277>,  <16.309231, 24.116884, 29.921886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.537533, 24.102518, 29.849277>,  <16.918036, 24.078575, 29.728264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.537533, 24.102518, 29.849277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193662, -0.879387, -0.434942,
		0.240010, -0.472331, 0.848115,
		-0.951257, 0.059857, 0.302534,
		16.252155, 24.120476, 29.940037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.828304, 23.449741, 30.059237>,  <16.918036, 24.078575, 29.728264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.828304, 23.449741, 30.059237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486946, 23.580700, 29.896988>,  <16.282131, 23.659275, 29.799639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486946, 23.580700, 29.896988>,  <16.828304, 23.449741, 30.059237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486946, 23.580700, 29.896988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189135, -0.919601, -0.344329,
		-0.485742, -0.217132, 0.846705,
		-0.853395, 0.327397, -0.405621,
		16.230928, 23.678919, 29.775301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744879, 22.828121, 29.661613>,  <16.828304, 23.449741, 30.059237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744879, 22.828121, 29.661613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444984, 23.070202, 29.554564>,  <16.265047, 23.215450, 29.490334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.444984, 23.070202, 29.554564>,  <16.744879, 22.828121, 29.661613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.444984, 23.070202, 29.554564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432569, -0.754285, -0.493901,
		-0.500776, -0.254530, 0.827307,
		-0.749738, 0.605202, -0.267626,
		16.220062, 23.251762, 29.474276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.042179, 22.540537, 29.868414>,  <16.744879, 22.828121, 29.661613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.042179, 22.540537, 29.868414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984555, 22.807905, 29.576534>,  <15.949982, 22.968327, 29.401407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.984555, 22.807905, 29.576534>,  <16.042179, 22.540537, 29.868414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.984555, 22.807905, 29.576534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463150, -0.697183, -0.547200,
		-0.874494, 0.259131, 0.410015,
		-0.144058, 0.668422, -0.729699,
		15.941338, 23.008432, 29.357624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335694, 22.560421, 29.755812>,  <16.042179, 22.540537, 29.868414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335694, 22.560421, 29.755812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539317, 22.641504, 29.421202>,  <15.661490, 22.690155, 29.220436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.539317, 22.641504, 29.421202>,  <15.335694, 22.560421, 29.755812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539317, 22.641504, 29.421202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561348, -0.658559, -0.501187,
		-0.652495, 0.724713, -0.221454,
		0.509057, 0.202709, -0.836523,
		15.692034, 22.702316, 29.170244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.861293, 22.699900, 29.184664>,  <15.335694, 22.560421, 29.755812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.861293, 22.699900, 29.184664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199010, 22.575567, 29.010054>,  <15.401640, 22.500967, 28.905287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.199010, 22.575567, 29.010054>,  <14.861293, 22.699900, 29.184664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.199010, 22.575567, 29.010054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518652, -0.678884, -0.519728,
		-0.134803, 0.665207, -0.734390,
		0.844292, -0.310832, -0.436526,
		15.452297, 22.482317, 28.879095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622019, 22.626114, 28.542173>,  <14.861293, 22.699900, 29.184664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622019, 22.626114, 28.542173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963286, 22.418978, 28.567293>,  <15.168047, 22.294695, 28.582365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963286, 22.418978, 28.567293>,  <14.622019, 22.626114, 28.542173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963286, 22.418978, 28.567293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333655, -0.634283, -0.697395,
		0.400972, 0.574042, -0.713931,
		0.853168, -0.517842, 0.062798,
		15.219236, 22.263624, 28.586132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909129, 22.546904, 27.866587>,  <14.622019, 22.626114, 28.542173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909129, 22.546904, 27.866587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.090359, 22.240499, 28.048992>,  <15.199097, 22.056656, 28.158436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.090359, 22.240499, 28.048992>,  <14.909129, 22.546904, 27.866587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.090359, 22.240499, 28.048992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282975, -0.608652, -0.741261,
		0.845370, 0.206804, -0.492526,
		0.453073, -0.766012, 0.456015,
		15.226280, 22.010696, 28.185797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.269502, 22.282316, 27.330883>,  <14.909129, 22.546904, 27.866587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.269502, 22.282316, 27.330883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235229, 22.004539, 27.616655>,  <15.214666, 21.837873, 27.788118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.235229, 22.004539, 27.616655>,  <15.269502, 22.282316, 27.330883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.235229, 22.004539, 27.616655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006795, -0.717459, -0.696568,
		0.996300, -0.054828, 0.066191,
		-0.085681, -0.694440, 0.714431,
		15.209525, 21.796207, 27.830984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703322, 21.833138, 27.122091>,  <15.269502, 22.282316, 27.330883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703322, 21.833138, 27.122091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450736, 21.639824, 27.364639>,  <15.299184, 21.523836, 27.510168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.450736, 21.639824, 27.364639>,  <15.703322, 21.833138, 27.122091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450736, 21.639824, 27.364639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096944, -0.825077, -0.556642,
		0.769320, -0.292716, 0.567859,
		-0.631465, -0.483286, 0.606371,
		15.261296, 21.494839, 27.546551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971152, 21.096315, 27.283169>,  <15.703322, 21.833138, 27.122091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971152, 21.096315, 27.283169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575230, 21.117876, 27.335901>,  <15.337676, 21.130814, 27.367540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.575230, 21.117876, 27.335901>,  <15.971152, 21.096315, 27.283169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.575230, 21.117876, 27.335901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117691, -0.830843, -0.543919,
		0.080211, -0.553890, 0.828717,
		-0.989806, 0.053904, 0.131831,
		15.278288, 21.134047, 27.375450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.920269, 20.481348, 27.208040>,  <15.971152, 21.096315, 27.283169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.920269, 20.481348, 27.208040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537305, 20.593700, 27.181293>,  <15.307527, 20.661112, 27.165245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.537305, 20.593700, 27.181293>,  <15.920269, 20.481348, 27.208040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537305, 20.593700, 27.181293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200054, -0.812318, -0.547830,
		-0.208192, -0.511122, 0.833913,
		-0.957410, 0.280882, -0.066866,
		15.250082, 20.677965, 27.161234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507675, 19.979746, 27.530390>,  <15.920269, 20.481348, 27.208040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507675, 19.979746, 27.530390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.250019, 20.124735, 27.260962>,  <15.095426, 20.211729, 27.099304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.250019, 20.124735, 27.260962>,  <15.507675, 19.979746, 27.530390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.250019, 20.124735, 27.260962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201171, -0.929869, -0.308016,
		-0.737980, -0.062902, 0.671885,
		-0.644140, 0.362474, -0.673571,
		15.056777, 20.233477, 27.058889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020472, 19.414761, 27.513226>,  <15.507675, 19.979746, 27.530390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.020472, 19.414761, 27.513226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951385, 19.660847, 27.205544>,  <14.909934, 19.808498, 27.020935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.951385, 19.660847, 27.205544>,  <15.020472, 19.414761, 27.513226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.951385, 19.660847, 27.205544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330292, -0.771900, -0.543210,
		-0.927942, 0.160242, 0.336520,
		-0.172715, 0.615218, -0.769206,
		14.899571, 19.845411, 26.974781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.426125, 19.190184, 27.263523>,  <15.020472, 19.414761, 27.513226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.426125, 19.190184, 27.263523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541590, 19.416948, 26.954905>,  <14.610868, 19.553007, 26.769733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541590, 19.416948, 26.954905>,  <14.426125, 19.190184, 27.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541590, 19.416948, 26.954905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321952, -0.701449, -0.635858,
		-0.901677, 0.431950, -0.019965,
		0.288663, 0.566911, -0.771548,
		14.628188, 19.587021, 26.723440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803907, 19.091055, 26.785919>,  <14.426125, 19.190184, 27.263523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803907, 19.091055, 26.785919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097806, 19.227478, 26.551373>,  <14.274145, 19.309332, 26.410645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.097806, 19.227478, 26.551373>,  <13.803907, 19.091055, 26.785919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097806, 19.227478, 26.551373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382160, -0.506060, -0.773212,
		-0.560446, 0.792202, -0.241488,
		0.734747, 0.341057, -0.586367,
		14.318231, 19.329796, 26.375462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.506957, 19.399876, 26.115576>,  <13.803907, 19.091055, 26.785919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.506957, 19.399876, 26.115576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.890804, 19.298391, 26.066973>,  <14.121113, 19.237501, 26.037811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.890804, 19.298391, 26.066973>,  <13.506957, 19.399876, 26.115576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.890804, 19.298391, 26.066973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226995, -0.443255, -0.867178,
		0.166154, 0.859742, -0.482947,
		0.959618, -0.253711, -0.121508,
		14.178690, 19.222279, 26.030519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.613521, 19.496010, 25.453655>,  <13.506957, 19.399876, 26.115576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.613521, 19.496010, 25.453655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892706, 19.231234, 25.562965>,  <14.060217, 19.072369, 25.628551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.892706, 19.231234, 25.562965>,  <13.613521, 19.496010, 25.453655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.892706, 19.231234, 25.562965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201071, -0.547391, -0.812363,
		0.687326, 0.512052, -0.515156,
		0.697964, -0.661941, 0.273277,
		14.102095, 19.032652, 25.644949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.984925, 19.385958, 24.845783>,  <13.613521, 19.496010, 25.453655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.984925, 19.385958, 24.845783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072432, 19.075048, 25.081745>,  <14.124935, 18.888502, 25.223322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.072432, 19.075048, 25.081745>,  <13.984925, 19.385958, 24.845783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.072432, 19.075048, 25.081745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262853, -0.629143, -0.731497,
		0.939707, 0.004969, -0.341944,
		0.218767, -0.777273, 0.589904,
		14.138062, 18.841866, 25.258717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.125911, 18.928879, 24.398823>,  <13.984925, 19.385958, 24.845783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.125911, 18.928879, 24.398823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079700, 18.676744, 24.705894>,  <14.051974, 18.525465, 24.890139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.079700, 18.676744, 24.705894>,  <14.125911, 18.928879, 24.398823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079700, 18.676744, 24.705894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272668, -0.723041, -0.634715,
		0.955147, -0.282648, -0.088342,
		-0.115526, -0.630334, 0.767680,
		14.045043, 18.487644, 24.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494570, 18.303028, 24.233679>,  <14.125911, 18.928879, 24.398823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494570, 18.303028, 24.233679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200466, 18.233488, 24.495724>,  <14.024004, 18.191765, 24.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.200466, 18.233488, 24.495724>,  <14.494570, 18.303028, 24.233679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200466, 18.233488, 24.495724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294610, -0.788489, -0.539898,
		0.610410, -0.589967, 0.528525,
		-0.735258, -0.173850, 0.655112,
		13.979889, 18.181334, 24.692257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.573542, 17.665705, 24.290298>,  <14.494570, 18.303028, 24.233679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.573542, 17.665705, 24.290298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.212477, 17.726034, 24.451519>,  <13.995837, 17.762232, 24.548252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.212477, 17.726034, 24.451519>,  <14.573542, 17.665705, 24.290298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.212477, 17.726034, 24.451519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375839, -0.732508, -0.567607,
		0.209631, -0.663841, 0.717893,
		-0.902663, 0.150824, 0.403054,
		13.941678, 17.771282, 24.572435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.325373, 17.066673, 24.311728>,  <14.573542, 17.665705, 24.290298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.325373, 17.066673, 24.311728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982731, 17.267153, 24.360765>,  <13.777146, 17.387442, 24.390188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982731, 17.267153, 24.360765>,  <14.325373, 17.066673, 24.311728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982731, 17.267153, 24.360765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489553, -0.714410, -0.499956,
		-0.162996, -0.488280, 0.857330,
		-0.856603, 0.501199, 0.122593,
		13.725750, 17.417513, 24.397543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.906094, 16.510590, 24.403811>,  <14.325373, 17.066673, 24.311728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.906094, 16.510590, 24.403811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670159, 16.808588, 24.279184>,  <13.528599, 16.987387, 24.204409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.670159, 16.808588, 24.279184>,  <13.906094, 16.510590, 24.403811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.670159, 16.808588, 24.279184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490013, -0.636885, -0.595202,
		-0.641856, -0.198399, 0.740715,
		-0.589838, 0.744994, -0.311570,
		13.493209, 17.032087, 24.185715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.190510, 16.289276, 24.382057>,  <13.906094, 16.510590, 24.403811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.190510, 16.289276, 24.382057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181469, 16.601377, 24.132036>,  <13.176044, 16.788639, 23.982023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.181469, 16.601377, 24.132036>,  <13.190510, 16.289276, 24.382057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.181469, 16.601377, 24.132036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404110, -0.578992, -0.708141,
		-0.914431, 0.236586, 0.328394,
		-0.022601, 0.780254, -0.625055,
		13.174688, 16.835453, 23.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.472915, 16.345362, 24.163248>,  <13.190510, 16.289276, 24.382057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.472915, 16.345362, 24.163248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.707859, 16.516069, 23.888186>,  <12.848825, 16.618494, 23.723148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.707859, 16.516069, 23.888186>,  <12.472915, 16.345362, 24.163248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.707859, 16.516069, 23.888186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464015, -0.518575, -0.718171,
		-0.663096, 0.740910, -0.106563,
		0.587361, 0.426770, -0.687659,
		12.884068, 16.644100, 23.681889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044738, 16.542154, 23.582449>,  <12.472915, 16.345362, 24.163248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044738, 16.542154, 23.582449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.388230, 16.587900, 23.382648>,  <12.594326, 16.615347, 23.262768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.388230, 16.587900, 23.382648>,  <12.044738, 16.542154, 23.582449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.388230, 16.587900, 23.382648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433317, -0.358254, -0.826976,
		-0.273525, 0.926593, -0.258088,
		0.858732, 0.114365, -0.499501,
		12.645850, 16.622210, 23.232798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.929138, 17.003014, 23.015484>,  <12.044738, 16.542154, 23.582449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.929138, 17.003014, 23.015484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241343, 16.774170, 22.914694>,  <12.428665, 16.636864, 22.854219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.241343, 16.774170, 22.914694>,  <11.929138, 17.003014, 23.015484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241343, 16.774170, 22.914694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520722, -0.371962, -0.768435,
		0.345906, 0.730981, -0.588231,
		0.780511, -0.572111, -0.251974,
		12.475496, 16.602537, 22.839102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.072266, 17.079782, 22.353207>,  <11.929138, 17.003014, 23.015484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.072266, 17.079782, 22.353207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.206606, 16.709648, 22.423586>,  <12.287210, 16.487568, 22.465813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.206606, 16.709648, 22.423586>,  <12.072266, 17.079782, 22.353207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.206606, 16.709648, 22.423586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321215, -0.288118, -0.902114,
		0.885452, 0.246459, -0.393996,
		0.335852, -0.925335, 0.175948,
		12.307362, 16.432047, 22.476370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361698, 16.949743, 21.781219>,  <12.072266, 17.079782, 22.353207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361698, 16.949743, 21.781219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349125, 16.574253, 21.918512>,  <12.341581, 16.348959, 22.000889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.349125, 16.574253, 21.918512>,  <12.361698, 16.949743, 21.781219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.349125, 16.574253, 21.918512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129352, -0.336696, -0.932686,
		0.991100, -0.073714, -0.110842,
		-0.031432, -0.938723, 0.343234,
		12.339695, 16.292637, 22.021482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714926, 16.539066, 21.311022>,  <12.361698, 16.949743, 21.781219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714926, 16.539066, 21.311022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501101, 16.266190, 21.510563>,  <12.372806, 16.102463, 21.630287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.501101, 16.266190, 21.510563>,  <12.714926, 16.539066, 21.311022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.501101, 16.266190, 21.510563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008401, -0.585949, -0.810304,
		0.845087, -0.437349, 0.307495,
		-0.534563, -0.682194, 0.498853,
		12.340732, 16.061531, 21.660219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.169692, 15.932285, 21.243879>,  <12.714926, 16.539066, 21.311022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.169692, 15.932285, 21.243879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805867, 15.794164, 21.336367>,  <12.587572, 15.711290, 21.391859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805867, 15.794164, 21.336367>,  <13.169692, 15.932285, 21.243879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805867, 15.794164, 21.336367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019630, -0.591473, -0.806086,
		0.415105, -0.728646, 0.544759,
		-0.909562, -0.345304, 0.231220,
		12.532999, 15.690573, 21.405733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152325, 15.258022, 21.049402>,  <13.169692, 15.932285, 21.243879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152325, 15.258022, 21.049402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.756782, 15.312795, 21.072760>,  <12.519456, 15.345658, 21.086775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.756782, 15.312795, 21.072760>,  <13.152325, 15.258022, 21.049402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756782, 15.312795, 21.072760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126583, -0.567018, -0.813921,
		-0.078339, -0.812244, 0.578033,
		-0.988858, 0.136931, 0.058396,
		12.460124, 15.353874, 21.090279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.866648, 14.602775, 20.889585>,  <13.152325, 15.258022, 21.049402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.866648, 14.602775, 20.889585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.599241, 14.883944, 20.792439>,  <12.438797, 15.052645, 20.734150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.599241, 14.883944, 20.792439>,  <12.866648, 14.602775, 20.889585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599241, 14.883944, 20.792439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311900, -0.561457, -0.766475,
		-0.675133, -0.436651, 0.594585,
		-0.668516, 0.702924, -0.242867,
		12.398686, 15.094821, 20.719578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.280160, 14.254545, 20.726103>,  <12.866648, 14.602775, 20.889585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.280160, 14.254545, 20.726103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228981, 14.610955, 20.551882>,  <12.198274, 14.824801, 20.447350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.228981, 14.610955, 20.551882>,  <12.280160, 14.254545, 20.726103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.228981, 14.610955, 20.551882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455536, -0.442893, -0.772226,
		-0.880975, 0.099605, 0.462561,
		-0.127947, 0.891025, -0.435551,
		12.190597, 14.878263, 20.421217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.687019, 14.220537, 20.351696>,  <12.280160, 14.254545, 20.726103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.687019, 14.220537, 20.351696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865728, 14.539482, 20.189409>,  <11.972954, 14.730849, 20.092037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.865728, 14.539482, 20.189409>,  <11.687019, 14.220537, 20.351696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.865728, 14.539482, 20.189409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281456, -0.305196, -0.909746,
		-0.849221, 0.520642, 0.088069,
		0.446774, 0.797363, -0.405716,
		11.999761, 14.778691, 20.067694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.217715, 14.436783, 19.910503>,  <11.687019, 14.220537, 20.351696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.217715, 14.436783, 19.910503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.564756, 14.596500, 19.791960>,  <11.772982, 14.692331, 19.720833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.564756, 14.596500, 19.791960>,  <11.217715, 14.436783, 19.910503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.564756, 14.596500, 19.791960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148147, -0.361362, -0.920581,
		-0.474676, 0.842604, -0.254365,
		0.867603, 0.399294, -0.296359,
		11.825037, 14.716289, 19.703053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.098265, 14.787006, 19.216890>,  <11.217715, 14.436783, 19.910503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.098265, 14.787006, 19.216890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493354, 14.731621, 19.245823>,  <11.730408, 14.698389, 19.263182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493354, 14.731621, 19.245823>,  <11.098265, 14.787006, 19.216890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493354, 14.731621, 19.245823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015931, -0.371310, -0.928372,
		0.155404, 0.918126, -0.364546,
		0.987723, -0.138465, 0.072330,
		11.789671, 14.690082, 19.267521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.341292, 15.116224, 18.650570>,  <11.098265, 14.787006, 19.216890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.341292, 15.116224, 18.650570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.625149, 14.845390, 18.728510>,  <11.795463, 14.682890, 18.775274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.625149, 14.845390, 18.728510>,  <11.341292, 15.116224, 18.650570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.625149, 14.845390, 18.728510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049620, -0.227839, -0.972434,
		0.702815, 0.699746, -0.128087,
		0.709640, -0.677085, 0.194850,
		11.838040, 14.642264, 18.786964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.764182, 15.095762, 18.042566>,  <11.341292, 15.116224, 18.650570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.764182, 15.095762, 18.042566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891758, 14.777328, 18.248295>,  <11.968304, 14.586267, 18.371731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.891758, 14.777328, 18.248295>,  <11.764182, 15.095762, 18.042566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.891758, 14.777328, 18.248295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253042, -0.451438, -0.855671,
		0.913371, 0.403053, 0.057461,
		0.318941, -0.796085, 0.514320,
		11.987440, 14.538503, 18.402590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.437893, 14.879887, 17.734867>,  <11.764182, 15.095762, 18.042566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.437893, 14.879887, 17.734867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269170, 14.559158, 17.904177>,  <12.167935, 14.366721, 18.005762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269170, 14.559158, 17.904177>,  <12.437893, 14.879887, 17.734867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269170, 14.559158, 17.904177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062216, -0.491335, -0.868746,
		0.904548, -0.340109, 0.257135,
		-0.421808, -0.801820, 0.423276,
		12.142628, 14.318612, 18.031160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793775, 14.343883, 17.541937>,  <12.437893, 14.879887, 17.734867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.793775, 14.343883, 17.541937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424557, 14.221718, 17.635502>,  <12.203026, 14.148419, 17.691641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.424557, 14.221718, 17.635502>,  <12.793775, 14.343883, 17.541937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.424557, 14.221718, 17.635502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048484, -0.510838, -0.858309,
		0.381628, -0.803597, 0.456718,
		-0.923043, -0.305411, 0.233911,
		12.147644, 14.130095, 17.705675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.663781, 13.657929, 17.485109>,  <12.793775, 14.343883, 17.541937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.663781, 13.657929, 17.485109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310680, 13.834886, 17.421814>,  <12.098820, 13.941059, 17.383837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310680, 13.834886, 17.421814>,  <12.663781, 13.657929, 17.485109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310680, 13.834886, 17.421814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060273, -0.440634, -0.895661,
		-0.465968, -0.781104, 0.415632,
		-0.882746, 0.442401, -0.158242,
		12.045855, 13.967603, 17.374342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.035879, 13.246540, 18.064915>,  <12.663781, 13.657929, 17.485109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.035879, 13.246540, 18.064915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386686, 13.085773, 17.959616>,  <13.597171, 12.989311, 17.896437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.386686, 13.085773, 17.959616>,  <13.035879, 13.246540, 18.064915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.386686, 13.085773, 17.959616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373841, 0.226680, 0.899366,
		-0.301800, -0.887173, 0.349057,
		0.877017, -0.401920, -0.263249,
		13.649792, 12.965197, 17.880640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.185812, 12.810542, 18.623524>,  <13.035879, 13.246540, 18.064915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.185812, 12.810542, 18.623524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530659, 12.868901, 18.429422>,  <13.737567, 12.903916, 18.312962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.530659, 12.868901, 18.429422>,  <13.185812, 12.810542, 18.623524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.530659, 12.868901, 18.429422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429261, 0.298561, 0.852406,
		0.269242, -0.943173, 0.194766,
		0.862116, 0.145898, -0.485253,
		13.789293, 12.912670, 18.283846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.673049, 12.639689, 19.126192>,  <13.185812, 12.810542, 18.623524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.673049, 12.639689, 19.126192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.881788, 12.861582, 18.866980>,  <14.007031, 12.994718, 18.711452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.881788, 12.861582, 18.866980>,  <13.673049, 12.639689, 19.126192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.881788, 12.861582, 18.866980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564066, 0.345489, 0.749978,
		0.639925, -0.756908, -0.132613,
		0.521848, 0.554732, -0.648033,
		14.038342, 13.028002, 18.672569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.305372, 12.502851, 19.233362>,  <13.673049, 12.639689, 19.126192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.305372, 12.502851, 19.233362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338801, 12.855667, 19.047882>,  <14.358859, 13.067357, 18.936594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338801, 12.855667, 19.047882>,  <14.305372, 12.502851, 19.233362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338801, 12.855667, 19.047882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589305, 0.331493, 0.736772,
		0.803577, -0.334833, -0.492088,
		0.083572, 0.882043, -0.463699,
		14.363873, 13.120280, 18.908772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.982459, 12.672444, 19.310375>,  <14.305372, 12.502851, 19.233362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.982459, 12.672444, 19.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819127, 13.025774, 19.218283>,  <14.721128, 13.237772, 19.163027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819127, 13.025774, 19.218283>,  <14.982459, 12.672444, 19.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819127, 13.025774, 19.218283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648295, 0.458181, 0.608098,
		0.642635, 0.099047, -0.759743,
		-0.408330, 0.883323, -0.230231,
		14.696628, 13.290771, 19.149214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.668161, 13.135887, 19.265844>,  <14.982459, 12.672444, 19.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.668161, 13.135887, 19.265844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331673, 13.348197, 19.307076>,  <15.129779, 13.475582, 19.331814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.331673, 13.348197, 19.307076>,  <15.668161, 13.135887, 19.265844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331673, 13.348197, 19.307076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479794, 0.644895, 0.594902,
		0.249285, 0.549900, -0.797161,
		-0.841222, 0.530773, 0.103076,
		15.079306, 13.507429, 19.337997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.910561, 13.797071, 19.253210>,  <15.668161, 13.135887, 19.265844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.910561, 13.797071, 19.253210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.550324, 13.821610, 19.425337>,  <15.334183, 13.836333, 19.528612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.550324, 13.821610, 19.425337>,  <15.910561, 13.797071, 19.253210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.550324, 13.821610, 19.425337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336452, 0.725180, 0.600762,
		-0.275203, 0.685821, -0.673730,
		-0.900591, 0.061347, 0.430317,
		15.280148, 13.840014, 19.554432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.692657, 14.523320, 19.293369>,  <15.910561, 13.797071, 19.253210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.692657, 14.523320, 19.293369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466293, 14.327917, 19.559032>,  <15.330475, 14.210675, 19.718430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.466293, 14.327917, 19.559032>,  <15.692657, 14.523320, 19.293369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.466293, 14.327917, 19.559032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142996, 0.735195, 0.662601,
		-0.811972, 0.469944, -0.346199,
		-0.565910, -0.488508, 0.664158,
		15.296520, 14.181365, 19.758280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157316, 15.009340, 19.526142>,  <15.692657, 14.523320, 19.293369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157316, 15.009340, 19.526142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159560, 14.753447, 19.833572>,  <15.160907, 14.599910, 20.018030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.159560, 14.753447, 19.833572>,  <15.157316, 15.009340, 19.526142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159560, 14.753447, 19.833572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057558, 0.767520, 0.638436,
		-0.998326, 0.040656, 0.041127,
		0.005609, -0.639735, 0.768575,
		15.161242, 14.561526, 20.064144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.728188, 15.347717, 20.014250>,  <15.157316, 15.009340, 19.526142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.728188, 15.347717, 20.014250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920918, 15.067384, 20.224649>,  <15.036555, 14.899183, 20.350889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.920918, 15.067384, 20.224649>,  <14.728188, 15.347717, 20.014250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920918, 15.067384, 20.224649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202420, 0.673057, 0.711351,
		-0.852568, -0.236274, 0.466158,
		0.481824, -0.700835, 0.526000,
		15.065465, 14.857133, 20.382450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.498067, 15.423211, 20.723324>,  <14.728188, 15.347717, 20.014250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.498067, 15.423211, 20.723324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857475, 15.247828, 20.715170>,  <15.073120, 15.142597, 20.710278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857475, 15.247828, 20.715170>,  <14.498067, 15.423211, 20.723324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857475, 15.247828, 20.715170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302872, 0.585714, 0.751803,
		-0.317694, -0.681684, 0.659073,
		0.898520, -0.438458, -0.020385,
		15.127031, 15.116290, 20.709055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.625528, 15.253428, 21.355146>,  <14.498067, 15.423211, 20.723324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.625528, 15.253428, 21.355146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004061, 15.237639, 21.226835>,  <15.231180, 15.228167, 21.149849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.004061, 15.237639, 21.226835>,  <14.625528, 15.253428, 21.355146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004061, 15.237639, 21.226835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300997, 0.469138, 0.830247,
		0.117720, -0.882242, 0.455840,
		0.946331, -0.039470, -0.320779,
		15.287960, 15.225799, 21.130602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.934717, 15.216193, 21.955624>,  <14.625528, 15.253428, 21.355146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.934717, 15.216193, 21.955624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226368, 15.307473, 21.697538>,  <15.401359, 15.362241, 21.542688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.226368, 15.307473, 21.697538>,  <14.934717, 15.216193, 21.955624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226368, 15.307473, 21.697538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491640, 0.481194, 0.725771,
		0.476063, -0.846400, 0.238686,
		0.729147, 0.228165, -0.645202,
		15.445107, 15.375934, 21.503975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.563852, 15.032684, 22.292747>,  <14.934717, 15.216193, 21.955624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.563852, 15.032684, 22.292747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.622982, 15.312759, 22.013353>,  <15.658460, 15.480804, 21.845716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.622982, 15.312759, 22.013353>,  <15.563852, 15.032684, 22.292747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.622982, 15.312759, 22.013353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534777, 0.537509, 0.651995,
		0.831963, -0.469915, -0.294989,
		0.147823, 0.700189, -0.698487,
		15.667329, 15.522816, 21.803808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.266861, 15.267681, 22.346306>,  <15.563852, 15.032684, 22.292747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.266861, 15.267681, 22.346306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073402, 15.567088, 22.164841>,  <15.957328, 15.746732, 22.055962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.073402, 15.567088, 22.164841>,  <16.266861, 15.267681, 22.346306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073402, 15.567088, 22.164841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457027, 0.658014, 0.598452,
		0.746468, 0.082102, -0.660337,
		-0.483645, 0.748516, -0.453663,
		15.928308, 15.791643, 22.028742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.767523, 15.803993, 22.349577>,  <16.266861, 15.267681, 22.346306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.767523, 15.803993, 22.349577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.423485, 15.996253, 22.281208>,  <16.217062, 16.111609, 22.240187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.423485, 15.996253, 22.281208>,  <16.767523, 15.803993, 22.349577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.423485, 15.996253, 22.281208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335908, 0.785772, 0.519354,
		0.383931, 0.389280, -0.837292,
		-0.860094, 0.480650, -0.170920,
		16.165457, 16.140448, 22.229933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.904421, 16.443119, 22.177689>,  <16.767523, 15.803993, 22.349577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.904421, 16.443119, 22.177689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526340, 16.494909, 22.297579>,  <16.299492, 16.525984, 22.369513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526340, 16.494909, 22.297579>,  <16.904421, 16.443119, 22.177689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526340, 16.494909, 22.297579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271543, 0.821459, 0.501467,
		-0.181283, 0.555374, -0.811601,
		-0.945199, 0.129477, 0.299724,
		16.242781, 16.533752, 22.387497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784700, 17.136723, 22.103481>,  <16.904421, 16.443119, 22.177689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784700, 17.136723, 22.103481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485502, 17.043484, 22.352051>,  <16.305983, 16.987539, 22.501192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.485502, 17.043484, 22.352051>,  <16.784700, 17.136723, 22.103481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.485502, 17.043484, 22.352051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261098, 0.757456, 0.598404,
		-0.610189, 0.609856, -0.505712,
		-0.747995, -0.233099, 0.621424,
		16.261103, 16.973555, 22.538479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529648, 17.774408, 22.227564>,  <16.784700, 17.136723, 22.103481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529648, 17.774408, 22.227564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377623, 17.533833, 22.508654>,  <16.286407, 17.389486, 22.677307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.377623, 17.533833, 22.508654>,  <16.529648, 17.774408, 22.227564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.377623, 17.533833, 22.508654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119122, 0.721582, 0.682004,
		-0.917259, 0.342913, -0.202601,
		-0.380061, -0.601440, 0.702726,
		16.263605, 17.353401, 22.719471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.989951, 18.123669, 22.593227>,  <16.529648, 17.774408, 22.227564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.989951, 18.123669, 22.593227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111809, 17.838100, 22.845419>,  <16.184923, 17.666759, 22.996735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111809, 17.838100, 22.845419>,  <15.989951, 18.123669, 22.593227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111809, 17.838100, 22.845419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036507, 0.670212, 0.741271,
		-0.951766, -0.202808, 0.230240,
		0.304645, -0.713922, 0.630481,
		16.203201, 17.623924, 23.034563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827606, 18.414162, 23.185051>,  <15.989951, 18.123669, 22.593227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827606, 18.414162, 23.185051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.069271, 18.115118, 23.295370>,  <16.214270, 17.935692, 23.361563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.069271, 18.115118, 23.295370>,  <15.827606, 18.414162, 23.185051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.069271, 18.115118, 23.295370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172490, 0.460597, 0.870688,
		-0.777969, -0.478465, 0.407230,
		0.604162, -0.747611, 0.275800,
		16.250521, 17.890835, 23.378111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.564519, 18.248514, 23.842304>,  <15.827606, 18.414162, 23.185051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.564519, 18.248514, 23.842304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944963, 18.153732, 23.763063>,  <16.173229, 18.096863, 23.715519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.944963, 18.153732, 23.763063>,  <15.564519, 18.248514, 23.842304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944963, 18.153732, 23.763063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303642, 0.599997, 0.740138,
		-0.056517, -0.764105, 0.642612,
		0.951109, -0.236954, -0.198104,
		16.230295, 18.082645, 23.703632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.868356, 17.929121, 24.451097>,  <15.564519, 18.248514, 23.842304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.868356, 17.929121, 24.451097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.154041, 18.094748, 24.225372>,  <16.325453, 18.194122, 24.089937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.154041, 18.094748, 24.225372>,  <15.868356, 17.929121, 24.451097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.154041, 18.094748, 24.225372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333018, 0.508112, 0.794306,
		0.615628, -0.755230, 0.225009,
		0.714213, 0.414065, -0.564313,
		16.368305, 18.218967, 24.056078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341862, 17.911106, 25.034256>,  <15.868356, 17.929121, 24.451097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341862, 17.911106, 25.034256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545296, 18.107767, 24.751522>,  <16.667356, 18.225763, 24.581881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.545296, 18.107767, 24.751522>,  <16.341862, 17.911106, 25.034256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545296, 18.107767, 24.751522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349606, 0.632298, 0.691357,
		0.786840, -0.598728, 0.149693,
		0.508586, 0.491654, -0.706836,
		16.697872, 18.255262, 24.539471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.104416, 17.943186, 25.325075>,  <16.341862, 17.911106, 25.034256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.104416, 17.943186, 25.325075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038956, 18.205975, 25.030701>,  <16.999680, 18.363647, 24.854076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.038956, 18.205975, 25.030701>,  <17.104416, 17.943186, 25.325075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.038956, 18.205975, 25.030701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405349, 0.724893, 0.556977,
		0.899395, -0.207162, -0.384932,
		-0.163650, 0.656973, -0.735938,
		16.989861, 18.403067, 24.809919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730305, 18.250893, 25.239780>,  <17.104416, 17.943186, 25.325075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730305, 18.250893, 25.239780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444569, 18.497656, 25.107632>,  <17.273127, 18.645714, 25.028343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444569, 18.497656, 25.107632>,  <17.730305, 18.250893, 25.239780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444569, 18.497656, 25.107632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409592, 0.751358, 0.517393,
		0.567410, 0.234277, -0.789405,
		-0.714339, 0.616908, -0.330371,
		17.230267, 18.682728, 25.008520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960482, 18.908972, 24.929424>,  <17.730305, 18.250893, 25.239780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960482, 18.908972, 24.929424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.582638, 18.979286, 25.040283>,  <17.355932, 19.021475, 25.106798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.582638, 18.979286, 25.040283>,  <17.960482, 18.908972, 24.929424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.582638, 18.979286, 25.040283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277749, 0.878041, 0.389743,
		-0.174836, 0.445133, -0.878231,
		-0.944610, 0.175787, 0.277149,
		17.299255, 19.032022, 25.123428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588457, 19.464460, 24.551737>,  <17.960482, 18.908972, 24.929424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588457, 19.464460, 24.551737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421358, 19.424898, 24.913002>,  <17.321098, 19.401161, 25.129761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.421358, 19.424898, 24.913002>,  <17.588457, 19.464460, 24.551737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421358, 19.424898, 24.913002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168915, 0.968273, 0.184163,
		-0.892723, 0.229492, -0.387787,
		-0.417747, -0.098904, 0.903164,
		17.296034, 19.395227, 25.183950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.480507, 20.104136, 24.745470>,  <17.588457, 19.464460, 24.551737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.480507, 20.104136, 24.745470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368738, 19.932396, 25.089001>,  <17.301676, 19.829353, 25.295118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.368738, 19.932396, 25.089001>,  <17.480507, 20.104136, 24.745470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.368738, 19.932396, 25.089001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203536, 0.847641, 0.489978,
		-0.938347, 0.311714, -0.149463,
		-0.279424, -0.429348, 0.858826,
		17.284910, 19.803591, 25.346649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040340, 20.560457, 25.099289>,  <17.480507, 20.104136, 24.745470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040340, 20.560457, 25.099289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195299, 20.335949, 25.391836>,  <17.288275, 20.201244, 25.567364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.195299, 20.335949, 25.391836>,  <17.040340, 20.560457, 25.099289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195299, 20.335949, 25.391836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104994, 0.815015, 0.569849,
		-0.915915, -0.143968, 0.374664,
		0.387397, -0.561270, 0.731368,
		17.311518, 20.167568, 25.611246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.726223, 20.793598, 25.654053>,  <17.040340, 20.560457, 25.099289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.726223, 20.793598, 25.654053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059555, 20.601770, 25.764015>,  <17.259554, 20.486673, 25.829992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.059555, 20.601770, 25.764015>,  <16.726223, 20.793598, 25.654053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059555, 20.601770, 25.764015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368674, 0.852740, 0.370020,
		-0.411876, -0.206997, 0.887418,
		0.833329, -0.479570, 0.274908,
		17.309553, 20.457899, 25.846487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916742, 21.005430, 26.389868>,  <16.726223, 20.793598, 25.654053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916742, 21.005430, 26.389868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248678, 20.910818, 26.187714>,  <17.447840, 20.854050, 26.066422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.248678, 20.910818, 26.187714>,  <16.916742, 21.005430, 26.389868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248678, 20.910818, 26.187714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397308, 0.886416, 0.237513,
		0.391804, -0.397893, 0.829561,
		0.829841, -0.236533, -0.505387,
		17.497631, 20.839859, 26.036097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616945, 21.054714, 26.763786>,  <16.916742, 21.005430, 26.389868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616945, 21.054714, 26.763786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.687841, 21.164454, 26.385725>,  <17.730379, 21.230297, 26.158888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.687841, 21.164454, 26.385725>,  <17.616945, 21.054714, 26.763786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.687841, 21.164454, 26.385725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274997, 0.908302, 0.315220,
		0.944967, -0.315784, 0.085542,
		0.177239, 0.274349, -0.945156,
		17.741013, 21.246758, 26.102179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.417181, 21.399216, 26.587255>,  <17.616945, 21.054714, 26.763786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.417181, 21.399216, 26.587255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147533, 21.564323, 26.342245>,  <17.985744, 21.663387, 26.195238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.147533, 21.564323, 26.342245>,  <18.417181, 21.399216, 26.587255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147533, 21.564323, 26.342245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583908, 0.805675, -0.099695,
		0.452346, -0.424865, -0.784138,
		-0.674117, 0.412768, -0.612526,
		17.945299, 21.688154, 26.158487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810938, 21.559956, 25.956823>,  <18.417181, 21.399216, 26.587255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810938, 21.559956, 25.956823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486364, 21.784536, 26.021749>,  <18.291620, 21.919285, 26.060705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.486364, 21.784536, 26.021749>,  <18.810938, 21.559956, 25.956823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.486364, 21.784536, 26.021749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536841, 0.825807, -0.172754,
		-0.231034, -0.053041, -0.971499,
		-0.811434, 0.561452, 0.162315,
		18.242933, 21.952972, 26.070444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.436996, 21.896446, 25.394899>,  <18.810938, 21.559956, 25.956823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.436996, 21.896446, 25.394899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481089, 22.111223, 25.729454>,  <18.507544, 22.240089, 25.930187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.481089, 22.111223, 25.729454>,  <18.436996, 21.896446, 25.394899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.481089, 22.111223, 25.729454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560887, 0.661107, -0.498341,
		-0.820521, 0.524050, -0.228290,
		0.110231, 0.536944, 0.836385,
		18.514158, 22.272306, 25.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218197, 22.611189, 25.314949>,  <18.436996, 21.896446, 25.394899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218197, 22.611189, 25.314949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506838, 22.558208, 25.586756>,  <18.680023, 22.526421, 25.749840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.506838, 22.558208, 25.586756>,  <18.218197, 22.611189, 25.314949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506838, 22.558208, 25.586756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636970, 0.511540, -0.576712,
		-0.271214, 0.848990, 0.453496,
		0.721604, -0.132451, 0.679518,
		18.723320, 22.518473, 25.790611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.553963, 23.276577, 25.553820>,  <18.218197, 22.611189, 25.314949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.553963, 23.276577, 25.553820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.792938, 22.955879, 25.547256>,  <18.936323, 22.763460, 25.543318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.792938, 22.955879, 25.547256>,  <18.553963, 23.276577, 25.553820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.792938, 22.955879, 25.547256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620204, 0.474939, -0.624324,
		0.508343, 0.362819, 0.780993,
		0.597440, -0.801746, -0.016410,
		18.972170, 22.715355, 25.542334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.089819, 23.810404, 25.686949>,  <18.553963, 23.276577, 25.553820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.089819, 23.810404, 25.686949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240606, 24.040384, 25.396479>,  <19.331078, 24.178373, 25.222197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.240606, 24.040384, 25.396479>,  <19.089819, 23.810404, 25.686949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.240606, 24.040384, 25.396479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218218, -0.706813, -0.672901,
		-0.900154, 0.412125, -0.140981,
		0.376966, 0.574950, -0.726174,
		19.353697, 24.212870, 25.178627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.549927, 23.987597, 25.119856>,  <19.089819, 23.810404, 25.686949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.549927, 23.987597, 25.119856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916019, 23.992266, 24.958752>,  <19.135675, 23.995068, 24.862089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.916019, 23.992266, 24.958752>,  <18.549927, 23.987597, 25.119856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916019, 23.992266, 24.958752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323543, -0.574471, -0.751867,
		-0.240153, 0.818442, -0.521996,
		0.915230, 0.011675, -0.402762,
		19.190588, 23.995768, 24.837923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489628, 24.074722, 24.446579>,  <18.549927, 23.987597, 25.119856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489628, 24.074722, 24.446579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861671, 23.927866, 24.450649>,  <19.084898, 23.839752, 24.453093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.861671, 23.927866, 24.450649>,  <18.489628, 24.074722, 24.446579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.861671, 23.927866, 24.450649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213240, -0.562366, -0.798920,
		0.299040, 0.740913, -0.601351,
		0.930110, -0.367141, 0.010178,
		19.140705, 23.817724, 24.453703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.630875, 23.950233, 23.698339>,  <18.489628, 24.074722, 24.446579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.630875, 23.950233, 23.698339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924387, 23.742586, 23.873650>,  <19.100494, 23.617998, 23.978836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.924387, 23.742586, 23.873650>,  <18.630875, 23.950233, 23.698339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.924387, 23.742586, 23.873650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093760, -0.716304, -0.691461,
		0.672888, 0.466286, -0.574281,
		0.733778, -0.519120, 0.438273,
		19.144520, 23.586849, 24.005131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.108515, 23.618212, 23.179092>,  <18.630875, 23.950233, 23.698339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.108515, 23.618212, 23.179092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212166, 23.411209, 23.505293>,  <19.274357, 23.287008, 23.701014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.212166, 23.411209, 23.505293>,  <19.108515, 23.618212, 23.179092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212166, 23.411209, 23.505293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137346, -0.816015, -0.561476,
		0.956027, 0.257500, -0.140375,
		0.259129, -0.517507, 0.815499,
		19.289904, 23.255957, 23.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633661, 23.205471, 22.930838>,  <19.108515, 23.618212, 23.179092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633661, 23.205471, 22.930838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536024, 23.002741, 23.261545>,  <19.477442, 22.881104, 23.459970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.536024, 23.002741, 23.261545>,  <19.633661, 23.205471, 22.930838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.536024, 23.002741, 23.261545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076292, -0.839879, -0.537385,
		0.966746, -0.194248, 0.166342,
		-0.244093, -0.506824, 0.826770,
		19.462795, 22.850693, 23.509577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045412, 22.603342, 22.927124>,  <19.633661, 23.205471, 22.930838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045412, 22.603342, 22.927124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738302, 22.518618, 23.169003>,  <19.554035, 22.467783, 23.314129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.738302, 22.518618, 23.169003>,  <20.045412, 22.603342, 22.927124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738302, 22.518618, 23.169003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106529, -0.888440, -0.446459,
		0.631800, -0.407199, 0.659559,
		-0.767776, -0.211810, 0.604695,
		19.507969, 22.455074, 23.350410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.150894, 21.947807, 23.147861>,  <20.045412, 22.603342, 22.927124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.150894, 21.947807, 23.147861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757765, 22.004953, 23.194593>,  <19.521887, 22.039242, 23.222633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.757765, 22.004953, 23.194593>,  <20.150894, 21.947807, 23.147861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757765, 22.004953, 23.194593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173656, -0.930214, -0.323334,
		0.062484, -0.338068, 0.939045,
		-0.982822, 0.142867, 0.116831,
		19.462917, 22.047813, 23.229643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.869347, 21.322964, 23.386457>,  <20.150894, 21.947807, 23.147861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.869347, 21.322964, 23.386457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547361, 21.512468, 23.243580>,  <19.354170, 21.626171, 23.157852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.547361, 21.512468, 23.243580>,  <19.869347, 21.322964, 23.386457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.547361, 21.512468, 23.243580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229137, -0.803538, -0.549384,
		-0.547297, -0.360386, 0.755373,
		-0.804961, 0.473760, -0.357196,
		19.305874, 21.654596, 23.136421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.398348, 20.827061, 23.406305>,  <19.869347, 21.322964, 23.386457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.398348, 20.827061, 23.406305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.246326, 21.106150, 23.163406>,  <19.155113, 21.273603, 23.017668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.246326, 21.106150, 23.163406>,  <19.398348, 20.827061, 23.406305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246326, 21.106150, 23.163406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386133, -0.716241, -0.581290,
		-0.840513, 0.013558, 0.541622,
		-0.380051, 0.697721, -0.607246,
		19.132311, 21.315466, 22.981234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646187, 20.842018, 23.321724>,  <19.398348, 20.827061, 23.406305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646187, 20.842018, 23.321724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.780380, 21.001451, 22.980297>,  <18.860897, 21.097113, 22.775440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.780380, 21.001451, 22.980297>,  <18.646187, 20.842018, 23.321724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.780380, 21.001451, 22.980297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460578, -0.721004, -0.517707,
		-0.821778, 0.566818, -0.058306,
		0.335484, 0.398586, -0.853569,
		18.881025, 21.121027, 22.724226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.060734, 20.908911, 22.874571>,  <18.646187, 20.842018, 23.321724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.060734, 20.908911, 22.874571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349741, 20.954151, 22.601755>,  <18.523146, 20.981295, 22.438066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.349741, 20.954151, 22.601755>,  <18.060734, 20.908911, 22.874571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349741, 20.954151, 22.601755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483565, -0.622380, -0.615473,
		-0.494097, 0.774501, -0.394990,
		0.722518, 0.113100, -0.682038,
		18.566496, 20.988081, 22.397144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.672129, 20.958799, 22.227400>,  <18.060734, 20.908911, 22.874571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.672129, 20.958799, 22.227400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.044950, 20.850168, 22.131470>,  <18.268644, 20.784990, 22.073912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.044950, 20.850168, 22.131470>,  <17.672129, 20.958799, 22.227400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044950, 20.850168, 22.131470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360475, -0.761671, -0.538438,
		-0.036440, 0.588306, -0.807817,
		0.932057, -0.271578, -0.239825,
		18.324568, 20.768696, 22.059523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.785336, 20.953716, 21.465927>,  <17.672129, 20.958799, 22.227400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.785336, 20.953716, 21.465927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050558, 20.702381, 21.628677>,  <18.209692, 20.551580, 21.726328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.050558, 20.702381, 21.628677>,  <17.785336, 20.953716, 21.465927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.050558, 20.702381, 21.628677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307647, -0.724247, -0.617105,
		0.682428, 0.284003, -0.673524,
		0.663058, -0.628338, 0.406874,
		18.249475, 20.513880, 21.750740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033751, 20.528971, 20.917397>,  <17.785336, 20.953716, 21.465927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033751, 20.528971, 20.917397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120058, 20.324362, 21.250092>,  <18.171843, 20.201597, 21.449709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120058, 20.324362, 21.250092>,  <18.033751, 20.528971, 20.917397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120058, 20.324362, 21.250092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343288, -0.837166, -0.425802,
		0.914109, -0.193650, -0.356235,
		0.215771, -0.511521, 0.831739,
		18.184790, 20.170906, 21.499613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.486830, 19.978376, 20.681595>,  <18.033751, 20.528971, 20.917397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.486830, 19.978376, 20.681595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352610, 19.849678, 21.035746>,  <18.272078, 19.772459, 21.248236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.352610, 19.849678, 21.035746>,  <18.486830, 19.978376, 20.681595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.352610, 19.849678, 21.035746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139619, -0.912499, -0.384515,
		0.931619, -0.252638, 0.261266,
		-0.335548, -0.321744, 0.885375,
		18.251945, 19.753155, 21.301357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793795, 19.304842, 20.710789>,  <18.486830, 19.978376, 20.681595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793795, 19.304842, 20.710789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521284, 19.296415, 21.003477>,  <18.357777, 19.291359, 21.179090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.521284, 19.296415, 21.003477>,  <18.793795, 19.304842, 20.710789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.521284, 19.296415, 21.003477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267108, -0.923511, -0.275284,
		0.681552, -0.382994, 0.623540,
		-0.681278, -0.021068, 0.731722,
		18.316900, 19.290094, 21.222994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842339, 18.631662, 20.890135>,  <18.793795, 19.304842, 20.710789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842339, 18.631662, 20.890135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499781, 18.762383, 21.050030>,  <18.294247, 18.840815, 21.145967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.499781, 18.762383, 21.050030>,  <18.842339, 18.631662, 20.890135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.499781, 18.762383, 21.050030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430251, -0.879680, -0.202601,
		0.285431, -0.345494, 0.893959,
		-0.856395, 0.326799, 0.399738,
		18.242863, 18.860422, 21.169950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640493, 18.164476, 21.258755>,  <18.842339, 18.631662, 20.890135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640493, 18.164476, 21.258755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297203, 18.362637, 21.205046>,  <18.091228, 18.481533, 21.172821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.297203, 18.362637, 21.205046>,  <18.640493, 18.164476, 21.258755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297203, 18.362637, 21.205046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468448, -0.862912, -0.189578,
		-0.209781, -0.099802, 0.972642,
		-0.858224, 0.495402, -0.134270,
		18.039736, 18.511257, 21.164764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178265, 17.755404, 21.618368>,  <18.640493, 18.164476, 21.258755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178265, 17.755404, 21.618368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981518, 17.967064, 21.341799>,  <17.863470, 18.094061, 21.175858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.981518, 17.967064, 21.341799>,  <18.178265, 17.755404, 21.618368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981518, 17.967064, 21.341799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408128, -0.841601, -0.353750,
		-0.769089, 0.108191, 0.629918,
		-0.491867, 0.529153, -0.691422,
		17.833958, 18.125811, 21.134373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518396, 17.442780, 21.641996>,  <18.178265, 17.755404, 21.618368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518396, 17.442780, 21.641996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524694, 17.646219, 21.297653>,  <17.528473, 17.768284, 21.091047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.524694, 17.646219, 21.297653>,  <17.518396, 17.442780, 21.641996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.524694, 17.646219, 21.297653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481536, -0.750688, -0.452317,
		-0.876285, 0.421656, 0.233091,
		0.015744, 0.508600, -0.860859,
		17.529417, 17.798800, 21.039396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879875, 17.351957, 21.406021>,  <17.518396, 17.442780, 21.641996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879875, 17.351957, 21.406021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094988, 17.461206, 21.086975>,  <17.224056, 17.526756, 20.895548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.094988, 17.461206, 21.086975>,  <16.879875, 17.351957, 21.406021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094988, 17.461206, 21.086975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420321, -0.733254, -0.534479,
		-0.730834, 0.622690, -0.279534,
		0.537784, 0.273121, -0.797617,
		17.256323, 17.543142, 20.847691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414070, 17.511181, 20.776602>,  <16.879875, 17.351957, 21.406021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414070, 17.511181, 20.776602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767950, 17.404943, 20.623362>,  <16.980278, 17.341202, 20.531418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.767950, 17.404943, 20.623362>,  <16.414070, 17.511181, 20.776602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767950, 17.404943, 20.623362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454245, -0.675784, -0.580498,
		-0.104717, 0.687588, -0.718510,
		0.884701, -0.265592, -0.383099,
		17.033360, 17.325266, 20.508432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.146843, 17.243452, 20.144810>,  <16.414070, 17.511181, 20.776602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.146843, 17.243452, 20.144810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526348, 17.118309, 20.162548>,  <16.754051, 17.043222, 20.173191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.526348, 17.118309, 20.162548>,  <16.146843, 17.243452, 20.144810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.526348, 17.118309, 20.162548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204506, -0.714944, -0.668605,
		0.240884, 0.625279, -0.742294,
		0.948764, -0.312860, 0.044345,
		16.810978, 17.024450, 20.175852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374996, 17.180834, 19.471907>,  <16.146843, 17.243452, 20.144810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374996, 17.180834, 19.471907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621174, 16.956631, 19.693558>,  <16.768881, 16.822109, 19.826550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.621174, 16.956631, 19.693558>,  <16.374996, 17.180834, 19.471907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.621174, 16.956631, 19.693558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202179, -0.791792, -0.576357,
		0.761808, 0.242682, -0.600627,
		0.615444, -0.560508, 0.554129,
		16.805807, 16.788479, 19.859797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721111, 16.932194, 19.003782>,  <16.374996, 17.180834, 19.471907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721111, 16.932194, 19.003782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812847, 16.674793, 19.295895>,  <16.867887, 16.520353, 19.471163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812847, 16.674793, 19.295895>,  <16.721111, 16.932194, 19.003782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812847, 16.674793, 19.295895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139410, -0.764260, -0.629660,
		0.963312, 0.042597, -0.264984,
		0.229338, -0.643500, 0.730282,
		16.881649, 16.481743, 19.514978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.355295, 16.520576, 18.744896>,  <16.721111, 16.932194, 19.003782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.355295, 16.520576, 18.744896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179737, 16.323730, 19.045614>,  <17.074402, 16.205624, 19.226046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179737, 16.323730, 19.045614>,  <17.355295, 16.520576, 18.744896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179737, 16.323730, 19.045614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034243, -0.845239, -0.533290,
		0.897885, -0.208315, 0.387823,
		-0.438896, -0.492113, 0.751795,
		17.048069, 16.176096, 19.271152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.738726, 15.963779, 18.837111>,  <17.355295, 16.520576, 18.744896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.738726, 15.963779, 18.837111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383118, 15.878390, 18.999136>,  <17.169754, 15.827157, 19.096352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.383118, 15.878390, 18.999136>,  <17.738726, 15.963779, 18.837111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.383118, 15.878390, 18.999136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038727, -0.846437, -0.531079,
		0.456230, -0.487826, 0.744231,
		-0.889019, -0.213472, 0.405062,
		17.116411, 15.814348, 19.120655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.827419, 15.333194, 19.038403>,  <17.738726, 15.963779, 18.837111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.827419, 15.333194, 19.038403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437502, 15.400724, 18.980057>,  <17.203552, 15.441243, 18.945049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.437502, 15.400724, 18.980057>,  <17.827419, 15.333194, 19.038403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.437502, 15.400724, 18.980057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057424, -0.821594, -0.567174,
		-0.215596, -0.544501, 0.810578,
		-0.974792, 0.168827, -0.145865,
		17.145063, 15.451372, 18.936296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449114, 14.641358, 19.232063>,  <17.827419, 15.333194, 19.038403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449114, 14.641358, 19.232063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246527, 14.892078, 18.995213>,  <17.124975, 15.042510, 18.853102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.246527, 14.892078, 18.995213>,  <17.449114, 14.641358, 19.232063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.246527, 14.892078, 18.995213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059823, -0.710603, -0.701045,
		-0.860181, -0.319634, 0.397395,
		-0.506468, 0.626799, -0.592126,
		17.094585, 15.080118, 18.817575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.083872, 14.159181, 18.744667>,  <17.449114, 14.641358, 19.232063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.083872, 14.159181, 18.744667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977566, 14.491557, 18.549156>,  <16.913782, 14.690983, 18.431849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.977566, 14.491557, 18.549156>,  <17.083872, 14.159181, 18.744667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.977566, 14.491557, 18.549156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126843, -0.472463, -0.872175,
		-0.955657, -0.293791, 0.020165,
		-0.265764, 0.830942, -0.488778,
		16.897837, 14.740840, 18.402523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623678, 13.984859, 18.155230>,  <17.083872, 14.159181, 18.744667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623678, 13.984859, 18.155230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799429, 14.335546, 18.076925>,  <16.904879, 14.545957, 18.029943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799429, 14.335546, 18.076925>,  <16.623678, 13.984859, 18.155230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799429, 14.335546, 18.076925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260460, -0.332895, -0.906279,
		-0.859715, 0.347208, -0.374615,
		0.439375, 0.876714, -0.195761,
		16.931242, 14.598559, 18.018196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.344194, 14.153686, 17.479786>,  <16.623678, 13.984859, 18.155230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.344194, 14.153686, 17.479786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.677784, 14.370139, 17.522976>,  <16.877937, 14.500011, 17.548891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.677784, 14.370139, 17.522976>,  <16.344194, 14.153686, 17.479786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.677784, 14.370139, 17.522976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239337, -0.178416, -0.954403,
		-0.497195, 0.821792, -0.278308,
		0.833975, 0.541134, 0.107977,
		16.927977, 14.532479, 17.555368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.329672, 14.614061, 16.928577>,  <16.344194, 14.153686, 17.479786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.329672, 14.614061, 16.928577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712425, 14.577168, 17.038752>,  <16.942078, 14.555033, 17.104856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.712425, 14.577168, 17.038752>,  <16.329672, 14.614061, 16.928577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.712425, 14.577168, 17.038752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258846, -0.159502, -0.952658,
		0.131798, 0.982880, -0.128752,
		0.956885, -0.092232, 0.275436,
		16.999491, 14.549499, 17.121382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.709995, 14.895818, 16.372236>,  <16.329672, 14.614061, 16.928577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.709995, 14.895818, 16.372236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972952, 14.673764, 16.576065>,  <17.130726, 14.540532, 16.698362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.972952, 14.673764, 16.576065>,  <16.709995, 14.895818, 16.372236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.972952, 14.673764, 16.576065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364671, -0.357404, -0.859813,
		0.659434, 0.751059, -0.032512,
		0.657390, -0.555133, 0.509574,
		17.170170, 14.507224, 16.728937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360292, 14.952938, 15.994211>,  <16.709995, 14.895818, 16.372236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360292, 14.952938, 15.994211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393425, 14.611621, 16.200136>,  <17.413305, 14.406831, 16.323690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.393425, 14.611621, 16.200136>,  <17.360292, 14.952938, 15.994211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393425, 14.611621, 16.200136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467985, -0.422779, -0.776046,
		0.879846, 0.305205, 0.364309,
		0.082831, -0.853292, 0.514812,
		17.418274, 14.355633, 16.354580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035231, 14.740733, 15.930376>,  <17.360292, 14.952938, 15.994211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035231, 14.740733, 15.930376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.861378, 14.402555, 16.054516>,  <17.757067, 14.199649, 16.129000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.861378, 14.402555, 16.054516>,  <18.035231, 14.740733, 15.930376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.861378, 14.402555, 16.054516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391219, -0.487627, -0.780492,
		0.811198, -0.217812, 0.542693,
		-0.434633, -0.845445, 0.310350,
		17.730988, 14.148922, 16.147621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.614159, 14.253337, 15.908856>,  <18.035231, 14.740733, 15.930376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.614159, 14.253337, 15.908856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259274, 14.070164, 15.886388>,  <18.046343, 13.960260, 15.872907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.259274, 14.070164, 15.886388>,  <18.614159, 14.253337, 15.908856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.259274, 14.070164, 15.886388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340801, -0.568425, -0.748831,
		0.310985, -0.683514, 0.660377,
		-0.887211, -0.457933, -0.056171,
		17.993111, 13.932784, 15.869536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764959, 13.480189, 15.926032>,  <18.614159, 14.253337, 15.908856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764959, 13.480189, 15.926032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402500, 13.509153, 15.759345>,  <18.185024, 13.526532, 15.659333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.402500, 13.509153, 15.759345>,  <18.764959, 13.480189, 15.926032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402500, 13.509153, 15.759345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255870, -0.690663, -0.676399,
		-0.336790, -0.719543, 0.607314,
		-0.906148, 0.072411, -0.416718,
		18.130655, 13.530877, 15.634330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729244, 12.881581, 15.754442>,  <18.764959, 13.480189, 15.926032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729244, 12.881581, 15.754442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468029, 13.096579, 15.541035>,  <18.311300, 13.225577, 15.412991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.468029, 13.096579, 15.541035>,  <18.729244, 12.881581, 15.754442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.468029, 13.096579, 15.541035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282065, -0.481170, -0.830009,
		-0.702838, -0.692514, 0.162614,
		-0.653038, 0.537494, -0.533518,
		18.272118, 13.257827, 15.380980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405533, 12.358479, 15.363576>,  <18.729244, 12.881581, 15.754442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405533, 12.358479, 15.363576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398411, 12.731864, 15.220284>,  <18.394136, 12.955895, 15.134308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398411, 12.731864, 15.220284>,  <18.405533, 12.358479, 15.363576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398411, 12.731864, 15.220284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302716, -0.336438, -0.891725,
		-0.952915, -0.124320, -0.276583,
		-0.017806, 0.933463, -0.358230,
		18.393068, 13.011903, 15.112814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999811, 12.386085, 14.722664>,  <18.405533, 12.358479, 15.363576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999811, 12.386085, 14.722664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.294657, 12.655864, 14.739564>,  <18.471563, 12.817731, 14.749704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.294657, 12.655864, 14.739564>,  <17.999811, 12.386085, 14.722664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294657, 12.655864, 14.739564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364432, -0.344084, -0.865330,
		-0.569082, 0.653243, -0.499419,
		0.737112, 0.674448, 0.042250,
		18.515791, 12.858198, 14.752239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983597, 12.776410, 14.068848>,  <17.999811, 12.386085, 14.722664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983597, 12.776410, 14.068848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333364, 12.703970, 14.248888>,  <18.543226, 12.660506, 14.356912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.333364, 12.703970, 14.248888>,  <17.983597, 12.776410, 14.068848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.333364, 12.703970, 14.248888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314281, -0.495332, -0.809860,
		0.369614, 0.849617, -0.376213,
		0.874421, -0.181099, 0.450100,
		18.595692, 12.649640, 14.383918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.610579, 13.084099, 13.720503>,  <17.983597, 12.776410, 14.068848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.610579, 13.084099, 13.720503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670532, 12.750599, 13.933066>,  <18.706505, 12.550499, 14.060604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.670532, 12.750599, 13.933066>,  <18.610579, 13.084099, 13.720503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.670532, 12.750599, 13.933066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195660, -0.501838, -0.842541,
		0.969150, 0.230260, 0.087914,
		0.149885, -0.833750, 0.531409,
		18.715498, 12.500474, 14.092489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.916004, 12.716398, 13.202380>,  <18.610579, 13.084099, 13.720503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.916004, 12.716398, 13.202380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.920145, 12.473116, 13.519865>,  <18.922630, 12.327147, 13.710356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.920145, 12.473116, 13.519865>,  <18.916004, 12.716398, 13.202380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.920145, 12.473116, 13.519865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369896, -0.735121, -0.568132,
		0.929016, 0.299473, 0.217361,
		0.010354, -0.608205, 0.793713,
		18.923252, 12.290654, 13.757978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273550, 12.384980, 12.546578>,  <18.916004, 12.716398, 13.202380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273550, 12.384980, 12.546578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406324, 12.373924, 12.169419>,  <19.485989, 12.367290, 11.943124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.406324, 12.373924, 12.169419>,  <19.273550, 12.384980, 12.546578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.406324, 12.373924, 12.169419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873101, 0.387394, 0.296007,
		0.357091, -0.921500, 0.152723,
		0.331934, -0.027641, -0.942897,
		19.505905, 12.365632, 11.886550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026463, 12.042639, 12.395869>,  <19.273550, 12.384980, 12.546578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026463, 12.042639, 12.395869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939541, 12.326296, 12.127573>,  <19.887388, 12.496490, 11.966595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.939541, 12.326296, 12.127573>,  <20.026463, 12.042639, 12.395869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.939541, 12.326296, 12.127573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821542, 0.503953, 0.266645,
		0.527112, -0.493099, -0.692103,
		-0.217305, 0.709144, -0.670741,
		19.874350, 12.539039, 11.926351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500391, 12.024146, 11.842738>,  <20.026463, 12.042639, 12.395869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500391, 12.024146, 11.842738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382181, 12.396134, 11.930206>,  <20.311255, 12.619328, 11.982687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.382181, 12.396134, 11.930206>,  <20.500391, 12.024146, 11.842738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.382181, 12.396134, 11.930206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941686, 0.245016, 0.230640,
		0.160911, 0.274080, -0.948150,
		-0.295526, 0.929972, 0.218672,
		20.293524, 12.675126, 11.995808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457304, 12.213864, 11.139447>,  <20.500391, 12.024146, 11.842738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457304, 12.213864, 11.139447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841963, 12.194814, 11.247494>,  <21.072758, 12.183383, 11.312322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.841963, 12.194814, 11.247494>,  <20.457304, 12.213864, 11.139447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.841963, 12.194814, 11.247494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272598, 0.274925, -0.922012,
		-0.030349, 0.960285, 0.277364,
		0.961649, -0.047626, 0.270116,
		21.130457, 12.180526, 11.328528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737461, 12.850816, 10.814650>,  <20.457304, 12.213864, 11.139447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737461, 12.850816, 10.814650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031778, 12.592546, 10.896342>,  <21.208368, 12.437583, 10.945358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.031778, 12.592546, 10.896342>,  <20.737461, 12.850816, 10.814650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031778, 12.592546, 10.896342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316268, 0.060958, -0.946709,
		0.598818, 0.761175, 0.249059,
		0.735794, -0.645676, 0.204232,
		21.252516, 12.398843, 10.957612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.311344, 13.155585, 10.537147>,  <20.737461, 12.850816, 10.814650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.311344, 13.155585, 10.537147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431828, 12.775477, 10.568802>,  <21.504118, 12.547413, 10.587795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.431828, 12.775477, 10.568802>,  <21.311344, 13.155585, 10.537147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.431828, 12.775477, 10.568802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516610, 0.092865, -0.851170,
		0.801491, 0.297262, 0.518890,
		0.301207, -0.950269, 0.079138,
		21.522190, 12.490396, 10.592544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027794, 13.152005, 10.544829>,  <21.311344, 13.155585, 10.537147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027794, 13.152005, 10.544829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887291, 12.803534, 10.407619>,  <21.802990, 12.594451, 10.325293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887291, 12.803534, 10.407619>,  <22.027794, 13.152005, 10.544829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887291, 12.803534, 10.407619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604875, 0.068505, -0.793368,
		0.714664, -0.486164, 0.502892,
		-0.351257, -0.871178, -0.343027,
		21.781914, 12.542180, 10.304710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.523392, 12.883052, 10.194683>,  <22.027794, 13.152005, 10.544829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.523392, 12.883052, 10.194683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.226334, 12.659500, 10.047099>,  <22.048100, 12.525369, 9.958549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.226334, 12.659500, 10.047099>,  <22.523392, 12.883052, 10.194683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.226334, 12.659500, 10.047099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532483, -0.158674, -0.831435,
		0.406128, -0.813926, 0.415432,
		-0.742645, -0.558880, -0.368960,
		22.003540, 12.491837, 9.936411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.841984, 12.255744, 10.007036>,  <22.523392, 12.883052, 10.194683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.841984, 12.255744, 10.007036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501211, 12.256040, 9.797574>,  <22.296747, 12.256217, 9.671897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.501211, 12.256040, 9.797574>,  <22.841984, 12.255744, 10.007036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.501211, 12.256040, 9.797574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518491, -0.138913, -0.843724,
		-0.073366, -0.990304, 0.117961,
		-0.851930, 0.000739, -0.523656,
		22.245632, 12.256261, 9.640477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.889856, 11.747763, 9.521954>,  <22.841984, 12.255744, 10.007036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.889856, 11.747763, 9.521954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.615232, 11.988685, 9.359048>,  <22.450459, 12.133238, 9.261304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.615232, 11.988685, 9.359048>,  <22.889856, 11.747763, 9.521954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.615232, 11.988685, 9.359048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443586, -0.096827, -0.890986,
		-0.576081, -0.792371, -0.200697,
		-0.686559, 0.602306, -0.407265,
		22.409266, 12.169376, 9.236869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.925074, 11.564625, 8.835034>,  <22.889856, 11.747763, 9.521954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.925074, 11.564625, 8.835034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.726011, 11.911215, 8.850836>,  <22.606573, 12.119168, 8.860316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.726011, 11.911215, 8.850836>,  <22.925074, 11.564625, 8.835034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.726011, 11.911215, 8.850836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300561, 0.214990, -0.929216,
		-0.813634, -0.450557, -0.367420,
		-0.497656, 0.866474, 0.039503,
		22.576714, 12.171157, 8.862686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.442335, 11.526028, 8.361804>,  <22.925074, 11.564625, 8.835034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.442335, 11.526028, 8.361804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525888, 11.914573, 8.407102>,  <22.576021, 12.147699, 8.434280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.525888, 11.914573, 8.407102>,  <22.442335, 11.526028, 8.361804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.525888, 11.914573, 8.407102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334572, 0.037827, -0.941611,
		-0.918928, 0.234576, -0.317089,
		0.208885, 0.971361, 0.113243,
		22.588554, 12.205981, 8.441074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331779, 11.806296, 7.701088>,  <22.442335, 11.526028, 8.361804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331779, 11.806296, 7.701088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540091, 12.100356, 7.874685>,  <22.665077, 12.276792, 7.978843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.540091, 12.100356, 7.874685>,  <22.331779, 11.806296, 7.701088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540091, 12.100356, 7.874685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453910, 0.192107, -0.870092,
		-0.723020, 0.650116, -0.233647,
		0.520775, 0.735149, 0.433992,
		22.696323, 12.320901, 8.004882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.194588, 12.382157, 7.291856>,  <22.331779, 11.806296, 7.701088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.194588, 12.382157, 7.291856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546881, 12.423660, 7.476699>,  <22.758257, 12.448563, 7.587605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546881, 12.423660, 7.476699>,  <22.194588, 12.382157, 7.291856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546881, 12.423660, 7.476699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436986, 0.198207, -0.877358,
		-0.182626, 0.974653, 0.129227,
		0.880733, 0.103758, 0.462107,
		22.811100, 12.454788, 7.615331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499336, 13.071812, 7.110658>,  <22.194588, 12.382157, 7.291856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499336, 13.071812, 7.110658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.837305, 12.900629, 7.239007>,  <23.040087, 12.797919, 7.316015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.837305, 12.900629, 7.239007>,  <22.499336, 13.071812, 7.110658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.837305, 12.900629, 7.239007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444341, 0.227627, -0.866457,
		0.297766, 0.874666, 0.382486,
		0.844924, -0.427955, 0.320870,
		23.090782, 12.772243, 7.335268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102837, 13.512302, 6.816519>,  <22.499336, 13.071812, 7.110658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102837, 13.512302, 6.816519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.277130, 13.166260, 6.915900>,  <23.381706, 12.958634, 6.975528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.277130, 13.166260, 6.915900>,  <23.102837, 13.512302, 6.816519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.277130, 13.166260, 6.915900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599468, 0.073028, -0.797060,
		0.671398, 0.496244, 0.550425,
		0.435732, -0.865106, 0.248451,
		23.407850, 12.906728, 6.990435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.861237, 13.645975, 6.739099>,  <23.102837, 13.512302, 6.816519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.861237, 13.645975, 6.739099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787704, 13.252813, 6.734999>,  <23.743586, 13.016916, 6.732540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.787704, 13.252813, 6.734999>,  <23.861237, 13.645975, 6.739099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.787704, 13.252813, 6.734999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532664, -0.090850, -0.841437,
		0.826121, -0.160141, 0.540259,
		-0.183831, -0.982905, -0.010249,
		23.732555, 12.957942, 6.731925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516554, 13.375687, 6.468465>,  <23.861237, 13.645975, 6.739099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516554, 13.375687, 6.468465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242599, 13.088215, 6.420415>,  <24.078226, 12.915731, 6.391586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.242599, 13.088215, 6.420415>,  <24.516554, 13.375687, 6.468465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.242599, 13.088215, 6.420415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480674, -0.321724, -0.815749,
		0.547615, -0.616436, 0.565795,
		-0.684887, -0.718679, -0.120124,
		24.037134, 12.872611, 6.384378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862225, 12.792968, 6.462924>,  <24.516554, 13.375687, 6.468465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862225, 12.792968, 6.462924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512959, 12.741982, 6.274739>,  <24.303398, 12.711391, 6.161828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.512959, 12.741982, 6.274739>,  <24.862225, 12.792968, 6.462924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.512959, 12.741982, 6.274739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485511, -0.312866, -0.816330,
		-0.043140, -0.941206, 0.335068,
		-0.873166, -0.127462, -0.470463,
		24.251009, 12.703744, 6.133600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.952715, 12.140090, 6.084950>,  <24.862225, 12.792968, 6.462924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.952715, 12.140090, 6.084950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634270, 12.307625, 5.910236>,  <24.443203, 12.408146, 5.805408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.634270, 12.307625, 5.910236>,  <24.952715, 12.140090, 6.084950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634270, 12.307625, 5.910236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379873, -0.215965, -0.899475,
		-0.471064, -0.882006, 0.012827,
		-0.796112, 0.418838, -0.436784,
		24.395435, 12.433276, 5.779202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685871, 11.637879, 5.566834>,  <24.952715, 12.140090, 6.084950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685871, 11.637879, 5.566834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510920, 11.981013, 5.458896>,  <24.405949, 12.186893, 5.394133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.510920, 11.981013, 5.458896>,  <24.685871, 11.637879, 5.566834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510920, 11.981013, 5.458896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272623, -0.159465, -0.948814,
		-0.856957, -0.488558, -0.164119,
		-0.437380, 0.857836, -0.269846,
		24.379705, 12.238364, 5.377942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230818, 11.477096, 5.037302>,  <24.685871, 11.637879, 5.566834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230818, 11.477096, 5.037302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311771, 11.865909, 4.989645>,  <24.360344, 12.099196, 4.961051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.311771, 11.865909, 4.989645>,  <24.230818, 11.477096, 5.037302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.311771, 11.865909, 4.989645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246034, -0.168226, -0.954551,
		-0.947896, 0.163873, -0.273199,
		0.202385, 0.972032, -0.119143,
		24.372486, 12.157518, 4.953903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.004774, 11.587967, 4.475038>,  <24.230818, 11.477096, 5.037302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.004774, 11.587967, 4.475038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274366, 11.879138, 4.525437>,  <24.436121, 12.053841, 4.555676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274366, 11.879138, 4.525437>,  <24.004774, 11.587967, 4.475038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274366, 11.879138, 4.525437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269049, -0.083022, -0.959542,
		-0.688016, 0.680610, -0.251803,
		0.673978, 0.727927, 0.125997,
		24.476561, 12.097516, 4.563236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.558146, 12.281230, 4.283124>,  <24.004774, 11.587967, 4.475038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.558146, 12.281230, 4.283124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953005, 12.218004, 4.273693>,  <24.189920, 12.180069, 4.268034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.953005, 12.218004, 4.273693>,  <23.558146, 12.281230, 4.283124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.953005, 12.218004, 4.273693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040081, 0.387682, -0.920921,
		0.154705, 0.908140, 0.389035,
		0.987147, -0.158064, -0.023577,
		24.249149, 12.170585, 4.266620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.803186, 12.877337, 4.027874>,  <23.558146, 12.281230, 4.283124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.803186, 12.877337, 4.027874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054213, 12.580558, 3.933489>,  <24.204828, 12.402491, 3.876858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.054213, 12.580558, 3.933489>,  <23.803186, 12.877337, 4.027874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.054213, 12.580558, 3.933489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152649, 0.414448, -0.897179,
		0.763453, 0.527019, 0.373351,
		0.627565, -0.741946, -0.235962,
		24.242481, 12.357974, 3.862700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081848, 12.762267, 3.754579>,  <23.803186, 12.877337, 4.027874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081848, 12.762267, 3.754579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.436270, 12.908284, 3.640279>,  <23.648922, 12.995894, 3.571700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.436270, 12.908284, 3.640279>,  <23.081848, 12.762267, 3.754579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.436270, 12.908284, 3.640279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330918, 0.066374, -0.941323,
		-0.324656, 0.928622, 0.179610,
		0.886054, 0.365042, -0.285749,
		23.702085, 13.017797, 3.554555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.363754, 13.176192, 3.209764>,  <23.081848, 12.762267, 3.754579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.363754, 13.176192, 3.209764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044823, 13.411954, 3.157808>,  <22.853464, 13.553411, 3.126634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.044823, 13.411954, 3.157808>,  <23.363754, 13.176192, 3.209764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.044823, 13.411954, 3.157808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404184, -0.681268, -0.610335,
		-0.448223, -0.434138, 0.781422,
		-0.797328, 0.589405, -0.129889,
		22.805624, 13.588776, 3.118841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.937502, 13.553003, 3.214413>,  <23.363754, 13.176192, 3.209764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.937502, 13.553003, 3.214413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.748493, 13.904147, 3.183201>,  <23.635088, 14.114833, 3.164474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.748493, 13.904147, 3.183201>,  <23.937502, 13.553003, 3.214413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.748493, 13.904147, 3.183201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133240, 0.158675, 0.978299,
		0.871189, 0.451870, -0.191943,
		-0.472521, 0.877859, -0.078028,
		23.606737, 14.167504, 3.159793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.311045, 14.027048, 3.554133>,  <23.937502, 13.553003, 3.214413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.311045, 14.027048, 3.554133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922499, 14.120253, 3.572712>,  <23.689371, 14.176175, 3.583859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.922499, 14.120253, 3.572712>,  <24.311045, 14.027048, 3.554133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.922499, 14.120253, 3.572712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103299, 0.238126, 0.965725,
		0.213966, 0.942869, -0.255377,
		-0.971364, 0.233012, 0.046447,
		23.631090, 14.190156, 3.586646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109957, 14.853253, 3.615407>,  <24.311045, 14.027048, 3.554133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109957, 14.853253, 3.615407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.865023, 14.583393, 3.780278>,  <23.718061, 14.421477, 3.879201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.865023, 14.583393, 3.780278>,  <24.109957, 14.853253, 3.615407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.865023, 14.583393, 3.780278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235015, 0.342455, 0.909666,
		-0.754859, 0.653890, -0.051145,
		-0.612337, -0.674650, 0.412179,
		23.681322, 14.380999, 3.903932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.763035, 15.370811, 3.966143>,  <24.109957, 14.853253, 3.615407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.763035, 15.370811, 3.966143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800779, 15.024389, 4.162528>,  <23.823425, 14.816536, 4.280359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800779, 15.024389, 4.162528>,  <23.763035, 15.370811, 3.966143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.800779, 15.024389, 4.162528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369891, 0.488358, 0.790371,
		-0.924271, 0.107022, 0.366429,
		0.094361, -0.866056, 0.490962,
		23.829088, 14.764572, 4.309816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.046410, 15.559886, 4.713118>,  <23.763035, 15.370811, 3.966143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.046410, 15.559886, 4.713118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037928, 15.160109, 4.702807>,  <24.032839, 14.920242, 4.696621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037928, 15.160109, 4.702807>,  <24.046410, 15.559886, 4.713118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037928, 15.160109, 4.702807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489315, -0.032856, 0.871488,
		-0.871849, 0.005866, 0.489739,
		-0.021203, -0.999443, -0.025775,
		24.031567, 14.860275, 4.695075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.810148, 15.209745, 5.388508>,  <24.046410, 15.559886, 4.713118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.810148, 15.209745, 5.388508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.073580, 15.008114, 5.165016>,  <24.231638, 14.887135, 5.030921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.073580, 15.008114, 5.165016>,  <23.810148, 15.209745, 5.388508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.073580, 15.008114, 5.165016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629473, -0.037838, 0.776101,
		-0.412357, -0.862829, 0.292384,
		0.658579, -0.504078, -0.558730,
		24.271152, 14.856891, 4.997396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.884073, 14.618465, 5.680366>,  <23.810148, 15.209745, 5.388508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.884073, 14.618465, 5.680366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234417, 14.631385, 5.487772>,  <24.444624, 14.639136, 5.372216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.234417, 14.631385, 5.487772>,  <23.884073, 14.618465, 5.680366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.234417, 14.631385, 5.487772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482093, -0.102765, 0.870072,
		-0.021379, -0.994181, -0.105578,
		0.875859, 0.032297, -0.481484,
		24.497175, 14.641074, 5.343327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290150, 14.079844, 5.935381>,  <23.884073, 14.618465, 5.680366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290150, 14.079844, 5.935381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548622, 14.330368, 5.760941>,  <24.703707, 14.480682, 5.656277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.548622, 14.330368, 5.760941>,  <24.290150, 14.079844, 5.935381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.548622, 14.330368, 5.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606586, -0.074709, 0.791500,
		0.463144, -0.775985, -0.428187,
		0.646182, 0.626311, -0.436100,
		24.742477, 14.518261, 5.630111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012472, 13.775624, 5.986097>,  <24.290150, 14.079844, 5.935381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012472, 13.775624, 5.986097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099720, 14.157115, 5.903317>,  <25.152069, 14.386009, 5.853650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.099720, 14.157115, 5.903317>,  <25.012472, 13.775624, 5.986097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.099720, 14.157115, 5.903317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606274, 0.033751, 0.794539,
		0.764759, -0.298773, -0.570858,
		0.218120, 0.953727, -0.206949,
		25.165155, 14.443233, 5.841233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.701670, 13.749078, 5.899428>,  <25.012472, 13.775624, 5.986097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.701670, 13.749078, 5.899428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601191, 14.124143, 5.995501>,  <25.540903, 14.349182, 6.053144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.601191, 14.124143, 5.995501>,  <25.701670, 13.749078, 5.899428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601191, 14.124143, 5.995501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550750, -0.065593, 0.832089,
		0.795973, 0.341301, -0.499941,
		-0.251200, 0.937663, 0.240182,
		25.525831, 14.405441, 6.067555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384659, 14.178920, 6.041016>,  <25.701670, 13.749078, 5.899428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384659, 14.178920, 6.041016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063261, 14.350678, 6.205946>,  <25.870422, 14.453733, 6.304904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063261, 14.350678, 6.205946>,  <26.384659, 14.178920, 6.041016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063261, 14.350678, 6.205946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415503, -0.091501, 0.904978,
		0.426322, 0.898469, -0.104894,
		-0.803496, 0.429396, 0.412326,
		25.822212, 14.479497, 6.329644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710609, 14.353240, 6.524742>,  <26.384659, 14.178920, 6.041016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710609, 14.353240, 6.524742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349770, 14.452824, 6.665731>,  <26.133266, 14.512573, 6.750324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349770, 14.452824, 6.665731>,  <26.710609, 14.353240, 6.524742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349770, 14.452824, 6.665731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337545, -0.101790, 0.935790,
		0.268851, 0.963150, 0.007790,
		-0.902099, 0.248959, 0.352473,
		26.079140, 14.527512, 6.771473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709028, 14.999521, 6.941944>,  <26.710609, 14.353240, 6.524742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709028, 14.999521, 6.941944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410452, 14.760473, 7.059027>,  <26.231306, 14.617044, 7.129276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410452, 14.760473, 7.059027>,  <26.709028, 14.999521, 6.941944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410452, 14.760473, 7.059027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463503, -0.151302, 0.873082,
		-0.477484, 0.787375, 0.389936,
		-0.746441, -0.597619, 0.292707,
		26.186520, 14.581187, 7.146839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495472, 15.239039, 7.644461>,  <26.709028, 14.999521, 6.941944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495472, 15.239039, 7.644461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323442, 14.878828, 7.618895>,  <26.220224, 14.662702, 7.603555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323442, 14.878828, 7.618895>,  <26.495472, 15.239039, 7.644461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323442, 14.878828, 7.618895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215577, -0.171189, 0.961364,
		-0.876677, 0.399680, 0.267757,
		-0.430075, -0.900528, -0.063916,
		26.194420, 14.608669, 7.599720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029659, 15.238700, 8.225686>,  <26.495472, 15.239039, 7.644461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029659, 15.238700, 8.225686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071035, 14.850299, 8.139472>,  <26.095861, 14.617258, 8.087744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071035, 14.850299, 8.139472>,  <26.029659, 15.238700, 8.225686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071035, 14.850299, 8.139472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083325, -0.207477, 0.974685,
		-0.991139, -0.118780, 0.059447,
		0.103439, -0.971002, -0.215536,
		26.102068, 14.558998, 8.074811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877693, 14.959457, 8.805581>,  <26.029659, 15.238700, 8.225686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877693, 14.959457, 8.805581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992418, 14.626289, 8.616274>,  <26.061253, 14.426389, 8.502689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.992418, 14.626289, 8.616274>,  <25.877693, 14.959457, 8.805581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.992418, 14.626289, 8.616274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028316, -0.486437, 0.873257,
		-0.957568, -0.263862, -0.115931,
		0.286812, -0.832920, -0.473268,
		26.078463, 14.376413, 8.474294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.438681, 14.387863, 8.955139>,  <25.877693, 14.959457, 8.805581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.438681, 14.387863, 8.955139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803274, 14.241989, 8.879033>,  <26.022030, 14.154465, 8.833369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803274, 14.241989, 8.879033>,  <25.438681, 14.387863, 8.955139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803274, 14.241989, 8.879033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075974, -0.305337, 0.949209,
		-0.404260, -0.879643, -0.250603,
		0.911483, -0.364688, -0.190265,
		26.076719, 14.132584, 8.821954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.446362, 13.715050, 9.241330>,  <25.438681, 14.387863, 8.955139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.446362, 13.715050, 9.241330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832104, 13.813561, 9.202616>,  <26.063549, 13.872668, 9.179387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832104, 13.813561, 9.202616>,  <25.446362, 13.715050, 9.241330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832104, 13.813561, 9.202616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195478, -0.416500, 0.887871,
		0.178353, -0.875142, -0.449796,
		0.964354, 0.246280, -0.096787,
		26.121410, 13.887445, 9.173579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.784624, 13.194274, 9.442384>,  <25.446362, 13.715050, 9.241330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.784624, 13.194274, 9.442384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064831, 13.478136, 9.472489>,  <26.232954, 13.648454, 9.490553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064831, 13.478136, 9.472489>,  <25.784624, 13.194274, 9.442384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064831, 13.478136, 9.472489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257245, -0.349483, 0.900936,
		0.665659, -0.611759, -0.427374,
		0.700517, 0.709656, 0.075265,
		26.274986, 13.691032, 9.495069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271433, 12.781744, 9.592266>,  <25.784624, 13.194274, 9.442384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271433, 12.781744, 9.592266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395912, 13.146635, 9.698845>,  <26.470600, 13.365570, 9.762793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395912, 13.146635, 9.698845>,  <26.271433, 12.781744, 9.592266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395912, 13.146635, 9.698845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197601, -0.336353, 0.920772,
		0.929575, -0.233893, -0.284930,
		0.311199, 0.912229, 0.266447,
		26.489271, 13.420303, 9.778779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716682, 12.622116, 10.063369>,  <26.271433, 12.781744, 9.592266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716682, 12.622116, 10.063369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624699, 13.000891, 10.153194>,  <26.569508, 13.228155, 10.207090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.624699, 13.000891, 10.153194>,  <26.716682, 12.622116, 10.063369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624699, 13.000891, 10.153194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039266, -0.221533, 0.974362,
		0.972407, 0.232884, 0.013762,
		-0.229962, 0.946936, 0.224565,
		26.555710, 13.284971, 10.220564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235277, 13.108343, 10.482133>,  <26.716682, 12.622116, 10.063369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235277, 13.108343, 10.482133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840517, 13.154330, 10.527411>,  <26.603661, 13.181923, 10.554579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840517, 13.154330, 10.527411>,  <27.235277, 13.108343, 10.482133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840517, 13.154330, 10.527411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061797, -0.378738, 0.923439,
		0.149038, 0.918335, 0.366671,
		-0.986899, 0.114968, 0.113197,
		26.544447, 13.188821, 10.561371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082676, 13.547709, 11.175529>,  <27.235277, 13.108343, 10.482133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082676, 13.547709, 11.175529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800205, 13.288702, 11.060962>,  <26.630722, 13.133298, 10.992222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.800205, 13.288702, 11.060962>,  <27.082676, 13.547709, 11.175529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800205, 13.288702, 11.060962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028770, -0.377949, 0.925379,
		-0.707449, 0.661723, 0.248271,
		-0.706179, -0.647516, -0.286417,
		26.588352, 13.094447, 10.975037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.675730, 14.016133, 11.736597>,  <27.082676, 13.547709, 11.175529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.675730, 14.016133, 11.736597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655645, 14.158230, 11.363227>,  <26.643595, 14.243487, 11.139205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.655645, 14.158230, 11.363227>,  <26.675730, 14.016133, 11.736597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.655645, 14.158230, 11.363227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982137, 0.187261, 0.018439,
		0.181344, -0.915826, -0.358298,
		-0.050209, 0.355242, -0.933425,
		26.640583, 14.264802, 11.083200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724794, 13.322917, 12.027825>,  <26.675730, 14.016133, 11.736597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724794, 13.322917, 12.027825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008240, 13.526118, 12.223704>,  <27.178307, 13.648039, 12.341231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.008240, 13.526118, 12.223704>,  <26.724794, 13.322917, 12.027825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.008240, 13.526118, 12.223704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702738, 0.570533, 0.425031,
		-0.063471, -0.645311, 0.761279,
		0.708611, 0.508003, 0.489697,
		27.220823, 13.678519, 12.370613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628506, 13.246545, 12.758007>,  <26.724794, 13.322917, 12.027825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628506, 13.246545, 12.758007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796236, 13.597170, 12.663516>,  <26.896873, 13.807545, 12.606821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.796236, 13.597170, 12.663516>,  <26.628506, 13.246545, 12.758007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.796236, 13.597170, 12.663516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711775, 0.478956, 0.513787,
		0.563509, -0.047304, 0.824755,
		0.419326, 0.876563, -0.236226,
		26.922033, 13.860139, 12.592648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629269, 13.671249, 13.400585>,  <26.628506, 13.246545, 12.758007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629269, 13.671249, 13.400585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671926, 13.927657, 13.096553>,  <26.697521, 14.081502, 12.914134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671926, 13.927657, 13.096553>,  <26.629269, 13.671249, 13.400585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671926, 13.927657, 13.096553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630861, 0.634488, 0.446586,
		0.768532, 0.431880, 0.472058,
		0.106644, 0.641019, -0.760080,
		26.703920, 14.119963, 12.868528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282114, 14.123916, 13.513975>,  <26.629269, 13.671249, 13.400585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282114, 14.123916, 13.513975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267897, 13.920599, 13.858155>,  <27.259365, 13.798609, 14.064663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.267897, 13.920599, 13.858155>,  <27.282114, 14.123916, 13.513975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267897, 13.920599, 13.858155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659519, 0.634953, 0.402330,
		-0.750847, 0.581784, 0.312659,
		-0.035545, -0.508292, 0.860451,
		27.257233, 13.768111, 14.116290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133772, 14.513481, 14.112659>,  <27.282114, 14.123916, 13.513975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133772, 14.513481, 14.112659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344250, 14.209188, 14.264661>,  <27.470537, 14.026611, 14.355862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.344250, 14.209188, 14.264661>,  <27.133772, 14.513481, 14.112659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344250, 14.209188, 14.264661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519297, 0.641334, 0.564820,
		-0.673387, -0.099870, 0.732513,
		0.526194, -0.760734, 0.380004,
		27.502108, 13.980968, 14.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069820, 14.484288, 14.895548>,  <27.133772, 14.513481, 14.112659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069820, 14.484288, 14.895548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376362, 14.385759, 14.658221>,  <27.560287, 14.326642, 14.515825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376362, 14.385759, 14.658221>,  <27.069820, 14.484288, 14.895548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376362, 14.385759, 14.658221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574831, 0.675285, 0.462125,
		0.286826, -0.695209, 0.659102,
		0.766356, -0.246323, -0.593316,
		27.606268, 14.311863, 14.480227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.624735, 15.129180, 14.902040>,  <27.069820, 14.484288, 14.895548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.624735, 15.129180, 14.902040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783670, 15.489196, 14.973649>,  <26.879032, 15.705205, 15.016615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.783670, 15.489196, 14.973649>,  <26.624735, 15.129180, 14.902040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.783670, 15.489196, 14.973649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772986, -0.223119, -0.593894,
		-0.494584, 0.374361, -0.784373,
		0.397339, 0.900040, 0.179024,
		26.902872, 15.759208, 15.027356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<16.241613, 22.589975, 19.562914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.851687, 22.510466, 19.603361>,  <15.617732, 22.462759, 19.627630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.851687, 22.510466, 19.603361>,  <16.241613, 22.589975, 19.562914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.851687, 22.510466, 19.603361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036685, -0.590154, -0.806457,
		0.219980, -0.782437, 0.582582,
		-0.974815, -0.198776, 0.101118,
		15.559243, 22.450832, 19.633698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.190931, 21.833151, 19.507008>,  <16.241613, 22.589975, 19.562914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.190931, 21.833151, 19.507008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815956, 21.963961, 19.459240>,  <15.590970, 22.042446, 19.430580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.815956, 21.963961, 19.459240>,  <16.190931, 21.833151, 19.507008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815956, 21.963961, 19.459240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059101, -0.487517, -0.871111,
		-0.343092, -0.809557, 0.476346,
		-0.937441, 0.327024, -0.119417,
		15.534724, 22.062069, 19.423414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693629, 21.179855, 19.529499>,  <16.190931, 21.833151, 19.507008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693629, 21.179855, 19.529499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.458195, 21.456764, 19.362488>,  <15.316934, 21.622910, 19.262281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.458195, 21.456764, 19.362488>,  <15.693629, 21.179855, 19.529499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.458195, 21.456764, 19.362488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248901, -0.646550, -0.721125,
		-0.769165, -0.320522, 0.552858,
		-0.588587, 0.692270, -0.417526,
		15.281619, 21.664446, 19.237230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.060433, 20.941145, 19.560059>,  <15.693629, 21.179855, 19.529499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.060433, 20.941145, 19.560059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.059139, 21.199944, 19.255064>,  <15.058363, 21.355223, 19.072067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.059139, 21.199944, 19.255064>,  <15.060433, 20.941145, 19.560059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059139, 21.199944, 19.255064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389089, -0.703220, -0.595056,
		-0.921194, 0.294749, 0.254015,
		-0.003236, 0.646997, -0.762486,
		15.058168, 21.394043, 19.026318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.296215, 20.927370, 19.404949>,  <15.060433, 20.941145, 19.560059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.296215, 20.927370, 19.404949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.515650, 21.073881, 19.104311>,  <14.647310, 21.161787, 18.923929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.515650, 21.073881, 19.104311>,  <14.296215, 20.927370, 19.404949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.515650, 21.073881, 19.104311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405556, -0.669529, -0.622298,
		-0.731148, 0.646198, -0.218748,
		0.548586, 0.366278, -0.751594,
		14.680225, 21.183765, 18.878832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920751, 20.726675, 18.770662>,  <14.296215, 20.927370, 19.404949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920751, 20.726675, 18.770662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.253123, 20.870104, 18.600496>,  <14.452547, 20.956161, 18.498396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.253123, 20.870104, 18.600496>,  <13.920751, 20.726675, 18.770662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253123, 20.870104, 18.600496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160370, -0.577809, -0.800261,
		-0.532761, 0.733186, -0.422615,
		0.830932, 0.358573, -0.425415,
		14.502403, 20.977676, 18.472872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.756851, 20.953140, 18.110897>,  <13.920751, 20.726675, 18.770662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.756851, 20.953140, 18.110897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.142864, 20.848314, 18.113247>,  <14.374472, 20.785418, 18.114656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.142864, 20.848314, 18.113247>,  <13.756851, 20.953140, 18.110897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142864, 20.848314, 18.113247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189881, -0.714317, -0.673570,
		0.180718, 0.648900, -0.739100,
		0.965032, -0.262067, 0.005876,
		14.432374, 20.769693, 18.115009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.992546, 20.917837, 17.414930>,  <13.756851, 20.953140, 18.110897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.992546, 20.917837, 17.414930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.198453, 20.673714, 17.655775>,  <14.321998, 20.527241, 17.800282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.198453, 20.673714, 17.655775>,  <13.992546, 20.917837, 17.414930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198453, 20.673714, 17.655775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169690, -0.760947, -0.626230,
		0.840369, 0.220191, -0.495274,
		0.514768, -0.610307, 0.602112,
		14.352883, 20.490622, 17.836409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473742, 20.551105, 16.933321>,  <13.992546, 20.917837, 17.414930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473742, 20.551105, 16.933321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.466776, 20.335617, 17.270243>,  <14.462596, 20.206324, 17.472395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.466776, 20.335617, 17.270243>,  <14.473742, 20.551105, 16.933321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.466776, 20.335617, 17.270243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025483, -0.841918, -0.539003,
		0.999523, -0.030852, 0.000934,
		-0.017416, -0.538722, 0.842303,
		14.461551, 20.174000, 17.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983426, 19.957905, 16.862242>,  <14.473742, 20.551105, 16.933321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983426, 19.957905, 16.862242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.717422, 19.860994, 17.144821>,  <14.557820, 19.802849, 17.314369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.717422, 19.860994, 17.144821>,  <14.983426, 19.957905, 16.862242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717422, 19.860994, 17.144821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148235, -0.884280, -0.442804,
		0.731977, -0.399188, 0.552140,
		-0.665008, -0.242276, 0.706447,
		14.517920, 19.788311, 17.356754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138984, 19.502003, 17.374609>,  <14.983426, 19.957905, 16.862242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.138984, 19.502003, 17.374609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.745644, 19.440794, 17.335403>,  <14.509640, 19.404070, 17.311880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.745644, 19.440794, 17.335403>,  <15.138984, 19.502003, 17.374609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.745644, 19.440794, 17.335403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180396, -0.886995, -0.425084,
		-0.021893, -0.435688, 0.899831,
		-0.983350, -0.153020, -0.098016,
		14.450639, 19.394888, 17.305998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.115011, 18.835636, 17.457729>,  <15.138984, 19.502003, 17.374609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.115011, 18.835636, 17.457729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.780910, 18.939861, 17.264044>,  <14.580450, 19.002398, 17.147833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.780910, 18.939861, 17.264044>,  <15.115011, 18.835636, 17.457729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.780910, 18.939861, 17.264044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094779, -0.799196, -0.593551,
		-0.541639, -0.541657, 0.642833,
		-0.835251, 0.260563, -0.484213,
		14.530335, 19.018030, 17.118780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.667394, 18.217243, 17.350025>,  <15.115011, 18.835636, 17.457729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.667394, 18.217243, 17.350025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.545051, 18.494835, 17.089306>,  <14.471645, 18.661390, 16.932875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.545051, 18.494835, 17.089306>,  <14.667394, 18.217243, 17.350025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.545051, 18.494835, 17.089306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030731, -0.691446, -0.721774,
		-0.951582, -0.200729, 0.232810,
		-0.305856, 0.693982, -0.651799,
		14.453294, 18.703030, 16.893766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.206944, 17.879330, 16.971447>,  <14.667394, 18.217243, 17.350025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.206944, 17.879330, 16.971447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.285240, 18.190512, 16.732628>,  <14.332217, 18.377222, 16.589336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.285240, 18.190512, 16.732628>,  <14.206944, 17.879330, 16.971447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285240, 18.190512, 16.732628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081245, -0.619599, -0.780703,
		-0.977285, 0.104307, -0.184485,
		0.195740, 0.777957, -0.597050,
		14.343962, 18.423899, 16.553513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.750799, 17.896194, 16.433836>,  <14.206944, 17.879330, 16.971447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.750799, 17.896194, 16.433836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.088431, 18.068171, 16.305660>,  <14.291011, 18.171356, 16.228754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.088431, 18.068171, 16.305660>,  <13.750799, 17.896194, 16.433836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.088431, 18.068171, 16.305660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054145, -0.662877, -0.746768,
		-0.533477, 0.612982, -0.582800,
		0.844080, 0.429940, -0.320440,
		14.341655, 18.197153, 16.209528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752957, 17.961832, 15.607558>,  <13.750799, 17.896194, 16.433836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752957, 17.961832, 15.607558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.131966, 17.963375, 15.735427>,  <14.359370, 17.964302, 15.812148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.131966, 17.963375, 15.735427>,  <13.752957, 17.961832, 15.607558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131966, 17.963375, 15.735427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252144, -0.623751, -0.739836,
		0.196540, 0.781613, -0.591991,
		0.947521, 0.003860, 0.319671,
		14.416222, 17.964533, 15.831328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.114931, 17.828997, 15.118326>,  <13.752957, 17.961832, 15.607558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.114931, 17.828997, 15.118326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.429333, 17.748848, 15.352266>,  <14.617973, 17.700758, 15.492630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.429333, 17.748848, 15.352266>,  <14.114931, 17.828997, 15.118326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.429333, 17.748848, 15.352266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385607, -0.580543, -0.717131,
		0.483224, 0.789189, -0.379044,
		0.786004, -0.200373, 0.584849,
		14.665133, 17.688736, 15.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.693398, 17.762989, 14.693417>,  <14.114931, 17.828997, 15.118326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.693398, 17.762989, 14.693417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830444, 17.600294, 15.032162>,  <14.912673, 17.502678, 15.235409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.830444, 17.600294, 15.032162>,  <14.693398, 17.762989, 14.693417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.830444, 17.600294, 15.032162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410568, -0.745963, -0.524380,
		0.845013, 0.527357, -0.088588,
		0.342618, -0.406736, 0.846864,
		14.933229, 17.478273, 15.286221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.357548, 17.505684, 14.527781>,  <14.693398, 17.762989, 14.693417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.357548, 17.505684, 14.527781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.230738, 17.287657, 14.838237>,  <15.154652, 17.156839, 15.024510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.230738, 17.287657, 14.838237>,  <15.357548, 17.505684, 14.527781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.230738, 17.287657, 14.838237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332870, -0.830242, -0.447098,
		0.888083, 0.116612, 0.444645,
		-0.317026, -0.545069, 0.776140,
		15.135630, 17.124136, 15.071079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.886066, 17.059357, 14.617311>,  <15.357548, 17.505684, 14.527781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.886066, 17.059357, 14.617311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.597973, 16.879971, 14.829025>,  <15.425117, 16.772339, 14.956054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.597973, 16.879971, 14.829025>,  <15.886066, 17.059357, 14.617311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.597973, 16.879971, 14.829025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206270, -0.866887, -0.453828,
		0.662357, -0.217686, 0.716865,
		-0.720233, -0.448464, 0.529287,
		15.381903, 16.745432, 14.987811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096201, 16.350304, 14.823559>,  <15.886066, 17.059357, 14.617311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096201, 16.350304, 14.823559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.697940, 16.343519, 14.860195>,  <15.458983, 16.339449, 14.882177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.697940, 16.343519, 14.860195>,  <16.096201, 16.350304, 14.823559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.697940, 16.343519, 14.860195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022338, -0.911110, -0.411558,
		0.090432, -0.411814, 0.906770,
		-0.995652, -0.016962, 0.091592,
		15.399244, 16.338430, 14.887672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.788109, 15.748081, 15.231407>,  <16.096201, 16.350304, 14.823559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.788109, 15.748081, 15.231407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.486835, 15.872787, 14.999713>,  <15.306070, 15.947610, 14.860696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.486835, 15.872787, 14.999713>,  <15.788109, 15.748081, 15.231407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486835, 15.872787, 14.999713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107089, -0.926922, -0.359650,
		-0.649032, -0.208854, 0.731532,
		-0.753187, 0.311763, -0.579236,
		15.260879, 15.966315, 14.825942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240221, 15.260032, 14.775524>,  <15.788109, 15.748081, 15.231407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240221, 15.260032, 14.775524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.630062, 15.221900, 14.694468>,  <16.863966, 15.199021, 14.645835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.630062, 15.221900, 14.694468>,  <16.240221, 15.260032, 14.775524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.630062, 15.221900, 14.694468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181542, 0.866136, 0.465672,
		0.131122, -0.490632, 0.861445,
		0.974602, -0.095329, -0.202640,
		16.922443, 15.193301, 14.633677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481583, 15.514250, 15.377411>,  <16.240221, 15.260032, 14.775524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481583, 15.514250, 15.377411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.790009, 15.536129, 15.123649>,  <16.975063, 15.549256, 14.971392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.790009, 15.536129, 15.123649>,  <16.481583, 15.514250, 15.377411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790009, 15.536129, 15.123649> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228386, 0.906258, 0.355720,
		0.594392, -0.419171, 0.686290,
		0.771063, 0.054698, -0.634406,
		17.021328, 15.552539, 14.933327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775455, 16.118145, 15.615709>,  <16.481583, 15.514250, 15.377411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.775455, 16.118145, 15.615709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.032442, 16.035574, 15.320516>,  <17.186634, 15.986031, 15.143399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.032442, 16.035574, 15.320516>,  <16.775455, 16.118145, 15.615709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032442, 16.035574, 15.320516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423553, 0.898221, 0.117482,
		0.638622, -0.388054, 0.664512,
		0.642468, -0.206429, -0.737985,
		17.225182, 15.973645, 15.099120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439857, 16.147947, 15.877619>,  <16.775455, 16.118145, 15.615709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439857, 16.147947, 15.877619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374331, 16.249998, 15.496447>,  <17.335014, 16.311228, 15.267743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.374331, 16.249998, 15.496447>,  <17.439857, 16.147947, 15.877619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.374331, 16.249998, 15.496447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167954, 0.959089, 0.227902,
		0.972088, -0.122714, -0.199964,
		-0.163817, 0.255125, -0.952930,
		17.325186, 16.326536, 15.210567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064051, 16.398262, 15.641497>,  <17.439857, 16.147947, 15.877619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064051, 16.398262, 15.641497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.780363, 16.554403, 15.406676>,  <17.610149, 16.648088, 15.265784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.780363, 16.554403, 15.406676>,  <18.064051, 16.398262, 15.641497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780363, 16.554403, 15.406676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354360, 0.917262, 0.181822,
		0.609455, -0.079076, -0.788867,
		-0.709220, 0.390355, -0.587051,
		17.567596, 16.671511, 15.230561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.341280, 17.022688, 15.310308>,  <18.064051, 16.398262, 15.641497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.341280, 17.022688, 15.310308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944374, 17.063438, 15.281940>,  <17.706230, 17.087889, 15.264919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944374, 17.063438, 15.281940>,  <18.341280, 17.022688, 15.310308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944374, 17.063438, 15.281940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075847, 0.949877, 0.303284,
		0.098263, 0.295559, -0.950257,
		-0.992266, 0.101876, -0.070921,
		17.646694, 17.094002, 15.260664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.328501, 17.623611, 14.996167>,  <18.341280, 17.022688, 15.310308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.328501, 17.623611, 14.996167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.992504, 17.556311, 15.202509>,  <17.790907, 17.515930, 15.326314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.992504, 17.556311, 15.202509>,  <18.328501, 17.623611, 14.996167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992504, 17.556311, 15.202509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122442, 0.867409, 0.482297,
		-0.528605, 0.468287, -0.708014,
		-0.839991, -0.168253, 0.515855,
		17.740507, 17.505835, 15.357265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878010, 18.267082, 15.130684>,  <18.328501, 17.623611, 14.996167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878010, 18.267082, 15.130684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.746174, 18.003592, 15.401225>,  <17.667072, 17.845497, 15.563550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.746174, 18.003592, 15.401225>,  <17.878010, 18.267082, 15.130684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.746174, 18.003592, 15.401225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051149, 0.727787, 0.683893,
		-0.942738, 0.190808, -0.273562,
		-0.329588, -0.658725, 0.676353,
		17.647297, 17.805975, 15.604131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.329580, 18.643362, 15.358497>,  <17.878010, 18.267082, 15.130684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.329580, 18.643362, 15.358497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.439865, 18.347561, 15.604137>,  <17.506037, 18.170080, 15.751522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.439865, 18.347561, 15.604137>,  <17.329580, 18.643362, 15.358497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.439865, 18.347561, 15.604137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029732, 0.645119, 0.763503,
		-0.960780, -0.192249, 0.199854,
		0.275712, -0.739501, 0.614102,
		17.522579, 18.125711, 15.788368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840250, 18.674809, 16.011230>,  <17.329580, 18.643362, 15.358497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840250, 18.674809, 16.011230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.161367, 18.465702, 16.125940>,  <17.354038, 18.340239, 16.194765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.161367, 18.465702, 16.125940>,  <16.840250, 18.674809, 16.011230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161367, 18.465702, 16.125940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105662, 0.598072, 0.794447,
		-0.586819, -0.607476, 0.535365,
		0.802794, -0.522764, 0.286773,
		17.402206, 18.308872, 16.211973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711155, 18.480576, 16.700397>,  <16.840250, 18.674809, 16.011230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711155, 18.480576, 16.700397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.109568, 18.478073, 16.664892>,  <17.348616, 18.476572, 16.643589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.109568, 18.478073, 16.664892>,  <16.711155, 18.480576, 16.700397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109568, 18.478073, 16.664892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074106, 0.610542, 0.788509,
		0.049261, -0.791959, 0.608583,
		0.996033, -0.006257, -0.088765,
		17.408377, 18.476196, 16.638262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.978291, 18.454170, 17.354044>,  <16.711155, 18.480576, 16.700397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.978291, 18.454170, 17.354044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.295843, 18.587225, 17.150433>,  <17.486374, 18.667057, 17.028267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.295843, 18.587225, 17.150433>,  <16.978291, 18.454170, 17.354044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.295843, 18.587225, 17.150433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120259, 0.734690, 0.667658,
		0.596065, -0.591255, 0.543253,
		0.793879, 0.332637, -0.509027,
		17.534006, 18.687016, 16.997725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.437117, 18.604046, 17.787567>,  <16.978291, 18.454170, 17.354044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.437117, 18.604046, 17.787567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564844, 18.825638, 17.480024>,  <17.641479, 18.958593, 17.295498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.564844, 18.825638, 17.480024>,  <17.437117, 18.604046, 17.787567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564844, 18.825638, 17.480024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450251, 0.625216, 0.637479,
		0.833853, -0.549737, -0.049789,
		0.319317, 0.553981, -0.768858,
		17.660639, 18.991833, 17.249367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280872, 18.743214, 17.802925>,  <17.437117, 18.604046, 17.787567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280872, 18.743214, 17.802925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.084095, 19.036640, 17.615362>,  <17.966028, 19.212696, 17.502825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.084095, 19.036640, 17.615362>,  <18.280872, 18.743214, 17.802925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.084095, 19.036640, 17.615362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466258, 0.676821, 0.569664,
		0.735252, 0.061610, -0.674988,
		-0.491943, 0.733565, -0.468908,
		17.936512, 19.256710, 17.474689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662649, 19.307869, 18.022350>,  <18.280872, 18.743214, 17.802925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662649, 19.307869, 18.022350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.332829, 19.468781, 17.863211>,  <18.134935, 19.565329, 17.767727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.332829, 19.468781, 17.863211>,  <18.662649, 19.307869, 18.022350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.332829, 19.468781, 17.863211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124232, 0.814748, 0.566349,
		0.551979, 0.417559, -0.721778,
		-0.824552, 0.402281, -0.397850,
		18.085463, 19.589464, 17.743856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876040, 19.959757, 17.821503>,  <18.662649, 19.307869, 18.022350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876040, 19.959757, 17.821503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.479490, 19.995033, 17.860279>,  <18.241560, 20.016199, 17.883545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.479490, 19.995033, 17.860279>,  <18.876040, 19.959757, 17.821503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.479490, 19.995033, 17.860279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125859, 0.846916, 0.516617,
		-0.036541, 0.524363, -0.850711,
		-0.991375, 0.088191, 0.096943,
		18.182077, 20.021490, 17.889362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.688286, 20.733116, 17.703257>,  <18.876040, 19.959757, 17.821503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.688286, 20.733116, 17.703257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.376801, 20.567282, 17.891607>,  <18.189909, 20.467781, 18.004618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.376801, 20.567282, 17.891607>,  <18.688286, 20.733116, 17.703257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376801, 20.567282, 17.891607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100473, 0.658445, 0.745892,
		-0.619282, 0.628147, -0.471085,
		-0.778714, -0.414586, 0.470875,
		18.143187, 20.442905, 18.032869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.378956, 21.294670, 17.905296>,  <18.688286, 20.733116, 17.703257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.378956, 21.294670, 17.905296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.218344, 21.004765, 18.129257>,  <18.121977, 20.830822, 18.263634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.218344, 21.004765, 18.129257>,  <18.378956, 21.294670, 17.905296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.218344, 21.004765, 18.129257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098532, 0.573618, 0.813175,
		-0.910530, 0.381682, -0.158913,
		-0.401530, -0.724763, 0.559904,
		18.097885, 20.787336, 18.297228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.788969, 21.692656, 18.300646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.819201, 21.349876, 18.504578>,  <17.837339, 21.144209, 18.626936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.819201, 21.349876, 18.504578>,  <17.788969, 21.692656, 18.300646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.819201, 21.349876, 18.504578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334166, 0.459956, 0.822662,
		-0.939479, -0.232544, -0.251600,
		0.075580, -0.856950, 0.509827,
		17.841875, 21.092791, 18.657526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193995, 21.565596, 18.688412>,  <17.788969, 21.692656, 18.300646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.193995, 21.565596, 18.688412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.464352, 21.366177, 18.905527>,  <17.626566, 21.246525, 19.035795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.464352, 21.366177, 18.905527>,  <17.193995, 21.565596, 18.688412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464352, 21.366177, 18.905527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276277, 0.511383, 0.813731,
		-0.683255, -0.699956, 0.207904,
		0.675895, -0.498547, 0.542787,
		17.667120, 21.216612, 19.068363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843660, 21.480963, 19.280720>,  <17.193995, 21.565596, 18.688412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843660, 21.480963, 19.280720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.220715, 21.432646, 19.405199>,  <17.446947, 21.403656, 19.479887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.220715, 21.432646, 19.405199>,  <16.843660, 21.480963, 19.280720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.220715, 21.432646, 19.405199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239361, 0.405228, 0.882325,
		-0.232684, -0.906201, 0.353070,
		0.942637, -0.120791, 0.311199,
		17.503506, 21.396408, 19.498558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867962, 21.348831, 20.005781>,  <16.843660, 21.480963, 19.280720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867962, 21.348831, 20.005781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.239033, 21.478231, 19.931198>,  <17.461676, 21.555872, 19.886448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.239033, 21.478231, 19.931198>,  <16.867962, 21.348831, 20.005781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.239033, 21.478231, 19.931198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038089, 0.578743, 0.814620,
		0.371440, -0.748601, 0.549207,
		0.927676, 0.323501, -0.186455,
		17.517336, 21.575281, 19.875261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212519, 21.275784, 20.646982>,  <16.867962, 21.348831, 20.005781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.212519, 21.275784, 20.646982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.395960, 21.555748, 20.427965>,  <17.506025, 21.723726, 20.296555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.395960, 21.555748, 20.427965>,  <17.212519, 21.275784, 20.646982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.395960, 21.555748, 20.427965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037501, 0.600366, 0.798845,
		0.887849, -0.386887, 0.249083,
		0.458604, 0.699914, -0.547543,
		17.533541, 21.765722, 20.263702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.623877, 21.591093, 21.146351>,  <17.212519, 21.275784, 20.646982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.623877, 21.591093, 21.146351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.644207, 21.853516, 20.845152>,  <17.656404, 22.010969, 20.664433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.644207, 21.853516, 20.845152>,  <17.623877, 21.591093, 21.146351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.644207, 21.853516, 20.845152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030580, 0.752597, 0.657771,
		0.998239, -0.056457, 0.018188,
		0.050824, 0.656057, -0.752998,
		17.659454, 22.050333, 20.619253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150175, 22.133795, 21.334082>,  <17.623877, 21.591093, 21.146351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150175, 22.133795, 21.334082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.990351, 22.318695, 21.017429>,  <17.894457, 22.429636, 20.827438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.990351, 22.318695, 21.017429>,  <18.150175, 22.133795, 21.334082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990351, 22.318695, 21.017429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224939, 0.886594, 0.404170,
		0.888681, -0.016579, -0.458225,
		-0.399559, 0.462251, -0.791629,
		17.870483, 22.457371, 20.779942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.703917, 22.554382, 20.967754>,  <18.150175, 22.133795, 21.334082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.703917, 22.554382, 20.967754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.328022, 22.686886, 20.933910>,  <18.102486, 22.766388, 20.913605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.328022, 22.686886, 20.933910>,  <18.703917, 22.554382, 20.967754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.328022, 22.686886, 20.933910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291092, 0.905015, 0.310182,
		0.179324, 0.266861, -0.946905,
		-0.939739, 0.331260, -0.084610,
		18.046101, 22.786264, 20.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.769459, 23.284910, 20.796055>,  <18.703917, 22.554382, 20.967754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.769459, 23.284910, 20.796055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.383461, 23.247303, 20.893990>,  <18.151861, 23.224739, 20.952751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.383461, 23.247303, 20.893990>,  <18.769459, 23.284910, 20.796055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383461, 23.247303, 20.893990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016764, 0.909519, 0.415324,
		-0.261730, 0.404890, -0.876106,
		-0.964995, -0.094016, 0.244836,
		18.093962, 23.219099, 20.967440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457794, 23.950581, 20.595259>,  <18.769459, 23.284910, 20.796055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457794, 23.950581, 20.595259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.214125, 23.786295, 20.866617>,  <18.067924, 23.687723, 21.029432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.214125, 23.786295, 20.866617>,  <18.457794, 23.950581, 20.595259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.214125, 23.786295, 20.866617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045278, 0.836033, 0.546808,
		-0.791745, 0.363816, -0.490691,
		-0.609171, -0.410715, 0.678398,
		18.031374, 23.663080, 21.070137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.038675, 24.464720, 20.650894>,  <18.457794, 23.950581, 20.595259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.038675, 24.464720, 20.650894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.959585, 24.232925, 20.967148>,  <17.912130, 24.093849, 21.156900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.959585, 24.232925, 20.967148>,  <18.038675, 24.464720, 20.650894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.959585, 24.232925, 20.967148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103420, 0.814388, 0.571031,
		-0.974787, 0.031140, -0.220955,
		-0.197725, -0.579485, 0.790634,
		17.900267, 24.059080, 21.204338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449259, 24.728344, 21.060251>,  <18.038675, 24.464720, 20.650894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449259, 24.728344, 21.060251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.684275, 24.494347, 21.283886>,  <17.825285, 24.353949, 21.418066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.684275, 24.494347, 21.283886>,  <17.449259, 24.728344, 21.060251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684275, 24.494347, 21.283886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147365, 0.756717, 0.636917,
		-0.795663, -0.291824, 0.530809,
		0.587540, -0.584994, 0.559087,
		17.860537, 24.318848, 21.451612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.272797, 24.996693, 21.673052>,  <17.449259, 24.728344, 21.060251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.272797, 24.996693, 21.673052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.600445, 24.792479, 21.777666>,  <17.797033, 24.669950, 21.840435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.600445, 24.792479, 21.777666>,  <17.272797, 24.996693, 21.673052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600445, 24.792479, 21.777666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187287, 0.668973, 0.719304,
		-0.542189, -0.540213, 0.643585,
		0.819118, -0.510534, 0.261535,
		17.846180, 24.639318, 21.856127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.206686, 24.827856, 22.332960>,  <17.272797, 24.996693, 21.673052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.206686, 24.827856, 22.332960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.605349, 24.813120, 22.303776>,  <17.844545, 24.804277, 22.286266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.605349, 24.813120, 22.303776>,  <17.206686, 24.827856, 22.332960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605349, 24.813120, 22.303776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078573, 0.677703, 0.731126,
		0.022509, -0.734412, 0.678330,
		0.996654, -0.036842, -0.072959,
		17.904345, 24.802067, 22.281887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653793, 24.852217, 22.977453>,  <17.206686, 24.827856, 22.332960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.653793, 24.852217, 22.977453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962347, 24.942415, 22.739422>,  <18.147480, 24.996534, 22.596603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962347, 24.942415, 22.739422>,  <17.653793, 24.852217, 22.977453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962347, 24.942415, 22.739422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463980, 0.440700, 0.768444,
		0.435546, -0.868865, 0.235313,
		0.771376, 0.225512, -0.595082,
		18.193762, 25.010065, 22.560898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222898, 24.628613, 23.347433>,  <17.653793, 24.852217, 22.977453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222898, 24.628613, 23.347433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.349419, 24.897696, 23.079876>,  <18.425331, 25.059145, 22.919342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.349419, 24.897696, 23.079876>,  <18.222898, 24.628613, 23.347433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.349419, 24.897696, 23.079876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422133, 0.531636, 0.734280,
		0.849564, -0.514615, -0.115815,
		0.316300, 0.672707, -0.668894,
		18.444309, 25.099508, 22.879208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.888847, 24.655436, 23.422363>,  <18.222898, 24.628613, 23.347433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.888847, 24.655436, 23.422363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.808674, 24.999800, 23.235319>,  <18.760571, 25.206419, 23.123093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.808674, 24.999800, 23.235319>,  <18.888847, 24.655436, 23.422363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808674, 24.999800, 23.235319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501808, 0.500145, 0.705722,
		0.841437, -0.093200, -0.532258,
		-0.200433, 0.860911, -0.467609,
		18.748545, 25.258074, 23.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462944, 25.040524, 23.624310>,  <18.888847, 24.655436, 23.422363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462944, 25.040524, 23.624310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.184488, 25.309742, 23.524391>,  <19.017414, 25.471273, 23.464439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.184488, 25.309742, 23.524391>,  <19.462944, 25.040524, 23.624310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.184488, 25.309742, 23.524391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456904, 0.683751, 0.568966,
		0.553739, 0.281946, -0.783504,
		-0.696140, 0.673045, -0.249798,
		18.975647, 25.511656, 23.449451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879740, 25.582304, 23.478249>,  <19.462944, 25.040524, 23.624310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879740, 25.582304, 23.478249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.513468, 25.721802, 23.558155>,  <19.293705, 25.805500, 23.606100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.513468, 25.721802, 23.558155>,  <19.879740, 25.582304, 23.478249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.513468, 25.721802, 23.558155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399551, 0.736178, 0.546261,
		0.043440, 0.580018, -0.813445,
		-0.915681, 0.348742, 0.199767,
		19.238764, 25.826424, 23.618086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.013248, 26.250565, 23.672636>,  <19.879740, 25.582304, 23.478249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.013248, 26.250565, 23.672636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.630167, 26.208086, 23.779617>,  <19.400318, 26.182600, 23.843805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.630167, 26.208086, 23.779617>,  <20.013248, 26.250565, 23.672636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630167, 26.208086, 23.779617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083169, 0.787606, 0.610540,
		-0.275484, 0.606959, -0.745459,
		-0.957701, -0.106194, 0.267453,
		19.342857, 26.176228, 23.859854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.676847, 26.889196, 23.537676>,  <20.013248, 26.250565, 23.672636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.676847, 26.889196, 23.537676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.471682, 26.689613, 23.817093>,  <19.348581, 26.569864, 23.984743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.471682, 26.689613, 23.817093>,  <19.676847, 26.889196, 23.537676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.471682, 26.689613, 23.817093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089388, 0.778267, 0.621539,
		-0.853773, 0.381237, -0.354583,
		-0.512914, -0.498958, 0.698541,
		19.317808, 26.539927, 24.026655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.090340, 27.290815, 23.693502>,  <19.676847, 26.889196, 23.537676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.090340, 27.290815, 23.693502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.080652, 27.047722, 24.011011>,  <19.074841, 26.901865, 24.201517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.080652, 27.047722, 24.011011>,  <19.090340, 27.290815, 23.693502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080652, 27.047722, 24.011011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247482, 0.772935, 0.584230,
		-0.968590, -0.182297, -0.169121,
		-0.024216, -0.607733, 0.793772,
		19.073387, 26.865402, 24.249144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.573734, 27.564817, 24.128691>,  <19.090340, 27.290815, 23.693502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.573734, 27.564817, 24.128691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.827702, 27.354193, 24.354830>,  <18.980082, 27.227818, 24.490513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.827702, 27.354193, 24.354830>,  <18.573734, 27.564817, 24.128691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.827702, 27.354193, 24.354830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056743, 0.698004, 0.713842,
		-0.770494, -0.485310, 0.413296,
		0.634917, -0.526560, 0.565346,
		19.018177, 27.196224, 24.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352060, 27.451405, 24.902008>,  <18.573734, 27.564817, 24.128691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352060, 27.451405, 24.902008> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.751509, 27.441471, 24.883488>,  <18.991177, 27.435511, 24.872375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.751509, 27.441471, 24.883488>,  <18.352060, 27.451405, 24.902008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.751509, 27.441471, 24.883488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046458, 0.828931, 0.557419,
		0.024539, -0.558800, 0.828940,
		0.998619, -0.024833, -0.046302,
		19.051094, 27.434021, 24.869596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514746, 26.803387, 25.235018>,  <18.352060, 27.451405, 24.902008>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514746, 26.803387, 25.235018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187275, 26.865910, 25.456045>,  <17.990791, 26.903423, 25.588661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.187275, 26.865910, 25.456045>,  <18.514746, 26.803387, 25.235018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.187275, 26.865910, 25.456045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438045, -0.792192, -0.424911,
		0.371325, -0.589916, 0.717020,
		-0.818679, 0.156307, 0.552570,
		17.941671, 26.912802, 25.621817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.281685, 26.142328, 25.512369>,  <18.514746, 26.803387, 25.235018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.281685, 26.142328, 25.512369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.969017, 26.391037, 25.492792>,  <17.781416, 26.540262, 25.481047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.969017, 26.391037, 25.492792>,  <18.281685, 26.142328, 25.512369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.969017, 26.391037, 25.492792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501804, -0.673565, -0.542682,
		-0.370390, -0.399638, 0.838511,
		-0.781668, 0.621772, -0.048942,
		17.734516, 26.577568, 25.478109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.609943, 25.639523, 25.693226>,  <18.281685, 26.142328, 25.512369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.609943, 25.639523, 25.693226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.443270, 25.966507, 25.534163>,  <17.343266, 26.162697, 25.438725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.443270, 25.966507, 25.534163>,  <17.609943, 25.639523, 25.693226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.443270, 25.966507, 25.534163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752524, -0.555591, -0.353590,
		-0.509980, 0.151909, 0.846666,
		-0.416687, 0.817461, -0.397655,
		17.318264, 26.211744, 25.414865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.822304, 25.624136, 25.880228>,  <17.609943, 25.639523, 25.693226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.822304, 25.624136, 25.880228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.885124, 25.834801, 25.546051>,  <16.922815, 25.961199, 25.345545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.885124, 25.834801, 25.546051>,  <16.822304, 25.624136, 25.880228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.885124, 25.834801, 25.546051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649139, -0.582478, -0.489222,
		-0.744281, 0.619149, 0.250400,
		0.157049, 0.526662, -0.835441,
		16.932240, 25.992800, 25.295418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091349, 25.810595, 25.558964>,  <16.822304, 25.624136, 25.880228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091349, 25.810595, 25.558964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.369728, 25.885799, 25.281746>,  <16.536755, 25.930923, 25.115416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.369728, 25.885799, 25.281746>,  <16.091349, 25.810595, 25.558964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369728, 25.885799, 25.281746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574445, -0.433358, -0.694416,
		-0.430895, 0.881392, -0.193591,
		0.695947, 0.188013, -0.693043,
		16.578512, 25.942204, 25.073833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780391, 26.194315, 24.973339>,  <16.091349, 25.810595, 25.558964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780391, 26.194315, 24.973339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.091728, 25.974173, 24.852484>,  <16.278530, 25.842087, 24.779970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.091728, 25.974173, 24.852484>,  <15.780391, 26.194315, 24.973339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091728, 25.974173, 24.852484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553042, -0.373205, -0.744891,
		0.297197, 0.746876, -0.594853,
		0.778344, -0.550358, -0.302138,
		16.325232, 25.809065, 24.761843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650059, 26.202330, 24.217291>,  <15.780391, 26.194315, 24.973339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650059, 26.202330, 24.217291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.933905, 25.931725, 24.296057>,  <16.104212, 25.769361, 24.343317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.933905, 25.931725, 24.296057>,  <15.650059, 26.202330, 24.217291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933905, 25.931725, 24.296057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392897, -0.611922, -0.686428,
		0.584874, 0.409733, -0.700029,
		0.709616, -0.676514, 0.196914,
		16.146790, 25.728771, 24.355131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.712079, 25.952772, 23.553808>,  <15.650059, 26.202330, 24.217291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.712079, 25.952772, 23.553808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.893732, 25.670559, 23.771427>,  <16.002724, 25.501230, 23.901999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.893732, 25.670559, 23.771427>,  <15.712079, 25.952772, 23.553808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.893732, 25.670559, 23.771427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263926, -0.689774, -0.674207,
		0.850945, 0.162591, -0.499457,
		0.454132, -0.705533, 0.544048,
		16.029972, 25.458899, 23.934641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236589, 25.590132, 23.109303>,  <15.712079, 25.952772, 23.553808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236589, 25.590132, 23.109303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.143726, 25.342361, 23.409281>,  <16.088009, 25.193699, 23.589268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.143726, 25.342361, 23.409281>,  <16.236589, 25.590132, 23.109303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143726, 25.342361, 23.409281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315681, -0.681293, -0.660444,
		0.920026, -0.390070, -0.037373,
		-0.232157, -0.619424, 0.749945,
		16.074080, 25.156534, 23.634264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612089, 24.993631, 22.975801>,  <16.236589, 25.590132, 23.109303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612089, 24.993631, 22.975801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.306915, 24.862709, 23.198799>,  <16.123812, 24.784157, 23.332598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.306915, 24.862709, 23.198799>,  <16.612089, 24.993631, 22.975801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.306915, 24.862709, 23.198799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243990, -0.652803, -0.717159,
		0.598664, -0.683170, 0.418187,
		-0.762935, -0.327304, 0.557496,
		16.078035, 24.764519, 23.366049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708092, 24.287617, 23.023159>,  <16.612089, 24.993631, 22.975801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708092, 24.287617, 23.023159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.320473, 24.363525, 23.086327>,  <16.087902, 24.409069, 23.124228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.320473, 24.363525, 23.086327>,  <16.708092, 24.287617, 23.023159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320473, 24.363525, 23.086327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240780, -0.585149, -0.774355,
		-0.054544, -0.788409, 0.612729,
		-0.969046, 0.189769, 0.157917,
		16.029758, 24.420456, 23.133701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.414202, 23.651646, 23.068535>,  <16.708092, 24.287617, 23.023159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.414202, 23.651646, 23.068535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.110023, 23.894211, 22.975599>,  <15.927516, 24.039751, 22.919838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.110023, 23.894211, 22.975599>,  <16.414202, 23.651646, 23.068535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.110023, 23.894211, 22.975599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355298, -0.687991, -0.632797,
		-0.543583, -0.398660, 0.738639,
		-0.760448, 0.606415, -0.232337,
		15.881889, 24.076136, 22.905897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915006, 23.194351, 23.061714>,  <16.414202, 23.651646, 23.068535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915006, 23.194351, 23.061714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.786078, 23.509739, 22.852173>,  <15.708722, 23.698973, 22.726448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.786078, 23.509739, 22.852173>,  <15.915006, 23.194351, 23.061714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786078, 23.509739, 22.852173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410797, -0.615069, -0.673005,
		-0.852852, -0.001722, 0.522149,
		-0.322317, 0.788471, -0.523856,
		15.689384, 23.746281, 22.695017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279858, 23.003675, 22.845188>,  <15.915006, 23.194351, 23.061714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279858, 23.003675, 22.845188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.406649, 23.292442, 22.599144>,  <15.482723, 23.465702, 22.451517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.406649, 23.292442, 22.599144>,  <15.279858, 23.003675, 22.845188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406649, 23.292442, 22.599144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410659, -0.480140, -0.775129,
		-0.854918, 0.498299, 0.144268,
		0.316977, 0.721917, -0.615111,
		15.501741, 23.509018, 22.414610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.653018, 23.091347, 22.228455>,  <15.279858, 23.003675, 22.845188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.653018, 23.091347, 22.228455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.960806, 23.277521, 22.053509>,  <15.145479, 23.389225, 21.948542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.960806, 23.277521, 22.053509>,  <14.653018, 23.091347, 22.228455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960806, 23.277521, 22.053509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296800, -0.345775, -0.890140,
		-0.565530, 0.814746, -0.127923,
		0.769471, 0.465434, -0.437362,
		15.191648, 23.417150, 21.922300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406631, 23.239168, 21.610666>,  <14.653018, 23.091347, 22.228455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406631, 23.239168, 21.610666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.800476, 23.280512, 21.554302>,  <15.036783, 23.305319, 21.520483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.800476, 23.280512, 21.554302>,  <14.406631, 23.239168, 21.610666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800476, 23.280512, 21.554302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102240, -0.313230, -0.944158,
		-0.141725, 0.944036, -0.297842,
		0.984612, 0.103360, -0.140911,
		15.095860, 23.311520, 21.512030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447625, 23.563725, 20.942694>,  <14.406631, 23.239168, 21.610666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447625, 23.563725, 20.942694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808863, 23.408951, 21.017208>,  <15.025605, 23.316086, 21.061916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.808863, 23.408951, 21.017208>,  <14.447625, 23.563725, 20.942694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.808863, 23.408951, 21.017208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059197, -0.317481, -0.946415,
		0.425344, 0.865729, -0.263810,
		0.903094, -0.386935, 0.186288,
		15.079791, 23.292870, 21.073095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733620, 23.528393, 20.254942>,  <14.447625, 23.563725, 20.942694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733620, 23.528393, 20.254942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.987704, 23.297586, 20.460293>,  <15.140155, 23.159103, 20.583504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.987704, 23.297586, 20.460293>,  <14.733620, 23.528393, 20.254942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.987704, 23.297586, 20.460293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222163, -0.500104, -0.836982,
		0.739695, 0.645715, -0.189480,
		0.635212, -0.577017, 0.513379,
		15.178267, 23.124481, 20.614307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355150, 23.577406, 19.939234>,  <14.733620, 23.528393, 20.254942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355150, 23.577406, 19.939234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.311357, 23.225403, 20.124104>,  <15.285082, 23.014202, 20.235025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.311357, 23.225403, 20.124104>,  <15.355150, 23.577406, 19.939234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.311357, 23.225403, 20.124104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209096, -0.474954, -0.854809,
		0.971747, 0.003052, 0.236005,
		-0.109482, -0.880006, 0.462173,
		15.278513, 22.961401, 20.262756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.917992, 23.205473, 19.748512>,  <15.355150, 23.577406, 19.939234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.917992, 23.205473, 19.748512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.640922, 22.937632, 19.855719>,  <15.474680, 22.776926, 19.920042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.640922, 22.937632, 19.855719>,  <15.917992, 23.205473, 19.748512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640922, 22.937632, 19.855719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132042, -0.483049, -0.865580,
		0.709061, -0.564176, 0.423011,
		-0.692674, -0.669604, 0.268017,
		15.433119, 22.736750, 19.936123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<25.128361, 11.103375, 0.060517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.910536, 11.419680, 0.172336>,  <24.779840, 11.609463, 0.239428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.910536, 11.419680, 0.172336>,  <25.128361, 11.103375, 0.060517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910536, 11.419680, 0.172336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772675, 0.343354, 0.533931,
		0.326227, 0.506759, -0.797979,
		-0.544564, 0.790761, 0.279548,
		24.747168, 11.656908, 0.256201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505377, 11.775422, -0.049940>,  <25.128361, 11.103375, 0.060517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505377, 11.775422, -0.049940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.229465, 11.744809, 0.238046>,  <25.063919, 11.726441, 0.410837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.229465, 11.744809, 0.238046>,  <25.505377, 11.775422, -0.049940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.229465, 11.744809, 0.238046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721200, 0.015080, 0.692563,
		-0.063861, 0.996953, 0.044793,
		-0.689777, -0.076533, 0.719965,
		25.022532, 11.721849, 0.454035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817701, 12.120370, 0.487147>,  <25.505377, 11.775422, -0.049940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817701, 12.120370, 0.487147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.543261, 11.892523, 0.668166>,  <25.378595, 11.755815, 0.776778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.543261, 11.892523, 0.668166>,  <25.817701, 12.120370, 0.487147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.543261, 11.892523, 0.668166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628491, -0.150777, 0.763063,
		-0.366420, 0.807962, 0.461447,
		-0.686102, -0.569617, 0.452550,
		25.337431, 11.721638, 0.803931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.746113, 12.387930, 1.165702>,  <25.817701, 12.120370, 0.487147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.746113, 12.387930, 1.165702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.633469, 12.004865, 1.141783>,  <25.565882, 11.775025, 1.127432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.633469, 12.004865, 1.141783>,  <25.746113, 12.387930, 1.165702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633469, 12.004865, 1.141783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563062, -0.215392, 0.797852,
		-0.776954, 0.191012, 0.599881,
		-0.281608, -0.957664, -0.059798,
		25.548986, 11.717566, 1.123844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436363, 12.781949, 1.724744>,  <25.746113, 12.387930, 1.165702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436363, 12.781949, 1.724744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.660370, 12.580325, 1.987744>,  <25.794773, 12.459351, 2.145544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.660370, 12.580325, 1.987744>,  <25.436363, 12.781949, 1.724744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660370, 12.580325, 1.987744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637293, 0.245008, 0.730636,
		-0.529377, -0.828187, -0.184026,
		0.560016, -0.504060, 0.657500,
		25.828375, 12.429107, 2.184994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.046715, 12.326816, 2.043599>,  <25.436363, 12.781949, 1.724744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.046715, 12.326816, 2.043599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.339500, 12.407764, 2.303836>,  <25.515171, 12.456334, 2.459979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.339500, 12.407764, 2.303836>,  <25.046715, 12.326816, 2.043599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339500, 12.407764, 2.303836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680431, 0.266485, 0.682641,
		-0.035225, -0.942354, 0.332759,
		0.731965, 0.202373, 0.650594,
		25.559090, 12.468476, 2.499014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.680151, 12.052518, 2.668164>,  <25.046715, 12.326816, 2.043599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.680151, 12.052518, 2.668164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972994, 12.279812, 2.818431>,  <25.148701, 12.416188, 2.908591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.972994, 12.279812, 2.818431>,  <24.680151, 12.052518, 2.668164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972994, 12.279812, 2.818431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544116, 0.156030, 0.824374,
		0.409823, -0.807938, 0.423417,
		0.732108, 0.568235, 0.375667,
		25.192627, 12.450282, 2.931131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923925, 11.809887, 3.350961>,  <24.680151, 12.052518, 2.668164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923925, 11.809887, 3.350961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.001059, 12.202122, 3.365178>,  <25.047338, 12.437463, 3.373708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.001059, 12.202122, 3.365178>,  <24.923925, 11.809887, 3.350961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001059, 12.202122, 3.365178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289383, 0.022222, 0.956955,
		0.937589, -0.194819, 0.288050,
		0.192834, 0.980587, 0.035542,
		25.058908, 12.496298, 3.375840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.270254, 11.920121, 4.023477>,  <24.923925, 11.809887, 3.350961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.270254, 11.920121, 4.023477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139378, 12.284378, 3.922541>,  <25.060852, 12.502933, 3.861979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.139378, 12.284378, 3.922541>,  <25.270254, 11.920121, 4.023477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139378, 12.284378, 3.922541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358136, 0.127615, 0.924907,
		0.874463, 0.392993, 0.284379,
		-0.327191, 0.910643, -0.252340,
		25.041220, 12.557571, 3.846839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523617, 12.481112, 4.538788>,  <25.270254, 11.920121, 4.023477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523617, 12.481112, 4.538788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.178806, 12.571223, 4.357169>,  <24.971920, 12.625290, 4.248198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.178806, 12.571223, 4.357169>,  <25.523617, 12.481112, 4.538788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.178806, 12.571223, 4.357169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413345, 0.206011, 0.886964,
		0.293351, 0.952266, -0.084470,
		-0.862027, 0.225277, -0.454047,
		24.920198, 12.638806, 4.220955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266516, 13.073402, 4.892777>,  <25.523617, 12.481112, 4.538788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266516, 13.073402, 4.892777> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.982330, 12.828019, 4.754843>,  <24.811819, 12.680789, 4.672083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.982330, 12.828019, 4.754843>,  <25.266516, 13.073402, 4.892777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982330, 12.828019, 4.754843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478634, 0.062004, 0.875823,
		-0.515899, 0.787289, -0.337674,
		-0.710463, -0.613458, -0.344835,
		24.769192, 12.643982, 4.651392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.610697, 13.458550, 4.964643>,  <25.266516, 13.073402, 4.892777>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.610697, 13.458550, 4.964643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.535488, 13.066796, 4.935103>,  <24.490362, 12.831744, 4.917380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.535488, 13.066796, 4.935103>,  <24.610697, 13.458550, 4.964643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.535488, 13.066796, 4.935103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567591, 0.046987, 0.821969,
		-0.801554, 0.196463, -0.564724,
		-0.188021, -0.979385, -0.073848,
		24.479082, 12.772981, 4.912949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.942522, 13.397198, 5.108323>,  <24.610697, 13.458550, 4.964643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.942522, 13.397198, 5.108323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061880, 13.020437, 5.170010>,  <24.133495, 12.794381, 5.207022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.061880, 13.020437, 5.170010>,  <23.942522, 13.397198, 5.108323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.061880, 13.020437, 5.170010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643973, -0.079427, 0.760914,
		-0.704457, -0.326364, -0.630260,
		0.298394, -0.941901, 0.154217,
		24.151398, 12.737867, 5.216275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361519, 13.064216, 5.321197>,  <23.942522, 13.397198, 5.108323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361519, 13.064216, 5.321197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.673151, 12.843948, 5.441064>,  <23.860130, 12.711788, 5.512984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.673151, 12.843948, 5.441064>,  <23.361519, 13.064216, 5.321197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.673151, 12.843948, 5.441064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443577, -0.146397, 0.884199,
		-0.443031, -0.821785, -0.358319,
		0.779078, -0.550670, 0.299666,
		23.906874, 12.678747, 5.530964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.128960, 12.468508, 5.613489>,  <23.361519, 13.064216, 5.321197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.128960, 12.468508, 5.613489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494032, 12.548703, 5.755936>,  <23.713076, 12.596820, 5.841404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.494032, 12.548703, 5.755936>,  <23.128960, 12.468508, 5.613489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.494032, 12.548703, 5.755936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360031, -0.017868, 0.932769,
		0.193372, -0.979533, 0.055874,
		0.912680, 0.200488, 0.356118,
		23.767836, 12.608850, 5.862772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.294094, 11.876588, 6.019205>,  <23.128960, 12.468508, 5.613489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.294094, 11.876588, 6.019205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.483971, 12.207410, 6.139635>,  <23.597897, 12.405903, 6.211893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.483971, 12.207410, 6.139635>,  <23.294094, 11.876588, 6.019205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.483971, 12.207410, 6.139635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326592, -0.152136, 0.932841,
		0.817315, -0.541142, 0.197892,
		0.474692, 0.827055, 0.301075,
		23.626379, 12.455526, 6.229958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.786650, 11.693408, 6.577248>,  <23.294094, 11.876588, 6.019205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.786650, 11.693408, 6.577248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.718975, 12.085223, 6.620850>,  <23.678370, 12.320312, 6.647012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.718975, 12.085223, 6.620850>,  <23.786650, 11.693408, 6.577248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.718975, 12.085223, 6.620850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175378, -0.138757, 0.974674,
		0.969855, 0.145785, 0.195266,
		-0.169188, 0.979538, 0.109006,
		23.668219, 12.379085, 6.653552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.954580, 11.767591, 7.219181>,  <23.786650, 11.693408, 6.577248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.954580, 11.767591, 7.219181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792799, 12.128222, 7.157768>,  <23.695730, 12.344602, 7.120920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.792799, 12.128222, 7.157768>,  <23.954580, 11.767591, 7.219181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.792799, 12.128222, 7.157768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241385, 0.056689, 0.968772,
		0.882129, 0.428882, 0.194700,
		-0.404452, 0.901580, -0.153532,
		23.671463, 12.398697, 7.111708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.230833, 12.288563, 7.736382>,  <23.954580, 11.767591, 7.219181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.230833, 12.288563, 7.736382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880058, 12.435303, 7.612185>,  <23.669594, 12.523347, 7.537668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.880058, 12.435303, 7.612185>,  <24.230833, 12.288563, 7.736382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.880058, 12.435303, 7.612185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327604, 0.016423, 0.944672,
		0.351651, 0.930135, 0.105780,
		-0.876936, 0.366849, -0.310491,
		23.616978, 12.545358, 7.519038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.945749, 12.709077, 8.299232>,  <24.230833, 12.288563, 7.736382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.945749, 12.709077, 8.299232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.599783, 12.667679, 8.102779>,  <23.392202, 12.642839, 7.984908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.599783, 12.667679, 8.102779>,  <23.945749, 12.709077, 8.299232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.599783, 12.667679, 8.102779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495517, 0.020304, 0.868361,
		-0.079900, 0.994423, -0.068845,
		-0.864916, -0.103496, -0.491131,
		23.340309, 12.636630, 7.955440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371950, 13.281193, 8.523513>,  <23.945749, 12.709077, 8.299232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371950, 13.281193, 8.523513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.157688, 12.984761, 8.361586>,  <23.029131, 12.806903, 8.264429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.157688, 12.984761, 8.361586>,  <23.371950, 13.281193, 8.523513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.157688, 12.984761, 8.361586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696696, 0.116954, 0.707769,
		-0.477167, 0.661155, -0.578953,
		-0.535655, -0.741078, -0.404817,
		22.996992, 12.762438, 8.240140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.651384, 13.519590, 8.660959>,  <23.371950, 13.281193, 8.523513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.651384, 13.519590, 8.660959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636671, 13.126336, 8.589306>,  <22.627842, 12.890384, 8.546313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.636671, 13.126336, 8.589306>,  <22.651384, 13.519590, 8.660959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.636671, 13.126336, 8.589306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763495, -0.088007, 0.639789,
		-0.644765, 0.160303, -0.747383,
		-0.036785, -0.983137, -0.179134,
		22.625635, 12.831395, 8.535565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.974447, 13.370090, 8.790855>,  <22.651384, 13.519590, 8.660959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.974447, 13.370090, 8.790855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122204, 12.998391, 8.788181>,  <22.210857, 12.775372, 8.786576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.122204, 12.998391, 8.788181>,  <21.974447, 13.370090, 8.790855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122204, 12.998391, 8.788181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623849, -0.253311, 0.739355,
		-0.688739, -0.268941, -0.673283,
		0.369393, -0.929249, -0.006686,
		22.233023, 12.719616, 8.786176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.436010, 12.895667, 8.799515>,  <21.974447, 13.370090, 8.790855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.436010, 12.895667, 8.799515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739077, 12.672123, 8.934346>,  <21.920916, 12.537996, 9.015245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.739077, 12.672123, 8.934346>,  <21.436010, 12.895667, 8.799515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739077, 12.672123, 8.934346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610912, -0.425574, 0.667588,
		-0.229636, -0.711732, -0.663856,
		0.757663, -0.558860, 0.337078,
		21.966375, 12.504465, 9.035470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084723, 12.434404, 9.156099>,  <21.436010, 12.895667, 8.799515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084723, 12.434404, 9.156099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.454195, 12.364347, 9.292416>,  <21.675879, 12.322313, 9.374206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.454195, 12.364347, 9.292416>,  <21.084723, 12.434404, 9.156099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.454195, 12.364347, 9.292416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382977, -0.394346, 0.835356,
		-0.011917, -0.902117, -0.431326,
		0.923681, -0.175143, 0.340790,
		21.731300, 12.311805, 9.394652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.111353, 11.702475, 9.491254>,  <21.084723, 12.434404, 9.156099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.111353, 11.702475, 9.491254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.394142, 11.936915, 9.649583>,  <21.563816, 12.077579, 9.744580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.394142, 11.936915, 9.649583>,  <21.111353, 11.702475, 9.491254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394142, 11.936915, 9.649583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215390, -0.354656, 0.909849,
		0.673646, -0.728494, -0.124491,
		0.706971, 0.586102, 0.395823,
		21.606234, 12.112746, 9.768330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.472565, 11.327546, 10.093604>,  <21.111353, 11.702475, 9.491254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.472565, 11.327546, 10.093604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586546, 11.707916, 10.141843>,  <21.654934, 11.936138, 10.170786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.586546, 11.707916, 10.141843>,  <21.472565, 11.327546, 10.093604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.586546, 11.707916, 10.141843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208927, -0.061173, 0.976016,
		0.935495, -0.303314, 0.181242,
		0.284952, 0.950925, 0.120597,
		21.672031, 11.993194, 10.178022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.712536, 11.241465, 10.708724>,  <21.472565, 11.327546, 10.093604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.712536, 11.241465, 10.708724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667610, 11.635666, 10.657865>,  <21.640654, 11.872187, 10.627349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667610, 11.635666, 10.657865>,  <21.712536, 11.241465, 10.708724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667610, 11.635666, 10.657865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193032, 0.103882, 0.975678,
		0.974743, 0.134128, 0.178566,
		-0.112316, 0.985504, -0.127149,
		21.633915, 11.931317, 10.619720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200632, 11.448835, 11.135499>,  <21.712536, 11.241465, 10.708724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200632, 11.448835, 11.135499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.914751, 11.722533, 11.077519>,  <21.743223, 11.886752, 11.042731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.914751, 11.722533, 11.077519>,  <22.200632, 11.448835, 11.135499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.914751, 11.722533, 11.077519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204346, -0.006076, 0.978880,
		0.668913, 0.729227, 0.144165,
		-0.714701, 0.684245, -0.144950,
		21.700340, 11.927807, 11.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347401, 11.948506, 11.547204>,  <22.200632, 11.448835, 11.135499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347401, 11.948506, 11.547204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957443, 12.001240, 11.475425>,  <21.723469, 12.032880, 11.432357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.957443, 12.001240, 11.475425>,  <22.347401, 11.948506, 11.547204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957443, 12.001240, 11.475425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154102, 0.182265, 0.971098,
		0.160731, 0.974371, -0.157373,
		-0.974894, 0.131834, -0.179448,
		21.664974, 12.040791, 11.421590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.608536, 12.586988, 11.617743>,  <22.347401, 11.948506, 11.547204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.608536, 12.586988, 11.617743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884628, 12.722382, 11.361928>,  <23.050283, 12.803617, 11.208439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.884628, 12.722382, 11.361928>,  <22.608536, 12.586988, 11.617743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.884628, 12.722382, 11.361928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461651, 0.886587, -0.029009,
		0.557188, 0.315267, 0.768211,
		0.690232, 0.338482, -0.639539,
		23.091698, 12.823926, 11.170066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921970, 13.302901, 11.881017>,  <22.608536, 12.586988, 11.617743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921970, 13.302901, 11.881017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929407, 13.254708, 11.484000>,  <22.933870, 13.225793, 11.245790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.929407, 13.254708, 11.484000>,  <22.921970, 13.302901, 11.881017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.929407, 13.254708, 11.484000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463344, 0.878641, -0.115336,
		0.885983, 0.462032, -0.039488,
		0.018593, -0.120482, -0.992541,
		22.934984, 13.218564, 11.186237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.409033, 13.915130, 11.448480>,  <22.921970, 13.302901, 11.881017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.409033, 13.915130, 11.448480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503912, 13.574237, 11.635001>,  <23.560839, 13.369701, 11.746914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503912, 13.574237, 11.635001>,  <23.409033, 13.915130, 11.448480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503912, 13.574237, 11.635001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866983, -0.030844, -0.497383,
		0.438268, 0.522254, 0.731554,
		0.237196, -0.852232, 0.466303,
		23.575071, 13.318567, 11.774892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.086700, 14.369217, 11.262840>,  <23.409033, 13.915130, 11.448480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.086700, 14.369217, 11.262840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272112, 14.289637, 10.917458>,  <24.383358, 14.241888, 10.710228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.272112, 14.289637, 10.917458>,  <24.086700, 14.369217, 11.262840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.272112, 14.289637, 10.917458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732911, 0.633736, 0.247427,
		0.497979, -0.747527, 0.439569,
		0.463529, -0.198951, -0.863458,
		24.411171, 14.229951, 10.658421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688181, 13.931285, 11.310326>,  <24.086700, 14.369217, 11.262840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688181, 13.931285, 11.310326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.725727, 14.213868, 11.029725>,  <24.748255, 14.383418, 10.861364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.725727, 14.213868, 11.029725>,  <24.688181, 13.931285, 11.310326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725727, 14.213868, 11.029725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714345, 0.443006, 0.541718,
		0.693471, -0.551961, -0.463073,
		0.093863, 0.706459, -0.701502,
		24.753885, 14.425806, 10.819274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.321400, 13.968630, 10.947105>,  <24.688181, 13.931285, 11.310326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.321400, 13.968630, 10.947105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.174183, 14.340470, 10.939231>,  <25.085854, 14.563575, 10.934506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.174183, 14.340470, 10.939231>,  <25.321400, 13.968630, 10.947105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.174183, 14.340470, 10.939231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824544, 0.336086, 0.455164,
		0.429738, 0.151285, -0.890190,
		-0.368040, 0.929602, -0.019687,
		25.063770, 14.619350, 10.933325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.819166, 14.512385, 10.786813>,  <25.321400, 13.968630, 10.947105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.819166, 14.512385, 10.786813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.551882, 14.710307, 11.009043>,  <25.391512, 14.829061, 11.142381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.551882, 14.710307, 11.009043>,  <25.819166, 14.512385, 10.786813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551882, 14.710307, 11.009043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727784, 0.279812, 0.626127,
		0.154354, 0.822723, -0.547085,
		-0.668211, 0.494805, 0.555574,
		25.351419, 14.858748, 11.175715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452230, 14.556013, 10.547791>,  <25.819166, 14.512385, 10.786813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452230, 14.556013, 10.547791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.478041, 14.174519, 10.430338>,  <26.493526, 13.945621, 10.359865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.478041, 14.174519, 10.430338>,  <26.452230, 14.556013, 10.547791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478041, 14.174519, 10.430338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013368, 0.293396, -0.955898,
		0.997827, 0.065605, 0.006182,
		0.064525, -0.953737, -0.293635,
		26.497398, 13.888397, 10.342247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900110, 14.624531, 10.159799>,  <26.452230, 14.556013, 10.547791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900110, 14.624531, 10.159799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.752251, 14.267277, 10.057295>,  <26.663536, 14.052924, 9.995792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.752251, 14.267277, 10.057295>,  <26.900110, 14.624531, 10.159799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752251, 14.267277, 10.057295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121914, 0.226790, -0.966283,
		0.921140, -0.388425, 0.025054,
		-0.369647, -0.893136, -0.256260,
		26.641357, 13.999336, 9.980417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291271, 14.499268, 9.544607>,  <26.900110, 14.624531, 10.159799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291271, 14.499268, 9.544607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.975838, 14.253296, 9.544576>,  <26.786577, 14.105713, 9.544557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.975838, 14.253296, 9.544576>,  <27.291271, 14.499268, 9.544607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975838, 14.253296, 9.544576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089646, 0.115086, -0.989302,
		0.608360, -0.780139, -0.145881,
		-0.788582, -0.614929, -0.000078,
		26.739264, 14.068817, 9.544553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417717, 14.075476, 8.920042>,  <27.291271, 14.499268, 9.544607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417717, 14.075476, 8.920042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.029579, 14.027291, 9.003869>,  <26.796696, 13.998381, 9.054165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.029579, 14.027291, 9.003869>,  <27.417717, 14.075476, 8.920042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029579, 14.027291, 9.003869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223577, 0.117714, -0.967552,
		0.091883, -0.985714, -0.141156,
		-0.970345, -0.120461, 0.209567,
		26.738476, 13.991153, 9.066739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.184019, 13.607841, 8.439268>,  <27.417717, 14.075476, 8.920042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.184019, 13.607841, 8.439268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.858444, 13.797413, 8.573667>,  <26.663099, 13.911157, 8.654305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.858444, 13.797413, 8.573667>,  <27.184019, 13.607841, 8.439268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.858444, 13.797413, 8.573667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327280, 0.103779, -0.939211,
		-0.479990, -0.874425, 0.070638,
		-0.813939, 0.473931, 0.335995,
		26.614262, 13.939592, 8.674465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692158, 13.315418, 8.063894>,  <27.184019, 13.607841, 8.439268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692158, 13.315418, 8.063894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.506571, 13.652040, 8.174541>,  <26.395218, 13.854013, 8.240930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.506571, 13.652040, 8.174541>,  <26.692158, 13.315418, 8.063894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506571, 13.652040, 8.174541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398756, 0.080430, -0.913523,
		-0.791029, -0.534149, 0.298258,
		-0.463969, 0.841556, 0.276617,
		26.367380, 13.904508, 8.257526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143444, 13.247350, 7.759306>,  <26.692158, 13.315418, 8.063894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143444, 13.247350, 7.759306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.116056, 13.637044, 7.845261>,  <26.099625, 13.870861, 7.896833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.116056, 13.637044, 7.845261>,  <26.143444, 13.247350, 7.759306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116056, 13.637044, 7.845261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345192, 0.178953, -0.921313,
		-0.936031, -0.137258, 0.324046,
		-0.068469, 0.974236, 0.214886,
		26.095516, 13.929315, 7.909726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482841, 13.563715, 7.571320>,  <26.143444, 13.247350, 7.759306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482841, 13.563715, 7.571320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.708881, 13.893123, 7.591235>,  <25.844505, 14.090768, 7.603184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.708881, 13.893123, 7.591235>,  <25.482841, 13.563715, 7.571320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708881, 13.893123, 7.591235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411140, 0.333416, -0.848409,
		-0.715282, 0.458964, 0.526995,
		0.565098, 0.823520, 0.049788,
		25.878410, 14.140179, 7.606171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.027668, 14.061071, 7.540254>,  <25.482841, 13.563715, 7.571320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.027668, 14.061071, 7.540254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.372747, 14.232328, 7.432590>,  <25.579796, 14.335083, 7.367992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.372747, 14.232328, 7.432590>,  <25.027668, 14.061071, 7.540254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.372747, 14.232328, 7.432590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389631, 0.223407, -0.893463,
		-0.322397, 0.875662, 0.359551,
		0.862698, 0.428142, -0.269159,
		25.631557, 14.360771, 7.351843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.830105, 14.613488, 7.150040>,  <25.027668, 14.061071, 7.540254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.830105, 14.613488, 7.150040> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.213385, 14.589144, 7.038220>,  <25.443352, 14.574537, 6.971128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.213385, 14.589144, 7.038220>,  <24.830105, 14.613488, 7.150040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213385, 14.589144, 7.038220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282777, -0.053017, -0.957719,
		0.043467, 0.996737, -0.068011,
		0.958200, -0.060861, -0.279550,
		25.500845, 14.570886, 6.954355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.836166, 15.199104, 6.832107>,  <24.830105, 14.613488, 7.150040>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.836166, 15.199104, 6.832107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.129339, 14.966976, 6.690098>,  <25.305243, 14.827700, 6.604892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.129339, 14.966976, 6.690098>,  <24.836166, 15.199104, 6.832107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.129339, 14.966976, 6.690098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288507, 0.207464, -0.934731,
		0.616098, 0.787519, -0.015370,
		0.732930, -0.580321, -0.355023,
		25.349218, 14.792880, 6.583591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.173666, 15.644098, 6.351763>,  <24.836166, 15.199104, 6.832107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.173666, 15.644098, 6.351763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.267073, 15.263041, 6.273848>,  <25.323116, 15.034408, 6.227098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.267073, 15.263041, 6.273848>,  <25.173666, 15.644098, 6.351763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.267073, 15.263041, 6.273848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308585, 0.117365, -0.943929,
		0.922087, 0.280532, -0.266564,
		0.233517, -0.952642, -0.194789,
		25.337128, 14.977249, 6.215411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104683, 15.695562, 5.599365>,  <25.173666, 15.644098, 6.351763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104683, 15.695562, 5.599365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.148159, 15.305480, 5.676473>,  <25.174246, 15.071430, 5.722737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.148159, 15.305480, 5.676473>,  <25.104683, 15.695562, 5.599365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148159, 15.305480, 5.676473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365704, -0.219545, -0.904467,
		0.924363, 0.027812, -0.380499,
		0.108692, -0.975206, 0.192768,
		25.180767, 15.012918, 5.734303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592892, 15.346645, 5.064116>,  <25.104683, 15.695562, 5.599365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592892, 15.346645, 5.064116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.351013, 15.081919, 5.241357>,  <25.205887, 14.923083, 5.347702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.351013, 15.081919, 5.241357>,  <25.592892, 15.346645, 5.064116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.351013, 15.081919, 5.241357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237202, -0.381451, -0.893438,
		0.760314, -0.645364, 0.073678,
		-0.604697, -0.661816, 0.443104,
		25.169603, 14.883374, 5.374289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.554983, 14.807875, 4.624320>,  <25.592892, 15.346645, 5.064116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.554983, 14.807875, 4.624320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.232595, 14.749811, 4.853872>,  <25.039162, 14.714973, 4.991604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.232595, 14.749811, 4.853872>,  <25.554983, 14.807875, 4.624320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232595, 14.749811, 4.853872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489953, -0.380471, -0.784339,
		0.332199, -0.913329, 0.235528,
		-0.805971, -0.145159, 0.573881,
		24.990805, 14.706264, 5.026037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.649527, 19.068245, 16.389856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298952, 18.974218, 16.557953>,  <18.088608, 18.917803, 16.658812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298952, 18.974218, 16.557953>,  <18.649527, 19.068245, 16.389856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.298952, 18.974218, 16.557953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054930, -0.915856, -0.397731,
		0.478373, -0.325503, 0.815602,
		-0.876437, -0.235065, 0.420241,
		18.036020, 18.903698, 16.684025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690199, 18.309788, 16.463062>,  <18.649527, 19.068245, 16.389856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690199, 18.309788, 16.463062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302147, 18.365721, 16.542351>,  <18.069315, 18.399281, 16.589924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302147, 18.365721, 16.542351>,  <18.690199, 18.309788, 16.463062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.302147, 18.365721, 16.542351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206835, -0.903760, -0.374750,
		0.126743, -0.404556, 0.905688,
		-0.970132, 0.139831, 0.198221,
		18.011106, 18.407671, 16.601818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382271, 17.617901, 16.621454>,  <18.690199, 18.309788, 16.463062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382271, 17.617901, 16.621454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070923, 17.836643, 16.498110>,  <17.884113, 17.967890, 16.424103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.070923, 17.836643, 16.498110>,  <18.382271, 17.617901, 16.621454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070923, 17.836643, 16.498110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308292, -0.760818, -0.571062,
		-0.546895, -0.349433, 0.760791,
		-0.778371, 0.546857, -0.308360,
		17.837412, 18.000700, 16.405602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.639450, 17.277239, 16.789204>,  <18.382271, 17.617901, 16.621454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.639450, 17.277239, 16.789204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650656, 17.536400, 16.484720>,  <17.657379, 17.691896, 16.302031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650656, 17.536400, 16.484720>,  <17.639450, 17.277239, 16.789204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.650656, 17.536400, 16.484720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292346, -0.722901, -0.626058,
		-0.955902, 0.240074, 0.169161,
		0.028013, 0.647904, -0.761207,
		17.659060, 17.730770, 16.256359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.976418, 17.204687, 16.492914>,  <17.639450, 17.277239, 16.789204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.976418, 17.204687, 16.492914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198071, 17.386072, 16.213682>,  <17.331062, 17.494904, 16.046143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.198071, 17.386072, 16.213682>,  <16.976418, 17.204687, 16.492914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198071, 17.386072, 16.213682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376237, -0.611628, -0.695958,
		-0.742553, 0.648294, -0.168313,
		0.554130, 0.453460, -0.698078,
		17.364309, 17.522110, 16.004259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583717, 17.432875, 15.845417>,  <16.976418, 17.204687, 16.492914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583717, 17.432875, 15.845417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954901, 17.392941, 15.701793>,  <17.177610, 17.368980, 15.615619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.954901, 17.392941, 15.701793>,  <16.583717, 17.432875, 15.845417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.954901, 17.392941, 15.701793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356101, -0.521706, -0.775251,
		-0.109925, 0.847263, -0.519674,
		0.927959, -0.099837, -0.359060,
		17.233288, 17.362989, 15.594075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424828, 17.267736, 15.091902>,  <16.583717, 17.432875, 15.845417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424828, 17.267736, 15.091902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818352, 17.214531, 15.139943>,  <17.054466, 17.182608, 15.168768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.818352, 17.214531, 15.139943>,  <16.424828, 17.267736, 15.091902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.818352, 17.214531, 15.139943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008681, -0.634011, -0.773275,
		0.179002, 0.761799, -0.622592,
		0.983810, -0.133013, 0.120103,
		17.113495, 17.174627, 15.175974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781128, 17.207432, 14.349094>,  <16.424828, 17.267736, 15.091902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781128, 17.207432, 14.349094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021715, 17.032196, 14.616322>,  <17.166067, 16.927053, 14.776658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021715, 17.032196, 14.616322>,  <16.781128, 17.207432, 14.349094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021715, 17.032196, 14.616322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089328, -0.794113, -0.601170,
		0.793889, 0.421261, -0.438498,
		0.601466, -0.438092, 0.668068,
		17.202154, 16.900768, 14.816742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.295797, 16.690245, 13.923274>,  <16.781128, 17.207432, 14.349094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.295797, 16.690245, 13.923274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312059, 16.569223, 14.304180>,  <17.321815, 16.496611, 14.532723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312059, 16.569223, 14.304180>,  <17.295797, 16.690245, 13.923274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312059, 16.569223, 14.304180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178314, -0.935557, -0.304857,
		0.983133, 0.182195, 0.015916,
		0.040653, -0.302553, 0.952265,
		17.324255, 16.478458, 14.589860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621851, 16.097328, 13.942541>,  <17.295797, 16.690245, 13.923274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621851, 16.097328, 13.942541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552435, 16.058931, 14.334596>,  <17.510784, 16.035892, 14.569829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552435, 16.058931, 14.334596>,  <17.621851, 16.097328, 13.942541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552435, 16.058931, 14.334596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008473, -0.995347, -0.095984,
		0.984790, -0.008352, 0.173546,
		-0.173540, -0.095994, 0.980137,
		17.500372, 16.030132, 14.628636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084131, 15.643783, 14.198300>,  <17.621851, 16.097328, 13.942541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084131, 15.643783, 14.198300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755507, 15.624965, 14.425571>,  <17.558332, 15.613674, 14.561934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755507, 15.624965, 14.425571>,  <18.084131, 15.643783, 14.198300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755507, 15.624965, 14.425571> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021976, -0.998462, -0.050895,
		0.569698, -0.029327, 0.821331,
		-0.821560, -0.047044, 0.568177,
		17.509039, 15.610851, 14.596025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.220587, 15.005602, 14.485601>,  <18.084131, 15.643783, 14.198300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.220587, 15.005602, 14.485601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826998, 15.064670, 14.525578>,  <17.590843, 15.100110, 14.549564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826998, 15.064670, 14.525578>,  <18.220587, 15.005602, 14.485601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826998, 15.064670, 14.525578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156574, -0.983737, -0.088010,
		0.085321, -0.102248, 0.991093,
		-0.983974, 0.147670, 0.099943,
		17.531805, 15.108971, 14.555561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963053, 14.491643, 15.005127>,  <18.220587, 15.005602, 14.485601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963053, 14.491643, 15.005127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734934, 14.600561, 14.695130>,  <17.598063, 14.665913, 14.509132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734934, 14.600561, 14.695130>,  <17.963053, 14.491643, 15.005127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.734934, 14.600561, 14.695130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061208, -0.954923, -0.290474,
		-0.819153, -0.118222, 0.561259,
		-0.570300, 0.272296, -0.774992,
		17.563845, 14.682250, 14.462632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336214, 14.185774, 15.166517>,  <17.963053, 14.491643, 15.005127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336214, 14.185774, 15.166517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379114, 14.217939, 14.770127>,  <17.404854, 14.237239, 14.532293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.379114, 14.217939, 14.770127>,  <17.336214, 14.185774, 15.166517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379114, 14.217939, 14.770127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197437, -0.975151, -0.100498,
		-0.974431, 0.206433, -0.088708,
		0.107250, 0.080414, -0.990975,
		17.411289, 14.242064, 14.472835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236729, 13.707192, 14.598698>,  <17.336214, 14.185774, 15.166517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236729, 13.707192, 14.598698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507210, 13.567233, 14.858026>,  <17.669498, 13.483257, 15.013622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507210, 13.567233, 14.858026>,  <17.236729, 13.707192, 14.598698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.507210, 13.567233, 14.858026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383196, 0.584555, 0.715162,
		-0.629213, -0.732029, 0.261199,
		0.676204, -0.349899, 0.648320,
		17.710072, 13.462263, 15.052522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902143, 13.561149, 15.248425>,  <17.236729, 13.707192, 14.598698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902143, 13.561149, 15.248425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284842, 13.577806, 15.363597>,  <17.514462, 13.587799, 15.432699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.284842, 13.577806, 15.363597>,  <16.902143, 13.561149, 15.248425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.284842, 13.577806, 15.363597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265667, 0.528403, 0.806357,
		-0.118564, -0.847972, 0.516611,
		0.956746, 0.041641, 0.287927,
		17.571865, 13.590298, 15.449975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.884701, 13.252546, 15.931101>,  <16.902143, 13.561149, 15.248425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.884701, 13.252546, 15.931101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229370, 13.454876, 15.914815>,  <17.436172, 13.576274, 15.905044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229370, 13.454876, 15.914815>,  <16.884701, 13.252546, 15.931101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.229370, 13.454876, 15.914815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167109, 0.358598, 0.918413,
		0.479158, -0.784568, 0.393523,
		0.861674, 0.505826, -0.040716,
		17.487873, 13.606624, 15.902600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234446, 13.025988, 16.527283>,  <16.884701, 13.252546, 15.931101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234446, 13.025988, 16.527283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375553, 13.379143, 16.403305>,  <17.460218, 13.591036, 16.328918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375553, 13.379143, 16.403305>,  <17.234446, 13.025988, 16.527283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.375553, 13.379143, 16.403305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168523, 0.385769, 0.907074,
		0.920410, -0.267755, 0.284874,
		0.352769, 0.882887, -0.309942,
		17.481384, 13.644009, 16.310322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.678064, 13.304022, 17.010061>,  <17.234446, 13.025988, 16.527283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.678064, 13.304022, 17.010061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561207, 13.634764, 16.817825>,  <17.491093, 13.833209, 16.702484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561207, 13.634764, 16.817825>,  <17.678064, 13.304022, 17.010061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561207, 13.634764, 16.817825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118958, 0.467191, 0.876117,
		0.948948, 0.313121, -0.038126,
		-0.292143, 0.826854, -0.480588,
		17.473564, 13.882820, 16.673649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.971039, 13.769145, 17.392811>,  <17.678064, 13.304022, 17.010061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.971039, 13.769145, 17.392811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743013, 14.000723, 17.159622>,  <17.606199, 14.139669, 17.019709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.743013, 14.000723, 17.159622>,  <17.971039, 13.769145, 17.392811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743013, 14.000723, 17.159622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241932, 0.559809, 0.792517,
		0.785175, 0.592822, -0.179060,
		-0.570061, 0.578944, -0.582970,
		17.571995, 14.174406, 16.984732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.243816, 14.473606, 17.485008>,  <17.971039, 13.769145, 17.392811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.243816, 14.473606, 17.485008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863276, 14.485220, 17.362314>,  <17.634951, 14.492188, 17.288698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863276, 14.485220, 17.362314>,  <18.243816, 14.473606, 17.485008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863276, 14.485220, 17.362314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222029, 0.625638, 0.747851,
		0.213620, 0.779573, -0.588755,
		-0.951351, 0.029035, -0.306737,
		17.577869, 14.493931, 17.270292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032589, 15.203059, 17.548342>,  <18.243816, 14.473606, 17.485008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.032589, 15.203059, 17.548342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683380, 15.009348, 17.571354>,  <17.473856, 14.893121, 17.585161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.683380, 15.009348, 17.571354>,  <18.032589, 15.203059, 17.548342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.683380, 15.009348, 17.571354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226008, 0.506292, 0.832219,
		-0.432153, 0.713542, -0.551454,
		-0.873020, -0.484279, 0.057529,
		17.421474, 14.864064, 17.588614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488758, 15.685113, 17.624331>,  <18.032589, 15.203059, 17.548342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488758, 15.685113, 17.624331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348694, 15.334072, 17.755299>,  <17.264656, 15.123447, 17.833879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348694, 15.334072, 17.755299>,  <17.488758, 15.685113, 17.624331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348694, 15.334072, 17.755299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405221, 0.457075, 0.791756,
		-0.844502, 0.144564, -0.515672,
		-0.350160, -0.877601, 0.327420,
		17.243647, 15.070792, 17.853525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.734985, 15.798469, 17.683193>,  <17.488758, 15.685113, 17.624331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.734985, 15.798469, 17.683193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798801, 15.481951, 17.919294>,  <16.837091, 15.292040, 18.060955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798801, 15.481951, 17.919294>,  <16.734985, 15.798469, 17.683193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798801, 15.481951, 17.919294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459112, 0.469841, 0.753966,
		-0.873935, -0.391281, -0.288334,
		0.159542, -0.791296, 0.590252,
		16.846664, 15.244562, 18.096371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275810, 15.801705, 18.157413>,  <16.734985, 15.798469, 17.683193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275810, 15.801705, 18.157413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529518, 15.573398, 18.365997>,  <16.681744, 15.436413, 18.491148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529518, 15.573398, 18.365997>,  <16.275810, 15.801705, 18.157413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.529518, 15.573398, 18.365997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299260, 0.440656, 0.846325,
		-0.712842, -0.692852, 0.108687,
		0.634272, -0.570770, 0.521460,
		16.719799, 15.402166, 18.522436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.843491, 15.557796, 18.792982>,  <16.275810, 15.801705, 18.157413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.843491, 15.557796, 18.792982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241119, 15.551010, 18.835943>,  <16.479696, 15.546938, 18.861719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241119, 15.551010, 18.835943>,  <15.843491, 15.557796, 18.792982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.241119, 15.551010, 18.835943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082899, 0.520921, 0.849570,
		-0.070363, -0.853436, 0.516426,
		0.994071, -0.016967, 0.107403,
		16.539341, 15.545920, 18.868164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937922, 15.636345, 19.589861>,  <15.843491, 15.557796, 18.792982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937922, 15.636345, 19.589861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302338, 15.690272, 19.434000>,  <16.520987, 15.722629, 19.340483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302338, 15.690272, 19.434000>,  <15.937922, 15.636345, 19.589861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.302338, 15.690272, 19.434000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231841, 0.613986, 0.754501,
		0.340962, -0.777718, 0.528109,
		0.911040, 0.134819, -0.389653,
		16.575649, 15.730718, 19.317104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400625, 15.458334, 20.105272>,  <15.937922, 15.636345, 19.589861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400625, 15.458334, 20.105272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578802, 15.709292, 19.849787>,  <16.685707, 15.859867, 19.696495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.578802, 15.709292, 19.849787>,  <16.400625, 15.458334, 20.105272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.578802, 15.709292, 19.849787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265358, 0.588829, 0.763456,
		0.855084, -0.509562, 0.095803,
		0.445440, 0.627397, -0.638715,
		16.712435, 15.897511, 19.658173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.536783, 15.152761, 20.792154>,  <16.400625, 15.458334, 20.105272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.536783, 15.152761, 20.792154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149527, 15.185797, 20.886709>,  <15.917172, 15.205618, 20.943443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.149527, 15.185797, 20.886709>,  <16.536783, 15.152761, 20.792154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.149527, 15.185797, 20.886709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216149, -0.752231, -0.622437,
		0.126413, -0.653703, 0.746118,
		-0.968142, 0.082588, 0.236389,
		15.859084, 15.210573, 20.957626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349682, 14.537240, 20.546097>,  <16.536783, 15.152761, 20.792154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349682, 14.537240, 20.546097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995235, 14.705709, 20.623468>,  <15.782568, 14.806791, 20.669891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995235, 14.705709, 20.623468>,  <16.349682, 14.537240, 20.546097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995235, 14.705709, 20.623468> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456237, -0.719251, -0.523952,
		-0.081551, -0.552531, 0.829493,
		-0.886114, 0.421174, 0.193430,
		15.729402, 14.832062, 20.681498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.907278, 14.091174, 20.958889>,  <16.349682, 14.537240, 20.546097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.907278, 14.091174, 20.958889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652587, 14.337366, 20.773088>,  <15.499772, 14.485082, 20.661608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652587, 14.337366, 20.773088>,  <15.907278, 14.091174, 20.958889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652587, 14.337366, 20.773088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414943, -0.781233, -0.466365,
		-0.649921, -0.104208, 0.752824,
		-0.636730, 0.615480, -0.464499,
		15.461568, 14.522010, 20.633738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.319900, 13.717658, 20.996130>,  <15.907278, 14.091174, 20.958889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.319900, 13.717658, 20.996130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276900, 13.987306, 20.703827>,  <15.251101, 14.149094, 20.528444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.276900, 13.987306, 20.703827>,  <15.319900, 13.717658, 20.996130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276900, 13.987306, 20.703827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409419, -0.699817, -0.585348,
		-0.905991, 0.236262, 0.351227,
		-0.107499, 0.674119, -0.730759,
		15.244651, 14.189541, 20.484600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.647225, 13.561403, 20.643602>,  <15.319900, 13.717658, 20.996130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.647225, 13.561403, 20.643602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857940, 13.770242, 20.375301>,  <14.984368, 13.895545, 20.214321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.857940, 13.770242, 20.375301>,  <14.647225, 13.561403, 20.643602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857940, 13.770242, 20.375301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384339, -0.557541, -0.735820,
		-0.758143, 0.645416, -0.093043,
		0.526785, 0.522097, -0.670755,
		15.015975, 13.926871, 20.174074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133433, 13.718542, 20.128368>,  <14.647225, 13.561403, 20.643602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133433, 13.718542, 20.128368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479102, 13.794048, 19.941788>,  <14.686503, 13.839353, 19.829840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.479102, 13.794048, 19.941788>,  <14.133433, 13.718542, 20.128368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.479102, 13.794048, 19.941788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360748, -0.413844, -0.835819,
		-0.350812, 0.890562, -0.289535,
		0.864171, 0.188766, -0.466450,
		14.738354, 13.850678, 19.801853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015540, 14.227235, 19.628250>,  <14.133433, 13.718542, 20.128368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.015540, 14.227235, 19.628250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317847, 13.987720, 19.522217>,  <14.499231, 13.844011, 19.458597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.317847, 13.987720, 19.522217>,  <14.015540, 14.227235, 19.628250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.317847, 13.987720, 19.522217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557162, -0.375300, -0.740757,
		0.344070, 0.707534, -0.617261,
		0.755769, -0.598786, -0.265081,
		14.544578, 13.808084, 19.442692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075762, 14.375833, 18.969381>,  <14.015540, 14.227235, 19.628250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075762, 14.375833, 18.969381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292382, 14.041052, 19.000959>,  <14.422355, 13.840183, 19.019905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292382, 14.041052, 19.000959>,  <14.075762, 14.375833, 18.969381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.292382, 14.041052, 19.000959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373774, -0.323832, -0.869152,
		0.753004, 0.441184, -0.488203,
		0.541552, -0.836952, 0.078944,
		14.454848, 13.789967, 19.024643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393680, 14.264066, 18.299847>,  <14.075762, 14.375833, 18.969381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393680, 14.264066, 18.299847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378356, 13.904364, 18.474144>,  <14.369162, 13.688542, 18.578722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378356, 13.904364, 18.474144>,  <14.393680, 14.264066, 18.299847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378356, 13.904364, 18.474144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334521, -0.399361, -0.853584,
		0.941609, -0.178466, -0.285521,
		-0.038310, -0.899256, 0.435742,
		14.366863, 13.634587, 18.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.753712, 13.805642, 17.852758>,  <14.393680, 14.264066, 18.299847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.753712, 13.805642, 17.852758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538315, 13.567446, 18.091227>,  <14.409077, 13.424528, 18.234308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538315, 13.567446, 18.091227>,  <14.753712, 13.805642, 17.852758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538315, 13.567446, 18.091227> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127676, -0.641679, -0.756272,
		0.832902, -0.483362, 0.269509,
		-0.538491, -0.595491, 0.596170,
		14.376767, 13.388799, 18.270077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.009065, 13.065287, 17.816833>,  <14.753712, 13.805642, 17.852758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.009065, 13.065287, 17.816833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632887, 13.019494, 17.944872>,  <14.407181, 12.992019, 18.021694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632887, 13.019494, 17.944872>,  <15.009065, 13.065287, 17.816833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.632887, 13.019494, 17.944872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180621, -0.629423, -0.755780,
		0.287997, -0.768584, 0.571259,
		-0.940443, -0.114481, 0.320094,
		14.350754, 12.985149, 18.040899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.798730, 12.534909, 17.527891>,  <15.009065, 13.065287, 17.816833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.798730, 12.534909, 17.527891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434978, 12.662627, 17.634535>,  <14.216726, 12.739258, 17.698521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434978, 12.662627, 17.634535>,  <14.798730, 12.534909, 17.527891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.434978, 12.662627, 17.634535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413224, -0.619963, -0.667002,
		-0.047683, -0.716727, 0.695722,
		-0.909380, 0.319294, 0.266607,
		14.162164, 12.758415, 17.714518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<16.417379, 19.618441, 24.604195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.652626, 19.317991, 24.724148>,  <16.793774, 19.137722, 24.796120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.652626, 19.317991, 24.724148>,  <16.417379, 19.618441, 24.604195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652626, 19.317991, 24.724148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241970, -0.517213, -0.820939,
		0.771731, 0.410246, -0.485932,
		0.588117, -0.751125, 0.299882,
		16.829062, 19.092653, 24.814112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.755287, 19.377342, 23.991581>,  <16.417379, 19.618441, 24.604195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.755287, 19.377342, 23.991581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.811588, 19.080023, 24.253174>,  <16.845369, 18.901630, 24.410130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.811588, 19.080023, 24.253174>,  <16.755287, 19.377342, 23.991581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.811588, 19.080023, 24.253174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091651, -0.667505, -0.738943,
		0.985794, 0.044069, -0.162076,
		0.140751, -0.743300, 0.653983,
		16.853813, 18.857033, 24.449369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236902, 18.982370, 23.605730>,  <16.755287, 19.377342, 23.991581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236902, 18.982370, 23.605730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059658, 18.755320, 23.883278>,  <16.953312, 18.619089, 24.049807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.059658, 18.755320, 23.883278>,  <17.236902, 18.982370, 23.605730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.059658, 18.755320, 23.883278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070417, -0.749573, -0.658165,
		0.893697, -0.340500, 0.292173,
		-0.443110, -0.567626, 0.693868,
		16.926725, 18.585032, 24.091438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376520, 18.366665, 23.370012>,  <17.236902, 18.982370, 23.605730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376520, 18.366665, 23.370012> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.074575, 18.286268, 23.619743>,  <16.893408, 18.238029, 23.769581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.074575, 18.286268, 23.619743>,  <17.376520, 18.366665, 23.370012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074575, 18.286268, 23.619743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166116, -0.862265, -0.478440,
		0.634498, -0.464867, 0.617504,
		-0.754863, -0.200992, 0.624327,
		16.848116, 18.225971, 23.807041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374479, 17.661829, 23.371651>,  <17.376520, 18.366665, 23.370012>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374479, 17.661829, 23.371651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008501, 17.777143, 23.484619>,  <16.788914, 17.846333, 23.552401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.008501, 17.777143, 23.484619>,  <17.374479, 17.661829, 23.371651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008501, 17.777143, 23.484619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389634, -0.813334, -0.432056,
		0.105146, -0.505349, 0.856485,
		-0.914948, 0.288287, 0.282420,
		16.734016, 17.863630, 23.569345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.239981, 17.089758, 23.690790>,  <17.374479, 17.661829, 23.371651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.239981, 17.089758, 23.690790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.942772, 17.331549, 23.575880>,  <16.764446, 17.476624, 23.506933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.942772, 17.331549, 23.575880>,  <17.239981, 17.089758, 23.690790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942772, 17.331549, 23.575880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375588, -0.731885, -0.568575,
		-0.553943, -0.314566, 0.770841,
		-0.743021, 0.604477, -0.287276,
		16.719866, 17.512892, 23.489697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625780, 16.701721, 23.824226>,  <17.239981, 17.089758, 23.690790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625780, 16.701721, 23.824226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.514845, 16.991646, 23.571962>,  <16.448284, 17.165600, 23.420603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.514845, 16.991646, 23.571962>,  <16.625780, 16.701721, 23.824226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.514845, 16.991646, 23.571962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356978, -0.687158, -0.632757,
		-0.891993, 0.049646, 0.449315,
		-0.277337, 0.724810, -0.630662,
		16.431644, 17.209089, 23.382763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.974664, 16.609533, 23.747797>,  <16.625780, 16.701721, 23.824226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.974664, 16.609533, 23.747797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.078665, 16.825096, 23.427303>,  <16.141066, 16.954433, 23.235006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.078665, 16.825096, 23.427303>,  <15.974664, 16.609533, 23.747797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078665, 16.825096, 23.427303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462730, -0.658754, -0.593232,
		-0.847514, 0.524997, 0.078091,
		0.260002, 0.538907, -0.801235,
		16.156666, 16.986769, 23.186934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.283954, 16.778433, 23.332697>,  <15.974664, 16.609533, 23.747797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.283954, 16.778433, 23.332697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.580197, 16.829773, 23.068872>,  <15.757944, 16.860577, 22.910578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.580197, 16.829773, 23.068872>,  <15.283954, 16.778433, 23.332697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.580197, 16.829773, 23.068872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480890, -0.584323, -0.653690,
		-0.469299, 0.801307, -0.371033,
		0.740610, 0.128350, -0.659563,
		15.802381, 16.868279, 22.871004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.008391, 16.589544, 22.755249>,  <15.283954, 16.778433, 23.332697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.008391, 16.589544, 22.755249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.387522, 16.613161, 22.629938>,  <15.615000, 16.627331, 22.554752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.387522, 16.613161, 22.629938>,  <15.008391, 16.589544, 22.755249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387522, 16.613161, 22.629938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215698, -0.604831, -0.766586,
		-0.234739, 0.794163, -0.560538,
		0.947825, 0.059041, -0.313277,
		15.671869, 16.630873, 22.535955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002713, 16.716825, 22.011345>,  <15.008391, 16.589544, 22.755249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002713, 16.716825, 22.011345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.356425, 16.543859, 22.081846>,  <15.568653, 16.440081, 22.124147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.356425, 16.543859, 22.081846>,  <15.002713, 16.716825, 22.011345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356425, 16.543859, 22.081846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144799, -0.612776, -0.776877,
		0.443937, 0.661456, -0.604480,
		0.884281, -0.432413, 0.176256,
		15.621710, 16.414135, 22.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303117, 16.712852, 21.353754>,  <15.002713, 16.716825, 22.011345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303117, 16.712852, 21.353754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.497061, 16.434040, 21.565060>,  <15.613427, 16.266752, 21.691843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.497061, 16.434040, 21.565060>,  <15.303117, 16.712852, 21.353754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497061, 16.434040, 21.565060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112487, -0.648694, -0.752690,
		0.867327, 0.305527, -0.392933,
		0.484861, -0.697029, 0.528262,
		15.642519, 16.224932, 21.723537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827426, 16.434263, 20.898439>,  <15.303117, 16.712852, 21.353754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827426, 16.434263, 20.898439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.803567, 16.150965, 21.179815>,  <15.789251, 15.980985, 21.348640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.803567, 16.150965, 21.179815>,  <15.827426, 16.434263, 20.898439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803567, 16.150965, 21.179815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127273, -0.704338, -0.698362,
		0.990073, 0.047873, 0.132153,
		-0.059648, -0.708248, 0.703439,
		15.785672, 15.938490, 21.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383896, 15.873763, 20.695934>,  <15.827426, 16.434263, 20.898439>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383896, 15.873763, 20.695934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.087528, 15.723298, 20.918480>,  <15.909708, 15.633018, 21.052008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.087528, 15.723298, 20.918480>,  <16.383896, 15.873763, 20.695934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.087528, 15.723298, 20.918480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058478, -0.789141, -0.611422,
		0.669044, -0.485549, 0.562692,
		-0.740918, -0.376163, 0.556365,
		15.865252, 15.610449, 21.085390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.074371, 15.705341, 20.517864>,  <16.383896, 15.873763, 20.695934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.074371, 15.705341, 20.517864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.036858, 15.953669, 20.206533>,  <17.014349, 16.102665, 20.019735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.036858, 15.953669, 20.206533>,  <17.074371, 15.705341, 20.517864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036858, 15.953669, 20.206533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357846, 0.750547, 0.555541,
		0.929059, -0.226420, -0.292546,
		-0.093784, 0.620817, -0.778325,
		17.008722, 16.139914, 19.973036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637310, 16.074261, 20.528639>,  <17.074371, 15.705341, 20.517864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637310, 16.074261, 20.528639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.384403, 16.291527, 20.307657>,  <17.232658, 16.421886, 20.175068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.384403, 16.291527, 20.307657>,  <17.637310, 16.074261, 20.528639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384403, 16.291527, 20.307657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454442, 0.837532, 0.303353,
		0.627470, -0.059259, -0.776382,
		-0.632268, 0.543166, -0.552456,
		17.194723, 16.454477, 20.141920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.068722, 16.572399, 20.201145>,  <17.637310, 16.074261, 20.528639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.068722, 16.572399, 20.201145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.692356, 16.707594, 20.192726>,  <17.466536, 16.788710, 20.187674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.692356, 16.707594, 20.192726>,  <18.068722, 16.572399, 20.201145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692356, 16.707594, 20.192726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319391, 0.906372, 0.276549,
		0.112549, 0.253486, -0.960769,
		-0.940916, 0.337986, -0.021050,
		17.410082, 16.808990, 20.186411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100775, 17.163950, 19.826859>,  <18.068722, 16.572399, 20.201145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100775, 17.163950, 19.826859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.769815, 17.186598, 20.050360>,  <17.571239, 17.200188, 20.184462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.769815, 17.186598, 20.050360>,  <18.100775, 17.163950, 19.826859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.769815, 17.186598, 20.050360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336431, 0.846609, 0.412392,
		-0.449697, 0.529195, -0.719532,
		-0.827398, 0.056621, 0.558755,
		17.521597, 17.203585, 20.217987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.010500, 17.876190, 19.818958>,  <18.100775, 17.163950, 19.826859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.010500, 17.876190, 19.818958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.783470, 17.759518, 20.126926>,  <17.647253, 17.689514, 20.311708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.783470, 17.759518, 20.126926>,  <18.010500, 17.876190, 19.818958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.783470, 17.759518, 20.126926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240563, 0.835582, 0.493894,
		-0.787393, 0.465537, -0.404088,
		-0.567575, -0.291680, 0.769923,
		17.613197, 17.672014, 20.357903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615225, 18.577847, 19.991680>,  <18.010500, 17.876190, 19.818958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615225, 18.577847, 19.991680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.560659, 18.330774, 20.301483>,  <17.527920, 18.182531, 20.487366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.560659, 18.330774, 20.301483>,  <17.615225, 18.577847, 19.991680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.560659, 18.330774, 20.301483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039551, 0.777797, 0.627269,
		-0.989862, 0.116200, -0.081671,
		-0.136412, -0.617680, 0.774508,
		17.519735, 18.145470, 20.533836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086315, 18.840502, 20.340710>,  <17.615225, 18.577847, 19.991680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086315, 18.840502, 20.340710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.306870, 18.625500, 20.595915>,  <17.439201, 18.496498, 20.749039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.306870, 18.625500, 20.595915>,  <17.086315, 18.840502, 20.340710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306870, 18.625500, 20.595915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052243, 0.785522, 0.616625,
		-0.832614, -0.306666, 0.461205,
		0.551385, -0.537505, 0.638015,
		17.472284, 18.464249, 20.787319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850145, 18.966156, 21.036493>,  <17.086315, 18.840502, 20.340710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850145, 18.966156, 21.036493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234467, 18.856628, 21.053843>,  <17.465059, 18.790913, 21.064251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.234467, 18.856628, 21.053843>,  <16.850145, 18.966156, 21.036493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234467, 18.856628, 21.053843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220892, 0.850658, 0.477061,
		-0.167522, -0.448781, 0.877800,
		0.960804, -0.273817, 0.043371,
		17.522707, 18.774483, 21.066854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065437, 19.255219, 21.626753>,  <16.850145, 18.966156, 21.036493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065437, 19.255219, 21.626753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.422649, 19.152597, 21.478872>,  <17.636976, 19.091024, 21.390144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.422649, 19.152597, 21.478872>,  <17.065437, 19.255219, 21.626753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.422649, 19.152597, 21.478872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387411, 0.856291, 0.341582,
		0.228936, -0.448269, 0.864085,
		0.893029, -0.256555, -0.369700,
		17.690557, 19.075630, 21.367962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487568, 19.300388, 22.194897>,  <17.065437, 19.255219, 21.626753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.487568, 19.300388, 22.194897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.743279, 19.298914, 21.887308>,  <17.896704, 19.298029, 21.702755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.743279, 19.298914, 21.887308>,  <17.487568, 19.300388, 22.194897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.743279, 19.298914, 21.887308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449597, 0.813054, 0.369872,
		0.623852, -0.582176, 0.521421,
		0.639274, -0.003684, -0.768970,
		17.935061, 19.297810, 21.656616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051813, 19.464323, 22.520855>,  <17.487568, 19.300388, 22.194897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051813, 19.464323, 22.520855> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.112242, 19.533583, 22.131559>,  <18.148499, 19.575138, 21.897982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.112242, 19.533583, 22.131559>,  <18.051813, 19.464323, 22.520855>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.112242, 19.533583, 22.131559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423041, 0.878505, 0.221959,
		0.893428, -0.445252, 0.059467,
		0.151069, 0.173148, -0.973241,
		18.157562, 19.585527, 21.839586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685373, 19.439098, 22.422733>,  <18.051813, 19.464323, 22.520855>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685373, 19.439098, 22.422733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.503069, 19.674728, 22.155819>,  <18.393686, 19.816107, 21.995670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.503069, 19.674728, 22.155819>,  <18.685373, 19.439098, 22.422733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.503069, 19.674728, 22.155819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551781, 0.775230, 0.307498,
		0.698441, -0.228051, -0.678360,
		-0.455760, 0.589076, -0.667287,
		18.366341, 19.851452, 21.955633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.211000, 19.911758, 22.311470>,  <18.685373, 19.439098, 22.422733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.211000, 19.911758, 22.311470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.905867, 20.087671, 22.121872>,  <18.722786, 20.193220, 22.008112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.905867, 20.087671, 22.121872>,  <19.211000, 19.911758, 22.311470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905867, 20.087671, 22.121872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339820, 0.896347, 0.284752,
		0.550095, 0.056145, -0.833213,
		-0.762835, 0.439783, -0.473997,
		18.677015, 20.219606, 21.979673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.586811, 20.437284, 22.063011>,  <19.211000, 19.911758, 22.311470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.586811, 20.437284, 22.063011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.197506, 20.526264, 22.040125>,  <18.963923, 20.579653, 22.026394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.197506, 20.526264, 22.040125>,  <19.586811, 20.437284, 22.063011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197506, 20.526264, 22.040125> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201975, 0.947470, 0.248004,
		0.109379, 0.229817, -0.967068,
		-0.973264, 0.222450, -0.057216,
		18.905527, 20.592999, 22.022961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<13.434515, 21.241013, 23.474129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.795382, 21.265148, 23.303272>,  <14.011903, 21.279629, 23.200758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.795382, 21.265148, 23.303272>,  <13.434515, 21.241013, 23.474129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.795382, 21.265148, 23.303272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361896, -0.433044, -0.825532,
		-0.234782, 0.899351, -0.368843,
		0.902169, 0.060338, -0.427142,
		14.066033, 21.283249, 23.175129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341372, 21.557718, 22.866213>,  <13.434515, 21.241013, 23.474129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341372, 21.557718, 22.866213> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693733, 21.373764, 22.821470>,  <13.905150, 21.263391, 22.794624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.693733, 21.373764, 22.821470>,  <13.341372, 21.557718, 22.866213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.693733, 21.373764, 22.821470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289181, -0.335894, -0.896409,
		0.374675, 0.821997, -0.428881,
		0.880905, -0.459886, -0.111855,
		13.958005, 21.235798, 22.787914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.644780, 21.751579, 22.185364>,  <13.341372, 21.557718, 22.866213>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.644780, 21.751579, 22.185364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.822234, 21.404131, 22.273621>,  <13.928706, 21.195662, 22.326574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.822234, 21.404131, 22.273621>,  <13.644780, 21.751579, 22.185364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.822234, 21.404131, 22.273621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042575, -0.266345, -0.962937,
		0.895196, 0.417798, -0.155142,
		0.443635, -0.868622, 0.220643,
		13.955324, 21.143543, 22.339813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968594, 21.628433, 21.546600>,  <13.644780, 21.751579, 22.185364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968594, 21.628433, 21.546600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.976705, 21.281040, 21.744722>,  <13.981571, 21.072605, 21.863596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.976705, 21.281040, 21.744722>,  <13.968594, 21.628433, 21.546600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976705, 21.281040, 21.744722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024663, -0.494824, -0.868643,
		0.999490, 0.029830, 0.011385,
		0.020278, -0.868481, 0.495307,
		13.982788, 21.020496, 21.893314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576759, 21.217823, 21.260008>,  <13.968594, 21.628433, 21.546600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576759, 21.217823, 21.260008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.334746, 20.954756, 21.439522>,  <14.189539, 20.796915, 21.547230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.334746, 20.954756, 21.439522>,  <14.576759, 21.217823, 21.260008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334746, 20.954756, 21.439522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098097, -0.620937, -0.777698,
		0.790135, -0.426507, 0.440202,
		-0.605031, -0.657669, 0.448785,
		14.153236, 20.757456, 21.574158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842310, 20.510338, 21.081320>,  <14.576759, 21.217823, 21.260008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842310, 20.510338, 21.081320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.472779, 20.429792, 21.211550>,  <14.251061, 20.381466, 21.289688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.472779, 20.429792, 21.211550>,  <14.842310, 20.510338, 21.081320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472779, 20.429792, 21.211550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044140, -0.788772, -0.613099,
		0.380260, -0.580767, 0.719800,
		-0.923826, -0.201364, 0.325573,
		14.195631, 20.369383, 21.309221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793831, 19.847281, 21.149801>,  <14.842310, 20.510338, 21.081320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793831, 19.847281, 21.149801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.423554, 19.982553, 21.082005>,  <14.201388, 20.063717, 21.041327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.423554, 19.982553, 21.082005>,  <14.793831, 19.847281, 21.149801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.423554, 19.982553, 21.082005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157017, -0.751145, -0.641192,
		-0.344152, -0.566933, 0.748429,
		-0.925692, 0.338184, -0.169490,
		14.145847, 20.084009, 21.031157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274384, 19.177170, 21.070486>,  <14.793831, 19.847281, 21.149801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274384, 19.177170, 21.070486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.059559, 19.487638, 20.938354>,  <13.930664, 19.673920, 20.859076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.059559, 19.487638, 20.938354>,  <14.274384, 19.177170, 21.070486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.059559, 19.487638, 20.938354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338798, -0.557104, -0.758189,
		-0.772515, -0.295280, 0.562166,
		-0.537063, 0.776174, -0.330331,
		13.898440, 19.720491, 20.839254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646605, 18.903772, 20.887739>,  <14.274384, 19.177170, 21.070486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.646605, 18.903772, 20.887739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.694086, 19.250750, 20.694471>,  <13.722575, 19.458937, 20.578510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.694086, 19.250750, 20.694471>,  <13.646605, 18.903772, 20.887739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.694086, 19.250750, 20.694471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190754, -0.457621, -0.868445,
		-0.974434, 0.195254, 0.111147,
		0.118704, 0.867444, -0.483167,
		13.729697, 19.510983, 20.549520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.010653, 19.054165, 20.533165>,  <13.646605, 18.903772, 20.887739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.010653, 19.054165, 20.533165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.293052, 19.261312, 20.339928>,  <13.462491, 19.385601, 20.223986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.293052, 19.261312, 20.339928>,  <13.010653, 19.054165, 20.533165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.293052, 19.261312, 20.339928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429476, -0.229324, -0.873476,
		-0.563133, 0.824148, 0.060511,
		0.705997, 0.517871, -0.483092,
		13.504850, 19.416674, 20.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.586774, 19.463575, 20.084383>,  <13.010653, 19.054165, 20.533165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.586774, 19.463575, 20.084383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.958383, 19.423746, 19.941832>,  <13.181348, 19.399849, 19.856300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.958383, 19.423746, 19.941832>,  <12.586774, 19.463575, 20.084383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.958383, 19.423746, 19.941832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369094, -0.317664, -0.873418,
		-0.026240, 0.942961, -0.331868,
		0.929022, -0.099572, -0.356377,
		13.237089, 19.393875, 19.834919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.626849, 19.809454, 19.344006>,  <12.586774, 19.463575, 20.084383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.626849, 19.809454, 19.344006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.946210, 19.569048, 19.358625>,  <13.137826, 19.424805, 19.367397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.946210, 19.569048, 19.358625>,  <12.626849, 19.809454, 19.344006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.946210, 19.569048, 19.358625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224240, -0.353126, -0.908305,
		0.558812, 0.716996, -0.416708,
		0.798402, -0.601014, 0.036552,
		13.185731, 19.388744, 19.369591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.975081, 19.852848, 18.635347>,  <12.626849, 19.809454, 19.344006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.975081, 19.852848, 18.635347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.052732, 19.508749, 18.823938>,  <13.099321, 19.302290, 18.937094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.052732, 19.508749, 18.823938>,  <12.975081, 19.852848, 18.635347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052732, 19.508749, 18.823938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277938, -0.509159, -0.814560,
		0.940779, 0.027085, -0.337936,
		0.194125, -0.860246, 0.471478,
		13.110970, 19.250675, 18.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.078997, 19.500784, 18.121603>,  <12.975081, 19.852848, 18.635347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.078997, 19.500784, 18.121603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.089982, 19.200674, 18.385824>,  <13.096573, 19.020607, 18.544357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.089982, 19.200674, 18.385824>,  <13.078997, 19.500784, 18.121603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.089982, 19.200674, 18.385824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276952, -0.640645, -0.716150,
		0.960491, -0.163274, -0.225385,
		0.027463, -0.750277, 0.660553,
		13.098221, 18.975592, 18.583990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.709096, 19.562178, 18.335299>,  <13.078997, 19.500784, 18.121603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.709096, 19.562178, 18.335299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.993823, 19.602697, 18.057291>,  <14.164660, 19.627010, 17.890486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.993823, 19.602697, 18.057291>,  <13.709096, 19.562178, 18.335299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.993823, 19.602697, 18.057291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381821, 0.774743, 0.503971,
		0.589514, -0.624109, 0.512798,
		0.711819, 0.101301, -0.695020,
		14.207369, 19.633087, 17.848785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.395577, 19.587019, 18.682434>,  <13.709096, 19.562178, 18.335299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.395577, 19.587019, 18.682434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.420657, 19.764729, 18.324957>,  <14.435705, 19.871353, 18.110470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.420657, 19.764729, 18.324957>,  <14.395577, 19.587019, 18.682434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.420657, 19.764729, 18.324957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459144, 0.782230, 0.421073,
		0.886146, -0.436736, -0.154939,
		0.062700, 0.444272, -0.893695,
		14.439467, 19.898010, 18.056849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051505, 19.746227, 18.637030>,  <14.395577, 19.587019, 18.682434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051505, 19.746227, 18.637030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.842005, 19.979736, 18.388870>,  <14.716305, 20.119843, 18.239975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.842005, 19.979736, 18.388870>,  <15.051505, 19.746227, 18.637030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.842005, 19.979736, 18.388870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426892, 0.810095, 0.401882,
		0.737190, -0.054358, -0.673496,
		-0.523750, 0.583773, -0.620399,
		14.684879, 20.154869, 18.202751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.506481, 20.227737, 18.318520>,  <15.051505, 19.746227, 18.637030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.506481, 20.227737, 18.318520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.145839, 20.396366, 18.279776>,  <14.929453, 20.497543, 18.256529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.145839, 20.396366, 18.279776>,  <15.506481, 20.227737, 18.318520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145839, 20.396366, 18.279776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383256, 0.882379, 0.272987,
		0.200551, 0.209004, -0.957129,
		-0.901606, 0.421574, -0.096860,
		14.875357, 20.522839, 18.250717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698056, 20.920126, 18.109707>,  <15.506481, 20.227737, 18.318520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698056, 20.920126, 18.109707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.317659, 20.941801, 18.231478>,  <15.089421, 20.954807, 18.304541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.317659, 20.941801, 18.231478>,  <15.698056, 20.920126, 18.109707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317659, 20.941801, 18.231478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123095, 0.969496, 0.211957,
		-0.283657, 0.239043, -0.928653,
		-0.950992, 0.054189, 0.304430,
		15.032362, 20.958057, 18.322807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.337780, 21.601767, 17.815626>,  <15.698056, 20.920126, 18.109707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.337780, 21.601767, 17.815626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.143180, 21.464968, 18.137211>,  <15.026420, 21.382889, 18.330162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.143180, 21.464968, 18.137211>,  <15.337780, 21.601767, 17.815626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.143180, 21.464968, 18.137211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248223, 0.828177, 0.502502,
		-0.837677, 0.444030, -0.318018,
		-0.486501, -0.341995, 0.803963,
		14.997230, 21.362370, 18.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.992921, 22.200249, 17.977432>,  <15.337780, 21.601767, 17.815626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.992921, 22.200249, 17.977432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.996231, 21.966219, 18.301807>,  <14.998218, 21.825802, 18.496433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.996231, 21.966219, 18.301807>,  <14.992921, 22.200249, 17.977432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.996231, 21.966219, 18.301807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112447, 0.806368, 0.580626,
		-0.993623, 0.086383, 0.072464,
		0.008276, -0.585072, 0.810939,
		14.998714, 21.790697, 18.545090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662910, 22.555559, 18.545874>,  <14.992921, 22.200249, 17.977432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662910, 22.555559, 18.545874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.858047, 22.287773, 18.769955>,  <14.975129, 22.127102, 18.904404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.858047, 22.287773, 18.769955>,  <14.662910, 22.555559, 18.545874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858047, 22.287773, 18.769955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068042, 0.668960, 0.740177,
		-0.870276, -0.322973, 0.371899,
		0.487843, -0.669463, 0.560204,
		15.004399, 22.086935, 18.938015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.358861, 22.558153, 19.256226>,  <14.662910, 22.555559, 18.545874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.358861, 22.558153, 19.256226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.715047, 22.383518, 19.307552>,  <14.928759, 22.278738, 19.338348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.715047, 22.383518, 19.307552>,  <14.358861, 22.558153, 19.256226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.715047, 22.383518, 19.307552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118235, 0.494273, 0.861229,
		-0.439425, -0.751722, 0.491752,
		0.890464, -0.436587, 0.128316,
		14.982186, 22.252542, 19.346046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.346101, 22.047092, 19.819212>,  <14.358861, 22.558153, 19.256226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.346101, 22.047092, 19.819212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.720762, 22.173422, 19.758635>,  <14.945560, 22.249218, 19.722288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.720762, 22.173422, 19.758635>,  <14.346101, 22.047092, 19.819212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.720762, 22.173422, 19.758635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058669, 0.284809, 0.956787,
		0.345310, -0.905063, 0.248238,
		0.936653, 0.315824, -0.151446,
		15.001759, 22.268167, 19.713202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.688085, 21.793068, 20.396704>,  <14.346101, 22.047092, 19.819212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.688085, 21.793068, 20.396704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.915791, 22.094683, 20.265640>,  <15.052414, 22.275652, 20.187002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.915791, 22.094683, 20.265640>,  <14.688085, 21.793068, 20.396704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.915791, 22.094683, 20.265640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246952, 0.223311, 0.942946,
		0.784188, -0.617703, -0.059088,
		0.569266, 0.754039, -0.327661,
		15.086571, 22.320894, 20.167341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293312, 21.852137, 20.877882>,  <14.688085, 21.793068, 20.396704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293312, 21.852137, 20.877882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.285602, 22.203487, 20.686852>,  <15.280975, 22.414299, 20.572233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.285602, 22.203487, 20.686852>,  <15.293312, 21.852137, 20.877882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285602, 22.203487, 20.686852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330947, 0.456345, 0.825968,
		0.943452, -0.142131, -0.299494,
		-0.019277, 0.878378, -0.477577,
		15.279819, 22.467001, 20.543579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885494, 22.172445, 21.141895>,  <15.293312, 21.852137, 20.877882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885494, 22.172445, 21.141895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.676364, 22.482204, 20.999367>,  <15.550886, 22.668060, 20.913851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.676364, 22.482204, 20.999367>,  <15.885494, 22.172445, 21.141895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676364, 22.482204, 20.999367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371329, 0.583153, 0.722529,
		0.767312, 0.245445, -0.592443,
		-0.522826, 0.774396, -0.356319,
		15.519516, 22.714523, 20.892471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.299763, 22.787767, 21.177488>,  <15.885494, 22.172445, 21.141895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.299763, 22.787767, 21.177488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.919752, 22.911631, 21.161671>,  <15.691746, 22.985949, 21.152180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.919752, 22.911631, 21.161671>,  <16.299763, 22.787767, 21.177488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919752, 22.911631, 21.161671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186255, 0.663913, 0.724244,
		0.250521, 0.680685, -0.688409,
		-0.950026, 0.309658, -0.039543,
		15.634745, 23.004528, 21.149807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.752975, 23.055410, 20.675888>,  <16.299763, 22.787767, 21.177488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.752975, 23.055410, 20.675888> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.142189, 23.000795, 20.750250>,  <17.375717, 22.968027, 20.794867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.142189, 23.000795, 20.750250>,  <16.752975, 23.055410, 20.675888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142189, 23.000795, 20.750250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031832, -0.718775, -0.694514,
		0.228450, 0.681704, -0.695047,
		0.973035, -0.136537, 0.185904,
		17.434099, 22.959835, 20.806021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963602, 22.891262, 20.013577>,  <16.752975, 23.055410, 20.675888>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963602, 22.891262, 20.013577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.251608, 22.765535, 20.261055>,  <17.424412, 22.690100, 20.409542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.251608, 22.765535, 20.261055>,  <16.963602, 22.891262, 20.013577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.251608, 22.765535, 20.261055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315294, -0.646044, -0.695138,
		0.618196, 0.695581, -0.366061,
		0.720016, -0.314315, 0.618695,
		17.467613, 22.671242, 20.446663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650888, 22.957464, 19.681133>,  <16.963602, 22.891262, 20.013577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650888, 22.957464, 19.681133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.643364, 22.675892, 19.965141>,  <17.638849, 22.506948, 20.135546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.643364, 22.675892, 19.965141>,  <17.650888, 22.957464, 19.681133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643364, 22.675892, 19.965141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409682, -0.653220, -0.636761,
		0.912034, 0.278904, 0.300675,
		-0.018812, -0.703929, 0.710021,
		17.637720, 22.464712, 20.178148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318035, 22.588238, 19.567572>,  <17.650888, 22.957464, 19.681133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318035, 22.588238, 19.567572> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.078554, 22.350088, 19.781893>,  <17.934866, 22.207197, 19.910486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.078554, 22.350088, 19.781893>,  <18.318035, 22.588238, 19.567572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078554, 22.350088, 19.781893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237933, -0.770942, -0.590793,
		0.764817, -0.226223, 0.603224,
		-0.598701, -0.595375, 0.535803,
		17.898943, 22.171476, 19.942635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692249, 21.951569, 19.600454>,  <18.318035, 22.588238, 19.567572>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692249, 21.951569, 19.600454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.317436, 21.842775, 19.688082>,  <18.092548, 21.777498, 19.740658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.317436, 21.842775, 19.688082>,  <18.692249, 21.951569, 19.600454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.317436, 21.842775, 19.688082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084747, -0.785613, -0.612888,
		0.338799, -0.555731, 0.759196,
		-0.937034, -0.271985, 0.219068,
		18.036325, 21.761179, 19.753801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677023, 21.266790, 19.896938>,  <18.692249, 21.951569, 19.600454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677023, 21.266790, 19.896938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.311626, 21.325573, 19.745184>,  <18.092388, 21.360842, 19.654131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.311626, 21.325573, 19.745184>,  <18.677023, 21.266790, 19.896938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.311626, 21.325573, 19.745184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130819, -0.776880, -0.615910,
		-0.385249, -0.612260, 0.690450,
		-0.913493, 0.146954, -0.379387,
		18.037579, 21.369659, 19.631367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.613558, 20.594755, 19.646004>,  <18.677023, 21.266790, 19.896938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.613558, 20.594755, 19.646004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.296350, 20.775341, 19.482393>,  <18.106026, 20.883694, 19.384228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.296350, 20.775341, 19.482393>,  <18.613558, 20.594755, 19.646004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.296350, 20.775341, 19.482393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060122, -0.610141, -0.790009,
		-0.606186, -0.651105, 0.456730,
		-0.793048, 0.451433, -0.409004,
		18.058445, 20.910780, 19.359686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184532, 20.025284, 19.360943>,  <18.613558, 20.594755, 19.646004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184532, 20.025284, 19.360943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077322, 20.338520, 19.136469>,  <18.012997, 20.526463, 19.001783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.077322, 20.338520, 19.136469>,  <18.184532, 20.025284, 19.360943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.077322, 20.338520, 19.136469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164014, -0.611085, -0.774387,
		-0.949348, -0.115512, 0.292223,
		-0.268025, 0.783092, -0.561187,
		17.996914, 20.573448, 18.968113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500742, 19.872625, 19.086435>,  <18.184532, 20.025284, 19.360943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500742, 19.872625, 19.086435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.695650, 20.132996, 18.853586>,  <17.812595, 20.289217, 18.713877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.695650, 20.132996, 18.853586>,  <17.500742, 19.872625, 19.086435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.695650, 20.132996, 18.853586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199702, -0.565888, -0.799931,
		-0.850111, 0.506033, -0.145748,
		0.487268, 0.650924, -0.582123,
		17.841831, 20.328274, 18.678949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097662, 19.915949, 18.582756>,  <17.500742, 19.872625, 19.086435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097662, 19.915949, 18.582756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.421398, 20.079384, 18.413982>,  <17.615639, 20.177444, 18.312719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.421398, 20.079384, 18.413982>,  <17.097662, 19.915949, 18.582756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.421398, 20.079384, 18.413982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185126, -0.504298, -0.843452,
		-0.557404, 0.760749, -0.332507,
		0.809338, 0.408588, -0.421933,
		17.664200, 20.201960, 18.287403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.905491, 20.276426, 17.918573>,  <17.097662, 19.915949, 18.582756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.905491, 20.276426, 17.918573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.294260, 20.183001, 17.907185>,  <17.527521, 20.126945, 17.900351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.294260, 20.183001, 17.907185>,  <16.905491, 20.276426, 17.918573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294260, 20.183001, 17.907185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177941, -0.650452, -0.738410,
		0.153945, 0.722746, -0.673750,
		0.971925, -0.233562, -0.028472,
		17.585838, 20.112932, 17.898643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.081800, 20.254894, 17.226311>,  <16.905491, 20.276426, 17.918573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.081800, 20.254894, 17.226311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.408388, 20.061213, 17.352119>,  <17.604342, 19.945004, 17.427605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.408388, 20.061213, 17.352119>,  <17.081800, 20.254894, 17.226311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.408388, 20.061213, 17.352119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070650, -0.624421, -0.777886,
		0.573050, 0.612899, -0.544029,
		0.816469, -0.484203, 0.314523,
		17.653330, 19.915951, 17.446476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.460735, 20.087595, 16.575504>,  <17.081800, 20.254894, 17.226311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.460735, 20.087595, 16.575504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.612041, 19.842703, 16.853235>,  <17.702826, 19.695768, 17.019875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.612041, 19.842703, 16.853235>,  <17.460735, 20.087595, 16.575504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.612041, 19.842703, 16.853235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144890, -0.701658, -0.697627,
		0.914289, 0.364488, -0.176706,
		0.378264, -0.612229, 0.694329,
		17.725521, 19.659035, 17.061533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.198471, 19.741625, 16.406649>,  <17.460735, 20.087595, 16.575504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.198471, 19.741625, 16.406649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.008766, 19.503345, 16.665945>,  <17.894943, 19.360378, 16.821524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.008766, 19.503345, 16.665945>,  <18.198471, 19.741625, 16.406649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.008766, 19.503345, 16.665945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064311, -0.757792, -0.649319,
		0.878030, -0.266259, 0.397704,
		-0.474264, -0.595699, 0.648242,
		17.866488, 19.324636, 16.860418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<4.632078, 15.434093, 5.299972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.767630, 15.453549, 5.675800>,  <4.848962, 15.465223, 5.901298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.767630, 15.453549, 5.675800>,  <4.632078, 15.434093, 5.299972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.767630, 15.453549, 5.675800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686142, 0.670506, -0.282188,
		-0.643715, 0.740307, 0.193846,
		0.338881, 0.048643, 0.939571,
		4.869295, 15.468143, 5.957672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.680441, 16.063786, 5.496360>,  <4.632078, 15.434093, 5.299972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.680441, 16.063786, 5.496360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973948, 15.870802, 5.687701>,  <5.150052, 15.755013, 5.802505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.973948, 15.870802, 5.687701>,  <4.680441, 16.063786, 5.496360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.973948, 15.870802, 5.687701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614184, 0.772051, -0.163451,
		-0.290454, 0.413731, 0.862823,
		0.733768, -0.482457, 0.478352,
		5.194078, 15.726065, 5.831206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.363707, 15.533265, 6.010882>,  <4.680441, 16.063786, 5.496360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.363707, 15.533265, 6.010882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.106367, 15.813183, 6.135068>,  <3.951963, 15.981133, 6.209580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.106367, 15.813183, 6.135068>,  <4.363707, 15.533265, 6.010882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.106367, 15.813183, 6.135068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533654, 0.119151, 0.837268,
		0.548923, 0.704336, -0.450104,
		-0.643348, 0.699795, 0.310467,
		3.913363, 16.023121, 6.228209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.686383, 16.242487, 6.241208>,  <4.363707, 15.533265, 6.010882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.686383, 16.242487, 6.241208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.368497, 16.167568, 6.472153>,  <4.177765, 16.122618, 6.610720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.368497, 16.167568, 6.472153>,  <4.686383, 16.242487, 6.241208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.368497, 16.167568, 6.472153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514927, 0.295582, 0.804663,
		-0.321367, 0.936777, -0.138461,
		-0.794716, -0.187295, 0.577362,
		4.130082, 16.111380, 6.645361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.920264, 16.748249, 5.829525>,  <4.686383, 16.242487, 6.241208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.920264, 16.748249, 5.829525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.099059, 17.059769, 5.653491>,  <5.206336, 17.246681, 5.547871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.099059, 17.059769, 5.653491>,  <4.920264, 16.748249, 5.829525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.099059, 17.059769, 5.653491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819404, -0.553827, -0.147830,
		-0.358861, -0.294529, -0.885704,
		0.446987, 0.778799, -0.440085,
		5.233155, 17.293409, 5.521466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.572307, 16.430136, 5.989193>,  <4.920264, 16.748249, 5.829525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.572307, 16.430136, 5.989193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.624400, 16.770231, 6.193207>,  <5.655655, 16.974289, 6.315616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.624400, 16.770231, 6.193207>,  <5.572307, 16.430136, 5.989193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.624400, 16.770231, 6.193207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855759, 0.163398, -0.490895,
		-0.500716, 0.500397, -0.706318,
		0.130231, 0.850237, 0.510036,
		5.663469, 17.025303, 6.346218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.795432, 17.032219, 5.534451>,  <5.572307, 16.430136, 5.989193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.795432, 17.032219, 5.534451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.956025, 17.039555, 5.900725>,  <6.052381, 17.043955, 6.120489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.956025, 17.039555, 5.900725>,  <5.795432, 17.032219, 5.534451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.956025, 17.039555, 5.900725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912533, 0.077223, -0.401648,
		-0.078077, 0.996845, 0.014270,
		0.401483, 0.018337, 0.915683,
		6.076470, 17.045055, 6.175430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.181276, 17.601067, 5.527930>,  <5.795432, 17.032219, 5.534451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.181276, 17.601067, 5.527930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.301744, 17.304890, 5.768277>,  <6.374024, 17.127184, 5.912486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.301744, 17.304890, 5.768277>,  <6.181276, 17.601067, 5.527930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.301744, 17.304890, 5.768277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946429, 0.155127, -0.283211,
		0.116490, 0.653974, 0.747495,
		0.301169, -0.740442, 0.600869,
		6.392095, 17.082758, 5.948538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.765011, 17.779430, 5.885231>,  <6.181276, 17.601067, 5.527930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.765011, 17.779430, 5.885231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.787144, 17.381157, 5.915040>,  <6.800423, 17.142193, 5.932925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.787144, 17.381157, 5.915040>,  <6.765011, 17.779430, 5.885231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.787144, 17.381157, 5.915040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937369, 0.026092, -0.347359,
		0.343915, 0.089075, 0.934766,
		0.055331, -0.995683, 0.074523,
		6.803743, 17.082453, 5.937397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.876643, 18.159586, 6.561079>,  <6.765011, 17.779430, 5.885231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.876643, 18.159586, 6.561079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.739941, 18.493294, 6.734144>,  <6.657919, 18.693518, 6.837983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.739941, 18.493294, 6.734144>,  <6.876643, 18.159586, 6.561079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.739941, 18.493294, 6.734144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171711, -0.397200, 0.901525,
		0.923969, 0.382395, -0.007507,
		-0.341757, 0.834270, 0.432662,
		6.637414, 18.743574, 6.863942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.162581, 18.038757, 7.198115>,  <6.876643, 18.159586, 6.561079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.162581, 18.038757, 7.198115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.945222, 18.356300, 7.307300>,  <6.814806, 18.546825, 7.372810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.945222, 18.356300, 7.307300>,  <7.162581, 18.038757, 7.198115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.945222, 18.356300, 7.307300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027484, -0.341806, 0.939368,
		0.839024, 0.502950, 0.207556,
		-0.543400, 0.793857, 0.272961,
		6.782202, 18.594458, 7.389188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.471415, 18.368998, 7.725139>,  <7.162581, 18.038757, 7.198115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.471415, 18.368998, 7.725139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.083421, 18.461893, 7.753969>,  <6.850624, 18.517630, 7.771267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.083421, 18.461893, 7.753969>,  <7.471415, 18.368998, 7.725139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.083421, 18.461893, 7.753969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012764, -0.344626, 0.938653,
		0.242829, 0.909560, 0.337246,
		-0.969985, 0.232237, 0.072075,
		6.792425, 18.531565, 7.775591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.472619, 18.240274, 8.424772>,  <7.471415, 18.368998, 7.725139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.472619, 18.240274, 8.424772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.103811, 18.354738, 8.320470>,  <6.882526, 18.423416, 8.257889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.103811, 18.354738, 8.320470>,  <7.472619, 18.240274, 8.424772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.103811, 18.354738, 8.320470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309514, -0.140265, 0.940493,
		0.232556, 0.947860, 0.217897,
		-0.922019, 0.286159, -0.260756,
		6.827205, 18.440586, 8.242243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.236914, 18.694544, 8.893044>,  <7.472619, 18.240274, 8.424772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.236914, 18.694544, 8.893044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.897801, 18.545677, 8.741911>,  <6.694334, 18.456358, 8.651231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.897801, 18.545677, 8.741911>,  <7.236914, 18.694544, 8.893044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.897801, 18.545677, 8.741911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240948, -0.364368, 0.899544,
		-0.472451, 0.853655, 0.219232,
		-0.847782, -0.372167, -0.377833,
		6.643467, 18.434027, 8.628561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.614781, 18.907303, 9.353077>,  <7.236914, 18.694544, 8.893044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.614781, 18.907303, 9.353077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.552823, 18.559439, 9.165588>,  <6.515648, 18.350721, 9.053095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.552823, 18.559439, 9.165588>,  <6.614781, 18.907303, 9.353077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.552823, 18.559439, 9.165588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015458, -0.472256, 0.881326,
		-0.987810, 0.143759, 0.059707,
		-0.154895, -0.869660, -0.468721,
		6.506354, 18.298540, 9.024972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.967368, 18.561636, 9.602636>,  <6.614781, 18.907303, 9.353077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.967368, 18.561636, 9.602636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.194787, 18.265297, 9.459583>,  <6.331237, 18.087494, 9.373752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.194787, 18.265297, 9.459583>,  <5.967368, 18.561636, 9.602636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.194787, 18.265297, 9.459583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002598, -0.436345, 0.899776,
		-0.822648, -0.510634, -0.250007,
		0.568545, -0.740848, -0.357632,
		6.365350, 18.043043, 9.352294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.667140, 17.967564, 9.913230>,  <5.967368, 18.561636, 9.602636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.667140, 17.967564, 9.913230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.015190, 17.839163, 9.763649>,  <6.224020, 17.762123, 9.673901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.015190, 17.839163, 9.763649>,  <5.667140, 17.967564, 9.913230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.015190, 17.839163, 9.763649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046419, -0.702030, 0.710633,
		-0.490638, -0.635699, -0.595954,
		0.870126, -0.321000, -0.373951,
		6.276228, 17.742863, 9.651464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.577178, 17.260096, 9.862620>,  <5.667140, 17.967564, 9.913230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.577178, 17.260096, 9.862620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.975356, 17.278011, 9.828952>,  <6.214262, 17.288761, 9.808751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.975356, 17.278011, 9.828952>,  <5.577178, 17.260096, 9.862620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.975356, 17.278011, 9.828952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090677, -0.717578, 0.690550,
		-0.029470, -0.695037, -0.718370,
		0.995444, 0.044789, -0.084171,
		6.273989, 17.291449, 9.803700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.779785, 16.556410, 10.080028>,  <5.577178, 17.260096, 9.862620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.779785, 16.556410, 10.080028> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.119107, 16.767990, 10.089723>,  <6.322700, 16.894939, 10.095540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.119107, 16.767990, 10.089723>,  <5.779785, 16.556410, 10.080028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.119107, 16.767990, 10.089723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349287, -0.593397, 0.725175,
		0.397965, -0.606704, -0.688138,
		0.848306, 0.528952, 0.024238,
		6.373599, 16.926676, 10.096993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.399970, 16.075193, 9.928555>,  <5.779785, 16.556410, 10.080028>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.399970, 16.075193, 9.928555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.505471, 16.398811, 10.138654>,  <6.568772, 16.592981, 10.264712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.505471, 16.398811, 10.138654>,  <6.399970, 16.075193, 9.928555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.505471, 16.398811, 10.138654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256294, -0.583734, 0.770434,
		0.929918, -0.068587, -0.361315,
		0.263754, 0.809043, 0.525246,
		6.584597, 16.641523, 10.296227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.101153, 15.910471, 10.170672>,  <6.399970, 16.075193, 9.928555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.101153, 15.910471, 10.170672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.887873, 16.151852, 10.407837>,  <6.759905, 16.296680, 10.550136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.887873, 16.151852, 10.407837>,  <7.101153, 15.910471, 10.170672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.887873, 16.151852, 10.407837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185648, -0.600303, 0.777928,
		0.825368, 0.524864, 0.208052,
		-0.533200, 0.603452, 0.592911,
		6.727913, 16.332888, 10.585711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.491849, 15.856058, 10.694702>,  <7.101153, 15.910471, 10.170672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.491849, 15.856058, 10.694702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.142989, 16.006638, 10.819693>,  <6.933673, 16.096985, 10.894687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.142989, 16.006638, 10.819693>,  <7.491849, 15.856058, 10.694702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.142989, 16.006638, 10.819693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090383, -0.503727, 0.859122,
		0.480818, 0.777525, 0.405300,
		-0.872150, 0.376449, 0.312476,
		6.881344, 16.119572, 10.913435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.631993, 16.045635, 11.341568>,  <7.491849, 15.856058, 10.694702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.631993, 16.045635, 11.341568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.232203, 16.052067, 11.352803>,  <6.992329, 16.055925, 11.359545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.232203, 16.052067, 11.352803>,  <7.631993, 16.045635, 11.341568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.232203, 16.052067, 11.352803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018253, -0.436660, 0.899442,
		0.026726, 0.899483, 0.436138,
		-0.999476, 0.016078, 0.028088,
		6.932360, 16.056890, 11.361230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.434198, 16.117254, 12.142842>,  <7.631993, 16.045635, 11.341568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.434198, 16.117254, 12.142842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.085061, 15.994339, 11.991201>,  <6.875578, 15.920589, 11.900217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.085061, 15.994339, 11.991201>,  <7.434198, 16.117254, 12.142842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.085061, 15.994339, 11.991201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138152, -0.589471, 0.795888,
		-0.468037, 0.747059, 0.472063,
		-0.872843, -0.307289, -0.379102,
		6.823208, 15.902152, 11.877471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.911166, 16.284643, 12.601034>,  <7.434198, 16.117254, 12.142842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.911166, 16.284643, 12.601034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.779225, 15.973731, 12.386731>,  <6.700061, 15.787184, 12.258149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.779225, 15.973731, 12.386731>,  <6.911166, 16.284643, 12.601034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.779225, 15.973731, 12.386731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241616, -0.479107, 0.843847,
		-0.912590, 0.407791, -0.029769,
		-0.329851, -0.777279, -0.535757,
		6.680270, 15.740547, 12.226004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.228477, 16.014185, 12.922509>,  <6.911166, 16.284643, 12.601034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.228477, 16.014185, 12.922509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.335247, 15.682187, 12.726607>,  <6.399309, 15.482988, 12.609066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.335247, 15.682187, 12.726607>,  <6.228477, 16.014185, 12.922509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.335247, 15.682187, 12.726607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082649, -0.526035, 0.846437,
		-0.960167, -0.185457, -0.209010,
		0.266924, -0.829995, -0.489754,
		6.415324, 15.433188, 12.579681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.833508, 15.524833, 13.281129>,  <6.228477, 16.014185, 12.922509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.833508, 15.524833, 13.281129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.109885, 15.297478, 13.102451>,  <6.275711, 15.161064, 12.995245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.109885, 15.297478, 13.102451>,  <5.833508, 15.524833, 13.281129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.109885, 15.297478, 13.102451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101538, -0.688088, 0.718488,
		-0.715745, -0.451076, -0.533141,
		0.690940, -0.568389, -0.446694,
		6.317168, 15.126962, 12.968444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.623207, 14.853667, 13.361768>,  <5.833508, 15.524833, 13.281129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.623207, 14.853667, 13.361768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.017590, 14.826337, 13.300817>,  <6.254220, 14.809938, 13.264247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.017590, 14.826337, 13.300817>,  <5.623207, 14.853667, 13.361768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.017590, 14.826337, 13.300817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069547, -0.661568, 0.746653,
		-0.151822, -0.746766, -0.647526,
		0.985958, -0.068325, -0.152377,
		6.313377, 14.805840, 13.255104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.800409, 14.121619, 13.396931>,  <5.623207, 14.853667, 13.361768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.800409, 14.121619, 13.396931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.128569, 14.339561, 13.466306>,  <6.325465, 14.470325, 13.507931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.128569, 14.339561, 13.466306>,  <5.800409, 14.121619, 13.396931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.128569, 14.339561, 13.466306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170862, -0.523065, 0.834991,
		0.545666, -0.655392, -0.522216,
		0.820399, 0.544853, 0.173437,
		6.374689, 14.503016, 13.518337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.039851, 13.658409, 13.825946>,  <5.800409, 14.121619, 13.396931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.039851, 13.658409, 13.825946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.244650, 14.001259, 13.848567>,  <6.367529, 14.206968, 13.862140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.244650, 14.001259, 13.848567>,  <6.039851, 13.658409, 13.825946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.244650, 14.001259, 13.848567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083557, -0.115221, 0.989819,
		0.854914, -0.502058, -0.130612,
		0.511996, 0.857124, 0.056554,
		6.398249, 14.258396, 13.865533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.560371, 13.504265, 14.254669>,  <6.039851, 13.658409, 13.825946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.560371, 13.504265, 14.254669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.559523, 13.903394, 14.281041>,  <6.559013, 14.142871, 14.296865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.559523, 13.903394, 14.281041>,  <6.560371, 13.504265, 14.254669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.559523, 13.903394, 14.281041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133370, -0.065060, 0.988929,
		0.991064, 0.010892, -0.132942,
		-0.002122, 0.997822, 0.065931,
		6.558886, 14.202741, 14.300820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.916064, 13.077477, 14.872159>,  <6.560371, 13.504265, 14.254669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.916064, 13.077477, 14.872159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.295565, 12.964472, 14.928805>,  <7.523265, 12.896668, 14.962793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.295565, 12.964472, 14.928805>,  <6.916064, 13.077477, 14.872159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.295565, 12.964472, 14.928805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246654, 0.381838, -0.890708,
		0.197563, 0.879992, 0.431953,
		0.948752, -0.282514, 0.141616,
		7.580190, 12.879718, 14.971291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.260458, 13.617471, 14.739092>,  <6.916064, 13.077477, 14.872159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.260458, 13.617471, 14.739092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.512936, 13.317913, 14.658345>,  <7.664423, 13.138179, 14.609898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.512936, 13.317913, 14.658345>,  <7.260458, 13.617471, 14.739092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.512936, 13.317913, 14.658345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246152, 0.440221, -0.863490,
		0.735528, 0.495341, 0.462207,
		0.631195, -0.748894, -0.201865,
		7.702294, 13.093245, 14.597786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.778041, 13.841825, 14.332250>,  <7.260458, 13.617471, 14.739092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.778041, 13.841825, 14.332250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.889926, 13.461137, 14.281676>,  <7.957057, 13.232723, 14.251332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.889926, 13.461137, 14.281676>,  <7.778041, 13.841825, 14.332250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.889926, 13.461137, 14.281676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461153, 0.248686, -0.851759,
		0.842081, 0.179942, 0.508450,
		0.279711, -0.951723, -0.126433,
		7.973839, 13.175620, 14.243747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.492017, 13.842350, 14.260894>,  <7.778041, 13.841825, 14.332250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.492017, 13.842350, 14.260894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349899, 13.515339, 14.079602>,  <8.264629, 13.319133, 13.970827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.349899, 13.515339, 14.079602>,  <8.492017, 13.842350, 14.260894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.349899, 13.515339, 14.079602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447360, 0.277017, -0.850371,
		0.820753, -0.504887, 0.267307,
		-0.355292, -0.817527, -0.453229,
		8.243311, 13.270081, 13.943633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.922654, 13.962416, 13.778919>,  <8.492017, 13.842350, 14.260894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.922654, 13.962416, 13.778919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.663503, 13.690459, 13.641514>,  <8.508012, 13.527286, 13.559071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.663503, 13.690459, 13.641514>,  <8.922654, 13.962416, 13.778919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.663503, 13.690459, 13.641514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323638, 0.162551, -0.932114,
		0.689574, -0.715070, 0.114726,
		-0.647878, -0.679891, -0.343515,
		8.469139, 13.486492, 13.538460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.294910, 13.474902, 13.431896>,  <8.922654, 13.962416, 13.778919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.294910, 13.474902, 13.431896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.928367, 13.418856, 13.281881>,  <8.708441, 13.385228, 13.191873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.928367, 13.418856, 13.281881>,  <9.294910, 13.474902, 13.431896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.928367, 13.418856, 13.281881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356783, 0.139187, -0.923760,
		0.181638, -0.980303, -0.077553,
		-0.916359, -0.140121, -0.375037,
		8.653459, 13.376821, 13.169371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.434152, 13.008170, 12.884113>,  <9.294910, 13.474902, 13.431896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.434152, 13.008170, 12.884113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.083481, 13.187167, 12.813473>,  <8.873078, 13.294565, 12.771089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.083481, 13.187167, 12.813473>,  <9.434152, 13.008170, 12.884113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.083481, 13.187167, 12.813473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243500, 0.096154, -0.965123,
		-0.414905, -0.889103, -0.193261,
		-0.876676, 0.447493, -0.176602,
		8.820477, 13.321415, 12.760492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.140959, 12.656909, 12.273269>,  <9.434152, 13.008170, 12.884113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.140959, 12.656909, 12.273269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.965116, 13.015147, 12.300557>,  <8.859610, 13.230090, 12.316930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.965116, 13.015147, 12.300557>,  <9.140959, 12.656909, 12.273269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.965116, 13.015147, 12.300557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327466, 0.230537, -0.916307,
		-0.836368, -0.380476, -0.394623,
		-0.439608, 0.895595, 0.068221,
		8.833233, 13.283826, 12.321024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.784801, 12.685010, 11.615562>,  <9.140959, 12.656909, 12.273269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.784801, 12.685010, 11.615562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.789467, 13.054952, 11.767620>,  <8.792266, 13.276917, 11.858854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.789467, 13.054952, 11.767620>,  <8.784801, 12.685010, 11.615562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.789467, 13.054952, 11.767620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210998, 0.369332, -0.905027,
		-0.977417, 0.090766, -0.190834,
		0.011665, 0.924854, 0.380143,
		8.792966, 13.332408, 11.881663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.421443, 13.024009, 11.084715>,  <8.784801, 12.685010, 11.615562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.421443, 13.024009, 11.084715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.633117, 13.290230, 11.295239>,  <8.760121, 13.449963, 11.421555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.633117, 13.290230, 11.295239>,  <8.421443, 13.024009, 11.084715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.633117, 13.290230, 11.295239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181775, 0.516956, -0.836489,
		-0.828808, 0.538327, 0.152584,
		0.529184, 0.665552, 0.526312,
		8.791872, 13.489896, 11.453133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.190008, 13.599669, 10.852732>,  <8.421443, 13.024009, 11.084715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.190008, 13.599669, 10.852732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.538374, 13.723028, 11.005780>,  <8.747394, 13.797044, 11.097610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.538374, 13.723028, 11.005780>,  <8.190008, 13.599669, 10.852732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.538374, 13.723028, 11.005780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045920, 0.724102, -0.688163,
		-0.489285, 0.616901, 0.616469,
		0.870914, 0.308400, 0.382620,
		8.799648, 13.815548, 11.120566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.189987, 14.278131, 10.838294>,  <8.190008, 13.599669, 10.852732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.189987, 14.278131, 10.838294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.583062, 14.225350, 10.890318>,  <8.818907, 14.193683, 10.921532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.583062, 14.225350, 10.890318>,  <8.189987, 14.278131, 10.838294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.583062, 14.225350, 10.890318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184513, 0.760508, -0.622562,
		-0.016764, 0.635781, 0.771687,
		0.982687, -0.131949, 0.130059,
		8.877869, 14.185765, 10.929336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.412364, 14.982616, 10.832329>,  <8.189987, 14.278131, 10.838294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.412364, 14.982616, 10.832329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.726066, 14.755224, 10.732910>,  <8.914287, 14.618789, 10.673259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.726066, 14.755224, 10.732910>,  <8.412364, 14.982616, 10.832329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.726066, 14.755224, 10.732910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306446, 0.703239, -0.641517,
		0.539478, 0.426946, 0.725727,
		0.784254, -0.568481, -0.248546,
		8.961342, 14.584680, 10.658346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977960, 15.394725, 10.819531>,  <8.412364, 14.982616, 10.832329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977960, 15.394725, 10.819531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.057018, 15.073203, 10.595092>,  <9.104453, 14.880290, 10.460428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.057018, 15.073203, 10.595092>,  <8.977960, 15.394725, 10.819531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.057018, 15.073203, 10.595092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129179, 0.588756, -0.797922,
		0.971724, 0.085224, 0.220201,
		0.197646, -0.803805, -0.561100,
		9.116312, 14.832062, 10.426762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.473098, 15.633615, 10.371646>,  <8.977960, 15.394725, 10.819531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.473098, 15.633615, 10.371646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.329075, 15.305413, 10.194050>,  <9.242661, 15.108492, 10.087492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.329075, 15.305413, 10.194050>,  <9.473098, 15.633615, 10.371646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.329075, 15.305413, 10.194050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005825, 0.473923, -0.880547,
		0.932912, -0.319634, -0.165860,
		-0.360058, -0.820507, -0.443990,
		9.221057, 15.059261, 10.060853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.924079, 15.435623, 9.909754>,  <9.473098, 15.633615, 10.371646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.924079, 15.435623, 9.909754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.590942, 15.254297, 9.782706>,  <9.391061, 15.145502, 9.706477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.590942, 15.254297, 9.782706>,  <9.924079, 15.435623, 9.909754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.590942, 15.254297, 9.782706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139219, 0.383823, -0.912851,
		0.535719, -0.804478, -0.256553,
		-0.832840, -0.453315, -0.317620,
		9.341090, 15.118303, 9.687420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.937168, 15.397679, 9.171349>,  <9.924079, 15.435623, 9.909754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.937168, 15.397679, 9.171349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.556376, 15.279112, 9.201999>,  <9.327901, 15.207972, 9.220388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.556376, 15.279112, 9.201999>,  <9.937168, 15.397679, 9.171349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.556376, 15.279112, 9.201999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199216, 0.409683, -0.890209,
		0.232480, -0.862726, -0.449061,
		-0.951980, -0.296416, 0.076626,
		9.270782, 15.190187, 9.224986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.713984, 14.970889, 8.485781>,  <9.937168, 15.397679, 9.171349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.713984, 14.970889, 8.485781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.402626, 15.167320, 8.642213>,  <9.215812, 15.285179, 8.736073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.402626, 15.167320, 8.642213>,  <9.713984, 14.970889, 8.485781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402626, 15.167320, 8.642213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179937, 0.422299, -0.888418,
		-0.601436, -0.761909, -0.240352,
		-0.778394, 0.491078, 0.391081,
		9.169107, 15.314644, 8.759538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.162260, 14.707788, 8.103405>,  <9.713984, 14.970889, 8.485781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.162260, 14.707788, 8.103405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.050508, 15.060789, 8.254739>,  <8.983458, 15.272590, 8.345539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.050508, 15.060789, 8.254739>,  <9.162260, 14.707788, 8.103405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050508, 15.060789, 8.254739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331404, 0.281185, -0.900615,
		-0.901176, -0.376995, 0.213907,
		-0.279380, 0.882502, 0.378335,
		8.966695, 15.325540, 8.368239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.605616, 14.888449, 7.605282>,  <9.162260, 14.707788, 8.103405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.605616, 14.888449, 7.605282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.659693, 15.237574, 7.792865>,  <8.692139, 15.447048, 7.905416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.659693, 15.237574, 7.792865>,  <8.605616, 14.888449, 7.605282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.659693, 15.237574, 7.792865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339486, 0.485459, -0.805654,
		-0.930845, -0.050287, 0.361938,
		0.135192, 0.872812, 0.468958,
		8.700251, 15.499417, 7.933553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.058539, 15.300977, 7.679092>,  <8.605616, 14.888449, 7.605282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.058539, 15.300977, 7.679092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359433, 15.564534, 7.678416>,  <8.539969, 15.722669, 7.678010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.359433, 15.564534, 7.678416>,  <8.058539, 15.300977, 7.679092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.359433, 15.564534, 7.678416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353042, 0.400886, -0.845371,
		-0.556330, 0.636515, 0.534177,
		0.752235, 0.658893, -0.001691,
		8.585104, 15.762202, 7.677908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.529650, 21.215185, 21.603729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.230768, 21.131222, 21.855959>,  <19.051439, 21.080843, 22.007296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.230768, 21.131222, 21.855959>,  <19.529650, 21.215185, 21.603729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.230768, 21.131222, 21.855959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138793, 0.878603, 0.456939,
		-0.649939, 0.428946, -0.627363,
		-0.747205, -0.209909, 0.630573,
		19.006607, 21.068249, 22.045132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.115314, 21.811842, 21.636480>,  <19.529650, 21.215185, 21.603729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.115314, 21.811842, 21.636480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.053223, 21.589817, 21.963358>,  <19.015966, 21.456602, 22.159485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.053223, 21.589817, 21.963358>,  <19.115314, 21.811842, 21.636480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.053223, 21.589817, 21.963358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090856, 0.815695, 0.571303,
		-0.983691, 0.162931, -0.076191,
		-0.155231, -0.555064, 0.817195,
		19.006653, 21.423298, 22.208517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660217, 22.175608, 22.101955>,  <19.115314, 21.811842, 21.636480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660217, 22.175608, 22.101955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.801140, 21.930059, 22.384527>,  <18.885693, 21.782730, 22.554070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.801140, 21.930059, 22.384527>,  <18.660217, 22.175608, 22.101955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.801140, 21.930059, 22.384527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005949, 0.756278, 0.654224,
		-0.935866, -0.226283, 0.270092,
		0.352304, -0.613873, 0.706429,
		18.906832, 21.745897, 22.596457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.307652, 22.306360, 22.707823>,  <18.660217, 22.175608, 22.101955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.307652, 22.306360, 22.707823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.636507, 22.108562, 22.820650>,  <18.833820, 21.989883, 22.888346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.636507, 22.108562, 22.820650>,  <18.307652, 22.306360, 22.707823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.636507, 22.108562, 22.820650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090219, 0.602386, 0.793090,
		-0.562092, -0.626583, 0.539858,
		0.822139, -0.494495, 0.282067,
		18.883148, 21.960215, 22.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.228283, 22.196096, 23.441088>,  <18.307652, 22.306360, 22.707823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.228283, 22.196096, 23.441088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.618658, 22.145922, 23.369741>,  <18.852882, 22.115816, 23.326935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.618658, 22.145922, 23.369741>,  <18.228283, 22.196096, 23.441088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.618658, 22.145922, 23.369741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218056, 0.558896, 0.800055,
		-0.000671, -0.819696, 0.572799,
		0.975936, -0.125439, -0.178364,
		18.911438, 22.108290, 23.316233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.440432, 22.184385, 24.116301>,  <18.228283, 22.196096, 23.441088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.440432, 22.184385, 24.116301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.764448, 22.272249, 23.898829>,  <18.958858, 22.324966, 23.768345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.764448, 22.272249, 23.898829>,  <18.440432, 22.184385, 24.116301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764448, 22.272249, 23.898829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265362, 0.689487, 0.673937,
		0.522894, -0.690187, 0.500223,
		0.810040, 0.219658, -0.543678,
		19.007460, 22.338146, 23.735725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.015568, 22.303961, 24.590927>,  <18.440432, 22.184385, 24.116301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.015568, 22.303961, 24.590927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.146154, 22.479122, 24.255867>,  <19.224506, 22.584219, 24.054831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.146154, 22.479122, 24.255867>,  <19.015568, 22.303961, 24.590927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.146154, 22.479122, 24.255867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302245, 0.791316, 0.531476,
		0.895583, -0.426684, 0.125983,
		0.326465, 0.437904, -0.837652,
		19.244095, 22.610493, 24.004572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603579, 22.511005, 24.726702>,  <19.015568, 22.303961, 24.590927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603579, 22.511005, 24.726702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.494581, 22.745613, 24.421614>,  <19.429182, 22.886377, 24.238562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.494581, 22.745613, 24.421614>,  <19.603579, 22.511005, 24.726702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.494581, 22.745613, 24.421614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364959, 0.796485, 0.482096,
		0.890253, -0.146993, -0.431094,
		-0.272495, 0.586519, -0.762720,
		19.412832, 22.921568, 24.192797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148966, 22.919924, 24.545036>,  <19.603579, 22.511005, 24.726702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148966, 22.919924, 24.545036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.824589, 23.117666, 24.419830>,  <19.629963, 23.236313, 24.344707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.824589, 23.117666, 24.419830>,  <20.148966, 22.919924, 24.545036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.824589, 23.117666, 24.419830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229045, 0.760468, 0.607640,
		0.538430, 0.421068, -0.729928,
		-0.810945, 0.494358, -0.313015,
		19.581305, 23.265974, 24.325926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.428886, 23.699038, 24.572044>,  <20.148966, 22.919924, 24.545036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.428886, 23.699038, 24.572044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.032743, 23.701366, 24.516680>,  <19.795057, 23.702765, 24.483461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.032743, 23.701366, 24.516680>,  <20.428886, 23.699038, 24.572044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032743, 23.701366, 24.516680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088716, 0.740723, 0.665927,
		0.106402, 0.671786, -0.733064,
		-0.990358, 0.005822, -0.138413,
		19.735636, 23.703114, 24.475157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.342384, 24.308241, 24.319431>,  <20.428886, 23.699038, 24.572044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.342384, 24.308241, 24.319431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.999765, 24.189703, 24.488434>,  <19.794195, 24.118580, 24.589836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.999765, 24.189703, 24.488434>,  <20.342384, 24.308241, 24.319431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.999765, 24.189703, 24.488434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024327, 0.840971, 0.540534,
		-0.515498, 0.452713, -0.727539,
		-0.856545, -0.296343, 0.422506,
		19.742802, 24.100800, 24.615185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892828, 24.874098, 24.246649>,  <20.342384, 24.308241, 24.319431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892828, 24.874098, 24.246649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.756474, 24.654665, 24.552029>,  <19.674662, 24.523005, 24.735256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.756474, 24.654665, 24.552029>,  <19.892828, 24.874098, 24.246649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.756474, 24.654665, 24.552029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066835, 0.795893, 0.601736,
		-0.937726, 0.256149, -0.234644,
		-0.340885, -0.548582, 0.763450,
		19.654207, 24.490091, 24.781063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784735, 25.363424, 24.759226>,  <19.892828, 24.874098, 24.246649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784735, 25.363424, 24.759226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.720291, 25.011292, 24.937693>,  <19.681625, 24.800013, 25.044773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.720291, 25.011292, 24.937693>,  <19.784735, 25.363424, 24.759226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.720291, 25.011292, 24.937693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053918, 0.459247, 0.886671,
		-0.985463, 0.118793, -0.121454,
		-0.161108, -0.880330, 0.446166,
		19.671959, 24.747192, 25.071543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173712, 25.441130, 25.116453>,  <19.784735, 25.363424, 24.759226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173712, 25.441130, 25.116453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.440170, 25.190067, 25.277599>,  <19.600044, 25.039431, 25.374287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.440170, 25.190067, 25.277599>,  <19.173712, 25.441130, 25.116453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440170, 25.190067, 25.277599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084470, 0.473194, 0.876899,
		-0.741023, -0.618172, 0.262198,
		0.666145, -0.627655, 0.402864,
		19.640015, 25.001770, 25.398458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025444, 26.133762, 25.334721>,  <19.173712, 25.441130, 25.116453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025444, 26.133762, 25.334721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.092833, 26.377380, 25.024706>,  <19.133266, 26.523552, 24.838697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.092833, 26.377380, 25.024706>,  <19.025444, 26.133762, 25.334721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.092833, 26.377380, 25.024706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334340, -0.704355, -0.626180,
		-0.927272, 0.364619, 0.084966,
		0.168471, 0.609047, -0.775035,
		19.143373, 26.560095, 24.792194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594622, 25.810671, 24.865398>,  <19.025444, 26.133762, 25.334721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594622, 25.810671, 24.865398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.822685, 26.029320, 24.620083>,  <18.959524, 26.160509, 24.472893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.822685, 26.029320, 24.620083>,  <18.594622, 25.810671, 24.865398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.822685, 26.029320, 24.620083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289885, -0.564636, -0.772757,
		-0.768689, 0.618379, -0.163476,
		0.570161, 0.546620, -0.613288,
		18.993734, 26.193306, 24.436096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133785, 26.204718, 24.353945>,  <18.594622, 25.810671, 24.865398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133785, 26.204718, 24.353945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.508221, 26.133650, 24.232504>,  <18.732882, 26.091009, 24.159639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.508221, 26.133650, 24.232504>,  <18.133785, 26.204718, 24.353945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508221, 26.133650, 24.232504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346895, -0.609406, -0.712943,
		-0.058350, 0.772695, -0.632090,
		0.936087, -0.177669, -0.303603,
		18.789047, 26.080349, 24.141422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005323, 26.262388, 23.652094>,  <18.133785, 26.204718, 24.353945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.005323, 26.262388, 23.652094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.376896, 26.114334, 23.655855>,  <18.599840, 26.025501, 23.658112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.376896, 26.114334, 23.655855>,  <18.005323, 26.262388, 23.652094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.376896, 26.114334, 23.655855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207534, -0.541547, -0.814651,
		0.306623, 0.754803, -0.579875,
		0.928930, -0.370135, 0.009404,
		18.655575, 26.003294, 23.658676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.277040, 26.481455, 23.077906>,  <18.005323, 26.262388, 23.652094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.277040, 26.481455, 23.077906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.510517, 26.171118, 23.173712>,  <18.650604, 25.984915, 23.231195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.510517, 26.171118, 23.173712>,  <18.277040, 26.481455, 23.077906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510517, 26.171118, 23.173712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241945, -0.447764, -0.860796,
		0.775090, 0.444492, -0.449069,
		0.583694, -0.775844, 0.239515,
		18.685625, 25.938364, 23.245565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536837, 26.317289, 22.408552>,  <18.277040, 26.481455, 23.077906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536837, 26.317289, 22.408552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.621296, 25.989120, 22.621088>,  <18.671972, 25.792219, 22.748610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.621296, 25.989120, 22.621088>,  <18.536837, 26.317289, 22.408552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.621296, 25.989120, 22.621088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180098, -0.566942, -0.803829,
		0.960719, 0.074034, -0.267466,
		0.211148, -0.820424, 0.531339,
		18.684641, 25.742992, 22.780489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911072, 25.929035, 21.960505>,  <18.536837, 26.317289, 22.408552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911072, 25.929035, 21.960505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.756811, 25.681183, 22.233952>,  <18.664255, 25.532471, 22.398020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.756811, 25.681183, 22.233952>,  <18.911072, 25.929035, 21.960505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.756811, 25.681183, 22.233952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098139, -0.709179, -0.698165,
		0.917410, -0.336339, 0.212687,
		-0.385653, -0.619630, 0.683615,
		18.641115, 25.495295, 22.439035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138065, 25.319435, 21.689938>,  <18.911072, 25.929035, 21.960505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138065, 25.319435, 21.689938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.877073, 25.205561, 21.970858>,  <18.720478, 25.137236, 22.139410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.877073, 25.205561, 21.970858>,  <19.138065, 25.319435, 21.689938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.877073, 25.205561, 21.970858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195317, -0.832265, -0.518832,
		0.732204, -0.475698, 0.487430,
		-0.652478, -0.284687, 0.702300,
		18.681330, 25.120155, 22.181547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234392, 24.529806, 21.790081>,  <19.138065, 25.319435, 21.689938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234392, 24.529806, 21.790081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.878695, 24.605564, 21.956633>,  <18.665276, 24.651020, 22.056564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.878695, 24.605564, 21.956633>,  <19.234392, 24.529806, 21.790081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878695, 24.605564, 21.956633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368018, -0.836828, -0.405316,
		0.271673, -0.513661, 0.813847,
		-0.889245, 0.189397, 0.416380,
		18.611921, 24.662384, 22.081547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.998928, 23.994402, 22.103920>,  <19.234392, 24.529806, 21.790081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.998928, 23.994402, 22.103920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.654362, 24.183975, 22.030876>,  <18.447622, 24.297720, 21.987049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.654362, 24.183975, 22.030876>,  <18.998928, 23.994402, 22.103920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.654362, 24.183975, 22.030876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404695, -0.857731, -0.317048,
		-0.306889, -0.199210, 0.930663,
		-0.861418, 0.473934, -0.182609,
		18.395937, 24.326155, 21.976093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.451351, 23.643524, 22.353436>,  <18.998928, 23.994402, 22.103920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.451351, 23.643524, 22.353436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289726, 23.876944, 22.071667>,  <18.192751, 24.016994, 21.902605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.289726, 23.876944, 22.071667>,  <18.451351, 23.643524, 22.353436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289726, 23.876944, 22.071667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457437, -0.795782, -0.396841,
		-0.792140, 0.161881, 0.588480,
		-0.404060, 0.583546, -0.704421,
		18.168509, 24.052008, 21.860340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.892937, 23.244356, 22.251551>,  <18.451351, 23.643524, 22.353436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.892937, 23.244356, 22.251551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.903835, 23.497217, 21.941805>,  <17.910376, 23.648933, 21.755959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.903835, 23.497217, 21.941805>,  <17.892937, 23.244356, 22.251551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903835, 23.497217, 21.941805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364099, -0.715161, -0.596637,
		-0.930962, 0.298202, 0.210680,
		0.027248, 0.632155, -0.774363,
		17.912010, 23.686863, 21.709496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.251936, 23.102249, 21.997810>,  <17.892937, 23.244356, 22.251551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.251936, 23.102249, 21.997810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.502382, 23.252878, 21.724703>,  <17.652651, 23.343256, 21.560839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.502382, 23.252878, 21.724703>,  <17.251936, 23.102249, 21.997810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.502382, 23.252878, 21.724703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246103, -0.735445, -0.631311,
		-0.739873, 0.563305, -0.367799,
		0.626116, 0.376573, -0.682767,
		17.690218, 23.365850, 21.519873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862921, 23.188808, 21.411240>,  <17.251936, 23.102249, 21.997810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862921, 23.188808, 21.411240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241730, 23.195097, 21.282927>,  <17.469015, 23.198870, 21.205938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241730, 23.195097, 21.282927>,  <16.862921, 23.188808, 21.411240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241730, 23.195097, 21.282927> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222956, -0.686733, -0.691873,
		-0.231168, 0.726740, -0.646846,
		0.947022, 0.015720, -0.320782,
		17.525837, 23.199814, 21.186691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325434, 23.534933, 21.075859>,  <16.862921, 23.188808, 21.411240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325434, 23.534933, 21.075859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.961811, 23.475273, 21.231485>,  <15.743638, 23.439476, 21.324862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.961811, 23.475273, 21.231485>,  <16.325434, 23.534933, 21.075859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961811, 23.475273, 21.231485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226545, 0.606751, 0.761926,
		-0.349709, 0.780774, -0.517780,
		-0.909055, -0.149152, 0.389066,
		15.689095, 23.430527, 21.348206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205175, 24.028139, 21.474279>,  <16.325434, 23.534933, 21.075859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205175, 24.028139, 21.474279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889959, 23.820501, 21.606661>,  <15.700830, 23.695919, 21.686090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.889959, 23.820501, 21.606661>,  <16.205175, 24.028139, 21.474279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.889959, 23.820501, 21.606661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062870, 0.602642, 0.795531,
		-0.612403, 0.606105, -0.507543,
		-0.788042, -0.519095, 0.330954,
		15.653546, 23.664772, 21.705948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.870807, 24.567682, 21.806694>,  <16.205175, 24.028139, 21.474279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.870807, 24.567682, 21.806694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733770, 24.237623, 21.986364>,  <15.651548, 24.039587, 22.094168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.733770, 24.237623, 21.986364>,  <15.870807, 24.567682, 21.806694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.733770, 24.237623, 21.986364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032669, 0.488284, 0.872073,
		-0.938917, 0.284090, -0.194238,
		-0.342590, -0.825149, 0.449178,
		15.630993, 23.990078, 22.121119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.293283, 24.881306, 22.157892>,  <15.870807, 24.567682, 21.806694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.293283, 24.881306, 22.157892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.402184, 24.527004, 22.308264>,  <15.467524, 24.314425, 22.398487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.402184, 24.527004, 22.308264>,  <15.293283, 24.881306, 22.157892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.402184, 24.527004, 22.308264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057659, 0.374969, 0.925243,
		-0.960498, -0.273573, 0.051014,
		0.272250, -0.885752, 0.375931,
		15.483858, 24.261278, 22.421043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804069, 24.731386, 22.678581>,  <15.293283, 24.881306, 22.157892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804069, 24.731386, 22.678581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.136176, 24.528362, 22.770700>,  <15.335441, 24.406548, 22.825972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.136176, 24.528362, 22.770700>,  <14.804069, 24.731386, 22.678581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.136176, 24.528362, 22.770700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038864, 0.464908, 0.884506,
		-0.556005, -0.725428, 0.405725,
		0.830270, -0.507558, 0.230298,
		15.385257, 24.376095, 22.839790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788634, 24.721758, 23.401501>,  <14.804069, 24.731386, 22.678581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.788634, 24.721758, 23.401501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.166457, 24.612707, 23.328302>,  <15.393151, 24.547277, 23.284384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.166457, 24.612707, 23.328302>,  <14.788634, 24.721758, 23.401501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.166457, 24.612707, 23.328302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276384, 0.359253, 0.891375,
		-0.177270, -0.892532, 0.414685,
		0.944557, -0.272626, -0.182997,
		15.449824, 24.530920, 23.273403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110802, 24.372044, 24.075747>,  <14.788634, 24.721758, 23.401501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110802, 24.372044, 24.075747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.417637, 24.507233, 23.857626>,  <15.601738, 24.588346, 23.726753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.417637, 24.507233, 23.857626>,  <15.110802, 24.372044, 24.075747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417637, 24.507233, 23.857626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446154, 0.329751, 0.831992,
		0.461002, -0.881499, 0.102161,
		0.767087, 0.337971, -0.545301,
		15.647763, 24.608624, 23.694036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.341517, 23.743694, 24.469088>,  <15.110802, 24.372044, 24.075747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.341517, 23.743694, 24.469088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.249147, 23.468096, 24.743883>,  <15.193726, 23.302736, 24.908760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.249147, 23.468096, 24.743883>,  <15.341517, 23.743694, 24.469088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.249147, 23.468096, 24.743883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017629, -0.708921, -0.705067,
		0.972812, -0.150708, 0.175855,
		-0.230926, -0.688998, 0.686990,
		15.179870, 23.261396, 24.949980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626865, 23.157467, 24.262785>,  <15.341517, 23.743694, 24.469088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.626865, 23.157467, 24.262785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.406547, 22.970249, 24.539207>,  <15.274355, 22.857918, 24.705061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.406547, 22.970249, 24.539207>,  <15.626865, 23.157467, 24.262785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406547, 22.970249, 24.539207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075932, -0.852635, -0.516960,
		0.831177, -0.232267, 0.505169,
		-0.550798, -0.468044, 0.691055,
		15.241307, 22.829836, 24.746523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.900842, 22.493917, 24.207624>,  <15.626865, 23.157467, 24.262785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.900842, 22.493917, 24.207624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.549808, 22.449505, 24.394180>,  <15.339188, 22.422857, 24.506113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.549808, 22.449505, 24.394180>,  <15.900842, 22.493917, 24.207624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.549808, 22.449505, 24.394180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243310, -0.735072, -0.632827,
		0.413094, -0.668836, 0.618072,
		-0.877584, -0.111034, 0.466388,
		15.286532, 22.416195, 24.534096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.823666, 21.786760, 24.392038>,  <15.900842, 22.493917, 24.207624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.823666, 21.786760, 24.392038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.455186, 21.941296, 24.373556>,  <15.234097, 22.034016, 24.362467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.455186, 21.941296, 24.373556>,  <15.823666, 21.786760, 24.392038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455186, 21.941296, 24.373556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277232, -0.735047, -0.618747,
		-0.273006, -0.557181, 0.784230,
		-0.921200, 0.386336, -0.046204,
		15.178825, 22.057196, 24.359695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445228, 21.236214, 24.206919>,  <15.823666, 21.786760, 24.392038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445228, 21.236214, 24.206919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.137254, 21.482525, 24.139965>,  <14.952470, 21.630312, 24.099792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.137254, 21.482525, 24.139965>,  <15.445228, 21.236214, 24.206919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.137254, 21.482525, 24.139965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342538, -0.620135, -0.705763,
		-0.538395, -0.486055, 0.688391,
		-0.769934, 0.615779, -0.167385,
		14.906274, 21.667259, 24.089750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778152, 20.851139, 24.251343>,  <15.445228, 21.236214, 24.206919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778152, 20.851139, 24.251343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.702530, 21.176746, 24.031658>,  <14.657156, 21.372110, 23.899847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.702530, 21.176746, 24.031658>,  <14.778152, 20.851139, 24.251343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.702530, 21.176746, 24.031658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533570, -0.554683, -0.638458,
		-0.824355, 0.172338, 0.539202,
		-0.189056, 0.814018, -0.549210,
		14.645813, 21.420952, 23.866896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101092, 20.751760, 24.032314>,  <14.778152, 20.851139, 24.251343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101092, 20.751760, 24.032314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.265006, 21.021481, 23.786583>,  <14.363355, 21.183311, 23.639145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.265006, 21.021481, 23.786583>,  <14.101092, 20.751760, 24.032314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.265006, 21.021481, 23.786583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461346, -0.427781, -0.777279,
		-0.786916, 0.601935, 0.135786,
		0.409785, 0.674298, -0.614328,
		14.387941, 21.223770, 23.602285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<20.229925, 22.340294, 26.850416> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.869852, 22.209040, 26.735872>,  <19.653809, 22.130287, 26.667145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.869852, 22.209040, 26.735872>,  <20.229925, 22.340294, 26.850416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869852, 22.209040, 26.735872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429611, 0.776943, 0.460211,
		0.071475, 0.537297, -0.840359,
		-0.900181, -0.328134, -0.286361,
		19.599798, 22.110600, 26.649963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234299, 21.915291, 26.365654>,  <20.229925, 22.340294, 26.850416>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234299, 21.915291, 26.365654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.105228, 21.679110, 26.661558>,  <20.027786, 21.537401, 26.839102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.105228, 21.679110, 26.661558>,  <20.234299, 21.915291, 26.365654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105228, 21.679110, 26.661558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171514, -0.732154, -0.659191,
		0.930840, -0.339585, 0.134978,
		-0.322677, -0.590451, 0.739762,
		20.008425, 21.501974, 26.883486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394882, 21.233183, 26.110632>,  <20.234299, 21.915291, 26.365654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394882, 21.233183, 26.110632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.112429, 21.256445, 26.392906>,  <19.942957, 21.270401, 26.562271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.112429, 21.256445, 26.392906>,  <20.394882, 21.233183, 26.110632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.112429, 21.256445, 26.392906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610442, -0.555003, -0.565095,
		0.358795, -0.829813, 0.427406,
		-0.706135, 0.058153, 0.705685,
		19.900589, 21.273891, 26.604612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.249788, 20.614674, 26.499479>,  <20.394882, 21.233183, 26.110632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.249788, 20.614674, 26.499479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.917330, 20.836695, 26.486151>,  <19.717855, 20.969908, 26.478153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.917330, 20.836695, 26.486151>,  <20.249788, 20.614674, 26.499479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.917330, 20.836695, 26.486151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481442, -0.748314, -0.456333,
		-0.278226, -0.363237, 0.889185,
		-0.831147, 0.555055, -0.033323,
		19.667986, 21.003212, 26.476154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564583, 20.237144, 26.892332>,  <20.249788, 20.614674, 26.499479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.564583, 20.237144, 26.892332> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.540419, 20.465994, 26.565155>,  <19.525921, 20.603304, 26.368849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.540419, 20.465994, 26.565155>,  <19.564583, 20.237144, 26.892332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.540419, 20.465994, 26.565155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587688, -0.682742, -0.434151,
		-0.806830, 0.454468, 0.377472,
		-0.060408, 0.572121, -0.817941,
		19.522297, 20.637630, 26.319773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833673, 20.299175, 26.699734>,  <19.564583, 20.237144, 26.892332>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.833673, 20.299175, 26.699734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.037334, 20.347469, 26.358868>,  <19.159531, 20.376446, 26.154348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.037334, 20.347469, 26.358868>,  <18.833673, 20.299175, 26.699734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.037334, 20.347469, 26.358868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624925, -0.628943, -0.462493,
		-0.591803, 0.768019, -0.244777,
		0.509154, 0.120737, -0.852165,
		19.190081, 20.383690, 26.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.615633, 20.313148, 26.071465>,  <18.833673, 20.299175, 26.699734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.615633, 20.313148, 26.071465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.234734, 20.383921, 26.170996>,  <18.006193, 20.426384, 26.230715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.234734, 20.383921, 26.170996>,  <18.615633, 20.313148, 26.071465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.234734, 20.383921, 26.170996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258109, -0.901840, -0.346504,
		0.163094, -0.394183, 0.904445,
		-0.952250, 0.176933, 0.248827,
		17.949059, 20.437000, 26.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.365360, 19.667898, 26.280575>,  <18.615633, 20.313148, 26.071465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.365360, 19.667898, 26.280575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.036131, 19.878607, 26.195662>,  <17.838593, 20.005032, 26.144714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.036131, 19.878607, 26.195662>,  <18.365360, 19.667898, 26.280575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.036131, 19.878607, 26.195662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419333, -0.815750, -0.398386,
		-0.383026, -0.238885, 0.892314,
		-0.823074, 0.526769, -0.212281,
		17.789209, 20.036638, 26.131977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734163, 19.327631, 26.526112>,  <18.365360, 19.667898, 26.280575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734163, 19.327631, 26.526112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.601547, 19.578075, 26.243816>,  <17.521978, 19.728342, 26.074440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.601547, 19.578075, 26.243816>,  <17.734163, 19.327631, 26.526112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601547, 19.578075, 26.243816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538131, -0.739925, -0.403642,
		-0.774918, 0.245957, 0.582244,
		-0.331538, 0.626112, -0.705738,
		17.502085, 19.765909, 26.032095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.939816, 19.476532, 26.523638>,  <17.734163, 19.327631, 26.526112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.939816, 19.476532, 26.523638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.081741, 19.539297, 26.154968>,  <17.166897, 19.576956, 25.933765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.081741, 19.539297, 26.154968>,  <16.939816, 19.476532, 26.523638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081741, 19.539297, 26.154968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716299, -0.587926, -0.375844,
		-0.600851, 0.793550, -0.096209,
		0.354815, 0.156911, -0.921675,
		17.188187, 19.586370, 25.878466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.371035, 19.391296, 26.185053>,  <16.939816, 19.476532, 26.523638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.371035, 19.391296, 26.185053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.653090, 19.388968, 25.901434>,  <16.822323, 19.387569, 25.731262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.653090, 19.388968, 25.901434>,  <16.371035, 19.391296, 26.185053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.653090, 19.388968, 25.901434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529835, -0.668874, -0.521423,
		-0.471227, 0.743353, -0.474733,
		0.705138, -0.005822, -0.709046,
		16.864632, 19.387220, 25.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.086605, 19.277987, 25.496222>,  <16.371035, 19.391296, 26.185053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.086605, 19.277987, 25.496222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.457472, 19.174726, 25.387615>,  <16.679991, 19.112770, 25.322451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.457472, 19.174726, 25.387615>,  <16.086605, 19.277987, 25.496222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457472, 19.174726, 25.387615> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366648, -0.774212, -0.515913,
		-0.077027, 0.577887, -0.812473,
		0.927166, -0.258152, -0.271517,
		16.735622, 19.097281, 25.306160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.439799, 18.898014, 25.834534>,  <16.086605, 19.277987, 25.496222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.439799, 18.898014, 25.834534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.050303, 18.967892, 25.892923>,  <14.816605, 19.009817, 25.927958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.050303, 18.967892, 25.892923>,  <15.439799, 18.898014, 25.834534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.050303, 18.967892, 25.892923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223672, 0.853535, 0.470584,
		-0.042388, 0.490878, -0.870196,
		-0.973742, 0.174692, 0.145975,
		14.758180, 19.020300, 25.936716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.353257, 19.637630, 25.634533>,  <15.439799, 18.898014, 25.834534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.353257, 19.637630, 25.634533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.060791, 19.536905, 25.888144>,  <14.885311, 19.476471, 26.040310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.060791, 19.536905, 25.888144>,  <15.353257, 19.637630, 25.634533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.060791, 19.536905, 25.888144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081694, 0.890377, 0.447834,
		-0.677291, 0.379236, -0.630441,
		-0.731165, -0.251811, 0.634026,
		14.841441, 19.461363, 26.078352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.203437, 20.303896, 25.776052>,  <15.353257, 19.637630, 25.634533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.203437, 20.303896, 25.776052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.016026, 20.103468, 26.067095>,  <14.903581, 19.983212, 26.241720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.016026, 20.103468, 26.067095>,  <15.203437, 20.303896, 25.776052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.016026, 20.103468, 26.067095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046451, 0.808485, 0.586680,
		-0.882228, 0.308672, -0.355520,
		-0.468525, -0.501072, 0.727607,
		14.875469, 19.953146, 26.285378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.724799, 20.783073, 26.054079>,  <15.203437, 20.303896, 25.776052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.724799, 20.783073, 26.054079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.744397, 20.493883, 26.329733>,  <14.756156, 20.320370, 26.495125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.744397, 20.493883, 26.329733>,  <14.724799, 20.783073, 26.054079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744397, 20.493883, 26.329733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290616, 0.649792, 0.702362,
		-0.955585, -0.234685, -0.178272,
		0.048994, -0.722975, 0.689134,
		14.759095, 20.276991, 26.536472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106930, 20.788929, 26.478994>,  <14.724799, 20.783073, 26.054079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.106930, 20.788929, 26.478994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.425564, 20.633537, 26.664267>,  <14.616744, 20.540302, 26.775431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.425564, 20.633537, 26.664267>,  <14.106930, 20.788929, 26.478994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.425564, 20.633537, 26.664267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053880, 0.717516, 0.694455,
		-0.602120, -0.578148, 0.550632,
		0.796585, -0.388477, 0.463182,
		14.664539, 20.516994, 26.803221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006639, 20.993185, 27.084013>,  <14.106930, 20.788929, 26.478994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006639, 20.993185, 27.084013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.394673, 20.901659, 27.116461>,  <14.627494, 20.846743, 27.135929>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.394673, 20.901659, 27.116461>,  <14.006639, 20.993185, 27.084013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.394673, 20.901659, 27.116461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114636, 0.726295, 0.677756,
		-0.214000, -0.648181, 0.730798,
		0.970084, -0.228815, 0.081122,
		14.685699, 20.833014, 27.140797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.101436, 20.874872, 27.798079>,  <14.006639, 20.993185, 27.084013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.101436, 20.874872, 27.798079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.452472, 20.971489, 27.632431>,  <14.663094, 21.029459, 27.533043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.452472, 20.971489, 27.632431>,  <14.101436, 20.874872, 27.798079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.452472, 20.971489, 27.632431> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119265, 0.726648, 0.676578,
		0.464340, -0.643148, 0.608892,
		0.877590, 0.241543, -0.414117,
		14.715749, 21.043951, 27.508196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.538065, 20.971310, 28.466976>,  <14.101436, 20.874872, 27.798079>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.538065, 20.971310, 28.466976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.773473, 21.115330, 28.177423>,  <14.914718, 21.201742, 28.003691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.773473, 21.115330, 28.177423>,  <14.538065, 20.971310, 28.466976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773473, 21.115330, 28.177423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469364, 0.576868, 0.668522,
		0.658289, -0.733202, 0.170501,
		0.588518, 0.360054, -0.723884,
		14.950028, 21.223345, 27.960258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196339, 20.883226, 28.712143>,  <14.538065, 20.971310, 28.466976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.196339, 20.883226, 28.712143> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.232445, 21.165369, 28.430910>,  <15.254108, 21.334656, 28.262171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.232445, 21.165369, 28.430910>,  <15.196339, 20.883226, 28.712143>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.232445, 21.165369, 28.430910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472313, 0.591204, 0.653757,
		0.876797, -0.391085, -0.279785,
		0.090265, 0.705358, -0.703080,
		15.259524, 21.376976, 28.219986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855624, 21.132204, 28.825653>,  <15.196339, 20.883226, 28.712143>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855624, 21.132204, 28.825653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.676080, 21.411970, 28.603180>,  <15.568353, 21.579830, 28.469696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.676080, 21.411970, 28.603180>,  <15.855624, 21.132204, 28.825653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.676080, 21.411970, 28.603180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478844, 0.713761, 0.511129,
		0.754475, -0.036900, -0.655291,
		-0.448861, 0.699416, -0.556184,
		15.541422, 21.621796, 28.436325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357567, 21.585901, 28.728046>,  <15.855624, 21.132204, 28.825653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357567, 21.585901, 28.728046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.017920, 21.783371, 28.652910>,  <15.814132, 21.901854, 28.607828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.017920, 21.783371, 28.652910>,  <16.357567, 21.585901, 28.728046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017920, 21.783371, 28.652910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401376, 0.834228, 0.378101,
		0.343361, 0.245657, -0.906507,
		-0.849117, 0.493676, -0.187841,
		15.763185, 21.931475, 28.596558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538866, 22.101133, 28.342230>,  <16.357567, 21.585901, 28.728046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538866, 22.101133, 28.342230> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196993, 22.239761, 28.496843>,  <15.991870, 22.322939, 28.589611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.196993, 22.239761, 28.496843>,  <16.538866, 22.101133, 28.342230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.196993, 22.239761, 28.496843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498295, 0.756561, 0.423458,
		-0.145680, 0.554531, -0.819313,
		-0.854681, 0.346570, 0.386536,
		15.940589, 22.343733, 28.612804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.562967, 22.779131, 28.207125>,  <16.538866, 22.101133, 28.342230>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.562967, 22.779131, 28.207125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.308920, 22.737141, 28.513224>,  <16.156492, 22.711946, 28.696884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.308920, 22.737141, 28.513224>,  <16.562967, 22.779131, 28.207125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.308920, 22.737141, 28.513224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495186, 0.705012, 0.507690,
		-0.592804, 0.701383, -0.395783,
		-0.635117, -0.104974, 0.765249,
		16.118385, 22.705648, 28.742798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426600, 23.334335, 28.454361>,  <16.562967, 22.779131, 28.207125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426600, 23.334335, 28.454361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.347599, 23.131302, 28.789825>,  <16.300198, 23.009481, 28.991104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.347599, 23.131302, 28.789825>,  <16.426600, 23.334335, 28.454361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347599, 23.131302, 28.789825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713766, 0.511963, 0.477946,
		-0.671961, 0.693002, 0.261182,
		-0.197502, -0.507584, 0.838661,
		16.288349, 22.979027, 29.041424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.918502, 23.388269, 27.924047>,  <16.426600, 23.334335, 28.454361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.918502, 23.388269, 27.924047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.728281, 23.722998, 27.815544>,  <15.614148, 23.923834, 27.750443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.728281, 23.722998, 27.815544>,  <15.918502, 23.388269, 27.924047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728281, 23.722998, 27.815544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046547, -0.283986, -0.957698,
		-0.878455, -0.468062, 0.096099,
		-0.475553, 0.836821, -0.271256,
		15.585615, 23.974045, 27.734167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482980, 23.187672, 27.437359>,  <15.918502, 23.388269, 27.924047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482980, 23.187672, 27.437359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.434566, 23.575888, 27.354023>,  <15.405518, 23.808817, 27.304022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.434566, 23.575888, 27.354023>,  <15.482980, 23.187672, 27.437359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434566, 23.575888, 27.354023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231216, -0.231673, -0.944916,
		-0.965344, -0.066197, 0.252444,
		-0.121035, 0.970539, -0.208338,
		15.398255, 23.867050, 27.291521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813020, 23.252575, 27.082565>,  <15.482980, 23.187672, 27.437359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813020, 23.252575, 27.082565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.034472, 23.569387, 26.979664>,  <15.167343, 23.759476, 26.917923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.034472, 23.569387, 26.979664>,  <14.813020, 23.252575, 27.082565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034472, 23.569387, 26.979664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116180, -0.232437, -0.965648,
		-0.824619, 0.564499, -0.036666,
		0.553630, 0.792031, -0.257255,
		15.200561, 23.806997, 26.902487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.547046, 23.496191, 26.549368>,  <14.813020, 23.252575, 27.082565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.547046, 23.496191, 26.549368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.914451, 23.650484, 26.514624>,  <15.134893, 23.743061, 26.493778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.914451, 23.650484, 26.514624>,  <14.547046, 23.496191, 26.549368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.914451, 23.650484, 26.514624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060463, -0.080068, -0.994954,
		-0.390742, 0.919129, -0.050221,
		0.918512, 0.385734, -0.086859,
		15.190004, 23.766205, 26.488565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.495725, 24.109146, 26.162012>,  <14.547046, 23.496191, 26.549368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.495725, 24.109146, 26.162012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.857650, 23.944746, 26.117487>,  <15.074805, 23.846106, 26.090773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.857650, 23.944746, 26.117487>,  <14.495725, 24.109146, 26.162012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857650, 23.944746, 26.117487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146652, -0.055371, -0.987637,
		0.399756, 0.909952, -0.110374,
		0.904814, -0.411001, -0.111311,
		15.129094, 23.821445, 26.084093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.551144, 24.042381, 25.466663>,  <14.495725, 24.109146, 26.162012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.551144, 24.042381, 25.466663> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.878110, 23.837408, 25.571920>,  <15.074289, 23.714424, 25.635075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.878110, 23.837408, 25.571920>,  <14.551144, 24.042381, 25.466663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878110, 23.837408, 25.571920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018399, -0.433352, -0.901037,
		0.575755, 0.741363, -0.344800,
		0.817415, -0.512433, 0.263145,
		15.123335, 23.683678, 25.650864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103093, 24.184381, 24.994455>,  <14.551144, 24.042381, 25.466663>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103093, 24.184381, 24.994455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.162198, 23.829958, 25.170214>,  <15.197661, 23.617304, 25.275669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.162198, 23.829958, 25.170214>,  <15.103093, 24.184381, 24.994455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162198, 23.829958, 25.170214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085961, -0.454097, -0.886796,
		0.985280, 0.093265, -0.143265,
		0.147763, -0.886058, 0.439395,
		15.206527, 23.564140, 25.302032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.706834, 24.434971, 24.625906>,  <15.103093, 24.184381, 24.994455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.706834, 24.434971, 24.625906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.837032, 24.634480, 24.304588>,  <15.915152, 24.754185, 24.111797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.837032, 24.634480, 24.304588>,  <15.706834, 24.434971, 24.625906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.837032, 24.634480, 24.304588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484999, 0.641215, 0.594659,
		0.811683, -0.583155, -0.033192,
		0.325495, 0.498772, -0.803293,
		15.934681, 24.784111, 24.063601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.495852, 24.551252, 24.711397>,  <15.706834, 24.434971, 24.625906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.495852, 24.551252, 24.711397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376743, 24.835072, 24.455936>,  <16.305279, 25.005363, 24.302660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.376743, 24.835072, 24.455936>,  <16.495852, 24.551252, 24.711397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376743, 24.835072, 24.455936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631261, 0.648207, 0.425838,
		0.716130, -0.276355, -0.640925,
		-0.297770, 0.709546, -0.638653,
		16.287413, 25.047935, 24.264341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.045454, 24.828114, 24.538610>,  <16.495852, 24.551252, 24.711397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.045454, 24.828114, 24.538610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.766342, 25.099094, 24.445522>,  <16.598875, 25.261683, 24.389669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.766342, 25.099094, 24.445522>,  <17.045454, 24.828114, 24.538610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766342, 25.099094, 24.445522> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622799, 0.734277, 0.270110,
		0.353868, 0.043539, -0.934281,
		-0.697781, 0.677453, -0.232721,
		16.557007, 25.302330, 24.375706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.406239, 25.419525, 24.211464>,  <17.045454, 24.828114, 24.538610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.406239, 25.419525, 24.211464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.061279, 25.515593, 24.389717>,  <16.854303, 25.573233, 24.496668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.061279, 25.515593, 24.389717>,  <17.406239, 25.419525, 24.211464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061279, 25.515593, 24.389717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411481, 0.845335, 0.340723,
		-0.294876, 0.477207, -0.827841,
		-0.862399, 0.240170, 0.445631,
		16.802559, 25.587643, 24.523407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.374159, 26.058374, 24.097599>,  <17.406239, 25.419525, 24.211464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.374159, 26.058374, 24.097599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.134136, 26.018890, 24.415136>,  <16.990122, 25.995201, 24.605659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.134136, 26.018890, 24.415136>,  <17.374159, 26.058374, 24.097599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.134136, 26.018890, 24.415136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410652, 0.813616, 0.411575,
		-0.686510, 0.572963, -0.447681,
		-0.600058, -0.098709, 0.793843,
		16.954119, 25.989277, 24.653290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161350, 26.698078, 24.173313>,  <17.374159, 26.058374, 24.097599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161350, 26.698078, 24.173313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.108578, 26.498785, 24.516092>,  <17.076914, 26.379210, 24.721760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.108578, 26.498785, 24.516092>,  <17.161350, 26.698078, 24.173313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.108578, 26.498785, 24.516092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581846, 0.660983, 0.473874,
		-0.802527, 0.561131, 0.202690,
		-0.131930, -0.498231, 0.856948,
		17.068998, 26.349316, 24.773176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.955311, 27.211170, 24.680868>,  <17.161350, 26.698078, 24.173313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.955311, 27.211170, 24.680868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.074577, 26.911655, 24.917650>,  <17.146137, 26.731945, 25.059719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.074577, 26.911655, 24.917650>,  <16.955311, 27.211170, 24.680868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074577, 26.911655, 24.917650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501610, 0.650546, 0.570243,
		-0.812086, 0.126902, 0.569572,
		0.298168, -0.748789, 0.591955,
		17.164028, 26.687019, 25.095236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744272, 27.422903, 25.441637>,  <16.955311, 27.211170, 24.680868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744272, 27.422903, 25.441637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.036665, 27.152216, 25.476770>,  <17.212101, 26.989803, 25.497850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.036665, 27.152216, 25.476770>,  <16.744272, 27.422903, 25.441637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.036665, 27.152216, 25.476770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487261, 0.607727, 0.627092,
		-0.477745, -0.415595, 0.773977,
		0.730983, -0.676719, 0.087836,
		17.255960, 26.949200, 25.503120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.843563, 27.283926, 26.122076>,  <16.744272, 27.422903, 25.441637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.843563, 27.283926, 26.122076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.190975, 27.197659, 25.943575>,  <17.399422, 27.145899, 25.836473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.190975, 27.197659, 25.943575>,  <16.843563, 27.283926, 26.122076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.190975, 27.197659, 25.943575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473544, 0.626895, 0.618675,
		0.146326, -0.748659, 0.646606,
		0.868530, -0.215668, -0.446254,
		17.451534, 27.132957, 25.809698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.294340, 16.466064, 14.181986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589133, 16.263071, 14.360565>,  <14.766009, 16.141275, 14.467713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.589133, 16.263071, 14.360565>,  <14.294340, 16.466064, 14.181986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.589133, 16.263071, 14.360565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161469, 0.509204, 0.845363,
		-0.656340, -0.695107, 0.293332,
		0.736984, -0.507482, 0.446449,
		14.810228, 16.110826, 14.494500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.082585, 16.306189, 14.914494>,  <14.294340, 16.466064, 14.181986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.082585, 16.306189, 14.914494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482405, 16.318182, 14.913928>,  <14.722297, 16.325378, 14.913589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.482405, 16.318182, 14.913928>,  <14.082585, 16.306189, 14.914494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482405, 16.318182, 14.913928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019039, 0.669734, 0.742357,
		0.023204, -0.741996, 0.670003,
		0.999550, 0.029982, -0.001414,
		14.782269, 16.327177, 14.913504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393387, 16.239658, 15.641286>,  <14.082585, 16.306189, 14.914494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393387, 16.239658, 15.641286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701677, 16.401054, 15.444034>,  <14.886652, 16.497892, 15.325683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.701677, 16.401054, 15.444034>,  <14.393387, 16.239658, 15.641286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.701677, 16.401054, 15.444034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020555, 0.757794, 0.652171,
		0.636835, -0.512782, 0.575758,
		0.770726, 0.403490, -0.493130,
		14.932895, 16.522100, 15.296095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.955276, 16.420341, 16.109251>,  <14.393387, 16.239658, 15.641286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.955276, 16.420341, 16.109251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010872, 16.662138, 15.795492>,  <15.044229, 16.807215, 15.607238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.010872, 16.662138, 15.795492>,  <14.955276, 16.420341, 16.109251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.010872, 16.662138, 15.795492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010819, 0.792962, 0.609174,
		0.990235, -0.076182, 0.116752,
		0.138988, 0.604489, -0.784395,
		15.052568, 16.843485, 15.560174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.571063, 16.903610, 16.237604>,  <14.955276, 16.420341, 16.109251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.571063, 16.903610, 16.237604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345913, 17.078497, 15.957030>,  <15.210823, 17.183430, 15.788686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.345913, 17.078497, 15.957030>,  <15.571063, 16.903610, 16.237604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.345913, 17.078497, 15.957030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022263, 0.856350, 0.515915,
		0.826242, 0.274780, -0.491753,
		-0.562876, 0.437219, -0.701435,
		15.177051, 17.209663, 15.746600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.650932, 17.522552, 16.364634>,  <15.571063, 16.903610, 16.237604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.650932, 17.522552, 16.364634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357883, 17.588642, 16.100523>,  <15.182055, 17.628296, 15.942057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357883, 17.588642, 16.100523>,  <15.650932, 17.522552, 16.364634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357883, 17.588642, 16.100523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209970, 0.867912, 0.450157,
		0.647439, 0.468434, -0.601159,
		-0.732622, 0.165224, -0.660277,
		15.138097, 17.638210, 15.902440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693306, 18.265240, 16.095461>,  <15.650932, 17.522552, 16.364634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693306, 18.265240, 16.095461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309814, 18.161741, 16.048319>,  <15.079720, 18.099642, 16.020033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.309814, 18.161741, 16.048319>,  <15.693306, 18.265240, 16.095461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.309814, 18.161741, 16.048319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284186, 0.884864, 0.369125,
		0.008776, 0.387384, -0.921877,
		-0.958729, -0.258745, -0.117854,
		15.022196, 18.084118, 16.012962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390610, 18.851879, 15.805980>,  <15.693306, 18.265240, 16.095461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390610, 18.851879, 15.805980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078014, 18.650782, 15.953776>,  <14.890457, 18.530123, 16.042454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.078014, 18.650782, 15.953776>,  <15.390610, 18.851879, 15.805980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.078014, 18.650782, 15.953776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244566, 0.791652, 0.559888,
		-0.573990, 0.347181, -0.741620,
		-0.781488, -0.502745, 0.369491,
		14.843568, 18.499958, 16.064623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.714060, 19.330055, 15.707585>,  <15.390610, 18.851879, 15.805980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.714060, 19.330055, 15.707585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603736, 19.060041, 15.981302>,  <14.537541, 18.898033, 16.145533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.603736, 19.060041, 15.981302>,  <14.714060, 19.330055, 15.707585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.603736, 19.060041, 15.981302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341463, 0.734280, 0.586716,
		-0.898516, -0.071838, -0.433022,
		-0.275811, -0.675035, 0.684293,
		14.520992, 18.857531, 16.186590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.971355, 19.458908, 15.950213>,  <14.714060, 19.330055, 15.707585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.971355, 19.458908, 15.950213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122736, 19.241377, 16.249821>,  <14.213564, 19.110859, 16.429585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122736, 19.241377, 16.249821>,  <13.971355, 19.458908, 15.950213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122736, 19.241377, 16.249821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545251, 0.522929, 0.655169,
		-0.747981, -0.656352, -0.098619,
		0.378451, -0.543826, 0.749018,
		14.236271, 19.078230, 16.474525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.435571, 19.269968, 16.399054>,  <13.971355, 19.458908, 15.950213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.435571, 19.269968, 16.399054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.756866, 19.206234, 16.628633>,  <13.949644, 19.167994, 16.766382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.756866, 19.206234, 16.628633>,  <13.435571, 19.269968, 16.399054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.756866, 19.206234, 16.628633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352486, 0.649590, 0.673636,
		-0.480165, -0.743401, 0.465614,
		0.803240, -0.159334, 0.573949,
		13.997838, 19.158434, 16.800817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206123, 19.195641, 17.208820>,  <13.435571, 19.269968, 16.399054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206123, 19.195641, 17.208820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592787, 19.292213, 17.174685>,  <13.824784, 19.350157, 17.154203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.592787, 19.292213, 17.174685>,  <13.206123, 19.195641, 17.208820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.592787, 19.292213, 17.174685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126542, 0.740111, 0.660472,
		0.222621, -0.627651, 0.745985,
		0.966657, 0.241433, -0.085339,
		13.882784, 19.364643, 17.149082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.515926, 18.896120, 17.813976>,  <13.206123, 19.195641, 17.208820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.515926, 18.896120, 17.813976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272605, 18.744465, 18.092896>,  <13.126613, 18.653471, 18.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.272605, 18.744465, 18.092896>,  <13.515926, 18.896120, 17.813976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.272605, 18.744465, 18.092896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309043, -0.696061, -0.648068,
		0.731068, -0.609716, 0.306245,
		-0.608302, -0.379138, 0.697296,
		13.090115, 18.630724, 18.302084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.586470, 18.158911, 17.676872>,  <13.515926, 18.896120, 17.813976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.586470, 18.158911, 17.676872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260937, 18.203577, 17.904982>,  <13.065618, 18.230377, 18.041847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.260937, 18.203577, 17.904982>,  <13.586470, 18.158911, 17.676872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.260937, 18.203577, 17.904982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463692, -0.716274, -0.521479,
		0.350240, -0.688826, 0.634705,
		-0.813831, 0.111665, 0.570271,
		13.016788, 18.237076, 18.076063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.341634, 17.516287, 17.864948>,  <13.586470, 18.158911, 17.676872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.341634, 17.516287, 17.864948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006665, 17.726526, 17.924908>,  <12.805684, 17.852671, 17.960884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.006665, 17.726526, 17.924908>,  <13.341634, 17.516287, 17.864948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.006665, 17.726526, 17.924908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493669, -0.609686, -0.620140,
		-0.234552, -0.593321, 0.770036,
		-0.837422, 0.525599, 0.149901,
		12.755439, 17.884207, 17.969877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712144, 17.031258, 18.124117>,  <13.341634, 17.516287, 17.864948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.712144, 17.031258, 18.124117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537772, 17.361628, 17.981112>,  <12.433149, 17.559849, 17.895308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.537772, 17.361628, 17.981112>,  <12.712144, 17.031258, 18.124117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.537772, 17.361628, 17.981112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584546, -0.561889, -0.585309,
		-0.684304, -0.046169, 0.727734,
		-0.435929, 0.825923, -0.357514,
		12.406993, 17.609406, 17.873857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.033668, 16.944843, 18.210241>,  <12.712144, 17.031258, 18.124117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.033668, 16.944843, 18.210241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075287, 17.210793, 17.914371>,  <12.100259, 17.370361, 17.736849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.075287, 17.210793, 17.914371>,  <12.033668, 16.944843, 18.210241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.075287, 17.210793, 17.914371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652419, -0.515711, -0.555330,
		-0.750682, 0.540360, 0.380116,
		0.104048, 0.664871, -0.739676,
		12.106502, 17.410254, 17.692469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.383719, 17.064812, 17.997013>,  <12.033668, 16.944843, 18.210241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.383719, 17.064812, 17.997013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621433, 17.186169, 17.699080>,  <11.764062, 17.258984, 17.520319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621433, 17.186169, 17.699080>,  <11.383719, 17.064812, 17.997013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621433, 17.186169, 17.699080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607953, -0.436828, -0.663004,
		-0.526515, 0.846838, -0.075152,
		0.594286, 0.303393, -0.744834,
		11.799719, 17.277187, 17.475630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.847451, 17.052013, 17.469267>,  <11.383719, 17.064812, 17.997013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.847451, 17.052013, 17.469267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.211416, 17.065910, 17.303930>,  <11.429795, 17.074247, 17.204729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.211416, 17.065910, 17.303930>,  <10.847451, 17.052013, 17.469267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.211416, 17.065910, 17.303930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347631, -0.479775, -0.805586,
		-0.226298, 0.876703, -0.424477,
		0.909913, 0.034741, -0.413341,
		11.484390, 17.076332, 17.179928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.749505, 17.244833, 16.769812>,  <10.847451, 17.052013, 17.469267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.749505, 17.244833, 16.769812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.118156, 17.091587, 16.745081>,  <11.339347, 16.999640, 16.730242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.118156, 17.091587, 16.745081>,  <10.749505, 17.244833, 16.769812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.118156, 17.091587, 16.745081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297724, -0.595834, -0.745883,
		0.248920, 0.705835, -0.663201,
		0.921628, -0.383117, -0.061829,
		11.394645, 16.976652, 16.726532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.940275, 17.147316, 16.036289>,  <10.749505, 17.244833, 16.769812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.940275, 17.147316, 16.036289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163448, 16.881453, 16.235062>,  <11.297352, 16.721935, 16.354326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163448, 16.881453, 16.235062>,  <10.940275, 17.147316, 16.036289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.163448, 16.881453, 16.235062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203673, -0.690150, -0.694414,
		0.804506, 0.286223, -0.520429,
		0.557932, -0.664657, 0.496933,
		11.330828, 16.682055, 16.384142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.345474, 16.719603, 15.515527>,  <10.940275, 17.147316, 16.036289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.345474, 16.719603, 15.515527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325121, 16.505171, 15.852580>,  <11.312909, 16.376513, 16.054811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.325121, 16.505171, 15.852580>,  <11.345474, 16.719603, 15.515527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.325121, 16.505171, 15.852580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003289, -0.843812, -0.536628,
		0.998699, -0.024534, 0.044698,
		-0.050882, -0.536077, 0.842634,
		11.309856, 16.344347, 16.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.635425, 16.145290, 15.289730>,  <11.345474, 16.719603, 15.515527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.635425, 16.145290, 15.289730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458129, 16.004408, 15.619454>,  <11.351751, 15.919878, 15.817289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.458129, 16.004408, 15.619454>,  <11.635425, 16.145290, 15.289730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.458129, 16.004408, 15.619454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180781, -0.865559, -0.467039,
		0.877985, -0.356030, 0.319977,
		-0.443239, -0.352208, 0.824311,
		11.325157, 15.898746, 15.866748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.871855, 15.412614, 15.315714>,  <11.635425, 16.145290, 15.289730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.871855, 15.412614, 15.315714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554527, 15.436681, 15.558044>,  <11.364131, 15.451121, 15.703443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554527, 15.436681, 15.558044>,  <11.871855, 15.412614, 15.315714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.554527, 15.436681, 15.558044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293700, -0.909475, -0.294271,
		0.533279, -0.411382, 0.739174,
		-0.793319, 0.060167, 0.605827,
		11.316532, 15.454731, 15.739793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.936625, 14.939775, 15.877310>,  <11.871855, 15.412614, 15.315714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.936625, 14.939775, 15.877310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547097, 15.012867, 15.823216>,  <11.313381, 15.056722, 15.790760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.547097, 15.012867, 15.823216>,  <11.936625, 14.939775, 15.877310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.547097, 15.012867, 15.823216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052945, -0.760830, -0.646789,
		-0.221076, -0.622695, 0.750584,
		-0.973818, 0.182729, -0.135233,
		11.254951, 15.067686, 15.782646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.559450, 14.340354, 15.896630>,  <11.936625, 14.939775, 15.877310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.559450, 14.340354, 15.896630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287514, 14.580492, 15.728153>,  <11.124352, 14.724575, 15.627068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.287514, 14.580492, 15.728153>,  <11.559450, 14.340354, 15.896630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.287514, 14.580492, 15.728153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335912, -0.765457, -0.548852,
		-0.651904, -0.231649, 0.722052,
		-0.679841, 0.600345, -0.421191,
		11.083562, 14.760595, 15.601795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.553463, 13.974503, 16.601835>,  <11.559450, 14.340354, 15.896630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.553463, 13.974503, 16.601835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382822, 13.638434, 16.735775>,  <11.280437, 13.436793, 16.816139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.382822, 13.638434, 16.735775>,  <11.553463, 13.974503, 16.601835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.382822, 13.638434, 16.735775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469764, 0.110543, 0.875844,
		-0.772873, 0.530938, 0.347524,
		-0.426602, -0.840170, 0.334851,
		11.254841, 13.386383, 16.836229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.162898, 14.247036, 17.105537>,  <11.553463, 13.974503, 16.601835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.162898, 14.247036, 17.105537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.349488, 13.894583, 17.136539>,  <11.461442, 13.683111, 17.155142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.349488, 13.894583, 17.136539>,  <11.162898, 14.247036, 17.105537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.349488, 13.894583, 17.136539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309913, 0.244880, 0.918688,
		-0.828466, -0.404524, 0.387305,
		0.466475, -0.881132, 0.077507,
		11.489430, 13.630243, 17.159792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.983098, 13.931371, 17.797020>,  <11.162898, 14.247036, 17.105537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.983098, 13.931371, 17.797020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326709, 13.781537, 17.657444>,  <11.532875, 13.691637, 17.573698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.326709, 13.781537, 17.657444>,  <10.983098, 13.931371, 17.797020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.326709, 13.781537, 17.657444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477229, 0.339278, 0.810644,
		-0.185267, -0.862889, 0.470212,
		0.859028, -0.374584, -0.348938,
		11.584417, 13.669162, 17.552763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.227950, 13.340092, 18.040628>,  <10.983098, 13.931371, 17.797020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.227950, 13.340092, 18.040628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530187, 13.577884, 17.930593>,  <11.711529, 13.720559, 17.864573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.530187, 13.577884, 17.930593>,  <11.227950, 13.340092, 18.040628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.530187, 13.577884, 17.930593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177308, 0.218661, 0.959557,
		0.630589, -0.773809, 0.059813,
		0.755592, 0.594481, -0.275088,
		11.756865, 13.756227, 17.848066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.557662, 13.289054, 18.616669>,  <11.227950, 13.340092, 18.040628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.557662, 13.289054, 18.616669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.751808, 13.584174, 18.429022>,  <11.868296, 13.761247, 18.316433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.751808, 13.584174, 18.429022>,  <11.557662, 13.289054, 18.616669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.751808, 13.584174, 18.429022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286907, 0.372440, 0.882594,
		0.825897, -0.562973, -0.030911,
		0.485364, 0.737801, -0.469118,
		11.897417, 13.805514, 18.288286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.156927, 13.444490, 18.968042>,  <11.557662, 13.289054, 18.616669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.156927, 13.444490, 18.968042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125237, 13.792086, 18.772661>,  <12.106222, 14.000643, 18.655434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.125237, 13.792086, 18.772661>,  <12.156927, 13.444490, 18.968042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.125237, 13.792086, 18.772661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296173, 0.488385, 0.820830,
		0.951843, -0.079635, -0.296063,
		-0.079226, 0.868987, -0.488451,
		12.101469, 14.052782, 18.626125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823539, 13.841841, 19.059433>,  <12.156927, 13.444490, 18.968042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823539, 13.841841, 19.059433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519576, 14.090735, 18.984215>,  <12.337198, 14.240072, 18.939085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519576, 14.090735, 18.984215>,  <12.823539, 13.841841, 19.059433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519576, 14.090735, 18.984215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228923, 0.526928, 0.818500,
		0.608387, 0.578937, -0.542861,
		-0.759908, 0.622237, -0.188044,
		12.291604, 14.277407, 18.927801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.058222, 14.498106, 19.221704>,  <12.823539, 13.841841, 19.059433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.058222, 14.498106, 19.221704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665916, 14.575860, 19.228807>,  <12.430533, 14.622513, 19.233068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.665916, 14.575860, 19.228807>,  <13.058222, 14.498106, 19.221704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.665916, 14.575860, 19.228807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146029, 0.670317, 0.727565,
		0.129524, 0.716163, -0.685809,
		-0.980764, 0.194385, 0.017758,
		12.371687, 14.634175, 19.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.978269, 15.194007, 19.255396>,  <13.058222, 14.498106, 19.221704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.978269, 15.194007, 19.255396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637751, 15.036864, 19.394512>,  <12.433439, 14.942578, 19.477982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.637751, 15.036864, 19.394512>,  <12.978269, 15.194007, 19.255396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637751, 15.036864, 19.394512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065426, 0.578202, 0.813266,
		-0.520591, 0.715084, -0.466518,
		-0.851296, -0.392856, 0.347792,
		12.382362, 14.919007, 19.498850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.714155, 15.774207, 19.537012>,  <12.978269, 15.194007, 19.255396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.714155, 15.774207, 19.537012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.478674, 15.490084, 19.691357>,  <12.337385, 15.319610, 19.783964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.478674, 15.490084, 19.691357>,  <12.714155, 15.774207, 19.537012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.478674, 15.490084, 19.691357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019038, 0.465030, 0.885090,
		-0.808126, 0.528401, -0.260241,
		-0.588702, -0.710310, 0.385863,
		12.302063, 15.276991, 19.807116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.155264, 16.100805, 19.984905>,  <12.714155, 15.774207, 19.537012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.155264, 16.100805, 19.984905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174479, 15.716638, 20.094662>,  <12.186007, 15.486137, 20.160515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.174479, 15.716638, 20.094662>,  <12.155264, 16.100805, 19.984905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.174479, 15.716638, 20.094662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012148, 0.274125, 0.961618,
		-0.998772, -0.049525, 0.001501,
		0.048036, -0.960418, 0.274390,
		12.188890, 15.428513, 20.176979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.606142, 16.070404, 20.506424>,  <12.155264, 16.100805, 19.984905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.606142, 16.070404, 20.506424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836693, 15.749851, 20.570393>,  <11.975023, 15.557519, 20.608774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.836693, 15.749851, 20.570393>,  <11.606142, 16.070404, 20.506424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.836693, 15.749851, 20.570393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097639, 0.126761, 0.987116,
		-0.811330, -0.584566, -0.005184,
		0.576377, -0.801383, 0.159922,
		12.009606, 15.509437, 20.618368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.250311, 15.705613, 21.050228>,  <11.606142, 16.070404, 20.506424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.250311, 15.705613, 21.050228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630843, 15.582588, 21.057978>,  <11.859162, 15.508773, 21.062628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630843, 15.582588, 21.057978>,  <11.250311, 15.705613, 21.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630843, 15.582588, 21.057978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024173, 0.137146, 0.990256,
		-0.307223, -0.941592, 0.137906,
		0.951330, -0.307563, 0.019373,
		11.916243, 15.490319, 21.063789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.281306, 15.301138, 21.632244>,  <11.250311, 15.705613, 21.050228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.281306, 15.301138, 21.632244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.658189, 15.416909, 21.564745>,  <11.884318, 15.486372, 21.524244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.658189, 15.416909, 21.564745>,  <11.281306, 15.301138, 21.632244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.658189, 15.416909, 21.564745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120653, 0.176758, 0.976831,
		0.312552, -0.940737, 0.131622,
		0.942207, 0.289430, -0.168749,
		11.940851, 15.503738, 21.514120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.695736, 15.106246, 22.191568>,  <11.281306, 15.301138, 21.632244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.695736, 15.106246, 22.191568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890852, 15.411849, 22.022640>,  <12.007921, 15.595211, 21.921284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.890852, 15.411849, 22.022640>,  <11.695736, 15.106246, 22.191568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.890852, 15.411849, 22.022640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325891, 0.289432, 0.900013,
		0.809850, -0.576647, -0.107801,
		0.487789, 0.764007, -0.422321,
		12.037189, 15.641051, 21.895945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.361542, 15.143283, 22.629131>,  <11.695736, 15.106246, 22.191568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.361542, 15.143283, 22.629131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398555, 15.481618, 22.418989>,  <12.420763, 15.684619, 22.292904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.398555, 15.481618, 22.418989>,  <12.361542, 15.143283, 22.629131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.398555, 15.481618, 22.418989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447515, 0.435997, 0.780792,
		0.889476, -0.307353, -0.338180,
		0.092533, 0.845837, -0.525354,
		12.426314, 15.735369, 22.261383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.022027, 15.380871, 22.552217>,  <12.361542, 15.143283, 22.629131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.022027, 15.380871, 22.552217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835793, 15.734227, 22.530869>,  <12.724051, 15.946241, 22.518059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.835793, 15.734227, 22.530869>,  <13.022027, 15.380871, 22.552217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.835793, 15.734227, 22.530869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522188, 0.322905, 0.789337,
		0.714527, 0.339636, -0.611637,
		-0.465587, 0.883391, -0.053370,
		12.696116, 15.999245, 22.514858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.527739, 15.893136, 22.562426>,  <13.022027, 15.380871, 22.552217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.527739, 15.893136, 22.562426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192215, 16.074194, 22.683430>,  <12.990901, 16.182829, 22.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.192215, 16.074194, 22.683430>,  <13.527739, 15.893136, 22.562426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.192215, 16.074194, 22.683430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490928, 0.388675, 0.779694,
		0.235347, 0.802524, -0.548240,
		-0.838810, 0.452644, 0.302508,
		12.940572, 16.209988, 22.774181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.648853, 16.657213, 22.497631>,  <13.527739, 15.893136, 22.562426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.648853, 16.657213, 22.497631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355216, 16.599251, 22.762995>,  <13.179034, 16.564472, 22.922213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.355216, 16.599251, 22.762995>,  <13.648853, 16.657213, 22.497631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.355216, 16.599251, 22.762995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426006, 0.662518, 0.616108,
		-0.528798, 0.734896, -0.424618,
		-0.734093, -0.144907, 0.663408,
		13.134988, 16.555779, 22.962017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442896, 17.331402, 22.743702>,  <13.648853, 16.657213, 22.497631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442896, 17.331402, 22.743702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287829, 17.109974, 23.038532>,  <13.194790, 16.977118, 23.215429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.287829, 17.109974, 23.038532>,  <13.442896, 17.331402, 22.743702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.287829, 17.109974, 23.038532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109594, 0.766253, 0.633124,
		-0.915262, 0.326219, -0.236382,
		-0.387665, -0.553568, 0.737074,
		13.171530, 16.943903, 23.259655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.105291, 17.856871, 23.133430>,  <13.442896, 17.331402, 22.743702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.105291, 17.856871, 23.133430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131238, 17.540606, 23.376953>,  <13.146806, 17.350847, 23.523067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.131238, 17.540606, 23.376953>,  <13.105291, 17.856871, 23.133430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131238, 17.540606, 23.376953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076673, 0.604339, 0.793029,
		-0.994944, -0.098120, -0.021420,
		0.064867, -0.790662, 0.608807,
		13.150698, 17.303408, 23.559595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716781, 18.012217, 23.643408>,  <13.105291, 17.856871, 23.133430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716781, 18.012217, 23.643408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964314, 17.750509, 23.817293>,  <13.112833, 17.593485, 23.921625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.964314, 17.750509, 23.817293>,  <12.716781, 18.012217, 23.643408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.964314, 17.750509, 23.817293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276285, 0.699336, 0.659239,
		-0.735332, -0.287853, 0.613537,
		0.618832, -0.654270, 0.434715,
		13.149963, 17.554228, 23.947708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.601116, 18.115913, 24.318888>,  <12.716781, 18.012217, 23.643408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.601116, 18.115913, 24.318888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.938909, 17.903515, 24.346874>,  <13.141584, 17.776075, 24.363667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.938909, 17.903515, 24.346874>,  <12.601116, 18.115913, 24.318888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.938909, 17.903515, 24.346874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208830, 0.446745, 0.869947,
		-0.493195, -0.720043, 0.488156,
		0.844481, -0.530996, 0.069966,
		13.192253, 17.744217, 24.367865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781019, 18.175333, 24.982691>,  <12.601116, 18.115913, 24.318888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781019, 18.175333, 24.982691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127422, 18.022604, 24.853544>,  <13.335264, 17.930967, 24.776056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.127422, 18.022604, 24.853544>,  <12.781019, 18.175333, 24.982691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127422, 18.022604, 24.853544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496132, 0.575646, 0.649988,
		-0.062321, -0.723080, 0.687947,
		0.866008, -0.381821, -0.322867,
		13.387224, 17.908058, 24.756683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.178917, 17.888256, 25.631477>,  <12.781019, 18.175333, 24.982691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.178917, 17.888256, 25.631477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.415595, 17.984989, 25.323864>,  <13.557602, 18.043030, 25.139296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.415595, 17.984989, 25.323864>,  <13.178917, 17.888256, 25.631477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.415595, 17.984989, 25.323864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625021, 0.464887, 0.627079,
		0.509164, -0.851702, 0.123919,
		0.591693, 0.241834, -0.769035,
		13.593103, 18.057539, 25.093153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.855297, 17.744993, 25.945444>,  <13.178917, 17.888256, 25.631477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.855297, 17.744993, 25.945444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954576, 17.958216, 25.621901>,  <14.014143, 18.086149, 25.427774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.954576, 17.958216, 25.621901>,  <13.855297, 17.744993, 25.945444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.954576, 17.958216, 25.621901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482460, 0.656039, 0.580384,
		0.840019, -0.534291, -0.094352,
		0.248195, 0.533055, -0.808858,
		14.029035, 18.118132, 25.379244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464543, 17.839506, 26.024122>,  <13.855297, 17.744993, 25.945444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464543, 17.839506, 26.024122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378542, 18.147251, 25.783504>,  <14.326941, 18.331898, 25.639133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.378542, 18.147251, 25.783504>,  <14.464543, 17.839506, 26.024122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.378542, 18.147251, 25.783504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468378, 0.621721, 0.627762,
		0.856969, -0.146778, -0.494025,
		-0.215004, 0.769363, -0.601543,
		14.314041, 18.378059, 25.603041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.130238, 18.231182, 25.898584>,  <14.464543, 17.839506, 26.024122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.130238, 18.231182, 25.898584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812380, 18.458294, 25.812637>,  <14.621665, 18.594561, 25.761070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.812380, 18.458294, 25.812637>,  <15.130238, 18.231182, 25.898584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.812380, 18.458294, 25.812637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347484, 0.715627, 0.605915,
		0.497790, 0.406824, -0.765963,
		-0.794645, 0.567778, -0.214867,
		14.573986, 18.628628, 25.748177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
