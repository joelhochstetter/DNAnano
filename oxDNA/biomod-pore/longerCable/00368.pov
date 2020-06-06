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
	<24.649263, 35.087395, 35.052643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323427, 34.861916, 34.997963>,  <24.127926, 34.726627, 34.965157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.323427, 34.861916, 34.997963>,  <24.649263, 35.087395, 35.052643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.323427, 34.861916, 34.997963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483238, -0.529176, -0.697462,
		0.320823, -0.634202, 0.703463,
		-0.814588, -0.563702, -0.136699,
		24.079050, 34.692806, 34.956955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275621, 35.456299, 34.841282>,  <24.649263, 35.087395, 35.052643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275621, 35.456299, 34.841282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566025, 35.182327, 34.816685>,  <25.740267, 35.017944, 34.801926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.566025, 35.182327, 34.816685>,  <25.275621, 35.456299, 34.841282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.566025, 35.182327, 34.816685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608217, 0.597809, 0.522204,
		-0.320914, -0.416524, 0.850601,
		0.726007, -0.684932, -0.061492,
		25.783827, 34.976849, 34.798237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558310, 35.111202, 35.540264>,  <25.275621, 35.456299, 34.841282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558310, 35.111202, 35.540264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852015, 35.114777, 35.268742>,  <26.028236, 35.116920, 35.105827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852015, 35.114777, 35.268742>,  <25.558310, 35.111202, 35.540264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852015, 35.114777, 35.268742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632971, 0.352401, 0.689319,
		0.245374, -0.935806, 0.253097,
		0.734261, 0.008938, -0.678809,
		26.072292, 35.117458, 35.065098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106573, 34.769550, 35.790108>,  <25.558310, 35.111202, 35.540264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106573, 34.769550, 35.790108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302624, 35.026871, 35.554840>,  <26.420254, 35.181263, 35.413681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.302624, 35.026871, 35.554840>,  <26.106573, 34.769550, 35.790108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302624, 35.026871, 35.554840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454327, 0.387326, 0.802225,
		0.743884, -0.660413, -0.102430,
		0.490126, 0.643299, -0.588169,
		26.449661, 35.219860, 35.378387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766108, 34.713242, 35.919201>,  <26.106573, 34.769550, 35.790108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766108, 34.713242, 35.919201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741369, 35.086636, 35.777908>,  <26.726526, 35.310673, 35.693134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.741369, 35.086636, 35.777908>,  <26.766108, 34.713242, 35.919201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741369, 35.086636, 35.777908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455882, 0.341256, 0.822019,
		0.887888, -0.110192, -0.446667,
		-0.061848, 0.933489, -0.353232,
		26.722815, 35.366684, 35.671940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.467932, 34.965553, 35.773045>,  <26.766108, 34.713242, 35.919201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.467932, 34.965553, 35.773045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193604, 35.239670, 35.871048>,  <27.029007, 35.404140, 35.929852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193604, 35.239670, 35.871048>,  <27.467932, 34.965553, 35.773045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193604, 35.239670, 35.871048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492781, 0.189531, 0.849261,
		0.535553, 0.703177, -0.467682,
		-0.685821, 0.685289, 0.245008,
		26.987858, 35.445255, 35.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.846077, 35.513710, 36.113239>,  <27.467932, 34.965553, 35.773045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.846077, 35.513710, 36.113239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477484, 35.600327, 36.242222>,  <27.256327, 35.652294, 36.319611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.477484, 35.600327, 36.242222>,  <27.846077, 35.513710, 36.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.477484, 35.600327, 36.242222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354009, 0.126631, 0.926629,
		0.159819, 0.968027, -0.193346,
		-0.921485, 0.216539, 0.322452,
		27.201038, 35.665287, 36.338959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696823, 36.230606, 36.337261>,  <27.846077, 35.513710, 36.113239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696823, 36.230606, 36.337261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443661, 35.982079, 36.522038>,  <27.291763, 35.832962, 36.632904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443661, 35.982079, 36.522038>,  <27.696823, 36.230606, 36.337261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443661, 35.982079, 36.522038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470281, 0.165454, 0.866868,
		-0.615033, 0.765889, 0.187479,
		-0.632906, -0.621321, 0.461943,
		27.253790, 35.795681, 36.660622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636805, 36.583782, 36.971981>,  <27.696823, 36.230606, 36.337261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636805, 36.583782, 36.971981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507227, 36.216778, 37.064266>,  <27.429480, 35.996574, 37.119637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507227, 36.216778, 37.064266>,  <27.636805, 36.583782, 36.971981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507227, 36.216778, 37.064266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207124, 0.169170, 0.963577,
		-0.923124, 0.359934, 0.135237,
		-0.323946, -0.917513, 0.230716,
		27.410044, 35.941525, 37.133480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139544, 36.750160, 37.492542>,  <27.636805, 36.583782, 36.971981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139544, 36.750160, 37.492542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291643, 36.380322, 37.501686>,  <27.382904, 36.158417, 37.507172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.291643, 36.380322, 37.501686>,  <27.139544, 36.750160, 37.492542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291643, 36.380322, 37.501686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117089, 0.072637, 0.990462,
		-0.917442, -0.373947, 0.135881,
		0.380250, -0.924601, 0.022856,
		27.405718, 36.102940, 37.508541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682009, 36.219677, 37.977936>,  <27.139544, 36.750160, 37.492542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682009, 36.219677, 37.977936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057472, 36.097767, 37.913399>,  <27.282751, 36.024620, 37.874676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057472, 36.097767, 37.913399>,  <26.682009, 36.219677, 37.977936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057472, 36.097767, 37.913399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119677, -0.150882, 0.981281,
		-0.323415, -0.940396, -0.105152,
		0.938659, -0.304777, -0.161341,
		27.339069, 36.006332, 37.864998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889969, 35.695206, 38.541363>,  <26.682009, 36.219677, 37.977936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889969, 35.695206, 38.541363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227110, 35.843086, 38.384941>,  <27.429394, 35.931816, 38.291088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227110, 35.843086, 38.384941>,  <26.889969, 35.695206, 38.541363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227110, 35.843086, 38.384941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423626, -0.007681, 0.905805,
		0.331874, -0.929119, -0.163089,
		0.842853, 0.369702, -0.391050,
		27.479965, 35.953995, 38.267628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026567, 35.834572, 39.294331>,  <26.889969, 35.695206, 38.541363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026567, 35.834572, 39.294331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406357, 35.711700, 39.320068>,  <27.634230, 35.637978, 39.335510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406357, 35.711700, 39.320068>,  <27.026567, 35.834572, 39.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406357, 35.711700, 39.320068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005874, -0.222370, -0.974945,
		0.313794, 0.925306, -0.212939,
		0.949473, -0.307182, 0.064343,
		27.691198, 35.619545, 39.339371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481173, 36.168587, 38.782001>,  <27.026567, 35.834572, 39.294331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481173, 36.168587, 38.782001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696587, 35.838425, 38.849747>,  <27.825836, 35.640327, 38.890392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696587, 35.838425, 38.849747>,  <27.481173, 36.168587, 38.782001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696587, 35.838425, 38.849747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123546, -0.121473, -0.984876,
		0.833496, 0.551315, 0.036558,
		0.538536, -0.825406, 0.169360,
		27.858147, 35.590801, 38.900555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.187094, 36.218945, 38.566795>,  <27.481173, 36.168587, 38.782001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.187094, 36.218945, 38.566795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036362, 35.849106, 38.544468>,  <27.945923, 35.627201, 38.531071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.036362, 35.849106, 38.544468>,  <28.187094, 36.218945, 38.566795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.036362, 35.849106, 38.544468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085835, 0.025148, -0.995992,
		0.922298, -0.380109, 0.069886,
		-0.376828, -0.924600, -0.055820,
		27.923313, 35.571728, 38.527721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605146, 35.961937, 38.052116>,  <28.187094, 36.218945, 38.566795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605146, 35.961937, 38.052116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237375, 35.808212, 38.085472>,  <28.016712, 35.715977, 38.105484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237375, 35.808212, 38.085472>,  <28.605146, 35.961937, 38.052116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237375, 35.808212, 38.085472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168877, 0.194356, -0.966285,
		0.355148, -0.902513, -0.243598,
		-0.919430, -0.384312, 0.083389,
		27.961546, 35.692921, 38.110489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414059, 35.403790, 37.517952>,  <28.605146, 35.961937, 38.052116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414059, 35.403790, 37.517952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076235, 35.561974, 37.662357>,  <27.873541, 35.656883, 37.749001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076235, 35.561974, 37.662357>,  <28.414059, 35.403790, 37.517952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076235, 35.561974, 37.662357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440690, -0.130363, -0.888143,
		-0.304162, -0.909184, 0.284375,
		-0.844557, 0.395461, 0.361017,
		27.822868, 35.680611, 37.770664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.955313, 34.903107, 37.403030>,  <28.414059, 35.403790, 37.517952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.955313, 34.903107, 37.403030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794956, 35.269211, 37.418949>,  <27.698742, 35.488873, 37.428501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.794956, 35.269211, 37.418949>,  <27.955313, 34.903107, 37.403030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794956, 35.269211, 37.418949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498894, -0.181672, -0.847408,
		-0.768368, -0.359576, 0.529448,
		-0.400893, 0.915260, 0.039799,
		27.674688, 35.543789, 37.430889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255478, 34.686283, 37.327858>,  <27.955313, 34.903107, 37.403030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255478, 34.686283, 37.327858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256536, 35.079994, 37.257217>,  <27.257172, 35.316219, 37.214832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.256536, 35.079994, 37.257217>,  <27.255478, 34.686283, 37.327858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.256536, 35.079994, 37.257217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563342, -0.144446, -0.813500,
		-0.826220, 0.101639, 0.554103,
		0.002645, 0.984279, -0.176601,
		27.257330, 35.375278, 37.204235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541176, 34.868137, 37.228989>,  <27.255478, 34.686283, 37.327858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541176, 34.868137, 37.228989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788069, 35.136688, 37.064903>,  <26.936205, 35.297817, 36.966450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788069, 35.136688, 37.064903>,  <26.541176, 34.868137, 37.228989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788069, 35.136688, 37.064903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472540, -0.100538, -0.875556,
		-0.629069, 0.734266, 0.255196,
		0.617234, 0.671375, -0.410216,
		26.973240, 35.338100, 36.941837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375406, 35.563251, 37.255341>,  <26.541176, 34.868137, 37.228989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375406, 35.563251, 37.255341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644630, 35.777245, 37.051071>,  <26.806166, 35.905640, 36.928509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.644630, 35.777245, 37.051071>,  <26.375406, 35.563251, 37.255341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644630, 35.777245, 37.051071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566601, -0.070797, -0.820945,
		-0.475345, 0.841892, 0.255471,
		0.673061, 0.534982, -0.510670,
		26.846548, 35.937740, 36.897869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.026968, 36.029724, 36.767612>,  <26.375406, 35.563251, 37.255341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.026968, 36.029724, 36.767612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391420, 35.941845, 36.628143>,  <26.610092, 35.889118, 36.544464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391420, 35.941845, 36.628143>,  <26.026968, 36.029724, 36.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391420, 35.941845, 36.628143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367154, -0.048463, -0.928897,
		0.187175, 0.974364, -0.124818,
		0.911133, -0.219694, -0.348671,
		26.664761, 35.875938, 36.523540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022776, 36.356098, 36.242172>,  <26.026968, 36.029724, 36.767612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022776, 36.356098, 36.242172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314285, 36.094921, 36.159657>,  <26.489191, 35.938217, 36.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.314285, 36.094921, 36.159657>,  <26.022776, 36.356098, 36.242172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.314285, 36.094921, 36.159657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375591, -0.129267, -0.917726,
		0.572554, 0.746297, -0.339445,
		0.728775, -0.652940, -0.206290,
		26.532917, 35.899040, 36.097771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530117, 36.600430, 35.674778>,  <26.022776, 36.356098, 36.242172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530117, 36.600430, 35.674778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473606, 36.204475, 35.680092>,  <26.439699, 35.966904, 35.683281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.473606, 36.204475, 35.680092>,  <26.530117, 36.600430, 35.674778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473606, 36.204475, 35.680092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332928, 0.034871, -0.942308,
		0.932309, -0.137551, -0.334485,
		-0.141279, -0.989881, 0.013284,
		26.431223, 35.907513, 35.684078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.787798, 36.496140, 35.066730>,  <26.530117, 36.600430, 35.674778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.787798, 36.496140, 35.066730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782146, 36.142391, 35.253357>,  <26.778755, 35.930141, 35.365334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782146, 36.142391, 35.253357>,  <26.787798, 36.496140, 35.066730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782146, 36.142391, 35.253357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216395, -0.452847, -0.864929,
		0.976204, -0.113183, -0.184976,
		-0.014130, -0.884375, 0.466563,
		26.777908, 35.877079, 35.393326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116478, 36.075645, 34.644779>,  <26.787798, 36.496140, 35.066730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116478, 36.075645, 34.644779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899080, 35.819042, 34.861328>,  <26.768642, 35.665081, 34.991257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899080, 35.819042, 34.861328>,  <27.116478, 36.075645, 34.644779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899080, 35.819042, 34.861328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268185, -0.478433, -0.836169,
		0.795420, -0.599639, 0.087981,
		-0.543493, -0.641510, 0.541369,
		26.736032, 35.626591, 35.023739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037880, 35.422226, 34.249584>,  <27.116478, 36.075645, 34.644779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037880, 35.422226, 34.249584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745838, 35.325439, 34.505211>,  <26.570614, 35.267368, 34.658585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745838, 35.325439, 34.505211>,  <27.037880, 35.422226, 34.249584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745838, 35.325439, 34.505211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474076, -0.494185, -0.728720,
		0.492141, -0.835006, 0.246096,
		-0.730102, -0.241965, 0.639065,
		26.526808, 35.252850, 34.696930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.882505, 34.729706, 34.104065>,  <27.037880, 35.422226, 34.249584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.882505, 34.729706, 34.104065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557703, 34.907211, 34.255707>,  <26.362822, 35.013714, 34.346691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.557703, 34.907211, 34.255707>,  <26.882505, 34.729706, 34.104065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.557703, 34.907211, 34.255707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538716, -0.319940, -0.779374,
		-0.224565, -0.837087, 0.498855,
		-0.812007, 0.443762, 0.379104,
		26.314100, 35.040340, 34.369438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297964, 34.360474, 33.857685>,  <26.882505, 34.729706, 34.104065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297964, 34.360474, 33.857685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144567, 34.716438, 33.956470>,  <26.052530, 34.930019, 34.015739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.144567, 34.716438, 33.956470>,  <26.297964, 34.360474, 33.857685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.144567, 34.716438, 33.956470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736397, -0.133264, -0.663295,
		-0.557365, -0.436227, 0.706435,
		-0.383489, 0.889914, 0.246959,
		26.029520, 34.983414, 34.030560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774523, 34.209824, 33.207664>,  <26.297964, 34.360474, 33.857685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774523, 34.209824, 33.207664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071514, 34.174206, 32.942093>,  <27.249708, 34.152836, 32.782749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.071514, 34.174206, 32.942093>,  <26.774523, 34.209824, 33.207664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071514, 34.174206, 32.942093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545250, -0.656096, -0.521767,
		-0.389140, 0.749406, -0.535687,
		0.742477, -0.089043, -0.663927,
		27.294258, 34.147491, 32.742916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515766, 34.157421, 32.521839>,  <26.774523, 34.209824, 33.207664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515766, 34.157421, 32.521839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884214, 34.023434, 32.442505>,  <27.105284, 33.943043, 32.394905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884214, 34.023434, 32.442505>,  <26.515766, 34.157421, 32.521839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884214, 34.023434, 32.442505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379885, -0.662219, -0.645874,
		0.085007, 0.670271, -0.737232,
		0.921120, -0.334967, -0.198333,
		27.160551, 33.922943, 32.383003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570629, 34.017422, 31.749924>,  <26.515766, 34.157421, 32.521839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570629, 34.017422, 31.749924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824858, 33.780426, 31.947914>,  <26.977396, 33.638229, 32.066708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824858, 33.780426, 31.947914>,  <26.570629, 34.017422, 31.749924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824858, 33.780426, 31.947914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270962, -0.771533, -0.575601,
		0.722930, 0.231715, -0.650908,
		0.635572, -0.592490, 0.494978,
		27.015530, 33.602680, 32.096409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.038410, 33.761272, 31.271528>,  <26.570629, 34.017422, 31.749924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.038410, 33.761272, 31.271528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055998, 33.515518, 31.586641>,  <27.066551, 33.368065, 31.775709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055998, 33.515518, 31.586641>,  <27.038410, 33.761272, 31.271528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055998, 33.515518, 31.586641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226385, -0.774158, -0.591125,
		0.973045, -0.152350, -0.173127,
		0.043970, -0.614385, 0.787780,
		27.069189, 33.331203, 31.822975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433414, 33.210693, 31.070398>,  <27.038410, 33.761272, 31.271528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433414, 33.210693, 31.070398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201082, 33.057999, 31.357985>,  <27.061684, 32.966381, 31.530537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.201082, 33.057999, 31.357985>,  <27.433414, 33.210693, 31.070398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.201082, 33.057999, 31.357985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043351, -0.867464, -0.495607,
		0.812869, -0.319032, 0.487301,
		-0.580831, -0.381739, 0.718965,
		27.026833, 32.943478, 31.573673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788801, 32.711899, 31.233068>,  <27.433414, 33.210693, 31.070398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788801, 32.711899, 31.233068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442446, 32.634327, 31.417515>,  <27.234632, 32.587784, 31.528183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.442446, 32.634327, 31.417515>,  <27.788801, 32.711899, 31.233068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442446, 32.634327, 31.417515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131636, -0.977642, -0.163974,
		0.482608, -0.081283, 0.872057,
		-0.865888, -0.193929, 0.461118,
		27.182680, 32.576149, 31.555851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820263, 32.054256, 31.594929>,  <27.788801, 32.711899, 31.233068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820263, 32.054256, 31.594929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424181, 32.109543, 31.587038>,  <27.186531, 32.142715, 31.582304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424181, 32.109543, 31.587038>,  <27.820263, 32.054256, 31.594929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424181, 32.109543, 31.587038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119514, -0.912193, -0.391945,
		-0.072166, -0.385749, 0.919777,
		-0.990206, 0.138211, -0.019727,
		27.127119, 32.151005, 31.581120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358406, 31.436150, 31.871847>,  <27.820263, 32.054256, 31.594929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358406, 31.436150, 31.871847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085247, 31.673140, 31.700909>,  <26.921350, 31.815332, 31.598347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085247, 31.673140, 31.700909>,  <27.358406, 31.436150, 31.871847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085247, 31.673140, 31.700909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422486, -0.797553, -0.430597,
		-0.595947, -0.113508, 0.794961,
		-0.682900, 0.592473, -0.427344,
		26.880377, 31.850882, 31.572704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605946, 31.154631, 32.032608>,  <27.358406, 31.436150, 31.871847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605946, 31.154631, 32.032608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591219, 31.376722, 31.700256>,  <26.582384, 31.509977, 31.500845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.591219, 31.376722, 31.700256>,  <26.605946, 31.154631, 32.032608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591219, 31.376722, 31.700256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624915, -0.661614, -0.414426,
		-0.779824, 0.503975, 0.371327,
		-0.036814, 0.555227, -0.830884,
		26.580175, 31.543291, 31.450991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865637, 31.230078, 31.818270>,  <26.605946, 31.154631, 32.032608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865637, 31.230078, 31.818270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133230, 31.254595, 31.521971>,  <26.293787, 31.269304, 31.344193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133230, 31.254595, 31.521971>,  <25.865637, 31.230078, 31.818270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133230, 31.254595, 31.521971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537746, -0.648083, -0.539275,
		-0.513118, 0.759099, -0.400598,
		0.668984, 0.061291, -0.740745,
		26.333925, 31.272982, 31.299747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494268, 31.110689, 31.285494>,  <25.865637, 31.230078, 31.818270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494268, 31.110689, 31.285494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865410, 31.059359, 31.145426>,  <26.088095, 31.028561, 31.061384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.865410, 31.059359, 31.145426>,  <25.494268, 31.110689, 31.285494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.865410, 31.059359, 31.145426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370340, -0.427804, -0.824519,
		-0.043999, 0.894716, -0.444464,
		0.927854, -0.128325, -0.350172,
		26.143766, 31.020861, 31.040375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.638966, 31.510128, 30.634546>,  <25.494268, 31.110689, 31.285494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.638966, 31.510128, 30.634546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852911, 31.172462, 30.649015>,  <25.981277, 30.969864, 30.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.852911, 31.172462, 30.649015>,  <25.638966, 31.510128, 30.634546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852911, 31.172462, 30.649015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452130, -0.322111, -0.831759,
		0.713793, 0.428523, -0.553957,
		0.534863, -0.844164, 0.036172,
		26.013371, 30.919212, 30.659866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109262, 31.271101, 29.943398>,  <25.638966, 31.510128, 30.634546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109262, 31.271101, 29.943398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927853, 31.008677, 30.184692>,  <25.819006, 30.851221, 30.329470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927853, 31.008677, 30.184692>,  <26.109262, 31.271101, 29.943398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927853, 31.008677, 30.184692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597412, -0.278492, -0.752025,
		0.661372, -0.701445, -0.265636,
		-0.453527, -0.656062, 0.603238,
		25.791794, 30.811857, 30.365664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731768, 31.758522, 30.331514>,  <26.109262, 31.271101, 29.943398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731768, 31.758522, 30.331514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479156, 31.695461, 30.635176>,  <26.327589, 31.657625, 30.817373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479156, 31.695461, 30.635176>,  <26.731768, 31.758522, 30.331514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479156, 31.695461, 30.635176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474906, 0.695303, 0.539460,
		-0.612891, 0.701212, -0.364234,
		-0.631529, -0.157653, 0.759155,
		26.289698, 31.648165, 30.862923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346945, 32.451706, 30.534971>,  <26.731768, 31.758522, 30.331514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346945, 32.451706, 30.534971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402180, 32.171375, 30.814905>,  <26.435320, 32.003178, 30.982866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.402180, 32.171375, 30.814905>,  <26.346945, 32.451706, 30.534971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.402180, 32.171375, 30.814905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461900, 0.670625, 0.580439,
		-0.876117, 0.243104, 0.416317,
		0.138086, -0.700830, 0.699835,
		26.443605, 31.961126, 31.024857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018730, 32.695545, 31.160204>,  <26.346945, 32.451706, 30.534971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018730, 32.695545, 31.160204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299494, 32.429848, 31.263046>,  <26.467951, 32.270428, 31.324751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299494, 32.429848, 31.263046>,  <26.018730, 32.695545, 31.160204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299494, 32.429848, 31.263046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482543, 0.708973, 0.514306,
		-0.523906, -0.236931, 0.818161,
		0.701908, -0.664245, 0.257105,
		26.510067, 32.230576, 31.340178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960604, 32.621273, 31.905945>,  <26.018730, 32.695545, 31.160204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960604, 32.621273, 31.905945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332125, 32.518101, 31.799513>,  <26.555037, 32.456196, 31.735653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.332125, 32.518101, 31.799513>,  <25.960604, 32.621273, 31.905945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332125, 32.518101, 31.799513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369921, 0.688103, 0.624237,
		0.022079, -0.678221, 0.734526,
		0.928801, -0.257934, -0.266081,
		26.610765, 32.440720, 31.719688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341190, 32.574371, 32.520267>,  <25.960604, 32.621273, 31.905945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341190, 32.574371, 32.520267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604607, 32.660507, 32.231838>,  <26.762657, 32.712189, 32.058781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604607, 32.660507, 32.231838>,  <26.341190, 32.574371, 32.520267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604607, 32.660507, 32.231838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430730, 0.677854, 0.595807,
		0.617086, -0.702953, 0.353641,
		0.658541, 0.215340, -0.721077,
		26.802168, 32.725109, 32.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074678, 32.543186, 32.855347>,  <26.341190, 32.574371, 32.520267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074678, 32.543186, 32.855347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075100, 32.784317, 32.536198>,  <27.075354, 32.928993, 32.344707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.075100, 32.784317, 32.536198>,  <27.074678, 32.543186, 32.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.075100, 32.784317, 32.536198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322153, 0.755133, 0.570958,
		0.946687, -0.257640, -0.193404,
		0.001055, 0.602824, -0.797873,
		27.075417, 32.965164, 32.296837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839619, 32.820076, 32.734859>,  <27.074678, 32.543186, 32.855347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839619, 32.820076, 32.734859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576279, 33.069176, 32.565742>,  <27.418274, 33.218636, 32.464272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.576279, 33.069176, 32.565742>,  <27.839619, 32.820076, 32.734859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576279, 33.069176, 32.565742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564576, 0.780032, 0.269821,
		0.497821, -0.061060, -0.865127,
		-0.658352, 0.622753, -0.422790,
		27.378773, 33.256001, 32.438904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.215252, 33.265869, 32.299030>,  <27.839619, 32.820076, 32.734859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.215252, 33.265869, 32.299030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880116, 33.472485, 32.369698>,  <27.679033, 33.596455, 32.412098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.880116, 33.472485, 32.369698>,  <28.215252, 33.265869, 32.299030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.880116, 33.472485, 32.369698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543997, 0.817078, 0.190922,
		-0.045735, 0.256070, -0.965576,
		-0.837840, 0.516539, 0.176671,
		27.628763, 33.627445, 32.422699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222231, 33.912895, 31.912836>,  <28.215252, 33.265869, 32.299030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222231, 33.912895, 31.912836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976061, 33.950562, 32.225857>,  <27.828360, 33.973160, 32.413670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976061, 33.950562, 32.225857>,  <28.222231, 33.912895, 31.912836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976061, 33.950562, 32.225857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538401, 0.775337, 0.330119,
		-0.575653, 0.624489, -0.527861,
		-0.615425, 0.094167, 0.782550,
		27.791433, 33.978813, 32.460621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.819735, 34.596153, 32.003773>,  <28.222231, 33.912895, 31.912836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.819735, 34.596153, 32.003773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909595, 34.426102, 32.354496>,  <27.963512, 34.324070, 32.564930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909595, 34.426102, 32.354496>,  <27.819735, 34.596153, 32.003773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909595, 34.426102, 32.354496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503111, 0.821205, 0.269260,
		-0.834512, 0.380643, 0.398373,
		0.224654, -0.425127, 0.876811,
		27.976992, 34.298565, 32.617538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089554, 35.187634, 32.352085>,  <27.819735, 34.596153, 32.003773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089554, 35.187634, 32.352085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158443, 34.919899, 32.641174>,  <28.199778, 34.759258, 32.814629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158443, 34.919899, 32.641174>,  <28.089554, 35.187634, 32.352085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158443, 34.919899, 32.641174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343650, 0.728417, 0.592718,
		-0.923171, 0.146285, 0.355466,
		0.172222, -0.669335, 0.722724,
		28.210110, 34.719097, 32.857990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813246, 35.395473, 33.024174>,  <28.089554, 35.187634, 32.352085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813246, 35.395473, 33.024174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149014, 35.189129, 33.092590>,  <28.350475, 35.065323, 33.133640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.149014, 35.189129, 33.092590>,  <27.813246, 35.395473, 33.024174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.149014, 35.189129, 33.092590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400784, 0.800127, 0.446284,
		-0.367077, -0.306070, 0.878394,
		0.839421, -0.515866, 0.171040,
		28.400841, 35.034370, 33.143902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985909, 35.413952, 33.773525>,  <27.813246, 35.395473, 33.024174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985909, 35.413952, 33.773525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291250, 35.380199, 33.517349>,  <28.474457, 35.359947, 33.363644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291250, 35.380199, 33.517349>,  <27.985909, 35.413952, 33.773525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291250, 35.380199, 33.517349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437508, 0.796956, 0.416470,
		0.475261, -0.598114, 0.645280,
		0.763357, -0.084383, -0.640442,
		28.520258, 35.354885, 33.325218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616764, 35.044491, 34.012630>,  <27.985909, 35.413952, 33.773525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616764, 35.044491, 34.012630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690632, 35.352409, 33.768234>,  <28.734953, 35.537159, 33.621597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.690632, 35.352409, 33.768234>,  <28.616764, 35.044491, 34.012630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.690632, 35.352409, 33.768234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501258, 0.460975, 0.732285,
		0.845362, -0.441497, -0.300737,
		0.184670, 0.769793, -0.610995,
		28.746033, 35.583347, 33.584934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334881, 35.142097, 33.921833>,  <28.616764, 35.044491, 34.012630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334881, 35.142097, 33.921833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160713, 35.496223, 33.856564>,  <29.056211, 35.708698, 33.817402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160713, 35.496223, 33.856564>,  <29.334881, 35.142097, 33.921833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160713, 35.496223, 33.856564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609420, 0.423288, 0.670398,
		0.662583, 0.192465, -0.723838,
		-0.435420, 0.885316, -0.163172,
		29.030087, 35.761818, 33.807613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907412, 35.649593, 33.701057>,  <29.334881, 35.142097, 33.921833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907412, 35.649593, 33.701057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587101, 35.812340, 33.876881>,  <29.394915, 35.909988, 33.982376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587101, 35.812340, 33.876881>,  <29.907412, 35.649593, 33.701057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587101, 35.812340, 33.876881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584440, 0.370145, 0.722096,
		0.131096, 0.835135, -0.534193,
		-0.800777, 0.406868, 0.439562,
		29.346869, 35.934399, 34.008751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516544, 35.418701, 33.494602>,  <29.907412, 35.649593, 33.701057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516544, 35.418701, 33.494602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231148, 35.176041, 33.354370>,  <30.059910, 35.030445, 33.270229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231148, 35.176041, 33.354370>,  <30.516544, 35.418701, 33.494602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231148, 35.176041, 33.354370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606341, -0.785329, 0.124936,
		-0.351113, -0.123430, 0.928162,
		-0.713492, -0.606649, -0.350580,
		30.017099, 34.994045, 33.249195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306492, 34.787601, 33.937824>,  <30.516544, 35.418701, 33.494602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306492, 34.787601, 33.937824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248598, 34.699459, 33.551975>,  <30.213861, 34.646576, 33.320465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248598, 34.699459, 33.551975>,  <30.306492, 34.787601, 33.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248598, 34.699459, 33.551975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642845, -0.762053, 0.077623,
		-0.752198, -0.608869, 0.251948,
		-0.144735, -0.220351, -0.964623,
		30.205177, 34.633354, 33.262589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109438, 34.096054, 33.988205>,  <30.306492, 34.787601, 33.937824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109438, 34.096054, 33.988205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297785, 34.241516, 33.666698>,  <30.410793, 34.328793, 33.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297785, 34.241516, 33.666698>,  <30.109438, 34.096054, 33.988205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297785, 34.241516, 33.666698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805672, -0.548439, 0.223846,
		-0.359412, -0.752972, -0.551232,
		0.470867, 0.363659, -0.803764,
		30.439045, 34.350613, 33.425568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257734, 33.494129, 34.380405>,  <30.109438, 34.096054, 33.988205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257734, 33.494129, 34.380405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613058, 33.606396, 34.235004>,  <30.826252, 33.673756, 34.147762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.613058, 33.606396, 34.235004>,  <30.257734, 33.494129, 34.380405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613058, 33.606396, 34.235004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458246, -0.593968, 0.661221,
		-0.030328, -0.753942, -0.656241,
		0.888308, 0.280665, -0.363505,
		30.879551, 33.690594, 34.125954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947840, 33.366821, 34.708195>,  <30.257734, 33.494129, 34.380405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947840, 33.366821, 34.708195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964869, 32.979523, 34.609661>,  <30.975086, 32.747143, 34.550541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.964869, 32.979523, 34.609661>,  <30.947840, 33.366821, 34.708195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.964869, 32.979523, 34.609661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852745, 0.163685, -0.496018,
		0.520590, -0.188941, 0.832639,
		0.042572, -0.968250, -0.246331,
		30.977640, 32.689049, 34.535763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561161, 33.042271, 34.893593>,  <30.947840, 33.366821, 34.708195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561161, 33.042271, 34.893593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416918, 32.854630, 34.571125>,  <31.330372, 32.742043, 34.377644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416918, 32.854630, 34.571125>,  <31.561161, 33.042271, 34.893593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416918, 32.854630, 34.571125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867192, 0.149614, -0.474967,
		0.343423, -0.870377, 0.352852,
		-0.360608, -0.469105, -0.806165,
		31.308735, 32.713898, 34.329277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115761, 32.624435, 34.697834>,  <31.561161, 33.042271, 34.893593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115761, 32.624435, 34.697834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870747, 32.672695, 34.385361>,  <31.723740, 32.701653, 34.197876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870747, 32.672695, 34.385361>,  <32.115761, 32.624435, 34.697834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870747, 32.672695, 34.385361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774084, 0.291596, -0.561930,
		0.159991, -0.948902, -0.272008,
		-0.612533, 0.120653, -0.781182,
		31.686987, 32.708893, 34.151005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289982, 32.219803, 34.117035>,  <32.115761, 32.624435, 34.697834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289982, 32.219803, 34.117035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098583, 32.551254, 34.000820>,  <31.983744, 32.750126, 33.931091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098583, 32.551254, 34.000820>,  <32.289982, 32.219803, 34.117035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098583, 32.551254, 34.000820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660812, 0.121922, -0.740583,
		-0.578245, -0.546360, -0.605907,
		-0.478498, 0.828629, -0.290540,
		31.955034, 32.799843, 33.913658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058212, 32.210957, 33.403217>,  <32.289982, 32.219803, 34.117035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058212, 32.210957, 33.403217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136341, 32.590115, 33.503895>,  <32.183220, 32.817608, 33.564301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.136341, 32.590115, 33.503895>,  <32.058212, 32.210957, 33.403217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136341, 32.590115, 33.503895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636557, 0.072701, -0.767795,
		-0.746085, 0.310189, -0.589187,
		0.195327, 0.947891, 0.251694,
		32.194939, 32.874481, 33.579403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035076, 32.466496, 32.824993>,  <32.058212, 32.210957, 33.403217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035076, 32.466496, 32.824993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243244, 32.727539, 33.045269>,  <32.368145, 32.884167, 33.177437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243244, 32.727539, 33.045269>,  <32.035076, 32.466496, 32.824993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243244, 32.727539, 33.045269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633702, 0.137093, -0.761333,
		-0.572348, 0.745190, -0.342212,
		0.520423, 0.652608, 0.550693,
		32.399372, 32.923321, 33.210476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065075, 33.011353, 32.380760>,  <32.035076, 32.466496, 32.824993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065075, 33.011353, 32.380760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348698, 33.057350, 32.659046>,  <32.518871, 33.084949, 32.826019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.348698, 33.057350, 32.659046>,  <32.065075, 33.011353, 32.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.348698, 33.057350, 32.659046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623825, 0.357700, -0.694905,
		-0.328765, 0.926730, 0.181895,
		0.709053, 0.114990, 0.695716,
		32.561413, 33.091846, 32.867760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413219, 33.487152, 32.056484>,  <32.065075, 33.011353, 32.380760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413219, 33.487152, 32.056484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665970, 33.345028, 32.332016>,  <32.817619, 33.259754, 32.497334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665970, 33.345028, 32.332016>,  <32.413219, 33.487152, 32.056484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665970, 33.345028, 32.332016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774372, 0.251783, -0.580477,
		0.032817, 0.900198, 0.434242,
		0.631879, -0.355314, 0.688826,
		32.855534, 33.238434, 32.538662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874294, 34.075356, 32.360474>,  <32.413219, 33.487152, 32.056484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874294, 34.075356, 32.360474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078594, 33.733288, 32.395859>,  <33.201176, 33.528049, 32.417091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078594, 33.733288, 32.395859>,  <32.874294, 34.075356, 32.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078594, 33.733288, 32.395859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730710, 0.377579, -0.568768,
		0.452988, 0.355142, 0.817726,
		0.510750, -0.855166, 0.088467,
		33.231819, 33.476738, 32.422398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629700, 34.272202, 32.293728>,  <32.874294, 34.075356, 32.360474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629700, 34.272202, 32.293728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681732, 33.880928, 32.228928>,  <33.712952, 33.646164, 32.190048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681732, 33.880928, 32.228928>,  <33.629700, 34.272202, 32.293728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681732, 33.880928, 32.228928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669100, 0.207179, -0.713710,
		0.731700, -0.015559, 0.681449,
		0.130077, -0.978179, -0.162003,
		33.720757, 33.587475, 32.180328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320885, 34.216763, 32.180847>,  <33.629700, 34.272202, 32.293728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320885, 34.216763, 32.180847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172035, 33.875942, 32.033585>,  <34.082726, 33.671452, 31.945229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172035, 33.875942, 32.033585>,  <34.320885, 34.216763, 32.180847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172035, 33.875942, 32.033585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689017, 0.012180, -0.724642,
		0.621915, -0.523321, 0.582544,
		-0.372125, -0.852049, -0.368153,
		34.060398, 33.620327, 31.923140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869392, 33.835747, 31.958084>,  <34.320885, 34.216763, 32.180847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869392, 33.835747, 31.958084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576263, 33.632797, 31.776735>,  <34.400387, 33.511028, 31.667927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576263, 33.632797, 31.776735>,  <34.869392, 33.835747, 31.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576263, 33.632797, 31.776735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513923, 0.023950, -0.857502,
		0.445931, -0.861394, 0.243199,
		-0.732822, -0.507372, -0.453370,
		34.356419, 33.480587, 31.640724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185802, 33.211384, 31.564915>,  <34.869392, 33.835747, 31.958084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185802, 33.211384, 31.564915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848927, 33.342472, 31.393654>,  <34.646801, 33.421124, 31.290897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848927, 33.342472, 31.393654>,  <35.185802, 33.211384, 31.564915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848927, 33.342472, 31.393654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491111, 0.138510, -0.860014,
		-0.222540, -0.934567, -0.277598,
		-0.842191, 0.327719, -0.428152,
		34.596268, 33.440788, 31.265207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145378, 32.871883, 30.862741>,  <35.185802, 33.211384, 31.564915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145378, 32.871883, 30.862741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931194, 33.209694, 30.859453>,  <34.802685, 33.412380, 30.857481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931194, 33.209694, 30.859453>,  <35.145378, 32.871883, 30.862741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931194, 33.209694, 30.859453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253720, 0.151570, -0.955328,
		-0.805552, -0.513621, -0.295432,
		-0.535455, 0.844523, -0.008219,
		34.770557, 33.463051, 30.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909893, 32.862095, 30.130466>,  <35.145378, 32.871883, 30.862741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909893, 32.862095, 30.130466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856277, 33.236176, 30.261578>,  <34.824108, 33.460625, 30.340244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856277, 33.236176, 30.261578>,  <34.909893, 32.862095, 30.130466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856277, 33.236176, 30.261578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268424, 0.352659, -0.896426,
		-0.953930, -0.032171, -0.298299,
		-0.134037, 0.935199, 0.327776,
		34.816067, 33.516735, 30.359911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766827, 33.194958, 29.488377>,  <34.909893, 32.862095, 30.130466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766827, 33.194958, 29.488377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808723, 33.505005, 29.737606>,  <34.833862, 33.691032, 29.887144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808723, 33.505005, 29.737606>,  <34.766827, 33.194958, 29.488377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808723, 33.505005, 29.737606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227617, 0.591205, -0.773736,
		-0.968101, 0.222869, -0.114503,
		0.104747, 0.775117, 0.623075,
		34.840149, 33.737541, 29.924528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356014, 33.720795, 29.231447>,  <34.766827, 33.194958, 29.488377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356014, 33.720795, 29.231447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650959, 33.856159, 29.465294>,  <34.827927, 33.937378, 29.605602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650959, 33.856159, 29.465294>,  <34.356014, 33.720795, 29.231447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650959, 33.856159, 29.465294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267802, 0.648095, -0.712920,
		-0.620146, 0.682241, 0.387253,
		0.737361, 0.338408, 0.584619,
		34.872166, 33.957680, 29.640680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338852, 34.408386, 29.106825>,  <34.356014, 33.720795, 29.231447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338852, 34.408386, 29.106825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700905, 34.337761, 29.261520>,  <34.918137, 34.295383, 29.354338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700905, 34.337761, 29.261520>,  <34.338852, 34.408386, 29.106825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700905, 34.337761, 29.261520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411900, 0.589430, -0.694918,
		-0.105256, 0.788288, 0.606238,
		0.905130, -0.176565, 0.386737,
		34.972443, 34.284790, 29.377541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558086, 35.080082, 29.108307>,  <34.338852, 34.408386, 29.106825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558086, 35.080082, 29.108307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866867, 34.828571, 29.145685>,  <35.052135, 34.677666, 29.168112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866867, 34.828571, 29.145685>,  <34.558086, 35.080082, 29.108307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866867, 34.828571, 29.145685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542692, 0.575319, -0.611959,
		0.331023, 0.523115, 0.785350,
		0.771951, -0.628776, 0.093447,
		35.098454, 34.639938, 29.173719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141369, 35.484550, 29.271633>,  <34.558086, 35.080082, 29.108307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141369, 35.484550, 29.271633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268524, 35.149456, 29.094027>,  <35.344818, 34.948399, 28.987463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268524, 35.149456, 29.094027>,  <35.141369, 35.484550, 29.271633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268524, 35.149456, 29.094027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546278, 0.544594, -0.636395,
		0.774938, -0.040256, 0.630754,
		0.317886, -0.837734, -0.444017,
		35.363892, 34.898136, 28.960821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801456, 35.694855, 28.989864>,  <35.141369, 35.484550, 29.271633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801456, 35.694855, 28.989864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732010, 35.351677, 28.796457>,  <35.690342, 35.145771, 28.680412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732010, 35.351677, 28.796457>,  <35.801456, 35.694855, 28.989864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732010, 35.351677, 28.796457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326517, 0.413057, -0.850160,
		0.929110, -0.305476, 0.208421,
		-0.173614, -0.857944, -0.483518,
		35.679924, 35.094292, 28.651402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388760, 35.581459, 28.655859>,  <35.801456, 35.694855, 28.989864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388760, 35.581459, 28.655859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106804, 35.380882, 28.455181>,  <35.937630, 35.260536, 28.334774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106804, 35.380882, 28.455181>,  <36.388760, 35.581459, 28.655859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106804, 35.380882, 28.455181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411458, 0.287079, -0.865036,
		0.577788, -0.816178, 0.003963,
		-0.704886, -0.501438, -0.501694,
		35.895340, 35.230450, 28.304672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758385, 35.192036, 28.135914>,  <36.388760, 35.581459, 28.655859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758385, 35.192036, 28.135914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378983, 35.216164, 28.011528>,  <36.151340, 35.230640, 27.936897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378983, 35.216164, 28.011528>,  <36.758385, 35.192036, 28.135914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378983, 35.216164, 28.011528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315597, 0.264042, -0.911417,
		0.027128, -0.962623, -0.269483,
		-0.948506, 0.060323, -0.310964,
		36.094429, 35.234261, 27.918240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739594, 34.904644, 27.502415>,  <36.758385, 35.192036, 28.135914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739594, 34.904644, 27.502415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402237, 35.119137, 27.488831>,  <36.199825, 35.247833, 27.480680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402237, 35.119137, 27.488831>,  <36.739594, 34.904644, 27.502415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402237, 35.119137, 27.488831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180121, 0.222613, -0.958123,
		-0.506215, -0.814186, -0.284336,
		-0.843387, 0.536232, -0.033962,
		36.149220, 35.280006, 27.478642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605591, 34.957226, 26.762484>,  <36.739594, 34.904644, 27.502415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605591, 34.957226, 26.762484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353748, 35.231800, 26.908030>,  <36.202644, 35.396545, 26.995358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.353748, 35.231800, 26.908030>,  <36.605591, 34.957226, 26.762484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353748, 35.231800, 26.908030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176252, 0.582333, -0.793614,
		-0.756657, -0.435533, -0.487628,
		-0.629607, 0.686439, 0.363863,
		36.164867, 35.437733, 27.017189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088440, 35.115601, 26.241158>,  <36.605591, 34.957226, 26.762484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088440, 35.115601, 26.241158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071148, 35.439087, 26.475800>,  <36.060772, 35.633179, 26.616585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071148, 35.439087, 26.475800>,  <36.088440, 35.115601, 26.241158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071148, 35.439087, 26.475800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234476, 0.578966, -0.780909,
		-0.971160, 0.103785, -0.214654,
		-0.043231, 0.808719, 0.586604,
		36.058178, 35.681702, 26.651781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720985, 35.633900, 25.933777>,  <36.088440, 35.115601, 26.241158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720985, 35.633900, 25.933777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952858, 35.862648, 26.165962>,  <36.091984, 35.999897, 26.305273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952858, 35.862648, 26.165962>,  <35.720985, 35.633900, 25.933777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952858, 35.862648, 26.165962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329539, 0.486977, -0.808862,
		-0.745232, 0.660169, 0.093840,
		0.579683, 0.571866, 0.580462,
		36.126762, 36.034206, 26.340101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650604, 36.209930, 25.648136>,  <35.720985, 35.633900, 25.933777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650604, 36.209930, 25.648136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960442, 36.303368, 25.883232>,  <36.146343, 36.359432, 26.024290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960442, 36.303368, 25.883232>,  <35.650604, 36.209930, 25.648136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960442, 36.303368, 25.883232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310043, 0.669721, -0.674794,
		-0.551250, 0.704916, 0.446338,
		0.774595, 0.233596, 0.587738,
		36.192822, 36.373447, 26.059553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659977, 36.982254, 25.690607>,  <35.650604, 36.209930, 25.648136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659977, 36.982254, 25.690607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015900, 36.819855, 25.773949>,  <36.229454, 36.722416, 25.823954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015900, 36.819855, 25.773949>,  <35.659977, 36.982254, 25.690607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015900, 36.819855, 25.773949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441519, 0.650534, -0.617953,
		0.115345, 0.641851, 0.758105,
		0.889807, -0.405996, 0.208354,
		36.282841, 36.698055, 25.836454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192070, 37.502411, 25.771885>,  <35.659977, 36.982254, 25.690607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192070, 37.502411, 25.771885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410648, 37.175030, 25.700863>,  <36.541798, 36.978600, 25.658249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410648, 37.175030, 25.700863>,  <36.192070, 37.502411, 25.771885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410648, 37.175030, 25.700863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626706, 0.540256, -0.561572,
		0.555547, 0.195595, 0.808152,
		0.546450, -0.818454, -0.177557,
		36.574585, 36.929493, 25.647596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841873, 37.800068, 25.760214>,  <36.192070, 37.502411, 25.771885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841873, 37.800068, 25.760214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854652, 37.447807, 25.571142>,  <36.862320, 37.236450, 25.457699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.854652, 37.447807, 25.571142>,  <36.841873, 37.800068, 25.760214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854652, 37.447807, 25.571142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556764, 0.408432, -0.723324,
		0.830056, -0.240061, 0.503366,
		0.031949, -0.880656, -0.472678,
		36.864239, 37.183609, 25.429338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502289, 37.823742, 25.522694>,  <36.841873, 37.800068, 25.760214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502289, 37.823742, 25.522694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321449, 37.549397, 25.294592>,  <37.212944, 37.384789, 25.157730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321449, 37.549397, 25.294592>,  <37.502289, 37.823742, 25.522694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321449, 37.549397, 25.294592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478918, 0.352700, -0.803891,
		0.752491, -0.636545, 0.169018,
		-0.452100, -0.685867, -0.570257,
		37.185818, 37.343636, 25.123514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072773, 37.395000, 25.114048>,  <37.502289, 37.823742, 25.522694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072773, 37.395000, 25.114048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726978, 37.365479, 24.915161>,  <37.519501, 37.347763, 24.795830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726978, 37.365479, 24.915161>,  <38.072773, 37.395000, 25.114048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726978, 37.365479, 24.915161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426297, 0.416478, -0.803005,
		0.266348, -0.906145, -0.328573,
		-0.864482, -0.073809, -0.497215,
		37.467632, 37.343334, 24.765997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162388, 37.145390, 24.444302>,  <38.072773, 37.395000, 25.114048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162388, 37.145390, 24.444302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805973, 37.322998, 24.406572>,  <37.592125, 37.429562, 24.383934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805973, 37.322998, 24.406572>,  <38.162388, 37.145390, 24.444302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805973, 37.322998, 24.406572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369602, 0.589034, -0.718633,
		-0.263529, -0.675191, -0.688963,
		-0.891037, 0.444022, -0.094324,
		37.538662, 37.456203, 24.378275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205437, 37.246407, 23.772299>,  <38.162388, 37.145390, 24.444302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205437, 37.246407, 23.772299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877090, 37.459461, 23.854750>,  <37.680084, 37.587292, 23.904221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877090, 37.459461, 23.854750>,  <38.205437, 37.246407, 23.772299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877090, 37.459461, 23.854750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256627, 0.666407, -0.700032,
		-0.510225, -0.521731, -0.683715,
		-0.820861, 0.532634, 0.206127,
		37.630833, 37.619251, 23.916588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906837, 37.397243, 23.181772>,  <38.205437, 37.246407, 23.772299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906837, 37.397243, 23.181772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796669, 37.675304, 23.447374>,  <37.730568, 37.842140, 23.606735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796669, 37.675304, 23.447374>,  <37.906837, 37.397243, 23.181772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796669, 37.675304, 23.447374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273366, 0.718841, -0.639171,
		-0.921637, 0.005475, -0.388015,
		-0.275422, 0.695153, 0.664007,
		37.714043, 37.883850, 23.646576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393505, 37.749722, 22.815218>,  <37.906837, 37.397243, 23.181772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393505, 37.749722, 22.815218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 37.995201, 23.088572>,  <37.646576, 38.142490, 23.252583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.551674, 37.995201, 23.088572>,  <37.393505, 37.749722, 22.815218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551674, 37.995201, 23.088572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056152, 0.726478, -0.684892,
		-0.916780, 0.309196, 0.252807,
		0.395425, 0.613700, 0.683383,
		37.670300, 38.179310, 23.293587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068054, 38.387295, 22.684998>,  <37.393505, 37.749722, 22.815218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068054, 38.387295, 22.684998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394157, 38.482185, 22.896309>,  <37.589821, 38.539120, 23.023096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394157, 38.482185, 22.896309>,  <37.068054, 38.387295, 22.684998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394157, 38.482185, 22.896309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234186, 0.699269, -0.675410,
		-0.529632, 0.674350, 0.514531,
		0.815259, 0.237223, 0.528279,
		37.638737, 38.553352, 23.054792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217403, 38.994286, 22.523687>,  <37.068054, 38.387295, 22.684998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217403, 38.994286, 22.523687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572834, 38.967407, 22.705202>,  <37.786091, 38.951283, 22.814112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572834, 38.967407, 22.705202>,  <37.217403, 38.994286, 22.523687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572834, 38.967407, 22.705202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322071, 0.795792, -0.512822,
		-0.326663, 0.601831, 0.728760,
		0.888573, -0.067192, 0.453788,
		37.839405, 38.947250, 22.841339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496540, 39.774555, 22.662691>,  <37.217403, 38.994286, 22.523687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496540, 39.774555, 22.662691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801060, 39.516930, 22.692631>,  <37.983772, 39.362354, 22.710594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.801060, 39.516930, 22.692631>,  <37.496540, 39.774555, 22.662691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801060, 39.516930, 22.692631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595948, 0.649558, -0.472144,
		0.255470, 0.404052, 0.878338,
		0.761302, -0.644062, 0.074851,
		38.029449, 39.323711, 22.715086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061447, 40.126713, 22.830456>,  <37.496540, 39.774555, 22.662691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061447, 40.126713, 22.830456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245949, 39.806286, 22.677860>,  <38.356651, 39.614029, 22.586302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245949, 39.806286, 22.677860>,  <38.061447, 40.126713, 22.830456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245949, 39.806286, 22.677860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557237, 0.596129, -0.578029,
		0.690457, 0.054039, 0.721352,
		0.461255, -0.801068, -0.381489,
		38.384327, 39.565964, 22.563414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833145, 40.261311, 22.929525>,  <38.061447, 40.126713, 22.830456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833145, 40.261311, 22.929525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773670, 39.997032, 22.635212>,  <38.737984, 39.838467, 22.458624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773670, 39.997032, 22.635212>,  <38.833145, 40.261311, 22.929525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773670, 39.997032, 22.635212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659917, 0.487845, -0.571417,
		0.736479, -0.570516, 0.363468,
		-0.148686, -0.660695, -0.735781,
		38.729065, 39.798824, 22.414478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490387, 39.987480, 22.804419>,  <38.833145, 40.261311, 22.929525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490387, 39.987480, 22.804419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272736, 39.939034, 22.472332>,  <39.142147, 39.909966, 22.273081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.272736, 39.939034, 22.472332>,  <39.490387, 39.987480, 22.804419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272736, 39.939034, 22.472332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727626, 0.424536, -0.538822,
		0.417715, -0.897274, -0.142876,
		-0.544127, -0.121114, -0.830215,
		39.109497, 39.902699, 22.223267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076904, 39.883305, 22.344868>,  <39.490387, 39.987480, 22.804419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076904, 39.883305, 22.344868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759628, 39.953213, 22.111526>,  <39.569263, 39.995159, 21.971521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759628, 39.953213, 22.111526>,  <40.076904, 39.883305, 22.344868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759628, 39.953213, 22.111526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569933, 0.550504, -0.610018,
		0.214524, -0.816334, -0.536264,
		-0.793193, 0.174771, -0.583352,
		39.521671, 40.005646, 21.936522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364815, 39.838665, 21.652380>,  <40.076904, 39.883305, 22.344868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364815, 39.838665, 21.652380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023506, 40.047081, 21.643940>,  <39.818722, 40.172131, 21.638876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023506, 40.047081, 21.643940>,  <40.364815, 39.838665, 21.652380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023506, 40.047081, 21.643940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411806, 0.648465, -0.640241,
		-0.319904, -0.554991, -0.767884,
		-0.853274, 0.521035, -0.021102,
		39.767525, 40.203392, 21.637609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206028, 40.002422, 20.915842>,  <40.364815, 39.838665, 21.652380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206028, 40.002422, 20.915842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002514, 40.265957, 21.137499>,  <39.880405, 40.424076, 21.270493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002514, 40.265957, 21.137499>,  <40.206028, 40.002422, 20.915842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002514, 40.265957, 21.137499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325712, 0.743148, -0.584502,
		-0.796900, -0.116896, -0.592694,
		-0.508785, 0.658837, 0.554140,
		39.849880, 40.463608, 21.303741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951008, 40.440880, 20.429031>,  <40.206028, 40.002422, 20.915842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951008, 40.440880, 20.429031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932552, 40.664024, 20.760492>,  <39.921478, 40.797913, 20.959368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932552, 40.664024, 20.760492>,  <39.951008, 40.440880, 20.429031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932552, 40.664024, 20.760492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250829, 0.809427, -0.530955,
		-0.966932, 0.183353, -0.177271,
		-0.046135, 0.557862, 0.828650,
		39.918713, 40.831383, 21.009087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566181, 41.118401, 20.241817>,  <39.951008, 40.440880, 20.429031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566181, 41.118401, 20.241817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745991, 41.174232, 20.594734>,  <39.853878, 41.207733, 20.806484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745991, 41.174232, 20.594734>,  <39.566181, 41.118401, 20.241817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745991, 41.174232, 20.594734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287745, 0.912441, -0.290954,
		-0.845652, 0.384667, 0.370004,
		0.449528, 0.139579, 0.882294,
		39.880848, 41.216106, 20.859423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552040, 41.582214, 19.564705>,  <39.566181, 41.118401, 20.241817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552040, 41.582214, 19.564705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317242, 41.896904, 19.488295>,  <39.176361, 42.085720, 19.442450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317242, 41.896904, 19.488295>,  <39.552040, 41.582214, 19.564705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317242, 41.896904, 19.488295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485900, 0.531089, 0.694151,
		0.647559, 0.314648, -0.694020,
		-0.587000, 0.786728, -0.191024,
		39.141140, 42.132923, 19.430988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865810, 42.177422, 19.476267>,  <39.552040, 41.582214, 19.564705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865810, 42.177422, 19.476267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538490, 42.321972, 19.655060>,  <39.342098, 42.408703, 19.762335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.538490, 42.321972, 19.655060>,  <39.865810, 42.177422, 19.476267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538490, 42.321972, 19.655060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573116, 0.453658, 0.682446,
		0.043841, 0.814618, -0.578338,
		-0.818301, 0.361374, 0.446981,
		39.292999, 42.430386, 19.789154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284744, 42.758350, 19.746674>,  <39.865810, 42.177422, 19.476267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284744, 42.758350, 19.746674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199982, 43.147865, 19.713602>,  <40.149124, 43.381573, 19.693760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199982, 43.147865, 19.713602>,  <40.284744, 42.758350, 19.746674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199982, 43.147865, 19.713602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225117, 0.130962, 0.965490,
		0.951008, 0.185986, -0.246968,
		-0.211911, 0.973786, -0.082677,
		40.136410, 43.440002, 19.688799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862083, 43.279728, 19.963882>,  <40.284744, 42.758350, 19.746674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862083, 43.279728, 19.963882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484581, 43.383572, 20.045784>,  <40.258080, 43.445877, 20.094925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484581, 43.383572, 20.045784>,  <40.862083, 43.279728, 19.963882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484581, 43.383572, 20.045784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248242, 0.147305, 0.957433,
		0.218400, 0.954412, -0.203467,
		-0.943757, 0.259612, 0.204754,
		40.201454, 43.461456, 20.107210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883835, 43.723087, 20.663620>,  <40.862083, 43.279728, 19.963882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883835, 43.723087, 20.663620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091640, 43.422272, 20.825878>,  <41.216324, 43.241783, 20.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091640, 43.422272, 20.825878>,  <40.883835, 43.723087, 20.663620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091640, 43.422272, 20.825878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364246, 0.234527, 0.901289,
		-0.772939, -0.615983, -0.152088,
		0.519510, -0.752039, 0.405644,
		41.247494, 43.196659, 20.947571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.530224, 43.216705, 20.997824>,  <40.883835, 43.723087, 20.663620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.530224, 43.216705, 20.997824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845055, 43.156761, 21.237171>,  <41.033955, 43.120796, 21.380779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845055, 43.156761, 21.237171>,  <40.530224, 43.216705, 20.997824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845055, 43.156761, 21.237171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550397, 0.267363, 0.790936,
		-0.278510, -0.951872, 0.127955,
		0.787080, -0.149857, 0.598371,
		41.081181, 43.111805, 21.416683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.449783, 42.670151, 21.546164>,  <40.530224, 43.216705, 20.997824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.449783, 42.670151, 21.546164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699444, 42.964611, 21.650862>,  <40.849239, 43.141289, 21.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.699444, 42.964611, 21.650862>,  <40.449783, 42.670151, 21.546164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699444, 42.964611, 21.650862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541253, 0.165800, 0.824352,
		0.563451, -0.656194, 0.501929,
		0.624154, 0.736152, 0.261747,
		40.886692, 43.185455, 21.729385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002380, 42.511097, 21.951082>,  <40.449783, 42.670151, 21.546164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002380, 42.511097, 21.951082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900303, 42.882786, 22.057980>,  <40.839054, 43.105801, 22.122118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900303, 42.882786, 22.057980>,  <41.002380, 42.511097, 21.951082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900303, 42.882786, 22.057980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427503, -0.356347, 0.830818,
		0.867247, 0.097774, 0.488184,
		-0.255195, 0.929224, 0.267242,
		40.823746, 43.161552, 22.138151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251339, 42.612080, 22.561083>,  <41.002380, 42.511097, 21.951082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251339, 42.612080, 22.561083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909710, 42.813900, 22.510500>,  <40.704735, 42.934994, 22.480150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.909710, 42.813900, 22.510500>,  <41.251339, 42.612080, 22.561083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909710, 42.813900, 22.510500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413402, -0.510869, 0.753732,
		0.315695, 0.696017, 0.644901,
		-0.854070, 0.504553, -0.126456,
		40.653488, 42.965267, 22.472563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093834, 43.221607, 22.987352>,  <41.251339, 42.612080, 22.561083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093834, 43.221607, 22.987352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814522, 42.971577, 22.847815>,  <40.646935, 42.821560, 22.764091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.814522, 42.971577, 22.847815>,  <41.093834, 43.221607, 22.987352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.814522, 42.971577, 22.847815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272931, -0.218034, 0.937001,
		-0.661754, 0.749497, -0.018353,
		-0.698277, -0.625073, -0.348845,
		40.605038, 42.784054, 22.743160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555233, 43.433285, 23.316402>,  <41.093834, 43.221607, 22.987352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555233, 43.433285, 23.316402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482189, 43.058491, 23.197269>,  <40.438362, 42.833614, 23.125790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.482189, 43.058491, 23.197269>,  <40.555233, 43.433285, 23.316402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482189, 43.058491, 23.197269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285798, -0.239255, 0.927942,
		-0.940729, 0.254575, -0.224098,
		-0.182614, -0.936989, -0.297832,
		40.427406, 42.777393, 23.107920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876377, 43.286270, 23.641970>,  <40.555233, 43.433285, 23.316402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876377, 43.286270, 23.641970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044682, 42.936886, 23.543970>,  <40.145664, 42.727257, 23.485170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044682, 42.936886, 23.543970>,  <39.876377, 43.286270, 23.641970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044682, 42.936886, 23.543970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306833, -0.391178, 0.867660,
		-0.853707, -0.289902, -0.432599,
		0.420759, -0.873462, -0.245000,
		40.170910, 42.674847, 23.470470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455631, 42.805641, 23.955441>,  <39.876377, 43.286270, 23.641970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455631, 42.805641, 23.955441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763710, 42.576935, 23.842394>,  <39.948559, 42.439709, 23.774565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763710, 42.576935, 23.842394>,  <39.455631, 42.805641, 23.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763710, 42.576935, 23.842394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142636, -0.586301, 0.797437,
		-0.621653, -0.573871, -0.533121,
		0.770196, -0.571772, -0.282621,
		39.994770, 42.405403, 23.757608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243980, 42.131771, 23.932690>,  <39.455631, 42.805641, 23.955441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243980, 42.131771, 23.932690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639637, 42.100800, 23.982651>,  <39.877033, 42.082218, 24.012629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639637, 42.100800, 23.982651>,  <39.243980, 42.131771, 23.932690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639637, 42.100800, 23.982651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145093, -0.649430, 0.746451,
		0.023321, -0.756469, -0.653613,
		0.989143, -0.077427, 0.124904,
		39.936378, 42.077572, 24.020123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464451, 41.422943, 24.113010>,  <39.243980, 42.131771, 23.932690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464451, 41.422943, 24.113010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762722, 41.645203, 24.260094>,  <39.941685, 41.778561, 24.348345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.762722, 41.645203, 24.260094>,  <39.464451, 41.422943, 24.113010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762722, 41.645203, 24.260094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072219, -0.481214, 0.873623,
		0.662377, -0.678001, -0.318704,
		0.745682, 0.555652, 0.367710,
		39.986427, 41.811897, 24.370407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832584, 40.962254, 24.565809>,  <39.464451, 41.422943, 24.113010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832584, 40.962254, 24.565809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958385, 41.327286, 24.670330>,  <40.033867, 41.546307, 24.733042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958385, 41.327286, 24.670330>,  <39.832584, 40.962254, 24.565809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958385, 41.327286, 24.670330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240430, -0.189714, 0.951947,
		0.918304, -0.362212, 0.159748,
		0.314500, 0.912585, 0.261302,
		40.052734, 41.601063, 24.748720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310371, 40.852684, 25.084049>,  <39.832584, 40.962254, 24.565809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310371, 40.852684, 25.084049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196705, 41.232975, 25.133629>,  <40.128506, 41.461151, 25.163376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196705, 41.232975, 25.133629>,  <40.310371, 40.852684, 25.084049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196705, 41.232975, 25.133629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232367, -0.193714, 0.953143,
		0.930191, 0.242050, 0.275965,
		-0.284167, 0.950729, 0.123947,
		40.111454, 41.518192, 25.170813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695644, 41.316067, 25.652206>,  <40.310371, 40.852684, 25.084049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695644, 41.316067, 25.652206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317471, 41.440491, 25.613447>,  <40.090565, 41.515144, 25.590191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317471, 41.440491, 25.613447>,  <40.695644, 41.316067, 25.652206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317471, 41.440491, 25.613447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152982, -0.161251, 0.974984,
		0.287655, 0.936610, 0.200039,
		-0.945437, 0.311062, -0.096900,
		40.033840, 41.533810, 25.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504761, 41.744801, 26.309816>,  <40.695644, 41.316067, 25.652206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504761, 41.744801, 26.309816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157330, 41.649178, 26.136185>,  <39.948872, 41.591805, 26.032005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157330, 41.649178, 26.136185>,  <40.504761, 41.744801, 26.309816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157330, 41.649178, 26.136185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379022, -0.243822, 0.892689,
		-0.319239, 0.939895, 0.121171,
		-0.868579, -0.239055, -0.434078,
		39.896755, 41.577461, 26.005960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147427, 41.805401, 26.842199>,  <40.504761, 41.744801, 26.309816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147427, 41.805401, 26.842199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895172, 41.632679, 26.584257>,  <39.743820, 41.529045, 26.429491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895172, 41.632679, 26.584257>,  <40.147427, 41.805401, 26.842199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895172, 41.632679, 26.584257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628242, -0.203797, 0.750852,
		-0.455643, 0.878641, -0.142757,
		-0.630636, -0.431806, -0.644858,
		39.705982, 41.503136, 26.390800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461330, 42.014256, 27.040913>,  <40.147427, 41.805401, 26.842199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461330, 42.014256, 27.040913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436890, 41.670563, 26.837742>,  <39.422226, 41.464348, 26.715839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436890, 41.670563, 26.837742>,  <39.461330, 42.014256, 27.040913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436890, 41.670563, 26.837742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525528, -0.404937, 0.748229,
		-0.848579, 0.312646, -0.426809,
		-0.061100, -0.859232, -0.507925,
		39.418560, 41.412792, 26.685364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921730, 41.774761, 27.240913>,  <39.461330, 42.014256, 27.040913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921730, 41.774761, 27.240913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053059, 41.427860, 27.091204>,  <39.131855, 41.219719, 27.001377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.053059, 41.427860, 27.091204>,  <38.921730, 41.774761, 27.240913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053059, 41.427860, 27.091204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523000, -0.496864, 0.692529,
		-0.786561, -0.031624, -0.616703,
		0.328318, -0.867252, -0.374274,
		39.151554, 41.167686, 26.978922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403301, 41.392387, 27.003105>,  <38.921730, 41.774761, 27.240913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403301, 41.392387, 27.003105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671215, 41.110310, 27.096136>,  <38.831963, 40.941063, 27.151955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.671215, 41.110310, 27.096136>,  <38.403301, 41.392387, 27.003105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.671215, 41.110310, 27.096136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732276, -0.575336, 0.364364,
		-0.123138, -0.414355, -0.901747,
		0.669783, -0.705194, 0.232576,
		38.872150, 40.898750, 27.165909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161789, 40.688416, 26.687572>,  <38.403301, 41.392387, 27.003105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161789, 40.688416, 26.687572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394375, 40.629002, 27.007532>,  <38.533928, 40.593353, 27.199507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394375, 40.629002, 27.007532>,  <38.161789, 40.688416, 26.687572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394375, 40.629002, 27.007532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691028, -0.609090, 0.389218,
		0.429395, -0.779068, -0.456808,
		0.581464, -0.148539, 0.799897,
		38.568813, 40.584438, 27.247501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974495, 40.020626, 26.890621>,  <38.161789, 40.688416, 26.687572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974495, 40.020626, 26.890621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188358, 40.152557, 27.201839>,  <38.316677, 40.231716, 27.388571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188358, 40.152557, 27.201839>,  <37.974495, 40.020626, 26.890621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188358, 40.152557, 27.201839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519856, -0.597501, 0.610527,
		0.666249, -0.730896, -0.148000,
		0.534661, 0.329824, 0.778045,
		38.348755, 40.251503, 27.435253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304401, 39.419540, 27.174664>,  <37.974495, 40.020626, 26.890621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304401, 39.419540, 27.174664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225918, 39.723076, 27.423069>,  <38.178825, 39.905197, 27.572113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.225918, 39.723076, 27.423069>,  <38.304401, 39.419540, 27.174664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225918, 39.723076, 27.423069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666982, -0.567528, 0.482749,
		0.718774, -0.319484, 0.617490,
		-0.196212, 0.758842, 0.621015,
		38.167053, 39.950729, 27.609373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157661, 39.167271, 27.830330>,  <38.304401, 39.419540, 27.174664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157661, 39.167271, 27.830330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037949, 39.541222, 27.906673>,  <37.966122, 39.765594, 27.952478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037949, 39.541222, 27.906673>,  <38.157661, 39.167271, 27.830330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037949, 39.541222, 27.906673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735968, -0.353485, 0.577408,
		0.607273, 0.032344, 0.793835,
		-0.299284, 0.934881, 0.190857,
		37.948162, 39.821686, 27.963930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969013, 39.249931, 28.578745>,  <38.157661, 39.167271, 27.830330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969013, 39.249931, 28.578745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766945, 39.558113, 28.423208>,  <37.645702, 39.743023, 28.329885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766945, 39.558113, 28.423208>,  <37.969013, 39.249931, 28.578745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766945, 39.558113, 28.423208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790359, -0.232073, 0.566987,
		0.346598, 0.593752, 0.726174,
		-0.505175, 0.770455, -0.388841,
		37.615391, 39.789249, 28.306557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616051, 39.567318, 29.170492>,  <37.969013, 39.249931, 28.578745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616051, 39.567318, 29.170492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425987, 39.731396, 28.859119>,  <37.311947, 39.829842, 28.672297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425987, 39.731396, 28.859119>,  <37.616051, 39.567318, 29.170492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425987, 39.731396, 28.859119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868026, -0.073692, 0.491020,
		0.144051, 0.909014, 0.391079,
		-0.475163, 0.410199, -0.778432,
		37.283440, 39.854454, 28.625589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223202, 40.093590, 29.465218>,  <37.616051, 39.567318, 29.170492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223202, 40.093590, 29.465218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064270, 39.964481, 29.121603>,  <36.968910, 39.887016, 28.915434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064270, 39.964481, 29.121603>,  <37.223202, 40.093590, 29.465218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064270, 39.964481, 29.121603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852241, -0.217363, 0.475855,
		-0.340317, 0.921179, -0.188718,
		-0.397327, -0.322775, -0.859039,
		36.945072, 39.867649, 28.863892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540600, 40.417206, 29.536915>,  <37.223202, 40.093590, 29.465218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540600, 40.417206, 29.536915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513367, 40.156960, 29.234375>,  <36.497028, 40.000813, 29.052851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513367, 40.156960, 29.234375>,  <36.540600, 40.417206, 29.536915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513367, 40.156960, 29.234375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872961, -0.328181, 0.360883,
		-0.483016, 0.684832, -0.545619,
		-0.068083, -0.650617, -0.756348,
		36.492943, 39.961773, 29.007471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860706, 40.405727, 29.086399>,  <36.540600, 40.417206, 29.536915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860706, 40.405727, 29.086399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033459, 40.046871, 29.049257>,  <36.137112, 39.831558, 29.026972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033459, 40.046871, 29.049257>,  <35.860706, 40.405727, 29.086399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033459, 40.046871, 29.049257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898171, -0.437186, 0.046446,
		-0.082263, 0.063341, -0.994596,
		0.431882, -0.897138, -0.092856,
		36.163025, 39.777729, 29.021400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289825, 39.938618, 28.794756>,  <35.860706, 40.405727, 29.086399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289825, 39.938618, 28.794756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546799, 39.658066, 28.918268>,  <35.700981, 39.489735, 28.992376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546799, 39.658066, 28.918268>,  <35.289825, 39.938618, 28.794756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546799, 39.658066, 28.918268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749487, -0.659084, 0.062269,
		0.159838, -0.271431, -0.949093,
		0.642434, -0.701379, 0.308781,
		35.739529, 39.447651, 29.010902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073185, 39.246532, 28.644266>,  <35.289825, 39.938618, 28.794756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073185, 39.246532, 28.644266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335148, 39.168076, 28.936190>,  <35.492325, 39.121002, 29.111343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.335148, 39.168076, 28.936190>,  <35.073185, 39.246532, 28.644266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335148, 39.168076, 28.936190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594612, -0.729770, 0.337451,
		0.466404, -0.654953, -0.594562,
		0.654908, -0.196145, 0.729811,
		35.531620, 39.109234, 29.155132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178448, 38.543827, 28.672342>,  <35.073185, 39.246532, 28.644266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178448, 38.543827, 28.672342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287842, 38.651443, 29.041735>,  <35.353477, 38.716015, 29.263371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.287842, 38.651443, 29.041735>,  <35.178448, 38.543827, 28.672342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287842, 38.651443, 29.041735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529471, -0.759432, 0.378052,
		0.803035, -0.592349, -0.065242,
		0.273485, 0.269045, 0.923483,
		35.369888, 38.732159, 29.318779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276890, 37.898502, 29.072104>,  <35.178448, 38.543827, 28.672342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276890, 37.898502, 29.072104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234779, 38.176880, 29.356237>,  <35.209515, 38.343906, 29.526718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234779, 38.176880, 29.356237>,  <35.276890, 37.898502, 29.072104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234779, 38.176880, 29.356237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378756, -0.688526, 0.618446,
		0.919490, -0.203938, 0.336077,
		-0.105273, 0.695946, 0.710336,
		35.203197, 38.385662, 29.569338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489471, 37.574566, 29.640186>,  <35.276890, 37.898502, 29.072104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489471, 37.574566, 29.640186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282200, 37.884083, 29.785919>,  <35.157837, 38.069794, 29.873360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.282200, 37.884083, 29.785919>,  <35.489471, 37.574566, 29.640186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282200, 37.884083, 29.785919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363264, -0.584769, 0.725317,
		0.774296, 0.243492, 0.584104,
		-0.518175, 0.773794, 0.364332,
		35.126747, 38.116222, 29.895218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709763, 37.740612, 30.283087>,  <35.489471, 37.574566, 29.640186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709763, 37.740612, 30.283087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333744, 37.875889, 30.265423>,  <35.108135, 37.957054, 30.254826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333744, 37.875889, 30.265423>,  <35.709763, 37.740612, 30.283087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333744, 37.875889, 30.265423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219046, -0.499421, 0.838211,
		0.261420, 0.797626, 0.543555,
		-0.940042, 0.338188, -0.044158,
		35.051731, 37.977345, 30.252176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490280, 37.461094, 30.943674>,  <35.709763, 37.740612, 30.283087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490280, 37.461094, 30.943674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150452, 37.589836, 30.776516>,  <34.946556, 37.667080, 30.676220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150452, 37.589836, 30.776516>,  <35.490280, 37.461094, 30.943674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150452, 37.589836, 30.776516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525675, -0.451260, 0.721131,
		0.043519, 0.832330, 0.552569,
		-0.849571, 0.321855, -0.417897,
		34.895580, 37.686394, 30.651146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097694, 37.810570, 31.418957>,  <35.490280, 37.461094, 30.943674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097694, 37.810570, 31.418957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801563, 37.694210, 31.176540>,  <34.623882, 37.624393, 31.031092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801563, 37.694210, 31.176540>,  <35.097694, 37.810570, 31.418957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801563, 37.694210, 31.176540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539202, -0.281418, 0.793767,
		-0.401459, 0.914429, 0.051488,
		-0.740333, -0.290902, -0.606039,
		34.579464, 37.606937, 30.994728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458443, 37.976498, 31.780304>,  <35.097694, 37.810570, 31.418957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458443, 37.976498, 31.780304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347042, 37.710793, 31.502832>,  <34.280201, 37.551369, 31.336349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347042, 37.710793, 31.502832>,  <34.458443, 37.976498, 31.780304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347042, 37.710793, 31.502832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543423, -0.486538, 0.684085,
		-0.791913, 0.567482, -0.225473,
		-0.278505, -0.664263, -0.693678,
		34.263489, 37.511513, 31.294729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683464, 37.857071, 31.802654>,  <34.458443, 37.976498, 31.780304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683464, 37.857071, 31.802654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836285, 37.534206, 31.622644>,  <33.927979, 37.340488, 31.514639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836285, 37.534206, 31.622644>,  <33.683464, 37.857071, 31.802654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836285, 37.534206, 31.622644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473005, -0.589142, 0.655116,
		-0.793914, -0.037427, -0.606877,
		0.382056, -0.807162, -0.450025,
		33.950901, 37.292057, 31.487637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129051, 37.369923, 31.693016>,  <33.683464, 37.857071, 31.802654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129051, 37.369923, 31.693016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453381, 37.136055, 31.682201>,  <33.647976, 36.995735, 31.675713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453381, 37.136055, 31.682201>,  <33.129051, 37.369923, 31.693016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453381, 37.136055, 31.682201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408020, -0.597754, 0.690080,
		-0.419631, -0.548499, -0.723228,
		0.810820, -0.584671, -0.027038,
		33.696625, 36.960655, 31.674089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986664, 36.650448, 31.484459>,  <33.129051, 37.369923, 31.693016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986664, 36.650448, 31.484459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341492, 36.602100, 31.662670>,  <33.554390, 36.573093, 31.769598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341492, 36.602100, 31.662670>,  <32.986664, 36.650448, 31.484459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341492, 36.602100, 31.662670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402227, -0.675986, 0.617460,
		0.226540, -0.726935, -0.648264,
		0.887070, -0.120870, 0.445530,
		33.607613, 36.565838, 31.796329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036903, 35.929733, 31.615698>,  <32.986664, 36.650448, 31.484459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036903, 35.929733, 31.615698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311153, 36.097889, 31.853415>,  <33.475704, 36.198784, 31.996044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311153, 36.097889, 31.853415>,  <33.036903, 35.929733, 31.615698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311153, 36.097889, 31.853415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157307, -0.711537, 0.684814,
		0.710751, -0.563014, -0.421719,
		0.685629, 0.420393, 0.594292,
		33.516842, 36.224007, 32.031704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560631, 35.412792, 31.785397>,  <33.036903, 35.929733, 31.615698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560631, 35.412792, 31.785397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603218, 35.680779, 32.079285>,  <33.628773, 35.841568, 32.255619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603218, 35.680779, 32.079285>,  <33.560631, 35.412792, 31.785397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603218, 35.680779, 32.079285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006431, -0.739368, 0.673271,
		0.994295, -0.066958, -0.083029,
		0.106470, 0.669964, 0.734719,
		33.635159, 35.881767, 32.299702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097298, 35.086903, 32.217297>,  <33.560631, 35.412792, 31.785397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097298, 35.086903, 32.217297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891106, 35.356739, 32.428658>,  <33.767391, 35.518639, 32.555473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891106, 35.356739, 32.428658>,  <34.097298, 35.086903, 32.217297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891106, 35.356739, 32.428658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105021, -0.661729, 0.742351,
		0.850440, 0.327176, 0.411957,
		-0.515483, 0.674589, 0.528400,
		33.736462, 35.559116, 32.587177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276047, 34.935921, 32.826656>,  <34.097298, 35.086903, 32.217297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276047, 34.935921, 32.826656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970924, 35.173794, 32.928223>,  <33.787849, 35.316517, 32.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970924, 35.173794, 32.928223>,  <34.276047, 34.935921, 32.826656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970924, 35.173794, 32.928223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085270, -0.481762, 0.872144,
		0.640976, 0.643628, 0.418201,
		-0.762810, 0.594683, 0.253916,
		33.742081, 35.352200, 33.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488777, 34.992882, 33.464760>,  <34.276047, 34.935921, 32.826656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488777, 34.992882, 33.464760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107162, 35.109833, 33.491100>,  <33.878193, 35.180004, 33.506905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107162, 35.109833, 33.491100>,  <34.488777, 34.992882, 33.464760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107162, 35.109833, 33.491100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139179, -0.626824, 0.766630,
		0.265422, 0.722225, 0.638703,
		-0.954034, 0.292375, 0.065854,
		33.820953, 35.197544, 33.510857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593945, 35.182312, 34.197800>,  <34.488777, 34.992882, 33.464760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593945, 35.182312, 34.197800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871109, 34.903828, 34.272797>,  <35.037407, 34.736736, 34.317795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871109, 34.903828, 34.272797>,  <34.593945, 35.182312, 34.197800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871109, 34.903828, 34.272797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720856, 0.674456, -0.159609,
		-0.015332, 0.245749, 0.969212,
		0.692915, -0.696216, 0.187491,
		35.078983, 34.694962, 34.329044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090073, 35.521469, 34.611668>,  <34.593945, 35.182312, 34.197800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090073, 35.521469, 34.611668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296291, 35.221310, 34.446205>,  <35.420021, 35.041214, 34.346928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296291, 35.221310, 34.446205>,  <35.090073, 35.521469, 34.611668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296291, 35.221310, 34.446205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722558, 0.640207, -0.260854,
		0.460570, -0.164408, 0.872265,
		0.515544, -0.750403, -0.413654,
		35.450954, 34.996189, 34.322109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772346, 35.706970, 34.718090>,  <35.090073, 35.521469, 34.611668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772346, 35.706970, 34.718090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823265, 35.436829, 34.427521>,  <35.853817, 35.274742, 34.253178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823265, 35.436829, 34.427521>,  <35.772346, 35.706970, 34.718090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823265, 35.436829, 34.427521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802362, 0.500675, -0.324870,
		0.583104, -0.541497, 0.605616,
		0.127301, -0.675356, -0.726422,
		35.861454, 35.234222, 34.209595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466347, 35.638432, 34.688808>,  <35.772346, 35.706970, 34.718090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466347, 35.638432, 34.688808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324787, 35.512787, 34.336426>,  <36.239849, 35.437401, 34.124996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324787, 35.512787, 34.336426>,  <36.466347, 35.638432, 34.688808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324787, 35.512787, 34.336426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798942, 0.388173, -0.459362,
		0.486256, -0.866403, 0.113584,
		-0.353902, -0.314115, -0.880957,
		36.218616, 35.418552, 34.072140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987446, 35.273479, 34.487324>,  <36.466347, 35.638432, 34.688808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987446, 35.273479, 34.487324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775734, 35.382996, 34.166100>,  <36.648708, 35.448708, 33.973366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775734, 35.382996, 34.166100>,  <36.987446, 35.273479, 34.487324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775734, 35.382996, 34.166100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819741, 0.409150, -0.400775,
		0.218842, -0.870421, -0.440993,
		-0.529275, 0.273794, -0.803059,
		36.616951, 35.465134, 33.925182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340687, 35.081169, 33.922020>,  <36.987446, 35.273479, 34.487324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340687, 35.081169, 33.922020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094120, 35.354538, 33.765575>,  <36.946182, 35.518559, 33.671711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094120, 35.354538, 33.765575>,  <37.340687, 35.081169, 33.922020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094120, 35.354538, 33.765575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739851, 0.332658, -0.584773,
		-0.269542, -0.649824, -0.710687,
		-0.616415, 0.683424, -0.391108,
		36.909195, 35.559566, 33.648243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405441, 34.984589, 33.258240>,  <37.340687, 35.081169, 33.922020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405441, 34.984589, 33.258240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259472, 35.356396, 33.279545>,  <37.171890, 35.579479, 33.292328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259472, 35.356396, 33.279545>,  <37.405441, 34.984589, 33.258240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259472, 35.356396, 33.279545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637241, 0.291063, -0.713587,
		-0.678791, -0.226462, -0.698539,
		-0.364919, 0.929515, 0.053260,
		37.149998, 35.635250, 33.295525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511330, 35.254230, 32.593502>,  <37.405441, 34.984589, 33.258240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511330, 35.254230, 32.593502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405762, 35.582489, 32.796238>,  <37.342419, 35.779446, 32.917881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405762, 35.582489, 32.796238>,  <37.511330, 35.254230, 32.593502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405762, 35.582489, 32.796238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487191, 0.566931, -0.664254,
		-0.832460, 0.071616, -0.549437,
		-0.263922, 0.820646, 0.506838,
		37.326584, 35.828682, 32.948288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339817, 35.735729, 32.093838>,  <37.511330, 35.254230, 32.593502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339817, 35.735729, 32.093838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443554, 35.943439, 32.419559>,  <37.505795, 36.068066, 32.614994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443554, 35.943439, 32.419559>,  <37.339817, 35.735729, 32.093838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443554, 35.943439, 32.419559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599584, 0.574424, -0.557257,
		-0.757126, 0.632767, -0.162374,
		0.259343, 0.519271, 0.814309,
		37.521358, 36.099220, 32.663853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174194, 36.481270, 31.926420>,  <37.339817, 35.735729, 32.093838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174194, 36.481270, 31.926420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461357, 36.460571, 32.204105>,  <37.633656, 36.448151, 32.370716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461357, 36.460571, 32.204105>,  <37.174194, 36.481270, 31.926420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461357, 36.460571, 32.204105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536116, 0.677226, -0.503929,
		-0.444062, 0.733953, 0.513928,
		0.717906, -0.051750, 0.694214,
		37.676727, 36.445045, 32.412369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467533, 37.104645, 31.983856>,  <37.174194, 36.481270, 31.926420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467533, 37.104645, 31.983856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747696, 36.919506, 32.201187>,  <37.915794, 36.808422, 32.331585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747696, 36.919506, 32.201187>,  <37.467533, 37.104645, 31.983856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747696, 36.919506, 32.201187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698437, 0.601265, -0.388157,
		-0.147028, 0.651348, 0.744398,
		0.700406, -0.462845, 0.543329,
		37.957817, 36.780651, 32.364185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747593, 37.545197, 32.373295>,  <37.467533, 37.104645, 31.983856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747593, 37.545197, 32.373295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027660, 37.261028, 32.344830>,  <38.195702, 37.090527, 32.327751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027660, 37.261028, 32.344830>,  <37.747593, 37.545197, 32.373295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027660, 37.261028, 32.344830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644737, 0.671944, -0.364425,
		0.306715, 0.209276, 0.928509,
		0.700171, -0.710419, -0.071168,
		38.237713, 37.047901, 32.323479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334499, 37.778809, 32.651360>,  <37.747593, 37.545197, 32.373295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334499, 37.778809, 32.651360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463554, 37.504154, 32.390762>,  <38.540989, 37.339363, 32.234406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463554, 37.504154, 32.390762>,  <38.334499, 37.778809, 32.651360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463554, 37.504154, 32.390762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689820, 0.641877, -0.334878,
		0.648115, -0.341367, 0.680746,
		0.322639, -0.686632, -0.651491,
		38.560345, 37.298164, 32.195316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089207, 37.939766, 32.628765>,  <38.334499, 37.778809, 32.651360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089207, 37.939766, 32.628765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015770, 37.712574, 32.307842>,  <38.971710, 37.576260, 32.115288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015770, 37.712574, 32.307842>,  <39.089207, 37.939766, 32.628765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015770, 37.712574, 32.307842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663445, 0.530659, -0.527486,
		0.725352, -0.629126, 0.279401,
		-0.183588, -0.567981, -0.802305,
		38.960693, 37.542179, 32.067150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724632, 37.914009, 32.251019>,  <39.089207, 37.939766, 32.628765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724632, 37.914009, 32.251019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430042, 37.857269, 31.986450>,  <39.253288, 37.823227, 31.827709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430042, 37.857269, 31.986450>,  <39.724632, 37.914009, 32.251019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430042, 37.857269, 31.986450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494878, 0.553632, -0.669766,
		0.461188, -0.820592, -0.337542,
		-0.736479, -0.141846, -0.661421,
		39.209099, 37.814716, 31.788023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074646, 37.776199, 31.710922>,  <39.724632, 37.914009, 32.251019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074646, 37.776199, 31.710922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710938, 37.867504, 31.571711>,  <39.492714, 37.922287, 31.488184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710938, 37.867504, 31.571711>,  <40.074646, 37.776199, 31.710922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710938, 37.867504, 31.571711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411992, 0.612279, -0.674816,
		0.059057, -0.756975, -0.650769,
		-0.909271, 0.228259, -0.348027,
		39.438156, 37.935982, 31.467302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120155, 37.646755, 31.019356>,  <40.074646, 37.776199, 31.710922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120155, 37.646755, 31.019356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783913, 37.862965, 31.033363>,  <39.582169, 37.992691, 31.041767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783913, 37.862965, 31.033363>,  <40.120155, 37.646755, 31.019356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783913, 37.862965, 31.033363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371334, 0.622142, -0.689239,
		-0.394332, -0.566373, -0.723687,
		-0.840603, 0.540519, 0.035017,
		39.531731, 38.025120, 31.043869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003422, 37.802849, 30.380890>,  <40.120155, 37.646755, 31.019356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003422, 37.802849, 30.380890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787132, 38.088173, 30.559244>,  <39.657360, 38.259365, 30.666256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.787132, 38.088173, 30.559244>,  <40.003422, 37.802849, 30.380890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787132, 38.088173, 30.559244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374659, 0.678796, -0.631559,
		-0.753159, -0.174444, -0.634287,
		-0.540723, 0.713306, 0.445885,
		39.624916, 38.302166, 30.693010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502041, 38.052235, 29.947466>,  <40.003422, 37.802849, 30.380890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502041, 38.052235, 29.947466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589195, 38.331409, 30.220348>,  <39.641487, 38.498917, 30.384077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589195, 38.331409, 30.220348>,  <39.502041, 38.052235, 29.947466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589195, 38.331409, 30.220348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478614, 0.532768, -0.697916,
		-0.850561, 0.478580, -0.217962,
		0.217886, 0.697940, 0.682207,
		39.654560, 38.540791, 30.425011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414185, 38.592484, 29.549517>,  <39.502041, 38.052235, 29.947466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414185, 38.592484, 29.549517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615791, 38.728676, 29.867018>,  <39.736755, 38.810390, 30.057518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.615791, 38.728676, 29.867018>,  <39.414185, 38.592484, 29.549517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615791, 38.728676, 29.867018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477543, 0.655907, -0.584584,
		-0.719669, 0.673689, 0.167990,
		0.504014, 0.340484, 0.793751,
		39.766994, 38.830822, 30.105143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295502, 39.357754, 29.588259>,  <39.414185, 38.592484, 29.549517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.295502, 39.357754, 29.588259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640690, 39.288288, 29.778048>,  <39.847801, 39.246609, 29.891920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640690, 39.288288, 29.778048>,  <39.295502, 39.357754, 29.588259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640690, 39.288288, 29.778048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462642, 0.649072, -0.603878,
		-0.203091, 0.740638, 0.640475,
		0.862970, -0.173668, 0.474471,
		39.899582, 39.236187, 29.920389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627567, 39.989613, 29.396067>,  <39.295502, 39.357754, 29.588259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627567, 39.989613, 29.396067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913742, 39.746910, 29.534632>,  <40.085445, 39.601288, 29.617771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.913742, 39.746910, 29.534632>,  <39.627567, 39.989613, 29.396067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913742, 39.746910, 29.534632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690149, 0.536478, -0.485681,
		0.108848, 0.586548, 0.802567,
		0.715435, -0.606756, 0.346411,
		40.128372, 39.564884, 29.638556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257713, 40.405609, 29.478228>,  <39.627567, 39.989613, 29.396067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257713, 40.405609, 29.478228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354500, 40.020245, 29.432108>,  <40.412571, 39.789028, 29.404436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354500, 40.020245, 29.432108>,  <40.257713, 40.405609, 29.478228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354500, 40.020245, 29.432108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690446, 0.254452, -0.677154,
		0.681714, 0.084244, 0.726752,
		0.241970, -0.963409, -0.115298,
		40.427090, 39.731220, 29.397518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009884, 40.340183, 29.386255>,  <40.257713, 40.405609, 29.478228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009884, 40.340183, 29.386255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872715, 39.995010, 29.237793>,  <40.790413, 39.787907, 29.148716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.872715, 39.995010, 29.237793>,  <41.009884, 40.340183, 29.386255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.872715, 39.995010, 29.237793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497445, 0.168345, -0.851005,
		0.796838, -0.476461, 0.371529,
		-0.342925, -0.862928, -0.371157,
		40.769836, 39.736134, 29.126446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.645580, 40.031231, 28.995335>,  <41.009884, 40.340183, 29.386255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.645580, 40.031231, 28.995335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322937, 39.848473, 28.845333>,  <41.129353, 39.738819, 28.755331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322937, 39.848473, 28.845333>,  <41.645580, 40.031231, 28.995335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322937, 39.848473, 28.845333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434551, -0.028302, -0.900202,
		0.400685, -0.889070, 0.221374,
		-0.806608, -0.456896, -0.375006,
		41.080956, 39.711403, 28.732832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.908752, 39.588726, 28.485859>,  <41.645580, 40.031231, 28.995335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.908752, 39.588726, 28.485859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520081, 39.589695, 28.391348>,  <41.286877, 39.590275, 28.334642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.520081, 39.589695, 28.391348>,  <41.908752, 39.588726, 28.485859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520081, 39.589695, 28.391348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234151, -0.124319, -0.964219,
		-0.031707, -0.992239, 0.120232,
		-0.971683, 0.002420, -0.236275,
		41.228577, 39.590420, 28.320465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.857979, 39.032990, 27.927406>,  <41.908752, 39.588726, 28.485859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.857979, 39.032990, 27.927406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541409, 39.272099, 27.876324>,  <41.351467, 39.415565, 27.845675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.541409, 39.272099, 27.876324>,  <41.857979, 39.032990, 27.927406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541409, 39.272099, 27.876324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052765, -0.141332, -0.988555,
		-0.608983, -0.789107, 0.080312,
		-0.791426, 0.597776, -0.127706,
		41.303982, 39.451431, 27.838013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364319, 38.728680, 27.477421>,  <41.857979, 39.032990, 27.927406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364319, 38.728680, 27.477421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299702, 39.122799, 27.455187>,  <41.260933, 39.359272, 27.441847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299702, 39.122799, 27.455187>,  <41.364319, 38.728680, 27.477421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299702, 39.122799, 27.455187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056571, -0.046987, -0.997292,
		-0.985243, -0.164248, -0.048149,
		-0.161540, 0.985300, -0.055585,
		41.251240, 39.418388, 27.438511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926147, 38.697788, 26.848808>,  <41.364319, 38.728680, 27.477421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926147, 38.697788, 26.848808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030132, 39.076836, 26.923044>,  <41.092522, 39.304264, 26.967587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030132, 39.076836, 26.923044>,  <40.926147, 38.697788, 26.848808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030132, 39.076836, 26.923044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034792, 0.182880, -0.982519,
		-0.964992, 0.261875, 0.014572,
		0.259962, 0.947616, 0.185589,
		41.108120, 39.361122, 26.978722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507790, 39.141937, 26.397636>,  <40.926147, 38.697788, 26.848808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507790, 39.141937, 26.397636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817528, 39.366055, 26.515257>,  <41.003372, 39.500523, 26.585829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.817528, 39.366055, 26.515257>,  <40.507790, 39.141937, 26.397636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.817528, 39.366055, 26.515257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242722, 0.166150, -0.955762,
		-0.584359, 0.811462, -0.007337,
		0.774345, 0.560289, 0.294051,
		41.049831, 39.534142, 26.603472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415535, 39.693321, 25.900093>,  <40.507790, 39.141937, 26.397636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415535, 39.693321, 25.900093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784428, 39.723969, 26.051680>,  <41.005764, 39.742355, 26.142632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784428, 39.723969, 26.051680>,  <40.415535, 39.693321, 25.900093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784428, 39.723969, 26.051680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355143, 0.219595, -0.908653,
		-0.152837, 0.972578, 0.175308,
		0.922233, 0.076617, 0.378967,
		41.061096, 39.746952, 26.165369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633820, 40.260357, 25.510962>,  <40.415535, 39.693321, 25.900093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633820, 40.260357, 25.510962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956787, 40.104370, 25.688049>,  <41.150566, 40.010777, 25.794302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956787, 40.104370, 25.688049>,  <40.633820, 40.260357, 25.510962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956787, 40.104370, 25.688049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503918, 0.065593, -0.861257,
		0.306823, 0.918489, 0.249473,
		0.807419, -0.389968, 0.442718,
		41.199013, 39.987381, 25.820864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.212788, 40.746796, 25.541216>,  <40.633820, 40.260357, 25.510962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.212788, 40.746796, 25.541216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379227, 40.383137, 25.548346>,  <41.479092, 40.164944, 25.552624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379227, 40.383137, 25.548346>,  <41.212788, 40.746796, 25.541216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379227, 40.383137, 25.548346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373448, 0.152980, -0.914950,
		0.829095, 0.387367, 0.403173,
		0.416099, -0.909145, 0.017826,
		41.504055, 40.110394, 25.553694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945591, 40.817421, 25.409657>,  <41.212788, 40.746796, 25.541216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945591, 40.817421, 25.409657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829861, 40.448582, 25.306879>,  <41.760422, 40.227276, 25.245213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829861, 40.448582, 25.306879>,  <41.945591, 40.817421, 25.409657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829861, 40.448582, 25.306879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485497, 0.089978, -0.869595,
		0.824973, -0.376344, 0.421644,
		-0.289329, -0.922100, -0.256943,
		41.743061, 40.171951, 25.229795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554977, 40.533794, 24.997255>,  <41.945591, 40.817421, 25.409657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554977, 40.533794, 24.997255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265331, 40.268406, 24.921925>,  <42.091545, 40.109173, 24.876726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265331, 40.268406, 24.921925>,  <42.554977, 40.533794, 24.997255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265331, 40.268406, 24.921925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394383, -0.174325, -0.902259,
		0.565793, -0.727610, 0.387893,
		-0.724113, -0.663471, -0.188325,
		42.048096, 40.069366, 24.865427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812550, 39.903900, 24.758545>,  <42.554977, 40.533794, 24.997255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812550, 39.903900, 24.758545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441525, 39.894814, 24.609358>,  <42.218910, 39.889362, 24.519846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441525, 39.894814, 24.609358>,  <42.812550, 39.903900, 24.758545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441525, 39.894814, 24.609358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373474, -0.087645, -0.923491,
		-0.011705, -0.995892, 0.089782,
		-0.927567, -0.022722, -0.372966,
		42.163254, 39.887997, 24.497469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.885662, 39.524513, 24.139082>,  <42.812550, 39.903900, 24.758545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.885662, 39.524513, 24.139082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532478, 39.710140, 24.110725>,  <42.320568, 39.821518, 24.093712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.532478, 39.710140, 24.110725>,  <42.885662, 39.524513, 24.139082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532478, 39.710140, 24.110725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202942, 0.241155, -0.949030,
		-0.423322, -0.852340, -0.307109,
		-0.882957, 0.464070, -0.070889,
		42.267590, 39.849361, 24.089458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706066, 39.489643, 23.416523>,  <42.885662, 39.524513, 24.139082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706066, 39.489643, 23.416523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429951, 39.731018, 23.576206>,  <42.264282, 39.875843, 23.672016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429951, 39.731018, 23.576206>,  <42.706066, 39.489643, 23.416523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429951, 39.731018, 23.576206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074745, 0.608272, -0.790202,
		-0.719663, -0.515629, -0.464987,
		-0.690289, 0.603434, 0.399210,
		42.222862, 39.912048, 23.695969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340794, 39.469582, 22.653887>,  <42.706066, 39.489643, 23.416523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340794, 39.469582, 22.653887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495026, 39.109631, 22.572348>,  <42.587566, 38.893661, 22.523424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495026, 39.109631, 22.572348>,  <42.340794, 39.469582, 22.653887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495026, 39.109631, 22.572348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287416, -0.327080, 0.900228,
		-0.876767, -0.288520, -0.384753,
		0.385579, -0.899875, -0.203848,
		42.610699, 38.839668, 22.511194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782463, 38.828350, 22.597872>,  <42.340794, 39.469582, 22.653887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782463, 38.828350, 22.597872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142067, 38.682159, 22.694372>,  <42.357830, 38.594444, 22.752272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.142067, 38.682159, 22.694372>,  <41.782463, 38.828350, 22.597872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142067, 38.682159, 22.694372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382955, -0.388892, 0.837919,
		-0.212421, -0.845688, -0.489580,
		0.899012, -0.365479, 0.241251,
		42.411770, 38.572517, 22.766747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.659634, 38.088345, 22.720032>,  <41.782463, 38.828350, 22.597872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.659634, 38.088345, 22.720032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016171, 38.163223, 22.885180>,  <42.230095, 38.208153, 22.984268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016171, 38.163223, 22.885180>,  <41.659634, 38.088345, 22.720032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016171, 38.163223, 22.885180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337477, -0.334080, 0.880057,
		0.302679, -0.923767, -0.234604,
		0.891344, 0.187201, 0.412869,
		42.283573, 38.219383, 23.009041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013744, 37.366665, 22.939375>,  <41.659634, 38.088345, 22.720032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013744, 37.366665, 22.939375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156147, 37.653873, 23.178610>,  <42.241589, 37.826199, 23.322151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.156147, 37.653873, 23.178610>,  <42.013744, 37.366665, 22.939375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.156147, 37.653873, 23.178610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291202, -0.522911, 0.801103,
		0.887955, -0.459359, 0.022931,
		0.356003, 0.718020, 0.598088,
		42.262947, 37.869278, 23.358036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386646, 37.034660, 23.307598>,  <42.013744, 37.366665, 22.939375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386646, 37.034660, 23.307598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354279, 37.374359, 23.516302>,  <42.334858, 37.578178, 23.641525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.354279, 37.374359, 23.516302>,  <42.386646, 37.034660, 23.307598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.354279, 37.374359, 23.516302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217785, -0.525895, 0.822195,
		0.972636, -0.047099, 0.227509,
		-0.080921, 0.849244, 0.521762,
		42.330002, 37.629131, 23.672831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796288, 36.904869, 23.927036>,  <42.386646, 37.034660, 23.307598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796288, 36.904869, 23.927036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583126, 37.227760, 24.028542>,  <42.455227, 37.421494, 24.089445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.583126, 37.227760, 24.028542>,  <42.796288, 36.904869, 23.927036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583126, 37.227760, 24.028542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129816, -0.374336, 0.918162,
		0.836156, 0.456353, 0.304277,
		-0.532907, 0.807227, 0.253761,
		42.423252, 37.469929, 24.104670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115849, 37.084782, 24.596020>,  <42.796288, 36.904869, 23.927036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115849, 37.084782, 24.596020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776676, 37.296402, 24.609371>,  <42.573174, 37.423374, 24.617382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776676, 37.296402, 24.609371>,  <43.115849, 37.084782, 24.596020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776676, 37.296402, 24.609371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172895, -0.335528, 0.926028,
		0.501120, 0.779437, 0.375976,
		-0.847931, 0.529055, 0.033379,
		42.522297, 37.455120, 24.619385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104607, 37.606037, 25.200933>,  <43.115849, 37.084782, 24.596020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104607, 37.606037, 25.200933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723675, 37.534161, 25.102322>,  <42.495117, 37.491035, 25.043154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.723675, 37.534161, 25.102322>,  <43.104607, 37.606037, 25.200933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723675, 37.534161, 25.102322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239389, -0.060743, 0.969022,
		-0.189101, 0.981845, 0.014831,
		-0.952330, -0.179693, -0.246530,
		42.437977, 37.480251, 25.028362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691261, 38.087688, 25.622776>,  <43.104607, 37.606037, 25.200933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691261, 38.087688, 25.622776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466400, 37.772430, 25.522535>,  <42.331482, 37.583275, 25.462391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.466400, 37.772430, 25.522535>,  <42.691261, 38.087688, 25.622776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.466400, 37.772430, 25.522535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257203, -0.121382, 0.958704,
		-0.786020, 0.603397, -0.134478,
		-0.562156, -0.788149, -0.250604,
		42.297752, 37.535984, 25.447353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141224, 38.169182, 26.121033>,  <42.691261, 38.087688, 25.622776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141224, 38.169182, 26.121033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107567, 37.804752, 25.959606>,  <42.087372, 37.586094, 25.862751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107567, 37.804752, 25.959606>,  <42.141224, 38.169182, 26.121033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107567, 37.804752, 25.959606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451291, -0.326240, 0.830605,
		-0.888401, 0.252017, -0.383707,
		-0.084146, -0.911074, -0.403565,
		42.082325, 37.531429, 25.838537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503239, 37.954922, 26.262260>,  <42.141224, 38.169182, 26.121033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503239, 37.954922, 26.262260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706036, 37.617302, 26.192360>,  <41.827713, 37.414730, 26.150419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706036, 37.617302, 26.192360>,  <41.503239, 37.954922, 26.262260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706036, 37.617302, 26.192360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339723, -0.381997, 0.859457,
		-0.792182, -0.376368, -0.480412,
		0.506988, -0.844053, -0.174751,
		41.858131, 37.364086, 26.139935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011768, 37.364037, 26.263309>,  <41.503239, 37.954922, 26.262260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011768, 37.364037, 26.263309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383766, 37.240196, 26.342560>,  <41.606964, 37.165890, 26.390110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383766, 37.240196, 26.342560>,  <41.011768, 37.364037, 26.263309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383766, 37.240196, 26.342560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338480, -0.511183, 0.790015,
		-0.143313, -0.801772, -0.580192,
		0.929996, -0.309603, 0.198125,
		41.662766, 37.147316, 26.401997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981453, 36.605465, 26.440300>,  <41.011768, 37.364037, 26.263309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981453, 36.605465, 26.440300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322647, 36.745277, 26.595341>,  <41.527363, 36.829166, 26.688366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322647, 36.745277, 26.595341>,  <40.981453, 36.605465, 26.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322647, 36.745277, 26.595341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196983, -0.472117, 0.859245,
		0.483329, -0.809278, -0.333859,
		0.852989, 0.349533, 0.387602,
		41.578545, 36.850136, 26.711622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182545, 36.065460, 26.827198>,  <40.981453, 36.605465, 26.440300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182545, 36.065460, 26.827198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378742, 36.379936, 26.977564>,  <41.496460, 36.568623, 27.067783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378742, 36.379936, 26.977564>,  <41.182545, 36.065460, 26.827198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378742, 36.379936, 26.977564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183602, -0.328457, 0.926502,
		0.851884, -0.523463, -0.016759,
		0.490494, 0.786195, 0.375917,
		41.525890, 36.615795, 27.090340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687943, 35.840427, 27.295496>,  <41.182545, 36.065460, 26.827198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687943, 35.840427, 27.295496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596596, 36.214561, 27.403568>,  <41.541786, 36.439041, 27.468410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596596, 36.214561, 27.403568>,  <41.687943, 35.840427, 27.295496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596596, 36.214561, 27.403568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003478, -0.278295, 0.960489,
		0.973568, 0.218408, 0.066807,
		-0.228371, 0.935334, 0.270179,
		41.528084, 36.495163, 27.484623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120411, 36.007492, 27.910759>,  <41.687943, 35.840427, 27.295496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120411, 36.007492, 27.910759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795975, 36.241344, 27.903507>,  <41.601311, 36.381657, 27.899157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795975, 36.241344, 27.903507>,  <42.120411, 36.007492, 27.910759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795975, 36.241344, 27.903507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154301, -0.183964, 0.970746,
		0.564195, 0.790165, 0.239422,
		-0.811095, 0.584633, -0.018131,
		41.552647, 36.416733, 27.898067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109562, 36.377518, 28.626072>,  <42.120411, 36.007492, 27.910759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109562, 36.377518, 28.626072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740963, 36.440338, 28.483986>,  <41.519802, 36.478031, 28.398735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740963, 36.440338, 28.483986>,  <42.109562, 36.377518, 28.626072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740963, 36.440338, 28.483986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379217, -0.166299, 0.910241,
		0.083887, 0.973488, 0.212802,
		-0.921498, 0.157055, -0.355213,
		41.464512, 36.487453, 28.377422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.841053, 37.014660, 28.965704>,  <42.109562, 36.377518, 28.626072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.841053, 37.014660, 28.965704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518169, 36.821957, 28.829279>,  <41.324440, 36.706333, 28.747425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518169, 36.821957, 28.829279>,  <41.841053, 37.014660, 28.965704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518169, 36.821957, 28.829279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276181, -0.202402, 0.939552,
		-0.521667, 0.852610, 0.030328,
		-0.807210, -0.481757, -0.341061,
		41.276005, 36.677429, 28.726961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241997, 37.225498, 29.322758>,  <41.841053, 37.014660, 28.965704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241997, 37.225498, 29.322758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114044, 36.868004, 29.196959>,  <41.037273, 36.653507, 29.121479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114044, 36.868004, 29.196959>,  <41.241997, 37.225498, 29.322758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114044, 36.868004, 29.196959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411398, -0.167995, 0.895840,
		-0.853480, 0.415945, -0.313944,
		-0.319879, -0.893738, -0.314499,
		41.018082, 36.599884, 29.102610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605576, 37.139091, 29.553951>,  <41.241997, 37.225498, 29.322758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605576, 37.139091, 29.553951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682384, 36.752125, 29.487938>,  <40.728470, 36.519947, 29.448330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.682384, 36.752125, 29.487938>,  <40.605576, 37.139091, 29.553951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682384, 36.752125, 29.487938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365659, -0.226581, 0.902748,
		-0.910725, -0.113004, -0.397253,
		0.192024, -0.967415, -0.165032,
		40.739990, 36.461899, 29.438429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009705, 36.727226, 29.828236>,  <40.605576, 37.139091, 29.553951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009705, 36.727226, 29.828236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310768, 36.465485, 29.799059>,  <40.491405, 36.308437, 29.781553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310768, 36.465485, 29.799059>,  <40.009705, 36.727226, 29.828236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310768, 36.465485, 29.799059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251344, -0.387946, 0.886749,
		-0.608549, -0.649086, -0.456460,
		0.752658, -0.654359, -0.072940,
		40.536564, 36.269176, 29.777178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628056, 36.122517, 29.983389>,  <40.009705, 36.727226, 29.828236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628056, 36.122517, 29.983389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019569, 36.061249, 30.037832>,  <40.254478, 36.024490, 30.070498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.019569, 36.061249, 30.037832>,  <39.628056, 36.122517, 29.983389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019569, 36.061249, 30.037832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190250, -0.432659, 0.881255,
		-0.076091, -0.888451, -0.452619,
		0.978782, -0.153166, 0.136106,
		40.313206, 36.015301, 30.078665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715176, 35.375481, 30.125792>,  <39.628056, 36.122517, 29.983389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715176, 35.375481, 30.125792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026657, 35.562435, 30.293201>,  <40.213547, 35.674610, 30.393648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.026657, 35.562435, 30.293201>,  <39.715176, 35.375481, 30.125792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026657, 35.562435, 30.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018581, -0.649618, 0.760034,
		0.627113, -0.599620, -0.497177,
		0.778707, 0.467389, 0.418525,
		40.260269, 35.702652, 30.418758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010109, 34.891972, 30.496717>,  <39.715176, 35.375481, 30.125792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010109, 34.891972, 30.496717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190811, 35.222836, 30.630413>,  <40.299232, 35.421356, 30.710630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190811, 35.222836, 30.630413>,  <40.010109, 34.891972, 30.496717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190811, 35.222836, 30.630413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160172, -0.443761, 0.881715,
		0.877644, -0.344787, -0.332961,
		0.451759, 0.827163, 0.334239,
		40.326340, 35.470985, 30.730684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.491024, 34.667076, 30.884373>,  <40.010109, 34.891972, 30.496717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.491024, 34.667076, 30.884373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513676, 35.037548, 31.033493>,  <40.527267, 35.259830, 31.122965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513676, 35.037548, 31.033493>,  <40.491024, 34.667076, 30.884373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513676, 35.037548, 31.033493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200644, -0.376341, 0.904494,
		0.978026, 0.023582, -0.207144,
		0.056627, 0.926181, 0.372803,
		40.530663, 35.315403, 31.145334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.111248, 34.794277, 31.260290>,  <40.491024, 34.667076, 30.884373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.111248, 34.794277, 31.260290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831043, 35.038792, 31.407597>,  <40.662922, 35.185501, 31.495979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831043, 35.038792, 31.407597>,  <41.111248, 34.794277, 31.260290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831043, 35.038792, 31.407597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027953, -0.492135, 0.870070,
		0.713097, 0.619785, 0.327657,
		-0.700508, 0.611285, 0.368265,
		40.620892, 35.222176, 31.518076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371548, 35.123974, 31.888311>,  <41.111248, 34.794277, 31.260290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371548, 35.123974, 31.888311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971855, 35.139454, 31.885727>,  <40.732040, 35.148743, 31.884176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.971855, 35.139454, 31.885727>,  <41.371548, 35.123974, 31.888311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971855, 35.139454, 31.885727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028723, -0.609388, 0.792352,
		0.026725, 0.791927, 0.610030,
		-0.999230, 0.038697, -0.006461,
		40.672085, 35.151062, 31.883789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239201, 34.948746, 32.596775>,  <41.371548, 35.123974, 31.888311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239201, 34.948746, 32.596775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865772, 34.927929, 32.454937>,  <40.641716, 34.915440, 32.369835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.865772, 34.927929, 32.454937>,  <41.239201, 34.948746, 32.596775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865772, 34.927929, 32.454937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166588, -0.813005, 0.557916,
		-0.317325, 0.579925, 0.750327,
		-0.933570, -0.052045, -0.354596,
		40.585701, 34.912315, 32.348557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890144, 34.884453, 33.142654>,  <41.239201, 34.948746, 32.596775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890144, 34.884453, 33.142654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656750, 34.730320, 32.856701>,  <40.516712, 34.637840, 32.685127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656750, 34.730320, 32.856701>,  <40.890144, 34.884453, 33.142654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656750, 34.730320, 32.856701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351365, -0.673839, 0.649987,
		-0.732179, 0.630445, 0.257785,
		-0.583487, -0.385331, -0.714887,
		40.481705, 34.614719, 32.642235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276958, 34.834393, 33.407310>,  <40.890144, 34.884453, 33.142654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276958, 34.834393, 33.407310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251179, 34.562771, 33.114811>,  <40.235710, 34.399799, 32.939312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251179, 34.562771, 33.114811>,  <40.276958, 34.834393, 33.407310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251179, 34.562771, 33.114811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391811, -0.656714, 0.644369,
		-0.917786, 0.328042, -0.223737,
		-0.064449, -0.679055, -0.731253,
		40.231846, 34.359055, 32.895435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581474, 34.503555, 33.467716>,  <40.276958, 34.834393, 33.407310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581474, 34.503555, 33.467716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777176, 34.228298, 33.253395>,  <39.894596, 34.063145, 33.124802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777176, 34.228298, 33.253395>,  <39.581474, 34.503555, 33.467716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777176, 34.228298, 33.253395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540452, -0.721398, 0.433009,
		-0.684496, 0.077717, -0.724862,
		0.489262, -0.688146, -0.535796,
		39.923954, 34.021854, 33.092655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026749, 34.089523, 33.243031>,  <39.581474, 34.503555, 33.467716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026749, 34.089523, 33.243031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364166, 33.883232, 33.183098>,  <39.566616, 33.759457, 33.147137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.364166, 33.883232, 33.183098>,  <39.026749, 34.089523, 33.243031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364166, 33.883232, 33.183098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439073, -0.822924, 0.360571,
		-0.309258, -0.238371, -0.920619,
		0.843549, -0.515728, -0.149834,
		39.617229, 33.728512, 33.138149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845493, 33.461159, 32.896286>,  <39.026749, 34.089523, 33.243031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845493, 33.461159, 32.896286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200958, 33.414589, 33.073700>,  <39.414238, 33.386646, 33.180149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.200958, 33.414589, 33.073700>,  <38.845493, 33.461159, 32.896286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200958, 33.414589, 33.073700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334547, -0.826116, 0.453443,
		0.313624, -0.551342, -0.773086,
		0.888661, -0.116423, 0.443540,
		39.467556, 33.379662, 33.206760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884022, 32.770954, 33.114380>,  <38.845493, 33.461159, 32.896286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884022, 32.770954, 33.114380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186054, 32.923515, 33.327690>,  <39.367275, 33.015053, 33.455677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186054, 32.923515, 33.327690>,  <38.884022, 32.770954, 33.114380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186054, 32.923515, 33.327690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095211, -0.740972, 0.664752,
		0.648680, -0.552716, -0.523182,
		0.755083, 0.381399, 0.533278,
		39.412579, 33.037933, 33.487675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185623, 32.229519, 33.302010>,  <38.884022, 32.770954, 33.114380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185623, 32.229519, 33.302010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331940, 32.482903, 33.574753>,  <39.419731, 32.634933, 33.738400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331940, 32.482903, 33.574753>,  <39.185623, 32.229519, 33.302010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331940, 32.482903, 33.574753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048972, -0.718514, 0.693786,
		0.929408, -0.287172, -0.231804,
		0.365790, 0.633459, 0.681856,
		39.441677, 32.672939, 33.779308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896618, 31.991524, 33.569218>,  <39.185623, 32.229519, 33.302010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896618, 31.991524, 33.569218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749100, 32.230099, 33.854385>,  <39.660587, 32.373241, 34.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.749100, 32.230099, 33.854385>,  <39.896618, 31.991524, 33.569218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749100, 32.230099, 33.854385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083405, -0.742656, 0.664459,
		0.925761, 0.304511, 0.224142,
		-0.368796, 0.596435, 0.712920,
		39.638462, 32.409031, 34.068260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184505, 31.771828, 34.102398>,  <39.896618, 31.991524, 33.569218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184505, 31.771828, 34.102398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889038, 31.962145, 34.293392>,  <39.711758, 32.076336, 34.407990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889038, 31.962145, 34.293392>,  <40.184505, 31.771828, 34.102398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889038, 31.962145, 34.293392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006165, -0.713100, 0.701035,
		0.674043, 0.514888, 0.529676,
		-0.738667, 0.475793, 0.477486,
		39.667439, 32.104881, 34.436638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366447, 31.757500, 34.831848>,  <40.184505, 31.771828, 34.102398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366447, 31.757500, 34.831848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968628, 31.795246, 34.814133>,  <39.729935, 31.817894, 34.803505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.968628, 31.795246, 34.814133>,  <40.366447, 31.757500, 34.831848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968628, 31.795246, 34.814133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100355, -0.751807, 0.651702,
		0.028203, 0.652595, 0.757181,
		-0.994552, 0.094367, -0.044287,
		39.670261, 31.823557, 34.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278355, 31.479420, 35.375298>,  <40.366447, 31.757500, 34.831848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278355, 31.479420, 35.375298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902809, 31.512466, 35.241611>,  <39.677483, 31.532295, 35.161400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902809, 31.512466, 35.241611>,  <40.278355, 31.479420, 35.375298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902809, 31.512466, 35.241611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266792, -0.788169, 0.554627,
		-0.217598, 0.609889, 0.762028,
		-0.938868, 0.082617, -0.334218,
		39.621147, 31.537252, 35.141346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832676, 31.557835, 35.891422>,  <40.278355, 31.479420, 35.375298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832676, 31.557835, 35.891422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600273, 31.399788, 35.606800>,  <39.460831, 31.304960, 35.436028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600273, 31.399788, 35.606800>,  <39.832676, 31.557835, 35.891422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600273, 31.399788, 35.606800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216212, -0.767917, 0.602956,
		-0.784654, 0.504170, 0.360737,
		-0.581008, -0.395116, -0.711556,
		39.425972, 31.281254, 35.393333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041084, 31.534788, 36.018929>,  <39.832676, 31.557835, 35.891422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.041084, 31.534788, 36.018929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144196, 31.246634, 35.761375>,  <39.206062, 31.073740, 35.606842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144196, 31.246634, 35.761375>,  <39.041084, 31.534788, 36.018929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144196, 31.246634, 35.761375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239272, -0.693248, 0.679820,
		-0.936107, -0.021182, -0.351076,
		0.257783, -0.720388, -0.643887,
		39.221531, 31.030518, 35.568211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.497055, 31.100191, 35.797768>,  <39.041084, 31.534788, 36.018929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.497055, 31.100191, 35.797768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839260, 30.894571, 35.772945>,  <39.044582, 30.771200, 35.758053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839260, 30.894571, 35.772945>,  <38.497055, 31.100191, 35.797768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839260, 30.894571, 35.772945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406720, -0.741335, 0.533854,
		-0.320428, -0.431482, -0.843297,
		0.855514, -0.514048, -0.062052,
		39.095913, 30.740356, 35.754330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292507, 30.361925, 35.656963>,  <38.497055, 31.100191, 35.797768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292507, 30.361925, 35.656963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657558, 30.375223, 35.819935>,  <38.876591, 30.383202, 35.917717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657558, 30.375223, 35.819935>,  <38.292507, 30.361925, 35.656963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657558, 30.375223, 35.819935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288426, -0.653921, 0.699427,
		0.289679, -0.755832, -0.587200,
		0.912632, 0.033246, 0.407429,
		38.931347, 30.385197, 35.942162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567081, 29.756317, 35.563656>,  <38.292507, 30.361925, 35.656963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567081, 29.756317, 35.563656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740608, 29.913534, 35.887959>,  <38.844723, 30.007864, 36.082539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740608, 29.913534, 35.887959>,  <38.567081, 29.756317, 35.563656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740608, 29.913534, 35.887959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363698, -0.746879, 0.556682,
		0.824335, -0.536367, -0.181059,
		0.433815, 0.393042, 0.810754,
		38.870754, 30.031446, 36.131184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511101, 29.209166, 36.038536>,  <38.567081, 29.756317, 35.563656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511101, 29.209166, 36.038536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640099, 29.496603, 36.284988>,  <38.717499, 29.669065, 36.432861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640099, 29.496603, 36.284988>,  <38.511101, 29.209166, 36.038536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640099, 29.496603, 36.284988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389865, -0.492300, 0.778233,
		0.862555, -0.491187, 0.121389,
		0.322498, 0.718594, 0.616132,
		38.736847, 29.712181, 36.469830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705742, 28.824543, 36.635822>,  <38.511101, 29.209166, 36.038536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705742, 28.824543, 36.635822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690475, 29.195604, 36.784416>,  <38.681316, 29.418242, 36.873573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690475, 29.195604, 36.784416>,  <38.705742, 28.824543, 36.635822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690475, 29.195604, 36.784416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337512, -0.361877, 0.868983,
		0.940547, -0.092212, 0.326907,
		-0.038170, 0.927654, 0.371485,
		38.679024, 29.473900, 36.895863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092457, 28.786625, 37.201942>,  <38.705742, 28.824543, 36.635822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092457, 28.786625, 37.201942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802509, 29.061241, 37.224693>,  <38.628540, 29.226011, 37.238342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.802509, 29.061241, 37.224693>,  <39.092457, 28.786625, 37.201942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802509, 29.061241, 37.224693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407045, -0.493448, 0.768651,
		0.555775, 0.534016, 0.637136,
		-0.724865, 0.686539, 0.056877,
		38.585049, 29.267202, 37.241756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100155, 28.956488, 37.872089>,  <39.092457, 28.786625, 37.201942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100155, 28.956488, 37.872089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730320, 29.038956, 37.743938>,  <38.508419, 29.088436, 37.667049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730320, 29.038956, 37.743938>,  <39.100155, 28.956488, 37.872089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730320, 29.038956, 37.743938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375048, -0.344722, 0.860526,
		0.066972, 0.915784, 0.396048,
		-0.924583, 0.206168, -0.320377,
		38.452946, 29.100805, 37.647827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732304, 29.330345, 38.317116>,  <39.100155, 28.956488, 37.872089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732304, 29.330345, 38.317116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395390, 29.220255, 38.131725>,  <38.193241, 29.154202, 38.020489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395390, 29.220255, 38.131725>,  <38.732304, 29.330345, 38.317116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395390, 29.220255, 38.131725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403567, -0.248028, 0.880690,
		-0.357345, 0.928834, 0.097837,
		-0.842281, -0.275226, -0.463479,
		38.142704, 29.137688, 37.992683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364021, 29.157949, 38.932186>,  <38.732304, 29.330345, 38.317116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364021, 29.157949, 38.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079185, 29.105869, 38.656223>,  <37.908283, 29.074621, 38.490646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.079185, 29.105869, 38.656223>,  <38.364021, 29.157949, 38.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079185, 29.105869, 38.656223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587920, -0.426539, 0.687324,
		-0.383763, 0.895049, 0.227187,
		-0.712093, -0.130201, -0.689907,
		37.865559, 29.066809, 38.449249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718201, 29.414806, 39.246063>,  <38.364021, 29.157949, 38.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718201, 29.414806, 39.246063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700909, 29.137892, 38.957932>,  <37.690533, 28.971743, 38.785053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700909, 29.137892, 38.957932>,  <37.718201, 29.414806, 39.246063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700909, 29.137892, 38.957932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607571, -0.554137, 0.569026,
		-0.793088, 0.462250, -0.396656,
		-0.043230, -0.692284, -0.720329,
		37.687939, 28.930206, 38.741833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912331, 29.127693, 39.279652>,  <37.718201, 29.414806, 39.246063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912331, 29.127693, 39.279652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125778, 28.859898, 39.072948>,  <37.253845, 28.699221, 38.948929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125778, 28.859898, 39.072948>,  <36.912331, 29.127693, 39.279652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125778, 28.859898, 39.072948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516926, -0.741790, 0.427241,
		-0.669357, 0.039141, -0.741910,
		0.533619, -0.669489, -0.516755,
		37.285862, 28.659050, 38.917923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388290, 28.749466, 39.008331>,  <36.912331, 29.127693, 39.279652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388290, 28.749466, 39.008331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732159, 28.548681, 39.046276>,  <36.938480, 28.428211, 39.069042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732159, 28.548681, 39.046276>,  <36.388290, 28.749466, 39.008331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732159, 28.548681, 39.046276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492193, -0.764159, 0.416902,
		-0.136782, -0.405088, -0.903988,
		0.859673, -0.501962, 0.094858,
		36.990059, 28.398092, 39.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229038, 28.044844, 38.902367>,  <36.388290, 28.749466, 39.008331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229038, 28.044844, 38.902367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565067, 28.008364, 39.116268>,  <36.766685, 27.986475, 39.244610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565067, 28.008364, 39.116268>,  <36.229038, 28.044844, 38.902367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565067, 28.008364, 39.116268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421250, -0.730786, 0.537123,
		0.341807, -0.676487, -0.652329,
		0.840069, -0.091201, 0.534758,
		36.817089, 27.981003, 39.276695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516846, 27.373716, 38.817909>,  <36.229038, 28.044844, 38.902367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516846, 27.373716, 38.817909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618557, 27.517399, 39.177090>,  <36.679585, 27.603609, 39.392597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618557, 27.517399, 39.177090>,  <36.516846, 27.373716, 38.817909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618557, 27.517399, 39.177090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418666, -0.796079, 0.437010,
		0.871816, -0.487062, -0.052036,
		0.254275, 0.359206, 0.897950,
		36.694839, 27.625160, 39.446476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855858, 26.866983, 39.323082>,  <36.516846, 27.373716, 38.817909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855858, 26.866983, 39.323082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676376, 27.144596, 39.548286>,  <36.568687, 27.311163, 39.683411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676376, 27.144596, 39.548286>,  <36.855858, 26.866983, 39.323082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676376, 27.144596, 39.548286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456245, -0.719610, 0.523452,
		0.768442, -0.021995, 0.639542,
		-0.448707, 0.694030, 0.563013,
		36.541763, 27.352804, 39.717190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768509, 26.394270, 39.898098>,  <36.855858, 26.866983, 39.323082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768509, 26.394270, 39.898098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579510, 26.723675, 40.023685>,  <36.466110, 26.921318, 40.099037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.579510, 26.723675, 40.023685>,  <36.768509, 26.394270, 39.898098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579510, 26.723675, 40.023685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481773, -0.539641, 0.690421,
		0.738000, 0.174961, 0.651724,
		-0.472494, 0.823514, 0.313964,
		36.437763, 26.970730, 40.117874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692028, 26.300446, 40.684467>,  <36.768509, 26.394270, 39.898098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692028, 26.300446, 40.684467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427063, 26.578775, 40.573444>,  <36.268085, 26.745773, 40.506828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.427063, 26.578775, 40.573444>,  <36.692028, 26.300446, 40.684467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.427063, 26.578775, 40.573444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611703, -0.288505, 0.736603,
		0.432468, 0.657720, 0.616746,
		-0.662413, 0.695823, -0.277560,
		36.228340, 26.787521, 40.490177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702019, 26.806440, 41.161007>,  <36.692028, 26.300446, 40.684467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702019, 26.806440, 41.161007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348763, 26.768044, 40.977337>,  <36.136806, 26.745005, 40.867134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348763, 26.768044, 40.977337>,  <36.702019, 26.806440, 41.161007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348763, 26.768044, 40.977337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411618, -0.310928, 0.856676,
		-0.225007, 0.945573, 0.235081,
		-0.883143, -0.095994, -0.459176,
		36.083820, 26.739244, 40.839584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195091, 27.288820, 41.393806>,  <36.702019, 26.806440, 41.161007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195091, 27.288820, 41.393806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035858, 26.945826, 41.263428>,  <35.940319, 26.740028, 41.185200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035858, 26.945826, 41.263428>,  <36.195091, 27.288820, 41.393806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035858, 26.945826, 41.263428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324008, -0.200989, 0.924457,
		-0.858224, 0.473622, -0.197822,
		-0.398084, -0.857487, -0.325952,
		35.916431, 26.688580, 41.165642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418766, 27.129339, 41.739456>,  <36.195091, 27.288820, 41.393806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418766, 27.129339, 41.739456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621983, 26.801237, 41.634327>,  <35.743912, 26.604376, 41.571251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621983, 26.801237, 41.634327>,  <35.418766, 27.129339, 41.739456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621983, 26.801237, 41.634327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122363, -0.370768, 0.920629,
		-0.852597, -0.435558, -0.288735,
		0.508041, -0.820256, -0.262819,
		35.774395, 26.555161, 41.555481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038311, 26.602308, 41.680069>,  <35.418766, 27.129339, 41.739456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038311, 26.602308, 41.680069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394817, 26.439943, 41.760941>,  <35.608723, 26.342525, 41.809464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394817, 26.439943, 41.760941>,  <35.038311, 26.602308, 41.680069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394817, 26.439943, 41.760941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386236, -0.445878, 0.807475,
		-0.237614, -0.797767, -0.554174,
		0.891270, -0.405909, 0.202179,
		35.662197, 26.318171, 41.821594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862453, 25.808784, 41.866405>,  <35.038311, 26.602308, 41.680069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862453, 25.808784, 41.866405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637142, 25.908987, 41.551456>,  <34.501953, 25.969109, 41.362488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637142, 25.908987, 41.551456>,  <34.862453, 25.808784, 41.866405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637142, 25.908987, 41.551456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798652, 0.409368, -0.441104,
		0.211827, -0.877306, -0.430655,
		-0.563280, 0.250506, -0.787377,
		34.468159, 25.984138, 41.315243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183659, 25.559595, 41.180439>,  <34.862453, 25.808784, 41.866405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183659, 25.559595, 41.180439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962872, 25.881361, 41.092571>,  <34.830399, 26.074421, 41.039852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962872, 25.881361, 41.092571>,  <35.183659, 25.559595, 41.180439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962872, 25.881361, 41.092571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815993, 0.466805, -0.340951,
		-0.171724, -0.367440, -0.914056,
		-0.551966, 0.804413, -0.219667,
		34.797283, 26.122684, 41.026672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329594, 25.726452, 40.596828>,  <35.183659, 25.559595, 41.180439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329594, 25.726452, 40.596828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193798, 26.069506, 40.751339>,  <35.112320, 26.275337, 40.844048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193798, 26.069506, 40.751339>,  <35.329594, 25.726452, 40.596828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193798, 26.069506, 40.751339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905270, 0.409420, -0.113404,
		-0.255410, 0.311188, -0.915384,
		-0.339487, 0.857634, 0.386279,
		35.091953, 26.326796, 40.867222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334652, 26.208551, 40.069115>,  <35.329594, 25.726452, 40.596828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334652, 26.208551, 40.069115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412815, 26.381529, 40.421207>,  <35.459713, 26.485315, 40.632462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412815, 26.381529, 40.421207>,  <35.334652, 26.208551, 40.069115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412815, 26.381529, 40.421207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637389, 0.626131, -0.449105,
		-0.745353, 0.648809, -0.153284,
		0.195408, 0.432444, 0.880232,
		35.471436, 26.511261, 40.685276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092228, 26.848621, 40.022022>,  <35.334652, 26.208551, 40.069115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092228, 26.848621, 40.022022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368259, 26.848003, 40.311516>,  <35.533878, 26.847633, 40.485210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368259, 26.848003, 40.311516>,  <35.092228, 26.848621, 40.022022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368259, 26.848003, 40.311516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465434, 0.766726, -0.442156,
		-0.554221, 0.641973, 0.529821,
		0.690080, -0.001545, 0.723732,
		35.575283, 26.847540, 40.528637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245766, 27.529612, 40.241287>,  <35.092228, 26.848621, 40.022022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245766, 27.529612, 40.241287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578842, 27.340677, 40.356888>,  <35.778687, 27.227316, 40.426250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.578842, 27.340677, 40.356888>,  <35.245766, 27.529612, 40.241287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578842, 27.340677, 40.356888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552618, 0.675651, -0.487964,
		0.035218, 0.566032, 0.823630,
		0.832690, -0.472338, 0.289004,
		35.828648, 27.198977, 40.443588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739025, 28.036669, 40.306938>,  <35.245766, 27.529612, 40.241287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739025, 28.036669, 40.306938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944260, 27.701115, 40.234264>,  <36.067402, 27.499783, 40.190659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.944260, 27.701115, 40.234264>,  <35.739025, 28.036669, 40.306938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944260, 27.701115, 40.234264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579406, 0.494671, -0.647757,
		0.633268, 0.227088, 0.739867,
		0.513088, -0.838887, -0.181683,
		36.098186, 27.449448, 40.179760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439499, 28.098751, 40.680092>,  <35.739025, 28.036669, 40.306938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439499, 28.098751, 40.680092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467728, 27.861563, 40.359241>,  <36.484665, 27.719250, 40.166733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.467728, 27.861563, 40.359241>,  <36.439499, 28.098751, 40.680092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467728, 27.861563, 40.359241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673814, 0.621274, -0.399991,
		0.735523, -0.512255, 0.443397,
		0.070573, -0.592970, -0.802126,
		36.488899, 27.683672, 40.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076504, 28.165220, 40.583057>,  <36.439499, 28.098751, 40.680092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076504, 28.165220, 40.583057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948997, 27.984299, 40.249878>,  <36.872494, 27.875746, 40.049969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948997, 27.984299, 40.249878>,  <37.076504, 28.165220, 40.583057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948997, 27.984299, 40.249878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732696, 0.439903, -0.519270,
		0.601287, -0.775826, 0.191177,
		-0.318763, -0.452305, -0.832953,
		36.853367, 27.848608, 39.999992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599255, 27.867928, 40.233410>,  <37.076504, 28.165220, 40.583057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599255, 27.867928, 40.233410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324238, 27.844229, 39.943920>,  <37.159225, 27.830009, 39.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324238, 27.844229, 39.943920>,  <37.599255, 27.867928, 40.233410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324238, 27.844229, 39.943920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717879, 0.094465, -0.689729,
		0.109233, -0.993763, -0.022415,
		-0.687545, -0.059251, -0.723720,
		37.117973, 27.826454, 39.726803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835297, 27.324415, 39.753338>,  <37.599255, 27.867928, 40.233410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835297, 27.324415, 39.753338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595173, 27.605623, 39.600819>,  <37.451099, 27.774349, 39.509308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595173, 27.605623, 39.600819>,  <37.835297, 27.324415, 39.753338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595173, 27.605623, 39.600819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691248, 0.216299, -0.689485,
		-0.402248, -0.677477, -0.615809,
		-0.600310, 0.703021, -0.381299,
		37.415081, 27.816530, 39.486427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152714, 27.629517, 39.163960>,  <37.835297, 27.324415, 39.753338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152714, 27.629517, 39.163960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803658, 27.817427, 39.110569>,  <37.594223, 27.930172, 39.078537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803658, 27.817427, 39.110569>,  <38.152714, 27.629517, 39.163960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803658, 27.817427, 39.110569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394648, 0.517334, -0.759354,
		-0.287676, -0.715316, -0.636841,
		-0.872637, 0.469776, -0.133473,
		37.541866, 27.958359, 39.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914112, 27.619600, 38.447239>,  <38.152714, 27.629517, 39.163960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914112, 27.619600, 38.447239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745129, 27.943748, 38.609634>,  <37.643738, 28.138237, 38.707073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745129, 27.943748, 38.609634>,  <37.914112, 27.619600, 38.447239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745129, 27.943748, 38.609634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281416, 0.543057, -0.791135,
		-0.861588, -0.219970, -0.457471,
		-0.422459, 0.810372, 0.405988,
		37.618393, 28.186859, 38.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758724, 27.921261, 37.872864>,  <37.914112, 27.619600, 38.447239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758724, 27.921261, 37.872864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728863, 28.208698, 38.149429>,  <37.710945, 28.381161, 38.315369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728863, 28.208698, 38.149429>,  <37.758724, 27.921261, 37.872864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728863, 28.208698, 38.149429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362066, 0.665565, -0.652635,
		-0.929158, 0.201614, -0.309866,
		-0.074656, 0.718593, 0.691412,
		37.706467, 28.424276, 38.356853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257496, 28.279617, 37.607639>,  <37.758724, 27.921261, 37.872864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257496, 28.279617, 37.607639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524166, 28.463543, 37.842285>,  <37.684170, 28.573898, 37.983070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524166, 28.463543, 37.842285>,  <37.257496, 28.279617, 37.607639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524166, 28.463543, 37.842285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295551, 0.559431, -0.774395,
		-0.684246, 0.689645, 0.237062,
		0.666677, 0.459812, 0.586613,
		37.724171, 28.601486, 38.018269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135262, 29.019684, 37.628891>,  <37.257496, 28.279617, 37.607639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135262, 29.019684, 37.628891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520039, 28.939943, 37.703632>,  <37.750908, 28.892099, 37.748478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520039, 28.939943, 37.703632>,  <37.135262, 29.019684, 37.628891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520039, 28.939943, 37.703632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267956, 0.822055, -0.502419,
		-0.053449, 0.533370, 0.844192,
		0.961947, -0.199353, 0.186857,
		37.808624, 28.880138, 37.759689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417648, 29.457621, 37.132668>,  <37.135262, 29.019684, 37.628891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417648, 29.457621, 37.132668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741066, 29.388029, 37.357521>,  <37.935116, 29.346273, 37.492432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741066, 29.388029, 37.357521>,  <37.417648, 29.457621, 37.132668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741066, 29.388029, 37.357521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506205, 0.692723, -0.513703,
		-0.300027, 0.699904, 0.648165,
		0.808542, -0.173980, 0.562131,
		37.983627, 29.335835, 37.526161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698044, 30.185528, 37.393986>,  <37.417648, 29.457621, 37.132668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698044, 30.185528, 37.393986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010387, 29.935658, 37.396496>,  <38.197792, 29.785734, 37.398003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010387, 29.935658, 37.396496>,  <37.698044, 30.185528, 37.393986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010387, 29.935658, 37.396496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507733, 0.628758, -0.588957,
		0.363962, 0.463078, 0.808140,
		0.780858, -0.624677, 0.006276,
		38.244644, 29.748255, 37.398380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383625, 30.595707, 37.305531>,  <37.698044, 30.185528, 37.393986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383625, 30.595707, 37.305531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503242, 30.229019, 37.199554>,  <38.575012, 30.009007, 37.135967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503242, 30.229019, 37.199554>,  <38.383625, 30.595707, 37.305531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503242, 30.229019, 37.199554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679424, 0.399506, -0.615449,
		0.670042, 0.004037, 0.742312,
		0.299043, -0.916721, -0.264943,
		38.592957, 29.954002, 37.120071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 30.608385, 37.315327>,  <38.383625, 30.595707, 37.305531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199337, 30.608385, 37.315327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061424, 30.330532, 37.062782>,  <38.978676, 30.163820, 36.911255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061424, 30.330532, 37.062782>,  <39.199337, 30.608385, 37.315327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061424, 30.330532, 37.062782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694784, 0.263424, -0.669240,
		0.631191, -0.669397, 0.391798,
		-0.344779, -0.694634, -0.631357,
		38.957993, 30.122143, 36.873375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887356, 30.355021, 36.958019>,  <39.199337, 30.608385, 37.315327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887356, 30.355021, 36.958019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575924, 30.253906, 36.728264>,  <39.389065, 30.193237, 36.590412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.575924, 30.253906, 36.728264>,  <39.887356, 30.355021, 36.958019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575924, 30.253906, 36.728264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523385, 0.243441, -0.816581,
		0.346250, -0.936395, -0.057232,
		-0.778575, -0.252786, -0.574387,
		39.342350, 30.178072, 36.555946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196686, 30.162691, 36.268444>,  <39.887356, 30.355021, 36.958019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196686, 30.162691, 36.268444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812386, 30.246227, 36.195400>,  <39.581806, 30.296349, 36.151573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812386, 30.246227, 36.195400>,  <40.196686, 30.162691, 36.268444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812386, 30.246227, 36.195400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259958, 0.447906, -0.855454,
		-0.096862, -0.869348, -0.484615,
		-0.960750, 0.208840, -0.182609,
		39.524162, 30.308880, 36.140617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291561, 30.298738, 35.458267>,  <40.196686, 30.162691, 36.268444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291561, 30.298738, 35.458267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910172, 30.397364, 35.527660>,  <39.681339, 30.456539, 35.569298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.910172, 30.397364, 35.527660>,  <40.291561, 30.298738, 35.458267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910172, 30.397364, 35.527660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005625, 0.589895, -0.807460,
		-0.301429, -0.768915, -0.563835,
		-0.953472, 0.246564, 0.173487,
		39.624130, 30.471333, 35.579708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961868, 30.248688, 34.785225>,  <40.291561, 30.298738, 35.458267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961868, 30.248688, 34.785225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752827, 30.484196, 35.031879>,  <39.627403, 30.625500, 35.179871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752827, 30.484196, 35.031879>,  <39.961868, 30.248688, 34.785225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752827, 30.484196, 35.031879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087500, 0.682403, -0.725720,
		-0.848076, -0.433217, -0.305107,
		-0.522601, 0.588769, 0.616636,
		39.596046, 30.660826, 35.216869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086685, 30.864119, 34.546814>,  <39.961868, 30.248688, 34.785225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086685, 30.864119, 34.546814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772076, 30.976828, 34.766628>,  <39.583309, 31.044453, 34.898518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772076, 30.976828, 34.766628>,  <40.086685, 30.864119, 34.546814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772076, 30.976828, 34.766628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003788, 0.892027, -0.451966,
		-0.617554, -0.353399, -0.702664,
		-0.786520, 0.281775, 0.549536,
		39.536121, 31.061359, 34.931488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.752090, 30.495615, 34.757900>,  <40.086685, 30.864119, 34.546814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.752090, 30.495615, 34.757900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763474, 30.794117, 34.491879>,  <40.770306, 30.973219, 34.332268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763474, 30.794117, 34.491879>,  <40.752090, 30.495615, 34.757900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763474, 30.794117, 34.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992146, -0.102163, -0.072179,
		-0.121807, -0.657772, -0.743303,
		0.028461, 0.746257, -0.665050,
		40.772011, 31.017994, 34.292362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193783, 30.337208, 34.144512>,  <40.752090, 30.495615, 34.757900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193783, 30.337208, 34.144512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178761, 30.726305, 34.236042>,  <41.169746, 30.959763, 34.290958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178761, 30.726305, 34.236042>,  <41.193783, 30.337208, 34.144512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178761, 30.726305, 34.236042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978931, -0.010177, 0.203937,
		0.200707, 0.231663, -0.951866,
		-0.037557, 0.972743, 0.228825,
		41.167492, 31.018127, 34.304691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713852, 30.787840, 33.718632>,  <41.193783, 30.337208, 34.144512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713852, 30.787840, 33.718632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618301, 30.902311, 34.089802>,  <41.560970, 30.970993, 34.312504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618301, 30.902311, 34.089802>,  <41.713852, 30.787840, 33.718632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618301, 30.902311, 34.089802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900356, -0.292662, 0.322037,
		0.363727, 0.912388, -0.187752,
		-0.238875, 0.286177, 0.927923,
		41.546638, 30.988165, 34.368179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192917, 31.231743, 34.030506>,  <41.713852, 30.787840, 33.718632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192917, 31.231743, 34.030506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065083, 31.051630, 34.363998>,  <41.988380, 30.943562, 34.564095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.065083, 31.051630, 34.363998>,  <42.192917, 31.231743, 34.030506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065083, 31.051630, 34.363998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947161, -0.126360, 0.294820,
		-0.027402, 0.883899, 0.466874,
		-0.319586, -0.450283, 0.833733,
		41.969208, 30.916546, 34.614117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955853, 31.909643, 34.141090>,  <42.192917, 31.231743, 34.030506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955853, 31.909643, 34.141090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034851, 32.198143, 33.875523>,  <42.082253, 32.371243, 33.716183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034851, 32.198143, 33.875523>,  <41.955853, 31.909643, 34.141090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034851, 32.198143, 33.875523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941582, 0.048897, 0.333214,
		0.272794, -0.690947, -0.669459,
		0.197499, 0.721250, -0.663922,
		42.094101, 32.414516, 33.676346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624825, 32.045799, 34.228676>,  <41.955853, 31.909643, 34.141090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624825, 32.045799, 34.228676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548992, 32.325874, 33.953346>,  <42.503494, 32.493919, 33.788147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548992, 32.325874, 33.953346>,  <42.624825, 32.045799, 34.228676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548992, 32.325874, 33.953346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917036, 0.376779, 0.130704,
		0.350864, -0.606439, -0.713531,
		-0.189579, 0.700193, -0.688324,
		42.492119, 32.535931, 33.746849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146851, 32.156319, 33.805126>,  <42.624825, 32.045799, 34.228676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146851, 32.156319, 33.805126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954468, 32.506302, 33.782768>,  <42.839039, 32.716293, 33.769352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.954468, 32.506302, 33.782768>,  <43.146851, 32.156319, 33.805126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.954468, 32.506302, 33.782768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876741, 0.480188, -0.027286,
		0.002967, -0.062129, -0.998064,
		-0.480954, 0.874962, -0.055896,
		42.810181, 32.768791, 33.765999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.314663, 32.454479, 33.154449>,  <43.146851, 32.156319, 33.805126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.314663, 32.454479, 33.154449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245747, 32.743355, 33.422409>,  <43.204395, 32.916679, 33.583183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245747, 32.743355, 33.422409>,  <43.314663, 32.454479, 33.154449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245747, 32.743355, 33.422409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907181, 0.381335, -0.177779,
		-0.383846, 0.577090, -0.720853,
		-0.172292, 0.722184, 0.669900,
		43.194057, 32.960011, 33.623379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905811, 32.128437, 32.968132>,  <43.314663, 32.454479, 33.154449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905811, 32.128437, 32.968132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922859, 31.766064, 32.799622>,  <43.933090, 31.548639, 32.698517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.922859, 31.766064, 32.799622>,  <43.905811, 32.128437, 32.968132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922859, 31.766064, 32.799622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097807, 0.423416, -0.900640,
		0.994292, -0.002816, 0.106653,
		0.042622, -0.905931, -0.421274,
		43.935646, 31.494284, 32.673241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435871, 32.563759, 32.899376>,  <43.905811, 32.128437, 32.968132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435871, 32.563759, 32.899376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301331, 32.885616, 32.703655>,  <44.220604, 33.078732, 32.586224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.301331, 32.885616, 32.703655>,  <44.435871, 32.563759, 32.899376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301331, 32.885616, 32.703655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652230, 0.573827, 0.495296,
		0.679309, -0.152539, -0.717824,
		-0.336355, 0.804645, -0.489297,
		44.200424, 33.127010, 32.556866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.955185, 33.006664, 32.537823>,  <44.435871, 32.563759, 32.899376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.955185, 33.006664, 32.537823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676552, 33.280277, 32.624428>,  <44.509373, 33.444443, 32.676392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676552, 33.280277, 32.624428>,  <44.955185, 33.006664, 32.537823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676552, 33.280277, 32.624428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675097, 0.522701, 0.520603,
		0.242937, 0.508810, -0.825890,
		-0.696581, 0.684030, 0.216513,
		44.467579, 33.485485, 32.689381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050526, 33.793228, 32.286583>,  <44.955185, 33.006664, 32.537823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050526, 33.793228, 32.286583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882549, 33.709583, 32.639835>,  <44.781765, 33.659397, 32.851788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.882549, 33.709583, 32.639835>,  <45.050526, 33.793228, 32.286583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.882549, 33.709583, 32.639835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586741, 0.679823, 0.439972,
		-0.692376, 0.702932, -0.162792,
		-0.419941, -0.209109, 0.883132,
		44.756569, 33.646851, 32.904774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.770950, 34.368958, 32.730366>,  <45.050526, 33.793228, 32.286583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.770950, 34.368958, 32.730366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866787, 34.082615, 32.992710>,  <44.924290, 33.910809, 33.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866787, 34.082615, 32.992710>,  <44.770950, 34.368958, 32.730366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866787, 34.082615, 32.992710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665726, 0.612843, 0.425714,
		-0.706687, 0.334625, 0.623393,
		0.239588, -0.715856, 0.655857,
		44.938663, 33.867859, 33.189468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.984035, 34.634811, 33.366982>,  <44.770950, 34.368958, 32.730366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.984035, 34.634811, 33.366982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156456, 34.273895, 33.363659>,  <45.259907, 34.057346, 33.361664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.156456, 34.273895, 33.363659>,  <44.984035, 34.634811, 33.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156456, 34.273895, 33.363659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711681, 0.334303, 0.617860,
		-0.554713, -0.272239, 0.786244,
		0.431050, -0.902290, -0.008305,
		45.285770, 34.003208, 33.361168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183094, 34.548351, 33.964279>,  <44.984035, 34.634811, 33.366982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183094, 34.548351, 33.964279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444374, 34.312920, 33.773743>,  <45.601143, 34.171661, 33.659420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.444374, 34.312920, 33.773743>,  <45.183094, 34.548351, 33.964279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444374, 34.312920, 33.773743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742941, 0.376758, 0.553256,
		-0.146171, -0.715281, 0.683379,
		0.653202, -0.588580, -0.476341,
		45.640335, 34.136345, 33.630840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.554790, 34.034920, 34.456043>,  <45.183094, 34.548351, 33.964279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.554790, 34.034920, 34.456043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763298, 34.141682, 34.131809>,  <45.888401, 34.205738, 33.937267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763298, 34.141682, 34.131809>,  <45.554790, 34.034920, 34.456043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763298, 34.141682, 34.131809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763158, 0.279305, 0.582734,
		0.381933, -0.922362, -0.058098,
		0.521264, 0.266903, -0.810584,
		45.919678, 34.221752, 33.888634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.218586, 33.727943, 34.485973>,  <45.554790, 34.034920, 34.456043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.218586, 33.727943, 34.485973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264282, 34.060322, 34.268173>,  <46.291698, 34.259747, 34.137493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264282, 34.060322, 34.268173>,  <46.218586, 33.727943, 34.485973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264282, 34.060322, 34.268173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617252, 0.370095, 0.694284,
		0.778428, -0.415408, -0.470622,
		0.114236, 0.830943, -0.544504,
		46.298553, 34.309605, 34.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.920849, 33.890011, 34.252678>,  <46.218586, 33.727943, 34.485973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.920849, 33.890011, 34.252678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691059, 34.210102, 34.321518>,  <46.553185, 34.402157, 34.362823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691059, 34.210102, 34.321518>,  <46.920849, 33.890011, 34.252678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691059, 34.210102, 34.321518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628274, 0.296319, 0.719352,
		0.524648, 0.521374, -0.672988,
		-0.574471, 0.800228, 0.172102,
		46.518719, 34.450169, 34.373150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.348679, 34.501080, 34.245171>,  <46.920849, 33.890011, 34.252678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.348679, 34.501080, 34.245171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030067, 34.502850, 34.487003>,  <46.838902, 34.503910, 34.632103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.030067, 34.502850, 34.487003>,  <47.348679, 34.501080, 34.245171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.030067, 34.502850, 34.487003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596723, 0.166594, 0.784964,
		-0.097249, 0.986016, -0.135335,
		-0.796532, 0.004420, 0.604580,
		46.791107, 34.504177, 34.668377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.593742, 35.111485, 34.488281>,  <47.348679, 34.501080, 34.245171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.593742, 35.111485, 34.488281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711498, 35.002369, 34.854652>,  <47.782150, 34.936897, 35.074474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.711498, 35.002369, 34.854652>,  <47.593742, 35.111485, 34.488281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.711498, 35.002369, 34.854652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849878, -0.363595, -0.381452,
		0.437083, 0.890721, 0.124802,
		0.294390, -0.272792, 0.915925,
		47.799816, 34.920532, 35.129429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.803341, 33.526039, 25.248960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567535, 33.838696, 25.330448>,  <38.426052, 34.026291, 25.379341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.567535, 33.838696, 25.330448>,  <38.803341, 33.526039, 25.248960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567535, 33.838696, 25.330448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282049, -0.435519, 0.854852,
		0.756912, 0.446493, 0.477208,
		-0.589518, 0.781644, 0.203717,
		38.390678, 34.073189, 25.391563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914024, 33.741966, 25.943811>,  <38.803341, 33.526039, 25.248960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914024, 33.741966, 25.943811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539677, 33.859726, 25.866371>,  <38.315067, 33.930382, 25.819908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.539677, 33.859726, 25.866371>,  <38.914024, 33.741966, 25.943811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539677, 33.859726, 25.866371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313288, -0.443809, 0.839574,
		0.161246, 0.846384, 0.507577,
		-0.935869, 0.294396, -0.193599,
		38.258915, 33.948044, 25.808290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636497, 34.163971, 26.537357>,  <38.914024, 33.741966, 25.943811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636497, 34.163971, 26.537357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317291, 34.053043, 26.323345>,  <38.125767, 33.986488, 26.194937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.317291, 34.053043, 26.323345>,  <38.636497, 34.163971, 26.537357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317291, 34.053043, 26.323345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406087, -0.408521, 0.817438,
		-0.445263, 0.869600, 0.213392,
		-0.798019, -0.277320, -0.535033,
		38.077885, 33.969849, 26.162836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026318, 34.255077, 26.951689>,  <38.636497, 34.163971, 26.537357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026318, 34.255077, 26.951689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.879326, 33.998745, 26.682083>,  <37.791130, 33.844948, 26.520319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.879326, 33.998745, 26.682083>,  <38.026318, 34.255077, 26.951689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879326, 33.998745, 26.682083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648727, -0.342681, 0.679502,
		-0.666416, 0.686956, -0.289794,
		-0.367481, -0.640828, -0.674015,
		37.769081, 33.806496, 26.479879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300880, 34.250851, 27.135605>,  <38.026318, 34.255077, 26.951689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300880, 34.250851, 27.135605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362774, 33.924923, 26.912134>,  <37.399910, 33.729366, 26.778051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.362774, 33.924923, 26.912134>,  <37.300880, 34.250851, 27.135605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362774, 33.924923, 26.912134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448068, -0.561863, 0.695374,
		-0.880508, 0.142731, -0.452034,
		0.154730, -0.814824, -0.558678,
		37.409191, 33.680477, 26.744532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683887, 34.049038, 27.072065>,  <37.300880, 34.250851, 27.135605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683887, 34.049038, 27.072065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916977, 33.729210, 27.013933>,  <37.056831, 33.537312, 26.979053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.916977, 33.729210, 27.013933>,  <36.683887, 34.049038, 27.072065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916977, 33.729210, 27.013933> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466007, -0.475273, 0.746293,
		-0.665785, -0.367158, -0.649558,
		0.582725, -0.799569, -0.145332,
		37.091793, 33.489338, 26.970333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239735, 33.369461, 27.127487>,  <36.683887, 34.049038, 27.072065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239735, 33.369461, 27.127487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613686, 33.240299, 27.186453>,  <36.838058, 33.162804, 27.221832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.613686, 33.240299, 27.186453>,  <36.239735, 33.369461, 27.127487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613686, 33.240299, 27.186453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287169, -0.443920, 0.848805,
		-0.208643, -0.835863, -0.507740,
		0.934881, -0.322905, 0.147413,
		36.894150, 33.143429, 27.230677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266033, 32.640896, 27.162474>,  <36.239735, 33.369461, 27.127487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266033, 32.640896, 27.162474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597748, 32.756260, 27.353930>,  <36.796776, 32.825478, 27.468803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597748, 32.756260, 27.353930>,  <36.266033, 32.640896, 27.162474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597748, 32.756260, 27.353930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236266, -0.595242, 0.768027,
		0.506413, -0.750004, -0.425487,
		0.829291, 0.288410, 0.478639,
		36.846535, 32.842785, 27.497520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524418, 32.030304, 27.411711>,  <36.266033, 32.640896, 27.162474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524418, 32.030304, 27.411711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692120, 32.322689, 27.627085>,  <36.792740, 32.498119, 27.756310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692120, 32.322689, 27.627085>,  <36.524418, 32.030304, 27.411711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692120, 32.322689, 27.627085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151955, -0.528208, 0.835408,
		0.895060, -0.432069, -0.110381,
		0.419258, 0.730967, 0.538433,
		36.817898, 32.541981, 27.788614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091915, 31.764200, 27.889320>,  <36.524418, 32.030304, 27.411711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091915, 31.764200, 27.889320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968830, 32.106525, 28.055643>,  <36.894978, 32.311920, 28.155437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968830, 32.106525, 28.055643>,  <37.091915, 31.764200, 27.889320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968830, 32.106525, 28.055643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208653, -0.487070, 0.848072,
		0.928318, 0.174205, 0.328447,
		-0.307715, 0.855812, 0.415808,
		36.876514, 32.363270, 28.180386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530994, 31.924911, 28.536457>,  <37.091915, 31.764200, 27.889320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530994, 31.924911, 28.536457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198879, 32.145229, 28.570522>,  <36.999611, 32.277420, 28.590961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198879, 32.145229, 28.570522>,  <37.530994, 31.924911, 28.536457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198879, 32.145229, 28.570522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167105, -0.391790, 0.904752,
		0.531696, 0.736973, 0.417338,
		-0.830286, 0.550792, 0.085161,
		36.949795, 32.310467, 28.596071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670528, 32.268459, 29.225122>,  <37.530994, 31.924911, 28.536457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670528, 32.268459, 29.225122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282238, 32.336758, 29.157557>,  <37.049263, 32.377739, 29.117018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.282238, 32.336758, 29.157557>,  <37.670528, 32.268459, 29.225122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282238, 32.336758, 29.157557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223659, -0.386304, 0.894844,
		0.087543, 0.906429, 0.413186,
		-0.970728, 0.170751, -0.168913,
		36.991020, 32.387981, 29.106882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453259, 32.543915, 29.890930>,  <37.670528, 32.268459, 29.225122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453259, 32.543915, 29.890930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122665, 32.421989, 29.701605>,  <36.924309, 32.348835, 29.588011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.122665, 32.421989, 29.701605>,  <37.453259, 32.543915, 29.890930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122665, 32.421989, 29.701605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346021, -0.388145, 0.854174,
		-0.444074, 0.869732, 0.215323,
		-0.826479, -0.304810, -0.473311,
		36.874722, 32.330547, 29.559612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939747, 32.822830, 30.182430>,  <37.453259, 32.543915, 29.890930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939747, 32.822830, 30.182430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795097, 32.480789, 30.033819>,  <36.708309, 32.275566, 29.944653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.795097, 32.480789, 30.033819>,  <36.939747, 32.822830, 30.182430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795097, 32.480789, 30.033819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361273, -0.238840, 0.901353,
		-0.859483, 0.460172, -0.222555,
		-0.361623, -0.855101, -0.371527,
		36.686611, 32.224258, 29.922361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367832, 32.763653, 30.458586>,  <36.939747, 32.822830, 30.182430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367832, 32.763653, 30.458586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.415554, 32.385742, 30.336491>,  <36.444187, 32.158997, 30.263233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.415554, 32.385742, 30.336491>,  <36.367832, 32.763653, 30.458586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415554, 32.385742, 30.336491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135284, -0.320034, 0.937697,
		-0.983598, -0.070576, -0.165994,
		0.119303, -0.944774, -0.305237,
		36.451344, 32.102310, 30.244919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997604, 32.492004, 30.821367>,  <36.367832, 32.763653, 30.458586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997604, 32.492004, 30.821367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179699, 32.167736, 30.674082>,  <36.288956, 31.973175, 30.585711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.179699, 32.167736, 30.674082>,  <35.997604, 32.492004, 30.821367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179699, 32.167736, 30.674082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210352, -0.499764, 0.840231,
		-0.865167, -0.305047, -0.398035,
		0.455233, -0.810668, -0.368212,
		36.316269, 31.924536, 30.563618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637470, 32.032280, 31.028240>,  <35.997604, 32.492004, 30.821367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637470, 32.032280, 31.028240> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972923, 31.830383, 30.946325>,  <36.174194, 31.709246, 30.897177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.972923, 31.830383, 30.946325>,  <35.637470, 32.032280, 31.028240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972923, 31.830383, 30.946325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051368, -0.447567, 0.892774,
		-0.542279, -0.738185, -0.401269,
		0.838627, -0.504745, -0.204787,
		36.224510, 31.678961, 30.884890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496025, 31.198414, 31.082750>,  <35.637470, 32.032280, 31.028240>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496025, 31.198414, 31.082750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887287, 31.266235, 31.130852>,  <36.122044, 31.306929, 31.159712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887287, 31.266235, 31.130852>,  <35.496025, 31.198414, 31.082750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887287, 31.266235, 31.130852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006283, -0.602362, 0.798198,
		0.207773, -0.780008, -0.590270,
		0.978157, 0.169552, 0.120254,
		36.180733, 31.317101, 31.166927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770786, 30.605024, 31.427771>,  <35.496025, 31.198414, 31.082750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770786, 30.605024, 31.427771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077343, 30.855940, 31.483131>,  <36.261276, 31.006489, 31.516348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.077343, 30.855940, 31.483131>,  <35.770786, 30.605024, 31.427771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077343, 30.855940, 31.483131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241127, -0.480622, 0.843125,
		0.595405, -0.612788, -0.519600,
		0.766388, 0.627290, 0.138404,
		36.307259, 31.044127, 31.524652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310268, 30.199072, 31.609015>,  <35.770786, 30.605024, 31.427771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310268, 30.199072, 31.609015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390793, 30.556412, 31.769714>,  <36.439106, 30.770815, 31.866135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390793, 30.556412, 31.769714>,  <36.310268, 30.199072, 31.609015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390793, 30.556412, 31.769714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239874, -0.442619, 0.864031,
		0.949703, -0.077569, -0.303394,
		0.201310, 0.893349, 0.401750,
		36.451187, 30.824417, 31.890240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897675, 30.094490, 31.995359>,  <36.310268, 30.199072, 31.609015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897675, 30.094490, 31.995359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706215, 30.405743, 32.158043>,  <36.591339, 30.592493, 32.255653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706215, 30.405743, 32.158043>,  <36.897675, 30.094490, 31.995359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706215, 30.405743, 32.158043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033293, -0.446800, 0.894014,
		0.877376, 0.441457, 0.187953,
		-0.478646, 0.778129, 0.406710,
		36.562622, 30.639181, 32.280056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219635, 30.189955, 32.735291>,  <36.897675, 30.094490, 31.995359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219635, 30.189955, 32.735291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888401, 30.414173, 32.738220>,  <36.689659, 30.548704, 32.739979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.888401, 30.414173, 32.738220>,  <37.219635, 30.189955, 32.735291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888401, 30.414173, 32.738220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177911, -0.275163, 0.944792,
		0.531616, 0.781070, 0.327588,
		-0.828090, 0.560548, 0.007320,
		36.639973, 30.582338, 32.740417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043320, 30.161224, 32.853718>,  <37.219635, 30.189955, 32.735291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043320, 30.161224, 32.853718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409138, 30.292152, 32.948776>,  <38.628628, 30.370708, 33.005810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409138, 30.292152, 32.948776>,  <38.043320, 30.161224, 32.853718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409138, 30.292152, 32.948776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122259, 0.783725, -0.608957,
		-0.385572, 0.527862, 0.756766,
		0.914542, 0.327318, 0.237647,
		38.683502, 30.390348, 33.020069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023525, 30.860476, 33.015247>,  <38.043320, 30.161224, 32.853718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023525, 30.860476, 33.015247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395145, 30.783438, 32.888893>,  <38.618118, 30.737215, 32.813080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.395145, 30.783438, 32.888893>,  <38.023525, 30.860476, 33.015247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395145, 30.783438, 32.888893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073196, 0.741252, -0.667224,
		0.362651, 0.643003, 0.674560,
		0.929046, -0.192594, -0.315881,
		38.673859, 30.725660, 32.794128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290283, 31.500807, 32.804501>,  <38.023525, 30.860476, 33.015247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290283, 31.500807, 32.804501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551529, 31.252901, 32.630451>,  <38.708275, 31.104156, 32.526020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.551529, 31.252901, 32.630451>,  <38.290283, 31.500807, 32.804501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551529, 31.252901, 32.630451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006160, 0.578932, -0.815353,
		0.757234, 0.529839, 0.381926,
		0.653115, -0.619766, -0.435123,
		38.747463, 31.066971, 32.499916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964779, 31.957273, 32.628414>,  <38.290283, 31.500807, 32.804501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964779, 31.957273, 32.628414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982258, 31.628155, 32.401752>,  <38.992744, 31.430683, 32.265755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.982258, 31.628155, 32.401752>,  <38.964779, 31.957273, 32.628414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982258, 31.628155, 32.401752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240514, 0.559177, -0.793394,
		0.969662, -0.101620, 0.222328,
		0.043696, -0.822797, -0.566653,
		38.995365, 31.381315, 32.231758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630898, 31.920515, 32.387470>,  <38.964779, 31.957273, 32.628414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630898, 31.920515, 32.387470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398499, 31.707994, 32.140842>,  <39.259060, 31.580482, 31.992865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.398499, 31.707994, 32.140842>,  <39.630898, 31.920515, 32.387470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398499, 31.707994, 32.140842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405328, 0.468053, -0.785261,
		0.705799, -0.706148, -0.056586,
		-0.580996, -0.531301, -0.616573,
		39.224201, 31.548605, 31.955870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004940, 31.815777, 31.822710>,  <39.630898, 31.920515, 32.387470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004940, 31.815777, 31.822710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647678, 31.722748, 31.668728>,  <39.433323, 31.666929, 31.576338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647678, 31.722748, 31.668728>,  <40.004940, 31.815777, 31.822710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647678, 31.722748, 31.668728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285604, 0.367904, -0.884916,
		0.347431, -0.900310, -0.262171,
		-0.893153, -0.232570, -0.384954,
		39.379734, 31.652975, 31.553242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183388, 31.397478, 31.296345>,  <40.004940, 31.815777, 31.822710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183388, 31.397478, 31.296345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818150, 31.538467, 31.214344>,  <39.599007, 31.623060, 31.165144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.818150, 31.538467, 31.214344>,  <40.183388, 31.397478, 31.296345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818150, 31.538467, 31.214344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322090, 0.315176, -0.892705,
		-0.250043, -0.881151, -0.401313,
		-0.913092, 0.352473, -0.205002,
		39.544224, 31.644209, 31.152843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966125, 31.138420, 30.635471>,  <40.183388, 31.397478, 31.296345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966125, 31.138420, 30.635471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778481, 31.488945, 30.679302>,  <39.665894, 31.699261, 30.705601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.778481, 31.488945, 30.679302>,  <39.966125, 31.138420, 30.635471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778481, 31.488945, 30.679302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278865, 0.264713, -0.923126,
		-0.837954, -0.402495, -0.368553,
		-0.469114, 0.876313, 0.109575,
		39.637745, 31.751839, 30.712175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823769, 31.353371, 29.974453>,  <39.966125, 31.138420, 30.635471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823769, 31.353371, 29.974453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708427, 31.681553, 30.171919>,  <39.639225, 31.878462, 30.290398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.708427, 31.681553, 30.171919>,  <39.823769, 31.353371, 29.974453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708427, 31.681553, 30.171919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163592, 0.550194, -0.818855,
		-0.943447, -0.155357, -0.292869,
		-0.288350, 0.820457, 0.493664,
		39.621922, 31.927691, 30.320019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263485, 31.626705, 29.636225>,  <39.823769, 31.353371, 29.974453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263485, 31.626705, 29.636225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430737, 31.940479, 29.819456>,  <39.531086, 32.128742, 29.929396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430737, 31.940479, 29.819456>,  <39.263485, 31.626705, 29.636225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430737, 31.940479, 29.819456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032288, 0.516791, -0.855503,
		-0.907816, 0.342917, 0.241411,
		0.418125, 0.784433, 0.458078,
		39.556175, 32.175808, 29.956881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993484, 32.217560, 29.313305>,  <39.263485, 31.626705, 29.636225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993484, 32.217560, 29.313305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334648, 32.344814, 29.478878>,  <39.539345, 32.421165, 29.578222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334648, 32.344814, 29.478878>,  <38.993484, 32.217560, 29.313305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334648, 32.344814, 29.478878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146222, 0.615572, -0.774396,
		-0.501168, 0.721014, 0.478507,
		0.852906, 0.318135, 0.413933,
		39.590519, 32.440254, 29.603058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918835, 32.954586, 29.437946>,  <38.993484, 32.217560, 29.313305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918835, 32.954586, 29.437946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300610, 32.839645, 29.405773>,  <39.529675, 32.770679, 29.386469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.300610, 32.839645, 29.405773>,  <38.918835, 32.954586, 29.437946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300610, 32.839645, 29.405773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093879, 0.545017, -0.833152,
		0.283247, 0.787644, 0.547163,
		0.954441, -0.287355, -0.080432,
		39.586941, 32.753437, 29.381643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138565, 33.496330, 29.032829>,  <38.918835, 32.954586, 29.437946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138565, 33.496330, 29.032829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457893, 33.255444, 29.031240>,  <39.649490, 33.110912, 29.030287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.457893, 33.255444, 29.031240>,  <39.138565, 33.496330, 29.032829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457893, 33.255444, 29.031240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416111, 0.556356, -0.719250,
		0.435352, 0.572542, 0.694740,
		0.798324, -0.602216, -0.003970,
		39.697392, 33.074780, 29.030050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788887, 33.940624, 29.044180>,  <39.138565, 33.496330, 29.032829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788887, 33.940624, 29.044180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931179, 33.593502, 28.905405>,  <40.016556, 33.385227, 28.822140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.931179, 33.593502, 28.905405>,  <39.788887, 33.940624, 29.044180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.931179, 33.593502, 28.905405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295091, 0.456521, -0.839351,
		0.886779, 0.196205, 0.418481,
		0.355730, -0.867809, -0.346935,
		40.037899, 33.333160, 28.801325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441677, 34.141911, 28.758970>,  <39.788887, 33.940624, 29.044180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441677, 34.141911, 28.758970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326290, 33.801590, 28.583281>,  <40.257057, 33.597397, 28.477867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.326290, 33.801590, 28.583281>,  <40.441677, 34.141911, 28.758970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326290, 33.801590, 28.583281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141906, 0.415669, -0.898378,
		0.946916, -0.321481, 0.000828,
		-0.288467, -0.850805, -0.439224,
		40.239750, 33.546349, 28.451513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944946, 33.953964, 28.376757>,  <40.441677, 34.141911, 28.758970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944946, 33.953964, 28.376757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.633350, 33.769753, 28.206541>,  <40.446392, 33.659225, 28.104412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.633350, 33.769753, 28.206541>,  <40.944946, 33.953964, 28.376757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.633350, 33.769753, 28.206541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221913, 0.432248, -0.874023,
		0.586451, -0.775290, -0.234521,
		-0.778993, -0.460528, -0.425539,
		40.399651, 33.631596, 28.078878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214741, 33.702236, 27.808308>,  <40.944946, 33.953964, 28.376757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214741, 33.702236, 27.808308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.820393, 33.696968, 27.741503>,  <40.583786, 33.693810, 27.701420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.820393, 33.696968, 27.741503>,  <41.214741, 33.702236, 27.808308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.820393, 33.696968, 27.741503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151090, 0.360819, -0.920316,
		0.072378, -0.932543, -0.353730,
		-0.985867, -0.013166, -0.167013,
		40.524632, 33.693020, 27.691399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072334, 33.181187, 27.163326>,  <41.214741, 33.702236, 27.808308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072334, 33.181187, 27.163326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767914, 33.437168, 27.205770>,  <40.585262, 33.590755, 27.231237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.767914, 33.437168, 27.205770>,  <41.072334, 33.181187, 27.163326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767914, 33.437168, 27.205770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137915, 0.319463, -0.937509,
		-0.633858, -0.698860, -0.331387,
		-0.761054, 0.639951, 0.106111,
		40.539597, 33.629154, 27.237604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.618397, 33.126045, 26.512079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511868, 33.479908, 26.665157>,  <40.447952, 33.692226, 26.757004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.511868, 33.479908, 26.665157>,  <40.618397, 33.126045, 26.512079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511868, 33.479908, 26.665157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092499, 0.371746, -0.923715,
		-0.959436, -0.281401, -0.017173,
		-0.266318, 0.884657, 0.382696,
		40.431973, 33.745304, 26.779966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958916, 33.318626, 26.249596>,  <40.618397, 33.126045, 26.512079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958916, 33.318626, 26.249596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155525, 33.653507, 26.345512>,  <40.273491, 33.854435, 26.403063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.155525, 33.653507, 26.345512>,  <39.958916, 33.318626, 26.249596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155525, 33.653507, 26.345512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001925, 0.276392, -0.961043,
		-0.870861, 0.471916, 0.137465,
		0.491526, 0.837199, 0.239790,
		40.302982, 33.904667, 26.417450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606647, 33.917122, 25.839367>,  <39.958916, 33.318626, 26.249596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606647, 33.917122, 25.839367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961555, 34.040749, 25.976324>,  <40.174500, 34.114925, 26.058498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.961555, 34.040749, 25.976324>,  <39.606647, 33.917122, 25.839367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961555, 34.040749, 25.976324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145342, 0.517164, -0.843455,
		-0.437758, 0.798135, 0.413943,
		0.887268, 0.309066, 0.342395,
		40.227737, 34.133469, 26.079042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691998, 34.563347, 25.465199>,  <39.606647, 33.917122, 25.839367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691998, 34.563347, 25.465199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048897, 34.481251, 25.626080>,  <40.263039, 34.431995, 25.722609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.048897, 34.481251, 25.626080>,  <39.691998, 34.563347, 25.465199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048897, 34.481251, 25.626080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439828, 0.596588, -0.671293,
		-0.102174, 0.775861, 0.622575,
		0.892251, -0.205237, 0.402201,
		40.316570, 34.419678, 25.746740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008163, 35.289387, 25.540041>,  <39.691998, 34.563347, 25.465199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008163, 35.289387, 25.540041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287933, 35.004288, 25.518892>,  <40.455795, 34.833229, 25.506203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.287933, 35.004288, 25.518892>,  <40.008163, 35.289387, 25.540041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287933, 35.004288, 25.518892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347061, 0.403374, -0.846663,
		0.624786, 0.573826, 0.529496,
		0.699422, -0.712751, -0.052870,
		40.497761, 34.790462, 25.503031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574299, 35.623764, 25.295326>,  <40.008163, 35.289387, 25.540041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574299, 35.623764, 25.295326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652912, 35.235050, 25.243156>,  <40.700081, 35.001823, 25.211855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.652912, 35.235050, 25.243156>,  <40.574299, 35.623764, 25.295326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.652912, 35.235050, 25.243156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458442, 0.208659, -0.863883,
		0.866721, 0.109993, 0.486515,
		0.196536, -0.971784, -0.130424,
		40.711872, 34.943516, 25.204029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339645, 35.557095, 25.190411>,  <40.574299, 35.623764, 25.295326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339645, 35.557095, 25.190411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139000, 35.257351, 25.017509>,  <41.018612, 35.077503, 24.913769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.139000, 35.257351, 25.017509>,  <41.339645, 35.557095, 25.190411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139000, 35.257351, 25.017509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658578, -0.006793, -0.752482,
		0.560943, -0.662129, 0.496919,
		-0.501615, -0.749359, -0.432253,
		40.988514, 35.032543, 24.887833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842796, 35.305622, 24.781212>,  <41.339645, 35.557095, 25.190411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842796, 35.305622, 24.781212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524532, 35.109043, 24.639559>,  <41.333576, 34.991096, 24.554567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.524532, 35.109043, 24.639559>,  <41.842796, 35.305622, 24.781212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524532, 35.109043, 24.639559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389921, 0.031870, -0.920297,
		0.463567, -0.870322, 0.166270,
		-0.795656, -0.491451, -0.354131,
		41.285835, 34.961609, 24.533319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114582, 34.713272, 24.323282>,  <41.842796, 35.305622, 24.781212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114582, 34.713272, 24.323282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745121, 34.799911, 24.196821>,  <41.523445, 34.851894, 24.120945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745121, 34.799911, 24.196821>,  <42.114582, 34.713272, 24.323282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745121, 34.799911, 24.196821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311662, -0.055518, -0.948570,
		-0.223007, -0.974682, -0.016225,
		-0.923653, 0.216595, -0.316152,
		41.468025, 34.864891, 24.101976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932907, 34.289452, 23.784037>,  <42.114582, 34.713272, 24.323282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932907, 34.289452, 23.784037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698933, 34.611137, 23.741905>,  <41.558548, 34.804150, 23.716627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.698933, 34.611137, 23.741905>,  <41.932907, 34.289452, 23.784037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.698933, 34.611137, 23.741905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238168, 0.046173, -0.970126,
		-0.775325, -0.592545, -0.218546,
		-0.584934, 0.804213, -0.105326,
		41.523453, 34.852402, 23.710308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667366, 34.147915, 23.120983>,  <41.932907, 34.289452, 23.784037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667366, 34.147915, 23.120983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.529526, 34.522419, 23.148335>,  <41.446823, 34.747120, 23.164745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.529526, 34.522419, 23.148335>,  <41.667366, 34.147915, 23.120983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529526, 34.522419, 23.148335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219937, 0.151331, -0.963705,
		-0.912623, -0.317052, -0.258066,
		-0.344598, 0.936257, 0.068377,
		41.426147, 34.803295, 23.168848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160034, 34.312420, 22.586828>,  <41.667366, 34.147915, 23.120983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160034, 34.312420, 22.586828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250385, 34.683727, 22.705013>,  <41.304596, 34.906513, 22.775925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.250385, 34.683727, 22.705013>,  <41.160034, 34.312420, 22.586828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250385, 34.683727, 22.705013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069975, 0.287056, -0.955355,
		-0.971638, 0.236473, -0.000115,
		0.225882, 0.928267, 0.295461,
		41.318150, 34.962208, 22.793652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811565, 34.877731, 22.120899>,  <41.160034, 34.312420, 22.586828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811565, 34.877731, 22.120899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146214, 35.036964, 22.271420>,  <41.347000, 35.132504, 22.361731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.146214, 35.036964, 22.271420>,  <40.811565, 34.877731, 22.120899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146214, 35.036964, 22.271420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113501, 0.546064, -0.830019,
		-0.535900, 0.737118, 0.411664,
		0.836617, 0.398083, 0.376300,
		41.397198, 35.156391, 22.384310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809624, 35.591240, 21.856470>,  <40.811565, 34.877731, 22.120899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809624, 35.591240, 21.856470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181892, 35.559872, 21.999413>,  <41.405254, 35.541050, 22.085178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.181892, 35.559872, 21.999413>,  <40.809624, 35.591240, 21.856470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181892, 35.559872, 21.999413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350990, 0.467025, -0.811600,
		-0.103245, 0.880760, 0.462172,
		0.930670, -0.078424, 0.357355,
		41.461094, 35.536343, 22.106619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119366, 36.196285, 21.807930>,  <40.809624, 35.591240, 21.856470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119366, 36.196285, 21.807930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428925, 35.943913, 21.829857>,  <41.614658, 35.792488, 21.843014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.428925, 35.943913, 21.829857>,  <41.119366, 36.196285, 21.807930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428925, 35.943913, 21.829857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507379, 0.565881, -0.649881,
		0.379012, 0.530754, 0.758057,
		0.773897, -0.630935, 0.054818,
		41.661095, 35.754631, 21.846302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697567, 36.579922, 21.953457>,  <41.119366, 36.196285, 21.807930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697567, 36.579922, 21.953457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.845642, 36.253513, 21.775885>,  <41.934486, 36.057671, 21.669340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.845642, 36.253513, 21.775885>,  <41.697567, 36.579922, 21.953457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.845642, 36.253513, 21.775885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482428, 0.577263, -0.658810,
		0.793866, 0.029719, 0.607366,
		0.370189, -0.816018, -0.443932,
		41.956699, 36.008709, 21.642704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454582, 36.683414, 21.955656>,  <41.697567, 36.579922, 21.953457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454582, 36.683414, 21.955656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.322243, 36.436619, 21.670036>,  <42.242840, 36.288544, 21.498665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.322243, 36.436619, 21.670036>,  <42.454582, 36.683414, 21.955656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322243, 36.436619, 21.670036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370427, 0.611021, -0.699598,
		0.867941, -0.495965, 0.026392,
		-0.330850, -0.616986, -0.714049,
		42.222988, 36.251522, 21.455822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119308, 36.671749, 21.408607>,  <42.454582, 36.683414, 21.955656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119308, 36.671749, 21.408607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.823425, 36.493095, 21.207273>,  <42.645893, 36.385902, 21.086473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.823425, 36.493095, 21.207273>,  <43.119308, 36.671749, 21.408607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823425, 36.493095, 21.207273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133267, 0.635933, -0.760150,
		0.659594, -0.629371, -0.410887,
		-0.739713, -0.446633, -0.503332,
		42.601513, 36.359104, 21.056274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.332058, 36.563717, 20.762045>,  <43.119308, 36.671749, 21.408607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.332058, 36.563717, 20.762045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.934429, 36.549500, 20.720930>,  <42.695854, 36.540970, 20.696260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.934429, 36.549500, 20.720930>,  <43.332058, 36.563717, 20.762045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934429, 36.549500, 20.720930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063576, 0.576913, -0.814328,
		0.088244, -0.816032, -0.571231,
		-0.994068, -0.035543, -0.102789,
		42.636208, 36.538837, 20.690094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128845, 36.481583, 20.040356>,  <43.332058, 36.563717, 20.762045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128845, 36.481583, 20.040356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811771, 36.649372, 20.217302>,  <42.621525, 36.750046, 20.323469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.811771, 36.649372, 20.217302>,  <43.128845, 36.481583, 20.040356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811771, 36.649372, 20.217302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007307, 0.732116, -0.681141,
		-0.609585, -0.536699, -0.583404,
		-0.792687, 0.419476, 0.442365,
		42.573967, 36.775215, 20.350012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607941, 36.388233, 19.516136>,  <43.128845, 36.481583, 20.040356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607941, 36.388233, 19.516136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521481, 36.681168, 19.774429>,  <42.469604, 36.856926, 19.929405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.521481, 36.681168, 19.774429>,  <42.607941, 36.388233, 19.516136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521481, 36.681168, 19.774429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106256, 0.639795, -0.761165,
		-0.970562, -0.233136, -0.060475,
		-0.216146, 0.732332, 0.645732,
		42.456638, 36.900867, 19.968149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317917, 36.892471, 19.127172>,  <42.607941, 36.388233, 19.516136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317917, 36.892471, 19.127172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335678, 37.125507, 19.451792>,  <42.346336, 37.265331, 19.646564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.335678, 37.125507, 19.451792>,  <42.317917, 36.892471, 19.127172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.335678, 37.125507, 19.451792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073782, 0.808221, -0.584240,
		-0.996285, 0.085819, -0.007098,
		0.044402, 0.582593, 0.811550,
		42.348999, 37.300285, 19.695257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883049, 37.487614, 18.938955>,  <42.317917, 36.892471, 19.127172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883049, 37.487614, 18.938955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172489, 37.554298, 19.206867>,  <42.346153, 37.594311, 19.367615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.172489, 37.554298, 19.206867>,  <41.883049, 37.487614, 18.938955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172489, 37.554298, 19.206867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374531, 0.720261, -0.583909,
		-0.579764, 0.673372, 0.458742,
		0.723602, 0.166716, 0.669781,
		42.389568, 37.604313, 19.407801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100491, 37.607059, 19.033884>,  <41.883049, 37.487614, 18.938955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100491, 37.607059, 19.033884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948067, 37.253155, 18.926565>,  <40.856613, 37.040810, 18.862173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.948067, 37.253155, 18.926565>,  <41.100491, 37.607059, 19.033884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.948067, 37.253155, 18.926565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315412, 0.148379, -0.937282,
		0.869085, -0.441785, 0.222525,
		-0.381059, -0.884765, -0.268298,
		40.833748, 36.987724, 18.846075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850410, 38.360271, 18.947079>,  <41.100491, 37.607059, 19.033884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850410, 38.360271, 18.947079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517868, 38.515873, 19.105835>,  <40.318340, 38.609234, 19.201090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.517868, 38.515873, 19.105835>,  <40.850410, 38.360271, 18.947079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.517868, 38.515873, 19.105835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077568, -0.788404, 0.610247,
		0.550298, 0.476548, 0.685620,
		-0.831358, 0.389000, 0.396892,
		40.268459, 38.632572, 19.224903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855129, 38.307617, 19.657001>,  <40.850410, 38.360271, 18.947079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855129, 38.307617, 19.657001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465874, 38.306751, 19.564911>,  <40.232323, 38.306232, 19.509657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465874, 38.306751, 19.564911>,  <40.855129, 38.307617, 19.657001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465874, 38.306751, 19.564911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171929, -0.658246, 0.732907,
		-0.153135, 0.752800, 0.640189,
		-0.973134, -0.002166, -0.230229,
		40.173935, 38.306103, 19.495842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452057, 38.389381, 20.315655>,  <40.855129, 38.307617, 19.657001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452057, 38.389381, 20.315655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187389, 38.247467, 20.051435>,  <40.028591, 38.162319, 19.892904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.187389, 38.247467, 20.051435>,  <40.452057, 38.389381, 20.315655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187389, 38.247467, 20.051435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419006, -0.555615, 0.718140,
		-0.621798, 0.751943, 0.218974,
		-0.661666, -0.354786, -0.660549,
		39.988888, 38.141029, 19.853271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865715, 38.649078, 20.543726>,  <40.452057, 38.389381, 20.315655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865715, 38.649078, 20.543726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778778, 38.323082, 20.328859>,  <39.726616, 38.127483, 20.199940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.778778, 38.323082, 20.328859>,  <39.865715, 38.649078, 20.543726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778778, 38.323082, 20.328859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623985, -0.307179, 0.718529,
		-0.750603, 0.491350, -0.441781,
		-0.217344, -0.814995, -0.537165,
		39.713573, 38.078583, 20.167709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171795, 38.540668, 20.744156>,  <39.865715, 38.649078, 20.543726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171795, 38.540668, 20.744156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.296345, 38.195080, 20.585863>,  <39.371075, 37.987728, 20.490887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.296345, 38.195080, 20.585863>,  <39.171795, 38.540668, 20.744156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.296345, 38.195080, 20.585863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575233, -0.502836, 0.645184,
		-0.756406, 0.026743, -0.653555,
		0.311377, -0.863968, -0.395731,
		39.389759, 37.935890, 20.467144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550938, 38.117596, 20.721003>,  <39.171795, 38.540668, 20.744156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550938, 38.117596, 20.721003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867138, 37.872608, 20.721109>,  <39.056858, 37.725616, 20.721174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.867138, 37.872608, 20.721109>,  <38.550938, 38.117596, 20.721003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867138, 37.872608, 20.721109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372932, -0.480989, 0.793456,
		-0.485818, -0.627338, -0.608628,
		0.790509, -0.612452, 0.000281,
		39.104286, 37.688869, 20.721189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352554, 37.445007, 20.883278>,  <38.550938, 38.117596, 20.721003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352554, 37.445007, 20.883278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745628, 37.415272, 20.951162>,  <38.981472, 37.397430, 20.991894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745628, 37.415272, 20.951162>,  <38.352554, 37.445007, 20.883278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745628, 37.415272, 20.951162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182549, -0.545170, 0.818209,
		0.031696, -0.835023, -0.549302,
		0.982686, -0.074341, 0.169713,
		39.040436, 37.392971, 21.002075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596584, 36.631699, 20.981695>,  <38.352554, 37.445007, 20.883278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596584, 36.631699, 20.981695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849461, 36.877205, 21.170855>,  <39.001186, 37.024509, 21.284349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.849461, 36.877205, 21.170855>,  <38.596584, 36.631699, 20.981695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849461, 36.877205, 21.170855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047221, -0.639724, 0.767152,
		0.773374, -0.462654, -0.433409,
		0.632189, 0.613762, 0.472899,
		39.039116, 37.061333, 21.312725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973148, 36.238358, 21.421934>,  <38.596584, 36.631699, 20.981695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973148, 36.238358, 21.421934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085667, 36.592869, 21.569111>,  <39.153179, 36.805576, 21.657417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.085667, 36.592869, 21.569111>,  <38.973148, 36.238358, 21.421934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085667, 36.592869, 21.569111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020850, -0.388977, 0.921011,
		0.959395, -0.251404, -0.127896,
		0.281294, 0.886281, 0.367941,
		39.170055, 36.858753, 21.679493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521366, 36.093670, 21.790089>,  <38.973148, 36.238358, 21.421934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521366, 36.093670, 21.790089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417683, 36.456524, 21.922699>,  <39.355473, 36.674236, 22.002264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417683, 36.456524, 21.922699>,  <39.521366, 36.093670, 21.790089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417683, 36.456524, 21.922699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069361, -0.324886, 0.943206,
		0.963326, 0.267486, 0.021295,
		-0.259213, 0.907139, 0.331524,
		39.339920, 36.728664, 22.022156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930218, 36.319614, 22.374889>,  <39.521366, 36.093670, 21.790089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930218, 36.319614, 22.374889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605057, 36.550777, 22.403749>,  <39.409962, 36.689476, 22.421066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.605057, 36.550777, 22.403749>,  <39.930218, 36.319614, 22.374889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605057, 36.550777, 22.403749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072290, -0.223054, 0.972122,
		0.577894, 0.785026, 0.223099,
		-0.812904, 0.577911, 0.072152,
		39.361187, 36.724152, 22.425396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032166, 36.583248, 23.087816>,  <39.930218, 36.319614, 22.374889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032166, 36.583248, 23.087816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652946, 36.651127, 22.980185>,  <39.425415, 36.691853, 22.915606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.652946, 36.651127, 22.980185>,  <40.032166, 36.583248, 23.087816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652946, 36.651127, 22.980185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310726, -0.312668, 0.897601,
		0.068186, 0.934582, 0.349153,
		-0.948051, 0.169695, -0.269079,
		39.368530, 36.702034, 22.899462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705574, 36.951122, 23.693758>,  <40.032166, 36.583248, 23.087816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705574, 36.951122, 23.693758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447720, 36.744183, 23.468620>,  <39.293007, 36.620018, 23.333538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.447720, 36.744183, 23.468620>,  <39.705574, 36.951122, 23.693758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447720, 36.744183, 23.468620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173444, -0.618066, 0.766754,
		-0.744551, 0.591902, 0.308700,
		-0.644641, -0.517345, -0.562843,
		39.254326, 36.588978, 23.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188957, 36.777439, 24.205795>,  <39.705574, 36.951122, 23.693758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188957, 36.777439, 24.205795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092953, 36.536629, 23.901176>,  <39.035351, 36.392143, 23.718405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.092953, 36.536629, 23.901176>,  <39.188957, 36.777439, 24.205795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092953, 36.536629, 23.901176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311147, -0.695385, 0.647786,
		-0.919555, 0.392431, -0.020417,
		-0.240014, -0.602028, -0.761548,
		39.020950, 36.356022, 23.672712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471146, 36.542568, 24.093765>,  <39.188957, 36.777439, 24.205795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471146, 36.542568, 24.093765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648170, 36.230984, 23.916067>,  <38.754387, 36.044033, 23.809448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648170, 36.230984, 23.916067>,  <38.471146, 36.542568, 24.093765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648170, 36.230984, 23.916067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469882, -0.623388, 0.624978,
		-0.763772, -0.067850, -0.641910,
		0.442564, -0.778963, -0.444245,
		38.780941, 35.997295, 23.782793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122402, 36.019653, 24.404083>,  <38.471146, 36.542568, 24.093765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122402, 36.019653, 24.404083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415684, 35.816925, 24.222733>,  <38.591652, 35.695290, 24.113922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.415684, 35.816925, 24.222733>,  <38.122402, 36.019653, 24.404083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415684, 35.816925, 24.222733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342571, -0.851230, 0.397558,
		-0.587419, -0.136176, -0.797744,
		0.733201, -0.506817, -0.453379,
		38.635643, 35.664879, 24.086720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865078, 35.511108, 24.140200>,  <38.122402, 36.019653, 24.404083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865078, 35.511108, 24.140200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245041, 35.389500, 24.169188>,  <38.473019, 35.316532, 24.186581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245041, 35.389500, 24.169188>,  <37.865078, 35.511108, 24.140200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245041, 35.389500, 24.169188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277425, -0.713406, 0.643496,
		-0.143938, -0.631364, -0.762011,
		0.949904, -0.304025, 0.072470,
		38.530010, 35.298290, 24.190929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734962, 34.834286, 24.047995>,  <37.865078, 35.511108, 24.140200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734962, 34.834286, 24.047995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090225, 34.878445, 24.226425>,  <38.303383, 34.904942, 24.333483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.090225, 34.878445, 24.226425>,  <37.734962, 34.834286, 24.047995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090225, 34.878445, 24.226425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313670, -0.563754, 0.764063,
		0.335830, -0.818531, -0.466074,
		0.888161, 0.110402, 0.446074,
		38.356674, 34.911564, 24.360247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063992, 34.104095, 24.185150>,  <37.734962, 34.834286, 24.047995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063992, 34.104095, 24.185150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238338, 34.349407, 24.448637>,  <38.342945, 34.496593, 24.606730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.238338, 34.349407, 24.448637>,  <38.063992, 34.104095, 24.185150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238338, 34.349407, 24.448637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152306, -0.671084, 0.725568,
		0.887030, -0.416579, -0.199099,
		0.435868, 0.613277, 0.658719,
		38.369099, 34.533390, 24.646254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521328, 33.687057, 24.570808>,  <38.063992, 34.104095, 24.185150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521328, 33.687057, 24.570808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433067, 34.006306, 24.795065>,  <38.380112, 34.197853, 24.929619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433067, 34.006306, 24.795065>,  <38.521328, 33.687057, 24.570808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433067, 34.006306, 24.795065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169872, -0.597469, 0.783693,
		0.960446, 0.077685, 0.267410,
		-0.220651, 0.798120, 0.560640,
		38.366871, 34.245743, 24.963257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.825523, 32.922398, 29.402372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.433552, 32.843712, 29.415312>,  <40.198368, 32.796501, 29.423075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.433552, 32.843712, 29.415312>,  <40.825523, 32.922398, 29.402372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433552, 32.843712, 29.415312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067206, -0.173204, 0.982590,
		-0.187691, 0.965040, 0.182947,
		-0.979926, -0.196718, 0.032347,
		40.139572, 32.784695, 29.425016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605339, 33.042454, 30.146294>,  <40.825523, 32.922398, 29.402372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605339, 33.042454, 30.146294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299183, 32.842579, 29.984062>,  <40.115490, 32.722652, 29.886723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.299183, 32.842579, 29.984062>,  <40.605339, 33.042454, 30.146294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299183, 32.842579, 29.984062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283052, -0.304606, 0.909449,
		-0.577982, 0.810880, 0.091703,
		-0.765387, -0.499688, -0.405578,
		40.069565, 32.692673, 29.862389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180466, 32.998665, 30.707769>,  <40.605339, 33.042454, 30.146294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180466, 32.998665, 30.707769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954823, 32.776463, 30.463411>,  <39.819435, 32.643143, 30.316795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.954823, 32.776463, 30.463411>,  <40.180466, 32.998665, 30.707769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954823, 32.776463, 30.463411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513335, -0.343553, 0.786422,
		-0.646738, 0.757221, -0.091360,
		-0.564108, -0.555507, -0.610896,
		39.785591, 32.609810, 30.280142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424461, 33.096127, 30.868208>,  <40.180466, 32.998665, 30.707769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424461, 33.096127, 30.868208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495296, 32.731377, 30.720087>,  <39.537800, 32.512527, 30.631214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.495296, 32.731377, 30.720087>,  <39.424461, 33.096127, 30.868208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495296, 32.731377, 30.720087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517076, -0.406340, 0.753339,
		-0.837419, 0.058063, -0.543468,
		0.177092, -0.911875, -0.370300,
		39.548424, 32.457813, 30.608997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787018, 32.661762, 30.833609>,  <39.424461, 33.096127, 30.868208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787018, 32.661762, 30.833609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062881, 32.379433, 30.768888>,  <39.228401, 32.210037, 30.730057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.062881, 32.379433, 30.768888>,  <38.787018, 32.661762, 30.833609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062881, 32.379433, 30.768888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487667, -0.617889, 0.616760,
		-0.535296, -0.346454, -0.770342,
		0.689665, -0.705821, -0.161800,
		39.269779, 32.167686, 30.720348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332512, 32.045757, 30.990461>,  <38.787018, 32.661762, 30.833609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332512, 32.045757, 30.990461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714432, 31.934776, 31.033131>,  <38.943584, 31.868189, 31.058731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.714432, 31.934776, 31.033131>,  <38.332512, 32.045757, 30.990461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714432, 31.934776, 31.033131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274053, -0.682672, 0.677387,
		-0.115118, -0.676003, -0.727851,
		0.954800, -0.277449, 0.106672,
		39.000874, 31.851542, 31.065132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210289, 31.370039, 31.129313>,  <38.332512, 32.045757, 30.990461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210289, 31.370039, 31.129313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580189, 31.459383, 31.252563>,  <38.802128, 31.512989, 31.326513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.580189, 31.459383, 31.252563>,  <38.210289, 31.370039, 31.129313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580189, 31.459383, 31.252563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097860, -0.642858, 0.759709,
		0.367771, -0.732696, -0.572627,
		0.924753, 0.223361, 0.308126,
		38.857616, 31.526392, 31.345001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555721, 30.744329, 31.200624>,  <38.210289, 31.370039, 31.129313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555721, 30.744329, 31.200624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732273, 31.020233, 31.430202>,  <38.838203, 31.185776, 31.567949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.732273, 31.020233, 31.430202>,  <38.555721, 30.744329, 31.200624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732273, 31.020233, 31.430202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130207, -0.583621, 0.801519,
		0.887824, -0.428505, -0.167785,
		0.441378, 0.689761, 0.573947,
		38.864685, 31.227161, 31.602386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001907, 30.288515, 31.534582>,  <38.555721, 30.744329, 31.200624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001907, 30.288515, 31.534582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005272, 30.618328, 31.760883>,  <39.007290, 30.816216, 31.896664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.005272, 30.618328, 31.760883>,  <39.001907, 30.288515, 31.534582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005272, 30.618328, 31.760883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097401, -0.563757, 0.820178,
		0.995210, 0.048209, -0.085050,
		0.008407, 0.824533, 0.565752,
		39.007793, 30.865688, 31.930609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665138, 30.285177, 31.953951>,  <39.001907, 30.288515, 31.534582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665138, 30.285177, 31.953951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399815, 30.530525, 32.125435>,  <39.240620, 30.677734, 32.228325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.399815, 30.530525, 32.125435>,  <39.665138, 30.285177, 31.953951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399815, 30.530525, 32.125435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027879, -0.592736, 0.804914,
		0.747822, 0.521958, 0.410270,
		-0.663314, 0.613370, 0.428710,
		39.200821, 30.714537, 32.254047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922729, 30.509817, 32.682270>,  <39.665138, 30.285177, 31.953951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922729, 30.509817, 32.682270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528965, 30.580109, 32.685108>,  <39.292706, 30.622284, 32.686813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.528965, 30.580109, 32.685108>,  <39.922729, 30.509817, 32.682270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528965, 30.580109, 32.685108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089444, -0.534989, 0.840111,
		0.151428, 0.826382, 0.542368,
		-0.984413, 0.175728, 0.007097,
		39.233643, 30.632828, 32.687237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887524, 30.776592, 33.386368>,  <39.922729, 30.509817, 32.682270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887524, 30.776592, 33.386368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525162, 30.658348, 33.265076>,  <39.307743, 30.587402, 33.192303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.525162, 30.658348, 33.265076>,  <39.887524, 30.776592, 33.386368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525162, 30.658348, 33.265076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026825, -0.674547, 0.737744,
		-0.422627, 0.676462, 0.603147,
		-0.905907, -0.295611, -0.303228,
		39.253391, 30.569664, 33.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589867, 30.600044, 34.038242>,  <39.887524, 30.776592, 33.386368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589867, 30.600044, 34.038242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415329, 30.418077, 33.727718>,  <39.310604, 30.308897, 33.541405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.415329, 30.418077, 33.727718>,  <39.589867, 30.600044, 34.038242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415329, 30.418077, 33.727718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206812, -0.788968, 0.578584,
		-0.875688, 0.413013, 0.250181,
		-0.436347, -0.454918, -0.776306,
		39.284424, 30.281601, 33.494827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112514, 30.282175, 34.542637>,  <39.589867, 30.600044, 34.038242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112514, 30.282175, 34.542637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036995, 30.521704, 34.853962>,  <38.991684, 30.665421, 35.040756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.036995, 30.521704, 34.853962>,  <39.112514, 30.282175, 34.542637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036995, 30.521704, 34.853962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350259, 0.781499, -0.516312,
		-0.917429, 0.175133, -0.357286,
		-0.188795, 0.598822, 0.778312,
		38.980358, 30.701351, 35.087456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543449, 30.840944, 34.480286>,  <39.112514, 30.282175, 34.542637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543449, 30.840944, 34.480286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820026, 30.970970, 34.738350>,  <38.985973, 31.048985, 34.893188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.820026, 30.970970, 34.738350>,  <38.543449, 30.840944, 34.480286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820026, 30.970970, 34.738350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058972, 0.915466, -0.398051,
		-0.720017, 0.237184, 0.652165,
		0.691446, 0.325063, 0.645164,
		39.027462, 31.068489, 34.931900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385502, 31.484745, 34.616291>,  <38.543449, 30.840944, 34.480286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385502, 31.484745, 34.616291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744228, 31.519442, 34.789814>,  <38.959465, 31.540260, 34.893929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744228, 31.519442, 34.789814>,  <38.385502, 31.484745, 34.616291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744228, 31.519442, 34.789814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072334, 0.938642, -0.337222,
		-0.436445, 0.333806, 0.835518,
		0.896819, 0.086743, 0.433811,
		39.013275, 31.545464, 34.919956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389290, 32.147297, 34.834137>,  <38.385502, 31.484745, 34.616291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389290, 32.147297, 34.834137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776932, 32.050537, 34.814892>,  <39.009518, 31.992481, 34.803345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.776932, 32.050537, 34.814892>,  <38.389290, 32.147297, 34.834137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776932, 32.050537, 34.814892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160136, 0.765516, -0.623171,
		0.187577, 0.596215, 0.780604,
		0.969109, -0.241896, -0.048117,
		39.067665, 31.977968, 34.800457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747223, 32.688320, 35.131531>,  <38.389290, 32.147297, 34.834137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747223, 32.688320, 35.131531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027740, 32.521027, 34.900612>,  <39.196049, 32.420650, 34.762062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.027740, 32.521027, 34.900612>,  <38.747223, 32.688320, 35.131531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027740, 32.521027, 34.900612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189351, 0.890008, -0.414767,
		0.687269, 0.181561, 0.703348,
		0.701290, -0.418236, -0.577296,
		39.238129, 32.395557, 34.727425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052135, 33.229149, 34.877476>,  <38.747223, 32.688320, 35.131531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052135, 33.229149, 34.877476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250210, 32.964321, 34.652458>,  <39.369057, 32.805424, 34.517448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.250210, 32.964321, 34.652458>,  <39.052135, 33.229149, 34.877476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250210, 32.964321, 34.652458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305856, 0.738903, -0.600395,
		0.813165, 0.125253, 0.568395,
		0.495191, -0.662068, -0.562541,
		39.398766, 32.765701, 34.483696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769657, 33.518074, 34.719685>,  <39.052135, 33.229149, 34.877476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769657, 33.518074, 34.719685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679878, 33.256115, 34.431038>,  <39.626011, 33.098938, 34.257851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.679878, 33.256115, 34.431038>,  <39.769657, 33.518074, 34.719685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679878, 33.256115, 34.431038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443993, 0.590459, -0.673965,
		0.867465, -0.471660, 0.158246,
		-0.224445, -0.654901, -0.721616,
		39.612545, 33.059643, 34.214554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320889, 33.569870, 34.220547>,  <39.769657, 33.518074, 34.719685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320889, 33.569870, 34.220547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041958, 33.397427, 33.991501>,  <39.874599, 33.293961, 33.854073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.041958, 33.397427, 33.991501>,  <40.320889, 33.569870, 34.220547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041958, 33.397427, 33.991501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466693, 0.333247, -0.819234,
		0.544003, -0.838503, -0.031184,
		-0.697322, -0.431113, -0.572611,
		39.832760, 33.268093, 33.819717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637039, 33.090874, 33.730564>,  <40.320889, 33.569870, 34.220547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637039, 33.090874, 33.730564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.284016, 33.207840, 33.583282>,  <40.072201, 33.278019, 33.494915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.284016, 33.207840, 33.583282>,  <40.637039, 33.090874, 33.730564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284016, 33.207840, 33.583282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465489, 0.432885, -0.771965,
		-0.066349, -0.852702, -0.518167,
		-0.882563, 0.292420, -0.368202,
		40.019245, 33.295567, 33.472820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771378, 33.173409, 33.024857>,  <40.637039, 33.090874, 33.730564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771378, 33.173409, 33.024857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403408, 33.326847, 33.057323>,  <40.182625, 33.418911, 33.076805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.403408, 33.326847, 33.057323>,  <40.771378, 33.173409, 33.024857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403408, 33.326847, 33.057323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170904, 0.578608, -0.797499,
		-0.352880, -0.719769, -0.597836,
		-0.919928, 0.383594, 0.081168,
		40.127430, 33.441925, 33.081673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489880, 33.165451, 32.322666>,  <40.771378, 33.173409, 33.024857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489880, 33.165451, 32.322666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337994, 33.433212, 32.578079>,  <40.246861, 33.593868, 32.731327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337994, 33.433212, 32.578079>,  <40.489880, 33.165451, 32.322666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337994, 33.433212, 32.578079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137282, 0.723357, -0.676689,
		-0.914861, -0.169291, -0.366566,
		-0.379715, 0.669399, 0.638531,
		40.224079, 33.634033, 32.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014229, 33.507069, 31.942228>,  <40.489880, 33.165451, 32.322666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.014229, 33.507069, 31.942228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092159, 33.766548, 32.236504>,  <40.138916, 33.922237, 32.413067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.092159, 33.766548, 32.236504>,  <40.014229, 33.507069, 31.942228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092159, 33.766548, 32.236504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038975, 0.744346, -0.666656,
		-0.980063, 0.158553, 0.119733,
		0.194824, 0.648699, 0.735686,
		40.150608, 33.961159, 32.457211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755997, 34.177578, 31.651169>,  <40.014229, 33.507069, 31.942228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755997, 34.177578, 31.651169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938370, 34.330669, 31.972576>,  <40.047794, 34.422523, 32.165421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.938370, 34.330669, 31.972576>,  <39.755997, 34.177578, 31.651169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938370, 34.330669, 31.972576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104692, 0.873485, -0.475460,
		-0.883834, 0.300901, 0.358185,
		0.455936, 0.382729, 0.803518,
		40.075150, 34.445488, 32.213631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401649, 34.808083, 31.795712>,  <39.755997, 34.177578, 31.651169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401649, 34.808083, 31.795712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758652, 34.847729, 31.971720>,  <39.972851, 34.871517, 32.077324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758652, 34.847729, 31.971720>,  <39.401649, 34.808083, 31.795712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758652, 34.847729, 31.971720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152807, 0.851422, -0.501727,
		-0.424372, 0.515030, 0.744750,
		0.892501, 0.099116, 0.440020,
		40.026402, 34.877464, 32.103725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374359, 35.415127, 31.965143>,  <39.401649, 34.808083, 31.795712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374359, 35.415127, 31.965143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757618, 35.302780, 31.943016>,  <39.987576, 35.235371, 31.929739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757618, 35.302780, 31.943016>,  <39.374359, 35.415127, 31.965143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757618, 35.302780, 31.943016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218754, 0.843024, -0.491382,
		0.184649, 0.458717, 0.869186,
		0.958150, -0.280871, -0.055317,
		40.045063, 35.218517, 31.926420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104523, 36.078781, 32.235439>,  <39.374359, 35.415127, 31.965143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104523, 36.078781, 32.235439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 36.383587, 32.282455>,  <38.696968, 36.566471, 32.310665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.849800, 36.383587, 32.282455>,  <39.104523, 36.078781, 32.235439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849800, 36.383587, 32.282455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519822, -0.536908, 0.664466,
		0.569441, 0.362035, 0.738016,
		-0.636806, 0.762011, 0.117544,
		38.658756, 36.612190, 32.317719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818729, 35.997833, 32.890495>,  <39.104523, 36.078781, 32.235439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818729, 35.997833, 32.890495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558224, 36.261505, 32.740112>,  <38.401920, 36.419708, 32.649883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.558224, 36.261505, 32.740112>,  <38.818729, 35.997833, 32.890495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558224, 36.261505, 32.740112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720069, -0.380451, 0.580308,
		0.239494, 0.648646, 0.722427,
		-0.651263, 0.659178, -0.375954,
		38.362846, 36.459259, 32.627327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493698, 36.341702, 33.446960>,  <38.818729, 35.997833, 32.890495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493698, 36.341702, 33.446960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240459, 36.363117, 33.138073>,  <38.088516, 36.375965, 32.952740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.240459, 36.363117, 33.138073>,  <38.493698, 36.341702, 33.446960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240459, 36.363117, 33.138073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757988, -0.245204, 0.604425,
		-0.156993, 0.967992, 0.195816,
		-0.633094, 0.053536, -0.772222,
		38.050529, 36.379177, 32.906406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903057, 36.672646, 33.763355>,  <38.493698, 36.341702, 33.446960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903057, 36.672646, 33.763355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774017, 36.501583, 33.425587>,  <37.696594, 36.398945, 33.222927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774017, 36.501583, 33.425587>,  <37.903057, 36.672646, 33.763355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774017, 36.501583, 33.425587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834298, -0.292897, 0.467074,
		-0.447072, 0.855175, -0.262300,
		-0.322603, -0.427652, -0.844417,
		37.677235, 36.373287, 33.172260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301647, 36.991261, 33.614998>,  <37.903057, 36.672646, 33.763355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301647, 36.991261, 33.614998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314018, 36.632439, 33.438667>,  <37.321442, 36.417145, 33.332867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.314018, 36.632439, 33.438667>,  <37.301647, 36.991261, 33.614998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314018, 36.632439, 33.438667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889498, -0.225862, 0.397215,
		-0.455892, 0.379835, -0.804915,
		0.030923, -0.897057, -0.440831,
		37.323296, 36.363323, 33.306419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587490, 36.795361, 33.490589>,  <37.301647, 36.991261, 33.614998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587490, 36.795361, 33.490589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.778095, 36.455540, 33.400089>,  <36.892460, 36.251648, 33.345791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.778095, 36.455540, 33.400089>,  <36.587490, 36.795361, 33.490589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778095, 36.455540, 33.400089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836852, -0.517182, 0.179450,
		-0.269463, 0.103824, -0.957398,
		0.476517, -0.849555, -0.226247,
		36.921051, 36.200672, 33.332214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120148, 36.364815, 33.061714>,  <36.587490, 36.795361, 33.490589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120148, 36.364815, 33.061714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363152, 36.089470, 33.220253>,  <36.508953, 35.924263, 33.315376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363152, 36.089470, 33.220253>,  <36.120148, 36.364815, 33.061714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363152, 36.089470, 33.220253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773502, -0.626153, 0.098117,
		0.180632, -0.366180, -0.912844,
		0.607509, -0.688363, 0.396344,
		36.545403, 35.882961, 33.339157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850994, 35.720634, 32.929382>,  <36.120148, 36.364815, 33.061714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850994, 35.720634, 32.929382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108040, 35.625034, 33.220570>,  <36.262268, 35.567677, 33.395283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.108040, 35.625034, 33.220570>,  <35.850994, 35.720634, 32.929382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108040, 35.625034, 33.220570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624040, -0.714518, 0.316287,
		0.444552, -0.657528, -0.608301,
		0.642610, -0.238998, 0.727965,
		36.300823, 35.553333, 33.438957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891315, 35.039745, 32.908291>,  <35.850994, 35.720634, 32.929382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891315, 35.039745, 32.908291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995586, 35.145832, 33.279606>,  <36.058147, 35.209484, 33.502396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.995586, 35.145832, 33.279606>,  <35.891315, 35.039745, 32.908291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995586, 35.145832, 33.279606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718345, -0.589114, 0.370034,
		0.645002, -0.763287, 0.036947,
		0.260676, 0.265214, 0.928283,
		36.073788, 35.225395, 33.558090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923771, 34.403065, 33.212418>,  <35.891315, 35.039745, 32.908291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923771, 34.403065, 33.212418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953625, 34.609386, 33.553795>,  <35.971539, 34.733181, 33.758621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.953625, 34.609386, 33.553795>,  <35.923771, 34.403065, 33.212418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.953625, 34.609386, 33.553795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664719, -0.612236, 0.428155,
		0.743356, -0.599258, 0.297171,
		0.074637, 0.515807, 0.853447,
		35.976017, 34.764130, 33.809830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074966, 33.996334, 33.802177>,  <35.923771, 34.403065, 33.212418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074966, 33.996334, 33.802177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.878738, 34.302376, 33.969006>,  <35.761002, 34.486000, 34.069103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.878738, 34.302376, 33.969006>,  <36.074966, 33.996334, 33.802177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878738, 34.302376, 33.969006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554056, -0.643291, 0.528393,
		0.672576, 0.028134, 0.739493,
		-0.490575, 0.765105, 0.417074,
		35.731567, 34.531906, 34.094128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984318, 33.790733, 34.470428>,  <36.074966, 33.996334, 33.802177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984318, 33.790733, 34.470428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704517, 34.068089, 34.401253>,  <35.536636, 34.234501, 34.359745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.704517, 34.068089, 34.401253>,  <35.984318, 33.790733, 34.470428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704517, 34.068089, 34.401253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667769, -0.548004, 0.503763,
		0.254532, 0.467867, 0.846353,
		-0.699499, 0.693392, -0.172942,
		35.494667, 34.276108, 34.349369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.919685, 39.144466, 30.699961> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596069, 39.194508, 30.470249>,  <40.401897, 39.224533, 30.332422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596069, 39.194508, 30.470249>,  <40.919685, 39.144466, 30.699961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596069, 39.194508, 30.470249> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584641, -0.271645, 0.764463,
		-0.060365, 0.954232, 0.292912,
		-0.809043, 0.125102, -0.574281,
		40.353355, 39.232037, 30.297964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277306, 39.360676, 31.126865>,  <40.919685, 39.144466, 30.699961>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277306, 39.360676, 31.126865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103611, 39.219292, 30.795444>,  <39.999393, 39.134460, 30.596592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103611, 39.219292, 30.795444>,  <40.277306, 39.360676, 31.126865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103611, 39.219292, 30.795444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685115, -0.467597, 0.558544,
		-0.584852, 0.810196, -0.039112,
		-0.434241, -0.353462, -0.828552,
		39.973339, 39.113255, 30.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553291, 39.528809, 31.208609>,  <40.277306, 39.360676, 31.126865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553291, 39.528809, 31.208609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594959, 39.224472, 30.952400>,  <39.619961, 39.041870, 30.798676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594959, 39.224472, 30.952400>,  <39.553291, 39.528809, 31.208609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594959, 39.224472, 30.952400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696710, -0.515422, 0.498934,
		-0.709749, 0.394280, -0.583780,
		0.104173, -0.760843, -0.640520,
		39.626213, 38.996220, 30.760244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923077, 39.254097, 31.239799>,  <39.553291, 39.528809, 31.208609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923077, 39.254097, 31.239799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141575, 38.957932, 31.083128>,  <39.272675, 38.780231, 30.989126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141575, 38.957932, 31.083128>,  <38.923077, 39.254097, 31.239799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141575, 38.957932, 31.083128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466761, -0.657336, 0.591646,
		-0.695527, -0.140359, -0.704657,
		0.546238, -0.740412, -0.391681,
		39.305447, 38.735809, 30.965624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438282, 38.765713, 31.213478>,  <38.923077, 39.254097, 31.239799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438282, 38.765713, 31.213478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765438, 38.540504, 31.166044>,  <38.961731, 38.405380, 31.137583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765438, 38.540504, 31.166044>,  <38.438282, 38.765713, 31.213478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.765438, 38.540504, 31.166044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456041, -0.760006, 0.463052,
		-0.350836, -0.324645, -0.878362,
		0.817888, -0.563024, -0.118586,
		39.010803, 38.371597, 31.130468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153889, 38.105190, 31.077234>,  <38.438282, 38.765713, 31.213478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153889, 38.105190, 31.077234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540039, 38.059841, 31.171204>,  <38.771729, 38.032631, 31.227585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540039, 38.059841, 31.171204>,  <38.153889, 38.105190, 31.077234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540039, 38.059841, 31.171204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205411, -0.885501, 0.416767,
		0.160774, -0.450594, -0.878132,
		0.965380, -0.113373, 0.234922,
		38.829655, 38.025829, 31.241680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439716, 37.384727, 30.860138>,  <38.153889, 38.105190, 31.077234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439716, 37.384727, 30.860138> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662220, 37.531437, 31.158413>,  <38.795723, 37.619465, 31.337378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662220, 37.531437, 31.158413>,  <38.439716, 37.384727, 30.860138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662220, 37.531437, 31.158413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092503, -0.864422, 0.494184,
		0.825842, -0.343874, -0.446918,
		0.556262, 0.366777, 0.745686,
		38.829098, 37.641468, 31.382118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.871761, 36.785984, 30.974838>,  <38.439716, 37.384727, 30.860138>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.871761, 36.785984, 30.974838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890697, 37.010750, 31.305174>,  <38.902061, 37.145611, 31.503374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890697, 37.010750, 31.305174>,  <38.871761, 36.785984, 30.974838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890697, 37.010750, 31.305174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087798, -0.821224, 0.563810,
		0.995013, -0.099200, 0.010455,
		0.047344, 0.561916, 0.825838,
		38.904900, 37.179325, 31.552925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095276, 36.360432, 31.518049>,  <38.871761, 36.785984, 30.974838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095276, 36.360432, 31.518049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927696, 36.643654, 31.745428>,  <38.827148, 36.813587, 31.881855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927696, 36.643654, 31.745428>,  <39.095276, 36.360432, 31.518049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927696, 36.643654, 31.745428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190039, -0.680547, 0.707631,
		0.887899, 0.188437, 0.419675,
		-0.418952, 0.708059, 0.568447,
		38.802010, 36.856071, 31.915962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795509, 36.143921, 31.948563>,  <39.095276, 36.360432, 31.518049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795509, 36.143921, 31.948563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039654, 35.852417, 31.824385>,  <40.186138, 35.677517, 31.749878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039654, 35.852417, 31.824385>,  <39.795509, 36.143921, 31.948563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039654, 35.852417, 31.824385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255565, 0.552123, -0.793629,
		0.749767, 0.405059, 0.523237,
		0.610358, -0.728758, -0.310445,
		40.222759, 35.633789, 31.731251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402958, 36.502285, 31.657160>,  <39.795509, 36.143921, 31.948563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402958, 36.502285, 31.657160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466145, 36.139301, 31.501436>,  <40.504055, 35.921513, 31.408001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466145, 36.139301, 31.501436>,  <40.402958, 36.502285, 31.657160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466145, 36.139301, 31.501436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268692, 0.418885, -0.867375,
		0.950185, 0.032410, 0.309996,
		0.157965, -0.907461, -0.389310,
		40.513535, 35.867062, 31.384644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.016296, 36.553032, 31.268980>,  <40.402958, 36.502285, 31.657160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.016296, 36.553032, 31.268980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836628, 36.231220, 31.113550>,  <40.728828, 36.038136, 31.020292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836628, 36.231220, 31.113550>,  <41.016296, 36.553032, 31.268980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836628, 36.231220, 31.113550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137321, 0.367582, -0.919797,
		0.882832, -0.466501, -0.054628,
		-0.449167, -0.804525, -0.388573,
		40.701878, 35.989864, 30.996979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434017, 36.216648, 30.753965>,  <41.016296, 36.553032, 31.268980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434017, 36.216648, 30.753965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068554, 36.074108, 30.675739>,  <40.849277, 35.988586, 30.628803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068554, 36.074108, 30.675739>,  <41.434017, 36.216648, 30.753965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068554, 36.074108, 30.675739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111566, 0.242802, -0.963639,
		0.390876, -0.902254, -0.182081,
		-0.913657, -0.356349, -0.195566,
		40.794456, 35.967205, 30.617069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541832, 35.715691, 30.316061>,  <41.434017, 36.216648, 30.753965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541832, 35.715691, 30.316061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159012, 35.792194, 30.228912>,  <40.929317, 35.838097, 30.176622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159012, 35.792194, 30.228912>,  <41.541832, 35.715691, 30.316061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.159012, 35.792194, 30.228912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246786, 0.143103, -0.958446,
		-0.152137, -0.971051, -0.184158,
		-0.957053, 0.191262, -0.217871,
		40.871895, 35.849571, 30.163551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.334805, 35.271736, 29.684566>,  <41.541832, 35.715691, 30.316061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.334805, 35.271736, 29.684566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088982, 35.585701, 29.716141>,  <40.941490, 35.774082, 29.735086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.088982, 35.585701, 29.716141>,  <41.334805, 35.271736, 29.684566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088982, 35.585701, 29.716141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171230, 0.230400, -0.957912,
		-0.770068, -0.575171, -0.275994,
		-0.614553, 0.784917, 0.078937,
		40.904617, 35.821175, 29.739822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061504, 35.263973, 29.070156>,  <41.334805, 35.271736, 29.684566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061504, 35.263973, 29.070156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947792, 35.627583, 29.192053>,  <40.879566, 35.845749, 29.265190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947792, 35.627583, 29.192053>,  <41.061504, 35.263973, 29.070156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.947792, 35.627583, 29.192053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157717, 0.357866, -0.920357,
		-0.945679, -0.213578, -0.245102,
		-0.284282, 0.909020, 0.304742,
		40.862507, 35.900288, 29.283476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617897, 35.516712, 28.562695>,  <41.061504, 35.263973, 29.070156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617897, 35.516712, 28.562695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721077, 35.863903, 28.732433>,  <40.782986, 36.072220, 28.834276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.721077, 35.863903, 28.732433>,  <40.617897, 35.516712, 28.562695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721077, 35.863903, 28.732433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168654, 0.392016, -0.904367,
		-0.951323, 0.304852, -0.045267,
		0.257953, 0.867980, 0.424348,
		40.798462, 36.124298, 28.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282280, 36.028294, 28.254072>,  <40.617897, 35.516712, 28.562695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282280, 36.028294, 28.254072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592915, 36.217472, 28.420563>,  <40.779293, 36.330978, 28.520458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592915, 36.217472, 28.420563>,  <40.282280, 36.028294, 28.254072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592915, 36.217472, 28.420563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200552, 0.440720, -0.874954,
		-0.597242, 0.762950, 0.247407,
		0.776583, 0.472941, 0.416227,
		40.825890, 36.359356, 28.545431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277222, 36.663097, 27.911846>,  <40.282280, 36.028294, 28.254072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277222, 36.663097, 27.911846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648338, 36.623928, 28.055857>,  <40.871006, 36.600426, 28.142263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.648338, 36.623928, 28.055857>,  <40.277222, 36.663097, 27.911846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648338, 36.623928, 28.055857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369149, 0.381081, -0.847647,
		-0.054197, 0.919341, 0.389711,
		0.927788, -0.097922, 0.360028,
		40.926674, 36.594551, 28.163864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701416, 37.390026, 27.917717>,  <40.277222, 36.663097, 27.911846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701416, 37.390026, 27.917717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972248, 37.095898, 27.929489>,  <41.134747, 36.919418, 27.936552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972248, 37.095898, 27.929489>,  <40.701416, 37.390026, 27.917717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972248, 37.095898, 27.929489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550052, 0.479102, -0.684035,
		0.488887, 0.479332, 0.728855,
		0.677076, -0.735324, 0.029431,
		41.175369, 36.875301, 27.938318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282639, 37.747246, 27.688559>,  <40.701416, 37.390026, 27.917717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282639, 37.747246, 27.688559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395336, 37.366085, 27.643663>,  <41.462955, 37.137390, 27.616726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395336, 37.366085, 27.643663>,  <41.282639, 37.747246, 27.688559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395336, 37.366085, 27.643663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508959, 0.247588, -0.824415,
		0.813376, 0.175149, 0.554745,
		0.281744, -0.952902, -0.112238,
		41.479858, 37.080215, 27.609993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989605, 37.732777, 27.520636>,  <41.282639, 37.747246, 27.688559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989605, 37.732777, 27.520636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896870, 37.361877, 27.403015>,  <41.841228, 37.139339, 27.332443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896870, 37.361877, 27.403015>,  <41.989605, 37.732777, 27.520636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.896870, 37.361877, 27.403015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511309, 0.140999, -0.847752,
		0.827536, -0.346891, 0.441420,
		-0.231837, -0.927247, -0.294050,
		41.827320, 37.083702, 27.314800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628628, 37.337379, 27.314487>,  <41.989605, 37.732777, 27.520636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628628, 37.337379, 27.314487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309429, 37.202496, 27.114691>,  <42.117908, 37.121567, 26.994814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309429, 37.202496, 27.114691>,  <42.628628, 37.337379, 27.314487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309429, 37.202496, 27.114691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475387, 0.157204, -0.865618,
		0.370417, -0.928211, 0.034857,
		-0.797997, -0.337210, -0.499490,
		42.070030, 37.101334, 26.964844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.320042, 37.079243, 24.168505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677700, 37.144726, 24.335215>,  <36.892296, 37.184013, 24.435240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.677700, 37.144726, 24.335215>,  <36.320042, 37.079243, 24.168505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677700, 37.144726, 24.335215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253048, -0.583152, 0.771946,
		0.369415, -0.795697, -0.479999,
		0.894147, 0.163705, 0.416775,
		36.945946, 37.193836, 24.460247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660702, 36.451885, 24.324692>,  <36.320042, 37.079243, 24.168505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660702, 36.451885, 24.324692> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803032, 36.729687, 24.574829>,  <36.888432, 36.896366, 24.724911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.803032, 36.729687, 24.574829>,  <36.660702, 36.451885, 24.324692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803032, 36.729687, 24.574829> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244450, -0.576675, 0.779545,
		0.902015, -0.430249, -0.035427,
		0.355828, 0.694501, 0.625344,
		36.909779, 36.938038, 24.762432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996433, 36.085037, 24.767370>,  <36.660702, 36.451885, 24.324692>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996433, 36.085037, 24.767370> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925011, 36.425522, 24.964775>,  <36.882156, 36.629814, 25.083218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.925011, 36.425522, 24.964775>,  <36.996433, 36.085037, 24.767370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925011, 36.425522, 24.964775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160862, -0.520080, 0.838832,
		0.970691, 0.070390, 0.229791,
		-0.178555, 0.851212, 0.493514,
		36.871445, 36.680885, 25.112829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286591, 35.922318, 25.419579>,  <36.996433, 36.085037, 24.767370>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286591, 35.922318, 25.419579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044079, 36.233570, 25.485224>,  <36.898571, 36.420322, 25.524611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.044079, 36.233570, 25.485224>,  <37.286591, 35.922318, 25.419579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044079, 36.233570, 25.485224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193380, -0.344430, 0.918679,
		0.771378, 0.525244, 0.359297,
		-0.606284, 0.778130, 0.164114,
		36.862194, 36.467010, 25.534458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436848, 36.043877, 26.131550>,  <37.286591, 35.922318, 25.419579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436848, 36.043877, 26.131550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091713, 36.231636, 26.056528>,  <36.884632, 36.344292, 26.011515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091713, 36.231636, 26.056528>,  <37.436848, 36.043877, 26.131550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091713, 36.231636, 26.056528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264770, -0.103620, 0.958728,
		0.430593, 0.876884, 0.213691,
		-0.862836, 0.469401, -0.187555,
		36.832863, 36.372456, 26.000261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232933, 36.438942, 26.798758>,  <37.436848, 36.043877, 26.131550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232933, 36.438942, 26.798758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904987, 36.438831, 26.569736>,  <36.708218, 36.438766, 26.432323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.904987, 36.438831, 26.569736>,  <37.232933, 36.438942, 26.798758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904987, 36.438831, 26.569736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572116, -0.038766, 0.819256,
		-0.022422, 0.999248, 0.031624,
		-0.819866, -0.000277, -0.572555,
		36.659027, 36.438747, 26.397970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809460, 36.731346, 27.161974>,  <37.232933, 36.438942, 26.798758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809460, 36.731346, 27.161974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598743, 36.509377, 26.904432>,  <36.472313, 36.376194, 26.749907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.598743, 36.509377, 26.904432>,  <36.809460, 36.731346, 27.161974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598743, 36.509377, 26.904432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680207, -0.179019, 0.710823,
		-0.509718, 0.812408, -0.283161,
		-0.526788, -0.554927, -0.643856,
		36.440708, 36.342899, 26.711275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137558, 36.688889, 27.522234>,  <36.809460, 36.731346, 27.161974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137558, 36.688889, 27.522234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.111694, 36.392223, 27.255177>,  <36.096176, 36.214222, 27.094942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.111694, 36.392223, 27.255177>,  <36.137558, 36.688889, 27.522234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111694, 36.392223, 27.255177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707311, -0.437895, 0.554940,
		-0.703939, 0.508113, -0.496277,
		-0.064655, -0.741666, -0.667646,
		36.092297, 36.169724, 27.054882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461380, 36.439377, 27.425222>,  <36.137558, 36.688889, 27.522234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461380, 36.439377, 27.425222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686146, 36.123089, 27.328051>,  <35.821007, 35.933315, 27.269749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.686146, 36.123089, 27.328051>,  <35.461380, 36.439377, 27.425222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686146, 36.123089, 27.328051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495272, -0.556822, 0.666824,
		-0.662540, -0.254382, -0.704508,
		0.561914, -0.790720, -0.242929,
		35.854721, 35.885872, 27.255173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015694, 35.959259, 27.292107>,  <35.461380, 36.439377, 27.425222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015694, 35.959259, 27.292107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350063, 35.756950, 27.377363>,  <35.550686, 35.635567, 27.428516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.350063, 35.756950, 27.377363>,  <35.015694, 35.959259, 27.292107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350063, 35.756950, 27.377363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482826, -0.493005, 0.723758,
		-0.260972, -0.707918, -0.656312,
		0.835926, -0.505766, 0.213141,
		35.600842, 35.605221, 27.441305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854794, 35.346973, 27.500017>,  <35.015694, 35.959259, 27.292107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854794, 35.346973, 27.500017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234234, 35.309624, 27.620968>,  <35.461899, 35.287212, 27.693539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.234234, 35.309624, 27.620968>,  <34.854794, 35.346973, 27.500017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234234, 35.309624, 27.620968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297029, -0.592394, 0.748894,
		0.109201, -0.800219, -0.589682,
		0.948604, -0.093373, 0.302378,
		35.518814, 35.281612, 27.711681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009285, 34.557087, 27.681175>,  <34.854794, 35.346973, 27.500017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009285, 34.557087, 27.681175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.307858, 34.756699, 27.857267>,  <35.487000, 34.876465, 27.962923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.307858, 34.756699, 27.857267>,  <35.009285, 34.557087, 27.681175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307858, 34.756699, 27.857267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067498, -0.714909, 0.695952,
		0.662030, -0.489766, -0.567315,
		0.746432, 0.499034, 0.440232,
		35.531788, 34.906410, 27.989338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495365, 34.092377, 27.879150>,  <35.009285, 34.557087, 27.681175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495365, 34.092377, 27.879150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541721, 34.402493, 28.127501>,  <35.569534, 34.588562, 28.276510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541721, 34.402493, 28.127501>,  <35.495365, 34.092377, 27.879150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541721, 34.402493, 28.127501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189288, -0.596395, 0.780053,
		0.975059, -0.207924, 0.077639,
		0.115888, 0.775294, 0.620878,
		35.576488, 34.635082, 28.313765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925247, 33.800964, 28.386803>,  <35.495365, 34.092377, 27.879150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925247, 33.800964, 28.386803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744263, 34.121490, 28.543354>,  <35.635674, 34.313805, 28.637285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.744263, 34.121490, 28.543354>,  <35.925247, 33.800964, 28.386803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744263, 34.121490, 28.543354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236390, -0.530939, 0.813771,
		0.859885, 0.275678, 0.429649,
		-0.452457, 0.801315, 0.391379,
		35.608524, 34.361885, 28.660769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623119, 33.534416, 28.552195>,  <35.925247, 33.800964, 28.386803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623119, 33.534416, 28.552195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765156, 33.169422, 28.470919>,  <36.850376, 32.950428, 28.422153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765156, 33.169422, 28.470919>,  <36.623119, 33.534416, 28.552195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765156, 33.169422, 28.470919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431350, 0.352761, -0.830359,
		0.829366, 0.207206, 0.518862,
		0.355089, -0.912483, -0.203190,
		36.871681, 32.895676, 28.409962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400837, 33.544250, 28.451174>,  <36.623119, 33.534416, 28.552195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400837, 33.544250, 28.451174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229656, 33.229912, 28.272600>,  <37.126945, 33.041309, 28.165457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.229656, 33.229912, 28.272600>,  <37.400837, 33.544250, 28.451174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229656, 33.229912, 28.272600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446332, 0.245760, -0.860459,
		0.785903, -0.567494, 0.245574,
		-0.427953, -0.785845, -0.446435,
		37.101269, 32.994160, 28.138670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944447, 33.132008, 28.144379>,  <37.400837, 33.544250, 28.451174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944447, 33.132008, 28.144379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611744, 33.028831, 27.947746>,  <37.412121, 32.966927, 27.829767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611744, 33.028831, 27.947746>,  <37.944447, 33.132008, 28.144379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611744, 33.028831, 27.947746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460776, 0.173109, -0.870470,
		0.309624, -0.950527, -0.025133,
		-0.831756, -0.257938, -0.491579,
		37.362217, 32.951450, 27.800272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105419, 32.770618, 27.487995>,  <37.944447, 33.132008, 28.144379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105419, 32.770618, 27.487995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734005, 32.890923, 27.400942>,  <37.511154, 32.963104, 27.348711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734005, 32.890923, 27.400942>,  <38.105419, 32.770618, 27.487995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734005, 32.890923, 27.400942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293135, 0.234277, -0.926923,
		-0.227792, -0.924478, -0.305697,
		-0.928538, 0.300756, -0.217631,
		37.455444, 32.981148, 27.335653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032490, 32.538597, 26.780241>,  <38.105419, 32.770618, 27.487995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032490, 32.538597, 26.780241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744709, 32.813259, 26.822004>,  <37.572041, 32.978054, 26.847063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744709, 32.813259, 26.822004>,  <38.032490, 32.538597, 26.780241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744709, 32.813259, 26.822004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231252, 0.378571, -0.896218,
		-0.654916, -0.620639, -0.431152,
		-0.719450, 0.686652, 0.104408,
		37.528873, 33.019257, 26.853327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891434, 32.675213, 26.077791>,  <38.032490, 32.538597, 26.780241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891434, 32.675213, 26.077791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736645, 32.973259, 26.295069>,  <37.643772, 33.152088, 26.425434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.736645, 32.973259, 26.295069>,  <37.891434, 32.675213, 26.077791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.736645, 32.973259, 26.295069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336579, 0.662582, -0.669104,
		-0.858468, -0.076097, -0.507190,
		-0.386971, 0.745114, 0.543193,
		37.620552, 33.196793, 26.458027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514389, 33.041588, 25.547108>,  <37.891434, 32.675213, 26.077791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514389, 33.041588, 25.547108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535961, 33.307209, 25.845404>,  <37.548904, 33.466579, 26.024382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535961, 33.307209, 25.845404>,  <37.514389, 33.041588, 25.547108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535961, 33.307209, 25.845404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404207, 0.668385, -0.624402,
		-0.913076, 0.335110, -0.232366,
		0.053933, 0.664051, 0.745740,
		37.552139, 33.506424, 26.069126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023659, 33.692726, 25.344568>,  <37.514389, 33.041588, 25.547108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023659, 33.692726, 25.344568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331642, 33.759407, 25.590942>,  <37.516430, 33.799416, 25.738768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331642, 33.759407, 25.590942>,  <37.023659, 33.692726, 25.344568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331642, 33.759407, 25.590942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291600, 0.766660, -0.572015,
		-0.567572, 0.620033, 0.541683,
		0.769956, 0.166705, 0.615937,
		37.562630, 33.809418, 25.775723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038437, 34.410694, 25.446516>,  <37.023659, 33.692726, 25.344568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038437, 34.410694, 25.446516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405231, 34.284882, 25.544666>,  <37.625309, 34.209393, 25.603556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.405231, 34.284882, 25.544666>,  <37.038437, 34.410694, 25.446516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405231, 34.284882, 25.544666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398189, 0.758938, -0.515226,
		-0.024168, 0.570160, 0.821178,
		0.916985, -0.314532, 0.245373,
		37.680328, 34.190521, 25.618279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517750, 35.030384, 25.593672>,  <37.038437, 34.410694, 25.446516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517750, 35.030384, 25.593672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779308, 34.734692, 25.529226>,  <37.936245, 34.557278, 25.490559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.779308, 34.734692, 25.529226>,  <37.517750, 35.030384, 25.593672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779308, 34.734692, 25.529226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482036, 0.571189, -0.664368,
		0.583148, 0.356764, 0.729834,
		0.653896, -0.739231, -0.161114,
		37.975475, 34.512920, 25.480892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240196, 35.378132, 25.606623>,  <37.517750, 35.030384, 25.593672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240196, 35.378132, 25.606623> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275024, 35.023262, 25.425364>,  <38.295921, 34.810341, 25.316608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.275024, 35.023262, 25.425364>,  <38.240196, 35.378132, 25.606623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275024, 35.023262, 25.425364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634277, 0.400134, -0.661502,
		0.768187, -0.229821, 0.597555,
		0.087075, -0.887173, -0.453148,
		38.301147, 34.757111, 25.289419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976910, 35.309513, 25.464520>,  <38.240196, 35.378132, 25.606623>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976910, 35.309513, 25.464520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775871, 35.093201, 25.194717>,  <38.655251, 34.963413, 25.032835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.775871, 35.093201, 25.194717>,  <38.976910, 35.309513, 25.464520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775871, 35.093201, 25.194717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545239, 0.407197, -0.732738,
		0.670905, -0.736037, 0.090198,
		-0.502594, -0.540777, -0.674507,
		38.625092, 34.930969, 24.992365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446415, 35.135365, 25.024782>,  <38.976910, 35.309513, 25.464520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446415, 35.135365, 25.024782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110401, 35.054295, 24.823479>,  <38.908794, 35.005653, 24.702698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110401, 35.054295, 24.823479>,  <39.446415, 35.135365, 25.024782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110401, 35.054295, 24.823479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393812, 0.410244, -0.822564,
		0.373164, -0.889171, -0.264807,
		-0.840036, -0.202668, -0.503255,
		38.858391, 34.993492, 24.672503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727810, 34.934612, 24.207600>,  <39.446415, 35.135365, 25.024782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727810, 34.934612, 24.207600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344688, 35.049522, 24.211321>,  <39.114815, 35.118469, 24.213554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.344688, 35.049522, 24.211321>,  <39.727810, 34.934612, 24.207600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344688, 35.049522, 24.211321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175761, 0.611007, -0.771867,
		-0.227419, -0.737662, -0.635716,
		-0.957804, 0.287271, 0.009303,
		39.057346, 35.135704, 24.214111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188503, 34.398064, 24.153627>,  <39.727810, 34.934612, 24.207600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188503, 34.398064, 24.153627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546928, 34.547215, 24.249989>,  <40.761986, 34.636703, 24.307804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.546928, 34.547215, 24.249989>,  <40.188503, 34.398064, 24.153627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546928, 34.547215, 24.249989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094706, -0.369601, 0.924352,
		0.433704, -0.851094, -0.295873,
		0.896064, 0.372874, 0.240901,
		40.815746, 34.659077, 24.322258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578911, 33.861938, 24.500298>,  <40.188503, 34.398064, 24.153627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578911, 33.861938, 24.500298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708027, 34.222519, 24.615665>,  <40.785496, 34.438869, 24.684887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.708027, 34.222519, 24.615665>,  <40.578911, 33.861938, 24.500298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708027, 34.222519, 24.615665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262127, -0.207666, 0.942425,
		0.909447, -0.379810, 0.169262,
		0.322792, 0.901454, 0.288419,
		40.804863, 34.492954, 24.702190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009823, 33.743103, 24.985975>,  <40.578911, 33.861938, 24.500298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009823, 33.743103, 24.985975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950115, 34.132309, 25.056351>,  <40.914291, 34.365833, 25.098576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.950115, 34.132309, 25.056351>,  <41.009823, 33.743103, 24.985975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950115, 34.132309, 25.056351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161983, -0.199592, 0.966398,
		0.975438, 0.115758, 0.187406,
		-0.149273, 0.973018, 0.175939,
		40.905334, 34.424213, 25.109133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498852, 33.935986, 25.564642>,  <41.009823, 33.743103, 24.985975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498852, 33.935986, 25.564642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200668, 34.202271, 25.551315>,  <41.021759, 34.362041, 25.543320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.200668, 34.202271, 25.551315>,  <41.498852, 33.935986, 25.564642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200668, 34.202271, 25.551315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226759, -0.206285, 0.951855,
		0.626790, 0.717127, 0.304734,
		-0.745463, 0.665714, -0.033318,
		40.977028, 34.401985, 25.541321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533070, 34.348911, 26.168289>,  <41.498852, 33.935986, 25.564642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533070, 34.348911, 26.168289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154305, 34.375389, 26.042446>,  <40.927044, 34.391277, 25.966940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.154305, 34.375389, 26.042446>,  <41.533070, 34.348911, 26.168289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154305, 34.375389, 26.042446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321060, -0.143805, 0.936077,
		0.016721, 0.987390, 0.157423,
		-0.946911, 0.066195, -0.314607,
		40.870232, 34.395248, 25.948065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241119, 34.682934, 26.677977>,  <41.533070, 34.348911, 26.168289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241119, 34.682934, 26.677977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931477, 34.517036, 26.486666>,  <40.745689, 34.417500, 26.371880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.931477, 34.517036, 26.486666>,  <41.241119, 34.682934, 26.677977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931477, 34.517036, 26.486666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445365, -0.180136, 0.877041,
		-0.449900, 0.891931, -0.045267,
		-0.774106, -0.414741, -0.478278,
		40.699245, 34.392612, 26.343182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615822, 35.023842, 26.975445>,  <41.241119, 34.682934, 26.677977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615822, 35.023842, 26.975445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521835, 34.675346, 26.803061>,  <40.465443, 34.466248, 26.699629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.521835, 34.675346, 26.803061>,  <40.615822, 35.023842, 26.975445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521835, 34.675346, 26.803061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483257, -0.279986, 0.829500,
		-0.843359, 0.403167, -0.355248,
		-0.234962, -0.871243, -0.430963,
		40.451347, 34.413975, 26.673771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079269, 34.861526, 27.284681>,  <40.615822, 35.023842, 26.975445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079269, 34.861526, 27.284681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213562, 34.513950, 27.139233>,  <40.294136, 34.305405, 27.051964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.213562, 34.513950, 27.139233>,  <40.079269, 34.861526, 27.284681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213562, 34.513950, 27.139233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300920, -0.464739, 0.832746,
		-0.892598, -0.170159, -0.417510,
		0.335733, -0.868944, -0.363621,
		40.314281, 34.253265, 27.030146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.529793, 34.441902, 27.480537>,  <40.079269, 34.861526, 27.284681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.529793, 34.441902, 27.480537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838387, 34.200237, 27.400742>,  <40.023544, 34.055241, 27.352863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838387, 34.200237, 27.400742>,  <39.529793, 34.441902, 27.480537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838387, 34.200237, 27.400742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320998, -0.640317, 0.697821,
		-0.549330, -0.474326, -0.687932,
		0.771490, -0.604159, -0.199488,
		40.069832, 34.018990, 27.340895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256485, 33.777431, 27.435001>,  <39.529793, 34.441902, 27.480537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256485, 33.777431, 27.435001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.644737, 33.729839, 27.518639>,  <39.877689, 33.701286, 27.568821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.644737, 33.729839, 27.518639>,  <39.256485, 33.777431, 27.435001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644737, 33.729839, 27.518639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234266, -0.665191, 0.708972,
		0.054736, -0.737134, -0.673527,
		0.970631, -0.118978, 0.209095,
		39.935925, 33.694145, 27.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346146, 33.080513, 27.542658>,  <39.256485, 33.777431, 27.435001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346146, 33.080513, 27.542658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658543, 33.257843, 27.718618>,  <39.845982, 33.364243, 27.824194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.658543, 33.257843, 27.718618>,  <39.346146, 33.080513, 27.542658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658543, 33.257843, 27.718618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014878, -0.690955, 0.722745,
		0.624362, -0.571004, -0.533035,
		0.780993, 0.443323, 0.439901,
		39.892841, 33.390839, 27.850590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725891, 32.572952, 27.778913>,  <39.346146, 33.080513, 27.542658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725891, 32.572952, 27.778913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895176, 32.851677, 28.010550>,  <39.996746, 33.018913, 28.149530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895176, 32.851677, 28.010550>,  <39.725891, 32.572952, 27.778913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895176, 32.851677, 28.010550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032359, -0.650366, 0.758932,
		0.905452, -0.302451, -0.297792,
		0.423213, 0.696812, 0.579088,
		40.022141, 33.060722, 28.184277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242832, 32.231102, 28.113920>,  <39.725891, 32.572952, 27.778913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242832, 32.231102, 28.113920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.171600, 32.562210, 28.326742>,  <40.128860, 32.760876, 28.454435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.171600, 32.562210, 28.326742>,  <40.242832, 32.231102, 28.113920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171600, 32.562210, 28.326742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053360, -0.548024, 0.834759,
		0.982569, 0.120261, 0.141760,
		-0.178076, 0.827772, 0.532055,
		40.118179, 32.810543, 28.486359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576057, 32.181877, 28.759611>,  <40.242832, 32.231102, 28.113920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576057, 32.181877, 28.759611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292709, 32.453987, 28.834906>,  <40.122700, 32.617252, 28.880081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.292709, 32.453987, 28.834906>,  <40.576057, 32.181877, 28.759611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292709, 32.453987, 28.834906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059610, -0.323385, 0.944388,
		0.703320, 0.657755, 0.269627,
		-0.708369, 0.680279, 0.188235,
		40.080200, 32.658070, 28.891376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<42.875092, 36.795914, 26.552561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491924, 36.902870, 26.510794>,  <42.262024, 36.967045, 26.485733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491924, 36.902870, 26.510794>,  <42.875092, 36.795914, 26.552561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491924, 36.902870, 26.510794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132291, 0.088392, -0.987262,
		-0.254754, -0.959526, -0.120045,
		-0.957915, 0.267389, -0.104418,
		42.204552, 36.983086, 26.479467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.721756, 36.472000, 25.991236>,  <42.875092, 36.795914, 26.552561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.721756, 36.472000, 25.991236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.434174, 36.746384, 26.036064>,  <42.261623, 36.911015, 26.062962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.434174, 36.746384, 26.036064>,  <42.721756, 36.472000, 25.991236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434174, 36.746384, 26.036064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027880, 0.132648, -0.990771,
		-0.694493, -0.715448, -0.076244,
		-0.718959, 0.685958, 0.112070,
		42.218487, 36.952171, 26.069685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170918, 36.307747, 25.478271>,  <42.721756, 36.472000, 25.991236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170918, 36.307747, 25.478271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.119595, 36.692917, 25.573200>,  <42.088802, 36.924019, 25.630157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.119595, 36.692917, 25.573200>,  <42.170918, 36.307747, 25.478271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119595, 36.692917, 25.573200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025059, 0.242371, -0.969860,
		-0.991418, -0.118493, -0.055228,
		-0.128308, 0.962920, 0.237321,
		42.081100, 36.981792, 25.644396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.612534, 36.517746, 24.977869>,  <42.170918, 36.307747, 25.478271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.612534, 36.517746, 24.977869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796703, 36.838184, 25.130842>,  <41.907204, 37.030449, 25.222626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.796703, 36.838184, 25.130842>,  <41.612534, 36.517746, 24.977869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796703, 36.838184, 25.130842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107496, 0.477958, -0.871780,
		-0.881168, 0.360277, 0.306177,
		0.460422, 0.801098, 0.382433,
		41.934830, 37.078514, 25.245571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252148, 37.139652, 24.688059>,  <41.612534, 36.517746, 24.977869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252148, 37.139652, 24.688059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.611938, 37.265160, 24.809708>,  <41.827812, 37.340466, 24.882698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.611938, 37.265160, 24.809708>,  <41.252148, 37.139652, 24.688059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611938, 37.265160, 24.809708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103934, 0.522389, -0.846350,
		-0.424429, 0.792880, 0.437265,
		0.899477, 0.313769, 0.304124,
		41.881783, 37.359291, 24.900946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.291599, 37.877522, 24.487978>,  <41.252148, 37.139652, 24.688059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.291599, 37.877522, 24.487978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.674515, 37.784912, 24.557259>,  <41.904263, 37.729347, 24.598827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.674515, 37.784912, 24.557259>,  <41.291599, 37.877522, 24.487978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674515, 37.784912, 24.557259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278366, 0.575968, -0.768618,
		0.078192, 0.784002, 0.615814,
		0.957287, -0.231522, 0.173203,
		41.961700, 37.715454, 24.609219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722267, 38.476696, 24.500118>,  <41.291599, 37.877522, 24.487978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722267, 38.476696, 24.500118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941174, 38.167728, 24.371204>,  <42.072517, 37.982349, 24.293856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.941174, 38.167728, 24.371204>,  <41.722267, 38.476696, 24.500118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941174, 38.167728, 24.371204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395409, 0.577998, -0.713841,
		0.737663, 0.263230, 0.621742,
		0.547270, -0.772417, -0.322285,
		42.105354, 37.936005, 24.274519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285255, 38.770206, 24.287260>,  <41.722267, 38.476696, 24.500118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285255, 38.770206, 24.287260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.322205, 38.409393, 24.118593>,  <42.344376, 38.192905, 24.017393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.322205, 38.409393, 24.118593>,  <42.285255, 38.770206, 24.287260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322205, 38.409393, 24.118593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434080, 0.417601, -0.798238,
		0.896126, -0.109301, 0.430130,
		0.092375, -0.902032, -0.421669,
		42.349918, 38.138783, 23.992092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988914, 38.676178, 24.075422>,  <42.285255, 38.770206, 24.287260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988914, 38.676178, 24.075422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751003, 38.439827, 23.857391>,  <42.608257, 38.298016, 23.726574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.751003, 38.439827, 23.857391>,  <42.988914, 38.676178, 24.075422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751003, 38.439827, 23.857391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461749, 0.303927, -0.833317,
		0.658051, -0.747323, 0.092069,
		-0.594775, -0.590878, -0.545075,
		42.572571, 38.262562, 23.693869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.439781, 38.556744, 23.517580>,  <42.988914, 38.676178, 24.075422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.439781, 38.556744, 23.517580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098381, 38.409763, 23.369783>,  <42.893543, 38.321575, 23.281105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.098381, 38.409763, 23.369783>,  <43.439781, 38.556744, 23.517580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098381, 38.409763, 23.369783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290458, 0.253240, -0.922769,
		0.432642, -0.894902, -0.109411,
		-0.853496, -0.367449, -0.369494,
		42.842331, 38.299530, 23.258936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494148, 37.949955, 23.027046>,  <43.439781, 38.556744, 23.517580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494148, 37.949955, 23.027046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.160805, 38.154572, 22.943295>,  <42.960800, 38.277344, 22.893044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.160805, 38.154572, 22.943295>,  <43.494148, 37.949955, 23.027046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160805, 38.154572, 22.943295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302023, 0.104168, -0.947592,
		-0.462926, -0.852919, -0.241308,
		-0.833356, 0.511546, -0.209379,
		42.910797, 38.308037, 22.880482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.265728, 37.676830, 22.370199>,  <43.494148, 37.949955, 23.027046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.265728, 37.676830, 22.370199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096382, 38.037041, 22.409819>,  <42.994774, 38.253166, 22.433590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.096382, 38.037041, 22.409819>,  <43.265728, 37.676830, 22.370199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.096382, 38.037041, 22.409819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149023, 0.177064, -0.972852,
		-0.893618, -0.397111, -0.209163,
		-0.423365, 0.900528, 0.099049,
		42.969372, 38.307198, 22.439533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873734, 37.766777, 21.793077>,  <43.265728, 37.676830, 22.370199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873734, 37.766777, 21.793077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973118, 38.132183, 21.921919>,  <43.032749, 38.351429, 21.999224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.973118, 38.132183, 21.921919>,  <42.873734, 37.766777, 21.793077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973118, 38.132183, 21.921919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171746, 0.285716, -0.942799,
		-0.953294, 0.289573, -0.085902,
		0.248465, 0.913517, 0.322104,
		43.047657, 38.406239, 22.018551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467266, 38.358696, 21.438652>,  <42.873734, 37.766777, 21.793077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467266, 38.358696, 21.438652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.823376, 38.481937, 21.572807>,  <43.037041, 38.555882, 21.653301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.823376, 38.481937, 21.572807>,  <42.467266, 38.358696, 21.438652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823376, 38.481937, 21.572807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216064, 0.362534, -0.906579,
		-0.400913, 0.879567, 0.256183,
		0.890272, 0.308108, 0.335388,
		43.090458, 38.574371, 21.673424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.618275, 38.104259, 20.681932>,  <42.467266, 38.358696, 21.438652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.618275, 38.104259, 20.681932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.531181, 37.850220, 20.385489>,  <42.478928, 37.697796, 20.207623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.531181, 37.850220, 20.385489>,  <42.618275, 38.104259, 20.681932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531181, 37.850220, 20.385489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318965, -0.671333, 0.669010,
		-0.922418, 0.382052, -0.056404,
		-0.217730, -0.635098, -0.741110,
		42.465862, 37.659691, 20.163155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906281, 37.768803, 20.837280>,  <42.618275, 38.104259, 20.681932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906281, 37.768803, 20.837280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.083977, 37.519436, 20.579908>,  <42.190594, 37.369816, 20.425486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.083977, 37.519436, 20.579908>,  <41.906281, 37.768803, 20.837280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083977, 37.519436, 20.579908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243033, -0.775115, 0.583208,
		-0.862315, -0.102707, -0.495846,
		0.444237, -0.623417, -0.643432,
		42.217247, 37.332413, 20.386879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567997, 37.133888, 21.042150>,  <41.906281, 37.768803, 20.837280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567997, 37.133888, 21.042150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864380, 37.007679, 20.805023>,  <42.042210, 36.931953, 20.662746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.864380, 37.007679, 20.805023>,  <41.567997, 37.133888, 21.042150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864380, 37.007679, 20.805023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086302, -0.920172, 0.381883,
		-0.665987, -0.231796, -0.709035,
		0.740954, -0.315521, -0.592819,
		42.086666, 36.913021, 20.627178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360619, 36.540718, 20.524866>,  <41.567997, 37.133888, 21.042150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360619, 36.540718, 20.524866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752354, 36.542137, 20.605738>,  <41.987396, 36.542988, 20.654261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.752354, 36.542137, 20.605738>,  <41.360619, 36.540718, 20.524866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752354, 36.542137, 20.605738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086298, -0.896892, 0.433748,
		0.182872, -0.442235, -0.878058,
		0.979342, 0.003545, 0.202180,
		42.046158, 36.543201, 20.666391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571522, 35.823601, 20.398149>,  <41.360619, 36.540718, 20.524866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571522, 35.823601, 20.398149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852242, 36.013638, 20.610476>,  <42.020672, 36.127659, 20.737871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852242, 36.013638, 20.610476>,  <41.571522, 35.823601, 20.398149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852242, 36.013638, 20.610476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100784, -0.803856, 0.586224,
		0.705211, -0.357913, -0.612026,
		0.701798, 0.475094, 0.530816,
		42.062782, 36.156166, 20.769720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981480, 35.280598, 20.649723>,  <41.571522, 35.823601, 20.398149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981480, 35.280598, 20.649723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080837, 35.584038, 20.890661>,  <42.140453, 35.766102, 21.035225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.080837, 35.584038, 20.890661>,  <41.981480, 35.280598, 20.649723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080837, 35.584038, 20.890661> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018761, -0.625488, 0.780008,
		0.968476, -0.182452, -0.169602,
		0.248398, 0.758601, 0.602347,
		42.155357, 35.811619, 21.071365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497948, 34.982361, 21.107649>,  <41.981480, 35.280598, 20.649723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497948, 34.982361, 21.107649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.310829, 35.295235, 21.272259>,  <42.198559, 35.482960, 21.371025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.310829, 35.295235, 21.272259>,  <42.497948, 34.982361, 21.107649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310829, 35.295235, 21.272259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163424, -0.534131, 0.829455,
		0.868597, 0.320761, 0.377691,
		-0.467794, 0.782187, 0.411525,
		42.170490, 35.529892, 21.395716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.813679, 35.079315, 21.795668>,  <42.497948, 34.982361, 21.107649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.813679, 35.079315, 21.795668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.451797, 35.248386, 21.817009>,  <42.234669, 35.349831, 21.829813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.451797, 35.248386, 21.817009>,  <42.813679, 35.079315, 21.795668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451797, 35.248386, 21.817009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149862, -0.432959, 0.888869,
		0.398809, 0.796169, 0.455045,
		-0.904706, 0.422683, 0.053353,
		42.180386, 35.375191, 21.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.714954, 35.295090, 22.442984>,  <42.813679, 35.079315, 21.795668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.714954, 35.295090, 22.442984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332218, 35.360722, 22.347040>,  <42.102577, 35.400101, 22.289474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.332218, 35.360722, 22.347040>,  <42.714954, 35.295090, 22.442984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332218, 35.360722, 22.347040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270141, -0.197912, 0.942260,
		0.107137, 0.966389, 0.233696,
		-0.956841, 0.164082, -0.239858,
		42.045166, 35.409946, 22.275084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.461796, 35.760784, 22.909611>,  <42.714954, 35.295090, 22.442984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.461796, 35.760784, 22.909611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132977, 35.579144, 22.772190>,  <41.935684, 35.470158, 22.689737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.132977, 35.579144, 22.772190>,  <42.461796, 35.760784, 22.909611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132977, 35.579144, 22.772190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326667, -0.118085, 0.937734,
		-0.466396, 0.883089, -0.051268,
		-0.822048, -0.454103, -0.343550,
		41.886360, 35.442913, 22.669125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907185, 36.039219, 23.225414>,  <42.461796, 35.760784, 22.909611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907185, 36.039219, 23.225414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734215, 35.704178, 23.091885>,  <41.630432, 35.503155, 23.011766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.734215, 35.704178, 23.091885>,  <41.907185, 36.039219, 23.225414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.734215, 35.704178, 23.091885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456926, -0.115612, 0.881959,
		-0.777323, 0.533912, -0.332727,
		-0.432422, -0.837599, -0.333826,
		41.604488, 35.452900, 22.991737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183193, 36.036213, 23.515848>,  <41.907185, 36.039219, 23.225414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183193, 36.036213, 23.515848> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225090, 35.658890, 23.389866>,  <41.250229, 35.432495, 23.314276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.225090, 35.658890, 23.389866>,  <41.183193, 36.036213, 23.515848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225090, 35.658890, 23.389866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283370, -0.331880, 0.899754,
		-0.953274, -0.004993, -0.302067,
		0.104743, -0.943308, -0.314958,
		41.256512, 35.375896, 23.295378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554634, 35.730961, 23.560608>,  <41.183193, 36.036213, 23.515848>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554634, 35.730961, 23.560608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834042, 35.448231, 23.605261>,  <41.001686, 35.278591, 23.632053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.834042, 35.448231, 23.605261>,  <40.554634, 35.730961, 23.560608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834042, 35.448231, 23.605261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452310, -0.315232, 0.834293,
		-0.554510, -0.633265, -0.539902,
		0.698522, -0.706827, 0.111633,
		41.043598, 35.236183, 23.638750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263519, 35.065601, 23.725479>,  <40.554634, 35.730961, 23.560608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263519, 35.065601, 23.725479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637768, 35.010086, 23.855314>,  <40.862316, 34.976776, 23.933216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.637768, 35.010086, 23.855314>,  <40.263519, 35.065601, 23.725479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637768, 35.010086, 23.855314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352575, -0.413396, 0.839521,
		0.017667, -0.899912, -0.435714,
		0.935617, -0.138790, 0.324590,
		40.918453, 34.968449, 23.952692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510960, 34.897537, 23.523884>,  <40.263519, 35.065601, 23.725479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510960, 34.897537, 23.523884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257038, 35.163284, 23.681690>,  <39.104683, 35.322731, 23.776373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.257038, 35.163284, 23.681690>,  <39.510960, 34.897537, 23.523884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257038, 35.163284, 23.681690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021159, 0.525339, -0.850630,
		-0.772382, -0.531637, -0.347545,
		-0.634805, 0.664365, 0.394514,
		39.066597, 35.362595, 23.800045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379467, 35.201439, 22.967857>,  <39.510960, 34.897537, 23.523884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379467, 35.201439, 22.967857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175644, 35.435566, 23.220127>,  <39.053349, 35.576042, 23.371489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.175644, 35.435566, 23.220127>,  <39.379467, 35.201439, 22.967857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.175644, 35.435566, 23.220127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118091, 0.678464, -0.725080,
		-0.852292, -0.443949, -0.276599,
		-0.509561, 0.585316, 0.630676,
		39.022774, 35.611160, 23.409330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794907, 35.573055, 22.617458>,  <39.379467, 35.201439, 22.967857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794907, 35.573055, 22.617458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866848, 35.803555, 22.936356>,  <38.910015, 35.941853, 23.127693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.866848, 35.803555, 22.936356>,  <38.794907, 35.573055, 22.617458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866848, 35.803555, 22.936356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099671, 0.816962, -0.568013,
		-0.978630, 0.022700, 0.204371,
		0.179857, 0.576244, 0.797242,
		38.920807, 35.976429, 23.175528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273869, 36.046883, 22.591911>,  <38.794907, 35.573055, 22.617458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273869, 36.046883, 22.591911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585094, 36.211971, 22.781345>,  <38.771828, 36.311024, 22.895006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.585094, 36.211971, 22.781345>,  <38.273869, 36.046883, 22.591911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585094, 36.211971, 22.781345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086633, 0.817183, -0.569831,
		-0.622187, 0.402334, 0.671573,
		0.778060, 0.412722, 0.473585,
		38.818512, 36.335789, 22.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071259, 36.695229, 22.582630>,  <38.273869, 36.046883, 22.591911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071259, 36.695229, 22.582630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460594, 36.722195, 22.670326>,  <38.694195, 36.738373, 22.722944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.460594, 36.722195, 22.670326>,  <38.071259, 36.695229, 22.582630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460594, 36.722195, 22.670326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082503, 0.788971, -0.608865,
		-0.214021, 0.610721, 0.762375,
		0.973339, 0.067412, 0.219243,
		38.752594, 36.742416, 22.736099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275032, 37.397247, 22.560724>,  <38.071259, 36.695229, 22.582630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275032, 37.397247, 22.560724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615993, 37.192352, 22.518740>,  <38.820572, 37.069416, 22.493549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.615993, 37.192352, 22.518740>,  <38.275032, 37.397247, 22.560724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615993, 37.192352, 22.518740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311815, 0.659117, -0.684351,
		0.419731, 0.550617, 0.721559,
		0.852407, -0.512236, -0.104961,
		38.871716, 37.038681, 22.487251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806496, 37.810627, 22.551497>,  <38.275032, 37.397247, 22.560724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806496, 37.810627, 22.551497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983604, 37.504032, 22.365396>,  <39.089870, 37.320076, 22.253736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.983604, 37.504032, 22.365396>,  <38.806496, 37.810627, 22.551497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983604, 37.504032, 22.365396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147282, 0.574010, -0.805494,
		0.884456, 0.288127, 0.367044,
		0.442771, -0.766483, -0.465250,
		39.116436, 37.274086, 22.225821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113346, 38.559227, 22.687870>,  <38.806496, 37.810627, 22.551497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113346, 38.559227, 22.687870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775848, 38.772366, 22.713676>,  <38.573349, 38.900249, 22.729160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.775848, 38.772366, 22.713676>,  <39.113346, 38.559227, 22.687870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775848, 38.772366, 22.713676> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273038, -0.529580, 0.803116,
		0.462107, 0.660011, 0.592319,
		-0.843746, 0.532851, 0.064515,
		38.522724, 38.932220, 22.733030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962238, 38.574673, 23.412773>,  <39.113346, 38.559227, 22.687870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962238, 38.574673, 23.412773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625656, 38.684715, 23.226755>,  <38.423706, 38.750740, 23.115145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.625656, 38.684715, 23.226755>,  <38.962238, 38.574673, 23.412773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625656, 38.684715, 23.226755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536752, -0.326765, 0.777896,
		0.062042, 0.904180, 0.422622,
		-0.841456, 0.275105, -0.465047,
		38.373219, 38.767246, 23.087240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626041, 38.920029, 23.791132>,  <38.962238, 38.574673, 23.412773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626041, 38.920029, 23.791132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327335, 38.811028, 23.548450>,  <38.148113, 38.745628, 23.402842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327335, 38.811028, 23.548450>,  <38.626041, 38.920029, 23.791132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327335, 38.811028, 23.548450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463263, -0.441412, 0.768468,
		-0.477216, 0.854926, 0.203389,
		-0.746762, -0.272502, -0.606704,
		38.103306, 38.729279, 23.366440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112305, 38.959522, 24.222429>,  <38.626041, 38.920029, 23.791132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112305, 38.959522, 24.222429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978306, 38.722267, 23.929592>,  <37.897907, 38.579914, 23.753889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.978306, 38.722267, 23.929592>,  <38.112305, 38.959522, 24.222429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978306, 38.722267, 23.929592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599357, -0.465375, 0.651304,
		-0.727012, 0.656973, -0.199600,
		-0.335000, -0.593138, -0.732095,
		37.877808, 38.544327, 23.709963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414646, 38.761585, 24.534063>,  <38.112305, 38.959522, 24.222429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414646, 38.761585, 24.534063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465279, 38.493256, 24.241770>,  <37.495659, 38.332260, 24.066393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.465279, 38.493256, 24.241770>,  <37.414646, 38.761585, 24.534063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465279, 38.493256, 24.241770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504236, -0.677901, 0.534974,
		-0.854239, 0.300746, -0.424062,
		0.126581, -0.670822, -0.730736,
		37.503254, 38.292007, 24.022549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782803, 38.405392, 24.516426>,  <37.414646, 38.761585, 24.534063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782803, 38.405392, 24.516426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.033180, 38.166668, 24.315622>,  <37.183407, 38.023434, 24.195141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.033180, 38.166668, 24.315622>,  <36.782803, 38.405392, 24.516426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033180, 38.166668, 24.315622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394275, -0.797556, 0.456565,
		-0.672863, -0.087854, -0.734532,
		0.625941, -0.596814, -0.502008,
		37.220963, 37.987625, 24.165020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337315, 37.871765, 24.188704>,  <36.782803, 38.405392, 24.516426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337315, 37.871765, 24.188704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711361, 37.761185, 24.277367>,  <36.935791, 37.694836, 24.330564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711361, 37.761185, 24.277367>,  <36.337315, 37.871765, 24.188704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711361, 37.761185, 24.277367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351858, -0.798338, 0.488726,
		0.041851, -0.535009, -0.843809,
		0.935118, -0.276447, 0.221658,
		36.991898, 37.678249, 24.343864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.425571, 40.752647, 23.470119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.644436, 40.425682, 23.542171>,  <41.775753, 40.229504, 23.585402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.644436, 40.425682, 23.542171>,  <41.425571, 40.752647, 23.470119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644436, 40.425682, 23.542171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447780, -0.104037, 0.888071,
		-0.707184, -0.566575, -0.422947,
		0.547161, -0.817416, 0.180127,
		41.808582, 40.180458, 23.596210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062027, 40.189758, 23.752052>,  <41.425571, 40.752647, 23.470119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062027, 40.189758, 23.752052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.429241, 40.101608, 23.883898>,  <41.649570, 40.048717, 23.963005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.429241, 40.101608, 23.883898>,  <41.062027, 40.189758, 23.752052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429241, 40.101608, 23.883898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387246, -0.319824, 0.864727,
		-0.085144, -0.921493, -0.378949,
		0.918037, -0.220372, 0.329614,
		41.704651, 40.035496, 23.982782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909698, 39.682888, 24.071514>,  <41.062027, 40.189758, 23.752052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909698, 39.682888, 24.071514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.283535, 39.762581, 24.189398>,  <41.507835, 39.810398, 24.260128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.283535, 39.762581, 24.189398>,  <40.909698, 39.682888, 24.071514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283535, 39.762581, 24.189398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245025, -0.240070, 0.939324,
		0.257897, -0.950090, -0.175549,
		0.934587, 0.199235, 0.294710,
		41.563911, 39.822350, 24.277811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.093002, 39.231998, 24.586470>,  <40.909698, 39.682888, 24.071514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.093002, 39.231998, 24.586470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377674, 39.500778, 24.668447>,  <41.548477, 39.662045, 24.717634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.377674, 39.500778, 24.668447>,  <41.093002, 39.231998, 24.586470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377674, 39.500778, 24.668447> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067875, -0.224598, 0.972085,
		0.699220, -0.705721, -0.114233,
		0.711677, 0.671948, 0.204945,
		41.591179, 39.702362, 24.729931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396591, 38.942570, 25.205915>,  <41.093002, 39.231998, 24.586470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396591, 38.942570, 25.205915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517262, 39.323547, 25.188768>,  <41.589664, 39.552135, 25.178480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.517262, 39.323547, 25.188768>,  <41.396591, 38.942570, 25.205915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517262, 39.323547, 25.188768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036240, 0.033476, 0.998782,
		0.952723, -0.302859, -0.024418,
		0.301672, 0.952447, -0.042869,
		41.607761, 39.609283, 25.175907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990067, 38.925953, 25.661152>,  <41.396591, 38.942570, 25.205915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990067, 38.925953, 25.661152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836483, 39.294258, 25.633507>,  <41.744335, 39.515240, 25.616919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.836483, 39.294258, 25.633507>,  <41.990067, 38.925953, 25.661152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836483, 39.294258, 25.633507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233551, -0.024427, 0.972038,
		0.893326, 0.389361, 0.224424,
		-0.383956, 0.920761, -0.069115,
		41.721298, 39.570488, 25.612772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261818, 39.342358, 26.110962>,  <41.990067, 38.925953, 25.661152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261818, 39.342358, 26.110962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913464, 39.525551, 26.039633>,  <41.704449, 39.635468, 25.996836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.913464, 39.525551, 26.039633>,  <42.261818, 39.342358, 26.110962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913464, 39.525551, 26.039633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198609, 0.003937, 0.980071,
		0.449560, 0.888951, 0.087531,
		-0.870891, 0.457985, -0.178324,
		41.652195, 39.662945, 25.986135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.205185, 39.741348, 26.756020>,  <42.261818, 39.342358, 26.110962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.205185, 39.741348, 26.756020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.857433, 39.745743, 26.558409>,  <41.648781, 39.748379, 26.439842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.857433, 39.745743, 26.558409>,  <42.205185, 39.741348, 26.756020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.857433, 39.745743, 26.558409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489782, -0.151752, 0.858536,
		-0.065541, 0.988357, 0.137309,
		-0.869378, 0.010982, -0.494026,
		41.596619, 39.749039, 26.410200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976089, 40.370270, 26.974958>,  <42.205185, 39.741348, 26.756020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976089, 40.370270, 26.974958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.696781, 40.108505, 26.858919>,  <41.529194, 39.951447, 26.789295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.696781, 40.108505, 26.858919>,  <41.976089, 40.370270, 26.974958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696781, 40.108505, 26.858919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280888, -0.122268, 0.951920,
		-0.658419, 0.746186, -0.098440,
		-0.698273, -0.654413, -0.290099,
		41.487301, 39.912182, 26.771889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357758, 40.626720, 27.057554>,  <41.976089, 40.370270, 26.974958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357758, 40.626720, 27.057554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.291962, 40.232719, 27.036716>,  <41.252483, 39.996319, 27.024214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.291962, 40.232719, 27.036716>,  <41.357758, 40.626720, 27.057554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291962, 40.232719, 27.036716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203534, -0.017782, 0.978906,
		-0.965151, 0.171622, -0.197557,
		-0.164489, -0.985002, -0.052094,
		41.242615, 39.937218, 27.021088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802082, 40.564026, 27.357754>,  <41.357758, 40.626720, 27.057554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802082, 40.564026, 27.357754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965549, 40.200539, 27.391741>,  <41.063629, 39.982445, 27.412132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.965549, 40.200539, 27.391741>,  <40.802082, 40.564026, 27.357754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965549, 40.200539, 27.391741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227219, -0.011136, 0.973780,
		-0.883947, -0.417259, -0.211029,
		0.408669, -0.908719, 0.084965,
		41.088150, 39.927921, 27.417231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306862, 40.279655, 27.770811>,  <40.802082, 40.564026, 27.357754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306862, 40.279655, 27.770811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613316, 40.023968, 27.797438>,  <40.797188, 39.870556, 27.813414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.613316, 40.023968, 27.797438>,  <40.306862, 40.279655, 27.770811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613316, 40.023968, 27.797438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178384, -0.111997, 0.977566,
		-0.617425, -0.760824, -0.199832,
		0.766136, -0.639221, 0.066568,
		40.843155, 39.832203, 27.817408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772629, 39.983528, 27.363165>,  <40.306862, 40.279655, 27.770811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772629, 39.983528, 27.363165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506477, 40.277409, 27.310268>,  <39.346786, 40.453735, 27.278530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.506477, 40.277409, 27.310268>,  <39.772629, 39.983528, 27.363165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506477, 40.277409, 27.310268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566696, 0.381807, -0.730123,
		-0.485931, -0.560748, -0.670398,
		-0.665377, 0.734701, -0.132242,
		39.306866, 40.497818, 27.270596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623703, 39.994686, 26.731077>,  <39.772629, 39.983528, 27.363165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623703, 39.994686, 26.731077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482712, 40.366478, 26.774569>,  <39.398117, 40.589554, 26.800663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.482712, 40.366478, 26.774569>,  <39.623703, 39.994686, 26.731077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482712, 40.366478, 26.774569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347445, 0.237859, -0.907031,
		-0.868933, -0.281927, -0.406783,
		-0.352473, 0.929484, 0.108729,
		39.376968, 40.645325, 26.807188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387352, 40.273457, 26.052460>,  <39.623703, 39.994686, 26.731077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387352, 40.273457, 26.052460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406834, 40.615074, 26.259628>,  <39.418522, 40.820045, 26.383928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.406834, 40.615074, 26.259628>,  <39.387352, 40.273457, 26.052460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406834, 40.615074, 26.259628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262518, 0.489360, -0.831632,
		-0.963698, 0.176463, -0.200370,
		0.048700, 0.854042, 0.517920,
		39.421444, 40.871288, 26.415005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889275, 40.865967, 25.723936>,  <39.387352, 40.273457, 26.052460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889275, 40.865967, 25.723936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.183895, 41.054993, 25.917503>,  <39.360668, 41.168407, 26.033644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.183895, 41.054993, 25.917503>,  <38.889275, 40.865967, 25.723936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183895, 41.054993, 25.917503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169129, 0.564045, -0.808238,
		-0.654898, 0.677152, 0.335522,
		0.736549, 0.472567, 0.483917,
		39.404861, 41.196762, 26.062679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720425, 41.497169, 25.388321>,  <38.889275, 40.865967, 25.723936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720425, 41.497169, 25.388321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080048, 41.490021, 25.563309>,  <39.295822, 41.485733, 25.668303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.080048, 41.490021, 25.563309>,  <38.720425, 41.497169, 25.388321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080048, 41.490021, 25.563309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376266, 0.542455, -0.751110,
		-0.223885, 0.839895, 0.494421,
		0.899055, -0.017872, 0.437472,
		39.349766, 41.484661, 25.694550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034237, 42.293144, 25.361814>,  <38.720425, 41.497169, 25.388321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034237, 42.293144, 25.361814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.345428, 42.056438, 25.446247>,  <39.532143, 41.914413, 25.496906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.345428, 42.056438, 25.446247>,  <39.034237, 42.293144, 25.361814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345428, 42.056438, 25.446247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530353, 0.438414, -0.725617,
		0.336856, 0.676463, 0.654924,
		0.777981, -0.591769, 0.211082,
		39.578823, 41.878906, 25.509571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638565, 42.737827, 25.429296>,  <39.034237, 42.293144, 25.361814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638565, 42.737827, 25.429296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785233, 42.376469, 25.340359>,  <39.873234, 42.159653, 25.286997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785233, 42.376469, 25.340359>,  <39.638565, 42.737827, 25.429296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785233, 42.376469, 25.340359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441193, 0.379248, -0.813339,
		0.819088, 0.200128, 0.537628,
		0.366666, -0.903393, -0.222343,
		39.895233, 42.105450, 25.273655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353245, 42.780582, 25.139179>,  <39.638565, 42.737827, 25.429296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353245, 42.780582, 25.139179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261375, 42.408516, 25.024601>,  <40.206253, 42.185276, 24.955854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.261375, 42.408516, 25.024601>,  <40.353245, 42.780582, 25.139179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261375, 42.408516, 25.024601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447023, 0.160616, -0.879985,
		0.864536, -0.330153, 0.378915,
		-0.229670, -0.930162, -0.286444,
		40.192474, 42.129467, 24.938667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959389, 42.417873, 24.934727>,  <40.353245, 42.780582, 25.139179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959389, 42.417873, 24.934727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657551, 42.238415, 24.743183>,  <40.476448, 42.130737, 24.628258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.657551, 42.238415, 24.743183>,  <40.959389, 42.417873, 24.934727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657551, 42.238415, 24.743183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405878, 0.254290, -0.877838,
		0.515610, -0.856767, -0.009788,
		-0.754592, -0.448650, -0.478857,
		40.431171, 42.103821, 24.599525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198124, 42.238834, 24.317413>,  <40.959389, 42.417873, 24.934727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198124, 42.238834, 24.317413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.810848, 42.175434, 24.239964>,  <40.578484, 42.137394, 24.193493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.810848, 42.175434, 24.239964>,  <41.198124, 42.238834, 24.317413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810848, 42.175434, 24.239964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171061, 0.145500, -0.974458,
		0.182627, -0.976579, -0.113757,
		-0.968187, -0.158503, -0.193627,
		40.520393, 42.127884, 24.181875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025360, 41.690739, 23.842087>,  <41.198124, 42.238834, 24.317413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025360, 41.690739, 23.842087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722172, 41.946690, 23.791437>,  <40.540260, 42.100262, 23.761047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722172, 41.946690, 23.791437>,  <41.025360, 41.690739, 23.842087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722172, 41.946690, 23.791437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147082, -0.021462, -0.988891,
		-0.635488, -0.768176, -0.077848,
		-0.757972, 0.639879, -0.126623,
		40.494781, 42.138653, 23.753450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819843, 41.617970, 23.115179>,  <41.025360, 41.690739, 23.842087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819843, 41.617970, 23.115179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.607479, 41.939579, 23.222275>,  <40.480061, 42.132545, 23.286531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.607479, 41.939579, 23.222275>,  <40.819843, 41.617970, 23.115179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607479, 41.939579, 23.222275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166228, 0.211000, -0.963248,
		-0.830966, -0.555903, 0.021629,
		-0.530908, 0.804022, 0.267740,
		40.448208, 42.180786, 23.302597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306362, 41.536942, 22.705639>,  <40.819843, 41.617970, 23.115179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306362, 41.536942, 22.705639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348953, 41.917679, 22.820635>,  <40.374508, 42.146122, 22.889633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.348953, 41.917679, 22.820635>,  <40.306362, 41.536942, 22.705639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348953, 41.917679, 22.820635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063520, 0.282031, -0.957300,
		-0.992284, 0.120190, -0.030432,
		0.106475, 0.951847, 0.287490,
		40.380898, 42.203232, 22.906881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430180, 41.490162, 21.925274>,  <40.306362, 41.536942, 22.705639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430180, 41.490162, 21.925274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.221741, 41.437901, 21.587898>,  <40.096676, 41.406544, 21.385473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.221741, 41.437901, 21.587898>,  <40.430180, 41.490162, 21.925274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221741, 41.437901, 21.587898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386468, -0.844980, 0.369665,
		-0.760987, 0.518592, 0.389821,
		-0.521096, -0.130657, -0.843438,
		40.065411, 41.398705, 21.334867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724941, 41.524448, 22.087130>,  <40.430180, 41.490162, 21.925274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724941, 41.524448, 22.087130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780689, 41.306602, 21.756321>,  <39.814137, 41.175896, 21.557835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.780689, 41.306602, 21.756321>,  <39.724941, 41.524448, 22.087130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780689, 41.306602, 21.756321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527326, -0.747721, 0.403535,
		-0.838155, 0.379872, -0.391399,
		0.139366, -0.544619, -0.827023,
		39.822498, 41.143215, 21.508215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049362, 41.372826, 21.840818>,  <39.724941, 41.524448, 22.087130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049362, 41.372826, 21.840818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279728, 41.092331, 21.672729>,  <39.417946, 40.924034, 21.571877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.279728, 41.092331, 21.672729>,  <39.049362, 41.372826, 21.840818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279728, 41.092331, 21.672729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662392, -0.701528, 0.262858,
		-0.479123, 0.126967, -0.868516,
		0.575914, -0.701240, -0.420221,
		39.452503, 40.881958, 21.546663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653290, 40.834820, 21.679026>,  <39.049362, 41.372826, 21.840818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653290, 40.834820, 21.679026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998707, 40.634407, 21.656172>,  <39.205956, 40.514160, 21.642460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.998707, 40.634407, 21.656172>,  <38.653290, 40.834820, 21.679026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998707, 40.634407, 21.656172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477707, -0.849068, 0.225565,
		-0.161526, -0.167491, -0.972551,
		0.863542, -0.501029, -0.057135,
		39.257771, 40.484097, 21.639030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449875, 40.262234, 21.235676>,  <38.653290, 40.834820, 21.679026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449875, 40.262234, 21.235676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777096, 40.178669, 21.450020>,  <38.973427, 40.128529, 21.578627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.777096, 40.178669, 21.450020>,  <38.449875, 40.262234, 21.235676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777096, 40.178669, 21.450020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455686, -0.803891, 0.382243,
		0.350916, -0.556878, -0.752825,
		0.818052, -0.208916, 0.535860,
		39.022511, 40.115993, 21.610777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511295, 39.572598, 21.141439>,  <38.449875, 40.262234, 21.235676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511295, 39.572598, 21.141439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706699, 39.680271, 21.473440>,  <38.823940, 39.744873, 21.672640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.706699, 39.680271, 21.473440>,  <38.511295, 39.572598, 21.141439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706699, 39.680271, 21.473440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528227, -0.665886, 0.526851,
		0.694505, -0.695800, -0.183100,
		0.488507, 0.269182, 0.830001,
		38.853252, 39.761024, 21.722441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424728, 38.918953, 21.466724>,  <38.511295, 39.572598, 21.141439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424728, 38.918953, 21.466724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536263, 39.175579, 21.752562>,  <38.603184, 39.329556, 21.924065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.536263, 39.175579, 21.752562>,  <38.424728, 38.918953, 21.466724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536263, 39.175579, 21.752562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525529, -0.520865, 0.672695,
		0.803784, -0.563112, 0.191924,
		0.278837, 0.641564, 0.714595,
		38.619915, 39.368050, 21.966940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984020, 38.636765, 21.993368>,  <38.424728, 38.918953, 21.466724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984020, 38.636765, 21.993368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.748795, 38.916096, 22.156591>,  <38.607658, 39.083694, 22.254526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.748795, 38.916096, 22.156591>,  <38.984020, 38.636765, 21.993368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748795, 38.916096, 22.156591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339338, -0.670987, 0.659262,
		0.734185, 0.249220, 0.631555,
		-0.588067, 0.698331, 0.408058,
		38.572376, 39.125595, 22.279009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491802, 38.025383, 22.130802>,  <38.984020, 38.636765, 21.993368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491802, 38.025383, 22.130802> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385674, 37.666367, 21.989937>,  <39.321995, 37.450954, 21.905418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.385674, 37.666367, 21.989937>,  <39.491802, 38.025383, 22.130802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385674, 37.666367, 21.989937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123575, 0.330585, -0.935651,
		0.956207, -0.291770, 0.023202,
		-0.265324, -0.897543, -0.352163,
		39.306076, 37.397102, 21.884289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033188, 37.661568, 21.850784>,  <39.491802, 38.025383, 22.130802>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033188, 37.661568, 21.850784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710747, 37.518291, 21.662363>,  <39.517281, 37.432327, 21.549311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.710747, 37.518291, 21.662363>,  <40.033188, 37.661568, 21.850784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710747, 37.518291, 21.662363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445645, 0.156284, -0.881463,
		0.389350, -0.920475, 0.033645,
		-0.806106, -0.358191, -0.471054,
		39.468914, 37.410835, 21.521048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305557, 37.417549, 21.215908>,  <40.033188, 37.661568, 21.850784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305557, 37.417549, 21.215908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911709, 37.407555, 21.146748>,  <39.675400, 37.401558, 21.105251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.911709, 37.407555, 21.146748>,  <40.305557, 37.417549, 21.215908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911709, 37.407555, 21.146748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162500, 0.232297, -0.958974,
		0.064125, -0.972324, -0.224664,
		-0.984623, -0.024986, -0.172899,
		39.616322, 37.400059, 21.094877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.157673, 36.912457, 20.716576>,  <40.305557, 37.417549, 21.215908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.157673, 36.912457, 20.716576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845814, 37.162769, 20.707233>,  <39.658699, 37.312958, 20.701628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.845814, 37.162769, 20.707233>,  <40.157673, 36.912457, 20.716576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845814, 37.162769, 20.707233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238287, 0.261975, -0.935194,
		-0.579110, -0.734687, -0.353364,
		-0.779648, 0.625782, -0.023355,
		39.611919, 37.350506, 20.700228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778393, 36.747135, 20.027737>,  <40.157673, 36.912457, 20.716576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778393, 36.747135, 20.027737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660343, 37.102734, 20.167784>,  <39.589512, 37.316093, 20.251812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.660343, 37.102734, 20.167784>,  <39.778393, 36.747135, 20.027737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660343, 37.102734, 20.167784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117653, 0.397465, -0.910044,
		-0.948187, -0.227383, -0.221895,
		-0.295124, 0.888999, 0.350119,
		39.571804, 37.369434, 20.272820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397057, 37.039471, 19.421263>,  <39.778393, 36.747135, 20.027737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397057, 37.039471, 19.421263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503143, 37.354954, 19.643108>,  <39.566795, 37.544243, 19.776217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.503143, 37.354954, 19.643108>,  <39.397057, 37.039471, 19.421263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503143, 37.354954, 19.643108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069849, 0.557985, -0.826907,
		-0.961656, 0.258046, 0.092894,
		0.265214, 0.788711, 0.554614,
		39.582706, 37.591568, 19.809492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026569, 37.656204, 19.122816>,  <39.397057, 37.039471, 19.421263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026569, 37.656204, 19.122816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325428, 37.805370, 19.342890>,  <39.504745, 37.894871, 19.474934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.325428, 37.805370, 19.342890>,  <39.026569, 37.656204, 19.122816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325428, 37.805370, 19.342890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076933, 0.773687, -0.628880,
		-0.660189, 0.512195, 0.549370,
		0.747150, 0.372915, 0.550184,
		39.549572, 37.917244, 19.507944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909988, 38.411221, 19.214933>,  <39.026569, 37.656204, 19.122816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909988, 38.411221, 19.214933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302010, 38.388943, 19.291245>,  <39.537224, 38.375576, 19.337030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.302010, 38.388943, 19.291245>,  <38.909988, 38.411221, 19.214933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302010, 38.388943, 19.291245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121348, 0.927917, -0.352483,
		-0.157394, 0.368602, 0.916165,
		0.980052, -0.055697, 0.190778,
		39.596024, 38.372234, 19.348478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016609, 39.023823, 19.363176>,  <38.909988, 38.411221, 19.214933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016609, 39.023823, 19.363176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394577, 38.895344, 19.338022>,  <39.621357, 38.818256, 19.322929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.394577, 38.895344, 19.338022>,  <39.016609, 39.023823, 19.363176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394577, 38.895344, 19.338022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284318, 0.900723, -0.328422,
		0.162129, 0.292455, 0.942435,
		0.944922, -0.321198, -0.062884,
		39.678055, 38.798985, 19.319157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.506664, 31.267599, 32.726482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865448, 31.091787, 32.745605>,  <36.080719, 30.986301, 32.757080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.865448, 31.091787, 32.745605>,  <35.506664, 31.267599, 32.726482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865448, 31.091787, 32.745605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322521, 0.576529, -0.750729,
		0.302406, 0.688789, 0.658878,
		0.896956, -0.439527, 0.047803,
		36.134537, 30.959929, 32.759945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060650, 31.710787, 32.787216>,  <35.506664, 31.267599, 32.726482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060650, 31.710787, 32.787216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240372, 31.392349, 32.625050>,  <36.348206, 31.201286, 32.527748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.240372, 31.392349, 32.625050>,  <36.060650, 31.710787, 32.787216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240372, 31.392349, 32.625050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277201, 0.555634, -0.783856,
		0.849286, 0.239805, 0.470325,
		0.449302, -0.796093, -0.405418,
		36.375164, 31.153521, 32.503426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708961, 31.968605, 32.384701>,  <36.060650, 31.710787, 32.787216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708961, 31.968605, 32.384701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599258, 31.618635, 32.225056>,  <36.533436, 31.408653, 32.129269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.599258, 31.618635, 32.225056>,  <36.708961, 31.968605, 32.384701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599258, 31.618635, 32.225056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259765, 0.332193, -0.906736,
		0.925908, -0.352353, 0.136169,
		-0.274257, -0.874926, -0.399109,
		36.516983, 31.356157, 32.105324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138813, 31.947813, 31.785486>,  <36.708961, 31.968605, 32.384701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138813, 31.947813, 31.785486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870274, 31.660906, 31.710854>,  <36.709148, 31.488762, 31.666075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.870274, 31.660906, 31.710854>,  <37.138813, 31.947813, 31.785486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870274, 31.660906, 31.710854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093662, 0.167622, -0.981392,
		0.735199, -0.676333, -0.045351,
		-0.671350, -0.717271, -0.186582,
		36.668869, 31.445724, 31.654879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451122, 31.388584, 31.307417>,  <37.138813, 31.947813, 31.785486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451122, 31.388584, 31.307417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054016, 31.388247, 31.259403>,  <36.815750, 31.388044, 31.230595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054016, 31.388247, 31.259403>,  <37.451122, 31.388584, 31.307417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054016, 31.388247, 31.259403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118867, 0.132393, -0.984044,
		0.016723, -0.991197, -0.131335,
		-0.992769, -0.000845, -0.120035,
		36.756184, 31.387993, 31.223392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377457, 31.058592, 30.624176>,  <37.451122, 31.388584, 31.307417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377457, 31.058592, 30.624176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027225, 31.238588, 30.694452>,  <36.817085, 31.346586, 30.736618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027225, 31.238588, 30.694452>,  <37.377457, 31.058592, 30.624176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027225, 31.238588, 30.694452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068038, 0.245197, -0.967083,
		-0.478258, -0.858712, -0.184073,
		-0.875580, 0.449991, 0.175692,
		36.764553, 31.373585, 30.747160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983337, 30.863426, 30.095854>,  <37.377457, 31.058592, 30.624176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983337, 30.863426, 30.095854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783985, 31.173849, 30.250439>,  <36.664375, 31.360104, 30.343189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783985, 31.173849, 30.250439>,  <36.983337, 30.863426, 30.095854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783985, 31.173849, 30.250439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297841, 0.265373, -0.916989,
		-0.814194, -0.572110, 0.098886,
		-0.498377, 0.776059, 0.386463,
		36.634472, 31.406666, 30.366377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406380, 30.956181, 29.655836>,  <36.983337, 30.863426, 30.095854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406380, 30.956181, 29.655836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426571, 31.306210, 29.848375>,  <36.438686, 31.516228, 29.963900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.426571, 31.306210, 29.848375>,  <36.406380, 30.956181, 29.655836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426571, 31.306210, 29.848375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224350, 0.479580, -0.848334,
		-0.973200, -0.065172, 0.220530,
		0.050473, 0.875075, 0.481349,
		36.441711, 31.568731, 29.992781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895454, 31.354721, 29.352615>,  <36.406380, 30.956181, 29.655836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895454, 31.354721, 29.352615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148014, 31.612823, 29.524651>,  <36.299549, 31.767685, 29.627872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148014, 31.612823, 29.524651>,  <35.895454, 31.354721, 29.352615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148014, 31.612823, 29.524651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044319, 0.583746, -0.810726,
		-0.774189, 0.492831, 0.397175,
		0.631401, 0.645258, 0.430088,
		36.337433, 31.806400, 29.653677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843925, 31.821877, 28.884483>,  <35.895454, 31.354721, 29.352615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843925, 31.821877, 28.884483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146141, 31.992517, 29.083349>,  <36.327469, 32.094902, 29.202669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.146141, 31.992517, 29.083349>,  <35.843925, 31.821877, 28.884483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146141, 31.992517, 29.083349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196648, 0.576221, -0.793284,
		-0.624892, 0.697123, 0.351467,
		0.755540, 0.426601, 0.497163,
		36.372803, 32.120499, 29.232498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701500, 32.572826, 28.921789>,  <35.843925, 31.821877, 28.884483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701500, 32.572826, 28.921789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091534, 32.507824, 28.982201>,  <36.325554, 32.468822, 29.018448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.091534, 32.507824, 28.982201>,  <35.701500, 32.572826, 28.921789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091534, 32.507824, 28.982201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211962, 0.481427, -0.850471,
		0.065495, 0.861290, 0.503875,
		0.975081, -0.162504, 0.151030,
		36.384056, 32.459072, 29.027510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036938, 33.170490, 28.826263>,  <35.701500, 32.572826, 28.921789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036938, 33.170490, 28.826263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328583, 32.901867, 28.773487>,  <36.503571, 32.740692, 28.741821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328583, 32.901867, 28.773487>,  <36.036938, 33.170490, 28.826263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328583, 32.901867, 28.773487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241481, 0.432816, -0.868537,
		0.640378, 0.601399, 0.477739,
		0.729111, -0.671558, -0.131940,
		36.547318, 32.700401, 28.733906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154961, 33.811516, 29.175552>,  <36.036938, 33.170490, 28.826263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154961, 33.811516, 29.175552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849472, 34.069641, 29.182459>,  <35.666180, 34.224518, 29.186604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.849472, 34.069641, 29.182459>,  <36.154961, 33.811516, 29.175552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849472, 34.069641, 29.182459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367276, -0.456354, 0.810462,
		0.530883, 0.612626, 0.585536,
		-0.763722, 0.645314, 0.017267,
		35.620354, 34.263237, 29.187639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205151, 34.031658, 29.879429>,  <36.154961, 33.811516, 29.175552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205151, 34.031658, 29.879429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838627, 34.087040, 29.729118>,  <35.618713, 34.120270, 29.638931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.838627, 34.087040, 29.729118>,  <36.205151, 34.031658, 29.879429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838627, 34.087040, 29.729118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397411, -0.198578, 0.895897,
		0.049419, 0.970256, 0.236982,
		-0.916309, 0.138454, -0.375777,
		35.563736, 34.128574, 29.616385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875130, 34.308674, 30.453184>,  <36.205151, 34.031658, 29.879429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875130, 34.308674, 30.453184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569138, 34.228413, 30.208384>,  <35.385544, 34.180256, 30.061504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.569138, 34.228413, 30.208384>,  <35.875130, 34.308674, 30.453184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569138, 34.228413, 30.208384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566875, -0.241271, 0.787680,
		-0.305710, 0.949487, 0.070821,
		-0.764979, -0.200655, -0.612000,
		35.339645, 34.168217, 30.024784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239983, 34.743023, 30.662342>,  <35.875130, 34.308674, 30.453184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239983, 34.743023, 30.662342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104450, 34.437424, 30.442705>,  <35.023132, 34.254063, 30.310923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104450, 34.437424, 30.442705>,  <35.239983, 34.743023, 30.662342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104450, 34.437424, 30.442705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673506, -0.210550, 0.708561,
		-0.656950, 0.609898, -0.443217,
		-0.338830, -0.763999, -0.549090,
		35.002800, 34.208225, 30.277979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512318, 34.723087, 30.829926>,  <35.239983, 34.743023, 30.662342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512318, 34.723087, 30.829926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574886, 34.363522, 30.666225>,  <34.612427, 34.147781, 30.568007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574886, 34.363522, 30.666225>,  <34.512318, 34.723087, 30.829926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574886, 34.363522, 30.666225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753973, -0.376327, 0.538427,
		-0.638012, 0.224342, -0.736622,
		0.156419, -0.898915, -0.409249,
		34.621811, 34.093845, 30.543451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875797, 34.367088, 30.685442>,  <34.512318, 34.723087, 30.829926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875797, 34.367088, 30.685442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147465, 34.075096, 30.716043>,  <34.310467, 33.899899, 30.734406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.147465, 34.075096, 30.716043>,  <33.875797, 34.367088, 30.685442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147465, 34.075096, 30.716043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604225, -0.496880, 0.622915,
		-0.416704, -0.469291, -0.778540,
		0.679169, -0.729984, 0.076505,
		34.351215, 33.856102, 30.738995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473423, 33.639328, 30.609348>,  <33.875797, 34.367088, 30.685442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473423, 33.639328, 30.609348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817825, 33.592865, 30.807409>,  <34.024467, 33.564987, 30.926245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.817825, 33.592865, 30.807409>,  <33.473423, 33.639328, 30.609348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817825, 33.592865, 30.807409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484299, -0.484551, 0.728468,
		0.155309, -0.867017, -0.473456,
		0.861008, -0.116156, 0.495151,
		34.076126, 33.558018, 30.955954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542694, 32.870098, 30.793671>,  <33.473423, 33.639328, 30.609348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542694, 32.870098, 30.793671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759613, 33.085823, 31.051369>,  <33.889763, 33.215260, 31.205988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.759613, 33.085823, 31.051369>,  <33.542694, 32.870098, 30.793671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759613, 33.085823, 31.051369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492575, -0.417111, 0.763799,
		0.680649, -0.731546, 0.039454,
		0.542298, 0.539313, 0.644247,
		33.922302, 33.247616, 31.244642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542610, 32.521255, 31.387863>,  <33.542694, 32.870098, 30.793671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542610, 32.521255, 31.387863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688557, 32.855007, 31.553120>,  <33.776127, 33.055256, 31.652273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.688557, 32.855007, 31.553120>,  <33.542610, 32.521255, 31.387863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688557, 32.855007, 31.553120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537350, -0.173659, 0.825286,
		0.760346, -0.523122, 0.384990,
		0.364869, 0.834377, 0.413141,
		33.798016, 33.105320, 31.677061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870052, 32.364933, 32.011642>,  <33.542610, 32.521255, 31.387863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870052, 32.364933, 32.011642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767632, 32.751568, 32.016502>,  <33.706181, 32.983547, 32.019417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.767632, 32.751568, 32.016502>,  <33.870052, 32.364933, 32.011642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767632, 32.751568, 32.016502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529484, -0.150749, 0.834818,
		0.808756, 0.207322, 0.550392,
		-0.256047, 0.966588, 0.012145,
		33.690819, 33.041546, 32.020145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987522, 32.500305, 32.755653>,  <33.870052, 32.364933, 32.011642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987522, 32.500305, 32.755653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749313, 32.798847, 32.636795>,  <33.606388, 32.977974, 32.565479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749313, 32.798847, 32.636795>,  <33.987522, 32.500305, 32.755653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749313, 32.798847, 32.636795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633667, -0.209071, 0.744819,
		0.493778, 0.631852, 0.597450,
		-0.595525, 0.746359, -0.297149,
		33.570656, 33.022755, 32.547649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737514, 32.845871, 33.382851>,  <33.987522, 32.500305, 32.755653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737514, 32.845871, 33.382851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475979, 33.001976, 33.123562>,  <33.319057, 33.095638, 32.967987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.475979, 33.001976, 33.123562>,  <33.737514, 32.845871, 33.382851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475979, 33.001976, 33.123562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683416, 0.063069, 0.727300,
		0.324720, 0.918541, 0.225474,
		-0.653834, 0.390261, -0.648226,
		33.279827, 33.119053, 32.929092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570148, 33.485516, 33.613831>,  <33.737514, 32.845871, 33.382851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570148, 33.485516, 33.613831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274361, 33.346092, 33.383457>,  <33.096889, 33.262440, 33.245232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.274361, 33.346092, 33.383457>,  <33.570148, 33.485516, 33.613831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274361, 33.346092, 33.383457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603232, -0.036694, 0.796721,
		-0.298836, 0.936569, -0.183126,
		-0.739465, -0.348557, -0.575934,
		33.052521, 33.241524, 33.210678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009216, 33.852798, 33.838188>,  <33.570148, 33.485516, 33.613831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009216, 33.852798, 33.838188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844563, 33.546486, 33.640549>,  <32.745770, 33.362698, 33.521965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844563, 33.546486, 33.640549>,  <33.009216, 33.852798, 33.838188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844563, 33.546486, 33.640549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683414, -0.099295, 0.723247,
		-0.602911, 0.635389, -0.482472,
		-0.411636, -0.765782, -0.494100,
		32.721073, 33.316750, 33.492317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315819, 34.081699, 33.799744>,  <33.009216, 33.852798, 33.838188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315819, 34.081699, 33.799744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339943, 33.683556, 33.769764>,  <32.354416, 33.444668, 33.751778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.339943, 33.683556, 33.769764>,  <32.315819, 34.081699, 33.799744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339943, 33.683556, 33.769764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796604, -0.093240, 0.597267,
		-0.601485, 0.023686, -0.798533,
		0.060309, -0.995362, -0.074951,
		32.358036, 33.384949, 33.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625729, 34.627525, 33.441025>,  <32.315819, 34.081699, 33.799744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625729, 34.627525, 33.441025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945293, 34.807785, 33.600349>,  <33.137032, 34.915939, 33.695946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.945293, 34.807785, 33.600349>,  <32.625729, 34.627525, 33.441025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945293, 34.807785, 33.600349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015663, 0.677624, -0.735242,
		-0.601244, 0.581155, 0.548420,
		0.798912, 0.450649, 0.398315,
		33.184967, 34.942978, 33.719845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507336, 35.350498, 33.520634>,  <32.625729, 34.627525, 33.441025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507336, 35.350498, 33.520634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906971, 35.339706, 33.507381>,  <33.146751, 35.333233, 33.499432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906971, 35.339706, 33.507381>,  <32.507336, 35.350498, 33.520634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906971, 35.339706, 33.507381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003062, 0.728193, -0.685365,
		0.042617, 0.684840, 0.727446,
		0.999087, -0.026981, -0.033130,
		33.206696, 35.331612, 33.497444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677948, 36.059399, 33.230400>,  <32.507336, 35.350498, 33.520634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677948, 36.059399, 33.230400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997105, 35.834095, 33.144520>,  <33.188599, 35.698914, 33.092991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.997105, 35.834095, 33.144520>,  <32.677948, 36.059399, 33.230400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997105, 35.834095, 33.144520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219935, 0.603655, -0.766309,
		0.561240, 0.564214, 0.605535,
		0.797896, -0.563261, -0.214705,
		33.236473, 35.665115, 33.080109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258476, 36.600163, 33.252579>,  <32.677948, 36.059399, 33.230400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258476, 36.600163, 33.252579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423012, 36.282181, 33.074207>,  <33.521732, 36.091393, 32.967186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.423012, 36.282181, 33.074207>,  <33.258476, 36.600163, 33.252579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423012, 36.282181, 33.074207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467542, 0.603987, -0.645449,
		0.782434, 0.057011, 0.620118,
		0.411341, -0.794953, -0.445925,
		33.546413, 36.043694, 32.940430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965881, 36.811169, 33.145332>,  <33.258476, 36.600163, 33.252579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965881, 36.811169, 33.145332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847836, 36.535892, 32.880215>,  <33.777008, 36.370728, 32.721142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.847836, 36.535892, 32.880215>,  <33.965881, 36.811169, 33.145332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847836, 36.535892, 32.880215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391375, 0.545757, -0.740929,
		0.871627, -0.478061, 0.108280,
		-0.295115, -0.688191, -0.662798,
		33.759300, 36.329433, 32.681374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551308, 36.640652, 32.826736>,  <33.965881, 36.811169, 33.145332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551308, 36.640652, 32.826736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246212, 36.552292, 32.583611>,  <34.063156, 36.499275, 32.437737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246212, 36.552292, 32.583611>,  <34.551308, 36.640652, 32.826736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246212, 36.552292, 32.583611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374916, 0.614768, -0.693901,
		0.526942, -0.757143, -0.386091,
		-0.762739, -0.220894, -0.607812,
		34.017391, 36.486023, 32.401268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.820778, 36.562332, 32.216038>,  <34.551308, 36.640652, 32.826736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.820778, 36.562332, 32.216038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435116, 36.577297, 32.110958>,  <34.203720, 36.586277, 32.047909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435116, 36.577297, 32.110958>,  <34.820778, 36.562332, 32.216038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435116, 36.577297, 32.110958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238400, 0.556853, -0.795664,
		0.116520, -0.829768, -0.545809,
		-0.964152, 0.037410, -0.262700,
		34.145870, 36.588520, 32.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895302, 36.392693, 31.562851>,  <34.820778, 36.562332, 32.216038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895302, 36.392693, 31.562851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527164, 36.544823, 31.599360>,  <34.306282, 36.636101, 31.621264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527164, 36.544823, 31.599360>,  <34.895302, 36.392693, 31.562851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527164, 36.544823, 31.599360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132904, 0.523571, -0.841552,
		-0.367846, -0.762384, -0.532409,
		-0.920340, 0.380321, 0.091270,
		34.251064, 36.658920, 31.626740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558544, 36.315899, 30.917141>,  <34.895302, 36.392693, 31.562851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558544, 36.315899, 30.917141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381233, 36.624744, 31.099285>,  <34.274849, 36.810051, 31.208572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.381233, 36.624744, 31.099285>,  <34.558544, 36.315899, 30.917141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381233, 36.624744, 31.099285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082943, 0.541148, -0.836827,
		-0.892540, -0.333175, -0.303918,
		-0.443275, 0.772110, 0.455362,
		34.248249, 36.856377, 31.235893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141712, 36.543255, 30.393774>,  <34.558544, 36.315899, 30.917141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141712, 36.543255, 30.393774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181133, 36.833389, 30.666296>,  <34.204788, 37.007469, 30.829809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.181133, 36.833389, 30.666296>,  <34.141712, 36.543255, 30.393774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181133, 36.833389, 30.666296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105878, 0.673109, -0.731925,
		-0.989483, 0.144271, -0.010458,
		0.098556, 0.725335, 0.681305,
		34.210701, 37.050991, 30.870687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687000, 37.112793, 30.196047>,  <34.141712, 36.543255, 30.393774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687000, 37.112793, 30.196047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962017, 37.271591, 30.439253>,  <34.127026, 37.366871, 30.585176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.962017, 37.271591, 30.439253>,  <33.687000, 37.112793, 30.196047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962017, 37.271591, 30.439253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209105, 0.693608, -0.689336,
		-0.695387, 0.601085, 0.393869,
		0.687540, 0.396995, 0.608016,
		34.168278, 37.390690, 30.621658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751110, 37.796329, 30.106894>,  <33.687000, 37.112793, 30.196047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751110, 37.796329, 30.106894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112942, 37.745762, 30.269747>,  <34.330040, 37.715424, 30.367458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.112942, 37.745762, 30.269747>,  <33.751110, 37.796329, 30.106894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112942, 37.745762, 30.269747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362319, 0.731222, -0.577962,
		-0.224642, 0.670324, 0.707250,
		0.904578, -0.126416, 0.407134,
		34.384315, 37.707836, 30.391888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888584, 38.513603, 30.208111>,  <33.751110, 37.796329, 30.106894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888584, 38.513603, 30.208111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249138, 38.341721, 30.229500>,  <34.465469, 38.238590, 30.242332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249138, 38.341721, 30.229500>,  <33.888584, 38.513603, 30.208111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249138, 38.341721, 30.229500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394989, 0.765326, -0.508193,
		0.177448, 0.479199, 0.859582,
		0.901386, -0.429703, 0.053472,
		34.519554, 38.212811, 30.245541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366978, 39.100212, 30.249903>,  <33.888584, 38.513603, 30.208111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366978, 39.100212, 30.249903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597965, 38.788784, 30.151632>,  <34.736557, 38.601925, 30.092670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.597965, 38.788784, 30.151632>,  <34.366978, 39.100212, 30.249903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597965, 38.788784, 30.151632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628871, 0.616093, -0.474291,
		0.520628, 0.119390, 0.845395,
		0.577467, -0.778573, -0.245674,
		34.771206, 38.555214, 30.077930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038242, 39.258667, 30.426342>,  <34.366978, 39.100212, 30.249903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038242, 39.258667, 30.426342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133389, 38.951885, 30.187948>,  <35.190475, 38.767815, 30.044912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.133389, 38.951885, 30.187948>,  <35.038242, 39.258667, 30.426342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133389, 38.951885, 30.187948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823149, 0.484897, -0.295467,
		0.515601, -0.420301, 0.746661,
		0.237868, -0.766956, -0.595984,
		35.204750, 38.721798, 30.009153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721943, 39.142021, 30.475924>,  <35.038242, 39.258667, 30.426342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721943, 39.142021, 30.475924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625908, 38.957787, 30.134111>,  <35.568287, 38.847248, 29.929024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.625908, 38.957787, 30.134111>,  <35.721943, 39.142021, 30.475924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625908, 38.957787, 30.134111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751910, 0.468540, -0.463792,
		0.613996, -0.753879, 0.233828,
		-0.240085, -0.460583, -0.854530,
		35.553883, 38.819611, 29.877752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359257, 38.656471, 30.173897>,  <35.721943, 39.142021, 30.475924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359257, 38.656471, 30.173897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121208, 38.789726, 29.881363>,  <35.978378, 38.869678, 29.705843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121208, 38.789726, 29.881363>,  <36.359257, 38.656471, 30.173897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121208, 38.789726, 29.881363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797586, 0.356314, -0.486721,
		0.098438, -0.872959, -0.477758,
		-0.595119, 0.333141, -0.731334,
		35.942673, 38.889668, 29.661963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727924, 38.792526, 29.582642>,  <36.359257, 38.656471, 30.173897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727924, 38.792526, 29.582642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432896, 39.009941, 29.422369>,  <36.255878, 39.140392, 29.326206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432896, 39.009941, 29.422369>,  <36.727924, 38.792526, 29.582642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432896, 39.009941, 29.422369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638530, 0.368362, -0.675713,
		-0.219682, -0.754237, -0.618763,
		-0.737576, 0.543541, -0.400680,
		36.211624, 39.173004, 29.302164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634571, 38.623756, 28.795616>,  <36.727924, 38.792526, 29.582642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634571, 38.623756, 28.795616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486794, 38.985680, 28.880302>,  <36.398125, 39.202835, 28.931114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.486794, 38.985680, 28.880302>,  <36.634571, 38.623756, 28.795616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486794, 38.985680, 28.880302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700596, 0.420889, -0.576210,
		-0.610471, -0.064551, -0.789404,
		-0.369446, 0.904813, 0.211716,
		36.375961, 39.257122, 28.943817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555420, 38.953964, 28.174128>,  <36.634571, 38.623756, 28.795616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555420, 38.953964, 28.174128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514923, 39.274689, 28.409704>,  <36.490627, 39.467125, 28.551050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.514923, 39.274689, 28.409704>,  <36.555420, 38.953964, 28.174128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514923, 39.274689, 28.409704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682585, 0.486648, -0.545208,
		-0.723760, 0.346807, -0.596571,
		-0.101238, 0.801810, 0.588941,
		36.484550, 39.515232, 28.586386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517578, 39.483986, 27.710072>,  <36.555420, 38.953964, 28.174128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517578, 39.483986, 27.710072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645382, 39.619991, 28.063864>,  <36.722065, 39.701595, 28.276138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.645382, 39.619991, 28.063864>,  <36.517578, 39.483986, 27.710072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645382, 39.619991, 28.063864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731862, 0.504354, -0.458263,
		-0.601907, 0.793736, -0.087700,
		0.319508, 0.340016, 0.884479,
		36.741234, 39.721996, 28.329208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564156, 40.204041, 27.595520>,  <36.517578, 39.483986, 27.710072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564156, 40.204041, 27.595520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792782, 40.080063, 27.899426>,  <36.929958, 40.005676, 28.081770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.792782, 40.080063, 27.899426>,  <36.564156, 40.204041, 27.595520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792782, 40.080063, 27.899426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812243, 0.345156, -0.470243,
		-0.116489, 0.885891, 0.449030,
		0.571569, -0.309943, 0.759766,
		36.964252, 39.987080, 28.127356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952316, 40.764603, 27.825285>,  <36.564156, 40.204041, 27.595520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952316, 40.764603, 27.825285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147099, 40.434391, 27.939388>,  <37.263969, 40.236263, 28.007851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147099, 40.434391, 27.939388>,  <36.952316, 40.764603, 27.825285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147099, 40.434391, 27.939388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866772, 0.416517, -0.274265,
		0.107599, 0.380808, 0.918372,
		0.486960, -0.825529, 0.285257,
		37.293186, 40.186733, 28.024965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590530, 41.078445, 28.108177>,  <36.952316, 40.764603, 27.825285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590530, 41.078445, 28.108177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694057, 40.694241, 28.067345>,  <37.756176, 40.463718, 28.042845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694057, 40.694241, 28.067345>,  <37.590530, 41.078445, 28.108177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694057, 40.694241, 28.067345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935252, 0.275619, -0.222122,
		0.241488, -0.037981, 0.969660,
		0.258820, -0.960516, -0.102080,
		37.771702, 40.406086, 28.036720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255051, 40.853004, 28.492662>,  <37.590530, 41.078445, 28.108177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255051, 40.853004, 28.492662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223660, 40.577522, 28.204351>,  <38.204826, 40.412231, 28.031364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.223660, 40.577522, 28.204351>,  <38.255051, 40.853004, 28.492662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223660, 40.577522, 28.204351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990463, 0.028268, -0.134848,
		0.113246, -0.724486, 0.679923,
		-0.078475, -0.688710, -0.720778,
		38.200115, 40.370911, 27.988117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854992, 40.513454, 28.570557>,  <38.255051, 40.853004, 28.492662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854992, 40.513454, 28.570557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.729366, 40.411572, 28.204718>,  <38.653992, 40.350441, 27.985214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.729366, 40.411572, 28.204718>,  <38.854992, 40.513454, 28.570557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729366, 40.411572, 28.204718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839845, 0.374710, -0.392751,
		0.442745, -0.891468, 0.096232,
		-0.314066, -0.254709, -0.914596,
		38.635147, 40.335159, 27.930338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483437, 40.191925, 28.082142>,  <38.854992, 40.513454, 28.570557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483437, 40.191925, 28.082142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196301, 40.332108, 27.841515>,  <39.024017, 40.416218, 27.697138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.196301, 40.332108, 27.841515>,  <39.483437, 40.191925, 28.082142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196301, 40.332108, 27.841515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684152, 0.515183, -0.516258,
		0.128993, -0.782156, -0.609584,
		-0.717842, 0.350454, -0.601569,
		38.980949, 40.437244, 27.661043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988831, 39.645344, 27.966932>,  <39.483437, 40.191925, 28.082142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988831, 39.645344, 27.966932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366486, 39.615322, 28.095285>,  <40.593079, 39.597309, 28.172297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.366486, 39.615322, 28.095285>,  <39.988831, 39.645344, 27.966932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366486, 39.615322, 28.095285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328528, -0.290655, 0.898660,
		0.025821, -0.953880, -0.299075,
		0.944141, -0.075050, 0.320881,
		40.649727, 39.592808, 28.191549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085754, 38.984501, 28.270767>,  <39.988831, 39.645344, 27.966932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085754, 38.984501, 28.270767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.389729, 39.198227, 28.418829>,  <40.572113, 39.326462, 28.507666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.389729, 39.198227, 28.418829>,  <40.085754, 38.984501, 28.270767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389729, 39.198227, 28.418829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207979, -0.339651, 0.917269,
		0.615833, -0.774045, -0.146985,
		0.759930, 0.534315, 0.370153,
		40.617706, 39.358521, 28.529875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369621, 38.578197, 28.755302>,  <40.085754, 38.984501, 28.270767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369621, 38.578197, 28.755302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486736, 38.944557, 28.865137>,  <40.557003, 39.164375, 28.931038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.486736, 38.944557, 28.865137>,  <40.369621, 38.578197, 28.755302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486736, 38.944557, 28.865137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268452, -0.196882, 0.942959,
		0.917721, -0.349796, 0.188232,
		0.292784, 0.915904, 0.274587,
		40.574570, 39.219330, 28.947514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835312, 38.519680, 29.410023>,  <40.369621, 38.578197, 28.755302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835312, 38.519680, 29.410023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.685585, 38.889660, 29.383636>,  <40.595749, 39.111649, 29.367804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.685585, 38.889660, 29.383636>,  <40.835312, 38.519680, 29.410023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685585, 38.889660, 29.383636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110918, 0.025968, 0.993490,
		0.920642, 0.379201, 0.092873,
		-0.374321, 0.924950, -0.065967,
		40.573288, 39.167145, 29.363846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013401, 38.793457, 30.099442>,  <40.835312, 38.519680, 29.410023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013401, 38.793457, 30.099442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.729553, 39.021812, 29.934265>,  <40.559242, 39.158825, 29.835159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.729553, 39.021812, 29.934265>,  <41.013401, 38.793457, 30.099442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729553, 39.021812, 29.934265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391329, 0.168030, 0.904780,
		0.585916, 0.803649, 0.104167,
		-0.709623, 0.570889, -0.412943,
		40.516666, 39.193081, 29.810383>
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
