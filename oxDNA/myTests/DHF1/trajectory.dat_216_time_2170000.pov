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
	<5.067237, 1.213709, 0.628574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.422115, 1.241096, 0.446060>,  <5.635042, 1.257529, 0.336552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.422115, 1.241096, 0.446060>,  <5.067237, 1.213709, 0.628574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.422115, 1.241096, 0.446060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281849, 0.702544, 0.653448,
		0.365300, -0.708340, 0.603996,
		0.887196, 0.068469, -0.456284,
		5.688274, 1.261637, 0.309175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.319687, 0.571471, 0.237778>,  <5.067237, 1.213709, 0.628574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.319687, 0.571471, 0.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.479641, 0.299484, 0.483620>,  <5.575613, 0.136292, 0.631125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.479641, 0.299484, 0.483620>,  <5.319687, 0.571471, 0.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.479641, 0.299484, 0.483620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915806, -0.269108, 0.298129,
		-0.037323, -0.682074, -0.730330,
		0.399884, -0.679967, 0.614604,
		5.599606, 0.095494, 0.668001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.085521, -0.167692, 0.085282>,  <5.319687, 0.571471, 0.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.085521, -0.167692, 0.085282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.154041, -0.070129, 0.467102>,  <5.195153, -0.011592, 0.696194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.154041, -0.070129, 0.467102>,  <5.085521, -0.167692, 0.085282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.154041, -0.070129, 0.467102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960438, -0.174593, 0.216969,
		0.219579, -0.953953, 0.204351,
		0.171300, 0.243908, 0.954550,
		5.205431, 0.003043, 0.753467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.016864, -0.699066, 0.652752>,  <5.085521, -0.167692, 0.085282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.016864, -0.699066, 0.652752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932816, -0.320587, 0.751190>,  <4.882387, -0.093500, 0.810253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.932816, -0.320587, 0.751190>,  <5.016864, -0.699066, 0.652752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.932816, -0.320587, 0.751190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952785, -0.254615, 0.165447,
		0.219204, -0.199712, 0.955021,
		-0.210120, 0.946196, 0.246095,
		4.869780, -0.036728, 0.825019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.437373, -0.745380, 1.137879>,  <5.016864, -0.699066, 0.652752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.437373, -0.745380, 1.137879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.423794, -0.375984, 0.985031>,  <4.415646, -0.154347, 0.893322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.423794, -0.375984, 0.985031>,  <4.437373, -0.745380, 1.137879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.423794, -0.375984, 0.985031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995119, 0.004211, 0.098587,
		0.092654, 0.383602, 0.918839,
		-0.033949, 0.923489, -0.382120,
		4.413609, -0.098937, 0.870395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.962909, -0.396338, 1.542794>,  <4.437373, -0.745380, 1.137879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.962909, -0.396338, 1.542794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981319, -0.202805, 1.193214>,  <3.992365, -0.086685, 0.983467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.981319, -0.202805, 1.193214>,  <3.962909, -0.396338, 1.542794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.981319, -0.202805, 1.193214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996675, 0.081128, -0.007575,
		0.067237, 0.871392, 0.485958,
		0.046025, 0.483833, -0.873949,
		3.995127, -0.057655, 0.931030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.480576, 0.137527, 1.638963>,  <3.962909, -0.396338, 1.542794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.480576, 0.137527, 1.638963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.535137, 0.094673, 1.245026>,  <3.567874, 0.068961, 1.008663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.535137, 0.094673, 1.245026>,  <3.480576, 0.137527, 1.638963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.535137, 0.094673, 1.245026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986700, 0.074031, -0.144713,
		0.088412, 0.991485, -0.095612,
		0.136403, -0.107135, -0.984843,
		3.576058, 0.062533, 0.949573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.159773, 0.728362, 1.319277>,  <3.480576, 0.137527, 1.638963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.159773, 0.728362, 1.319277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.173172, 0.425270, 1.058594>,  <3.181211, 0.243415, 0.902184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.173172, 0.425270, 1.058594>,  <3.159773, 0.728362, 1.319277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.173172, 0.425270, 1.058594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986388, 0.079969, -0.143679,
		0.160986, 0.647649, -0.744737,
		0.033497, -0.757730, -0.651708,
		3.183221, 0.197951, 0.863081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.980587, 0.664579, 0.260498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.879339, 0.307953, 0.110275>,  <1.818590, 0.093977, 0.020142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.879339, 0.307953, 0.110275>,  <1.980587, 0.664579, 0.260498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.879339, 0.307953, 0.110275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967139, -0.223595, -0.121029,
		0.023933, -0.393850, 0.918863,
		-0.253120, -0.891565, -0.375556,
		1.803403, 0.040483, -0.002392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.143298, 0.006416, 0.774275>,  <1.980587, 0.664579, 0.260498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.143298, 0.006416, 0.774275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.142412, -0.041077, 0.377106>,  <2.141881, -0.069572, 0.138804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.142412, -0.041077, 0.377106>,  <2.143298, 0.006416, 0.774275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142412, -0.041077, 0.377106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948284, -0.315420, 0.035603,
		-0.317415, -0.941495, 0.113289,
		-0.002214, -0.118731, -0.992924,
		2.141748, -0.076696, 0.079229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.363587, -0.654789, 0.708120>,  <2.143298, 0.006416, 0.774275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.363587, -0.654789, 0.708120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450544, -0.405334, 0.407768>,  <2.502718, -0.255662, 0.227558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.450544, -0.405334, 0.407768>,  <2.363587, -0.654789, 0.708120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.450544, -0.405334, 0.407768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976082, -0.137287, 0.168570,
		0.002041, -0.769564, -0.638566,
		0.217393, 0.623637, -0.750878,
		2.515762, -0.218243, 0.182505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.031583, -0.854272, 0.440208>,  <2.363587, -0.654789, 0.708120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.031583, -0.854272, 0.440208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.960812, -0.464432, 0.385292>,  <2.918349, -0.230527, 0.352342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.960812, -0.464432, 0.385292>,  <3.031583, -0.854272, 0.440208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.960812, -0.464432, 0.385292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960291, 0.201513, 0.192958,
		0.215723, -0.097699, -0.971555,
		-0.176929, 0.974601, -0.137290,
		2.907733, -0.172051, 0.344105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.483684, -0.600232, -0.119923>,  <3.031583, -0.854272, 0.440208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.483684, -0.600232, -0.119923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396172, -0.308624, 0.139511>,  <3.343664, -0.133659, 0.295172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396172, -0.308624, 0.139511>,  <3.483684, -0.600232, -0.119923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396172, -0.308624, 0.139511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975774, 0.163270, 0.145632,
		0.000274, 0.664735, -0.747079,
		-0.218782, 0.729020, 0.648586,
		3.330537, -0.089918, 0.334087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.826512, -0.070940, -0.347537>,  <3.483684, -0.600232, -0.119923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.826512, -0.070940, -0.347537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.731907, 0.003922, 0.033836>,  <3.675144, 0.048838, 0.262660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.731907, 0.003922, 0.033836>,  <3.826512, -0.070940, -0.347537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.731907, 0.003922, 0.033836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938615, 0.297625, 0.174415,
		-0.251123, 0.936158, -0.246058,
		-0.236513, 0.187154, 0.953433,
		3.660953, 0.060068, 0.319866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.090847, 0.569064, -0.211138>,  <3.826512, -0.070940, -0.347537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.090847, 0.569064, -0.211138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044334, 0.398361, 0.147606>,  <4.016427, 0.295939, 0.362852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.044334, 0.398361, 0.147606>,  <4.090847, 0.569064, -0.211138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.044334, 0.398361, 0.147606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892825, 0.350691, 0.282628,
		-0.435135, 0.833603, 0.340242,
		-0.116280, -0.426758, 0.896859,
		4.009450, 0.270334, 0.416664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.150997, 1.085176, 0.294623>,  <4.090847, 0.569064, -0.211138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.150997, 1.085176, 0.294623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242952, 0.734116, 0.462852>,  <4.298126, 0.523480, 0.563790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.242952, 0.734116, 0.462852>,  <4.150997, 1.085176, 0.294623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.242952, 0.734116, 0.462852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959493, 0.276709, 0.052969,
		-0.162865, 0.391361, 0.905711,
		0.229888, -0.877650, 0.420574,
		4.311919, 0.470821, 0.589025>
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
