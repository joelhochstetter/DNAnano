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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<0.310653, 3.540963, 4.050331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.690079, 3.429419, 3.990379>,  <0.917734, 3.362492, 3.954408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.690079, 3.429419, 3.990379>,  <0.310653, 3.540963, 4.050331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.690079, 3.429419, 3.990379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256806, -0.954618, 0.150852,
		-0.185144, -0.104603, -0.977129,
		0.948563, -0.278861, -0.149879,
		0.974648, 3.345760, 3.945415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.318337, 3.066045, 3.537429>,  <0.310653, 3.540963, 4.050331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.318337, 3.066045, 3.537429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.602615, 3.010637, 3.813320>,  <0.773183, 2.977393, 3.978855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.602615, 3.010637, 3.813320>,  <0.318337, 3.066045, 3.537429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.602615, 3.010637, 3.813320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298920, -0.946976, 0.117825,
		0.636834, -0.289911, -0.714419,
		0.710697, -0.138519, 0.689727,
		0.815824, 2.969082, 4.020238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.770051, 2.563020, 3.372102>,  <0.318337, 3.066045, 3.537429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.770051, 2.563020, 3.372102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.791489, 2.559954, 3.771515>,  <0.804351, 2.558114, 4.011163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.791489, 2.559954, 3.771515>,  <0.770051, 2.563020, 3.372102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.791489, 2.559954, 3.771515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301414, -0.953452, 0.008859,
		0.951986, -0.301447, -0.053409,
		0.053593, -0.007665, 0.998533,
		0.807567, 2.557654, 4.071075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.107466, 1.906898, 3.590833>,  <0.770051, 2.563020, 3.372102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.107466, 1.906898, 3.590833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.902985, 2.056246, 3.900482>,  <0.780296, 2.145855, 4.086272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.902985, 2.056246, 3.900482>,  <1.107466, 1.906898, 3.590833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.902985, 2.056246, 3.900482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561522, -0.826986, 0.028058,
		0.650664, -0.420344, 0.632414,
		-0.511203, 0.373371, 0.774123,
		0.749624, 2.168257, 4.132719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.267809, 1.551546, 4.294877>,  <1.107466, 1.906898, 3.590833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.267809, 1.551546, 4.294877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.890381, 1.682745, 4.313168>,  <0.663924, 1.761464, 4.324142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.890381, 1.682745, 4.313168>,  <1.267809, 1.551546, 4.294877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.890381, 1.682745, 4.313168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303677, -0.912034, 0.275635,
		0.132113, 0.246195, 0.960174,
		-0.943571, 0.327998, 0.045728,
		0.607309, 1.781144, 4.326886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.003157, 1.209568, 4.886563>,  <1.267809, 1.551546, 4.294877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.003157, 1.209568, 4.886563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674667, 1.349354, 4.706135>,  <0.477574, 1.433226, 4.597878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.674667, 1.349354, 4.706135>,  <1.003157, 1.209568, 4.886563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.674667, 1.349354, 4.706135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465930, -0.867029, 0.176549,
		-0.329395, 0.355153, 0.874852,
		-0.821224, 0.349465, -0.451071,
		0.428300, 1.454193, 4.570813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.447512, 0.970888, 5.263171>,  <1.003157, 1.209568, 4.886563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.447512, 0.970888, 5.263171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.276810, 1.050634, 4.910324>,  <0.174388, 1.098482, 4.698616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.276810, 1.050634, 4.910324>,  <0.447512, 0.970888, 5.263171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.276810, 1.050634, 4.910324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391694, -0.919911, -0.018412,
		-0.815141, 0.337663, 0.470668,
		-0.426756, 0.199366, -0.882118,
		0.148783, 1.110444, 4.645689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.284313, 0.739737, 5.330013>,  <0.447512, 0.970888, 5.263171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.284313, 0.739737, 5.330013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.183418, 0.767382, 4.943935>,  <-0.122882, 0.783968, 4.712289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.183418, 0.767382, 4.943935>,  <-0.284313, 0.739737, 5.330013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.183418, 0.767382, 4.943935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386408, -0.907277, -0.165945,
		-0.887167, 0.414816, -0.202142,
		0.252236, 0.069112, -0.965195,
		-0.107748, 0.788115, 4.654377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.226783, 0.399127, 4.620128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158981, 0.594635, 4.277813>,  <1.118300, 0.711940, 4.072424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.158981, 0.594635, 4.277813>,  <1.226783, 0.399127, 4.620128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.158981, 0.594635, 4.277813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505717, -0.702173, -0.501203,
		-0.845884, -0.517741, -0.128158,
		-0.169504, 0.488771, -0.855787,
		1.108130, 0.741266, 4.021077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.097452, -0.075240, 4.142739>,  <1.226783, 0.399127, 4.620128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.097452, -0.075240, 4.142739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214752, 0.242344, 3.929710>,  <1.285132, 0.432894, 3.801893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.214752, 0.242344, 3.929710>,  <1.097452, -0.075240, 4.142739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.214752, 0.242344, 3.929710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586875, -0.589249, -0.555304,
		-0.754707, -0.149711, -0.638752,
		0.293249, 0.793960, -0.532572,
		1.302727, 0.480532, 3.769939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.493368, 0.202902, 3.780953>,  <1.097452, -0.075240, 4.142739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.493368, 0.202902, 3.780953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143326, 0.321743, 3.933750>,  <-0.066700, 0.393048, 4.025429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.143326, 0.321743, 3.933750>,  <0.493368, 0.202902, 3.780953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.143326, 0.321743, 3.933750> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343154, 0.937553, 0.056930,
		-0.341225, 0.180903, -0.922410,
		-0.875107, 0.297102, 0.381993,
		-0.119206, 0.410874, 4.048348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.084746, 0.726832, 3.409104>,  <0.493368, 0.202902, 3.780953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.084746, 0.726832, 3.409104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.011215, 0.768143, 3.795219>,  <-0.068792, 0.792929, 4.026888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.011215, 0.768143, 3.795219>,  <0.084746, 0.726832, 3.409104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.011215, 0.768143, 3.795219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181050, 0.981640, -0.060030,
		-0.953765, 0.160363, -0.254196,
		-0.239902, 0.103277, 0.965288,
		-0.083186, 0.799126, 4.084806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.130038, 1.421396, 3.416605>,  <0.084746, 0.726832, 3.409104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.130038, 1.421396, 3.416605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082016, 1.333996, 3.803974>,  <-0.053203, 1.281555, 4.036396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.082016, 1.333996, 3.803974>,  <-0.130038, 1.421396, 3.416605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.082016, 1.333996, 3.803974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200831, 0.960656, 0.191852,
		-0.972242, 0.171456, 0.159214,
		0.120056, -0.218502, 0.968423,
		-0.045999, 1.268445, 4.094501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.580402, 1.846318, 3.849123>,  <-0.130038, 1.421396, 3.416605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.580402, 1.846318, 3.849123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.270309, 1.720966, 4.068508>,  <-0.084254, 1.645755, 4.200139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.270309, 1.720966, 4.068508>,  <-0.580402, 1.846318, 3.849123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.270309, 1.720966, 4.068508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256498, 0.949627, 0.180046,
		-0.577258, 0.001102, 0.816561,
		0.775231, -0.313379, 0.548462,
		-0.037740, 1.626953, 4.233047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.582369, 2.174192, 4.564662>,  <-0.580402, 1.846318, 3.849123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.582369, 2.174192, 4.564662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.212631, 2.056015, 4.468079>,  <0.009211, 1.985109, 4.410129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.212631, 2.056015, 4.468079>,  <-0.582369, 2.174192, 4.564662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.212631, 2.056015, 4.468079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365487, 0.867305, 0.337936,
		0.109576, -0.400618, 0.909669,
		0.924344, -0.295443, -0.241457,
		0.064672, 1.967382, 4.395642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.180200, 2.532008, 4.997073>,  <-0.582369, 2.174192, 4.564662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.180200, 2.532008, 4.997073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.094742, 2.438759, 4.721916>,  <0.259707, 2.382809, 4.556822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.094742, 2.438759, 4.721916>,  <-0.180200, 2.532008, 4.997073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.094742, 2.438759, 4.721916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467414, 0.866894, 0.173262,
		0.555938, -0.440623, 0.704829,
		0.687355, -0.233124, -0.687893,
		0.300948, 2.368822, 4.515548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
