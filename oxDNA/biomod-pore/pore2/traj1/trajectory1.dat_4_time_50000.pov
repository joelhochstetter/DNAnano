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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<22.646570, 17.000158, -2.294206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608059, 17.158001, -1.928689>,  <22.584951, 17.252707, -1.709379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.608059, 17.158001, -1.928689>,  <22.646570, 17.000158, -2.294206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.608059, 17.158001, -1.928689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994555, -0.074914, -0.072440,
		0.039870, -0.915791, 0.399670,
		-0.096280, 0.394606, 0.913792,
		22.579174, 17.276382, -1.654552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.074469, 16.582170, -1.974370>,  <22.646570, 17.000158, -2.294206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.074469, 16.582170, -1.974370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129337, 16.943565, -1.811941>,  <22.162258, 17.160402, -1.714483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.129337, 16.943565, -1.811941>,  <22.074469, 16.582170, -1.974370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.129337, 16.943565, -1.811941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987180, 0.090917, 0.131184,
		0.081603, -0.418870, 0.904372,
		0.137172, 0.903484, 0.406081,
		22.170488, 17.214611, -1.690119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443573, 16.618063, -1.732112>,  <22.074469, 16.582170, -1.974370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443573, 16.618063, -1.732112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622887, 16.966660, -1.652574>,  <21.730474, 17.175817, -1.604851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.622887, 16.966660, -1.652574>,  <21.443573, 16.618063, -1.732112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.622887, 16.966660, -1.652574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893844, 0.434768, 0.109630,
		0.009090, -0.226882, 0.973880,
		0.448285, 0.871494, 0.198845,
		21.757372, 17.228107, -1.592921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.277962, 16.893824, -1.038246>,  <21.443573, 16.618063, -1.732112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.277962, 16.893824, -1.038246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341923, 17.203575, -1.283120>,  <21.380301, 17.389425, -1.430044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.341923, 17.203575, -1.283120>,  <21.277962, 16.893824, -1.038246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.341923, 17.203575, -1.283120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880897, 0.391812, 0.265527,
		0.445480, 0.496813, 0.744798,
		0.159903, 0.774377, -0.612186,
		21.389894, 17.435888, -1.466775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337505, 17.496614, -0.718098>,  <21.277962, 16.893824, -1.038246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337505, 17.496614, -0.718098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219364, 17.584904, -1.089914>,  <21.148479, 17.637878, -1.313004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219364, 17.584904, -1.089914>,  <21.337505, 17.496614, -0.718098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219364, 17.584904, -1.089914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848710, 0.386145, 0.361364,
		0.438699, 0.895641, 0.073282,
		-0.295355, 0.220725, -0.929541,
		21.130758, 17.651121, -1.368776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.061205, 18.191132, -0.688090>,  <21.337505, 17.496614, -0.718098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.061205, 18.191132, -0.688090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837181, 17.967392, -0.932535>,  <20.702766, 17.833149, -1.079203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.837181, 17.967392, -0.932535>,  <21.061205, 18.191132, -0.688090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.837181, 17.967392, -0.932535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828086, 0.356100, 0.432973,
		-0.024565, 0.748547, -0.662626,
		-0.560062, -0.559348, -0.611114,
		20.669163, 17.799587, -1.115870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.709442, 18.606678, -1.169550>,  <21.061205, 18.191132, -0.688090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.709442, 18.606678, -1.169550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523380, 18.264996, -1.076633>,  <20.411743, 18.059986, -1.020883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.523380, 18.264996, -1.076633>,  <20.709442, 18.606678, -1.169550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523380, 18.264996, -1.076633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708470, 0.516561, 0.480870,
		-0.530756, 0.059106, -0.845461,
		-0.465154, -0.854208, 0.232293,
		20.383835, 18.008734, -1.006945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.961267, 18.571321, -1.435178>,  <20.709442, 18.606678, -1.169550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.961267, 18.571321, -1.435178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043774, 18.372845, -1.097836>,  <20.093277, 18.253757, -0.895430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043774, 18.372845, -1.097836>,  <19.961267, 18.571321, -1.435178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043774, 18.372845, -1.097836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692862, 0.534537, 0.483956,
		-0.690940, -0.684151, -0.233537,
		0.206265, -0.496193, 0.843355,
		20.105654, 18.223988, -0.844829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.335733, 18.232105, -1.027569>,  <19.961267, 18.571321, -1.435178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.335733, 18.232105, -1.027569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637371, 18.292217, -0.771833>,  <19.818354, 18.328285, -0.618392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.637371, 18.292217, -0.771833>,  <19.335733, 18.232105, -1.027569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.637371, 18.292217, -0.771833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619882, 0.484494, 0.617262,
		-0.216995, -0.861790, 0.458509,
		0.754095, 0.150279, 0.639341,
		19.863600, 18.337301, -0.580031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059267, 17.971510, -0.386533>,  <19.335733, 18.232105, -1.027569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.059267, 17.971510, -0.386533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361046, 18.227249, -0.327142>,  <19.542112, 18.380693, -0.291507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.361046, 18.227249, -0.327142>,  <19.059267, 17.971510, -0.386533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.361046, 18.227249, -0.327142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464250, 0.359880, 0.809295,
		0.463987, -0.679500, 0.568327,
		0.754446, 0.639348, 0.148478,
		19.587379, 18.419054, -0.282598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339287, 18.042431, 0.328966>,  <19.059267, 17.971510, -0.386533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339287, 18.042431, 0.328966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465305, 18.387676, 0.171091>,  <19.540916, 18.594824, 0.076366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465305, 18.387676, 0.171091>,  <19.339287, 18.042431, 0.328966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465305, 18.387676, 0.171091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539640, 0.505008, 0.673614,
		0.780727, 0.000770, 0.624872,
		0.315046, 0.863114, -0.394689,
		19.559820, 18.646610, 0.052684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902557, 18.501678, 0.762202>,  <19.339287, 18.042431, 0.328966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902557, 18.501678, 0.762202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.616405, 18.673801, 0.541996>,  <19.444715, 18.777075, 0.409872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.616405, 18.673801, 0.541996>,  <19.902557, 18.501678, 0.762202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.616405, 18.673801, 0.541996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422205, 0.361575, 0.831268,
		0.556755, 0.827102, -0.076984,
		-0.715379, 0.430310, -0.550515,
		19.401793, 18.802895, 0.376842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789391, 19.225819, 0.893921>,  <19.902557, 18.501678, 0.762202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789391, 19.225819, 0.893921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447357, 19.059483, 0.770045>,  <19.242136, 18.959681, 0.695719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.447357, 19.059483, 0.770045>,  <19.789391, 19.225819, 0.893921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.447357, 19.059483, 0.770045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480159, 0.409718, 0.775615,
		-0.195646, 0.811917, -0.550012,
		-0.855085, -0.415839, -0.309690,
		19.190832, 18.934731, 0.677138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258739, 19.783733, 0.802176>,  <19.789391, 19.225819, 0.893921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258739, 19.783733, 0.802176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.122070, 19.429413, 0.927788>,  <19.040070, 19.216820, 1.003155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.122070, 19.429413, 0.927788>,  <19.258739, 19.783733, 0.802176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.122070, 19.429413, 0.927788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413596, 0.441763, 0.796106,
		-0.843918, 0.142126, -0.517303,
		-0.341673, -0.885802, 0.314029,
		19.019569, 19.163671, 1.021996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.524244, 19.852747, 0.932881>,  <19.258739, 19.783733, 0.802176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.524244, 19.852747, 0.932881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701084, 19.580990, 1.167137>,  <18.807188, 19.417936, 1.307690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.701084, 19.580990, 1.167137>,  <18.524244, 19.852747, 0.932881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701084, 19.580990, 1.167137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323542, 0.488171, 0.810561,
		-0.836582, -0.547827, -0.003993,
		0.442098, -0.679393, 0.585640,
		18.833714, 19.377172, 1.342829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051884, 19.431261, 1.332415>,  <18.524244, 19.852747, 0.932881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051884, 19.431261, 1.332415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393612, 19.480713, 1.534345>,  <18.598650, 19.510384, 1.655503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.393612, 19.480713, 1.534345>,  <18.051884, 19.431261, 1.332415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.393612, 19.480713, 1.534345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482475, 0.549810, 0.681855,
		-0.193261, -0.826090, 0.529363,
		0.854323, 0.123628, 0.504825,
		18.649908, 19.517801, 1.685792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.886436, 19.278524, 2.059690>,  <18.051884, 19.431261, 1.332415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.886436, 19.278524, 2.059690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.200527, 19.522980, 2.019837>,  <18.388981, 19.669653, 1.995926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.200527, 19.522980, 2.019837>,  <17.886436, 19.278524, 2.059690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.200527, 19.522980, 2.019837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418812, 0.642696, 0.641513,
		0.456087, -0.462006, 0.760615,
		0.785227, 0.611140, -0.099631,
		18.436094, 19.706322, 1.989948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280823, 19.485050, 2.715554>,  <17.886436, 19.278524, 2.059690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280823, 19.485050, 2.715554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306309, 19.779686, 2.446221>,  <18.321600, 19.956467, 2.284621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.306309, 19.779686, 2.446221>,  <18.280823, 19.485050, 2.715554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.306309, 19.779686, 2.446221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257470, 0.663996, 0.702011,
		0.964183, 0.128634, 0.231957,
		0.063716, 0.736589, -0.673333,
		18.325424, 20.000662, 2.244221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582821, 20.063168, 2.999990>,  <18.280823, 19.485050, 2.715554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.582821, 20.063168, 2.999990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415897, 20.235737, 2.680058>,  <18.315742, 20.339279, 2.488099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.415897, 20.235737, 2.680058>,  <18.582821, 20.063168, 2.999990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415897, 20.235737, 2.680058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228191, 0.802184, 0.551752,
		0.879649, 0.412765, -0.236311,
		-0.417309, 0.431424, -0.799829,
		18.290705, 20.365164, 2.440109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.767488, 20.777376, 3.078786>,  <18.582821, 20.063168, 2.999990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.767488, 20.777376, 3.078786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454121, 20.749523, 2.831754>,  <18.266100, 20.732811, 2.683535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.454121, 20.749523, 2.831754>,  <18.767488, 20.777376, 3.078786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454121, 20.749523, 2.831754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442893, 0.759677, 0.476168,
		0.436003, 0.646561, -0.625987,
		-0.783420, -0.069635, -0.617579,
		18.219095, 20.728632, 2.646481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.552898, 21.421551, 2.547865>,  <18.767488, 20.777376, 3.078786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.552898, 21.421551, 2.547865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233345, 21.222240, 2.682629>,  <18.041613, 21.102654, 2.763487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.233345, 21.222240, 2.682629>,  <18.552898, 21.421551, 2.547865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.233345, 21.222240, 2.682629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375477, 0.850713, 0.367836,
		-0.469897, 0.167356, -0.866711,
		-0.798883, -0.498276, 0.336910,
		17.993681, 21.072758, 2.783701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.815674, 21.712118, 2.449132>,  <18.552898, 21.421551, 2.547865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.815674, 21.712118, 2.449132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786774, 21.486195, 2.777953>,  <17.769434, 21.350639, 2.975245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.786774, 21.486195, 2.777953>,  <17.815674, 21.712118, 2.449132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786774, 21.486195, 2.777953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392299, 0.773867, 0.497224,
		-0.916996, -0.286566, -0.277486,
		-0.072250, -0.564810, 0.822052,
		17.765099, 21.316751, 3.024568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261806, 22.076088, 2.928523>,  <17.815674, 21.712118, 2.449132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261806, 22.076088, 2.928523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508728, 21.836826, 3.132934>,  <17.656881, 21.693270, 3.255580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508728, 21.836826, 3.132934>,  <17.261806, 22.076088, 2.928523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508728, 21.836826, 3.132934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117111, 0.712192, 0.692147,
		-0.777959, -0.367419, 0.509690,
		0.617305, -0.598152, 0.511027,
		17.693920, 21.657381, 3.286242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973675, 22.021507, 3.638942>,  <17.261806, 22.076088, 2.928523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973675, 22.021507, 3.638942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366623, 21.963497, 3.591748>,  <17.602392, 21.928692, 3.563432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.366623, 21.963497, 3.591748>,  <16.973675, 22.021507, 3.638942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.366623, 21.963497, 3.591748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186133, 0.817874, 0.544460,
		0.017536, -0.556821, 0.830447,
		0.982368, -0.145026, -0.117985,
		17.661333, 21.919989, 3.556353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364153, 21.729095, 4.211754>,  <16.973675, 22.021507, 3.638942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364153, 21.729095, 4.211754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580154, 21.992149, 4.001644>,  <17.709755, 22.149981, 3.875578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.580154, 21.992149, 4.001644>,  <17.364153, 21.729095, 4.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.580154, 21.992149, 4.001644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205963, 0.501867, 0.840064,
		0.816074, -0.561825, 0.135561,
		0.540003, 0.657633, -0.525276,
		17.742155, 22.189440, 3.844061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013683, 21.693705, 4.508655>,  <17.364153, 21.729095, 4.211754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013683, 21.693705, 4.508655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951958, 22.048706, 4.334977>,  <17.914923, 22.261707, 4.230770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.951958, 22.048706, 4.334977>,  <18.013683, 21.693705, 4.508655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951958, 22.048706, 4.334977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419196, 0.456756, 0.784633,
		0.894686, -0.060933, -0.442521,
		-0.154314, 0.887503, -0.434196,
		17.905663, 22.314957, 4.204718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.494345, 22.098505, 4.766783>,  <18.013683, 21.693705, 4.508655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.494345, 22.098505, 4.766783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252045, 22.386822, 4.632010>,  <18.106665, 22.559813, 4.551147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.252045, 22.386822, 4.632010>,  <18.494345, 22.098505, 4.766783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.252045, 22.386822, 4.632010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271600, 0.585350, 0.763936,
		0.747862, 0.371245, -0.550345,
		-0.605752, 0.720792, -0.336931,
		18.070318, 22.603060, 4.530931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375309, 21.779510, 5.468427>,  <18.494345, 22.098505, 4.766783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375309, 21.779510, 5.468427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469639, 22.102886, 5.684134>,  <18.526237, 22.296911, 5.813559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.469639, 22.102886, 5.684134>,  <18.375309, 21.779510, 5.468427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.469639, 22.102886, 5.684134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433754, -0.584142, 0.686029,
		0.869623, 0.072127, -0.488420,
		0.235825, 0.808440, 0.539269,
		18.540386, 22.345419, 5.845915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.137260, 21.842428, 5.581956>,  <18.375309, 21.779510, 5.468427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.137260, 21.842428, 5.581956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937313, 22.041443, 5.865530>,  <18.817345, 22.160851, 6.035675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.937313, 22.041443, 5.865530>,  <19.137260, 21.842428, 5.581956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937313, 22.041443, 5.865530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575120, -0.421343, 0.701218,
		0.647585, 0.758241, -0.075525,
		-0.499871, 0.497534, 0.708935,
		18.787352, 22.190702, 6.078210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.726625, 22.075840, 5.744473>,  <19.137260, 21.842428, 5.581956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.726625, 22.075840, 5.744473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460461, 22.123825, 6.039183>,  <19.300762, 22.152617, 6.216008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460461, 22.123825, 6.039183>,  <19.726625, 22.075840, 5.744473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460461, 22.123825, 6.039183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656725, -0.375147, 0.654200,
		0.354878, 0.919170, 0.170844,
		-0.665412, 0.119964, 0.736773,
		19.260838, 22.159815, 6.260215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.978251, 22.466673, 6.343643>,  <19.726625, 22.075840, 5.744473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.978251, 22.466673, 6.343643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.714905, 22.211193, 6.502949>,  <19.556896, 22.057905, 6.598532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.714905, 22.211193, 6.502949>,  <19.978251, 22.466673, 6.343643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.714905, 22.211193, 6.502949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732784, -0.422973, 0.533031,
		-0.171992, 0.642772, 0.746500,
		-0.658367, -0.638701, 0.398265,
		19.517395, 22.019583, 6.622428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.014854, 22.458681, 7.077890>,  <19.978251, 22.466673, 6.343643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.014854, 22.458681, 7.077890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915401, 22.089211, 6.961268>,  <19.855730, 21.867529, 6.891295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.915401, 22.089211, 6.961268>,  <20.014854, 22.458681, 7.077890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915401, 22.089211, 6.961268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716196, -0.377969, 0.586688,
		-0.652108, -0.062940, 0.755508,
		-0.248632, -0.923676, -0.291554,
		19.840813, 21.812107, 6.873802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743786, 22.149931, 7.588298>,  <20.014854, 22.458681, 7.077890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743786, 22.149931, 7.588298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906811, 21.877472, 7.345011>,  <20.004625, 21.713997, 7.199038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.906811, 21.877472, 7.345011>,  <19.743786, 22.149931, 7.588298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.906811, 21.877472, 7.345011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683546, -0.214094, 0.697802,
		-0.605523, -0.700144, 0.378340,
		0.407562, -0.681148, -0.608219,
		20.029079, 21.673128, 7.162545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687454, 21.585159, 7.910564>,  <19.743786, 22.149931, 7.588298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687454, 21.585159, 7.910564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010593, 21.580139, 7.674861>,  <20.204477, 21.577127, 7.533439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.010593, 21.580139, 7.674861>,  <19.687454, 21.585159, 7.910564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.010593, 21.580139, 7.674861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539866, -0.385398, 0.748340,
		-0.236490, -0.922665, -0.304569,
		0.807847, -0.012548, -0.589258,
		20.252947, 21.576374, 7.498084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934792, 20.917795, 7.899408>,  <19.687454, 21.585159, 7.910564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934792, 20.917795, 7.899408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207012, 21.208626, 7.863172>,  <20.370344, 21.383125, 7.841430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207012, 21.208626, 7.863172>,  <19.934792, 20.917795, 7.899408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207012, 21.208626, 7.863172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358946, -0.223055, 0.906313,
		0.638754, -0.649310, -0.412783,
		0.680552, 0.727078, -0.090590,
		20.411179, 21.426748, 7.835994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.695480, 20.678463, 7.983377>,  <19.934792, 20.917795, 7.899408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.695480, 20.678463, 7.983377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655277, 21.065788, 8.074827>,  <20.631155, 21.298183, 8.129697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655277, 21.065788, 8.074827>,  <20.695480, 20.678463, 7.983377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655277, 21.065788, 8.074827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339194, -0.182674, 0.922810,
		0.935332, 0.170298, -0.310085,
		-0.100508, 0.968312, 0.228625,
		20.625124, 21.356281, 8.143414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.280128, 20.868778, 8.313117>,  <20.695480, 20.678463, 7.983377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.280128, 20.868778, 8.313117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006138, 21.127090, 8.448039>,  <20.841743, 21.282078, 8.528993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006138, 21.127090, 8.448039>,  <21.280128, 20.868778, 8.313117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.006138, 21.127090, 8.448039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320041, -0.149208, 0.935580,
		0.654507, 0.748803, -0.104472,
		-0.684978, 0.645779, 0.337305,
		20.800644, 21.320824, 8.549231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.601891, 21.146938, 8.839039>,  <21.280128, 20.868778, 8.313117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.601891, 21.146938, 8.839039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224651, 21.255775, 8.915489>,  <20.998308, 21.321077, 8.961359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.224651, 21.255775, 8.915489>,  <21.601891, 21.146938, 8.839039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.224651, 21.255775, 8.915489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169018, -0.102719, 0.980246,
		0.286352, 0.956772, 0.050885,
		-0.943099, 0.272095, 0.191126,
		20.941721, 21.337404, 8.972827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.635494, 21.650234, 9.388118>,  <21.601891, 21.146938, 8.839039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.635494, 21.650234, 9.388118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274811, 21.477329, 9.391526>,  <21.058401, 21.373587, 9.393571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.274811, 21.477329, 9.391526>,  <21.635494, 21.650234, 9.388118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274811, 21.477329, 9.391526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075424, -0.137871, 0.987574,
		-0.425714, 0.891147, 0.156922,
		-0.901709, -0.432260, 0.008521,
		21.004299, 21.347651, 9.394082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166267, 21.998625, 9.859806>,  <21.635494, 21.650234, 9.388118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166267, 21.998625, 9.859806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014301, 21.631752, 9.811733>,  <20.923122, 21.411629, 9.782889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.014301, 21.631752, 9.811733>,  <21.166267, 21.998625, 9.859806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.014301, 21.631752, 9.811733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037504, -0.114543, 0.992710,
		-0.924261, 0.381652, 0.009118,
		-0.379915, -0.917181, -0.120181,
		20.900328, 21.356598, 9.775679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.769030, 21.895901, 10.438169>,  <21.166267, 21.998625, 9.859806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.769030, 21.895901, 10.438169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776642, 21.515312, 10.315311>,  <20.781210, 21.286959, 10.241597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776642, 21.515312, 10.315311>,  <20.769030, 21.895901, 10.438169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776642, 21.515312, 10.315311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075745, -0.307687, 0.948468,
		-0.996946, 0.005215, -0.077925,
		0.019031, -0.951474, -0.307142,
		20.782351, 21.229870, 10.223169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320433, 21.476536, 10.914976>,  <20.769030, 21.895901, 10.438169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320433, 21.476536, 10.914976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527138, 21.189274, 10.728554>,  <20.651161, 21.016916, 10.616700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527138, 21.189274, 10.728554>,  <20.320433, 21.476536, 10.914976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527138, 21.189274, 10.728554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161186, -0.616256, 0.770875,
		-0.840817, -0.323239, -0.434216,
		0.516765, -0.718154, -0.466057,
		20.682167, 20.973827, 10.588737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.902777, 20.810150, 10.909819>,  <20.320433, 21.476536, 10.914976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.902777, 20.810150, 10.909819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293846, 20.729500, 10.886141>,  <20.528488, 20.681110, 10.871934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.293846, 20.729500, 10.886141>,  <19.902777, 20.810150, 10.909819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.293846, 20.729500, 10.886141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031318, -0.418364, 0.907739,
		-0.207787, -0.885618, -0.415338,
		0.977672, -0.201624, -0.059195,
		20.587149, 20.669012, 10.868382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023129, 20.199181, 11.241377>,  <19.902777, 20.810150, 10.909819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023129, 20.199181, 11.241377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.399162, 20.334599, 11.225252>,  <20.624783, 20.415850, 11.215577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.399162, 20.334599, 11.225252>,  <20.023129, 20.199181, 11.241377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.399162, 20.334599, 11.225252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250894, -0.606898, 0.754140,
		0.230845, -0.719070, -0.655476,
		0.940087, 0.338544, -0.040311,
		20.681189, 20.436161, 11.213159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419327, 19.575191, 11.365851>,  <20.023129, 20.199181, 11.241377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419327, 19.575191, 11.365851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683434, 19.865009, 11.444932>,  <20.841898, 20.038900, 11.492380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.683434, 19.865009, 11.444932>,  <20.419327, 19.575191, 11.365851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.683434, 19.865009, 11.444932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212265, -0.432536, 0.876274,
		0.720413, -0.536608, -0.439384,
		0.660264, 0.724544, 0.197702,
		20.881514, 20.082373, 11.504243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016306, 19.215752, 11.637914>,  <20.419327, 19.575191, 11.365851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016306, 19.215752, 11.637914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024490, 19.594055, 11.767606>,  <21.029402, 19.821037, 11.845421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.024490, 19.594055, 11.767606>,  <21.016306, 19.215752, 11.637914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024490, 19.594055, 11.767606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124938, -0.324176, 0.937710,
		0.991954, 0.021322, -0.124794,
		0.020461, 0.945757, 0.324231,
		21.030628, 19.877783, 11.864875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.621746, 19.357965, 12.031320>,  <21.016306, 19.215752, 11.637914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.621746, 19.357965, 12.031320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.362617, 19.626575, 12.175200>,  <21.207140, 19.787741, 12.261527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.362617, 19.626575, 12.175200>,  <21.621746, 19.357965, 12.031320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.362617, 19.626575, 12.175200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211232, -0.295316, 0.931756,
		0.731921, 0.679592, 0.049465,
		-0.647822, 0.671523, 0.359699,
		21.168270, 19.828032, 12.283110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894716, 19.500469, 12.638358>,  <21.621746, 19.357965, 12.031320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894716, 19.500469, 12.638358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530506, 19.658566, 12.686901>,  <21.311979, 19.753424, 12.716027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530506, 19.658566, 12.686901>,  <21.894716, 19.500469, 12.638358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530506, 19.658566, 12.686901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073899, -0.133221, 0.988327,
		0.406797, 0.908865, 0.092093,
		-0.910525, 0.395243, 0.121358,
		21.257349, 19.777138, 12.723309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.092318, 19.940451, 13.087255>,  <21.894716, 19.500469, 12.638358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.092318, 19.940451, 13.087255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695408, 19.940205, 13.136887>,  <21.457262, 19.940056, 13.166666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695408, 19.940205, 13.136887>,  <22.092318, 19.940451, 13.087255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695408, 19.940205, 13.136887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123821, 0.059935, 0.990493,
		-0.008047, 0.998202, -0.059396,
		-0.992272, -0.000616, 0.124081,
		21.397726, 19.940020, 13.174110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.780561, 20.469065, 13.488563>,  <22.092318, 19.940451, 13.087255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.780561, 20.469065, 13.488563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516804, 20.175728, 13.554787>,  <21.358549, 19.999725, 13.594521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516804, 20.175728, 13.554787>,  <21.780561, 20.469065, 13.488563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516804, 20.175728, 13.554787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198543, 0.042535, 0.979169,
		-0.725106, 0.678530, 0.117552,
		-0.659395, -0.733340, 0.165560,
		21.318985, 19.955727, 13.604455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551258, 20.686846, 14.168427>,  <21.780561, 20.469065, 13.488563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551258, 20.686846, 14.168427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469898, 20.300404, 14.104847>,  <21.421082, 20.068539, 14.066699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.469898, 20.300404, 14.104847>,  <21.551258, 20.686846, 14.168427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469898, 20.300404, 14.104847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276518, -0.212416, 0.937239,
		-0.939237, 0.146682, 0.310352,
		-0.203400, -0.966108, -0.158949,
		21.408878, 20.010571, 14.057162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.193796, 20.390800, 14.702447>,  <21.551258, 20.686846, 14.168427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.193796, 20.390800, 14.702447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342167, 20.052273, 14.549524>,  <21.431190, 19.849157, 14.457770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342167, 20.052273, 14.549524>,  <21.193796, 20.390800, 14.702447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342167, 20.052273, 14.549524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161773, -0.346495, 0.923997,
		-0.914463, -0.404584, 0.008387,
		0.370928, -0.846318, -0.382308,
		21.453445, 19.798378, 14.434832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.894913, 19.953886, 15.068792>,  <21.193796, 20.390800, 14.702447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.894913, 19.953886, 15.068792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204796, 19.750328, 14.918671>,  <21.390726, 19.628193, 14.828598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.204796, 19.750328, 14.918671>,  <20.894913, 19.953886, 15.068792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.204796, 19.750328, 14.918671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200525, -0.365174, 0.909086,
		-0.599680, -0.779535, -0.180857,
		0.774709, -0.508894, -0.375304,
		21.437208, 19.597660, 14.806080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.830076, 19.242599, 15.323386>,  <20.894913, 19.953886, 15.068792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.830076, 19.242599, 15.323386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217640, 19.269581, 15.228170>,  <21.450178, 19.285770, 15.171041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.217640, 19.269581, 15.228170>,  <20.830076, 19.242599, 15.323386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.217640, 19.269581, 15.228170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244746, -0.402199, 0.882233,
		-0.036229, -0.913064, -0.406204,
		0.968910, 0.067455, -0.238040,
		21.508312, 19.289818, 15.156758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.117159, 18.663912, 15.457282>,  <20.830076, 19.242599, 15.323386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.117159, 18.663912, 15.457282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445457, 18.891975, 15.471678>,  <21.642437, 19.028814, 15.480315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.445457, 18.891975, 15.471678>,  <21.117159, 18.663912, 15.457282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.445457, 18.891975, 15.471678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273158, -0.446978, 0.851819,
		0.501761, -0.689294, -0.522599,
		0.820744, 0.570161, 0.035990,
		21.691681, 19.063025, 15.482474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603746, 18.213776, 15.771146>,  <21.117159, 18.663912, 15.457282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603746, 18.213776, 15.771146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740067, 18.586033, 15.824444>,  <21.821859, 18.809387, 15.856422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.740067, 18.586033, 15.824444>,  <21.603746, 18.213776, 15.771146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.740067, 18.586033, 15.824444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236291, -0.221970, 0.945989,
		0.909956, -0.290910, -0.295551,
		0.340801, 0.930645, 0.133244,
		21.842306, 18.865227, 15.864417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.237722, 18.176634, 16.117580>,  <21.603746, 18.213776, 15.771146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.237722, 18.176634, 16.117580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128944, 18.555973, 16.182922>,  <22.063679, 18.783577, 16.222128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.128944, 18.555973, 16.182922>,  <22.237722, 18.176634, 16.117580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.128944, 18.555973, 16.182922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139649, -0.129065, 0.981754,
		0.952127, 0.289794, -0.097338,
		-0.271944, 0.948347, 0.163356,
		22.047361, 18.840477, 16.231930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.788494, 18.608986, 16.401861>,  <22.237722, 18.176634, 16.117580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.788494, 18.608986, 16.401861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456093, 18.788063, 16.533922>,  <22.256651, 18.895510, 16.613159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.456093, 18.788063, 16.533922>,  <22.788494, 18.608986, 16.401861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456093, 18.788063, 16.533922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313026, -0.114271, 0.942845,
		0.459833, 0.886855, -0.045180,
		-0.831004, 0.447694, 0.330154,
		22.206791, 18.922371, 16.632969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.975006, 18.923512, 17.024242>,  <22.788494, 18.608986, 16.401861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.975006, 18.923512, 17.024242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576206, 18.952671, 17.034632>,  <22.336926, 18.970167, 17.040865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.576206, 18.952671, 17.034632>,  <22.975006, 18.923512, 17.024242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.576206, 18.952671, 17.034632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032584, 0.091030, 0.995315,
		0.070195, 0.993176, -0.093133,
		-0.997001, 0.072900, 0.025972,
		22.277105, 18.974541, 17.042423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.930658, 19.310261, 17.668169>,  <22.975006, 18.923512, 17.024242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.930658, 19.310261, 17.668169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557323, 19.189068, 17.591139>,  <22.333323, 19.116352, 17.544920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.557323, 19.189068, 17.591139>,  <22.930658, 19.310261, 17.668169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.557323, 19.189068, 17.591139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201503, -0.001831, 0.979486,
		-0.297120, 0.952994, -0.059343,
		-0.933336, -0.302983, -0.192575,
		22.277323, 19.098173, 17.533367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.469141, 19.788338, 18.030790>,  <22.930658, 19.310261, 17.668169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.469141, 19.788338, 18.030790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.281311, 19.440948, 17.967218>,  <22.168613, 19.232515, 17.929075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.281311, 19.440948, 17.967218>,  <22.469141, 19.788338, 18.030790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.281311, 19.440948, 17.967218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113917, -0.118907, 0.986349,
		-0.875513, 0.481269, -0.043098,
		-0.469574, -0.868471, -0.158929,
		22.140438, 19.180407, 17.919540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792513, 19.748331, 18.551510>,  <22.469141, 19.788338, 18.030790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792513, 19.748331, 18.551510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.872379, 19.370567, 18.447029>,  <21.920300, 19.143909, 18.384340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.872379, 19.370567, 18.447029>,  <21.792513, 19.748331, 18.551510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.872379, 19.370567, 18.447029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143093, -0.291814, 0.945711,
		-0.969360, -0.151450, -0.193404,
		0.199666, -0.944409, -0.261201,
		21.932280, 19.087244, 18.368670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.177691, 19.221729, 18.807432>,  <21.792513, 19.748331, 18.551510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.177691, 19.221729, 18.807432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.512775, 19.006786, 18.768465>,  <21.713825, 18.877821, 18.745085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.512775, 19.006786, 18.768465>,  <21.177691, 19.221729, 18.807432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.512775, 19.006786, 18.768465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133338, -0.374239, 0.917696,
		-0.529588, -0.755773, -0.385154,
		0.837710, -0.537356, -0.097419,
		21.764088, 18.845579, 18.739239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137280, 18.896532, 19.376318>,  <21.177691, 19.221729, 18.807432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137280, 18.896532, 19.376318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516094, 18.790203, 19.304255>,  <21.743383, 18.726406, 19.261017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.516094, 18.790203, 19.304255>,  <21.137280, 18.896532, 19.376318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.516094, 18.790203, 19.304255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129946, -0.195811, 0.971994,
		-0.293658, -0.943925, -0.150897,
		0.947037, -0.265826, -0.180161,
		21.800205, 18.710455, 19.250206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225956, 18.183954, 19.671455>,  <21.137280, 18.896532, 19.376318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225956, 18.183954, 19.671455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594780, 18.336742, 19.646458>,  <21.816074, 18.428415, 19.631458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.594780, 18.336742, 19.646458>,  <21.225956, 18.183954, 19.671455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.594780, 18.336742, 19.646458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162598, -0.235742, 0.958117,
		0.351242, -0.893601, -0.279476,
		0.922058, 0.381973, -0.062495,
		21.871397, 18.451334, 19.627708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619293, 17.679388, 20.075722>,  <21.225956, 18.183954, 19.671455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619293, 17.679388, 20.075722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826500, 18.020920, 20.055195>,  <21.950825, 18.225840, 20.042879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.826500, 18.020920, 20.055195>,  <21.619293, 17.679388, 20.075722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.826500, 18.020920, 20.055195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061313, 0.096907, 0.993403,
		0.853170, -0.511454, 0.102550,
		0.518018, 0.853829, -0.051319,
		21.981905, 18.277069, 20.039799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.164461, 17.593557, 20.634443>,  <21.619293, 17.679388, 20.075722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.164461, 17.593557, 20.634443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115623, 17.985119, 20.568909>,  <22.086321, 18.220057, 20.529589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.115623, 17.985119, 20.568909>,  <22.164461, 17.593557, 20.634443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115623, 17.985119, 20.568909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052091, 0.158523, 0.985981,
		0.991151, 0.128915, 0.031638,
		-0.122092, 0.978903, -0.163836,
		22.078997, 18.278790, 20.519758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.757206, 17.900322, 20.997204>,  <22.164461, 17.593557, 20.634443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.757206, 17.900322, 20.997204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492664, 18.195034, 20.940968>,  <22.333939, 18.371861, 20.907227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.492664, 18.195034, 20.940968>,  <22.757206, 17.900322, 20.997204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492664, 18.195034, 20.940968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016221, 0.173343, 0.984728,
		0.749898, 0.653535, -0.102690,
		-0.661355, 0.736780, -0.140591,
		22.294258, 18.416067, 20.898790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.081217, 18.526850, 21.363157>,  <22.757206, 17.900322, 20.997204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.081217, 18.526850, 21.363157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689640, 18.602776, 21.333113>,  <22.454695, 18.648331, 21.315086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.689640, 18.602776, 21.333113>,  <23.081217, 18.526850, 21.363157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.689640, 18.602776, 21.333113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006951, 0.336728, 0.941576,
		0.204018, 0.922271, -0.328318,
		-0.978942, 0.189817, -0.075109,
		22.395958, 18.659721, 21.310579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.991699, 19.223215, 21.637844>,  <23.081217, 18.526850, 21.363157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.991699, 19.223215, 21.637844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642006, 19.035446, 21.687418>,  <22.432190, 18.922785, 21.717161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.642006, 19.035446, 21.687418>,  <22.991699, 19.223215, 21.637844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.642006, 19.035446, 21.687418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090457, 0.408282, 0.908363,
		-0.477005, 0.782910, -0.399397,
		-0.874233, -0.469422, 0.123933,
		22.379736, 18.894619, 21.724598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520142, 19.644693, 21.996353>,  <22.991699, 19.223215, 21.637844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520142, 19.644693, 21.996353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350559, 19.290794, 22.073799>,  <22.248810, 19.078455, 22.120268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.350559, 19.290794, 22.073799>,  <22.520142, 19.644693, 21.996353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350559, 19.290794, 22.073799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193409, 0.297290, 0.934993,
		-0.884791, 0.358948, -0.297156,
		-0.423955, -0.884746, 0.193616,
		22.223373, 19.025372, 22.131884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127537, 19.862553, 22.589569>,  <22.520142, 19.644693, 21.996353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127537, 19.862553, 22.589569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.107315, 19.463066, 22.590988>,  <22.095182, 19.223375, 22.591839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.107315, 19.463066, 22.590988>,  <22.127537, 19.862553, 22.589569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.107315, 19.463066, 22.590988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145744, -0.003863, 0.989315,
		-0.988030, 0.050533, 0.145752,
		-0.050556, -0.998715, 0.003548,
		22.092148, 19.163452, 22.592052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.634737, 19.632742, 23.093142>,  <22.127537, 19.862553, 22.589569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.634737, 19.632742, 23.093142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.884769, 19.327190, 23.028934>,  <22.034788, 19.143860, 22.990410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.884769, 19.327190, 23.028934>,  <21.634737, 19.632742, 23.093142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884769, 19.327190, 23.028934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102278, -0.123716, 0.987033,
		-0.773830, -0.633393, 0.000796,
		0.625081, -0.763877, -0.160517,
		22.072294, 19.098028, 22.980780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.388466, 19.075579, 23.547569>,  <21.634737, 19.632742, 23.093142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.388466, 19.075579, 23.547569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762978, 19.001255, 23.428337>,  <21.987684, 18.956661, 23.356798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.762978, 19.001255, 23.428337>,  <21.388466, 19.075579, 23.547569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.762978, 19.001255, 23.428337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320755, 0.106410, 0.941166,
		-0.143158, -0.976807, 0.159229,
		0.936281, -0.185809, -0.298082,
		22.043861, 18.945513, 23.338913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.615860, 18.632917, 24.072706>,  <21.388466, 19.075579, 23.547569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.615860, 18.632917, 24.072706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.958092, 18.748798, 23.901098>,  <22.163431, 18.818327, 23.798134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.958092, 18.748798, 23.901098>,  <21.615860, 18.632917, 24.072706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.958092, 18.748798, 23.901098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428890, 0.067402, 0.900839,
		0.289893, -0.954740, -0.066583,
		0.855579, 0.289703, -0.429018,
		22.214766, 18.835709, 23.772392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153215, 18.327667, 24.471558>,  <21.615860, 18.632917, 24.072706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153215, 18.327667, 24.471558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.390041, 18.572346, 24.261686>,  <22.532137, 18.719152, 24.135763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.390041, 18.572346, 24.261686>,  <22.153215, 18.327667, 24.471558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.390041, 18.572346, 24.261686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566398, 0.147292, 0.810863,
		0.573284, -0.777258, -0.259258,
		0.592063, 0.611699, -0.524677,
		22.567661, 18.755856, 24.104282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.887125, 18.109919, 24.634939>,  <22.153215, 18.327667, 24.471558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.887125, 18.109919, 24.634939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866829, 18.488537, 24.507517>,  <22.854652, 18.715708, 24.431065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.866829, 18.488537, 24.507517>,  <22.887125, 18.109919, 24.634939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.866829, 18.488537, 24.507517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442149, 0.307292, 0.842660,
		0.895505, -0.098093, -0.434106,
		-0.050738, 0.946546, -0.318554,
		22.851608, 18.772501, 24.411951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.513374, 18.543989, 24.570740>,  <22.887125, 18.109919, 24.634939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.513374, 18.543989, 24.570740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.218903, 18.800583, 24.657030>,  <23.042219, 18.954540, 24.708805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.218903, 18.800583, 24.657030>,  <23.513374, 18.543989, 24.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.218903, 18.800583, 24.657030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434357, 0.203385, 0.877478,
		0.519015, 0.739682, -0.428362,
		-0.736178, 0.641486, 0.215727,
		22.998049, 18.993029, 24.721748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.568480, 18.914560, 25.270987>,  <23.513374, 18.543989, 24.570740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.568480, 18.914560, 25.270987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322498, 18.841026, 25.577721>,  <23.174910, 18.796906, 25.761761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.322498, 18.841026, 25.577721>,  <23.568480, 18.914560, 25.270987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.322498, 18.841026, 25.577721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267093, 0.866409, 0.421896,
		-0.741954, 0.464262, -0.483699,
		-0.614952, -0.183835, 0.766837,
		23.138012, 18.785875, 25.807772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.962261, 19.405495, 25.387514>,  <23.568480, 18.914560, 25.270987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.962261, 19.405495, 25.387514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063934, 19.255817, 25.744249>,  <23.124939, 19.166012, 25.958290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063934, 19.255817, 25.744249>,  <22.962261, 19.405495, 25.387514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063934, 19.255817, 25.744249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325192, 0.901501, 0.285563,
		-0.910846, 0.217433, 0.350830,
		0.254183, -0.374191, 0.891836,
		23.140190, 19.143560, 26.011801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.637323, 19.851709, 25.995762>,  <22.962261, 19.405495, 25.387514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.637323, 19.851709, 25.995762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.989708, 19.674553, 26.062405>,  <23.201138, 19.568258, 26.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.989708, 19.674553, 26.062405>,  <22.637323, 19.851709, 25.995762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989708, 19.674553, 26.062405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352611, 0.849232, 0.393027,
		-0.315555, -0.287494, 0.904308,
		0.880960, -0.442891, 0.166606,
		23.253996, 19.541685, 26.112387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.684742, 20.038208, 26.651949>,  <22.637323, 19.851709, 25.995762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.684742, 20.038208, 26.651949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971226, 20.038387, 26.372793>,  <23.143116, 20.038494, 26.205299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971226, 20.038387, 26.372793>,  <22.684742, 20.038208, 26.651949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971226, 20.038387, 26.372793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046728, 0.997725, 0.048595,
		0.696321, -0.067415, 0.714558,
		0.716208, 0.000448, -0.697887,
		23.186089, 20.038521, 26.163427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.270409, 20.447142, 26.868715>,  <22.684742, 20.038208, 26.651949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.270409, 20.447142, 26.868715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309551, 20.503021, 26.474577>,  <23.333036, 20.536549, 26.238094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309551, 20.503021, 26.474577>,  <23.270409, 20.447142, 26.868715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.309551, 20.503021, 26.474577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208825, 0.970939, 0.116918,
		0.973045, 0.194323, 0.124185,
		0.097856, 0.139699, -0.985347,
		23.338909, 20.544931, 26.178972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.548218, 21.149157, 26.846973>,  <23.270409, 20.447142, 26.868715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.548218, 21.149157, 26.846973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377071, 21.066502, 26.495012>,  <23.274384, 21.016909, 26.283834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.377071, 21.066502, 26.495012>,  <23.548218, 21.149157, 26.846973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.377071, 21.066502, 26.495012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423893, 0.905688, -0.006571,
		0.798277, 0.370174, -0.475106,
		-0.427865, -0.206639, -0.879904,
		23.248713, 21.004509, 26.231041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.691330, 21.604187, 26.232403>,  <23.548218, 21.149157, 26.846973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.691330, 21.604187, 26.232403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309284, 21.490219, 26.199951>,  <23.080057, 21.421839, 26.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.309284, 21.490219, 26.199951>,  <23.691330, 21.604187, 26.232403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.309284, 21.490219, 26.199951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292980, 0.949018, 0.116305,
		0.043856, 0.134854, -0.989895,
		-0.955112, -0.284919, -0.081129,
		23.022751, 21.404743, 26.175611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.426065, 22.074865, 25.773605>,  <23.691330, 21.604187, 26.232403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.426065, 22.074865, 25.773605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140686, 21.924984, 26.010447>,  <22.969458, 21.835056, 26.152552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.140686, 21.924984, 26.010447>,  <23.426065, 22.074865, 25.773605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.140686, 21.924984, 26.010447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252868, 0.925749, 0.281153,
		-0.653488, 0.050864, -0.755226,
		-0.713450, -0.374702, 0.592104,
		22.926651, 21.812572, 26.188078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.856771, 21.913441, 25.408005>,  <23.426065, 22.074865, 25.773605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.856771, 21.913441, 25.408005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141052, 21.816303, 25.143904>,  <23.311621, 21.758020, 24.985443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.141052, 21.816303, 25.143904>,  <22.856771, 21.913441, 25.408005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.141052, 21.816303, 25.143904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598691, 0.284067, -0.748916,
		0.369424, 0.927542, 0.056499,
		0.710701, -0.242842, -0.660252,
		23.354263, 21.743450, 24.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.010960, 22.484583, 24.953192>,  <22.856771, 21.913441, 25.408005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.010960, 22.484583, 24.953192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101509, 22.149094, 24.755079>,  <23.155838, 21.947800, 24.636211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.101509, 22.149094, 24.755079>,  <23.010960, 22.484583, 24.953192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.101509, 22.149094, 24.755079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509306, 0.331509, -0.794172,
		0.830278, 0.432028, -0.352122,
		0.226373, -0.838722, -0.495279,
		23.169420, 21.897476, 24.606495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.260811, 22.583967, 24.260704>,  <23.010960, 22.484583, 24.953192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.260811, 22.583967, 24.260704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068516, 22.234692, 24.228621>,  <22.953138, 22.025127, 24.209370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068516, 22.234692, 24.228621>,  <23.260811, 22.583967, 24.260704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068516, 22.234692, 24.228621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370555, 0.285211, -0.883936,
		0.794719, -0.395221, -0.460676,
		-0.480740, -0.873187, -0.080211,
		22.924294, 21.972736, 24.204557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.453028, 22.265158, 23.529078>,  <23.260811, 22.583967, 24.260704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.453028, 22.265158, 23.529078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106056, 22.110909, 23.654844>,  <22.897873, 22.018358, 23.730305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.106056, 22.110909, 23.654844>,  <23.453028, 22.265158, 23.529078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.106056, 22.110909, 23.654844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334130, -0.016768, -0.942378,
		0.368677, -0.922503, -0.114304,
		-0.867429, -0.385626, 0.314418,
		22.845827, 21.995222, 23.749170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216198, 21.940817, 22.901196>,  <23.453028, 22.265158, 23.529078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216198, 21.940817, 22.901196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.895260, 21.959938, 23.139174>,  <22.702698, 21.971411, 23.281960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.895260, 21.959938, 23.139174>,  <23.216198, 21.940817, 22.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.895260, 21.959938, 23.139174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594143, 0.031045, -0.803760,
		-0.056895, -0.998374, 0.003495,
		-0.802345, 0.047806, 0.594943,
		22.654556, 21.974279, 23.317656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.708256, 21.377369, 22.770796>,  <23.216198, 21.940817, 22.901196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.708256, 21.377369, 22.770796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.500046, 21.684849, 22.919472>,  <22.375120, 21.869337, 23.008678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.500046, 21.684849, 22.919472>,  <22.708256, 21.377369, 22.770796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.500046, 21.684849, 22.919472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540650, 0.040207, -0.840286,
		-0.660874, -0.638343, 0.394670,
		-0.520523, 0.768701, 0.371691,
		22.343889, 21.915459, 23.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029997, 21.170658, 22.695583>,  <22.708256, 21.377369, 22.770796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029997, 21.170658, 22.695583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006390, 21.569031, 22.722815>,  <21.992226, 21.808054, 22.739153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.006390, 21.569031, 22.722815>,  <22.029997, 21.170658, 22.695583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.006390, 21.569031, 22.722815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552597, 0.024202, -0.833097,
		-0.831357, -0.086786, 0.548921,
		-0.059016, 0.995933, 0.068078,
		21.988684, 21.867811, 22.743238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.407784, 21.296183, 22.573658>,  <22.029997, 21.170658, 22.695583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.407784, 21.296183, 22.573658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559998, 21.663158, 22.527182>,  <21.651325, 21.883343, 22.499296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559998, 21.663158, 22.527182>,  <21.407784, 21.296183, 22.573658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559998, 21.663158, 22.527182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564454, 0.130906, -0.815019,
		-0.732520, 0.375726, 0.567666,
		0.380534, 0.917439, -0.116189,
		21.674158, 21.938391, 22.492325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.825432, 21.762548, 22.322403>,  <21.407784, 21.296183, 22.573658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.825432, 21.762548, 22.322403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160320, 21.947445, 22.205515>,  <21.361254, 22.058382, 22.135382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160320, 21.947445, 22.205515>,  <20.825432, 21.762548, 22.322403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160320, 21.947445, 22.205515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437799, 0.246324, -0.864671,
		-0.327706, 0.851855, 0.408597,
		0.837222, 0.462241, -0.292220,
		21.411488, 22.086117, 22.117849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603716, 22.503969, 22.199543>,  <20.825432, 21.762548, 22.322403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603716, 22.503969, 22.199543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938194, 22.418957, 21.997314>,  <21.138882, 22.367949, 21.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.938194, 22.418957, 21.997314>,  <20.603716, 22.503969, 22.199543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938194, 22.418957, 21.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478717, 0.166934, -0.861953,
		0.267590, 0.962789, 0.037847,
		0.836197, -0.212532, -0.505573,
		21.189053, 22.355198, 21.845642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.571301, 23.006083, 21.676485>,  <20.603716, 22.503969, 22.199543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.571301, 23.006083, 21.676485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817055, 22.712910, 21.559633>,  <20.964508, 22.537006, 21.489523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.817055, 22.712910, 21.559633>,  <20.571301, 23.006083, 21.676485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817055, 22.712910, 21.559633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405715, 0.024078, -0.913683,
		0.676701, 0.679875, -0.282568,
		0.614387, -0.732932, -0.292129,
		21.001371, 22.493031, 21.471994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950758, 23.196140, 21.039907>,  <20.571301, 23.006083, 21.676485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950758, 23.196140, 21.039907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998981, 22.799171, 21.030447>,  <21.027916, 22.560989, 21.024771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.998981, 22.799171, 21.030447>,  <20.950758, 23.196140, 21.039907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998981, 22.799171, 21.030447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102768, 0.011219, -0.994642,
		0.987372, 0.122343, -0.100637,
		0.120558, -0.992425, -0.023650,
		21.035149, 22.501444, 21.023352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.487980, 23.037792, 20.521378>,  <20.950758, 23.196140, 21.039907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.487980, 23.037792, 20.521378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245258, 22.727074, 20.588760>,  <21.099625, 22.540644, 20.629190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.245258, 22.727074, 20.588760>,  <21.487980, 23.037792, 20.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.245258, 22.727074, 20.588760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231173, -0.030300, -0.972441,
		0.760491, -0.629024, -0.161188,
		-0.606805, -0.776795, 0.168456,
		21.063217, 22.494036, 20.639297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536011, 22.730021, 19.966448>,  <21.487980, 23.037792, 20.521378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536011, 22.730021, 19.966448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219086, 22.562214, 20.143646>,  <21.028931, 22.461531, 20.249966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219086, 22.562214, 20.143646>,  <21.536011, 22.730021, 19.966448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219086, 22.562214, 20.143646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466399, -0.051632, -0.883066,
		0.393332, -0.906279, -0.154752,
		-0.792315, -0.419514, 0.442996,
		20.981392, 22.436359, 20.276545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.450989, 22.147018, 19.706099>,  <21.536011, 22.730021, 19.966448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.450989, 22.147018, 19.706099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085457, 22.237034, 19.841316>,  <20.866138, 22.291042, 19.922447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.085457, 22.237034, 19.841316>,  <21.450989, 22.147018, 19.706099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.085457, 22.237034, 19.841316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389050, -0.246459, -0.887636,
		-0.116438, -0.942664, 0.312773,
		-0.913828, 0.225039, 0.338046,
		20.811308, 22.304546, 19.942730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176079, 21.530371, 19.647348>,  <21.450989, 22.147018, 19.706099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176079, 21.530371, 19.647348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877048, 21.794834, 19.672638>,  <20.697630, 21.953512, 19.687811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.877048, 21.794834, 19.672638>,  <21.176079, 21.530371, 19.647348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877048, 21.794834, 19.672638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340336, -0.299589, -0.891301,
		-0.570353, -0.687832, 0.448983,
		-0.747575, 0.661161, 0.063223,
		20.652775, 21.993183, 19.691605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.602720, 21.170219, 19.472748>,  <21.176079, 21.530371, 19.647348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.602720, 21.170219, 19.472748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440369, 21.532612, 19.424648>,  <20.342958, 21.750048, 19.395788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.440369, 21.532612, 19.424648>,  <20.602720, 21.170219, 19.472748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.440369, 21.532612, 19.424648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431352, -0.305896, -0.848742,
		-0.805728, -0.292617, 0.514953,
		-0.405878, 0.905982, -0.120248,
		20.318605, 21.804407, 19.388575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880985, 21.084394, 19.289034>,  <20.602720, 21.170219, 19.472748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.880985, 21.084394, 19.289034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945076, 21.462437, 19.175119>,  <19.983530, 21.689262, 19.106770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.945076, 21.462437, 19.175119>,  <19.880985, 21.084394, 19.289034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.945076, 21.462437, 19.175119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515631, -0.165880, -0.840600,
		-0.841695, 0.281533, 0.460747,
		0.160228, 0.945105, -0.284788,
		19.993145, 21.745968, 19.089684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.281570, 21.243301, 18.942656>,  <19.880985, 21.084394, 19.289034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.281570, 21.243301, 18.942656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544971, 21.517624, 18.818693>,  <19.703012, 21.682217, 18.744316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544971, 21.517624, 18.818693>,  <19.281570, 21.243301, 18.942656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544971, 21.517624, 18.818693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311690, -0.126282, -0.941755,
		-0.684997, 0.716744, 0.130602,
		0.658504, 0.685807, -0.309905,
		19.742523, 21.723366, 18.725721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857615, 21.815186, 18.574049>,  <19.281570, 21.243301, 18.942656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857615, 21.815186, 18.574049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242138, 21.822292, 18.464087>,  <19.472851, 21.826555, 18.398109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.242138, 21.822292, 18.464087>,  <18.857615, 21.815186, 18.574049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.242138, 21.822292, 18.464087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274339, -0.028998, -0.961196,
		-0.025047, 0.999421, -0.023002,
		0.961307, 0.017765, -0.274907,
		19.530529, 21.827621, 18.381615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.914639, 22.374195, 18.172535>,  <18.857615, 21.815186, 18.574049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.914639, 22.374195, 18.172535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208813, 22.125511, 18.064747>,  <19.385317, 21.976301, 18.000074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.208813, 22.125511, 18.064747>,  <18.914639, 22.374195, 18.172535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.208813, 22.125511, 18.064747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194494, 0.187267, -0.962862,
		0.649084, 0.760531, 0.016803,
		0.735433, -0.621711, -0.269470,
		19.429443, 21.938997, 17.983906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.185709, 22.635826, 17.484453>,  <18.914639, 22.374195, 18.172535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.185709, 22.635826, 17.484453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.354527, 22.273293, 17.492825>,  <19.455816, 22.055773, 17.497849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.354527, 22.273293, 17.492825>,  <19.185709, 22.635826, 17.484453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.354527, 22.273293, 17.492825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148439, -0.091860, -0.984646,
		0.894342, 0.412455, -0.173304,
		0.422042, -0.906335, 0.020930,
		19.481138, 22.001392, 17.499104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.670725, 22.567179, 17.002344>,  <19.185709, 22.635826, 17.484453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.670725, 22.567179, 17.002344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577911, 22.181389, 17.052853>,  <19.522223, 21.949915, 17.083158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.577911, 22.181389, 17.052853>,  <19.670725, 22.567179, 17.002344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577911, 22.181389, 17.052853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077591, -0.147754, -0.985976,
		0.969608, -0.218983, 0.109119,
		-0.232034, -0.964477, 0.126272,
		19.508301, 21.892046, 17.090734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122297, 22.315775, 16.414034>,  <19.670725, 22.567179, 17.002344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122297, 22.315775, 16.414034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885567, 22.016556, 16.534142>,  <19.743528, 21.837025, 16.606207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.885567, 22.016556, 16.534142>,  <20.122297, 22.315775, 16.414034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.885567, 22.016556, 16.534142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150263, -0.468369, -0.870661,
		0.791936, -0.470161, 0.389597,
		-0.591826, -0.748050, 0.300271,
		19.708019, 21.792141, 16.624224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.442654, 21.652189, 16.132488>,  <20.122297, 22.315775, 16.414034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.442654, 21.652189, 16.132488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061295, 21.551090, 16.198397>,  <19.832479, 21.490431, 16.237942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.061295, 21.551090, 16.198397>,  <20.442654, 21.652189, 16.132488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061295, 21.551090, 16.198397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052224, -0.399634, -0.915186,
		0.297158, -0.881143, 0.367811,
		-0.953399, -0.252746, 0.164771,
		19.775274, 21.475266, 16.247828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351273, 20.939404, 15.963950>,  <20.442654, 21.652189, 16.132488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351273, 20.939404, 15.963950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.978508, 21.083355, 15.945950>,  <19.754848, 21.169725, 15.935149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.978508, 21.083355, 15.945950>,  <20.351273, 20.939404, 15.963950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.978508, 21.083355, 15.945950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064649, -0.286926, -0.955769,
		-0.356878, -0.887782, 0.290656,
		-0.931911, 0.359883, -0.045004,
		19.698935, 21.191319, 15.932448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937963, 20.567867, 15.372030>,  <20.351273, 20.939404, 15.963950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937963, 20.567867, 15.372030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724224, 20.899342, 15.438669>,  <19.595980, 21.098227, 15.478652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.724224, 20.899342, 15.438669>,  <19.937963, 20.567867, 15.372030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.724224, 20.899342, 15.438669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079814, 0.146747, -0.985949,
		-0.841487, -0.540137, -0.012273,
		-0.534349, 0.828684, 0.166596,
		19.563919, 21.147947, 15.488648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272593, 20.466309, 15.010358>,  <19.937963, 20.567867, 15.372030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272593, 20.466309, 15.010358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337917, 20.857361, 15.063370>,  <19.377111, 21.091993, 15.095177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.337917, 20.857361, 15.063370>,  <19.272593, 20.466309, 15.010358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.337917, 20.857361, 15.063370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264918, 0.172855, -0.948651,
		-0.950341, 0.119817, 0.287222,
		0.163313, 0.977632, 0.132529,
		19.386911, 21.150650, 15.103128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886551, 20.780710, 14.428185>,  <19.272593, 20.466309, 15.010358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886551, 20.780710, 14.428185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.111420, 21.079578, 14.570002>,  <19.246342, 21.258900, 14.655091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.111420, 21.079578, 14.570002>,  <18.886551, 20.780710, 14.428185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.111420, 21.079578, 14.570002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079739, 0.377731, -0.922475,
		-0.823167, 0.546861, 0.152772,
		0.562173, 0.747169, 0.354542,
		19.280071, 21.303730, 14.676364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.491619, 21.440002, 14.366220>,  <18.886551, 20.780710, 14.428185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.491619, 21.440002, 14.366220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882046, 21.526649, 14.373909>,  <19.116302, 21.578638, 14.378522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.882046, 21.526649, 14.373909>,  <18.491619, 21.440002, 14.366220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.882046, 21.526649, 14.373909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078406, 0.432974, -0.897990,
		-0.202843, 0.874992, 0.439596,
		0.976067, 0.216618, 0.019221,
		19.174866, 21.591635, 14.379675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.648489, 22.156677, 14.285196>,  <18.491619, 21.440002, 14.366220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.648489, 22.156677, 14.285196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994278, 21.988697, 14.174686>,  <19.201752, 21.887909, 14.108380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.994278, 21.988697, 14.174686>,  <18.648489, 22.156677, 14.285196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.994278, 21.988697, 14.174686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066153, 0.449784, -0.890684,
		0.498306, 0.788250, 0.361045,
		0.864474, -0.419949, -0.276275,
		19.253620, 21.862713, 14.091804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.046236, 22.756067, 13.968741>,  <18.648489, 22.156677, 14.285196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.046236, 22.756067, 13.968741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.246185, 22.431782, 13.846846>,  <19.366156, 22.237209, 13.773708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.246185, 22.431782, 13.846846>,  <19.046236, 22.756067, 13.968741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.246185, 22.431782, 13.846846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200857, 0.450774, -0.869747,
		0.842486, 0.373554, 0.388168,
		0.499874, -0.810715, -0.304740,
		19.396147, 22.188566, 13.755424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639736, 23.000801, 13.697133>,  <19.046236, 22.756067, 13.968741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639736, 23.000801, 13.697133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552830, 22.646664, 13.532713>,  <19.500687, 22.434181, 13.434061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552830, 22.646664, 13.532713>,  <19.639736, 23.000801, 13.697133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552830, 22.646664, 13.532713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148863, 0.386131, -0.910353,
		0.964695, -0.258977, 0.047903,
		-0.217264, -0.885344, -0.411051,
		19.487650, 22.381060, 13.409398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.973131, 23.044178, 13.176126>,  <19.639736, 23.000801, 13.697133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.973131, 23.044178, 13.176126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777760, 22.704285, 13.096741>,  <19.660538, 22.500349, 13.049109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777760, 22.704285, 13.096741>,  <19.973131, 23.044178, 13.176126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777760, 22.704285, 13.096741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115529, 0.162466, -0.979928,
		0.864923, -0.501553, 0.018817,
		-0.488428, -0.849735, -0.198464,
		19.631231, 22.449364, 13.037202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.380672, 22.498379, 12.748708>,  <19.973131, 23.044178, 13.176126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.380672, 22.498379, 12.748708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986973, 22.482323, 12.679842>,  <19.750753, 22.472689, 12.638523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.986973, 22.482323, 12.679842>,  <20.380672, 22.498379, 12.748708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.986973, 22.482323, 12.679842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173318, -0.027270, -0.984488,
		0.034827, -0.998822, 0.033798,
		-0.984250, -0.040144, -0.172164,
		19.691698, 22.470280, 12.628193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.346453, 22.128180, 12.124936>,  <20.380672, 22.498379, 12.748708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.346453, 22.128180, 12.124936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984150, 22.291275, 12.171162>,  <19.766768, 22.389132, 12.198896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984150, 22.291275, 12.171162>,  <20.346453, 22.128180, 12.124936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984150, 22.291275, 12.171162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091415, 0.078294, -0.992730,
		-0.413821, -0.909737, -0.033642,
		-0.905757, 0.407737, 0.115563,
		19.712423, 22.413597, 12.205831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.048836, 21.947222, 11.497889>,  <20.346453, 22.128180, 12.124936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.048836, 21.947222, 11.497889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789261, 22.223724, 11.625039>,  <19.633516, 22.389626, 11.701329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789261, 22.223724, 11.625039>,  <20.048836, 21.947222, 11.497889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789261, 22.223724, 11.625039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147196, 0.295839, -0.943829,
		-0.746468, -0.659275, -0.090230,
		-0.648937, 0.691257, 0.317877,
		19.594580, 22.431101, 11.720402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524897, 21.911173, 11.001608>,  <20.048836, 21.947222, 11.497889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524897, 21.911173, 11.001608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460255, 22.272484, 11.160590>,  <19.421471, 22.489271, 11.255980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.460255, 22.272484, 11.160590>,  <19.524897, 21.911173, 11.001608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.460255, 22.272484, 11.160590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144829, 0.376681, -0.914951,
		-0.976171, -0.205422, 0.069948,
		-0.161603, 0.903279, 0.397456,
		19.411774, 22.543468, 11.279827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.020840, 22.213680, 10.621391>,  <19.524897, 21.911173, 11.001608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.020840, 22.213680, 10.621391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.203094, 22.534588, 10.775670>,  <19.312447, 22.727133, 10.868237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.203094, 22.534588, 10.775670>,  <19.020840, 22.213680, 10.621391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.203094, 22.534588, 10.775670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028495, 0.419920, -0.907114,
		-0.889710, 0.424305, 0.168471,
		0.455637, 0.802268, 0.385697,
		19.339785, 22.775269, 10.891379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.686420, 22.713337, 10.229176>,  <19.020840, 22.213680, 10.621391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.686420, 22.713337, 10.229176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034153, 22.855938, 10.366096>,  <19.242792, 22.941498, 10.448248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034153, 22.855938, 10.366096>,  <18.686420, 22.713337, 10.229176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034153, 22.855938, 10.366096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171032, 0.432797, -0.885119,
		-0.463693, 0.828005, 0.315271,
		0.869331, 0.356502, 0.342300,
		19.294952, 22.962889, 10.468785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.671001, 23.495447, 10.136435>,  <18.686420, 22.713337, 10.229176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.671001, 23.495447, 10.136435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.052147, 23.374332, 10.128739>,  <19.280834, 23.301664, 10.124122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.052147, 23.374332, 10.128739>,  <18.671001, 23.495447, 10.136435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052147, 23.374332, 10.128739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167009, 0.576402, -0.799918,
		0.253293, 0.759001, 0.599800,
		0.952865, -0.302786, -0.019239,
		19.338007, 23.283497, 10.122968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.338568, 23.946507, 10.634333>,  <18.671001, 23.495447, 10.136435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.338568, 23.946507, 10.634333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945896, 23.892521, 10.580530>,  <17.710293, 23.860128, 10.548248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.945896, 23.892521, 10.580530>,  <18.338568, 23.946507, 10.634333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.945896, 23.892521, 10.580530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164433, 0.243359, 0.955896,
		-0.096279, 0.960500, -0.261093,
		-0.981678, -0.134965, -0.134507,
		17.651392, 23.852032, 10.540178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041761, 24.541044, 10.881722>,  <18.338568, 23.946507, 10.634333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.041761, 24.541044, 10.881722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752316, 24.264984, 10.885030>,  <17.578648, 24.099348, 10.887014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752316, 24.264984, 10.885030>,  <18.041761, 24.541044, 10.881722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752316, 24.264984, 10.885030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143816, 0.162485, 0.976174,
		-0.675052, 0.705187, -0.216831,
		-0.723617, -0.690152, 0.008269,
		17.535231, 24.057938, 10.887510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.388531, 24.834150, 11.156946>,  <18.041761, 24.541044, 10.881722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.388531, 24.834150, 11.156946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.283001, 24.449501, 11.187078>,  <17.219683, 24.218712, 11.205156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.283001, 24.449501, 11.187078>,  <17.388531, 24.834150, 11.156946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283001, 24.449501, 11.187078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243490, 0.141960, 0.959458,
		-0.933332, 0.234788, -0.271599,
		-0.263825, -0.961625, 0.075327,
		17.203854, 24.161015, 11.209676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596136, 24.769392, 11.390012>,  <17.388531, 24.834150, 11.156946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596136, 24.769392, 11.390012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824390, 24.455292, 11.486142>,  <16.961342, 24.266830, 11.543820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.824390, 24.455292, 11.486142>,  <16.596136, 24.769392, 11.390012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.824390, 24.455292, 11.486142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461796, -0.064847, 0.884612,
		-0.679059, -0.615772, -0.399630,
		0.570634, -0.785252, 0.240326,
		16.995581, 24.219717, 11.558240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127855, 24.448637, 11.842575>,  <16.596136, 24.769392, 11.390012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127855, 24.448637, 11.842575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470619, 24.250626, 11.900058>,  <16.676277, 24.131819, 11.934547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.470619, 24.250626, 11.900058>,  <16.127855, 24.448637, 11.842575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.470619, 24.250626, 11.900058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287082, -0.226770, 0.930677,
		-0.428125, -0.838762, -0.336435,
		0.856909, -0.495030, 0.143707,
		16.727692, 24.102118, 11.943171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.036329, 24.058666, 12.380932>,  <16.127855, 24.448637, 11.842575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.036329, 24.058666, 12.380932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433823, 24.016476, 12.366114>,  <16.672318, 23.991161, 12.357223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.433823, 24.016476, 12.366114>,  <16.036329, 24.058666, 12.380932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433823, 24.016476, 12.366114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017311, -0.182204, 0.983108,
		-0.110442, -0.977587, -0.179236,
		0.993732, -0.105474, -0.037046,
		16.731941, 23.984833, 12.355000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168472, 23.530918, 12.810605>,  <16.036329, 24.058666, 12.380932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168472, 23.530918, 12.810605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518204, 23.724442, 12.795217>,  <16.728043, 23.840555, 12.785984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.518204, 23.724442, 12.795217>,  <16.168472, 23.530918, 12.810605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.518204, 23.724442, 12.795217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175835, -0.241889, 0.954239,
		0.452364, -0.841082, -0.296561,
		0.874328, 0.483809, -0.038470,
		16.780502, 23.869583, 12.783675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.706213, 23.097851, 13.169303>,  <16.168472, 23.530918, 12.810605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.706213, 23.097851, 13.169303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844692, 23.473057, 13.162651>,  <16.927780, 23.698181, 13.158660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.844692, 23.473057, 13.162651>,  <16.706213, 23.097851, 13.169303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844692, 23.473057, 13.162651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161514, -0.042130, 0.985971,
		0.924154, -0.344027, -0.166087,
		0.346197, 0.938015, -0.016631,
		16.948551, 23.754461, 13.157661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312445, 23.080259, 13.569437>,  <16.706213, 23.097851, 13.169303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312445, 23.080259, 13.569437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181114, 23.458084, 13.568516>,  <17.102316, 23.684778, 13.567964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.181114, 23.458084, 13.568516>,  <17.312445, 23.080259, 13.569437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.181114, 23.458084, 13.568516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094366, 0.035226, 0.994914,
		0.939839, 0.326440, -0.100701,
		-0.328327, 0.944561, -0.002302,
		17.082617, 23.741453, 13.567825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.747915, 23.427271, 13.955805>,  <17.312445, 23.080259, 13.569437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.747915, 23.427271, 13.955805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429329, 23.668633, 13.940071>,  <17.238178, 23.813450, 13.930631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429329, 23.668633, 13.940071>,  <17.747915, 23.427271, 13.955805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429329, 23.668633, 13.940071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089786, 0.182339, 0.979128,
		0.597982, 0.776309, -0.199404,
		-0.796464, 0.603405, -0.039334,
		17.190390, 23.849653, 13.928271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.920969, 23.872913, 14.439929>,  <17.747915, 23.427271, 13.955805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.920969, 23.872913, 14.439929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.528061, 23.942066, 14.410925>,  <17.292316, 23.983557, 14.393522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.528061, 23.942066, 14.410925>,  <17.920969, 23.872913, 14.439929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528061, 23.942066, 14.410925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043263, 0.167306, 0.984955,
		0.182410, 0.970629, -0.156860,
		-0.982270, 0.172880, -0.072511,
		17.233379, 23.993931, 14.389172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882004, 24.481663, 14.807875>,  <17.920969, 23.872913, 14.439929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882004, 24.481663, 14.807875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531181, 24.289776, 14.797764>,  <17.320686, 24.174643, 14.791698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.531181, 24.289776, 14.797764>,  <17.882004, 24.481663, 14.807875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.531181, 24.289776, 14.797764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080426, 0.094757, 0.992246,
		-0.473603, 0.872291, -0.121689,
		-0.877058, -0.479718, -0.025278,
		17.268064, 24.145861, 14.790180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.501295, 24.821213, 15.142860>,  <17.882004, 24.481663, 14.807875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.501295, 24.821213, 15.142860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313217, 24.468204, 15.146166>,  <17.200371, 24.256399, 15.148149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.313217, 24.468204, 15.146166>,  <17.501295, 24.821213, 15.142860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313217, 24.468204, 15.146166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149579, -0.070460, 0.986236,
		-0.869794, 0.464961, 0.165136,
		-0.470197, -0.882523, 0.008263,
		17.172157, 24.203447, 15.148644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.909599, 24.971380, 15.538064>,  <17.501295, 24.821213, 15.142860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.909599, 24.971380, 15.538064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004311, 24.582821, 15.545277>,  <17.061138, 24.349686, 15.549604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004311, 24.582821, 15.545277>,  <16.909599, 24.971380, 15.538064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004311, 24.582821, 15.545277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070942, 0.001223, 0.997480,
		-0.968970, -0.237461, -0.068623,
		0.236779, -0.971396, 0.018031,
		17.075344, 24.291403, 15.550686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.415501, 24.692301, 15.984976>,  <16.909599, 24.971380, 15.538064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.415501, 24.692301, 15.984976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724415, 24.438396, 15.995207>,  <16.909763, 24.286053, 16.001345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.724415, 24.438396, 15.995207>,  <16.415501, 24.692301, 15.984976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.724415, 24.438396, 15.995207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016402, 0.020324, 0.999659,
		-0.635066, -0.772440, 0.005285,
		0.772284, -0.634762, 0.025576,
		16.956100, 24.247969, 16.002880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.173542, 24.214796, 16.481594>,  <16.415501, 24.692301, 15.984976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.173542, 24.214796, 16.481594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555084, 24.104416, 16.434246>,  <16.784010, 24.038189, 16.405836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.555084, 24.104416, 16.434246>,  <16.173542, 24.214796, 16.481594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555084, 24.104416, 16.434246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099022, -0.083080, 0.991611,
		-0.283470, -0.957575, -0.051921,
		0.953855, -0.275950, -0.118371,
		16.841240, 24.021631, 16.398735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267748, 23.758316, 17.056206>,  <16.173542, 24.214796, 16.481594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267748, 23.758316, 17.056206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646591, 23.805771, 16.936932>,  <16.873898, 23.834244, 16.865366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.646591, 23.805771, 16.936932>,  <16.267748, 23.758316, 17.056206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.646591, 23.805771, 16.936932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317668, -0.214623, 0.923593,
		0.045577, -0.969465, -0.240959,
		0.947106, 0.118639, -0.298186,
		16.930723, 23.841362, 16.847475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695414, 23.135529, 17.090748>,  <16.267748, 23.758316, 17.056206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695414, 23.135529, 17.090748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950352, 23.443481, 17.103857>,  <17.103313, 23.628254, 17.111723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.950352, 23.443481, 17.103857>,  <16.695414, 23.135529, 17.090748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950352, 23.443481, 17.103857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385242, -0.355180, 0.851725,
		0.667369, -0.530216, -0.522963,
		0.637344, 0.769882, 0.032775,
		17.141556, 23.674446, 17.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.294981, 22.920673, 17.104891>,  <16.695414, 23.135529, 17.090748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.294981, 22.920673, 17.104891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318092, 23.277039, 17.285086>,  <17.331959, 23.490858, 17.393202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.318092, 23.277039, 17.285086>,  <17.294981, 22.920673, 17.104891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318092, 23.277039, 17.285086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355821, -0.439984, 0.824503,
		0.932766, 0.112656, -0.342426,
		0.057777, 0.890911, 0.450487,
		17.335424, 23.544312, 17.420233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.695051, 22.763065, 17.670450>,  <17.294981, 22.920673, 17.104891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.695051, 22.763065, 17.670450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590443, 23.129173, 17.793015>,  <17.527678, 23.348839, 17.866552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.590443, 23.129173, 17.793015>,  <17.695051, 22.763065, 17.670450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.590443, 23.129173, 17.793015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282166, -0.231092, 0.931117,
		0.923032, 0.329965, -0.197823,
		-0.261521, 0.915270, 0.306411,
		17.511986, 23.403755, 17.884937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257524, 23.017168, 18.009077>,  <17.695051, 22.763065, 17.670450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257524, 23.017168, 18.009077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929203, 23.202839, 18.142239>,  <17.732210, 23.314241, 18.222136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.929203, 23.202839, 18.142239>,  <18.257524, 23.017168, 18.009077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.929203, 23.202839, 18.142239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313952, -0.120284, 0.941789,
		0.477198, 0.877538, -0.046999,
		-0.820802, 0.464175, 0.332904,
		17.682962, 23.342091, 18.242109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.470455, 23.632536, 18.521791>,  <18.257524, 23.017168, 18.009077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.470455, 23.632536, 18.521791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094963, 23.523338, 18.605942>,  <17.869667, 23.457819, 18.656433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094963, 23.523338, 18.605942>,  <18.470455, 23.632536, 18.521791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094963, 23.523338, 18.605942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239170, -0.076480, 0.967961,
		-0.248159, 0.958971, 0.137086,
		-0.938730, -0.272995, 0.210377,
		17.813343, 23.441441, 18.669056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332138, 23.955179, 19.156334>,  <18.470455, 23.632536, 18.521791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332138, 23.955179, 19.156334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047894, 23.673752, 19.154488>,  <17.877346, 23.504894, 19.153379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.047894, 23.673752, 19.154488>,  <18.332138, 23.955179, 19.156334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.047894, 23.673752, 19.154488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115566, -0.123189, 0.985631,
		-0.694029, 0.699867, 0.168848,
		-0.710611, -0.703570, -0.004616,
		17.834711, 23.462681, 19.153103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749416, 24.078856, 19.576885>,  <18.332138, 23.955179, 19.156334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749416, 24.078856, 19.576885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.762901, 23.681122, 19.536558>,  <17.770992, 23.442482, 19.512362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.762901, 23.681122, 19.536558>,  <17.749416, 24.078856, 19.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.762901, 23.681122, 19.536558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146534, -0.094866, 0.984646,
		-0.988631, -0.047966, 0.142506,
		0.033711, -0.994334, -0.100817,
		17.773014, 23.382822, 19.506313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.318439, 23.788914, 20.109241>,  <17.749416, 24.078856, 19.576885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.318439, 23.788914, 20.109241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583603, 23.507362, 20.007174>,  <17.742701, 23.338432, 19.945932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.583603, 23.507362, 20.007174>,  <17.318439, 23.788914, 20.109241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.583603, 23.507362, 20.007174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046867, -0.301139, 0.952428,
		-0.747234, -0.643330, -0.166638,
		0.662906, -0.703876, -0.255172,
		17.782475, 23.296200, 19.930622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.158899, 23.288218, 20.621191>,  <17.318439, 23.788914, 20.109241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.158899, 23.288218, 20.621191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508904, 23.173046, 20.465523>,  <17.718906, 23.103943, 20.372122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508904, 23.173046, 20.465523>,  <17.158899, 23.288218, 20.621191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508904, 23.173046, 20.465523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273999, -0.368182, 0.888463,
		-0.399107, -0.884044, -0.243268,
		0.875007, -0.287937, -0.389172,
		17.771406, 23.086668, 20.348772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122604, 22.575096, 20.825779>,  <17.158899, 23.288218, 20.621191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122604, 22.575096, 20.825779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503796, 22.670334, 20.750795>,  <17.732512, 22.727476, 20.705805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.503796, 22.670334, 20.750795>,  <17.122604, 22.575096, 20.825779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503796, 22.670334, 20.750795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276877, -0.432703, 0.857967,
		0.123163, -0.869528, -0.478280,
		0.952980, 0.238094, -0.187459,
		17.789690, 22.741762, 20.694557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.548140, 21.912476, 20.989716>,  <17.122604, 22.575096, 20.825779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.548140, 21.912476, 20.989716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.784603, 22.234375, 21.011307>,  <17.926481, 22.427515, 21.024261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.784603, 22.234375, 21.011307>,  <17.548140, 21.912476, 20.989716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784603, 22.234375, 21.011307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464533, -0.394424, 0.792867,
		0.659349, -0.443634, -0.606999,
		0.591158, 0.804747, 0.053980,
		17.961950, 22.475800, 21.027500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270231, 21.689676, 21.120220>,  <17.548140, 21.912476, 20.989716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270231, 21.689676, 21.120220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277050, 22.072010, 21.237587>,  <18.281141, 22.301411, 21.308008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277050, 22.072010, 21.237587>,  <18.270231, 21.689676, 21.120220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277050, 22.072010, 21.237587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513671, -0.260145, 0.817598,
		0.857818, 0.136781, -0.495418,
		0.017049, 0.955832, 0.293418,
		18.282166, 22.358759, 21.325613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983271, 21.830643, 21.225355>,  <18.270231, 21.689676, 21.120220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983271, 21.830643, 21.225355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775826, 22.106037, 21.428148>,  <18.651360, 22.271273, 21.549824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.775826, 22.106037, 21.428148>,  <18.983271, 21.830643, 21.225355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775826, 22.106037, 21.428148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347139, -0.372334, 0.860733,
		0.781369, 0.622379, -0.045904,
		-0.518611, 0.688485, 0.506982,
		18.620243, 22.312582, 21.580242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.441032, 21.901415, 21.914856>,  <18.983271, 21.830643, 21.225355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.441032, 21.901415, 21.914856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.082714, 22.056618, 22.001577>,  <18.867723, 22.149740, 22.053610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.082714, 22.056618, 22.001577>,  <19.441032, 21.901415, 21.914856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.082714, 22.056618, 22.001577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185145, -0.117698, 0.975637,
		0.404072, 0.914110, 0.033595,
		-0.895794, 0.388008, 0.216801,
		18.813976, 22.173019, 22.066618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.595833, 22.506596, 22.564013>,  <19.441032, 21.901415, 21.914856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.595833, 22.506596, 22.564013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217525, 22.377407, 22.550079>,  <18.990541, 22.299894, 22.541719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.217525, 22.377407, 22.550079>,  <19.595833, 22.506596, 22.564013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217525, 22.377407, 22.550079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003263, -0.097772, 0.995203,
		-0.324827, 0.941345, 0.091416,
		-0.945768, -0.322970, -0.034831,
		18.933796, 22.280516, 22.539631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469873, 22.705208, 23.146633>,  <19.595833, 22.506596, 22.564013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469873, 22.705208, 23.146633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169895, 22.456535, 23.056217>,  <18.989908, 22.307333, 23.001968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169895, 22.456535, 23.056217>,  <19.469873, 22.705208, 23.146633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169895, 22.456535, 23.056217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132209, -0.193948, 0.972062,
		-0.648151, 0.758880, 0.063260,
		-0.749948, -0.621679, -0.226038,
		18.944910, 22.270031, 22.988405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983843, 22.694702, 23.743958>,  <19.469873, 22.705208, 23.146633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983843, 22.694702, 23.743958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925922, 22.365067, 23.524900>,  <18.891171, 22.167286, 23.393467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.925922, 22.365067, 23.524900>,  <18.983843, 22.694702, 23.743958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.925922, 22.365067, 23.524900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214055, -0.514280, 0.830480,
		-0.966030, 0.237479, -0.101933,
		-0.144799, -0.824088, -0.547643,
		18.882483, 22.117840, 23.360607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411497, 22.518324, 23.957863>,  <18.983843, 22.694702, 23.743958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411497, 22.518324, 23.957863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552120, 22.180134, 23.797077>,  <18.636494, 21.977219, 23.700605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.552120, 22.180134, 23.797077>,  <18.411497, 22.518324, 23.957863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.552120, 22.180134, 23.797077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132792, -0.470069, 0.872583,
		-0.926700, -0.253387, -0.277530,
		0.351559, -0.845476, -0.401966,
		18.657587, 21.926491, 23.676487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.959719, 22.011976, 24.140823>,  <18.411497, 22.518324, 23.957863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.959719, 22.011976, 24.140823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.295738, 21.815472, 24.048756>,  <18.497351, 21.697569, 23.993515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.295738, 21.815472, 24.048756>,  <17.959719, 22.011976, 24.140823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.295738, 21.815472, 24.048756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065764, -0.513350, 0.855655,
		-0.538515, -0.703653, -0.463546,
		0.840046, -0.491268, -0.230172,
		18.547752, 21.668093, 23.979706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.812481, 21.272488, 24.221075>,  <17.959719, 22.011976, 24.140823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.812481, 21.272488, 24.221075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209442, 21.301033, 24.261154>,  <18.447618, 21.318161, 24.285202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.209442, 21.301033, 24.261154>,  <17.812481, 21.272488, 24.221075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.209442, 21.301033, 24.261154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056953, -0.455431, 0.888447,
		0.109038, -0.887406, -0.447908,
		0.992405, 0.071365, 0.100200,
		18.507164, 21.322443, 24.291214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.000576, 20.577442, 24.442181>,  <17.812481, 21.272488, 24.221075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.000576, 20.577442, 24.442181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305275, 20.818745, 24.536688>,  <18.488094, 20.963526, 24.593391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.305275, 20.818745, 24.536688>,  <18.000576, 20.577442, 24.442181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.305275, 20.818745, 24.536688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082694, -0.452234, 0.888057,
		0.642572, -0.656939, -0.394374,
		0.761749, 0.603254, 0.236268,
		18.533800, 20.999722, 24.607569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.140190, 20.147205, 23.938999>,  <18.000576, 20.577442, 24.442181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.140190, 20.147205, 23.938999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.863617, 19.895596, 24.081121>,  <17.697672, 19.744629, 24.166395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.863617, 19.895596, 24.081121>,  <18.140190, 20.147205, 23.938999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863617, 19.895596, 24.081121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507340, 0.072648, -0.858678,
		0.514319, -0.773981, -0.369362,
		-0.691435, -0.629027, 0.355308,
		17.656187, 19.706888, 24.187714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075884, 19.487799, 23.576807>,  <18.140190, 20.147205, 23.938999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075884, 19.487799, 23.576807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721588, 19.552448, 23.750860>,  <17.509010, 19.591238, 23.855293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.721588, 19.552448, 23.750860>,  <18.075884, 19.487799, 23.576807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721588, 19.552448, 23.750860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454934, -0.116078, -0.882928,
		-0.092180, -0.980004, 0.176336,
		-0.885741, 0.161609, 0.435137,
		17.455866, 19.600935, 23.881401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.654339, 18.951815, 23.336727>,  <18.075884, 19.487799, 23.576807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.654339, 18.951815, 23.336727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425037, 19.258759, 23.451645>,  <17.287457, 19.442924, 23.520596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425037, 19.258759, 23.451645>,  <17.654339, 18.951815, 23.336727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425037, 19.258759, 23.451645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535200, -0.085172, -0.840420,
		-0.620437, -0.635533, 0.459517,
		-0.573253, 0.767362, 0.287294,
		17.253061, 19.488966, 23.537832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085360, 18.791777, 23.005247>,  <17.654339, 18.951815, 23.336727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085360, 18.791777, 23.005247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976864, 19.153255, 23.137770>,  <16.911766, 19.370142, 23.217283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976864, 19.153255, 23.137770>,  <17.085360, 18.791777, 23.005247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976864, 19.153255, 23.137770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548699, 0.137623, -0.824615,
		-0.790795, -0.405456, 0.458528,
		-0.271241, 0.903695, 0.331305,
		16.895491, 19.424364, 23.237162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378607, 18.839340, 23.066278>,  <17.085360, 18.791777, 23.005247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.378607, 18.839340, 23.066278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501396, 19.213581, 22.996519>,  <16.575069, 19.438126, 22.954664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.501396, 19.213581, 22.996519>,  <16.378607, 18.839340, 23.066278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501396, 19.213581, 22.996519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506791, 0.005592, -0.862051,
		-0.805562, 0.353008, 0.475872,
		0.306972, 0.935603, -0.174397,
		16.593489, 19.494263, 22.944201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.785097, 19.275059, 22.861586>,  <16.378607, 18.839340, 23.066278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.785097, 19.275059, 22.861586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108601, 19.476074, 22.739365>,  <16.302702, 19.596684, 22.666033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.108601, 19.476074, 22.739365>,  <15.785097, 19.275059, 22.861586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.108601, 19.476074, 22.739365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475654, 0.253316, -0.842369,
		-0.345923, 0.826610, 0.443906,
		0.808759, 0.502540, -0.305553,
		16.351229, 19.626837, 22.647699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.531672, 19.862997, 22.511763>,  <15.785097, 19.275059, 22.861586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.531672, 19.862997, 22.511763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909654, 19.833641, 22.384216>,  <16.136442, 19.816029, 22.307688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.909654, 19.833641, 22.384216>,  <15.531672, 19.862997, 22.511763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.909654, 19.833641, 22.384216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304763, 0.157279, -0.939352,
		0.119089, 0.984824, 0.126255,
		0.944954, -0.073389, -0.318868,
		16.193140, 19.811625, 22.288555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468428, 20.166687, 21.856016>,  <15.531672, 19.862997, 22.511763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.468428, 20.166687, 21.856016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844720, 20.033863, 21.828413>,  <16.070496, 19.954168, 21.811852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.844720, 20.033863, 21.828413>,  <15.468428, 20.166687, 21.856016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.844720, 20.033863, 21.828413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015696, 0.245874, -0.969175,
		0.338791, 0.910649, 0.236514,
		0.940731, -0.332060, -0.069007,
		16.126940, 19.934246, 21.807711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846639, 20.629930, 21.556759>,  <15.468428, 20.166687, 21.856016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846639, 20.629930, 21.556759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067661, 20.302193, 21.495626>,  <16.200275, 20.105551, 21.458946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.067661, 20.302193, 21.495626>,  <15.846639, 20.629930, 21.556759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067661, 20.302193, 21.495626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036693, 0.207103, -0.977631,
		0.832667, 0.534589, 0.144501,
		0.552557, -0.819343, -0.152832,
		16.233429, 20.056389, 21.449778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552933, 20.746027, 21.180511>,  <15.846639, 20.629930, 21.556759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552933, 20.746027, 21.180511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392288, 20.386471, 21.110424>,  <16.295900, 20.170736, 21.068371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.392288, 20.386471, 21.110424>,  <16.552933, 20.746027, 21.180511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.392288, 20.386471, 21.110424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016669, 0.184119, -0.982763,
		0.915658, -0.397610, -0.058961,
		-0.401612, -0.898892, -0.175218,
		16.271805, 20.116804, 21.057859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974937, 20.427809, 20.566521>,  <16.552933, 20.746027, 21.180511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.974937, 20.427809, 20.566521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645962, 20.202820, 20.600506>,  <16.448576, 20.067825, 20.620897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.645962, 20.202820, 20.600506>,  <16.974937, 20.427809, 20.566521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645962, 20.202820, 20.600506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147227, 0.066198, -0.986885,
		0.549473, -0.824161, -0.137255,
		-0.822438, -0.562474, 0.084964,
		16.399231, 20.034079, 20.625996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986216, 20.068441, 19.949478>,  <16.974937, 20.427809, 20.566521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986216, 20.068441, 19.949478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.615379, 20.041328, 20.096943>,  <16.392878, 20.025061, 20.185423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.615379, 20.041328, 20.096943>,  <16.986216, 20.068441, 19.949478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.615379, 20.041328, 20.096943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367373, 0.359656, -0.857721,
		-0.074456, -0.930620, -0.358333,
		-0.927089, -0.067780, 0.368663,
		16.337254, 20.020994, 20.207542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750086, 19.565395, 19.561264>,  <16.986216, 20.068441, 19.949478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750086, 19.565395, 19.561264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422771, 19.737747, 19.713448>,  <16.226383, 19.841158, 19.804758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.422771, 19.737747, 19.713448>,  <16.750086, 19.565395, 19.561264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.422771, 19.737747, 19.713448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290029, 0.261959, -0.920467,
		-0.496276, -0.863551, -0.089390,
		-0.818287, 0.430880, 0.380459,
		16.177286, 19.867010, 19.827585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115337, 19.326666, 19.083164>,  <16.750086, 19.565395, 19.561264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115337, 19.326666, 19.083164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026955, 19.653095, 19.296783>,  <15.973926, 19.848953, 19.424955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.026955, 19.653095, 19.296783>,  <16.115337, 19.326666, 19.083164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.026955, 19.653095, 19.296783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361791, 0.439924, -0.821933,
		-0.905696, -0.374823, 0.198044,
		-0.220955, 0.816072, 0.534046,
		15.960669, 19.897917, 19.456997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.535170, 19.500364, 18.775612>,  <16.115337, 19.326666, 19.083164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.535170, 19.500364, 18.775612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667258, 19.833935, 18.952484>,  <15.746511, 20.034077, 19.058607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.667258, 19.833935, 18.952484>,  <15.535170, 19.500364, 18.775612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.667258, 19.833935, 18.952484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241356, 0.527484, -0.814560,
		-0.912525, 0.162262, 0.375459,
		0.330221, 0.833925, 0.442179,
		15.766325, 20.084112, 19.085138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.062668, 19.939360, 18.573616>,  <15.535170, 19.500364, 18.775612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.062668, 19.939360, 18.573616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376441, 20.162666, 18.681690>,  <15.564705, 20.296650, 18.746534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.376441, 20.162666, 18.681690>,  <15.062668, 19.939360, 18.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376441, 20.162666, 18.681690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125174, 0.569177, -0.812631,
		-0.607449, 0.603634, 0.516363,
		0.784434, 0.558267, 0.270187,
		15.611772, 20.330147, 18.762747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.891084, 20.572823, 18.390738>,  <15.062668, 19.939360, 18.573616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.891084, 20.572823, 18.390738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285619, 20.623646, 18.432676>,  <15.522340, 20.654140, 18.457840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285619, 20.623646, 18.432676>,  <14.891084, 20.572823, 18.390738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285619, 20.623646, 18.432676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003315, 0.621031, -0.783779,
		-0.164700, 0.773419, 0.612125,
		0.986338, 0.127059, 0.104847,
		15.581520, 20.661764, 18.464130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995568, 21.281565, 18.345530>,  <14.891084, 20.572823, 18.390738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995568, 21.281565, 18.345530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352984, 21.133980, 18.243195>,  <15.567434, 21.045429, 18.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.352984, 21.133980, 18.243195>,  <14.995568, 21.281565, 18.345530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352984, 21.133980, 18.243195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019828, 0.601689, -0.798484,
		0.448546, 0.708405, 0.544949,
		0.893540, -0.368963, -0.255839,
		15.621046, 21.023291, 18.166443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.388811, 21.820362, 18.094688>,  <14.995568, 21.281565, 18.345530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.388811, 21.820362, 18.094688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588042, 21.502243, 17.956457>,  <15.707581, 21.311373, 17.873518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588042, 21.502243, 17.956457>,  <15.388811, 21.820362, 18.094688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588042, 21.502243, 17.956457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195835, 0.491401, -0.848631,
		0.844729, 0.355008, 0.400502,
		0.498078, -0.795295, -0.345578,
		15.737466, 21.263655, 17.852783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.799479, 22.165796, 17.676111>,  <15.388811, 21.820362, 18.094688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.799479, 22.165796, 17.676111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847852, 21.799896, 17.521914>,  <15.876875, 21.580357, 17.429396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.847852, 21.799896, 17.521914>,  <15.799479, 22.165796, 17.676111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.847852, 21.799896, 17.521914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279066, 0.404011, -0.871147,
		0.952627, -0.002229, 0.304134,
		0.120932, -0.914752, -0.385493,
		15.884131, 21.525471, 17.406265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349142, 22.234339, 17.313118>,  <15.799479, 22.165796, 17.676111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349142, 22.234339, 17.313118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158829, 21.921600, 17.151947>,  <16.044641, 21.733957, 17.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.158829, 21.921600, 17.151947>,  <16.349142, 22.234339, 17.313118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.158829, 21.921600, 17.151947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185525, 0.358584, -0.914876,
		0.859774, -0.510034, -0.025556,
		-0.475782, -0.781846, -0.402925,
		16.016094, 21.687046, 17.031069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645430, 22.120901, 16.627579>,  <16.349142, 22.234339, 17.313118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.645430, 22.120901, 16.627579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322186, 21.889595, 16.582743>,  <16.128239, 21.750811, 16.555841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.322186, 21.889595, 16.582743>,  <16.645430, 22.120901, 16.627579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.322186, 21.889595, 16.582743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066052, 0.278062, -0.958289,
		0.585317, -0.766999, -0.262901,
		-0.808110, -0.578268, -0.112093,
		16.079752, 21.716114, 16.549114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702629, 21.837692, 15.984035>,  <16.645430, 22.120901, 16.627579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702629, 21.837692, 15.984035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315319, 21.824322, 16.083092>,  <16.082933, 21.816299, 16.142527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.315319, 21.824322, 16.083092>,  <16.702629, 21.837692, 15.984035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.315319, 21.824322, 16.083092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249719, 0.092979, -0.963844,
		0.009187, -0.995107, -0.098375,
		-0.968275, -0.033421, 0.247643,
		16.024837, 21.814295, 16.157385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.297878, 21.223129, 15.659493>,  <16.702629, 21.837692, 15.984035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.297878, 21.223129, 15.659493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030003, 21.507305, 15.746021>,  <15.869278, 21.677811, 15.797937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030003, 21.507305, 15.746021>,  <16.297878, 21.223129, 15.659493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030003, 21.507305, 15.746021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330063, -0.023799, -0.943659,
		-0.665266, -0.703355, 0.250428,
		-0.669687, 0.710441, 0.216319,
		15.829097, 21.720438, 15.810917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.774889, 21.001875, 15.301714>,  <16.297878, 21.223129, 15.659493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.774889, 21.001875, 15.301714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678935, 21.378994, 15.394308>,  <15.621363, 21.605267, 15.449864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.678935, 21.378994, 15.394308>,  <15.774889, 21.001875, 15.301714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.678935, 21.378994, 15.394308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540606, 0.068324, -0.838497,
		-0.806350, -0.326285, 0.493293,
		-0.239886, 0.942799, 0.231485,
		15.606969, 21.661833, 15.463754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093531, 21.031828, 15.115521>,  <15.774889, 21.001875, 15.301714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093531, 21.031828, 15.115521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207440, 21.415100, 15.126772>,  <15.275786, 21.645063, 15.133522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.207440, 21.415100, 15.126772>,  <15.093531, 21.031828, 15.115521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.207440, 21.415100, 15.126772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420966, 0.151365, -0.894358,
		-0.861215, 0.242851, 0.446467,
		0.284775, 0.958182, 0.028126,
		15.292873, 21.702555, 15.135210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509096, 21.462616, 14.869060>,  <15.093531, 21.031828, 15.115521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509096, 21.462616, 14.869060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836751, 21.686573, 14.819206>,  <15.033344, 21.820948, 14.789294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.836751, 21.686573, 14.819206>,  <14.509096, 21.462616, 14.869060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.836751, 21.686573, 14.819206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364828, 0.340883, -0.866429,
		-0.442621, 0.755195, 0.483495,
		0.819138, 0.559892, -0.124634,
		15.082493, 21.854540, 14.781816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.270763, 22.101950, 14.607721>,  <14.509096, 21.462616, 14.869060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.270763, 22.101950, 14.607721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658021, 22.096294, 14.507725>,  <14.890376, 22.092901, 14.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.658021, 22.096294, 14.507725>,  <14.270763, 22.101950, 14.607721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658021, 22.096294, 14.507725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239295, 0.241666, -0.940391,
		0.073711, 0.970257, 0.230584,
		0.968145, -0.014140, -0.249991,
		14.948464, 22.092052, 14.432728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396702, 22.558672, 14.048312>,  <14.270763, 22.101950, 14.607721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396702, 22.558672, 14.048312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731462, 22.343548, 14.007607>,  <14.932318, 22.214474, 13.983183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.731462, 22.343548, 14.007607>,  <14.396702, 22.558672, 14.048312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.731462, 22.343548, 14.007607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095987, 0.038836, -0.994625,
		0.538874, 0.842170, -0.019121,
		0.836900, -0.537813, -0.101765,
		14.982532, 22.182203, 13.977077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.757824, 22.838366, 13.459766>,  <14.396702, 22.558672, 14.048312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.757824, 22.838366, 13.459766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944160, 22.486206, 13.495291>,  <15.055961, 22.274910, 13.516605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944160, 22.486206, 13.495291>,  <14.757824, 22.838366, 13.459766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944160, 22.486206, 13.495291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139052, -0.026286, -0.989936,
		0.873875, 0.473501, 0.110176,
		0.465840, -0.880401, 0.088812,
		15.083912, 22.222086, 13.521935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.335045, 22.864367, 13.021030>,  <14.757824, 22.838366, 13.459766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.335045, 22.864367, 13.021030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215466, 22.485256, 13.065489>,  <15.143720, 22.257790, 13.092164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.215466, 22.485256, 13.065489>,  <15.335045, 22.864367, 13.021030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.215466, 22.485256, 13.065489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067122, -0.137067, -0.988285,
		0.951907, -0.287982, 0.104592,
		-0.298945, -0.947776, 0.111145,
		15.125783, 22.200924, 13.098832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871510, 22.374094, 12.643777>,  <15.335045, 22.864367, 13.021030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871510, 22.374094, 12.643777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519866, 22.186569, 12.678147>,  <15.308880, 22.074055, 12.698770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.519866, 22.186569, 12.678147>,  <15.871510, 22.374094, 12.643777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.519866, 22.186569, 12.678147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093890, -0.347089, -0.933121,
		0.467283, -0.812246, 0.349146,
		-0.879108, -0.468813, 0.085927,
		15.256133, 22.045925, 12.703925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946411, 21.886038, 12.131637>,  <15.871510, 22.374094, 12.643777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946411, 21.886038, 12.131637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564565, 21.828945, 12.236200>,  <15.335457, 21.794689, 12.298939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.564565, 21.828945, 12.236200>,  <15.946411, 21.886038, 12.131637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.564565, 21.828945, 12.236200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163752, -0.481602, -0.860956,
		0.248783, -0.864689, 0.436372,
		-0.954616, -0.142734, 0.261409,
		15.278180, 21.786125, 12.314623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.773971, 21.157148, 11.995639>,  <15.946411, 21.886038, 12.131637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.773971, 21.157148, 11.995639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431251, 21.363266, 11.988010>,  <15.225618, 21.486937, 11.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431251, 21.363266, 11.988010>,  <15.773971, 21.157148, 11.995639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431251, 21.363266, 11.988010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244192, -0.438047, -0.865150,
		-0.454168, -0.736600, 0.501150,
		-0.856797, 0.515301, -0.019075,
		15.174211, 21.517855, 11.982288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303005, 20.676212, 11.555941>,  <15.773971, 21.157148, 11.995639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303005, 20.676212, 11.555941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099275, 21.019604, 11.579944>,  <14.977036, 21.225639, 11.594346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.099275, 21.019604, 11.579944>,  <15.303005, 20.676212, 11.555941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.099275, 21.019604, 11.579944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429844, -0.193373, -0.881953,
		-0.745534, -0.474996, 0.467501,
		-0.509326, 0.858478, 0.060008,
		14.946477, 21.277147, 11.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620357, 20.523867, 11.626115>,  <15.303005, 20.676212, 11.555941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.620357, 20.523867, 11.626115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628558, 20.892838, 11.471864>,  <14.633479, 21.114220, 11.379313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.628558, 20.892838, 11.471864>,  <14.620357, 20.523867, 11.626115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.628558, 20.892838, 11.471864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387243, -0.348275, -0.853667,
		-0.921750, 0.166836, 0.350061,
		0.020505, 0.922426, -0.385629,
		14.634709, 21.169565, 11.356175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936119, 20.735300, 11.424690>,  <14.620357, 20.523867, 11.626115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936119, 20.735300, 11.424690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195220, 20.965393, 11.224880>,  <14.350680, 21.103449, 11.104994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.195220, 20.965393, 11.224880>,  <13.936119, 20.735300, 11.424690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.195220, 20.965393, 11.224880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471272, -0.212632, -0.855973,
		-0.598598, 0.789871, 0.133358,
		0.647752, 0.575232, -0.499525,
		14.389545, 21.137962, 11.075023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.572560, 20.976156, 10.905149>,  <13.936119, 20.735300, 11.424690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.572560, 20.976156, 10.905149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928916, 21.091145, 10.764479>,  <14.142730, 21.160137, 10.680077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928916, 21.091145, 10.764479>,  <13.572560, 20.976156, 10.905149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928916, 21.091145, 10.764479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369765, 0.009345, -0.929078,
		-0.263798, 0.957743, 0.114622,
		0.890890, 0.287472, -0.351675,
		14.196183, 21.177385, 10.658977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.472285, 21.651838, 10.532187>,  <13.572560, 20.976156, 10.905149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.472285, 21.651838, 10.532187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796187, 21.454887, 10.404525>,  <13.990529, 21.336718, 10.327928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.796187, 21.454887, 10.404525>,  <13.472285, 21.651838, 10.532187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.796187, 21.454887, 10.404525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319908, 0.085509, -0.943582,
		0.491888, 0.866172, -0.088273,
		0.809756, -0.492376, -0.319156,
		14.039114, 21.307175, 10.308778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632429, 22.019449, 9.825663>,  <13.472285, 21.651838, 10.532187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632429, 22.019449, 9.825663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.833552, 21.675472, 9.860718>,  <13.954226, 21.469086, 9.881751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.833552, 21.675472, 9.860718>,  <13.632429, 22.019449, 9.825663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833552, 21.675472, 9.860718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270434, -0.252792, -0.928957,
		0.821005, 0.443388, -0.359664,
		0.502808, -0.859944, 0.087637,
		13.984395, 21.417490, 9.887009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.052052, 21.888325, 9.209718>,  <13.632429, 22.019449, 9.825663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.052052, 21.888325, 9.209718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.951226, 21.540176, 9.378912>,  <13.890731, 21.331287, 9.480429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.951226, 21.540176, 9.378912>,  <14.052052, 21.888325, 9.209718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.951226, 21.540176, 9.378912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261275, -0.359657, -0.895758,
		0.931772, -0.336303, -0.136750,
		-0.252063, -0.870372, 0.422986,
		13.875607, 21.279064, 9.505808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249859, 22.344288, 8.592793>,  <14.052052, 21.888325, 9.209718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.249859, 22.344288, 8.592793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.150464, 21.958363, 8.558407>,  <14.090827, 21.726807, 8.537776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.150464, 21.958363, 8.558407>,  <14.249859, 22.344288, 8.592793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.150464, 21.958363, 8.558407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406809, -0.023408, -0.913213,
		0.879068, -0.261892, 0.398311,
		-0.248487, -0.964813, -0.085963,
		14.075918, 21.668919, 8.532618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876481, 22.045328, 8.292501>,  <14.249859, 22.344288, 8.592793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876481, 22.045328, 8.292501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549491, 21.831055, 8.207860>,  <14.353297, 21.702490, 8.157075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.549491, 21.831055, 8.207860>,  <14.876481, 22.045328, 8.292501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.549491, 21.831055, 8.207860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168855, 0.128350, -0.977248,
		0.550657, -0.834606, -0.014470,
		-0.817475, -0.535685, -0.211604,
		14.304249, 21.670349, 8.144379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.952529, 21.430109, 7.833722>,  <14.876481, 22.045328, 8.292501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.952529, 21.430109, 7.833722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606503, 21.626888, 7.794418>,  <14.398889, 21.744955, 7.770836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606503, 21.626888, 7.794418>,  <14.952529, 21.430109, 7.833722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.606503, 21.626888, 7.794418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248087, 0.249276, -0.936117,
		-0.436026, -0.834176, -0.337685,
		-0.865063, 0.491946, -0.098258,
		14.346985, 21.774471, 7.764941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582749, 21.146570, 7.264975>,  <14.952529, 21.430109, 7.833722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582749, 21.146570, 7.264975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.488500, 21.532223, 7.313854>,  <14.431950, 21.763615, 7.343182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.488500, 21.532223, 7.313854>,  <14.582749, 21.146570, 7.264975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.488500, 21.532223, 7.313854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129054, 0.155666, -0.979343,
		-0.963237, -0.214987, -0.161104,
		-0.235625, 0.964131, 0.122198,
		14.417812, 21.821463, 7.350513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.968346, 21.308775, 6.803721>,  <14.582749, 21.146570, 7.264975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.968346, 21.308775, 6.803721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243140, 21.587635, 6.885731>,  <14.408017, 21.754951, 6.934937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243140, 21.587635, 6.885731>,  <13.968346, 21.308775, 6.803721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243140, 21.587635, 6.885731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221348, 0.067977, -0.972823,
		-0.692139, 0.713697, -0.107613,
		0.686986, 0.697148, 0.205025,
		14.449236, 21.796780, 6.947238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625416, 20.664104, 6.619516>,  <13.968346, 21.308775, 6.803721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625416, 20.664104, 6.619516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690043, 20.318359, 6.429033>,  <13.728820, 20.110912, 6.314744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690043, 20.318359, 6.429033>,  <13.625416, 20.664104, 6.619516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690043, 20.318359, 6.429033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752135, -0.204549, 0.626461,
		-0.638897, -0.459388, 0.617068,
		0.161568, -0.864362, -0.476208,
		13.738514, 20.059052, 6.286171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575793, 20.139904, 7.089655>,  <13.625416, 20.664104, 6.619516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575793, 20.139904, 7.089655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819211, 20.011753, 6.799267>,  <13.965261, 19.934862, 6.625034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.819211, 20.011753, 6.799267>,  <13.575793, 20.139904, 7.089655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.819211, 20.011753, 6.799267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670305, -0.282099, 0.686376,
		-0.424695, -0.904311, 0.043081,
		0.608544, -0.320377, -0.725970,
		14.001774, 19.915640, 6.581476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819592, 19.367092, 7.112801>,  <13.575793, 20.139904, 7.089655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819592, 19.367092, 7.112801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116950, 19.573460, 6.942535>,  <14.295364, 19.697281, 6.840376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116950, 19.573460, 6.942535>,  <13.819592, 19.367092, 7.112801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116950, 19.573460, 6.942535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663838, -0.491328, 0.563840,
		0.081755, -0.701728, -0.707739,
		0.743395, 0.515921, -0.425665,
		14.339969, 19.728235, 6.814836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315341, 18.940544, 6.798651>,  <13.819592, 19.367092, 7.112801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315341, 18.940544, 6.798651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477077, 19.280350, 6.934202>,  <14.574118, 19.484232, 7.015533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.477077, 19.280350, 6.934202>,  <14.315341, 18.940544, 6.798651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.477077, 19.280350, 6.934202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609906, -0.526548, 0.592252,
		0.681561, -0.032786, -0.731026,
		0.404338, 0.849513, 0.338878,
		14.598378, 19.535204, 7.035866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971691, 18.750853, 6.847706>,  <14.315341, 18.940544, 6.798651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971691, 18.750853, 6.847706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906560, 19.056450, 7.097444>,  <14.867481, 19.239807, 7.247286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.906560, 19.056450, 7.097444>,  <14.971691, 18.750853, 6.847706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.906560, 19.056450, 7.097444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614127, -0.416788, 0.670176,
		0.772227, 0.492550, -0.401323,
		-0.162829, 0.763991, 0.624343,
		14.857711, 19.285646, 7.284747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625916, 19.024549, 7.088104>,  <14.971691, 18.750853, 6.847706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625916, 19.024549, 7.088104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322152, 19.044735, 7.347564>,  <15.139894, 19.056847, 7.503240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322152, 19.044735, 7.347564>,  <15.625916, 19.024549, 7.088104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322152, 19.044735, 7.347564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513231, -0.566272, 0.644926,
		0.399859, 0.822672, 0.404133,
		-0.759412, 0.050466, 0.648650,
		15.094329, 19.059875, 7.542159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845657, 19.314795, 7.779431>,  <15.625916, 19.024549, 7.088104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845657, 19.314795, 7.779431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538602, 19.058525, 7.785986>,  <15.354368, 18.904764, 7.789919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538602, 19.058525, 7.785986>,  <15.845657, 19.314795, 7.779431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538602, 19.058525, 7.785986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477102, -0.554205, 0.682078,
		-0.427908, 0.531408, 0.731095,
		-0.767639, -0.640673, 0.016387,
		15.308311, 18.866323, 7.790902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.623075, 19.151346, 8.477205>,  <15.845657, 19.314795, 7.779431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.623075, 19.151346, 8.477205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581035, 18.851997, 8.215246>,  <15.555811, 18.672388, 8.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.581035, 18.851997, 8.215246>,  <15.623075, 19.151346, 8.477205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.581035, 18.851997, 8.215246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663275, -0.543424, 0.514545,
		-0.740959, -0.380298, 0.553491,
		-0.105100, -0.748374, -0.654898,
		15.549504, 18.627485, 8.018777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373751, 18.432312, 8.859089>,  <15.623075, 19.151346, 8.477205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373751, 18.432312, 8.859089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613788, 18.459270, 8.540254>,  <15.757810, 18.475445, 8.348952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.613788, 18.459270, 8.540254>,  <15.373751, 18.432312, 8.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.613788, 18.459270, 8.540254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729259, -0.455593, 0.510506,
		-0.328742, -0.887634, -0.322546,
		0.600091, 0.067394, -0.797087,
		15.793815, 18.479488, 8.301127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.795038, 17.817739, 8.697226>,  <15.373751, 18.432312, 8.859089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.795038, 17.817739, 8.697226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028252, 18.092941, 8.524380>,  <16.168180, 18.258062, 8.420672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.028252, 18.092941, 8.524380>,  <15.795038, 17.817739, 8.697226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.028252, 18.092941, 8.524380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805218, -0.418532, 0.420067,
		0.108154, -0.592858, -0.798011,
		0.583033, 0.688005, -0.432114,
		16.203161, 18.299343, 8.394746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.807364, 17.272690, 8.260582>,  <15.795038, 17.817739, 8.697226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.807364, 17.272690, 8.260582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.758445, 17.547188, 7.973776>,  <15.729094, 17.711887, 7.801692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.758445, 17.547188, 7.973776>,  <15.807364, 17.272690, 8.260582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758445, 17.547188, 7.973776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545992, -0.649815, -0.528803,
		-0.828816, 0.326814, 0.454155,
		-0.122296, 0.686245, -0.717015,
		15.721756, 17.753061, 7.758671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.828959, 16.849655, 8.752252>,  <15.807364, 17.272690, 8.260582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.828959, 16.849655, 8.752252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666633, 17.116230, 9.002428>,  <15.569237, 17.276175, 9.152534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.666633, 17.116230, 9.002428>,  <15.828959, 16.849655, 8.752252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.666633, 17.116230, 9.002428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115627, -0.641388, 0.758454,
		0.906611, 0.380111, 0.183227,
		-0.405816, 0.666437, 0.625440,
		15.544888, 17.316160, 9.190061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380875, 17.280043, 8.946729>,  <15.828959, 16.849655, 8.752252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380875, 17.280043, 8.946729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111919, 17.093224, 9.176428>,  <15.950546, 16.981133, 9.314247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.111919, 17.093224, 9.176428>,  <16.380875, 17.280043, 8.946729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.111919, 17.093224, 9.176428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715563, -0.608630, 0.342839,
		0.189382, 0.641432, 0.743438,
		-0.672387, -0.467049, 0.574248,
		15.910203, 16.953110, 9.348702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.550062, 17.287123, 9.664768>,  <16.380875, 17.280043, 8.946729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.550062, 17.287123, 9.664768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329521, 16.966068, 9.573737>,  <16.197197, 16.773436, 9.519118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329521, 16.966068, 9.573737>,  <16.550062, 17.287123, 9.664768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329521, 16.966068, 9.573737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679801, -0.590353, 0.435148,
		-0.483615, 0.085212, 0.871123,
		-0.551350, -0.802634, -0.227576,
		16.164116, 16.725279, 9.505465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876947, 16.767405, 10.082523>,  <16.550062, 17.287123, 9.664768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876947, 16.767405, 10.082523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637520, 16.571457, 9.828990>,  <16.493864, 16.453888, 9.676870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637520, 16.571457, 9.828990>,  <16.876947, 16.767405, 10.082523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637520, 16.571457, 9.828990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457213, -0.858612, 0.231822,
		-0.657779, -0.151035, 0.737913,
		-0.598567, -0.489871, -0.633832,
		16.457949, 16.424496, 9.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523434, 16.163044, 10.405817>,  <16.876947, 16.767405, 10.082523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523434, 16.163044, 10.405817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655258, 16.099895, 10.033481>,  <16.734352, 16.062006, 9.810079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.655258, 16.099895, 10.033481>,  <16.523434, 16.163044, 10.405817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.655258, 16.099895, 10.033481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466825, -0.829722, 0.305999,
		-0.820647, -0.535386, -0.199748,
		0.329563, -0.157869, -0.930841,
		16.754128, 16.052534, 9.754229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.181652, 16.093637, 10.376161>,  <16.523434, 16.163044, 10.405817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.181652, 16.093637, 10.376161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.339249, 15.745926, 10.495579>,  <17.433805, 15.537299, 10.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.339249, 15.745926, 10.495579>,  <17.181652, 16.093637, 10.376161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339249, 15.745926, 10.495579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555094, 0.483935, 0.676519,
		-0.732559, -0.100820, 0.673196,
		0.393990, -0.869277, 0.298546,
		17.457445, 15.485143, 10.585142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864285, 15.869779, 11.087806>,  <17.181652, 16.093637, 10.376161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864285, 15.869779, 11.087806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236191, 15.747307, 11.006038>,  <17.459335, 15.673824, 10.956977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.236191, 15.747307, 11.006038>,  <16.864285, 15.869779, 11.087806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.236191, 15.747307, 11.006038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358680, 0.628253, 0.690396,
		-0.082957, -0.715229, 0.693949,
		0.929767, -0.306179, -0.204420,
		17.515121, 15.655453, 10.944712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105913, 16.043261, 11.666931>,  <16.864285, 15.869779, 11.087806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105913, 16.043261, 11.666931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.451054, 15.857521, 11.587059>,  <17.658138, 15.746078, 11.539136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.451054, 15.857521, 11.587059>,  <17.105913, 16.043261, 11.666931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451054, 15.857521, 11.587059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463940, 0.884353, -0.051766,
		0.200625, -0.047974, 0.978493,
		0.862850, -0.464347, -0.199680,
		17.709909, 15.718217, 11.527155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608524, 16.404232, 12.051973>,  <17.105913, 16.043261, 11.666931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608524, 16.404232, 12.051973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765690, 16.225586, 11.730438>,  <17.859989, 16.118399, 11.537517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.765690, 16.225586, 11.730438>,  <17.608524, 16.404232, 12.051973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.765690, 16.225586, 11.730438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448186, 0.856295, -0.256687,
		0.802963, -0.259414, 0.536615,
		0.392912, -0.446613, -0.803839,
		17.883564, 16.091602, 11.489286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366583, 16.564478, 11.876081>,  <17.608524, 16.404232, 12.051973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366583, 16.564478, 11.876081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184727, 16.463211, 11.534507>,  <18.075613, 16.402451, 11.329562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.184727, 16.463211, 11.534507>,  <18.366583, 16.564478, 11.876081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.184727, 16.463211, 11.534507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329613, 0.842861, -0.425372,
		0.827440, -0.474860, -0.299751,
		-0.454640, -0.253168, -0.853937,
		18.048334, 16.387260, 11.278326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.465414, 15.952657, 11.586717>,  <18.366583, 16.564478, 11.876081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.465414, 15.952657, 11.586717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852463, 15.867226, 11.532916>,  <19.084692, 15.815968, 11.500636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.852463, 15.867226, 11.532916>,  <18.465414, 15.952657, 11.586717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.852463, 15.867226, 11.532916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113795, -0.106502, 0.987779,
		-0.225292, -0.971103, -0.078750,
		0.967623, -0.213577, -0.134501,
		19.142750, 15.803153, 11.492566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.747053, 15.354266, 12.037004>,  <18.465414, 15.952657, 11.586717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.747053, 15.354266, 12.037004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.019672, 15.636463, 11.959261>,  <19.183243, 15.805781, 11.912616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.019672, 15.636463, 11.959261>,  <18.747053, 15.354266, 12.037004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.019672, 15.636463, 11.959261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128280, 0.146298, 0.980888,
		0.720443, -0.693453, 0.009208,
		0.681547, 0.705493, -0.194355,
		19.224136, 15.848111, 11.900954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445425, 15.236444, 12.251160>,  <18.747053, 15.354266, 12.037004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445425, 15.236444, 12.251160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395302, 15.633274, 12.254931>,  <19.365229, 15.871371, 12.257195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.395302, 15.633274, 12.254931>,  <19.445425, 15.236444, 12.251160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395302, 15.633274, 12.254931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268117, 0.024711, 0.963069,
		0.955202, 0.123207, -0.269088,
		-0.125306, 0.992073, 0.009430,
		19.357710, 15.930896, 12.257760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.879190, 15.458585, 12.676505>,  <19.445425, 15.236444, 12.251160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.879190, 15.458585, 12.676505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627232, 15.767963, 12.648194>,  <19.476057, 15.953590, 12.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.627232, 15.767963, 12.648194>,  <19.879190, 15.458585, 12.676505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.627232, 15.767963, 12.648194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111766, 0.180446, 0.977214,
		0.768595, 0.607633, -0.200107,
		-0.629897, 0.773447, -0.070778,
		19.438263, 15.999998, 12.626961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.582531, 15.347018, 12.975043>,  <19.879190, 15.458585, 12.676505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.582531, 15.347018, 12.975043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741497, 15.098862, 13.245502>,  <20.836876, 14.949967, 13.407778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.741497, 15.098862, 13.245502>,  <20.582531, 15.347018, 12.975043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.741497, 15.098862, 13.245502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373966, 0.563375, 0.736721,
		-0.837980, -0.545641, -0.008112,
		0.397415, -0.620391, 0.676148,
		20.860722, 14.912745, 13.448347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.115740, 15.054853, 13.281137>,  <20.582531, 15.347018, 12.975043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.115740, 15.054853, 13.281137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404793, 15.033863, 13.556831>,  <20.578224, 15.021269, 13.722248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404793, 15.033863, 13.556831>,  <20.115740, 15.054853, 13.281137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.404793, 15.033863, 13.556831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584617, 0.485620, 0.649919,
		-0.368811, -0.872593, 0.320248,
		0.722635, -0.052475, 0.689236,
		20.621584, 15.018121, 13.763602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.884554, 14.768284, 13.907909>,  <20.115740, 15.054853, 13.281137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.884554, 14.768284, 13.907909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.172688, 15.035767, 13.981609>,  <20.345568, 15.196257, 14.025829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.172688, 15.035767, 13.981609>,  <19.884554, 14.768284, 13.907909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.172688, 15.035767, 13.981609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614834, 0.492604, 0.615890,
		0.321087, -0.556931, 0.765984,
		0.720335, 0.668707, 0.184251,
		20.388788, 15.236379, 14.036884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.035515, 14.960174, 14.654948>,  <19.884554, 14.768284, 13.907909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.035515, 14.960174, 14.654948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.070995, 15.271339, 14.406116>,  <20.092283, 15.458039, 14.256818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.070995, 15.271339, 14.406116>,  <20.035515, 14.960174, 14.654948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070995, 15.271339, 14.406116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694127, 0.496192, 0.521518,
		0.714367, 0.385542, 0.583984,
		0.088701, 0.777914, -0.622078,
		20.097607, 15.504714, 14.219493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.560863, 16.864319, 17.170982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.875137, 17.111698, 17.176926>,  <19.063702, 17.260126, 17.180490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.875137, 17.111698, 17.176926>,  <18.560863, 16.864319, 17.170982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.875137, 17.111698, 17.176926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022912, 0.053091, -0.998327,
		-0.618201, 0.784031, 0.055882,
		0.785686, 0.618447, 0.014857,
		19.110844, 17.297232, 17.181383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.403477, 17.442617, 16.739428>,  <18.560863, 16.864319, 17.170982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.403477, 17.442617, 16.739428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.802807, 17.435268, 16.761358>,  <19.042406, 17.430859, 16.774517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.802807, 17.435268, 16.761358>,  <18.403477, 17.442617, 16.739428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802807, 17.435268, 16.761358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057393, 0.199094, -0.978298,
		0.007059, 0.979808, 0.199816,
		0.998327, -0.018374, 0.054829,
		19.102304, 17.429756, 16.777807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694572, 18.086998, 16.435253>,  <18.403477, 17.442617, 16.739428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694572, 18.086998, 16.435253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.030376, 17.869881, 16.445036>,  <19.231859, 17.739611, 16.450907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.030376, 17.869881, 16.445036>,  <18.694572, 18.086998, 16.435253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030376, 17.869881, 16.445036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211449, 0.284908, -0.934942,
		0.500512, 0.790065, 0.353956,
		0.839510, -0.542794, 0.024458,
		19.282228, 17.707043, 16.452374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265198, 18.543039, 16.293730>,  <18.694572, 18.086998, 16.435253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265198, 18.543039, 16.293730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.385906, 18.178867, 16.180557>,  <19.458332, 17.960363, 16.112654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.385906, 18.178867, 16.180557>,  <19.265198, 18.543039, 16.293730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385906, 18.178867, 16.180557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214855, 0.354077, -0.910201,
		0.928855, 0.213883, 0.302461,
		0.301771, -0.910431, -0.282932,
		19.476437, 17.905739, 16.095678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771070, 18.710072, 15.877123>,  <19.265198, 18.543039, 16.293730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.771070, 18.710072, 15.877123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.693722, 18.328941, 15.783543>,  <19.647312, 18.100264, 15.727394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.693722, 18.328941, 15.783543>,  <19.771070, 18.710072, 15.877123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693722, 18.328941, 15.783543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218037, 0.190756, -0.957116,
		0.956592, -0.236087, 0.170865,
		-0.193370, -0.952825, -0.233951,
		19.635712, 18.043095, 15.713357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.332119, 18.474701, 15.477133>,  <19.771070, 18.710072, 15.877123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.332119, 18.474701, 15.477133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.026234, 18.232861, 15.387987>,  <19.842703, 18.087755, 15.334499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.026234, 18.232861, 15.387987>,  <20.332119, 18.474701, 15.477133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026234, 18.232861, 15.387987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095853, 0.235282, -0.967189,
		0.637201, -0.760985, -0.121970,
		-0.764714, -0.604603, -0.222865,
		19.796820, 18.051479, 15.321128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549305, 18.015282, 14.853703>,  <20.332119, 18.474701, 15.477133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549305, 18.015282, 14.853703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.154575, 17.951130, 14.845171>,  <19.917738, 17.912640, 14.840053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.154575, 17.951130, 14.845171>,  <20.549305, 18.015282, 14.853703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154575, 17.951130, 14.845171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011503, 0.061941, -0.998014,
		0.161382, -0.985110, -0.059280,
		-0.986825, -0.160379, -0.021328,
		19.858528, 17.903015, 14.838773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362511, 17.464773, 14.422981>,  <20.549305, 18.015282, 14.853703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362511, 17.464773, 14.422981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032299, 17.690010, 14.438095>,  <19.834171, 17.825153, 14.447164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.032299, 17.690010, 14.438095>,  <20.362511, 17.464773, 14.422981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.032299, 17.690010, 14.438095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020870, 0.097367, -0.995030,
		-0.563974, -0.820637, -0.092131,
		-0.825529, 0.563093, 0.037786,
		19.784641, 17.858938, 14.449430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.965868, 17.348269, 13.801342>,  <20.362511, 17.464773, 14.422981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.965868, 17.348269, 13.801342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.806679, 17.685242, 13.946627>,  <19.711166, 17.887426, 14.033797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.806679, 17.685242, 13.946627>,  <19.965868, 17.348269, 13.801342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.806679, 17.685242, 13.946627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312211, 0.247911, -0.917096,
		-0.862637, -0.478377, 0.164356,
		-0.397971, 0.842434, 0.363211,
		19.687286, 17.937973, 14.055590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.202793, 17.372498, 13.746346>,  <19.965868, 17.348269, 13.801342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.202793, 17.372498, 13.746346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.322826, 17.753052, 13.774101>,  <19.394846, 17.981384, 13.790754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.322826, 17.753052, 13.774101>,  <19.202793, 17.372498, 13.746346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322826, 17.753052, 13.774101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513932, 0.222526, -0.828466,
		-0.803632, 0.212947, 0.555724,
		0.300082, 0.951386, 0.069389,
		19.412851, 18.038467, 13.794918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.517359, 17.852642, 13.671859>,  <19.202793, 17.372498, 13.746346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.517359, 17.852642, 13.671859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.857307, 18.037811, 13.571129>,  <19.061277, 18.148912, 13.510691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.857307, 18.037811, 13.571129>,  <18.517359, 17.852642, 13.671859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.857307, 18.037811, 13.571129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413584, 0.289760, -0.863127,
		-0.326594, 0.837699, 0.437717,
		0.849873, 0.462925, -0.251825,
		19.112270, 18.176689, 13.495582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326452, 18.565613, 13.574994>,  <18.517359, 17.852642, 13.671859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326452, 18.565613, 13.574994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.664406, 18.483360, 13.377453>,  <18.867178, 18.434010, 13.258928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.664406, 18.483360, 13.377453>,  <18.326452, 18.565613, 13.574994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.664406, 18.483360, 13.377453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392249, 0.389598, -0.833279,
		0.363752, 0.897736, 0.248506,
		0.844882, -0.205630, -0.493853,
		18.917870, 18.421671, 13.229297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411957, 19.206966, 13.196021>,  <18.326452, 18.565613, 13.574994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411957, 19.206966, 13.196021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.603016, 18.909439, 13.009010>,  <18.717651, 18.730923, 12.896804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.603016, 18.909439, 13.009010>,  <18.411957, 19.206966, 13.196021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603016, 18.909439, 13.009010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445204, 0.253842, -0.858695,
		0.757393, 0.618301, -0.209904,
		0.477650, -0.743820, -0.467528,
		18.746311, 18.686293, 12.868752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382122, 19.367043, 12.592492>,  <18.411957, 19.206966, 13.196021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382122, 19.367043, 12.592492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.534443, 19.013268, 12.484597>,  <18.625835, 18.801003, 12.419861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.534443, 19.013268, 12.484597>,  <18.382122, 19.367043, 12.592492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.534443, 19.013268, 12.484597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516284, 0.038634, -0.855545,
		0.767099, 0.465054, -0.441910,
		0.380803, -0.884439, -0.269736,
		18.648684, 18.747936, 12.403676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.715157, 19.499886, 11.948559>,  <18.382122, 19.367043, 12.592492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.715157, 19.499886, 11.948559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.630692, 19.109707, 11.973600>,  <18.580013, 18.875601, 11.988626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.630692, 19.109707, 11.973600>,  <18.715157, 19.499886, 11.948559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.630692, 19.109707, 11.973600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398033, 0.027314, -0.916964,
		0.892738, -0.218545, -0.394027,
		-0.211161, -0.975445, 0.062604,
		18.567343, 18.817074, 11.992381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959715, 19.270594, 11.375104>,  <18.715157, 19.499886, 11.948559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959715, 19.270594, 11.375104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.657631, 19.043537, 11.506217>,  <18.476379, 18.907303, 11.584885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.657631, 19.043537, 11.506217>,  <18.959715, 19.270594, 11.375104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657631, 19.043537, 11.506217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429096, 0.050106, -0.901868,
		0.495513, -0.821751, -0.281412,
		-0.755211, -0.567640, 0.327782,
		18.431067, 18.873245, 11.604551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853291, 18.929302, 10.778728>,  <18.959715, 19.270594, 11.375104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853291, 18.929302, 10.778728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530304, 18.790916, 10.969855>,  <18.336512, 18.707884, 11.084532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.530304, 18.790916, 10.969855>,  <18.853291, 18.929302, 10.778728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530304, 18.790916, 10.969855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510491, 0.003874, -0.859874,
		0.295636, -0.938239, -0.179740,
		-0.807464, -0.345966, 0.477817,
		18.288065, 18.687126, 11.113200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575815, 18.334789, 10.365532>,  <18.853291, 18.929302, 10.778728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575815, 18.334789, 10.365532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.301453, 18.501217, 10.604335>,  <18.136835, 18.601074, 10.747617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.301453, 18.501217, 10.604335>,  <18.575815, 18.334789, 10.365532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301453, 18.501217, 10.604335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604538, 0.130856, -0.785755,
		-0.405053, -0.899867, 0.161776,
		-0.685905, 0.416072, 0.597008,
		18.095680, 18.626038, 10.783437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.929970, 17.923508, 10.364565>,  <18.575815, 18.334789, 10.365532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.929970, 17.923508, 10.364565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.852116, 18.304169, 10.459619>,  <17.805403, 18.532566, 10.516651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.852116, 18.304169, 10.459619>,  <17.929970, 17.923508, 10.364565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852116, 18.304169, 10.459619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520499, 0.105138, -0.847365,
		-0.831383, -0.288616, 0.474872,
		-0.194636, 0.951655, 0.237634,
		17.793724, 18.589664, 10.530909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.369503, 17.928741, 9.875591>,  <17.929970, 17.923508, 10.364565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.369503, 17.928741, 9.875591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.393982, 18.287777, 10.050217>,  <17.408669, 18.503199, 10.154992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.393982, 18.287777, 10.050217>,  <17.369503, 17.928741, 9.875591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393982, 18.287777, 10.050217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605042, 0.381222, -0.698995,
		-0.793839, -0.221363, 0.566408,
		0.061196, 0.897590, 0.436563,
		17.412340, 18.557055, 10.181186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.695532, 18.241888, 10.049598>,  <17.369503, 17.928741, 9.875591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.695532, 18.241888, 10.049598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.966679, 18.533295, 10.010081>,  <17.129366, 18.708139, 9.986372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.966679, 18.533295, 10.010081>,  <16.695532, 18.241888, 10.049598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.966679, 18.533295, 10.010081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632124, 0.508944, -0.584291,
		-0.375387, 0.458519, 0.805509,
		0.677867, 0.728517, -0.098790,
		17.170038, 18.751850, 9.980444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262871, 18.889082, 10.044486>,  <16.695532, 18.241888, 10.049598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262871, 18.889082, 10.044486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.619724, 18.960690, 9.878571>,  <16.833836, 19.003654, 9.779021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.619724, 18.960690, 9.878571>,  <16.262871, 18.889082, 10.044486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.619724, 18.960690, 9.878571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451717, 0.339103, -0.825204,
		-0.007070, 0.923559, 0.383391,
		0.892133, 0.179018, -0.414790,
		16.887363, 19.014395, 9.754133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654563, 19.337406, 9.874414>,  <16.262871, 18.889082, 10.044486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654563, 19.337406, 9.874414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262250, 19.261295, 9.891663>,  <15.026862, 19.215630, 9.902012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.262250, 19.261295, 9.891663>,  <15.654563, 19.337406, 9.874414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.262250, 19.261295, 9.891663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043407, 0.002665, 0.999054,
		-0.190213, 0.981727, 0.005646,
		-0.980783, -0.190278, 0.043120,
		14.968015, 19.204212, 9.904598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.242005, 19.916014, 10.331119>,  <15.654563, 19.337406, 9.874414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.242005, 19.916014, 10.331119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.014684, 19.587078, 10.319879>,  <14.878291, 19.389717, 10.313134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.014684, 19.587078, 10.319879>,  <15.242005, 19.916014, 10.331119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.014684, 19.587078, 10.319879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100323, 0.035355, 0.994327,
		-0.816680, 0.567898, -0.102592,
		-0.568303, -0.822339, -0.028100,
		14.844193, 19.340376, 10.311449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621026, 20.100620, 10.676733>,  <15.242005, 19.916014, 10.331119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621026, 20.100620, 10.676733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.669202, 19.703552, 10.680781>,  <14.698108, 19.465311, 10.683210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.669202, 19.703552, 10.680781>,  <14.621026, 20.100620, 10.676733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.669202, 19.703552, 10.680781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166648, -0.010167, 0.985964,
		-0.978633, -0.120436, -0.166650,
		0.120440, -0.992669, 0.010120,
		14.705334, 19.405752, 10.683818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024096, 19.763170, 11.140831>,  <14.621026, 20.100620, 10.676733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024096, 19.763170, 11.140831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.316476, 19.491314, 11.116171>,  <14.491904, 19.328201, 11.101375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.316476, 19.491314, 11.116171>,  <14.024096, 19.763170, 11.140831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.316476, 19.491314, 11.116171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189694, -0.289128, 0.938308,
		-0.655536, -0.674162, -0.340262,
		0.730951, -0.679640, -0.061649,
		14.535761, 19.287422, 11.097676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842695, 19.336834, 11.701969>,  <14.024096, 19.763170, 11.140831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842695, 19.336834, 11.701969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222331, 19.255318, 11.605885>,  <14.450112, 19.206408, 11.548234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.222331, 19.255318, 11.605885>,  <13.842695, 19.336834, 11.701969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.222331, 19.255318, 11.605885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219527, -0.118996, 0.968322,
		-0.225919, -0.971756, -0.068200,
		0.949088, -0.203790, -0.240210,
		14.507057, 19.194181, 11.533821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947098, 18.759924, 12.121123>,  <13.842695, 19.336834, 11.701969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947098, 18.759924, 12.121123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.300441, 18.912598, 12.012316>,  <14.512446, 19.004202, 11.947031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.300441, 18.912598, 12.012316>,  <13.947098, 18.759924, 12.121123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.300441, 18.912598, 12.012316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318747, -0.063717, 0.945696,
		0.343625, -0.922094, -0.177946,
		0.883358, 0.381685, -0.272020,
		14.565449, 19.027103, 11.930710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364042, 18.217518, 12.255601>,  <13.947098, 18.759924, 12.121123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364042, 18.217518, 12.255601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.592237, 18.546021, 12.251946>,  <14.729154, 18.743122, 12.249754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.592237, 18.546021, 12.251946>,  <14.364042, 18.217518, 12.255601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592237, 18.546021, 12.251946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324428, -0.215116, 0.921125,
		0.754515, -0.528453, -0.389160,
		0.570486, 0.821257, -0.009136,
		14.763382, 18.792397, 12.249206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911057, 17.996828, 12.682657>,  <14.364042, 18.217518, 12.255601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911057, 17.996828, 12.682657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.950940, 18.394333, 12.662656>,  <14.974870, 18.632835, 12.650655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.950940, 18.394333, 12.662656>,  <14.911057, 17.996828, 12.682657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.950940, 18.394333, 12.662656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338925, 0.013329, 0.940719,
		0.935515, -0.110743, -0.335481,
		0.099707, 0.993760, -0.050003,
		14.980852, 18.692461, 12.647655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449904, 18.110111, 13.133195>,  <14.911057, 17.996828, 12.682657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449904, 18.110111, 13.133195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.241740, 18.451332, 13.117853>,  <15.116841, 18.656065, 13.108648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.241740, 18.451332, 13.117853>,  <15.449904, 18.110111, 13.133195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.241740, 18.451332, 13.117853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168959, 0.146895, 0.974615,
		0.837034, 0.500720, -0.220577,
		-0.520411, 0.853054, -0.038355,
		15.085617, 18.707249, 13.106347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.822564, 18.563692, 13.540409>,  <15.449904, 18.110111, 13.133195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.822564, 18.563692, 13.540409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.465894, 18.743847, 13.522230>,  <15.251892, 18.851940, 13.511323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.465894, 18.743847, 13.522230>,  <15.822564, 18.563692, 13.540409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.465894, 18.743847, 13.522230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110599, 0.314111, 0.942922,
		0.438957, 0.835754, -0.329898,
		-0.891675, 0.450388, -0.045448,
		15.198391, 18.878963, 13.508595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906193, 19.180058, 13.785506>,  <15.822564, 18.563692, 13.540409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906193, 19.180058, 13.785506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.514371, 19.111877, 13.828249>,  <15.279278, 19.070969, 13.853894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.514371, 19.111877, 13.828249>,  <15.906193, 19.180058, 13.785506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514371, 19.111877, 13.828249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069278, 0.212869, 0.974622,
		-0.188870, 0.962098, -0.196709,
		-0.979555, -0.170449, 0.106857,
		15.220505, 19.060743, 13.860306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769714, 19.438768, 14.365067>,  <15.906193, 19.180058, 13.785506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769714, 19.438768, 14.365067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.426322, 19.240559, 14.312204>,  <15.220286, 19.121632, 14.280487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.426322, 19.240559, 14.312204>,  <15.769714, 19.438768, 14.365067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426322, 19.240559, 14.312204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116956, -0.061733, 0.991216,
		-0.499333, 0.866396, -0.004958,
		-0.858480, -0.495527, -0.132156,
		15.168778, 19.091900, 14.272557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228309, 19.839661, 14.755716>,  <15.769714, 19.438768, 14.365067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228309, 19.839661, 14.755716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.138473, 19.451019, 14.725924>,  <15.084571, 19.217834, 14.708048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.138473, 19.451019, 14.725924>,  <15.228309, 19.839661, 14.755716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138473, 19.451019, 14.725924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061799, -0.062078, 0.996156,
		-0.972492, 0.228330, -0.046102,
		-0.224591, -0.971603, -0.074481,
		15.071095, 19.159538, 14.703579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720529, 19.694111, 15.303506>,  <15.228309, 19.839661, 14.755716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720529, 19.694111, 15.303506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.811294, 19.328865, 15.168018>,  <14.865752, 19.109716, 15.086725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.811294, 19.328865, 15.168018>,  <14.720529, 19.694111, 15.303506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.811294, 19.328865, 15.168018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102652, -0.323431, 0.940667,
		-0.968490, -0.248219, 0.020342,
		0.226912, -0.913116, -0.338720,
		14.879367, 19.054930, 15.066402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.401956, 19.243584, 15.784781>,  <14.720529, 19.694111, 15.303506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.401956, 19.243584, 15.784781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.686858, 19.029404, 15.603239>,  <14.857800, 18.900896, 15.494314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.686858, 19.029404, 15.603239>,  <14.401956, 19.243584, 15.784781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686858, 19.029404, 15.603239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161456, -0.504274, 0.848316,
		-0.683098, -0.677496, -0.272720,
		0.712257, -0.535450, -0.453854,
		14.900536, 18.868769, 15.467083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.248753, 18.507660, 15.811740>,  <14.401956, 19.243584, 15.784781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.248753, 18.507660, 15.811740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.639886, 18.583378, 15.775938>,  <14.874566, 18.628809, 15.754457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.639886, 18.583378, 15.775938>,  <14.248753, 18.507660, 15.811740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639886, 18.583378, 15.775938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170078, -0.468699, 0.866830,
		0.122137, -0.862837, -0.490504,
		0.977832, 0.189296, -0.089504,
		14.933235, 18.640167, 15.749086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.550488, 17.891035, 16.088854>,  <14.248753, 18.507660, 15.811740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.550488, 17.891035, 16.088854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.852824, 18.152214, 16.069389>,  <15.034225, 18.308922, 16.057711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.852824, 18.152214, 16.069389>,  <14.550488, 17.891035, 16.088854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.852824, 18.152214, 16.069389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423498, -0.430848, 0.796881,
		0.499354, -0.622922, -0.602173,
		0.755840, 0.652945, -0.048661,
		15.079576, 18.348097, 16.054790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250570, 17.549894, 16.128300>,  <14.550488, 17.891035, 16.088854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250570, 17.549894, 16.128300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.326921, 17.918644, 16.263186>,  <15.372730, 18.139894, 16.344118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.326921, 17.918644, 16.263186>,  <15.250570, 17.549894, 16.128300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.326921, 17.918644, 16.263186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502545, -0.386871, 0.773162,
		0.843217, 0.021888, -0.537127,
		0.190876, 0.921874, 0.337216,
		15.384183, 18.195206, 16.364349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<15.928918, 17.483820, 16.341160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821803, 17.832817, 16.504644>,  <15.757534, 18.042215, 16.602736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.821803, 17.832817, 16.504644>,  <15.928918, 17.483820, 16.341160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821803, 17.832817, 16.504644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580606, -0.192395, 0.791126,
		0.768886, 0.449154, -0.455054,
		-0.267788, 0.872493, 0.408712,
		15.741467, 18.094564, 16.627258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587515, 17.747601, 16.549479>,  <15.928918, 17.483820, 16.341160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587515, 17.747601, 16.549479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.313831, 17.930298, 16.776896>,  <16.149620, 18.039915, 16.913345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.313831, 17.930298, 16.776896>,  <16.587515, 17.747601, 16.549479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.313831, 17.930298, 16.776896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612094, -0.064177, 0.788177,
		0.396480, 0.887282, -0.235658,
		-0.684211, 0.456741, 0.568544,
		16.108568, 18.067320, 16.947458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.943419, 18.333445, 16.922777>,  <16.587515, 17.747601, 16.549479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.943419, 18.333445, 16.922777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.629311, 18.263966, 17.160492>,  <16.440845, 18.222279, 17.303122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.629311, 18.263966, 17.160492>,  <16.943419, 18.333445, 16.922777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.629311, 18.263966, 17.160492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547441, 0.253605, 0.797491,
		-0.289235, 0.951585, -0.104060,
		-0.785271, -0.173696, 0.594289,
		16.393730, 18.211857, 17.338779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.116413, 18.762299, 17.481010>,  <16.943419, 18.333445, 16.922777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.116413, 18.762299, 17.481010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.812634, 18.544888, 17.624018>,  <16.630365, 18.414442, 17.709822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.812634, 18.544888, 17.624018>,  <17.116413, 18.762299, 17.481010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812634, 18.544888, 17.624018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466803, -0.072492, 0.881385,
		-0.453138, 0.836256, 0.308774,
		-0.759447, -0.543526, 0.357519,
		16.584799, 18.381830, 17.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.871691, 18.990728, 18.157421>,  <17.116413, 18.762299, 17.481010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.871691, 18.990728, 18.157421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.754505, 18.608402, 18.147732>,  <16.684195, 18.379005, 18.141918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.754505, 18.608402, 18.147732>,  <16.871691, 18.990728, 18.157421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.754505, 18.608402, 18.147732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379995, -0.139645, 0.914386,
		-0.877369, 0.258675, 0.404117,
		-0.292962, -0.955817, -0.024225,
		16.666616, 18.321657, 18.140465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.389273, 18.801235, 18.637621>,  <16.871691, 18.990728, 18.157421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.389273, 18.801235, 18.637621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540348, 18.434044, 18.589184>,  <16.630993, 18.213728, 18.560122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.540348, 18.434044, 18.589184>,  <16.389273, 18.801235, 18.637621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540348, 18.434044, 18.589184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246957, -0.026171, 0.968673,
		-0.892391, -0.395763, 0.216817,
		0.377690, -0.917980, -0.121091,
		16.653656, 18.158649, 18.552856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.267548, 18.496363, 19.249676>,  <16.389273, 18.801235, 18.637621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.267548, 18.496363, 19.249676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.513004, 18.223061, 19.091381>,  <16.660278, 18.059078, 18.996405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.513004, 18.223061, 19.091381>,  <16.267548, 18.496363, 19.249676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513004, 18.223061, 19.091381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184639, -0.363124, 0.913263,
		-0.767694, -0.633483, -0.096672,
		0.613640, -0.683257, -0.395734,
		16.697096, 18.018084, 18.972660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074364, 17.920946, 19.492344>,  <16.267548, 18.496363, 19.249676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074364, 17.920946, 19.492344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448917, 17.800732, 19.419830>,  <16.673649, 17.728603, 19.376322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.448917, 17.800732, 19.419830>,  <16.074364, 17.920946, 19.492344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.448917, 17.800732, 19.419830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066653, -0.354837, 0.932549,
		-0.344583, -0.885310, -0.312233,
		0.936387, -0.300529, -0.181279,
		16.729832, 17.710571, 19.365446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.046799, 17.193836, 19.720255>,  <16.074364, 17.920946, 19.492344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.046799, 17.193836, 19.720255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.426960, 17.315884, 19.696140>,  <16.655058, 17.389112, 19.681671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.426960, 17.315884, 19.696140>,  <16.046799, 17.193836, 19.720255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426960, 17.315884, 19.696140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170697, -0.349692, 0.921183,
		0.259988, -0.885787, -0.384432,
		0.950405, 0.305118, -0.060285,
		16.712082, 17.407419, 19.678055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.382334, 16.725658, 19.902922>,  <16.046799, 17.193836, 19.720255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.382334, 16.725658, 19.902922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.658566, 17.009731, 19.957676>,  <16.824305, 17.180176, 19.990528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.658566, 17.009731, 19.957676>,  <16.382334, 16.725658, 19.902922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.658566, 17.009731, 19.957676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195399, -0.365423, 0.910102,
		0.696360, -0.601751, -0.391123,
		0.690580, 0.710184, 0.136885,
		16.865740, 17.222786, 19.998741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.940443, 16.376011, 20.225159>,  <16.382334, 16.725658, 19.902922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.940443, 16.376011, 20.225159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.031658, 16.758617, 20.297905>,  <17.086388, 16.988182, 20.341553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.031658, 16.758617, 20.297905>,  <16.940443, 16.376011, 20.225159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031658, 16.758617, 20.297905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295769, -0.246012, 0.923038,
		0.927641, -0.156700, -0.339008,
		0.228040, 0.956516, 0.181864,
		17.100071, 17.045572, 20.352465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.685085, 16.399775, 20.544170>,  <16.940443, 16.376011, 20.225159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.685085, 16.399775, 20.544170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.494404, 16.740948, 20.629265>,  <17.379995, 16.945652, 20.680323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.494404, 16.740948, 20.629265>,  <17.685085, 16.399775, 20.544170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.494404, 16.740948, 20.629265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288874, -0.076570, 0.954300,
		0.830245, 0.516372, -0.209889,
		-0.476703, 0.852934, 0.212738,
		17.351393, 16.996828, 20.693087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127359, 16.686161, 21.033327>,  <17.685085, 16.399775, 20.544170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127359, 16.686161, 21.033327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.778484, 16.877087, 21.076141>,  <17.569159, 16.991642, 21.101830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.778484, 16.877087, 21.076141>,  <18.127359, 16.686161, 21.033327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778484, 16.877087, 21.076141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076593, -0.082857, 0.993614,
		0.483134, 0.874818, 0.035708,
		-0.872190, 0.477314, 0.107036,
		17.516827, 17.020281, 21.108252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275312, 17.179724, 21.456656>,  <18.127359, 16.686161, 21.033327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275312, 17.179724, 21.456656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.880421, 17.132030, 21.498907>,  <17.643486, 17.103415, 21.524258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.880421, 17.132030, 21.498907>,  <18.275312, 17.179724, 21.456656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.880421, 17.132030, 21.498907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129750, -0.217220, 0.967461,
		-0.092409, 0.968813, 0.229917,
		-0.987231, -0.119234, 0.105631,
		17.584251, 17.096260, 21.530596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.960665, 17.615013, 22.034002>,  <18.275312, 17.179724, 21.456656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.960665, 17.615013, 22.034002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.685600, 17.324821, 22.022654>,  <17.520561, 17.150707, 22.015844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.685600, 17.324821, 22.022654>,  <17.960665, 17.615013, 22.034002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685600, 17.324821, 22.022654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083110, -0.117476, 0.989592,
		-0.721260, 0.678145, 0.141079,
		-0.687660, -0.725478, -0.028370,
		17.479301, 17.107178, 22.014143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432867, 17.708441, 22.579948>,  <17.960665, 17.615013, 22.034002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432867, 17.708441, 22.579948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389065, 17.324757, 22.475697>,  <17.362783, 17.094547, 22.413145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.389065, 17.324757, 22.475697>,  <17.432867, 17.708441, 22.579948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.389065, 17.324757, 22.475697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116490, -0.248015, 0.961727,
		-0.987136, 0.135677, -0.084579,
		-0.109507, -0.959208, -0.260629,
		17.356213, 17.036995, 22.397509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791138, 17.505707, 22.893528>,  <17.432867, 17.708441, 22.579948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791138, 17.505707, 22.893528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.027641, 17.188580, 22.834398>,  <17.169544, 16.998304, 22.798920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.027641, 17.188580, 22.834398>,  <16.791138, 17.505707, 22.893528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027641, 17.188580, 22.834398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065072, -0.135801, 0.988597,
		-0.803851, -0.594137, -0.028703,
		0.591260, -0.792817, -0.147826,
		17.205019, 16.950735, 22.790051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762423, 17.209156, 23.512650>,  <16.791138, 17.505707, 22.893528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762423, 17.209156, 23.512650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.068306, 17.019829, 23.337748>,  <17.251835, 16.906233, 23.232807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.068306, 17.019829, 23.337748>,  <16.762423, 17.209156, 23.512650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.068306, 17.019829, 23.337748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413332, -0.160276, 0.896364,
		-0.494348, -0.866187, 0.073074,
		0.764707, -0.473320, -0.437255,
		17.297718, 16.877832, 23.206572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862873, 16.621361, 23.971062>,  <16.762423, 17.209156, 23.512650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.862873, 16.621361, 23.971062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.204762, 16.654991, 23.766169>,  <17.409895, 16.675169, 23.643232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.204762, 16.654991, 23.766169>,  <16.862873, 16.621361, 23.971062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.204762, 16.654991, 23.766169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510764, -0.312216, 0.801026,
		-0.092579, -0.946284, -0.309801,
		0.854722, 0.084076, -0.512232,
		17.461178, 16.680214, 23.612499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.250259, 16.133177, 24.251301>,  <16.862873, 16.621361, 23.971062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.250259, 16.133177, 24.251301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.526623, 16.358200, 24.069674>,  <17.692440, 16.493214, 23.960697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.526623, 16.358200, 24.069674>,  <17.250259, 16.133177, 24.251301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.526623, 16.358200, 24.069674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631961, -0.164932, 0.757247,
		0.351104, -0.810140, -0.469467,
		0.690906, 0.562557, -0.454069,
		17.733894, 16.526968, 23.933453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939156, 15.873400, 24.386084>,  <17.250259, 16.133177, 24.251301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939156, 15.873400, 24.386084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.048996, 16.246288, 24.291800>,  <18.114901, 16.470020, 24.235229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.048996, 16.246288, 24.291800>,  <17.939156, 15.873400, 24.386084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048996, 16.246288, 24.291800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715454, -0.034307, 0.697817,
		0.642432, -0.360261, -0.676382,
		0.274601, 0.932220, -0.235710,
		18.131376, 16.525955, 24.221087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.700176, 15.903509, 24.306501>,  <17.939156, 15.873400, 24.386084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.700176, 15.903509, 24.306501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.569195, 16.271694, 24.391848>,  <18.490606, 16.492605, 24.443056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.569195, 16.271694, 24.391848>,  <18.700176, 15.903509, 24.306501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.569195, 16.271694, 24.391848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635961, 0.047694, 0.770246,
		0.698805, 0.387912, -0.600996,
		-0.327452, 0.920462, 0.213368,
		18.470959, 16.547832, 24.455858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.316841, 16.433846, 24.316158>,  <18.700176, 15.903509, 24.306501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.316841, 16.433846, 24.316158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.996292, 16.472866, 24.552221>,  <18.803963, 16.496279, 24.693859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.996292, 16.472866, 24.552221>,  <19.316841, 16.433846, 24.316158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.996292, 16.472866, 24.552221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596673, 0.060736, 0.800183,
		0.042215, 0.993376, -0.106878,
		-0.801374, 0.097551, 0.590156,
		18.755880, 16.502131, 24.729269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.732965, 16.855131, 24.714613>,  <19.316841, 16.433846, 24.316158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.732965, 16.855131, 24.714613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.440609, 16.646938, 24.891201>,  <19.265194, 16.522022, 24.997154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.440609, 16.646938, 24.891201>,  <19.732965, 16.855131, 24.714613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.440609, 16.646938, 24.891201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574502, -0.120003, 0.809658,
		-0.368435, 0.845398, 0.386727,
		-0.730892, -0.520482, 0.441470,
		19.221342, 16.490793, 25.023642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.198290, 16.624897, 25.243847>,  <19.732965, 16.855131, 24.714613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.198290, 16.624897, 25.243847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.567581, 16.554203, 25.107368>,  <20.789156, 16.511786, 25.025482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.567581, 16.554203, 25.107368>,  <20.198290, 16.624897, 25.243847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.567581, 16.554203, 25.107368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203659, 0.527907, -0.824523,
		0.325842, 0.830710, 0.451385,
		0.923228, -0.176736, -0.341196,
		20.844549, 16.501183, 25.005011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.422064, 17.184088, 24.950787>,  <20.198290, 16.624897, 25.243847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.422064, 17.184088, 24.950787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.666252, 16.929699, 24.761951>,  <20.812765, 16.777065, 24.648651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.666252, 16.929699, 24.761951>,  <20.422064, 17.184088, 24.950787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.666252, 16.929699, 24.761951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063410, 0.554885, -0.829507,
		0.789496, 0.536326, 0.298414,
		0.610471, -0.635970, -0.472088,
		20.849394, 16.738909, 24.620325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.006500, 17.645113, 24.615608>,  <20.422064, 17.184088, 24.950787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.006500, 17.645113, 24.615608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.974064, 17.298161, 24.419210>,  <20.954601, 17.089989, 24.301373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.974064, 17.298161, 24.419210>,  <21.006500, 17.645113, 24.615608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974064, 17.298161, 24.419210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030235, 0.494529, -0.868635,
		0.996248, -0.055593, -0.066327,
		-0.081090, -0.867381, -0.490992,
		20.949738, 17.037947, 24.271914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.305904, 17.808521, 23.949656>,  <21.006500, 17.645113, 24.615608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.305904, 17.808521, 23.949656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.108063, 17.470516, 23.868345>,  <20.989357, 17.267714, 23.819559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.108063, 17.470516, 23.868345>,  <21.305904, 17.808521, 23.949656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108063, 17.470516, 23.868345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129019, 0.302684, -0.944318,
		0.859488, -0.440838, -0.258732,
		-0.494605, -0.845011, -0.203277,
		20.959681, 17.217012, 23.807362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477474, 17.659363, 23.148771>,  <21.305904, 17.808521, 23.949656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477474, 17.659363, 23.148771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.177105, 17.427113, 23.274622>,  <20.996883, 17.287762, 23.350132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.177105, 17.427113, 23.274622>,  <21.477474, 17.659363, 23.148771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.177105, 17.427113, 23.274622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354067, -0.048187, -0.933978,
		0.557453, -0.812743, -0.169396,
		-0.750921, -0.580626, 0.314627,
		20.951828, 17.252924, 23.369011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.361702, 17.145197, 22.615557>,  <21.477474, 17.659363, 23.148771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.361702, 17.145197, 22.615557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.009480, 17.119579, 22.803396>,  <20.798147, 17.104208, 22.916100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.009480, 17.119579, 22.803396>,  <21.361702, 17.145197, 22.615557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.009480, 17.119579, 22.803396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473888, 0.134321, -0.870280,
		-0.007343, -0.988866, -0.148625,
		-0.880554, -0.064042, 0.469598,
		20.745314, 17.100367, 22.944275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.995674, 16.718288, 22.196682>,  <21.361702, 17.145197, 22.615557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.995674, 16.718288, 22.196682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.744778, 16.938892, 22.416647>,  <20.594240, 17.071255, 22.548626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.744778, 16.938892, 22.416647>,  <20.995674, 16.718288, 22.196682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744778, 16.938892, 22.416647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621488, 0.071105, -0.780190,
		-0.469386, -0.831131, 0.298158,
		-0.627239, 0.551512, 0.549914,
		20.556606, 17.104345, 22.581621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265530, 16.442423, 22.043922>,  <20.995674, 16.718288, 22.196682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265530, 16.442423, 22.043922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.253349, 16.816917, 22.183941>,  <20.246040, 17.041615, 22.267952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.253349, 16.816917, 22.183941>,  <20.265530, 16.442423, 22.043922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.253349, 16.816917, 22.183941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601065, 0.262661, -0.754805,
		-0.798620, -0.233385, 0.554741,
		-0.030451, 0.936237, 0.350046,
		20.244213, 17.097788, 22.288954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592562, 16.568621, 22.056513>,  <20.265530, 16.442423, 22.043922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592562, 16.568621, 22.056513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.763901, 16.930016, 22.062580>,  <19.866705, 17.146852, 22.066219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.763901, 16.930016, 22.062580>,  <19.592562, 16.568621, 22.056513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.763901, 16.930016, 22.062580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629555, 0.310433, -0.712244,
		-0.648211, 0.295541, 0.701768,
		0.428349, 0.903486, 0.015167,
		19.892406, 17.201061, 22.067129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.067036, 17.028759, 21.948093>,  <19.592562, 16.568621, 22.056513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.067036, 17.028759, 21.948093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.402084, 17.223564, 21.849133>,  <19.603113, 17.340446, 21.789757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.402084, 17.223564, 21.849133>,  <19.067036, 17.028759, 21.948093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.402084, 17.223564, 21.849133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441450, 0.336759, -0.831694,
		-0.321731, 0.805861, 0.497069,
		0.837622, 0.487013, -0.247402,
		19.653372, 17.369667, 21.774912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876442, 17.658562, 21.583429>,  <19.067036, 17.028759, 21.948093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876442, 17.658562, 21.583429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.255753, 17.648987, 21.456810>,  <19.483339, 17.643242, 21.380838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.255753, 17.648987, 21.456810>,  <18.876442, 17.658562, 21.583429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255753, 17.648987, 21.456810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307306, 0.180846, -0.934269,
		0.079611, 0.983220, 0.164136,
		0.948275, -0.023938, -0.316546,
		19.540236, 17.641806, 21.361847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.986164, 18.233761, 21.158972>,  <18.876442, 17.658562, 21.583429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.986164, 18.233761, 21.158972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.316597, 18.036476, 21.049919>,  <19.514856, 17.918106, 20.984488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.316597, 18.036476, 21.049919>,  <18.986164, 18.233761, 21.158972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316597, 18.036476, 21.049919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171566, 0.240709, -0.955314,
		0.536796, 0.835944, 0.114228,
		0.826084, -0.493211, -0.272631,
		19.564423, 17.888514, 20.968130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.381536, 18.616611, 20.733332>,  <18.986164, 18.233761, 21.158972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.381536, 18.616611, 20.733332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.521511, 18.257515, 20.626297>,  <19.605495, 18.042057, 20.562077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.521511, 18.257515, 20.626297>,  <19.381536, 18.616611, 20.733332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.521511, 18.257515, 20.626297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212952, 0.201934, -0.955968,
		0.912248, 0.391511, -0.120512,
		0.349937, -0.897742, -0.267587,
		19.626492, 17.988192, 20.546021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.639553, 18.661497, 20.058912>,  <19.381536, 18.616611, 20.733332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.639553, 18.661497, 20.058912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.628498, 18.266460, 20.120749>,  <19.621866, 18.029438, 20.157850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.628498, 18.266460, 20.120749>,  <19.639553, 18.661497, 20.058912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628498, 18.266460, 20.120749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130617, -0.149756, -0.980057,
		0.991048, -0.047277, -0.124858,
		-0.027636, -0.987592, 0.154591,
		19.620207, 17.970182, 20.167126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097828, 18.435015, 19.631994>,  <19.639553, 18.661497, 20.058912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097828, 18.435015, 19.631994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.869991, 18.110111, 19.682274>,  <19.733290, 17.915169, 19.712440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.869991, 18.110111, 19.682274>,  <20.097828, 18.435015, 19.631994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869991, 18.110111, 19.682274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050021, -0.118390, -0.991706,
		0.820405, -0.571155, 0.026803,
		-0.569591, -0.812260, 0.125697,
		19.699114, 17.866434, 19.719984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489422, 17.846762, 19.206186>,  <20.097828, 18.435015, 19.631994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489422, 17.846762, 19.206186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.104282, 17.754215, 19.261892>,  <19.873199, 17.698689, 19.295317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.104282, 17.754215, 19.261892>,  <20.489422, 17.846762, 19.206186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104282, 17.754215, 19.261892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077218, -0.258295, -0.962975,
		0.258770, -0.937952, 0.230834,
		-0.962848, -0.231365, 0.139266,
		19.815428, 17.684805, 19.303673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.439318, 17.163971, 18.965572>,  <20.489422, 17.846762, 19.206186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.439318, 17.163971, 18.965572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.076572, 17.329010, 18.931261>,  <19.858925, 17.428034, 18.910673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.076572, 17.329010, 18.931261>,  <20.439318, 17.163971, 18.965572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076572, 17.329010, 18.931261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059892, -0.327667, -0.942893,
		-0.417147, -0.849937, 0.321861,
		-0.906863, 0.412602, -0.085781,
		19.804512, 17.452789, 18.905527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017385, 16.792637, 18.451090>,  <20.439318, 17.163971, 18.965572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017385, 16.792637, 18.451090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.792343, 17.123203, 18.460159>,  <19.657318, 17.321543, 18.465601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.792343, 17.123203, 18.460159>,  <20.017385, 16.792637, 18.451090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.792343, 17.123203, 18.460159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362497, -0.221945, -0.905172,
		-0.743015, -0.517474, 0.424440,
		-0.562606, 0.826414, 0.022674,
		19.623562, 17.371128, 18.466961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384508, 16.547405, 18.239780>,  <20.017385, 16.792637, 18.451090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384508, 16.547405, 18.239780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.358906, 16.938610, 18.160389>,  <19.343544, 17.173332, 18.112753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.358906, 16.938610, 18.160389>,  <19.384508, 16.547405, 18.239780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358906, 16.938610, 18.160389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315478, -0.208517, -0.925740,
		-0.946772, 0.003364, 0.321888,
		-0.064005, 0.978013, -0.198480,
		19.339705, 17.232014, 18.100845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.941147, 16.633818, 17.793417>,  <19.384508, 16.547405, 18.239780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.941147, 16.633818, 17.793417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.099209, 16.995651, 17.729446>,  <19.194046, 17.212751, 17.691065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.099209, 16.995651, 17.729446>,  <18.941147, 16.633818, 17.793417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.099209, 16.995651, 17.729446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332111, -0.021638, -0.942992,
		-0.856478, 0.425741, 0.291873,
		0.395155, 0.904586, -0.159926,
		19.217754, 17.267027, 17.681469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<14.090116, 18.410662, 14.228461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.433116, 18.616211, 14.238489>,  <14.638916, 18.739540, 14.244506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.433116, 18.616211, 14.238489>,  <14.090116, 18.410662, 14.228461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433116, 18.616211, 14.238489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020337, 0.014834, -0.999683,
		-0.514081, 0.857738, 0.002269,
		0.857500, 0.513872, 0.025070,
		14.690366, 18.770372, 14.246010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.888413, 18.948254, 13.934515>,  <14.090116, 18.410662, 14.228461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.888413, 18.948254, 13.934515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.286035, 18.969807, 13.896664>,  <14.524608, 18.982738, 13.873953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.286035, 18.969807, 13.896664>,  <13.888413, 18.948254, 13.934515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.286035, 18.969807, 13.896664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093548, -0.022228, -0.995367,
		-0.055738, 0.998300, -0.017055,
		0.994053, 0.053885, -0.094628,
		14.584250, 18.985971, 13.868276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.039030, 19.513882, 13.487941>,  <13.888413, 18.948254, 13.934515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.039030, 19.513882, 13.487941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.385201, 19.314491, 13.467731>,  <14.592905, 19.194857, 13.455606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.385201, 19.314491, 13.467731>,  <14.039030, 19.513882, 13.487941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.385201, 19.314491, 13.467731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017270, 0.071099, -0.997320,
		0.500733, 0.863983, 0.052923,
		0.865430, -0.498477, -0.050523,
		14.644831, 19.164948, 13.452575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.364695, 19.776686, 12.975046>,  <14.039030, 19.513882, 13.487941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.364695, 19.776686, 12.975046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.604793, 19.458607, 13.009384>,  <14.748852, 19.267759, 13.029987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.604793, 19.458607, 13.009384>,  <14.364695, 19.776686, 12.975046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.604793, 19.458607, 13.009384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217402, 0.058923, -0.974302,
		0.769703, 0.603483, 0.208245,
		0.600245, -0.795196, 0.085845,
		14.784866, 19.220047, 13.035138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980540, 19.995497, 12.618721>,  <14.364695, 19.776686, 12.975046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980540, 19.995497, 12.618721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.971101, 19.596470, 12.644952>,  <14.965437, 19.357054, 12.660690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.971101, 19.596470, 12.644952>,  <14.980540, 19.995497, 12.618721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.971101, 19.596470, 12.644952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191957, -0.068897, -0.978982,
		0.981120, -0.010515, 0.193116,
		-0.023599, -0.997568, 0.065577,
		14.964021, 19.297199, 12.664625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.616411, 19.798393, 12.353374>,  <14.980540, 19.995497, 12.618721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.616411, 19.798393, 12.353374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.344052, 19.508430, 12.311641>,  <15.180636, 19.334452, 12.286601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.344052, 19.508430, 12.311641>,  <15.616411, 19.798393, 12.353374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344052, 19.508430, 12.311641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104278, 0.045048, -0.993527,
		0.724917, -0.687370, 0.044919,
		-0.680898, -0.724909, -0.104334,
		15.139783, 19.290958, 12.280340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.736400, 19.544710, 11.706697>,  <15.616411, 19.798393, 12.353374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.736400, 19.544710, 11.706697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.387626, 19.356720, 11.761617>,  <15.178361, 19.243925, 11.794569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.387626, 19.356720, 11.761617>,  <15.736400, 19.544710, 11.706697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.387626, 19.356720, 11.761617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110108, -0.085022, -0.990277,
		0.477081, -0.878574, 0.022385,
		-0.871935, -0.469977, 0.137300,
		15.126045, 19.215727, 11.802807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743933, 18.954693, 11.358567>,  <15.736400, 19.544710, 11.706697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.743933, 18.954693, 11.358567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.357425, 19.050220, 11.397120>,  <15.125520, 19.107536, 11.420253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.357425, 19.050220, 11.397120>,  <15.743933, 18.954693, 11.358567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357425, 19.050220, 11.397120> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153231, -0.232342, -0.960488,
		-0.206975, -0.942862, 0.261098,
		-0.966272, 0.238806, 0.096387,
		15.067544, 19.121866, 11.426035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391408, 18.387503, 11.043041>,  <15.743933, 18.954693, 11.358567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391408, 18.387503, 11.043041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.121825, 18.682678, 11.057040>,  <14.960075, 18.859783, 11.065439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.121825, 18.682678, 11.057040>,  <15.391408, 18.387503, 11.043041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.121825, 18.682678, 11.057040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331161, -0.259422, -0.907212,
		-0.660390, -0.623011, 0.419216,
		-0.673957, 0.737941, 0.034997,
		14.919638, 18.904060, 11.067539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678318, 18.121729, 10.693474>,  <15.391408, 18.387503, 11.043041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678318, 18.121729, 10.693474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.659041, 18.520821, 10.674664>,  <14.647475, 18.760277, 10.663379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.659041, 18.520821, 10.674664>,  <14.678318, 18.121729, 10.693474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.659041, 18.520821, 10.674664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129236, -0.052910, -0.990201,
		-0.990442, -0.041641, 0.131493,
		-0.048191, 0.997731, -0.047023,
		14.644584, 18.820139, 10.660558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.017836, 18.317160, 10.215375>,  <14.678318, 18.121729, 10.693474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.017836, 18.317160, 10.215375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.283311, 18.612659, 10.262301>,  <14.442596, 18.789959, 10.290457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.283311, 18.612659, 10.262301>,  <14.017836, 18.317160, 10.215375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.283311, 18.612659, 10.262301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074049, 0.220955, -0.972469,
		-0.744334, 0.636730, 0.201349,
		0.663689, 0.738751, 0.117316,
		14.482418, 18.834286, 10.297496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665629, 18.872467, 10.029716>,  <14.017836, 18.317160, 10.215375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665629, 18.872467, 10.029716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.055587, 18.935898, 9.967188>,  <14.289561, 18.973955, 9.929670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.055587, 18.935898, 9.967188>,  <13.665629, 18.872467, 10.029716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.055587, 18.935898, 9.967188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202689, 0.341294, -0.917843,
		-0.092195, 0.926484, 0.364867,
		0.974894, 0.158575, -0.156322,
		14.348055, 18.983471, 9.920291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864202, 19.634499, 10.039595>,  <13.665629, 18.872467, 10.029716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864202, 19.634499, 10.039595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.043523, 19.381134, 9.787305>,  <14.151115, 19.229115, 9.635931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.043523, 19.381134, 9.787305>,  <13.864202, 19.634499, 10.039595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.043523, 19.381134, 9.787305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308372, 0.552694, -0.774233,
		0.839006, 0.541589, 0.052448,
		0.448303, -0.633412, -0.630724,
		14.178014, 19.191111, 9.598087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297837, 19.861103, 9.497697>,  <13.864202, 19.634499, 10.039595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.297837, 19.861103, 9.497697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.112985, 19.529430, 9.371911>,  <14.002073, 19.330427, 9.296439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.112985, 19.529430, 9.371911>,  <14.297837, 19.861103, 9.497697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.112985, 19.529430, 9.371911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177288, 0.433827, -0.883382,
		0.868909, -0.352488, -0.347490,
		-0.462132, -0.829184, -0.314464,
		13.974345, 19.280676, 9.277572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814267, 20.383148, 9.688570>,  <14.297837, 19.861103, 9.497697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814267, 20.383148, 9.688570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.529178, 20.649399, 9.777082>,  <14.358124, 20.809149, 9.830190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.529178, 20.649399, 9.777082>,  <14.814267, 20.383148, 9.688570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.529178, 20.649399, 9.777082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605545, 0.424642, 0.673048,
		0.354035, 0.613693, -0.705720,
		-0.712723, 0.665628, 0.221280,
		14.315361, 20.849087, 9.843467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.224314, 20.807688, 9.887070>,  <14.814267, 20.383148, 9.688570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.224314, 20.807688, 9.887070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.880754, 20.961159, 10.022766>,  <14.674618, 21.053242, 10.104184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.880754, 20.961159, 10.022766>,  <15.224314, 20.807688, 9.887070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.880754, 20.961159, 10.022766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489315, 0.419208, 0.764746,
		0.151202, 0.822835, -0.547796,
		-0.858900, 0.383676, 0.339240,
		14.623083, 21.076262, 10.124538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.428917, 21.341625, 10.182054>,  <15.224314, 20.807688, 9.887070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.428917, 21.341625, 10.182054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.053988, 21.340946, 10.321439>,  <14.829032, 21.340538, 10.405070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.053988, 21.340946, 10.321439>,  <15.428917, 21.341625, 10.182054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.053988, 21.340946, 10.321439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311720, 0.442887, 0.840644,
		-0.155758, 0.896576, -0.414598,
		-0.937321, -0.001699, 0.348464,
		14.772792, 21.340437, 10.425978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385471, 21.838982, 10.641680>,  <15.428917, 21.341625, 10.182054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385471, 21.838982, 10.641680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.043891, 21.657463, 10.743529>,  <14.838943, 21.548552, 10.804639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.043891, 21.657463, 10.743529>,  <15.385471, 21.838982, 10.641680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.043891, 21.657463, 10.743529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061012, 0.398635, 0.915078,
		-0.516763, 0.796968, -0.312727,
		-0.853952, -0.453798, 0.254625,
		14.787705, 21.521324, 10.819917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768197, 22.397917, 10.808815>,  <15.385471, 21.838982, 10.641680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768197, 22.397917, 10.808815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.726180, 22.041874, 10.986207>,  <14.700970, 21.828249, 11.092643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.726180, 22.041874, 10.986207>,  <14.768197, 22.397917, 10.808815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.726180, 22.041874, 10.986207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088284, 0.435841, 0.895683,
		-0.990541, 0.133237, 0.032801,
		-0.105042, -0.890107, 0.443481,
		14.694668, 21.774841, 11.119251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432645, 22.455013, 11.390841>,  <14.768197, 22.397917, 10.808815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432645, 22.455013, 11.390841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.591573, 22.095371, 11.464325>,  <14.686930, 21.879587, 11.508415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.591573, 22.095371, 11.464325>,  <14.432645, 22.455013, 11.390841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591573, 22.095371, 11.464325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096855, 0.240158, 0.965890,
		-0.912555, -0.365974, 0.182502,
		0.397320, -0.899103, 0.183710,
		14.710769, 21.825640, 11.519438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995876, 22.170937, 11.961261>,  <14.432645, 22.455013, 11.390841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995876, 22.170937, 11.961261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.356601, 21.999386, 11.982433>,  <14.573035, 21.896456, 11.995136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.356601, 21.999386, 11.982433>,  <13.995876, 22.170937, 11.961261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.356601, 21.999386, 11.982433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043749, 0.212471, 0.976188,
		-0.429909, -0.878022, 0.210372,
		0.901812, -0.428876, 0.052931,
		14.627144, 21.870724, 11.998313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040928, 21.698481, 12.539691>,  <13.995876, 22.170937, 11.961261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040928, 21.698481, 12.539691> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.426475, 21.764397, 12.455972>,  <14.657803, 21.803946, 12.405741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.426475, 21.764397, 12.455972>,  <14.040928, 21.698481, 12.539691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.426475, 21.764397, 12.455972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201071, 0.065303, 0.977398,
		0.174733, -0.984165, 0.029809,
		0.963867, 0.164790, -0.209297,
		14.715634, 21.813833, 12.393183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337301, 21.200489, 12.804762>,  <14.040928, 21.698481, 12.539691>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337301, 21.200489, 12.804762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.614001, 21.488525, 12.783039>,  <14.780022, 21.661346, 12.770005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<14.614001, 21.488525, 12.783039>,  <14.337301, 21.200489, 12.804762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614001, 21.488525, 12.783039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235093, -0.153457, 0.959782,
		0.682797, -0.676698, -0.275442,
		0.691751, 0.720091, -0.054307,
		14.821527, 21.704554, 12.766747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.980717, 20.932375, 13.154116>,  <14.337301, 21.200489, 12.804762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.980717, 20.932375, 13.154116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.007327, 21.331310, 13.166069>,  <15.023293, 21.570671, 13.173241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.007327, 21.331310, 13.166069>,  <14.980717, 20.932375, 13.154116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007327, 21.331310, 13.166069> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387991, -0.053450, 0.920112,
		0.919259, -0.049617, -0.390514,
		0.066526, 0.997337, 0.029883,
		15.027285, 21.630512, 13.175034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500923, 21.040813, 13.575071>,  <14.980717, 20.932375, 13.154116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500923, 21.040813, 13.575071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.379041, 21.421177, 13.553417>,  <15.305911, 21.649395, 13.540424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.379041, 21.421177, 13.553417>,  <15.500923, 21.040813, 13.575071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.379041, 21.421177, 13.553417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303714, 0.150878, 0.940741,
		0.902724, 0.270209, -0.334777,
		-0.304707, 0.950906, -0.054135,
		15.287629, 21.706450, 13.537177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008514, 21.401642, 13.975524>,  <15.500923, 21.040813, 13.575071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008514, 21.401642, 13.975524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.702863, 21.659554, 13.967876>,  <15.519471, 21.814301, 13.963288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.702863, 21.659554, 13.967876>,  <16.008514, 21.401642, 13.975524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.702863, 21.659554, 13.967876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180482, 0.242155, 0.953303,
		0.619300, 0.724997, -0.301408,
		-0.764130, 0.644779, -0.019118,
		15.473624, 21.852987, 13.962141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.201389, 22.096008, 14.128003>,  <16.008514, 21.401642, 13.975524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.201389, 22.096008, 14.128003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.818412, 22.094234, 14.243439>,  <15.588626, 22.093170, 14.312700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.818412, 22.094234, 14.243439>,  <16.201389, 22.096008, 14.128003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.818412, 22.094234, 14.243439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281619, 0.204590, 0.937461,
		-0.063202, 0.978838, -0.194634,
		-0.957443, -0.004437, 0.288590,
		15.531179, 22.092903, 14.330015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.175539, 22.610065, 14.640284>,  <16.201389, 22.096008, 14.128003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.175539, 22.610065, 14.640284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.864013, 22.365955, 14.698267>,  <15.677097, 22.219490, 14.733057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.864013, 22.365955, 14.698267>,  <16.175539, 22.610065, 14.640284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.864013, 22.365955, 14.698267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101166, 0.105866, 0.989221,
		-0.619041, 0.785085, -0.020711,
		-0.778815, -0.610273, 0.144959,
		15.630368, 22.182873, 14.741755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.133833, 23.473707, 14.633729>,  <16.175539, 22.610065, 14.640284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.133833, 23.473707, 14.633729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.458309, 23.702240, 14.683605>,  <16.652996, 23.839359, 14.713531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.458309, 23.702240, 14.683605>,  <16.133833, 23.473707, 14.633729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458309, 23.702240, 14.683605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001940, 0.215854, -0.976424,
		-0.584776, 0.791825, 0.176207,
		0.811192, 0.571331, 0.124690,
		16.701668, 23.873640, 14.721012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.944757, 24.179918, 14.272169>,  <16.133833, 23.473707, 14.633729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.944757, 24.179918, 14.272169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.341656, 24.137657, 14.298363>,  <16.579794, 24.112301, 14.314079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.341656, 24.137657, 14.298363>,  <15.944757, 24.179918, 14.272169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.341656, 24.137657, 14.298363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076779, 0.106650, -0.991328,
		0.097753, 0.988668, 0.113935,
		0.992245, -0.105653, 0.065484,
		16.639330, 24.105961, 14.318007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.142677, 24.613960, 13.807876>,  <15.944757, 24.179918, 14.272169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.142677, 24.613960, 13.807876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.478668, 24.411430, 13.885923>,  <16.680264, 24.289911, 13.932752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.478668, 24.411430, 13.885923>,  <16.142677, 24.613960, 13.807876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.478668, 24.411430, 13.885923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320316, 0.172433, -0.931485,
		0.437990, 0.844926, 0.307024,
		0.839978, -0.506326, 0.195119,
		16.730661, 24.259533, 13.944459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710060, 24.951136, 13.536337>,  <16.142677, 24.613960, 13.807876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710060, 24.951136, 13.536337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.815575, 24.565750, 13.554916>,  <16.878883, 24.334518, 13.566064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.815575, 24.565750, 13.554916>,  <16.710060, 24.951136, 13.536337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.815575, 24.565750, 13.554916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166925, -0.001831, -0.985968,
		0.950027, 0.267841, 0.160343,
		0.263789, -0.963461, 0.046448,
		16.894711, 24.276712, 13.568851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.363756, 24.960754, 13.052675>,  <16.710060, 24.951136, 13.536337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.363756, 24.960754, 13.052675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.230282, 24.585739, 13.092033>,  <17.150198, 24.360731, 13.115648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.230282, 24.585739, 13.092033>,  <17.363756, 24.960754, 13.052675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.230282, 24.585739, 13.092033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108304, -0.141813, -0.983951,
		0.936443, -0.317672, 0.148860,
		-0.333684, -0.937536, 0.098395,
		17.130177, 24.304478, 13.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826715, 24.666746, 12.775812>,  <17.363756, 24.960754, 13.052675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826715, 24.666746, 12.775812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.516098, 24.415085, 12.789351>,  <17.329727, 24.264088, 12.797473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.516098, 24.415085, 12.789351>,  <17.826715, 24.666746, 12.775812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.516098, 24.415085, 12.789351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149632, -0.236332, -0.960082,
		0.612039, -0.740481, 0.277663,
		-0.776543, -0.629154, 0.033845,
		17.283134, 24.226339, 12.799504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034161, 24.040697, 12.438434>,  <17.826715, 24.666746, 12.775812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034161, 24.040697, 12.438434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634266, 24.046749, 12.431550>,  <17.394329, 24.050381, 12.427420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.634266, 24.046749, 12.431550>,  <18.034161, 24.040697, 12.438434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.634266, 24.046749, 12.431550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012344, -0.277053, -0.960775,
		-0.019305, -0.960736, 0.276793,
		-0.999737, 0.015131, -0.017208,
		17.334345, 24.051289, 12.426388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.791050, 23.381786, 12.193375>,  <18.034161, 24.040697, 12.438434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.791050, 23.381786, 12.193375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.472240, 23.608871, 12.110956>,  <17.280954, 23.745123, 12.061505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.472240, 23.608871, 12.110956>,  <17.791050, 23.381786, 12.193375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.472240, 23.608871, 12.110956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028331, -0.305646, -0.951724,
		-0.603282, -0.764385, 0.227523,
		-0.797024, 0.567712, -0.206047,
		17.233133, 23.779184, 12.049142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.546268, 23.037766, 11.703896>,  <17.791050, 23.381786, 12.193375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.546268, 23.037766, 11.703896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.348995, 23.384872, 11.679395>,  <17.230631, 23.593136, 11.664694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.348995, 23.384872, 11.679395>,  <17.546268, 23.037766, 11.703896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348995, 23.384872, 11.679395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009597, -0.075834, -0.997074,
		-0.869873, -0.491152, 0.045728,
		-0.493183, 0.867767, -0.061253,
		17.201040, 23.645203, 11.661019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.165781, 22.858847, 11.285707>,  <17.546268, 23.037766, 11.703896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.165781, 22.858847, 11.285707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.158295, 23.257603, 11.255092>,  <17.153803, 23.496857, 11.236723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.158295, 23.257603, 11.255092>,  <17.165781, 22.858847, 11.285707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.158295, 23.257603, 11.255092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173623, -0.072146, -0.982166,
		-0.984634, -0.031672, -0.171733,
		-0.018717, 0.996891, -0.076537,
		17.152679, 23.556669, 11.232131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721594, 23.063297, 10.770041>,  <17.165781, 22.858847, 11.285707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721594, 23.063297, 10.770041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.956802, 23.386295, 10.788718>,  <17.097927, 23.580093, 10.799925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.956802, 23.386295, 10.788718>,  <16.721594, 23.063297, 10.770041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956802, 23.386295, 10.788718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193059, -0.084056, -0.977580,
		-0.785466, 0.583854, -0.205322,
		0.588023, 0.807495, 0.046695,
		17.133209, 23.628544, 10.802727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.436283, 23.581339, 10.368279>,  <16.721594, 23.063297, 10.770041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.436283, 23.581339, 10.368279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.832073, 23.623611, 10.407816>,  <17.069548, 23.648975, 10.431539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.832073, 23.623611, 10.407816>,  <16.436283, 23.581339, 10.368279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.832073, 23.623611, 10.407816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097399, 0.018747, -0.995069,
		-0.107014, 0.994223, 0.008256,
		0.989475, 0.105682, 0.098843,
		17.128916, 23.655315, 10.437469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.682152, 24.013678, 18.773930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981453, 23.819092, 18.593500>,  <17.161034, 23.702341, 18.485243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.981453, 23.819092, 18.593500>,  <16.682152, 24.013678, 18.773930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.981453, 23.819092, 18.593500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234889, 0.441621, -0.865909,
		0.620437, 0.753873, 0.216180,
		0.748255, -0.486464, -0.451074,
		17.205929, 23.673153, 18.458178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070570, 24.518753, 18.377617>,  <16.682152, 24.013678, 18.773930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.070570, 24.518753, 18.377617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212009, 24.179630, 18.219532>,  <17.296873, 23.976156, 18.124681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.212009, 24.179630, 18.219532>,  <17.070570, 24.518753, 18.377617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212009, 24.179630, 18.219532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008622, 0.419535, -0.907698,
		0.935357, 0.324370, 0.141038,
		0.353601, -0.847806, -0.395212,
		17.318090, 23.925289, 18.100969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.532362, 24.730104, 17.887918>,  <17.070570, 24.518753, 18.377617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.532362, 24.730104, 17.887918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487392, 24.355385, 17.755390>,  <17.460411, 24.130554, 17.675873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.487392, 24.355385, 17.755390>,  <17.532362, 24.730104, 17.887918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.487392, 24.355385, 17.755390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038822, 0.337320, -0.940589,
		0.992902, -0.092880, -0.074290,
		-0.112422, -0.936797, -0.331319,
		17.453667, 24.074347, 17.655994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854450, 24.755249, 17.241779>,  <17.532362, 24.730104, 17.887918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854450, 24.755249, 17.241779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643036, 24.417778, 17.204136>,  <17.516188, 24.215296, 17.181549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643036, 24.417778, 17.204136>,  <17.854450, 24.755249, 17.241779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643036, 24.417778, 17.204136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145924, 0.199503, -0.968971,
		0.836274, -0.498404, -0.228558,
		-0.528537, -0.843677, -0.094110,
		17.484474, 24.164675, 17.175903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133812, 24.320099, 16.623150>,  <17.854450, 24.755249, 17.241779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133812, 24.320099, 16.623150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766090, 24.172894, 16.678932>,  <17.545458, 24.084570, 16.712402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.766090, 24.172894, 16.678932>,  <18.133812, 24.320099, 16.623150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766090, 24.172894, 16.678932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111834, -0.095462, -0.989131,
		0.377327, -0.924907, 0.046602,
		-0.919303, -0.368015, 0.139457,
		17.490299, 24.062489, 16.720770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.096832, 23.821741, 16.193222>,  <18.133812, 24.320099, 16.623150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.096832, 23.821741, 16.193222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702904, 23.864292, 16.248089>,  <17.466547, 23.889824, 16.281010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702904, 23.864292, 16.248089>,  <18.096832, 23.821741, 16.193222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702904, 23.864292, 16.248089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157947, -0.221393, -0.962309,
		-0.072002, -0.969365, 0.234834,
		-0.984819, 0.106379, 0.137167,
		17.407457, 23.896206, 16.289240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786352, 23.250767, 15.930554>,  <18.096832, 23.821741, 16.193222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786352, 23.250767, 15.930554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523418, 23.551754, 15.947042>,  <17.365658, 23.732347, 15.956935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.523418, 23.551754, 15.947042>,  <17.786352, 23.250767, 15.930554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.523418, 23.551754, 15.947042> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201132, -0.122464, -0.971879,
		-0.726262, -0.647140, 0.231846,
		-0.657335, 0.752470, 0.041219,
		17.326218, 23.777494, 15.959408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256218, 23.000870, 15.481622>,  <17.786352, 23.250767, 15.930554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256218, 23.000870, 15.481622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160671, 23.387096, 15.522856>,  <17.103342, 23.618832, 15.547596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.160671, 23.387096, 15.522856>,  <17.256218, 23.000870, 15.481622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.160671, 23.387096, 15.522856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233043, 0.046054, -0.971376,
		-0.942673, -0.256054, 0.214017,
		-0.238868, 0.965565, 0.103085,
		17.089010, 23.676765, 15.553782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573463, 23.047245, 15.148759>,  <17.256218, 23.000870, 15.481622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573463, 23.047245, 15.148759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742256, 23.409805, 15.141094>,  <16.843533, 23.627342, 15.136496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742256, 23.409805, 15.141094>,  <16.573463, 23.047245, 15.148759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742256, 23.409805, 15.141094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262202, 0.101782, -0.959630,
		-0.867860, 0.409970, 0.280611,
		0.421981, 0.906402, -0.019163,
		16.868851, 23.681726, 15.135345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879942, 22.817083, 15.321744>,  <16.573463, 23.047245, 15.148759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879942, 22.817083, 15.321744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674523, 22.481445, 15.249981>,  <15.551272, 22.280062, 15.206923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674523, 22.481445, 15.249981>,  <15.879942, 22.817083, 15.321744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.674523, 22.481445, 15.249981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127106, -0.132388, 0.983015,
		-0.848595, 0.527628, -0.038667,
		-0.513547, -0.839096, -0.179408,
		15.520459, 22.229717, 15.196158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197284, 22.871300, 15.652444>,  <15.879942, 22.817083, 15.321744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197284, 22.871300, 15.652444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333859, 22.498951, 15.600454>,  <15.415805, 22.275541, 15.569261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333859, 22.498951, 15.600454>,  <15.197284, 22.871300, 15.652444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333859, 22.498951, 15.600454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037446, -0.151648, 0.987725,
		-0.939158, -0.332380, -0.086636,
		0.341439, -0.930874, -0.129975,
		15.436291, 22.219688, 15.561461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.918593, 22.523714, 16.180557>,  <15.197284, 22.871300, 15.652444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.918593, 22.523714, 16.180557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196937, 22.265041, 16.055605>,  <15.363943, 22.109838, 15.980634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.196937, 22.265041, 16.055605>,  <14.918593, 22.523714, 16.180557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196937, 22.265041, 16.055605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161952, -0.282462, 0.945508,
		-0.699680, -0.708531, -0.091822,
		0.695859, -0.646682, -0.312382,
		15.405694, 22.071037, 15.961890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.790065, 21.955505, 16.616148>,  <14.918593, 22.523714, 16.180557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.790065, 21.955505, 16.616148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153626, 21.890781, 16.462416>,  <15.371763, 21.851948, 16.370176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153626, 21.890781, 16.462416>,  <14.790065, 21.955505, 16.616148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153626, 21.890781, 16.462416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234505, -0.563776, 0.791937,
		-0.344818, -0.809923, -0.474474,
		0.908905, -0.161808, -0.384331,
		15.426298, 21.842239, 16.347116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.847451, 21.282171, 16.525362>,  <14.790065, 21.955505, 16.616148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.847451, 21.282171, 16.525362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231156, 21.394936, 16.532738>,  <15.461379, 21.462595, 16.537163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.231156, 21.394936, 16.532738>,  <14.847451, 21.282171, 16.525362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.231156, 21.394936, 16.532738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186872, -0.682112, 0.706967,
		0.211881, -0.674721, -0.707006,
		0.959263, 0.281913, 0.018440,
		15.518935, 21.479509, 16.538269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.314392, 20.677961, 16.647804>,  <14.847451, 21.282171, 16.525362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.314392, 20.677961, 16.647804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538316, 20.992142, 16.753389>,  <15.672670, 21.180651, 16.816740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538316, 20.992142, 16.753389>,  <15.314392, 20.677961, 16.647804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538316, 20.992142, 16.753389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222273, -0.449226, 0.865327,
		0.798253, -0.425746, -0.426066,
		0.559810, 0.785453, 0.263964,
		15.706259, 21.227777, 16.832579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960917, 20.331253, 16.873619>,  <15.314392, 20.677961, 16.647804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960917, 20.331253, 16.873619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928010, 20.697250, 17.031616>,  <15.908265, 20.916849, 17.126413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928010, 20.697250, 17.031616>,  <15.960917, 20.331253, 16.873619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.928010, 20.697250, 17.031616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084836, -0.388467, 0.917549,
		0.992993, 0.108995, -0.045666,
		-0.082269, 0.914994, 0.394992,
		15.903330, 20.971748, 17.150114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430439, 20.257158, 17.410347>,  <15.960917, 20.331253, 16.873619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430439, 20.257158, 17.410347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224407, 20.576679, 17.534676>,  <16.100788, 20.768391, 17.609274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224407, 20.576679, 17.534676>,  <16.430439, 20.257158, 17.410347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224407, 20.576679, 17.534676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039087, -0.384140, 0.922447,
		0.856251, 0.462985, 0.229085,
		-0.515080, 0.798800, 0.310824,
		16.069883, 20.816319, 17.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799358, 20.504843, 17.993647>,  <16.430439, 20.257158, 17.410347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799358, 20.504843, 17.993647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429703, 20.649971, 18.041525>,  <16.207909, 20.737047, 18.070251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429703, 20.649971, 18.041525>,  <16.799358, 20.504843, 17.993647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.429703, 20.649971, 18.041525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015554, -0.348760, 0.937083,
		0.381737, 0.864134, 0.327947,
		-0.924140, 0.362820, 0.119694,
		16.152460, 20.758818, 18.077433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.833912, 20.947664, 18.477734>,  <16.799358, 20.504843, 17.993647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.833912, 20.947664, 18.477734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450008, 20.835361, 18.480043>,  <16.219666, 20.767979, 18.481430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.450008, 20.835361, 18.480043>,  <16.833912, 20.947664, 18.477734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450008, 20.835361, 18.480043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078449, -0.248312, 0.965498,
		-0.269638, 0.927101, 0.260345,
		-0.959761, -0.280759, 0.005776,
		16.162081, 20.751133, 18.481775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736027, 20.934690, 19.090389>,  <16.833912, 20.947664, 18.477734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736027, 20.934690, 19.090389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375538, 20.784191, 19.004383>,  <16.159245, 20.693892, 18.952780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375538, 20.784191, 19.004383>,  <16.736027, 20.934690, 19.090389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375538, 20.784191, 19.004383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071001, -0.361264, 0.929756,
		-0.427498, 0.853185, 0.298866,
		-0.901224, -0.376249, -0.215017,
		16.105171, 20.671316, 18.939878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.174147, 21.130571, 19.671944>,  <16.736027, 20.934690, 19.090389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.174147, 21.130571, 19.671944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029907, 20.807468, 19.485397>,  <15.943364, 20.613607, 19.373468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.029907, 20.807468, 19.485397>,  <16.174147, 21.130571, 19.671944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.029907, 20.807468, 19.485397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089799, -0.467619, 0.879357,
		-0.928389, 0.358972, 0.096086,
		-0.360597, -0.807757, -0.466368,
		15.921728, 20.565142, 19.345488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.455734, 20.997547, 19.952095>,  <16.174147, 21.130571, 19.671944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.455734, 20.997547, 19.952095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635064, 20.668976, 19.811092>,  <15.742661, 20.471832, 19.726492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635064, 20.668976, 19.811092>,  <15.455734, 20.997547, 19.952095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635064, 20.668976, 19.811092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132479, -0.451063, 0.882605,
		-0.883999, -0.348993, -0.311044,
		0.448324, -0.821429, -0.352506,
		15.769562, 20.422546, 19.705341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.121063, 20.484232, 20.263405>,  <15.455734, 20.997547, 19.952095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.121063, 20.484232, 20.263405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456172, 20.310425, 20.131142>,  <15.657237, 20.206141, 20.051785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.456172, 20.310425, 20.131142>,  <15.121063, 20.484232, 20.263405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.456172, 20.310425, 20.131142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126805, -0.434192, 0.891851,
		-0.531093, -0.789096, -0.308655,
		0.837771, -0.434517, -0.330658,
		15.707503, 20.180071, 20.031944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.665943, 17.996218, 18.633844> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.400635, 18.295204, 18.648630>,  <22.241449, 18.474596, 18.657501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.400635, 18.295204, 18.648630>,  <22.665943, 17.996218, 18.633844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.400635, 18.295204, 18.648630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100990, 0.138333, -0.985223,
		-0.741535, -0.649735, -0.167239,
		-0.663269, 0.747467, 0.036962,
		22.201654, 18.519444, 18.659719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.384995, 17.918842, 17.983849>,  <22.665943, 17.996218, 18.633844>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.384995, 17.918842, 17.983849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.233170, 18.264133, 18.116980>,  <22.142075, 18.471308, 18.196857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.233170, 18.264133, 18.116980>,  <22.384995, 17.918842, 17.983849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.233170, 18.264133, 18.116980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224416, 0.263097, -0.938306,
		-0.897535, -0.430838, 0.093860,
		-0.379563, 0.863226, 0.332826,
		22.119301, 18.523102, 18.216827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.668739, 17.994919, 17.770193>,  <22.384995, 17.918842, 17.983849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.668739, 17.994919, 17.770193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.809353, 18.364727, 17.829103>,  <21.893721, 18.586611, 17.864450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.809353, 18.364727, 17.829103>,  <21.668739, 17.994919, 17.770193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.809353, 18.364727, 17.829103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354410, 0.277032, -0.893111,
		-0.866497, 0.261763, 0.425045,
		0.351534, 0.924518, 0.147276,
		21.914814, 18.642082, 17.873285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.114576, 18.520527, 17.523647>,  <21.668739, 17.994919, 17.770193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.114576, 18.520527, 17.523647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.471241, 18.699619, 17.496889>,  <21.685240, 18.807074, 17.480835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.471241, 18.699619, 17.496889>,  <21.114576, 18.520527, 17.523647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471241, 18.699619, 17.496889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185291, 0.226127, -0.956313,
		-0.413042, 0.865104, 0.284589,
		0.891663, 0.447729, -0.066896,
		21.738741, 18.833939, 17.476820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013256, 19.136217, 17.216778>,  <21.114576, 18.520527, 17.523647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013256, 19.136217, 17.216778> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.405815, 19.088814, 17.156359>,  <21.641350, 19.060371, 17.120108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.405815, 19.088814, 17.156359>,  <21.013256, 19.136217, 17.216778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.405815, 19.088814, 17.156359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114114, 0.272638, -0.955325,
		0.154397, 0.954790, 0.254042,
		0.981397, -0.118510, -0.151049,
		21.700233, 19.053261, 17.111044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.309753, 19.736851, 17.006426>,  <21.013256, 19.136217, 17.216778>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.309753, 19.736851, 17.006426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585758, 19.478374, 16.875998>,  <21.751360, 19.323288, 16.797741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.585758, 19.478374, 16.875998>,  <21.309753, 19.736851, 17.006426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.585758, 19.478374, 16.875998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128424, 0.334049, -0.933766,
		0.712316, 0.686183, 0.147510,
		0.690010, -0.646192, -0.326071,
		21.792761, 19.284517, 16.778177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.594549, 20.071415, 16.424858>,  <21.309753, 19.736851, 17.006426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.594549, 20.071415, 16.424858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.741756, 19.703281, 16.371868>,  <21.830080, 19.482401, 16.340075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.741756, 19.703281, 16.371868>,  <21.594549, 20.071415, 16.424858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.741756, 19.703281, 16.371868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005611, 0.140272, -0.990097,
		0.929802, 0.365115, 0.046459,
		0.368016, -0.920334, -0.132474,
		21.852161, 19.427181, 16.332127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.303631, 20.073580, 16.016645>,  <21.594549, 20.071415, 16.424858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.303631, 20.073580, 16.016645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.161243, 19.704487, 15.957514>,  <22.075811, 19.483030, 15.922035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.161243, 19.704487, 15.957514>,  <22.303631, 20.073580, 16.016645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.161243, 19.704487, 15.957514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155575, 0.097467, -0.983004,
		0.921457, -0.372915, 0.108859,
		-0.355967, -0.922732, -0.147828,
		22.054453, 19.427668, 15.913165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809286, 19.667021, 15.557292>,  <22.303631, 20.073580, 16.016645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809286, 19.667021, 15.557292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.462875, 19.467472, 15.543898>,  <22.255028, 19.347742, 15.535861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.462875, 19.467472, 15.543898>,  <22.809286, 19.667021, 15.557292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.462875, 19.467472, 15.543898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041170, 0.137897, -0.989591,
		0.498298, -0.855634, -0.139961,
		-0.866028, -0.498873, -0.033487,
		22.203068, 19.317810, 15.533852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.737444, 19.483822, 14.886484>,  <22.809286, 19.667021, 15.557292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.737444, 19.483822, 14.886484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354431, 19.400211, 14.965923>,  <22.124624, 19.350044, 15.013587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.354431, 19.400211, 14.965923>,  <22.737444, 19.483822, 14.886484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.354431, 19.400211, 14.965923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225377, 0.113011, -0.967695,
		0.179830, -0.971358, -0.155322,
		-0.957531, -0.209027, 0.198599,
		22.067171, 19.337503, 15.025503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.557495, 19.047869, 14.376197>,  <22.737444, 19.483822, 14.886484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.557495, 19.047869, 14.376197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.212803, 19.202351, 14.507812>,  <22.005987, 19.295040, 14.586782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.212803, 19.202351, 14.507812>,  <22.557495, 19.047869, 14.376197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212803, 19.202351, 14.507812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268859, 0.202388, -0.941676,
		-0.430272, -0.899937, -0.070570,
		-0.861732, 0.386203, 0.329039,
		21.954283, 19.318211, 14.606524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.951818, 18.765766, 13.911316>,  <22.557495, 19.047869, 14.376197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.951818, 18.765766, 13.911316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.778099, 19.078293, 14.090616>,  <21.673868, 19.265810, 14.198196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.778099, 19.078293, 14.090616>,  <21.951818, 18.765766, 13.911316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.778099, 19.078293, 14.090616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462752, 0.233419, -0.855205,
		-0.772817, -0.578842, 0.260183,
		-0.434297, 0.781318, 0.448251,
		21.647810, 19.312689, 14.225091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.253731, 18.689974, 13.874374>,  <21.951818, 18.765766, 13.911316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.253731, 18.689974, 13.874374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.302326, 19.085155, 13.912708>,  <21.331484, 19.322266, 13.935709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.302326, 19.085155, 13.912708>,  <21.253731, 18.689974, 13.874374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302326, 19.085155, 13.912708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485730, 0.143373, -0.862270,
		-0.865625, 0.058207, 0.497298,
		0.121489, 0.987955, 0.095835,
		21.338774, 19.381542, 13.941459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502928, 18.965591, 13.931861>,  <21.253731, 18.689974, 13.874374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502928, 18.965591, 13.931861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.760349, 19.251057, 13.821211>,  <20.914803, 19.422337, 13.754821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.760349, 19.251057, 13.821211>,  <20.502928, 18.965591, 13.931861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760349, 19.251057, 13.821211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567176, 0.201968, -0.798448,
		-0.513955, 0.670740, 0.534751,
		0.643554, 0.713664, -0.276625,
		20.953415, 19.465157, 13.738223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775103, 19.264053, 13.872269>,  <20.502928, 18.965591, 13.931861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775103, 19.264053, 13.872269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.662674, 18.881428, 13.841333>,  <19.595217, 18.651852, 13.822772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.662674, 18.881428, 13.841333>,  <19.775103, 19.264053, 13.872269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662674, 18.881428, 13.841333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063127, -0.098840, 0.993099,
		-0.957608, 0.274249, 0.088166,
		-0.281071, -0.956566, -0.077337,
		19.578352, 18.594458, 13.818132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293304, 19.087366, 14.460448>,  <19.775103, 19.264053, 13.872269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293304, 19.087366, 14.460448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.380527, 18.719707, 14.329227>,  <19.432861, 18.499111, 14.250495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.380527, 18.719707, 14.329227>,  <19.293304, 19.087366, 14.460448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380527, 18.719707, 14.329227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099437, -0.355317, 0.929442,
		-0.970857, -0.170051, -0.168877,
		0.218057, -0.919148, -0.328053,
		19.445944, 18.443964, 14.230812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.759933, 18.621170, 14.701474>,  <19.293304, 19.087366, 14.460448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.759933, 18.621170, 14.701474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.070492, 18.384220, 14.615402>,  <19.256826, 18.242050, 14.563759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.070492, 18.384220, 14.615402>,  <18.759933, 18.621170, 14.701474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070492, 18.384220, 14.615402> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014026, -0.357577, 0.933778,
		-0.630089, -0.721964, -0.285929,
		0.776396, -0.592374, -0.215179,
		19.303411, 18.206509, 14.550848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576757, 17.869415, 14.822665>,  <18.759933, 18.621170, 14.701474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576757, 17.869415, 14.822665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.975151, 17.893723, 14.848976>,  <19.214188, 17.908306, 14.864763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.975151, 17.893723, 14.848976>,  <18.576757, 17.869415, 14.822665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975151, 17.893723, 14.848976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039542, -0.360615, 0.931876,
		0.080349, -0.930733, -0.356763,
		0.995982, 0.060768, 0.065778,
		19.273945, 17.911953, 14.868710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.798216, 17.276344, 15.042091>,  <18.576757, 17.869415, 14.822665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.798216, 17.276344, 15.042091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.103100, 17.516281, 15.139441>,  <19.286030, 17.660242, 15.197850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.103100, 17.516281, 15.139441>,  <18.798216, 17.276344, 15.042091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103100, 17.516281, 15.139441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027397, -0.405518, 0.913676,
		0.646753, -0.689743, -0.325523,
		0.762208, 0.599841, 0.243374,
		19.331762, 17.696234, 15.212453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302626, 16.859894, 15.304163>,  <18.798216, 17.276344, 15.042091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302626, 16.859894, 15.304163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.385242, 17.227943, 15.437256>,  <19.434813, 17.448774, 15.517112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.385242, 17.227943, 15.437256>,  <19.302626, 16.859894, 15.304163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.385242, 17.227943, 15.437256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167607, -0.368310, 0.914470,
		0.963975, -0.133108, -0.230291,
		0.206541, 0.920125, 0.332731,
		19.447205, 17.503981, 15.537075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.792318, 16.669140, 15.812572>,  <19.302626, 16.859894, 15.304163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.792318, 16.669140, 15.812572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.704796, 17.052891, 15.883812>,  <19.652283, 17.283142, 15.926557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.704796, 17.052891, 15.883812>,  <19.792318, 16.669140, 15.812572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.704796, 17.052891, 15.883812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023150, -0.177369, 0.983872,
		0.975494, 0.219400, 0.016600,
		-0.218806, 0.959377, 0.178101,
		19.639154, 17.340704, 15.937243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.342453, 16.978693, 16.288559>,  <19.792318, 16.669140, 15.812572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.342453, 16.978693, 16.288559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.014763, 17.200745, 16.346111>,  <19.818150, 17.333977, 16.380642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.014763, 17.200745, 16.346111>,  <20.342453, 16.978693, 16.288559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.014763, 17.200745, 16.346111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034517, -0.202705, 0.978631,
		0.572433, 0.806685, 0.146899,
		-0.819225, 0.555130, 0.143879,
		19.768995, 17.367283, 16.389275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.457670, 17.279337, 16.950598>,  <20.342453, 16.978693, 16.288559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.457670, 17.279337, 16.950598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.067368, 17.341656, 16.889114>,  <19.833185, 17.379047, 16.852224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.067368, 17.341656, 16.889114>,  <20.457670, 17.279337, 16.950598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.067368, 17.341656, 16.889114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148889, 0.042213, 0.987953,
		0.160407, 0.986887, -0.017993,
		-0.975757, 0.155796, -0.153708,
		19.774641, 17.388395, 16.843002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220982, 17.894651, 17.365929>,  <20.457670, 17.279337, 16.950598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220982, 17.894651, 17.365929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.871872, 17.713036, 17.294241>,  <19.662407, 17.604067, 17.251228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.871872, 17.713036, 17.294241>,  <20.220982, 17.894651, 17.365929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871872, 17.713036, 17.294241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265176, 0.132769, 0.955015,
		-0.409818, 0.881035, -0.236277,
		-0.872772, -0.454038, -0.179218,
		19.610041, 17.576824, 17.240475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.717579, 18.439175, 17.537142>,  <20.220982, 17.894651, 17.365929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.717579, 18.439175, 17.537142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.587875, 18.062370, 17.571714>,  <19.510054, 17.836287, 17.592457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.587875, 18.062370, 17.571714>,  <19.717579, 18.439175, 17.537142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.587875, 18.062370, 17.571714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061997, 0.112332, 0.991735,
		-0.943935, 0.316218, -0.094826,
		-0.324257, -0.942013, 0.086430,
		19.490599, 17.779766, 17.597643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.249210, 18.581074, 17.997440>,  <19.717579, 18.439175, 17.537142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.249210, 18.581074, 17.997440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.311840, 18.187569, 18.032520>,  <19.349417, 17.951466, 18.053568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.311840, 18.187569, 18.032520>,  <19.249210, 18.581074, 17.997440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311840, 18.187569, 18.032520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283451, 0.040302, 0.958139,
		-0.946119, -0.174877, -0.272539,
		0.156573, -0.983765, 0.087699,
		19.358812, 17.892439, 18.058830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.922272, 18.410397, 18.575640>,  <19.249210, 18.581074, 17.997440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.922272, 18.410397, 18.575640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.139782, 18.076244, 18.543516>,  <19.270288, 17.875753, 18.524242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.139782, 18.076244, 18.543516>,  <18.922272, 18.410397, 18.575640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139782, 18.076244, 18.543516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018307, -0.083865, 0.996309,
		-0.839032, -0.543238, -0.030311,
		0.543775, -0.835380, -0.080310,
		19.302914, 17.825630, 18.519423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.548851, 17.842653, 18.916409>,  <18.922272, 18.410397, 18.575640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.548851, 17.842653, 18.916409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.937866, 17.750706, 18.930981>,  <19.171276, 17.695538, 18.939724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.937866, 17.750706, 18.930981>,  <18.548851, 17.842653, 18.916409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937866, 17.750706, 18.930981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031379, 0.025602, 0.999180,
		-0.230612, -0.972885, 0.017686,
		0.972540, -0.229868, 0.036432,
		19.229628, 17.681746, 18.941910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.949602, 17.516281, 18.947540>,  <18.548851, 17.842653, 18.916409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.949602, 17.516281, 18.947540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572601, 17.541470, 19.078827>,  <17.346401, 17.556581, 19.157598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.572601, 17.541470, 19.078827>,  <17.949602, 17.516281, 18.947540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572601, 17.541470, 19.078827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312632, 0.181002, -0.932470,
		-0.118125, -0.981465, -0.150908,
		-0.942501, 0.062970, 0.328218,
		17.289850, 17.560360, 19.177292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.499804, 17.125427, 18.535877>,  <17.949602, 17.516281, 18.947540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.499804, 17.125427, 18.535877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249550, 17.411495, 18.660528>,  <17.099398, 17.583136, 18.735319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.249550, 17.411495, 18.660528>,  <17.499804, 17.125427, 18.535877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.249550, 17.411495, 18.660528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284881, 0.162425, -0.944701,
		-0.726239, -0.679815, 0.102120,
		-0.625636, 0.715171, 0.311626,
		17.061859, 17.626047, 18.754017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.986652, 16.997856, 18.127270>,  <17.499804, 17.125427, 18.535877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.986652, 16.997856, 18.127270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884796, 17.358265, 18.267736>,  <16.823683, 17.574511, 18.352016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.884796, 17.358265, 18.267736>,  <16.986652, 16.997856, 18.127270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.884796, 17.358265, 18.267736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412809, 0.227107, -0.882050,
		-0.874498, -0.369571, 0.314119,
		-0.254642, 0.901021, 0.351167,
		16.808403, 17.628571, 18.373087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.239977, 17.078791, 18.090219>,  <16.986652, 16.997856, 18.127270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.239977, 17.078791, 18.090219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.365707, 17.457268, 18.120983>,  <16.441145, 17.684355, 18.139442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.365707, 17.457268, 18.120983>,  <16.239977, 17.078791, 18.090219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365707, 17.457268, 18.120983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566799, 0.252045, -0.784355,
		-0.761537, 0.202949, 0.615526,
		0.314324, 0.946195, 0.076911,
		16.460005, 17.741127, 18.144056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687949, 17.543539, 18.158272>,  <16.239977, 17.078791, 18.090219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687949, 17.543539, 18.158272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.969026, 17.786858, 18.010649>,  <16.137671, 17.932848, 17.922075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.969026, 17.786858, 18.010649>,  <15.687949, 17.543539, 18.158272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.969026, 17.786858, 18.010649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608422, 0.244830, -0.754905,
		-0.368849, 0.755006, 0.542140,
		0.702690, 0.608296, -0.369057,
		16.179832, 17.969347, 17.899931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.281251, 18.078577, 17.985352>,  <15.687949, 17.543539, 18.158272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.281251, 18.078577, 17.985352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.624816, 18.119598, 17.784651>,  <15.830955, 18.144211, 17.664230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.624816, 18.119598, 17.784651>,  <15.281251, 18.078577, 17.985352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.624816, 18.119598, 17.784651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504053, 0.342545, -0.792839,
		0.090566, 0.933888, 0.345907,
		0.858911, 0.102551, -0.501751,
		15.882489, 18.150364, 17.634125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197124, 18.663065, 17.610573>,  <15.281251, 18.078577, 17.985352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197124, 18.663065, 17.610573> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.475844, 18.452839, 17.415331>,  <15.643077, 18.326704, 17.298185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.475844, 18.452839, 17.415331>,  <15.197124, 18.663065, 17.610573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475844, 18.452839, 17.415331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371664, 0.317465, -0.872400,
		0.613460, 0.789302, 0.025877,
		0.696802, -0.525565, -0.488107,
		15.684885, 18.295170, 17.268898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400464, 19.203197, 17.145512>,  <15.197124, 18.663065, 17.610573>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400464, 19.203197, 17.145512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.518744, 18.852024, 16.994892>,  <15.589713, 18.641319, 16.904520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.518744, 18.852024, 16.994892>,  <15.400464, 19.203197, 17.145512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.518744, 18.852024, 16.994892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343319, 0.270173, -0.899521,
		0.891455, 0.395266, -0.221522,
		0.295701, -0.877936, -0.376550,
		15.607455, 18.588644, 16.881927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.625410, 19.449139, 16.582705>,  <15.400464, 19.203197, 17.145512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.625410, 19.449139, 16.582705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.588187, 19.055611, 16.521467>,  <15.565854, 18.819494, 16.484724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.588187, 19.055611, 16.521467>,  <15.625410, 19.449139, 16.582705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588187, 19.055611, 16.521467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288651, 0.173815, -0.941525,
		0.952901, -0.043424, -0.300156,
		-0.093056, -0.983820, -0.153094,
		15.560270, 18.760464, 16.475538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.982978, 19.273136, 15.963768>,  <15.625410, 19.449139, 16.582705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.982978, 19.273136, 15.963768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.709067, 18.983177, 15.993719>,  <15.544722, 18.809202, 16.011690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.709067, 18.983177, 15.993719>,  <15.982978, 19.273136, 15.963768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.709067, 18.983177, 15.993719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250329, 0.137482, -0.958350,
		0.684411, -0.674998, -0.275607,
		-0.684775, -0.724897, 0.074878,
		15.503634, 18.765709, 16.016182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.137367, 18.776798, 15.458701>,  <15.982978, 19.273136, 15.963768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.137367, 18.776798, 15.458701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.756034, 18.698277, 15.550461>,  <15.527234, 18.651163, 15.605516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.756034, 18.698277, 15.550461>,  <16.137367, 18.776798, 15.458701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.756034, 18.698277, 15.550461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204494, -0.139171, -0.968924,
		0.222130, -0.970617, 0.092533,
		-0.953332, -0.196305, 0.229399,
		15.470035, 18.639385, 15.619281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898693, 18.202188, 15.009310>,  <16.137367, 18.776798, 15.458701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898693, 18.202188, 15.009310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.584920, 18.404449, 15.152964>,  <15.396656, 18.525806, 15.239156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.584920, 18.404449, 15.152964>,  <15.898693, 18.202188, 15.009310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584920, 18.404449, 15.152964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401698, 0.026970, -0.915375,
		-0.472550, -0.862314, 0.181964,
		-0.784433, 0.505655, 0.359135,
		15.349590, 18.556147, 15.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.311038, 17.894371, 14.706488>,  <15.898693, 18.202188, 15.009310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.311038, 17.894371, 14.706488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.183330, 18.257206, 14.816221>,  <15.106705, 18.474907, 14.882061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.183330, 18.257206, 14.816221>,  <15.311038, 17.894371, 14.706488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.183330, 18.257206, 14.816221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432107, 0.118293, -0.894030,
		-0.843415, -0.403979, 0.354191,
		-0.319271, 0.907088, 0.274333,
		15.087548, 18.529331, 14.898521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.643497, 17.940336, 14.491418>,  <15.311038, 17.894371, 14.706488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.643497, 17.940336, 14.491418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.758187, 18.320930, 14.536081>,  <14.827001, 18.549286, 14.562880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.758187, 18.320930, 14.536081>,  <14.643497, 17.940336, 14.491418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.758187, 18.320930, 14.536081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207577, 0.175486, -0.962350,
		-0.935255, 0.252751, 0.247822,
		0.286724, 0.951484, 0.111659,
		14.844205, 18.606375, 14.569579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.087247, 19.695566, 20.596466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.457370, 19.803383, 20.489767>,  <15.679443, 19.868073, 20.425749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.457370, 19.803383, 20.489767>,  <15.087247, 19.695566, 20.596466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.457370, 19.803383, 20.489767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357896, -0.388163, 0.849259,
		0.125371, -0.881292, -0.455638,
		0.925307, 0.269543, -0.266746,
		15.734962, 19.884245, 20.409742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402928, 19.192167, 20.816105>,  <15.087247, 19.695566, 20.596466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402928, 19.192167, 20.816105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.698638, 19.453148, 20.749434>,  <15.876063, 19.609735, 20.709431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.698638, 19.453148, 20.749434>,  <15.402928, 19.192167, 20.816105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698638, 19.453148, 20.749434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481917, -0.339708, 0.807685,
		0.470353, -0.677426, -0.565564,
		0.739273, 0.652452, -0.166680,
		15.920420, 19.648884, 20.699429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.019918, 18.843937, 21.073986>,  <15.402928, 19.192167, 20.816105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.019918, 18.843937, 21.073986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.094696, 19.236881, 21.072231>,  <16.139563, 19.472649, 21.071178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.094696, 19.236881, 21.072231>,  <16.019918, 18.843937, 21.073986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094696, 19.236881, 21.072231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535395, -0.098138, 0.838881,
		0.823653, -0.159171, -0.544298,
		0.186942, 0.982361, -0.004388,
		16.150778, 19.531590, 21.070915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838722, 18.871891, 21.335337>,  <16.019918, 18.843937, 21.073986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838722, 18.871891, 21.335337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667313, 19.232265, 21.362709>,  <16.564466, 19.448490, 21.379131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.667313, 19.232265, 21.362709>,  <16.838722, 18.871891, 21.335337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.667313, 19.232265, 21.362709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319278, 0.080142, 0.944266,
		0.845238, 0.426491, -0.321991,
		-0.428526, 0.900935, 0.068430,
		16.538755, 19.502546, 21.383238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.176613, 19.155039, 21.822914>,  <16.838722, 18.871891, 21.335337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.176613, 19.155039, 21.822914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.866131, 19.406723, 21.806919>,  <16.679842, 19.557734, 21.797323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.866131, 19.406723, 21.806919>,  <17.176613, 19.155039, 21.822914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866131, 19.406723, 21.806919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242494, 0.356483, 0.902284,
		0.581980, 0.690662, -0.429284,
		-0.776206, 0.629210, -0.039985,
		16.633268, 19.595486, 21.794924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427460, 19.818127, 21.908813>,  <17.176613, 19.155039, 21.822914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.427460, 19.818127, 21.908813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.042564, 19.824909, 22.017483>,  <16.811626, 19.828978, 22.082684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.042564, 19.824909, 22.017483>,  <17.427460, 19.818127, 21.908813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.042564, 19.824909, 22.017483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266908, 0.254633, 0.929474,
		-0.053419, 0.966889, -0.249543,
		-0.962240, 0.016954, 0.271673,
		16.753893, 19.829996, 22.098984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274721, 20.450506, 22.280062>,  <17.427460, 19.818127, 21.908813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274721, 20.450506, 22.280062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.996159, 20.192177, 22.405235>,  <16.829021, 20.037180, 22.480339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.996159, 20.192177, 22.405235>,  <17.274721, 20.450506, 22.280062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996159, 20.192177, 22.405235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395358, 0.018659, 0.918337,
		-0.598923, 0.763259, 0.242338,
		-0.696407, -0.645823, 0.312936,
		16.787237, 19.998430, 22.499117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.103397, 20.762663, 22.866066>,  <17.274721, 20.450506, 22.280062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.103397, 20.762663, 22.866066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.939465, 20.399132, 22.897226>,  <16.841105, 20.181013, 22.915922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.939465, 20.399132, 22.897226>,  <17.103397, 20.762663, 22.866066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.939465, 20.399132, 22.897226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230164, -0.020397, 0.972938,
		-0.882644, 0.416672, 0.217539,
		-0.409834, -0.908828, 0.077900,
		16.816515, 20.126484, 22.920597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.787128, 20.670053, 23.510174>,  <17.103397, 20.762663, 22.866066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.787128, 20.670053, 23.510174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.799812, 20.281048, 23.417908>,  <16.807423, 20.047644, 23.362547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.799812, 20.281048, 23.417908>,  <16.787128, 20.670053, 23.510174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799812, 20.281048, 23.417908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293629, -0.211535, 0.932220,
		-0.955393, -0.097290, 0.278851,
		0.031709, -0.972516, -0.230667,
		16.809324, 19.989292, 23.348707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.381256, 20.267172, 24.021019>,  <16.787128, 20.670053, 23.510174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.381256, 20.267172, 24.021019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.669277, 20.042034, 23.858669>,  <16.842089, 19.906952, 23.761259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.669277, 20.042034, 23.858669>,  <16.381256, 20.267172, 24.021019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.669277, 20.042034, 23.858669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435747, -0.088453, 0.895712,
		-0.540048, -0.821816, 0.181567,
		0.720050, -0.562844, -0.405873,
		16.885292, 19.873180, 23.736908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355406, 19.709845, 24.515728>,  <16.381256, 20.267172, 24.021019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355406, 19.709845, 24.515728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.683056, 19.670830, 24.289621>,  <16.879646, 19.647421, 24.153957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.683056, 19.670830, 24.289621>,  <16.355406, 19.709845, 24.515728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683056, 19.670830, 24.289621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546100, -0.168957, 0.820505,
		-0.175566, -0.980782, -0.085110,
		0.819116, -0.097574, -0.565267,
		16.928793, 19.641569, 24.120043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.568869, 19.230011, 24.818417>,  <16.355406, 19.709845, 24.515728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.568869, 19.230011, 24.818417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.888855, 19.360058, 24.616682>,  <17.080847, 19.438086, 24.495642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.888855, 19.360058, 24.616682>,  <16.568869, 19.230011, 24.818417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888855, 19.360058, 24.616682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575207, -0.176174, 0.798811,
		0.170856, -0.929119, -0.327943,
		0.799966, 0.325117, -0.504336,
		17.128845, 19.457592, 24.465382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.163857, 18.665079, 24.558413>,  <16.568869, 19.230011, 24.818417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.163857, 18.665079, 24.558413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.306374, 19.029385, 24.641899>,  <17.391884, 19.247969, 24.691992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.306374, 19.029385, 24.641899>,  <17.163857, 18.665079, 24.558413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.306374, 19.029385, 24.641899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543640, -0.383736, 0.746460,
		0.759942, -0.152491, -0.631850,
		0.356292, 0.910765, 0.208717,
		17.413261, 19.302614, 24.704514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870438, 18.507229, 24.653910>,  <17.163857, 18.665079, 24.558413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870438, 18.507229, 24.653910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755535, 18.850723, 24.823641>,  <17.686594, 19.056820, 24.925480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.755535, 18.850723, 24.823641>,  <17.870438, 18.507229, 24.653910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.755535, 18.850723, 24.823641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363869, -0.311958, 0.877657,
		0.886049, 0.406514, -0.222856,
		-0.287258, 0.858737, 0.424327,
		17.669357, 19.108345, 24.950939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.006861, 17.758873, 24.688450>,  <17.870438, 18.507229, 24.653910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.006861, 17.758873, 24.688450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.142326, 17.386921, 24.630995>,  <18.223606, 17.163750, 24.596521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.142326, 17.386921, 24.630995>,  <18.006861, 17.758873, 24.688450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142326, 17.386921, 24.630995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438213, -0.020789, -0.898631,
		0.832631, 0.367279, -0.414525,
		0.338666, -0.929878, -0.143637,
		18.243927, 17.107958, 24.587904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285759, 17.743296, 23.967653>,  <18.006861, 17.758873, 24.688450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285759, 17.743296, 23.967653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.232071, 17.356209, 24.052982>,  <18.199858, 17.123957, 24.104179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.232071, 17.356209, 24.052982>,  <18.285759, 17.743296, 23.967653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.232071, 17.356209, 24.052982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487609, -0.122911, -0.864367,
		0.862684, -0.220032, -0.455371,
		-0.134218, -0.967718, 0.213323,
		18.191805, 17.065893, 24.116980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.537930, 17.368595, 23.312323>,  <18.285759, 17.743296, 23.967653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.537930, 17.368595, 23.312323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.314362, 17.100018, 23.506958>,  <18.180222, 16.938871, 23.623739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.314362, 17.100018, 23.506958>,  <18.537930, 17.368595, 23.312323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314362, 17.100018, 23.506958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503065, -0.191918, -0.842670,
		0.659193, -0.715771, -0.230515,
		-0.558919, -0.671446, 0.486590,
		18.146687, 16.898584, 23.652935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.621149, 16.800570, 22.958389>,  <18.537930, 17.368595, 23.312323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.621149, 16.800570, 22.958389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275661, 16.761017, 23.156059>,  <18.068369, 16.737286, 23.274662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.275661, 16.761017, 23.156059>,  <18.621149, 16.800570, 22.958389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.275661, 16.761017, 23.156059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487343, -0.085928, -0.868973,
		0.128389, -0.991382, 0.026029,
		-0.863721, -0.098882, 0.494175,
		18.016544, 16.731354, 23.304312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.282644, 16.301889, 22.617540>,  <18.621149, 16.800570, 22.958389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.282644, 16.301889, 22.617540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.994034, 16.500282, 22.810785>,  <17.820868, 16.619318, 22.926733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.994034, 16.500282, 22.810785>,  <18.282644, 16.301889, 22.617540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.994034, 16.500282, 22.810785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641546, -0.216473, -0.735906,
		-0.260418, -0.840915, 0.474388,
		-0.721527, 0.495985, 0.483112,
		17.777575, 16.649076, 22.955719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754498, 15.809815, 22.547882>,  <18.282644, 16.301889, 22.617540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754498, 15.809815, 22.547882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.620430, 16.180115, 22.617912>,  <17.539989, 16.402294, 22.659929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.620430, 16.180115, 22.617912>,  <17.754498, 15.809815, 22.547882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620430, 16.180115, 22.617912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469588, -0.003049, -0.882880,
		-0.816791, -0.378127, 0.435743,
		-0.335170, 0.925749, 0.175073,
		17.519878, 16.457840, 22.670435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135397, 15.807993, 22.160170>,  <17.754498, 15.809815, 22.547882>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135397, 15.807993, 22.160170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.217598, 16.193230, 22.229706>,  <17.266918, 16.424372, 22.271427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.217598, 16.193230, 22.229706>,  <17.135397, 15.807993, 22.160170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217598, 16.193230, 22.229706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279210, 0.227946, -0.932782,
		-0.937982, 0.143153, 0.315749,
		0.205505, 0.963093, 0.173840,
		17.279249, 16.482157, 22.281858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.622562, 16.187111, 21.880533>,  <17.135397, 15.807993, 22.160170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.622562, 16.187111, 21.880533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.896626, 16.475620, 21.921175>,  <17.061064, 16.648726, 21.945560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.896626, 16.475620, 21.921175>,  <16.622562, 16.187111, 21.880533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896626, 16.475620, 21.921175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197066, 0.317848, -0.927436,
		-0.701228, 0.615419, 0.359915,
		0.685160, 0.721271, 0.101606,
		17.102173, 16.692001, 21.951656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354322, 16.742992, 21.527098>,  <16.622562, 16.187111, 21.880533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354322, 16.742992, 21.527098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.735443, 16.862537, 21.548462>,  <16.964115, 16.934265, 21.561279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.735443, 16.862537, 21.548462>,  <16.354322, 16.742992, 21.527098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735443, 16.862537, 21.548462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071982, 0.393286, -0.916594,
		-0.294940, 0.869487, 0.396236,
		0.952801, 0.298862, 0.053409,
		17.021284, 16.952196, 21.564486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309496, 17.427855, 21.236750>,  <16.354322, 16.742992, 21.527098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309496, 17.427855, 21.236750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.699020, 17.340946, 21.209961>,  <16.932735, 17.288801, 21.193888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.699020, 17.340946, 21.209961>,  <16.309496, 17.427855, 21.236750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.699020, 17.340946, 21.209961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031253, 0.419688, -0.907130,
		0.225201, 0.881281, 0.415487,
		0.973811, -0.217271, -0.066971,
		16.991163, 17.275764, 21.189869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.682079, 18.072638, 21.001596>,  <16.309496, 17.427855, 21.236750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.682079, 18.072638, 21.001596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.882275, 17.735966, 20.920523>,  <17.002392, 17.533962, 20.871878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.882275, 17.735966, 20.920523>,  <16.682079, 18.072638, 21.001596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882275, 17.735966, 20.920523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071236, 0.273362, -0.959270,
		0.862807, 0.465667, 0.196773,
		0.500490, -0.841682, -0.202687,
		17.032421, 17.483461, 20.859716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.274607, 18.310160, 20.721704>,  <16.682079, 18.072638, 21.001596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.274607, 18.310160, 20.721704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.195145, 17.937302, 20.600615>,  <17.147467, 17.713587, 20.527962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.195145, 17.937302, 20.600615>,  <17.274607, 18.310160, 20.721704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.195145, 17.937302, 20.600615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093748, 0.289390, -0.952609,
		0.975575, -0.217622, 0.029897,
		-0.198657, -0.932145, -0.302724,
		17.135548, 17.657658, 20.509798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751425, 18.101904, 20.214260>,  <17.274607, 18.310160, 20.721704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751425, 18.101904, 20.214260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.447639, 17.853073, 20.138115>,  <17.265369, 17.703775, 20.092428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.447639, 17.853073, 20.138115>,  <17.751425, 18.101904, 20.214260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.447639, 17.853073, 20.138115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139891, 0.129611, -0.981647,
		0.635334, -0.772153, -0.011411,
		-0.759461, -0.622077, -0.190364,
		17.219801, 17.666451, 20.081005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.986000, 17.640099, 19.644045>,  <17.751425, 18.101904, 20.214260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.986000, 17.640099, 19.644045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.587898, 17.602135, 19.652666>,  <17.349037, 17.579357, 19.657839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.587898, 17.602135, 19.652666>,  <17.986000, 17.640099, 19.644045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.587898, 17.602135, 19.652666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003047, -0.190964, -0.981592,
		0.097276, -0.976998, 0.189769,
		-0.995253, -0.094907, 0.021553,
		17.289322, 17.573662, 19.659132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.590874, 17.462700, 19.512827>,  <17.986000, 17.640099, 19.644045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.590874, 17.462700, 19.512827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.981487, 17.515171, 19.444506>,  <19.215855, 17.546654, 19.403513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.981487, 17.515171, 19.444506>,  <18.590874, 17.462700, 19.512827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.981487, 17.515171, 19.444506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185044, -0.105326, 0.977070,
		0.110181, -0.985748, -0.127128,
		0.976534, 0.131178, -0.170802,
		19.274448, 17.554523, 19.393265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894369, 16.871605, 19.857500>,  <18.590874, 17.462700, 19.512827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894369, 16.871605, 19.857500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.132435, 17.191166, 19.822781>,  <19.275274, 17.382902, 19.801949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.132435, 17.191166, 19.822781>,  <18.894369, 16.871605, 19.857500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132435, 17.191166, 19.822781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260287, -0.089455, 0.961378,
		0.760282, -0.594773, -0.261185,
		0.595166, 0.798901, -0.086800,
		19.310986, 17.430836, 19.796740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464668, 16.698067, 20.154539>,  <18.894369, 16.871605, 19.857500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464668, 16.698067, 20.154539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.500820, 17.096237, 20.166931>,  <19.522512, 17.335138, 20.174366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.500820, 17.096237, 20.166931>,  <19.464668, 16.698067, 20.154539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500820, 17.096237, 20.166931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530998, -0.074482, 0.844093,
		0.842539, -0.059841, -0.535301,
		0.090382, 0.995425, 0.030979,
		19.527935, 17.394865, 20.176224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.116678, 16.802092, 20.312641>,  <19.464668, 16.698067, 20.154539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.116678, 16.802092, 20.312641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.956451, 17.163044, 20.376209>,  <19.860315, 17.379616, 20.414351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.956451, 17.163044, 20.376209>,  <20.116678, 16.802092, 20.312641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956451, 17.163044, 20.376209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365002, -0.001936, 0.931005,
		0.840429, 0.430934, -0.328596,
		-0.400565, 0.902381, 0.158919,
		19.836283, 17.433758, 20.423885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531010, 17.081213, 20.700186>,  <20.116678, 16.802092, 20.312641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531010, 17.081213, 20.700186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.226112, 17.331097, 20.767975>,  <20.043175, 17.481028, 20.808649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.226112, 17.331097, 20.767975>,  <20.531010, 17.081213, 20.700186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.226112, 17.331097, 20.767975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256812, 0.051540, 0.965086,
		0.594165, 0.779154, -0.199719,
		-0.762244, 0.624711, 0.169473,
		19.997438, 17.518509, 20.818817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.781000, 17.506554, 21.112709>,  <20.531010, 17.081213, 20.700186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.781000, 17.506554, 21.112709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.390949, 17.554031, 21.187580>,  <20.156918, 17.582518, 21.232504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.390949, 17.554031, 21.187580>,  <20.781000, 17.506554, 21.112709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390949, 17.554031, 21.187580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194835, 0.056463, 0.979210,
		0.105656, 0.991324, -0.078184,
		-0.975129, 0.118693, 0.187179,
		20.098412, 17.589640, 21.243734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.665909, 18.132824, 21.487354>,  <20.781000, 17.506554, 21.112709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.665909, 18.132824, 21.487354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.367050, 17.880013, 21.569635>,  <20.187735, 17.728327, 21.619003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.367050, 17.880013, 21.569635>,  <20.665909, 18.132824, 21.487354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367050, 17.880013, 21.569635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252654, 0.016189, 0.967421,
		-0.614766, 0.774777, 0.147588,
		-0.747147, -0.632027, 0.205703,
		20.142906, 17.690405, 21.631346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137360, 18.547785, 21.745615>,  <20.665909, 18.132824, 21.487354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137360, 18.547785, 21.745615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.526184, 18.640606, 21.731489>,  <21.759480, 18.696299, 21.723013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.526184, 18.640606, 21.731489>,  <21.137360, 18.547785, 21.745615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526184, 18.640606, 21.731489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023908, -0.051783, -0.998372,
		-0.233504, 0.971324, -0.044789,
		0.972062, 0.232053, -0.035314,
		21.817802, 18.710222, 21.720896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109718, 18.942417, 21.214327>,  <21.137360, 18.547785, 21.745615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109718, 18.942417, 21.214327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.499729, 18.860172, 21.247906>,  <21.733736, 18.810825, 21.268053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.499729, 18.860172, 21.247906>,  <21.109718, 18.942417, 21.214327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499729, 18.860172, 21.247906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039989, -0.209281, -0.977037,
		0.218458, 0.955995, -0.195832,
		0.975027, -0.205610, 0.083949,
		21.792236, 18.798489, 21.273090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389671, 19.343147, 20.669992>,  <21.109718, 18.942417, 21.214327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389671, 19.343147, 20.669992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.665386, 19.064354, 20.749084>,  <21.830816, 18.897078, 20.796539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.665386, 19.064354, 20.749084>,  <21.389671, 19.343147, 20.669992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665386, 19.064354, 20.749084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202327, -0.076874, -0.976296,
		0.695661, 0.712956, 0.088030,
		0.689289, -0.696982, 0.197728,
		21.872173, 18.855259, 20.808403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.000982, 19.522823, 20.246521>,  <21.389671, 19.343147, 20.669992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.000982, 19.522823, 20.246521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.014351, 19.131496, 20.328283>,  <22.022371, 18.896700, 20.377340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.014351, 19.131496, 20.328283>,  <22.000982, 19.522823, 20.246521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014351, 19.131496, 20.328283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186710, -0.194808, -0.962907,
		0.981846, 0.070346, 0.176150,
		0.033421, -0.978315, 0.204406,
		22.024378, 18.838001, 20.389605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.614370, 19.371376, 19.988226>,  <22.000982, 19.522823, 20.246521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.614370, 19.371376, 19.988226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.427574, 19.018379, 20.010588>,  <22.315496, 18.806581, 20.024004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.427574, 19.018379, 20.010588>,  <22.614370, 19.371376, 19.988226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.427574, 19.018379, 20.010588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253659, -0.194258, -0.947587,
		0.847098, -0.428335, 0.314570,
		-0.466992, -0.882493, 0.055905,
		22.287476, 18.753632, 20.027359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.075956, 18.877853, 19.661404>,  <22.614370, 19.371376, 19.988226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.075956, 18.877853, 19.661404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.701038, 18.742279, 19.628902>,  <22.476088, 18.660934, 19.609402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.701038, 18.742279, 19.628902>,  <23.075956, 18.877853, 19.661404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.701038, 18.742279, 19.628902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122471, -0.102023, -0.987214,
		0.326311, -0.935262, 0.137135,
		-0.937295, -0.338934, -0.081252,
		22.419849, 18.640598, 19.604527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.061220, 18.427444, 19.066578>,  <23.075956, 18.877853, 19.661404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.061220, 18.427444, 19.066578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.666348, 18.485119, 19.093943>,  <22.429424, 18.519724, 19.110361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.666348, 18.485119, 19.093943>,  <23.061220, 18.427444, 19.066578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.666348, 18.485119, 19.093943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028803, 0.260671, -0.964998,
		-0.156971, -0.954600, -0.253177,
		-0.987183, 0.144184, 0.068413,
		22.370193, 18.528374, 19.114466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<19.547127, 21.765430, 24.799465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.252651, 21.498741, 24.752983>,  <19.075966, 21.338728, 24.725094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.252651, 21.498741, 24.752983>,  <19.547127, 21.765430, 24.799465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.252651, 21.498741, 24.752983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083397, 0.081023, -0.993217,
		0.671618, -0.740887, -0.004046,
		-0.736189, -0.666725, -0.116204,
		19.031794, 21.298723, 24.718122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777950, 21.256351, 24.307127>,  <19.547127, 21.765430, 24.799465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777950, 21.256351, 24.307127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.378445, 21.275871, 24.310957>,  <19.138742, 21.287582, 24.313255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.378445, 21.275871, 24.310957>,  <19.777950, 21.256351, 24.307127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378445, 21.275871, 24.310957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007942, 0.033514, -0.999407,
		-0.049090, -0.998246, -0.033085,
		-0.998763, 0.048798, 0.009574,
		19.078815, 21.290510, 24.313829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606131, 20.939922, 23.695646>,  <19.777950, 21.256351, 24.307127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606131, 20.939922, 23.695646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.296268, 21.175732, 23.787186>,  <19.110352, 21.317217, 23.842110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.296268, 21.175732, 23.787186>,  <19.606131, 20.939922, 23.695646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296268, 21.175732, 23.787186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085347, 0.261107, -0.961529,
		-0.626597, -0.764386, -0.151954,
		-0.774656, 0.589523, 0.228848,
		19.063871, 21.352589, 23.855841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215420, 20.876904, 23.147329>,  <19.606131, 20.939922, 23.695646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215420, 20.876904, 23.147329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.050949, 21.204708, 23.306995>,  <18.952267, 21.401390, 23.402796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.050949, 21.204708, 23.306995>,  <19.215420, 20.876904, 23.147329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.050949, 21.204708, 23.306995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191116, 0.350662, -0.916794,
		-0.891295, -0.453253, 0.012437,
		-0.411178, 0.819511, 0.399167,
		18.927595, 21.450562, 23.426744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625515, 20.976295, 22.768599>,  <19.215420, 20.876904, 23.147329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625515, 20.976295, 22.768599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.710091, 21.330223, 22.934677>,  <18.760836, 21.542580, 23.034325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.710091, 21.330223, 22.934677>,  <18.625515, 20.976295, 22.768599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710091, 21.330223, 22.934677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278070, 0.461703, -0.842322,
		-0.937001, 0.062647, 0.343665,
		0.211440, 0.884819, 0.415196,
		18.773523, 21.595669, 23.059237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.049337, 21.404060, 22.716955>,  <18.625515, 20.976295, 22.768599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.049337, 21.404060, 22.716955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.341618, 21.668159, 22.786411>,  <18.516985, 21.826618, 22.828085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.341618, 21.668159, 22.786411>,  <18.049337, 21.404060, 22.716955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341618, 21.668159, 22.786411> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210128, 0.459503, -0.862962,
		-0.649557, 0.594079, 0.474495,
		0.730699, 0.660248, 0.173641,
		18.560827, 21.866234, 22.838503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.682911, 22.011942, 22.596636>,  <18.049337, 21.404060, 22.716955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.682911, 22.011942, 22.596636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.075367, 22.086536, 22.576302>,  <18.310841, 22.131292, 22.564102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.075367, 22.086536, 22.576302>,  <17.682911, 22.011942, 22.596636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.075367, 22.086536, 22.576302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122838, 0.398518, -0.908898,
		-0.149239, 0.898001, 0.413910,
		0.981142, 0.186486, -0.050834,
		18.369709, 22.142483, 22.561052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.644726, 22.705683, 22.410219>,  <17.682911, 22.011942, 22.596636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.644726, 22.705683, 22.410219> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.004448, 22.561253, 22.311531>,  <18.220282, 22.474594, 22.252317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.004448, 22.561253, 22.311531>,  <17.644726, 22.705683, 22.410219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004448, 22.561253, 22.311531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042090, 0.490084, -0.870658,
		0.435288, 0.793374, 0.425538,
		0.899307, -0.361076, -0.246721,
		18.274240, 22.452930, 22.237514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.946745, 23.277262, 22.180840>,  <17.644726, 22.705683, 22.410219>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.946745, 23.277262, 22.180840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.149353, 22.975582, 22.013689>,  <18.270918, 22.794575, 21.913399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.149353, 22.975582, 22.013689>,  <17.946745, 23.277262, 22.180840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.149353, 22.975582, 22.013689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194990, 0.371898, -0.907563,
		0.839891, 0.541180, 0.041312,
		0.506518, -0.754199, -0.417879,
		18.301308, 22.749323, 21.888325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446817, 23.622314, 21.702866>,  <17.946745, 23.277262, 22.180840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446817, 23.622314, 21.702866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.368393, 23.245632, 21.593508>,  <18.321339, 23.019623, 21.527893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.368393, 23.245632, 21.593508>,  <18.446817, 23.622314, 21.702866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.368393, 23.245632, 21.593508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048847, 0.287841, -0.956432,
		0.979374, -0.174165, -0.102435,
		-0.196062, -0.941708, -0.273397,
		18.309574, 22.963120, 21.511488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.858524, 23.430676, 21.064707>,  <18.446817, 23.622314, 21.702866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.858524, 23.430676, 21.064707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.577171, 23.146481, 21.056101>,  <18.408360, 22.975964, 21.050938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.577171, 23.146481, 21.056101>,  <18.858524, 23.430676, 21.064707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.577171, 23.146481, 21.056101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060021, 0.089527, -0.994174,
		0.708273, -0.697994, -0.105616,
		-0.703383, -0.710486, -0.021515,
		18.366156, 22.933334, 21.049646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062897, 23.005173, 20.512283>,  <18.858524, 23.430676, 21.064707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062897, 23.005173, 20.512283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.674763, 22.926716, 20.568825>,  <18.441883, 22.879641, 20.602749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.674763, 22.926716, 20.568825>,  <19.062897, 23.005173, 20.512283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.674763, 22.926716, 20.568825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166263, 0.116895, -0.979128,
		0.175533, -0.973581, -0.146039,
		-0.970332, -0.196150, 0.141352,
		18.383663, 22.867872, 20.611231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706455, 22.553064, 20.585918>,  <19.062897, 23.005173, 20.512283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706455, 22.553064, 20.585918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.043343, 22.462040, 20.390415>,  <20.245476, 22.407425, 20.273113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.043343, 22.462040, 20.390415>,  <19.706455, 22.553064, 20.585918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043343, 22.462040, 20.390415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446360, -0.214128, 0.868857,
		-0.302378, -0.949928, -0.078766,
		0.842218, -0.227565, -0.488758,
		20.296007, 22.393770, 20.243788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878813, 21.852226, 20.827858>,  <19.706455, 22.553064, 20.585918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878813, 21.852226, 20.827858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.199947, 22.009491, 20.648579>,  <20.392628, 22.103849, 20.541012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.199947, 22.009491, 20.648579>,  <19.878813, 21.852226, 20.827858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199947, 22.009491, 20.648579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547169, -0.187335, 0.815789,
		0.236774, -0.900183, -0.365525,
		0.802835, 0.393162, -0.448196,
		20.440798, 22.127439, 20.514120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470695, 21.412552, 20.871599>,  <19.878813, 21.852226, 20.827858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470695, 21.412552, 20.871599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.623917, 21.779224, 20.826046>,  <20.715849, 21.999228, 20.798714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.623917, 21.779224, 20.826046>,  <20.470695, 21.412552, 20.871599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.623917, 21.779224, 20.826046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616818, -0.162062, 0.770241,
		0.687608, -0.365289, -0.627503,
		0.383054, 0.916679, -0.113882,
		20.738832, 22.054228, 20.791882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.162674, 21.246038, 20.904055>,  <20.470695, 21.412552, 20.871599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.162674, 21.246038, 20.904055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.125626, 21.640869, 20.956360>,  <21.103397, 21.877768, 20.987743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.125626, 21.640869, 20.956360>,  <21.162674, 21.246038, 20.904055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.125626, 21.640869, 20.956360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670780, -0.035201, 0.740821,
		0.735851, 0.156328, -0.658851,
		-0.092619, 0.987078, 0.130764,
		21.097839, 21.936993, 20.995588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836712, 21.547029, 21.015606>,  <21.162674, 21.246038, 20.904055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836712, 21.547029, 21.015606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.607151, 21.849846, 21.140526>,  <21.469416, 22.031536, 21.215477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.607151, 21.849846, 21.140526>,  <21.836712, 21.547029, 21.015606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.607151, 21.849846, 21.140526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549580, 0.073316, 0.832218,
		0.607125, 0.649244, -0.458130,
		-0.573901, 0.757039, 0.312299,
		21.434980, 22.076958, 21.234215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.306274, 22.088560, 21.239117>,  <21.836712, 21.547029, 21.015606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.306274, 22.088560, 21.239117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.954361, 22.167774, 21.411982>,  <21.743214, 22.215302, 21.515699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.954361, 22.167774, 21.411982>,  <22.306274, 22.088560, 21.239117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.954361, 22.167774, 21.411982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458949, 0.116938, 0.880734,
		0.123878, 0.973195, -0.193767,
		-0.879784, 0.198033, 0.432160,
		21.690426, 22.227184, 21.541630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.387350, 22.758368, 21.676943>,  <22.306274, 22.088560, 21.239117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.387350, 22.758368, 21.676943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.092953, 22.534035, 21.828619>,  <21.916315, 22.399435, 21.919624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.092953, 22.534035, 21.828619>,  <22.387350, 22.758368, 21.676943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092953, 22.534035, 21.828619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419436, 0.061907, 0.905672,
		-0.531404, 0.825612, 0.189670,
		-0.735992, -0.560832, 0.379189,
		21.872156, 22.365786, 21.942375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.349409, 23.065863, 22.290005>,  <22.387350, 22.758368, 21.676943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.349409, 23.065863, 22.290005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.147171, 22.727097, 22.355862>,  <22.025827, 22.523836, 22.395376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.147171, 22.727097, 22.355862>,  <22.349409, 23.065863, 22.290005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.147171, 22.727097, 22.355862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157425, 0.097068, 0.982749,
		-0.848286, 0.522794, 0.084248,
		-0.505597, -0.846914, 0.164643,
		21.995491, 22.473022, 22.405254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.944723, 23.181341, 22.946566>,  <22.349409, 23.065863, 22.290005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.944723, 23.181341, 22.946566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.967308, 22.787186, 22.882294>,  <21.980860, 22.550692, 22.843731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.967308, 22.787186, 22.882294>,  <21.944723, 23.181341, 22.946566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.967308, 22.787186, 22.882294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342490, -0.132054, 0.930195,
		-0.937823, -0.107553, 0.330030,
		0.056463, -0.985390, -0.160680,
		21.984247, 22.491570, 22.834089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.686655, 22.862961, 23.599583>,  <21.944723, 23.181341, 22.946566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.686655, 22.862961, 23.599583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.892853, 22.563030, 23.433678>,  <22.016571, 22.383072, 23.334135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.892853, 22.563030, 23.433678>,  <21.686655, 22.862961, 23.599583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892853, 22.563030, 23.433678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181031, -0.377809, 0.908013,
		-0.837553, -0.543159, -0.059016,
		0.515493, -0.749826, -0.414764,
		22.047501, 22.338083, 23.309248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.613983, 22.187145, 24.052568>,  <21.686655, 22.862961, 23.599583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.613983, 22.187145, 24.052568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.918983, 22.092083, 23.811867>,  <22.101984, 22.035046, 23.667446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.918983, 22.092083, 23.811867>,  <21.613983, 22.187145, 24.052568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.918983, 22.092083, 23.811867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489666, -0.395922, 0.776835,
		-0.422871, -0.886997, -0.185517,
		0.762501, -0.237660, -0.601756,
		22.147734, 22.020786, 23.631340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665157, 21.529968, 24.149639>,  <21.613983, 22.187145, 24.052568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665157, 21.529968, 24.149639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.017250, 21.678085, 24.030930>,  <22.228506, 21.766956, 23.959703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.017250, 21.678085, 24.030930>,  <21.665157, 21.529968, 24.149639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.017250, 21.678085, 24.030930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429329, -0.355000, 0.830453,
		0.202157, -0.858404, -0.471460,
		0.880233, 0.370293, -0.296772,
		22.281321, 21.789173, 23.941898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.144142, 20.951992, 24.292145>,  <21.665157, 21.529968, 24.149639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.144142, 20.951992, 24.292145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.362343, 21.285526, 24.258337>,  <22.493263, 21.485647, 24.238052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.362343, 21.285526, 24.258337>,  <22.144142, 20.951992, 24.292145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362343, 21.285526, 24.258337> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545447, -0.276643, 0.791174,
		0.636328, -0.477688, -0.605724,
		0.545503, 0.833836, -0.084517,
		22.525993, 21.535677, 24.232983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843580, 20.673147, 24.536572>,  <22.144142, 20.951992, 24.292145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843580, 20.673147, 24.536572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.804718, 21.071083, 24.548269>,  <22.781401, 21.309845, 24.555288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.804718, 21.071083, 24.548269>,  <22.843580, 20.673147, 24.536572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.804718, 21.071083, 24.548269> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574928, 0.032113, 0.817574,
		0.812416, 0.096243, -0.575081,
		-0.097153, 0.994840, 0.029243,
		22.775572, 21.369535, 24.557043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.730986, 20.029547, 24.035582>,  <22.843580, 20.673147, 24.536572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.730986, 20.029547, 24.035582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.772079, 19.649097, 24.152073>,  <22.796736, 19.420828, 24.221968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.772079, 19.649097, 24.152073>,  <22.730986, 20.029547, 24.035582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.772079, 19.649097, 24.152073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151189, -0.304305, -0.940500,
		0.983152, 0.052591, -0.175062,
		0.102734, -0.951122, 0.291226,
		22.802900, 19.363760, 24.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.054169, 19.730110, 23.462763>,  <22.730986, 20.029547, 24.035582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.054169, 19.730110, 23.462763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.909382, 19.422344, 23.673281>,  <22.822510, 19.237684, 23.799591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.909382, 19.422344, 23.673281>,  <23.054169, 19.730110, 23.462763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.909382, 19.422344, 23.673281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282568, -0.447452, -0.848494,
		0.888333, -0.455841, -0.055449,
		-0.361967, -0.769413, 0.526293,
		22.800791, 19.191521, 23.831169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.377001, 19.178267, 23.139751>,  <23.054169, 19.730110, 23.462763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.377001, 19.178267, 23.139751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.048161, 19.065277, 23.337481>,  <22.850857, 18.997484, 23.456118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.048161, 19.065277, 23.337481>,  <23.377001, 19.178267, 23.139751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.048161, 19.065277, 23.337481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392392, -0.347984, -0.851431,
		0.412524, -0.893932, 0.175238,
		-0.822102, -0.282474, 0.494324,
		22.801529, 18.980536, 23.485777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.232924, 18.494869, 23.082899>,  <23.377001, 19.178267, 23.139751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.232924, 18.494869, 23.082899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.874912, 18.657421, 23.156420>,  <22.660107, 18.754951, 23.200531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.874912, 18.657421, 23.156420>,  <23.232924, 18.494869, 23.082899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.874912, 18.657421, 23.156420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360147, -0.415405, -0.835304,
		-0.263099, -0.813814, 0.518156,
		-0.895027, 0.406380, 0.183800,
		22.606403, 18.779335, 23.211559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.743877, 17.970242, 22.799953>,  <23.232924, 18.494869, 23.082899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.743877, 17.970242, 22.799953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.537922, 18.308632, 22.855402>,  <22.414349, 18.511665, 22.888670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.537922, 18.308632, 22.855402>,  <22.743877, 17.970242, 22.799953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.537922, 18.308632, 22.855402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531035, -0.187815, -0.826273,
		-0.672972, -0.499050, 0.545946,
		-0.514889, 0.845976, 0.138619,
		22.383455, 18.562424, 22.896988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.993896, 17.869230, 22.596981>,  <22.743877, 17.970242, 22.799953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.993896, 17.869230, 22.596981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.021107, 18.268280, 22.592583>,  <22.037434, 18.507710, 22.589943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.021107, 18.268280, 22.592583>,  <21.993896, 17.869230, 22.596981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021107, 18.268280, 22.592583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261843, 0.007218, -0.965084,
		-0.962710, 0.068530, 0.261711,
		0.068026, 0.997623, -0.010996,
		22.041515, 18.567568, 22.589285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.329472, 18.095520, 22.278305>,  <21.993896, 17.869230, 22.596981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.329472, 18.095520, 22.278305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.615044, 18.372097, 22.234112>,  <21.786386, 18.538044, 22.207596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.615044, 18.372097, 22.234112>,  <21.329472, 18.095520, 22.278305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615044, 18.372097, 22.234112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155259, 0.002459, -0.987871,
		-0.682785, 0.722426, 0.109108,
		0.713932, 0.691443, -0.110484,
		21.829224, 18.579531, 22.200966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.621769, 18.287127, 22.228300>,  <21.329472, 18.095520, 22.278305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.621769, 18.287127, 22.228300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.371162, 17.979271, 22.179100>,  <20.220798, 17.794558, 22.149580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.371162, 17.979271, 22.179100>,  <20.621769, 18.287127, 22.228300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.371162, 17.979271, 22.179100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203209, -0.313654, 0.927538,
		-0.752450, 0.556126, 0.352908,
		-0.626519, -0.769640, -0.122999,
		20.183207, 17.748379, 22.142200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.046757, 18.263338, 22.761171>,  <20.621769, 18.287127, 22.228300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.046757, 18.263338, 22.761171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.108341, 17.895691, 22.616110>,  <20.145292, 17.675102, 22.529074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.108341, 17.895691, 22.616110>,  <20.046757, 18.263338, 22.761171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108341, 17.895691, 22.616110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004612, -0.366356, 0.930463,
		-0.988066, -0.144928, -0.052166,
		0.153961, -0.919118, -0.362652,
		20.154530, 17.619955, 22.507315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.723398, 17.840248, 23.244907>,  <20.046757, 18.263338, 22.761171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.723398, 17.840248, 23.244907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.976849, 17.615143, 23.032562>,  <20.128918, 17.480080, 22.905155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.976849, 17.615143, 23.032562>,  <19.723398, 17.840248, 23.244907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976849, 17.615143, 23.032562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339255, -0.414574, 0.844414,
		-0.695289, -0.715139, -0.071764,
		0.633624, -0.562765, -0.530863,
		20.166935, 17.446314, 22.873302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.587166, 17.172037, 23.489870>,  <19.723398, 17.840248, 23.244907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.587166, 17.172037, 23.489870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.950661, 17.159622, 23.323383>,  <20.168756, 17.152174, 23.223492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.950661, 17.159622, 23.323383>,  <19.587166, 17.172037, 23.489870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950661, 17.159622, 23.323383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331912, -0.550873, 0.765750,
		-0.253050, -0.834011, -0.490296,
		0.908736, -0.031038, -0.416217,
		20.223282, 17.150311, 23.198519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819567, 16.598475, 23.706179>,  <19.587166, 17.172037, 23.489870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819567, 16.598475, 23.706179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.155506, 16.788498, 23.601130>,  <20.357071, 16.902512, 23.538099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.155506, 16.788498, 23.601130>,  <19.819567, 16.598475, 23.706179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155506, 16.788498, 23.601130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449490, -0.337399, 0.827116,
		0.304322, -0.812699, -0.496899,
		0.839849, 0.475061, -0.262622,
		20.407461, 16.931017, 23.522343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.364956, 16.041100, 23.617958>,  <19.819567, 16.598475, 23.706179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.364956, 16.041100, 23.617958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.542458, 16.392044, 23.690969>,  <20.648958, 16.602612, 23.734777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.542458, 16.392044, 23.690969>,  <20.364956, 16.041100, 23.617958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542458, 16.392044, 23.690969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488624, -0.407625, 0.771420,
		0.751219, -0.253131, -0.609585,
		0.443753, 0.877363, 0.182530,
		20.675583, 16.655252, 23.745728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.049299, 15.926487, 23.606834>,  <20.364956, 16.041100, 23.617958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.049299, 15.926487, 23.606834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.011372, 16.262234, 23.820927>,  <20.988615, 16.463682, 23.949383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.011372, 16.262234, 23.820927>,  <21.049299, 15.926487, 23.606834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011372, 16.262234, 23.820927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566182, -0.396759, 0.722510,
		0.818809, 0.371546, -0.437614,
		-0.094818, 0.839366, 0.535232,
		20.982925, 16.514044, 23.981497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.604046, 15.906700, 24.008196>,  <21.049299, 15.926487, 23.606834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.604046, 15.906700, 24.008196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.402496, 16.193497, 24.200874>,  <21.281567, 16.365574, 24.316481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.402496, 16.193497, 24.200874>,  <21.604046, 15.906700, 24.008196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402496, 16.193497, 24.200874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336251, -0.350859, 0.873976,
		0.795641, 0.602346, -0.064300,
		-0.503875, 0.716992, 0.481697,
		21.251333, 16.408594, 24.345383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.026890, 16.250336, 24.442320>,  <21.604046, 15.906700, 24.008196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.026890, 16.250336, 24.442320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.662441, 16.312885, 24.594847>,  <21.443771, 16.350414, 24.686363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.662441, 16.312885, 24.594847>,  <22.026890, 16.250336, 24.442320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.662441, 16.312885, 24.594847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310548, -0.347782, 0.884651,
		0.270952, 0.924443, 0.268311,
		-0.911123, 0.156374, 0.381316,
		21.389105, 16.359798, 24.709242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.062389, 19.351601, 9.419028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.684845, 19.267143, 9.520647>,  <17.458317, 19.216469, 9.581618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.684845, 19.267143, 9.520647>,  <18.062389, 19.351601, 9.419028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684845, 19.267143, 9.520647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303296, -0.249181, 0.919739,
		-0.130895, 0.945159, 0.299232,
		-0.943863, -0.211146, 0.254046,
		17.401686, 19.203800, 9.596861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.014706, 19.678476, 9.955906>,  <18.062389, 19.351601, 9.419028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.014706, 19.678476, 9.955906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723907, 19.403824, 9.957477>,  <17.549429, 19.239033, 9.958419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.723907, 19.403824, 9.957477>,  <18.014706, 19.678476, 9.955906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.723907, 19.403824, 9.957477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298624, -0.311018, 0.902270,
		-0.618307, 0.657118, 0.431153,
		-0.726994, -0.686633, 0.003927,
		17.505810, 19.197834, 9.958654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.649691, 19.831213, 10.484691>,  <18.014706, 19.678476, 9.955906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.649691, 19.831213, 10.484691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.573578, 19.446552, 10.405677>,  <17.527910, 19.215755, 10.358269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.573578, 19.446552, 10.405677>,  <17.649691, 19.831213, 10.484691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.573578, 19.446552, 10.405677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266348, -0.244234, 0.932421,
		-0.944908, 0.124812, 0.302608,
		-0.190284, -0.961651, -0.197535,
		17.516493, 19.158056, 10.346416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.336996, 19.619762, 11.031752>,  <17.649691, 19.831213, 10.484691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.336996, 19.619762, 11.031752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.484818, 19.297977, 10.845732>,  <17.573511, 19.104906, 10.734119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.484818, 19.297977, 10.845732>,  <17.336996, 19.619762, 11.031752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484818, 19.297977, 10.845732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250597, -0.395651, 0.883550,
		-0.894780, -0.443060, 0.055381,
		0.369554, -0.804461, -0.465050,
		17.595684, 19.056639, 10.706217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.994001, 19.001936, 11.388529>,  <17.336996, 19.619762, 11.031752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.994001, 19.001936, 11.388529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.343761, 18.925774, 11.210016>,  <17.553617, 18.880077, 11.102909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.343761, 18.925774, 11.210016>,  <16.994001, 19.001936, 11.388529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343761, 18.925774, 11.210016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296478, -0.518431, 0.802078,
		-0.384085, -0.833652, -0.396867,
		0.874402, -0.190404, -0.446281,
		17.606083, 18.868652, 11.076132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.151518, 18.434143, 11.761617>,  <16.994001, 19.001936, 11.388529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.151518, 18.434143, 11.761617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.491226, 18.524483, 11.570732>,  <17.695051, 18.578686, 11.456202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.491226, 18.524483, 11.570732>,  <17.151518, 18.434143, 11.761617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491226, 18.524483, 11.570732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527945, -0.369684, 0.764597,
		-0.003734, -0.901291, -0.433198,
		0.849270, 0.225850, -0.477212,
		17.746008, 18.592237, 11.427568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.642311, 17.908777, 11.924213>,  <17.151518, 18.434143, 11.761617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.642311, 17.908777, 11.924213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.883362, 18.213192, 11.828162>,  <18.027992, 18.395842, 11.770532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.883362, 18.213192, 11.828162>,  <17.642311, 17.908777, 11.924213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.883362, 18.213192, 11.828162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648601, -0.291788, 0.702976,
		0.464924, -0.579382, -0.669449,
		0.602629, 0.761037, -0.240128,
		18.064150, 18.441504, 11.756124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.257254, 17.565104, 12.055516>,  <17.642311, 17.908777, 11.924213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.257254, 17.565104, 12.055516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.378933, 17.943054, 12.007057>,  <18.451941, 18.169825, 11.977982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.378933, 17.943054, 12.007057>,  <18.257254, 17.565104, 12.055516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378933, 17.943054, 12.007057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633378, -0.105622, 0.766600,
		0.711545, -0.309929, -0.630593,
		0.304196, 0.944875, -0.121148,
		18.470192, 18.226517, 11.970713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926313, 17.519039, 12.064984>,  <18.257254, 17.565104, 12.055516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926313, 17.519039, 12.064984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.856628, 17.901031, 12.161038>,  <18.814817, 18.130226, 12.218671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.856628, 17.901031, 12.161038>,  <18.926313, 17.519039, 12.064984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.856628, 17.901031, 12.161038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667657, -0.064695, 0.741653,
		0.723798, 0.289535, -0.626327,
		-0.174214, 0.954979, 0.240136,
		18.804365, 18.187525, 12.233079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556313, 17.853090, 12.305161>,  <18.926313, 17.519039, 12.064984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556313, 17.853090, 12.305161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.289635, 18.107380, 12.460788>,  <19.129629, 18.259954, 12.554164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.289635, 18.107380, 12.460788>,  <19.556313, 17.853090, 12.305161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.289635, 18.107380, 12.460788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642337, 0.225295, 0.732561,
		0.378053, 0.738305, -0.558553,
		-0.666693, 0.635726, 0.389067,
		19.089626, 18.298098, 12.577508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017559, 18.441833, 12.524916>,  <19.556313, 17.853090, 12.305161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017559, 18.441833, 12.524916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.680595, 18.433315, 12.740282>,  <19.478416, 18.428205, 12.869502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.680595, 18.433315, 12.740282>,  <20.017559, 18.441833, 12.524916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680595, 18.433315, 12.740282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536500, 0.059797, 0.841779,
		-0.050120, 0.997984, -0.038949,
		-0.842411, -0.021294, 0.538415,
		19.427872, 18.426928, 12.901807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.145826, 18.845154, 13.209837>,  <20.017559, 18.441833, 12.524916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.145826, 18.845154, 13.209837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818165, 18.638557, 13.309614>,  <19.621569, 18.514599, 13.369481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818165, 18.638557, 13.309614>,  <20.145826, 18.845154, 13.209837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818165, 18.638557, 13.309614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249126, 0.071347, 0.965839,
		-0.516646, 0.853314, 0.070228,
		-0.819154, -0.516493, 0.249444,
		19.572418, 18.483610, 13.384447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.158092, 19.675306, 13.358244>,  <20.145826, 18.845154, 13.209837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.158092, 19.675306, 13.358244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.541611, 19.766148, 13.289972>,  <20.771723, 19.820652, 13.249009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.541611, 19.766148, 13.289972>,  <20.158092, 19.675306, 13.358244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.541611, 19.766148, 13.289972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265404, 0.501763, -0.823283,
		-0.101328, 0.834661, 0.541363,
		0.958798, 0.227101, -0.170680,
		20.829250, 19.834278, 13.238769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.074478, 20.302059, 13.063813>,  <20.158092, 19.675306, 13.358244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.074478, 20.302059, 13.063813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432476, 20.154503, 12.963491>,  <20.647274, 20.065969, 12.903298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.432476, 20.154503, 12.963491>,  <20.074478, 20.302059, 13.063813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.432476, 20.154503, 12.963491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048635, 0.478201, -0.876903,
		0.443417, 0.797022, 0.410046,
		0.894995, -0.368891, -0.250805,
		20.700975, 20.043835, 12.888250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493240, 20.887520, 12.726274>,  <20.074478, 20.302059, 13.063813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493240, 20.887520, 12.726274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.675785, 20.556454, 12.595610>,  <20.785311, 20.357815, 12.517212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.675785, 20.556454, 12.595610>,  <20.493240, 20.887520, 12.726274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675785, 20.556454, 12.595610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070333, 0.399522, -0.914022,
		0.887011, 0.394148, 0.240538,
		0.456360, -0.827665, -0.326659,
		20.812693, 20.308155, 12.497612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.957865, 21.127731, 12.327804>,  <20.493240, 20.887520, 12.726274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.957865, 21.127731, 12.327804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.959785, 20.756348, 12.179241>,  <20.960938, 20.533518, 12.090104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.959785, 20.756348, 12.179241>,  <20.957865, 21.127731, 12.327804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.959785, 20.756348, 12.179241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197662, 0.364963, -0.909797,
		0.980258, -0.069043, 0.185274,
		0.004803, -0.928458, -0.371406,
		20.961226, 20.477810, 12.067820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535545, 21.112350, 11.930462>,  <20.957865, 21.127731, 12.327804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535545, 21.112350, 11.930462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.306190, 20.817959, 11.786482>,  <21.168577, 20.641323, 11.700094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.306190, 20.817959, 11.786482>,  <21.535545, 21.112350, 11.930462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306190, 20.817959, 11.786482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272520, 0.242996, -0.930959,
		0.772633, -0.631892, 0.061239,
		-0.573385, -0.735979, -0.359950,
		21.134174, 20.597166, 11.678496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.919949, 20.780636, 11.329783>,  <21.535545, 21.112350, 11.930462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.919949, 20.780636, 11.329783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.538452, 20.672562, 11.277047>,  <21.309555, 20.607718, 11.245405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.538452, 20.672562, 11.277047>,  <21.919949, 20.780636, 11.329783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.538452, 20.672562, 11.277047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113918, 0.081043, -0.990179,
		0.278218, -0.959391, -0.046515,
		-0.953739, -0.270187, -0.131840,
		21.252331, 20.591505, 11.237495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861197, 20.292074, 10.715062>,  <21.919949, 20.780636, 11.329783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861197, 20.292074, 10.715062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.491634, 20.435303, 10.768997>,  <21.269897, 20.521240, 10.801358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.491634, 20.435303, 10.768997>,  <21.861197, 20.292074, 10.715062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491634, 20.435303, 10.768997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070995, 0.185853, -0.980009,
		-0.375974, -0.915010, -0.146289,
		-0.923907, 0.358072, 0.134837,
		21.214462, 20.542725, 10.809448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.551794, 20.093246, 10.129444>,  <21.861197, 20.292074, 10.715062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.551794, 20.093246, 10.129444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.287109, 20.359840, 10.266811>,  <21.128298, 20.519796, 10.349232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.287109, 20.359840, 10.266811>,  <21.551794, 20.093246, 10.129444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287109, 20.359840, 10.266811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289629, 0.195258, -0.937011,
		-0.691557, -0.719496, 0.063828,
		-0.661713, 0.666483, 0.343419,
		21.088596, 20.559786, 10.369837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981726, 20.057989, 9.801406>,  <21.551794, 20.093246, 10.129444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981726, 20.057989, 9.801406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.904552, 20.425503, 9.939167>,  <20.858248, 20.646011, 10.021824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.904552, 20.425503, 9.939167>,  <20.981726, 20.057989, 9.801406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.904552, 20.425503, 9.939167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293168, 0.280986, -0.913838,
		-0.936392, -0.277277, 0.215147,
		-0.192933, 0.918784, 0.344402,
		20.846672, 20.701138, 10.042487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.343790, 20.203213, 9.564610>,  <20.981726, 20.057989, 9.801406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.343790, 20.203213, 9.564610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.545959, 20.540123, 9.639569>,  <20.667261, 20.742270, 9.684545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.545959, 20.540123, 9.639569>,  <20.343790, 20.203213, 9.564610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.545959, 20.540123, 9.639569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329320, 0.389032, -0.860350,
		-0.797556, 0.373127, 0.474005,
		0.505423, 0.842277, 0.187396,
		20.697586, 20.792807, 9.695788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820974, 20.825825, 9.509499>,  <20.343790, 20.203213, 9.564610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820974, 20.825825, 9.509499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194099, 20.961033, 9.459535>,  <20.417974, 21.042158, 9.429556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.194099, 20.961033, 9.459535>,  <19.820974, 20.825825, 9.509499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194099, 20.961033, 9.459535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335821, 0.689665, -0.641551,
		-0.130711, 0.640394, 0.756842,
		0.932812, 0.338021, -0.124911,
		20.473944, 21.062439, 9.422061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.665409, 21.363070, 9.205123>,  <19.820974, 20.825825, 9.509499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.665409, 21.363070, 9.205123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059929, 21.377316, 9.140692>,  <20.296640, 21.385862, 9.102034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.059929, 21.377316, 9.140692>,  <19.665409, 21.363070, 9.205123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059929, 21.377316, 9.140692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144528, 0.657309, -0.739633,
		0.079535, 0.752779, 0.653451,
		0.986299, 0.035615, -0.161077,
		20.355818, 21.388000, 9.092369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.850773, 22.067322, 8.991256>,  <19.665409, 21.363070, 9.205123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.850773, 22.067322, 8.991256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.141464, 21.830139, 8.852539>,  <20.315880, 21.687830, 8.769309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.141464, 21.830139, 8.852539>,  <19.850773, 22.067322, 8.991256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.141464, 21.830139, 8.852539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022623, 0.483915, -0.874823,
		0.686550, 0.643606, 0.338261,
		0.726730, -0.592957, -0.346792,
		20.359484, 21.652252, 8.748502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.362038, 22.509321, 8.617782>,  <19.850773, 22.067322, 8.991256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.362038, 22.509321, 8.617782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.443176, 22.151623, 8.458194>,  <20.491859, 21.937004, 8.362441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.443176, 22.151623, 8.458194>,  <20.362038, 22.509321, 8.617782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.443176, 22.151623, 8.458194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029015, 0.412749, -0.910382,
		0.978781, 0.173090, 0.109670,
		0.202844, -0.894247, -0.398969,
		20.504030, 21.883348, 8.338503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790064, 22.357311, 9.123190>,  <20.362038, 22.509321, 8.617782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790064, 22.357311, 9.123190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.975666, 22.525642, 8.811395>,  <21.087029, 22.626640, 8.624318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.975666, 22.525642, 8.811395>,  <20.790064, 22.357311, 9.123190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.975666, 22.525642, 8.811395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826092, 0.112103, 0.552272,
		0.319794, -0.900187, -0.295626,
		0.464008, 0.420828, -0.779487,
		21.114868, 22.651892, 8.577548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.452312, 22.971525, 9.565399>,  <20.790064, 22.357311, 9.123190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.452312, 22.971525, 9.565399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.138607, 23.188080, 9.686614>,  <19.950384, 23.318012, 9.759343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.138607, 23.188080, 9.686614>,  <20.452312, 22.971525, 9.565399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138607, 23.188080, 9.686614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048158, -0.433839, 0.899702,
		0.618555, 0.720198, 0.314173,
		-0.784264, 0.541386, 0.303037,
		19.903328, 23.350496, 9.777525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.616493, 23.227314, 10.318029>,  <20.452312, 22.971525, 9.565399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.616493, 23.227314, 10.318029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.222969, 23.232201, 10.246511>,  <19.986855, 23.235132, 10.203601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.222969, 23.232201, 10.246511>,  <20.616493, 23.227314, 10.318029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.222969, 23.232201, 10.246511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172638, -0.332333, 0.927228,
		-0.048092, 0.943083, 0.329062,
		-0.983811, 0.012216, -0.178794,
		19.927826, 23.235865, 10.192873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.404083, 23.509493, 10.980160>,  <20.616493, 23.227314, 10.318029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.404083, 23.509493, 10.980160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.079723, 23.333797, 10.825491>,  <19.885107, 23.228380, 10.732690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.079723, 23.333797, 10.825491>,  <20.404083, 23.509493, 10.980160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079723, 23.333797, 10.825491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229148, -0.369663, 0.900467,
		-0.538456, 0.818793, 0.199109,
		-0.810899, -0.439237, -0.386672,
		19.836454, 23.202026, 10.709490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863888, 23.819595, 11.321940>,  <20.404083, 23.509493, 10.980160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863888, 23.819595, 11.321940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.716103, 23.473881, 11.185411>,  <19.627432, 23.266451, 11.103495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.716103, 23.473881, 11.185411>,  <19.863888, 23.819595, 11.321940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.716103, 23.473881, 11.185411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232294, -0.269745, 0.934493,
		-0.899741, 0.424550, -0.101108,
		-0.369465, -0.864289, -0.341321,
		19.605263, 23.214594, 11.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.204901, 23.740089, 11.696701>,  <19.863888, 23.819595, 11.321940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.204901, 23.740089, 11.696701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.327614, 23.381058, 11.570062>,  <19.401241, 23.165638, 11.494078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.327614, 23.381058, 11.570062>,  <19.204901, 23.740089, 11.696701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.327614, 23.381058, 11.570062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122634, -0.367143, 0.922045,
		-0.943846, -0.244042, -0.222707,
		0.306783, -0.897580, -0.316598,
		19.419649, 23.111784, 11.475082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.763216, 23.350454, 12.102593>,  <19.204901, 23.740089, 11.696701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.763216, 23.350454, 12.102593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.030434, 23.070782, 12.000724>,  <19.190765, 22.902979, 11.939602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.030434, 23.070782, 12.000724>,  <18.763216, 23.350454, 12.102593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.030434, 23.070782, 12.000724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135684, -0.450968, 0.882167,
		-0.731646, -0.554772, -0.396134,
		0.668045, -0.699183, -0.254675,
		19.230846, 22.861027, 11.924321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.449448, 22.750189, 12.347712>,  <18.763216, 23.350454, 12.102593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.449448, 22.750189, 12.347712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.831596, 22.645737, 12.292472>,  <19.060886, 22.583065, 12.259328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.831596, 22.645737, 12.292472>,  <18.449448, 22.750189, 12.347712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.831596, 22.645737, 12.292472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003815, -0.478366, 0.878152,
		-0.295374, -0.838437, -0.458015,
		0.955374, -0.261131, -0.138098,
		19.118208, 22.567396, 12.251042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.467571, 22.085688, 12.544186>,  <18.449448, 22.750189, 12.347712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.467571, 22.085688, 12.544186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.838238, 22.234280, 12.567128>,  <19.060638, 22.323435, 12.580894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.838238, 22.234280, 12.567128>,  <18.467571, 22.085688, 12.544186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838238, 22.234280, 12.567128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117851, -0.432035, 0.894123,
		0.356929, -0.821795, -0.444132,
		0.926667, 0.371480, 0.057357,
		19.116238, 22.345724, 12.584335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764814, 21.517111, 12.731637>,  <18.467571, 22.085688, 12.544186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.764814, 21.517111, 12.731637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.997368, 21.824341, 12.839008>,  <19.136900, 22.008678, 12.903431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.997368, 21.824341, 12.839008>,  <18.764814, 21.517111, 12.731637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997368, 21.824341, 12.839008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278745, -0.497978, 0.821169,
		0.764390, -0.402593, -0.503614,
		0.581386, 0.768073, 0.268429,
		19.171783, 22.054762, 12.919537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294739, 21.115974, 13.001056>,  <18.764814, 21.517111, 12.731637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294739, 21.115974, 13.001056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378105, 21.494347, 13.100479>,  <19.428125, 21.721369, 13.160133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.378105, 21.494347, 13.100479>,  <19.294739, 21.115974, 13.001056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.378105, 21.494347, 13.100479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376888, -0.312188, 0.872063,
		0.902506, -0.088075, -0.421575,
		0.208418, 0.945929, 0.248557,
		19.440630, 21.778126, 13.175046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970463, 21.103180, 13.350703>,  <19.294739, 21.115974, 13.001056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970463, 21.103180, 13.350703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.781925, 21.436043, 13.467562>,  <19.668802, 21.635759, 13.537677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.781925, 21.436043, 13.467562>,  <19.970463, 21.103180, 13.350703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.781925, 21.436043, 13.467562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217919, -0.211092, 0.952865,
		0.854602, 0.512794, -0.081845,
		-0.471346, 0.832156, 0.292147,
		19.640522, 21.685690, 13.555206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.432116, 21.290718, 13.954527>,  <19.970463, 21.103180, 13.350703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.432116, 21.290718, 13.954527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.090679, 21.496716, 13.985941>,  <19.885818, 21.620314, 14.004789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.090679, 21.496716, 13.985941>,  <20.432116, 21.290718, 13.954527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.090679, 21.496716, 13.985941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101150, 0.015960, 0.994743,
		0.511033, 0.857045, -0.065715,
		-0.853589, 0.514994, 0.078534,
		19.834602, 21.651215, 14.009501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.460564, 21.675850, 14.551302>,  <20.432116, 21.290718, 13.954527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.460564, 21.675850, 14.551302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066570, 21.689709, 14.483648>,  <19.830173, 21.698025, 14.443056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.066570, 21.689709, 14.483648>,  <20.460564, 21.675850, 14.551302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066570, 21.689709, 14.483648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171636, -0.090733, 0.980973,
		0.018644, 0.995272, 0.095318,
		-0.984984, 0.034649, -0.169133,
		19.771074, 21.700104, 14.432908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155310, 22.214560, 15.008929>,  <20.460564, 21.675850, 14.551302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155310, 22.214560, 15.008929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.891251, 21.930054, 14.912340>,  <19.732815, 21.759350, 14.854386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.891251, 21.930054, 14.912340>,  <20.155310, 22.214560, 15.008929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891251, 21.930054, 14.912340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257855, -0.087351, 0.962227,
		-0.705489, 0.697478, -0.125738,
		-0.660149, -0.711263, -0.241473,
		19.693207, 21.716675, 14.839898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495123, 22.421001, 15.360291>,  <20.155310, 22.214560, 15.008929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495123, 22.421001, 15.360291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487381, 22.029140, 15.280382>,  <19.482737, 21.794024, 15.232436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.487381, 22.029140, 15.280382>,  <19.495123, 22.421001, 15.360291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487381, 22.029140, 15.280382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143059, -0.195041, 0.970306,
		-0.989525, 0.047359, -0.136373,
		-0.019355, -0.979651, -0.199774,
		19.481575, 21.735245, 15.220450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.929203, 22.238758, 15.604526>,  <19.495123, 22.421001, 15.360291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.929203, 22.238758, 15.604526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.135429, 21.896408, 15.588167>,  <19.259165, 21.690998, 15.578352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.135429, 21.896408, 15.588167>,  <18.929203, 22.238758, 15.604526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.135429, 21.896408, 15.588167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172608, -0.150488, 0.973427,
		-0.839285, -0.494806, -0.225318,
		0.515565, -0.855874, -0.040895,
		19.290098, 21.639647, 15.575899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.536156, 21.891052, 16.061005>,  <18.929203, 22.238758, 15.604526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.536156, 21.891052, 16.061005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.870846, 21.675781, 16.020487>,  <19.071659, 21.546619, 15.996177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.870846, 21.675781, 16.020487>,  <18.536156, 21.891052, 16.061005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870846, 21.675781, 16.020487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139886, 0.031212, 0.989676,
		-0.529459, -0.842254, 0.101399,
		0.836723, -0.538176, -0.101294,
		19.121862, 21.514328, 15.990099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.525269, 21.279640, 16.521357>,  <18.536156, 21.891052, 16.061005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.525269, 21.279640, 16.521357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916164, 21.324116, 16.449087>,  <19.150702, 21.350801, 16.405725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.916164, 21.324116, 16.449087>,  <18.525269, 21.279640, 16.521357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.916164, 21.324116, 16.449087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183645, -0.017011, 0.982845,
		0.106211, -0.993653, -0.037044,
		0.977238, 0.111192, -0.180673,
		19.209335, 21.357473, 16.394886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.861225, 20.779142, 16.952566>,  <18.525269, 21.279640, 16.521357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.861225, 20.779142, 16.952566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.123341, 21.061798, 16.845787>,  <19.280609, 21.231392, 16.781719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.123341, 21.061798, 16.845787>,  <18.861225, 20.779142, 16.952566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.123341, 21.061798, 16.845787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267798, 0.113116, 0.956812,
		0.706315, -0.698476, -0.115112,
		0.655289, 0.706638, -0.266946,
		19.319927, 21.273788, 16.765703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.401787, 20.625118, 17.330954>,  <18.861225, 20.779142, 16.952566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.401787, 20.625118, 17.330954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446129, 21.011341, 17.236792>,  <19.472734, 21.243074, 17.180294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.446129, 21.011341, 17.236792>,  <19.401787, 20.625118, 17.330954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.446129, 21.011341, 17.236792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132408, 0.220403, 0.966380,
		0.984977, -0.138297, -0.103414,
		0.110854, 0.965555, -0.235404,
		19.479385, 21.301008, 17.166170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.051397, 20.865181, 17.560463>,  <19.401787, 20.625118, 17.330954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.051397, 20.865181, 17.560463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.857109, 21.214504, 17.545458>,  <19.740536, 21.424099, 17.536455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.857109, 21.214504, 17.545458>,  <20.051397, 20.865181, 17.560463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.857109, 21.214504, 17.545458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311089, 0.212807, 0.926249,
		0.816885, 0.438227, -0.375041,
		-0.485719, 0.873310, -0.037511,
		19.711393, 21.476498, 17.534204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493460, 21.277882, 17.853405>,  <20.051397, 20.865181, 17.560463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493460, 21.277882, 17.853405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.165470, 21.506516, 17.865648>,  <19.968678, 21.643696, 17.872993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.165470, 21.506516, 17.865648>,  <20.493460, 21.277882, 17.853405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165470, 21.506516, 17.865648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289375, 0.367802, 0.883733,
		0.493870, 0.733493, -0.466990,
		-0.819972, 0.571585, 0.030608,
		19.919479, 21.677990, 17.874830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732433, 22.029287, 18.039404>,  <20.493460, 21.277882, 17.853405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.732433, 22.029287, 18.039404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.356491, 21.952080, 18.152124>,  <20.130926, 21.905756, 18.219757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.356491, 21.952080, 18.152124>,  <20.732433, 22.029287, 18.039404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356491, 21.952080, 18.152124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223279, 0.277175, 0.934516,
		-0.258486, 0.941233, -0.217408,
		-0.939857, -0.193017, 0.281803,
		20.074533, 21.894175, 18.236666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.586704, 22.572277, 18.225756>,  <20.732433, 22.029287, 18.039404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.586704, 22.572277, 18.225756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312309, 22.331474, 18.389225>,  <20.147673, 22.186993, 18.487307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.312309, 22.331474, 18.389225>,  <20.586704, 22.572277, 18.225756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312309, 22.331474, 18.389225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248248, 0.334316, 0.909178,
		-0.683955, 0.725137, -0.079890,
		-0.685987, -0.602005, 0.408671,
		20.106514, 22.150873, 18.511826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.353180, 22.956972, 18.823471>,  <20.586704, 22.572277, 18.225756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.353180, 22.956972, 18.823471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249577, 22.576378, 18.889906>,  <20.187414, 22.348021, 18.929766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.249577, 22.576378, 18.889906>,  <20.353180, 22.956972, 18.823471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.249577, 22.576378, 18.889906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200051, 0.115378, 0.972968,
		-0.944930, 0.285234, 0.160462,
		-0.259010, -0.951488, 0.166086,
		20.171873, 22.290932, 18.939732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.885767, 23.039318, 19.358549>,  <20.353180, 22.956972, 18.823471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.885767, 23.039318, 19.358549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.054802, 22.677113, 19.343231>,  <20.156223, 22.459789, 19.334040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.054802, 22.677113, 19.343231>,  <19.885767, 23.039318, 19.358549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054802, 22.677113, 19.343231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348673, 0.123429, 0.929082,
		-0.836568, -0.405972, 0.367887,
		0.422589, -0.905512, -0.038295,
		20.181580, 22.405458, 19.331743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.558743, 22.600086, 19.802483>,  <19.885767, 23.039318, 19.358549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.558743, 22.600086, 19.802483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.926476, 22.446384, 19.768604>,  <20.147116, 22.354164, 19.748278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.926476, 22.446384, 19.768604>,  <19.558743, 22.600086, 19.802483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.926476, 22.446384, 19.768604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082108, -0.023167, 0.996354,
		-0.384814, -0.922937, 0.010253,
		0.919335, -0.384253, -0.084696,
		20.202276, 22.331108, 19.743196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.855526, 22.565855, 19.869810>,  <19.558743, 22.600086, 19.802483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.855526, 22.565855, 19.869810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.514061, 22.711975, 20.018305>,  <18.309181, 22.799646, 20.107401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.514061, 22.711975, 20.018305>,  <18.855526, 22.565855, 19.869810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.514061, 22.711975, 20.018305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358486, 0.104952, -0.927617,
		-0.377819, -0.924955, 0.041361,
		-0.853663, 0.365298, 0.371237,
		18.257961, 22.821564, 20.129675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389778, 22.196465, 19.596085>,  <18.855526, 22.565855, 19.869810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389778, 22.196465, 19.596085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.183506, 22.527962, 19.683043>,  <18.059742, 22.726860, 19.735216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.183506, 22.527962, 19.683043>,  <18.389778, 22.196465, 19.596085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.183506, 22.527962, 19.683043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302738, 0.061115, -0.951112,
		-0.801512, -0.556284, 0.219375,
		-0.515682, 0.828741, 0.217393,
		18.028801, 22.776585, 19.748260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624954, 22.128422, 19.357515>,  <18.389778, 22.196465, 19.596085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.624954, 22.128422, 19.357515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.694080, 22.520748, 19.393593>,  <17.735556, 22.756144, 19.415239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.694080, 22.520748, 19.393593>,  <17.624954, 22.128422, 19.357515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694080, 22.520748, 19.393593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445362, 0.159488, -0.881031,
		-0.878515, 0.112085, 0.464380,
		0.172813, 0.980816, 0.090195,
		17.745924, 22.814993, 19.420650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.921215, 22.591806, 19.203468>,  <17.624954, 22.128422, 19.357515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.921215, 22.591806, 19.203468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241158, 22.821766, 19.134506>,  <17.433123, 22.959742, 19.093128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.241158, 22.821766, 19.134506>,  <16.921215, 22.591806, 19.203468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241158, 22.821766, 19.134506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465314, 0.412536, -0.783133,
		-0.379099, 0.706615, 0.597477,
		0.799855, 0.574899, -0.172406,
		17.481113, 22.994236, 19.082785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.553860, 23.162193, 18.928778>,  <16.921215, 22.591806, 19.203468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.553860, 23.162193, 18.928778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.938477, 23.233643, 18.845320>,  <17.169247, 23.276512, 18.795244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.938477, 23.233643, 18.845320>,  <16.553860, 23.162193, 18.928778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938477, 23.233643, 18.845320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262496, 0.374025, -0.889495,
		-0.080846, 0.910054, 0.406528,
		0.961540, 0.178624, -0.208647,
		17.226938, 23.287230, 18.782726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
