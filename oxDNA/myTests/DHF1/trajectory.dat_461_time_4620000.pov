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
	<4.019895, 4.259131, 0.363000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.400223, 4.381584, 0.381851>,  <4.628420, 4.455056, 0.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.400223, 4.381584, 0.381851>,  <4.019895, 4.259131, 0.363000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.400223, 4.381584, 0.381851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072740, 0.072799, 0.994691,
		0.301078, -0.949201, 0.091487,
		0.950821, 0.306134, 0.047127,
		4.685470, 4.473424, 0.395989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.333457, 3.920924, 0.893653>,  <4.019895, 4.259131, 0.363000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.333457, 3.920924, 0.893653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.542912, 4.255547, 0.829185>,  <4.668584, 4.456320, 0.790505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.542912, 4.255547, 0.829185>,  <4.333457, 3.920924, 0.893653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.542912, 4.255547, 0.829185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003366, 0.191209, 0.981544,
		0.851935, -0.513430, 0.102940,
		0.523637, 0.836558, -0.161169,
		4.700003, 4.506514, 0.780835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.882092, 4.046257, 1.448149>,  <4.333457, 3.920924, 0.893653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.882092, 4.046257, 1.448149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750031, 4.376297, 1.264755>,  <4.670794, 4.574321, 1.154719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.750031, 4.376297, 1.264755>,  <4.882092, 4.046257, 1.448149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.750031, 4.376297, 1.264755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220139, 0.405021, 0.887410,
		0.917898, 0.393912, 0.047918,
		-0.330154, 0.825101, -0.458483,
		4.650985, 4.623827, 1.127210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.244575, 4.646306, 1.561420>,  <4.882092, 4.046257, 1.448149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.244575, 4.646306, 1.561420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853395, 4.713821, 1.512230>,  <4.618686, 4.754331, 1.482716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.853395, 4.713821, 1.512230>,  <5.244575, 4.646306, 1.561420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.853395, 4.713821, 1.512230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091643, 0.182279, 0.978967,
		0.187654, 0.968651, -0.162792,
		-0.977951, 0.168788, -0.122975,
		4.560009, 4.764458, 1.475337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.095042, 5.245051, 1.794851>,  <5.244575, 4.646306, 1.561420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.095042, 5.245051, 1.794851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735246, 5.070900, 1.809631>,  <4.519369, 4.966409, 1.818500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.735246, 5.070900, 1.809631>,  <5.095042, 5.245051, 1.794851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.735246, 5.070900, 1.809631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088073, 0.263488, 0.960634,
		-0.427974, 0.860826, -0.275350,
		-0.899490, -0.435377, 0.036951,
		4.465399, 4.940287, 1.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.605093, 5.792837, 2.161883>,  <5.095042, 5.245051, 1.794851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.605093, 5.792837, 2.161883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.478117, 5.415543, 2.200943>,  <4.401931, 5.189166, 2.224379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.478117, 5.415543, 2.200943>,  <4.605093, 5.792837, 2.161883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.478117, 5.415543, 2.200943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078862, 0.076360, 0.993957,
		-0.944993, 0.323224, 0.050146,
		-0.317441, -0.943237, 0.097650,
		4.382884, 5.132572, 2.230238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.273762, 5.728131, 2.792196>,  <4.605093, 5.792837, 2.161883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.273762, 5.728131, 2.792196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.286146, 5.332939, 2.731613>,  <4.293576, 5.095824, 2.695263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.286146, 5.332939, 2.731613>,  <4.273762, 5.728131, 2.792196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.286146, 5.332939, 2.731613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177803, -0.154557, 0.971853,
		-0.983579, -0.003157, -0.180450,
		0.030958, -0.987979, -0.151458,
		4.295433, 5.036545, 2.686176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.673928, 5.382133, 3.111102>,  <4.273762, 5.728131, 2.792196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.673928, 5.382133, 3.111102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961811, 5.107712, 3.068481>,  <4.134541, 4.943059, 3.042909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.961811, 5.107712, 3.068481>,  <3.673928, 5.382133, 3.111102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.961811, 5.107712, 3.068481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233303, -0.383528, 0.893575,
		-0.653906, -0.618252, -0.436086,
		0.719706, -0.686054, -0.106551,
		4.177723, 4.901896, 3.036516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.699171, 5.442136, 3.917396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.553743, 5.076363, 3.988533>,  <4.466486, 4.856898, 4.031215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.553743, 5.076363, 3.988533>,  <4.699171, 5.442136, 3.917396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.553743, 5.076363, 3.988533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196798, -0.261991, -0.944792,
		0.910543, -0.308498, 0.275211,
		-0.363570, -0.914434, 0.177842,
		4.444673, 4.802032, 4.041886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.252889, 4.964688, 3.878137>,  <4.699171, 5.442136, 3.917396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.252889, 4.964688, 3.878137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.905743, 4.788986, 3.785301>,  <4.697455, 4.683565, 3.729600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.905743, 4.788986, 3.785301>,  <5.252889, 4.964688, 3.878137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.905743, 4.788986, 3.785301> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257592, 0.001597, -0.966252,
		0.424801, -0.898361, 0.111762,
		-0.867865, -0.439254, -0.232089,
		4.645383, 4.657210, 3.715674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.360242, 4.366735, 3.373785>,  <5.252889, 4.964688, 3.878137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.360242, 4.366735, 3.373785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.970896, 4.452667, 3.341766>,  <4.737288, 4.504227, 3.322555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.970896, 4.452667, 3.341766>,  <5.360242, 4.366735, 3.373785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.970896, 4.452667, 3.341766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066181, -0.070994, -0.995279,
		-0.219499, -0.974067, 0.054886,
		-0.973365, 0.214831, -0.080048,
		4.678886, 4.517117, 3.317752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.053339, 3.918538, 2.792889>,  <5.360242, 4.366735, 3.373785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.053339, 3.918538, 2.792889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793621, 4.216064, 2.856331>,  <4.637791, 4.394580, 2.894396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.793621, 4.216064, 2.856331>,  <5.053339, 3.918538, 2.792889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.793621, 4.216064, 2.856331> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226741, 0.009738, -0.973906,
		-0.725951, -0.668314, 0.162331,
		-0.649294, 0.743816, 0.158604,
		4.598833, 4.439209, 2.903912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.539573, 3.815499, 2.320050>,  <5.053339, 3.918538, 2.792889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.539573, 3.815499, 2.320050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.457582, 4.185753, 2.447289>,  <4.408388, 4.407905, 2.523632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.457582, 4.185753, 2.447289>,  <4.539573, 3.815499, 2.320050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.457582, 4.185753, 2.447289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261889, 0.261280, -0.929057,
		-0.943080, -0.273740, 0.188857,
		-0.204975, 0.925635, 0.318097,
		4.396090, 4.463443, 2.542718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.878407, 3.922315, 2.146924>,  <4.539573, 3.815499, 2.320050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.878407, 3.922315, 2.146924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049299, 4.281555, 2.188667>,  <4.151834, 4.497099, 2.213713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.049299, 4.281555, 2.188667>,  <3.878407, 3.922315, 2.146924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.049299, 4.281555, 2.188667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331077, 0.262800, -0.906269,
		-0.841346, 0.352635, 0.409616,
		0.427230, 0.898100, 0.104357,
		4.177468, 4.550985, 2.219974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.373680, 4.296596, 1.866669>,  <3.878407, 3.922315, 2.146924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.373680, 4.296596, 1.866669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719419, 4.496559, 1.844788>,  <3.926863, 4.616537, 1.831659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.719419, 4.496559, 1.844788>,  <3.373680, 4.296596, 1.866669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.719419, 4.496559, 1.844788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129807, 0.116692, -0.984649,
		-0.485850, 0.858181, 0.165754,
		0.864349, 0.499908, -0.054703,
		3.978724, 4.646532, 1.828377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.277607, 4.680905, 1.325474>,  <3.373680, 4.296596, 1.866669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.277607, 4.680905, 1.325474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672953, 4.723297, 1.369118>,  <3.910160, 4.748733, 1.395304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.672953, 4.723297, 1.369118>,  <3.277607, 4.680905, 1.325474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.672953, 4.723297, 1.369118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096343, 0.118917, -0.988219,
		-0.117707, 0.987232, 0.107323,
		0.988364, 0.105980, 0.109110,
		3.969462, 4.755091, 1.401851>
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
