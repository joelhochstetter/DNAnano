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
	<2.787860, -0.038856, 4.066402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900829, 0.081886, 4.430626>,  <2.968611, 0.154332, 4.649160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.900829, 0.081886, 4.430626>,  <2.787860, -0.038856, 4.066402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.900829, 0.081886, 4.430626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855838, 0.349492, -0.381310,
		-0.433334, 0.886982, -0.159635,
		0.282424, 0.301857, 0.910560,
		2.985557, 0.172443, 4.703794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023593, 0.743073, 4.204844>,  <2.787860, -0.038856, 4.066402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023593, 0.743073, 4.204844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216511, 0.477676, 4.433640>,  <3.332262, 0.318438, 4.570917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.216511, 0.477676, 4.433640>,  <3.023593, 0.743073, 4.204844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.216511, 0.477676, 4.433640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849598, 0.195156, -0.489997,
		0.213482, 0.722284, 0.657824,
		0.482295, -0.663491, 0.571988,
		3.361199, 0.278629, 4.605236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.669935, 1.076787, 4.501951>,  <3.023593, 0.743073, 4.204844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.669935, 1.076787, 4.501951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.737782, 0.684898, 4.459282>,  <3.778489, 0.449766, 4.433681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.737782, 0.684898, 4.459282>,  <3.669935, 1.076787, 4.501951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.737782, 0.684898, 4.459282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920917, 0.196109, -0.336827,
		0.350916, -0.041105, 0.935504,
		0.169616, -0.979720, -0.106672,
		3.788666, 0.390982, 4.427280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.304995, 0.935201, 4.936316>,  <3.669935, 1.076787, 4.501951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.304995, 0.935201, 4.936316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264561, 0.719528, 4.601875>,  <4.240301, 0.590125, 4.401211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.264561, 0.719528, 4.601875>,  <4.304995, 0.935201, 4.936316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.264561, 0.719528, 4.601875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953001, 0.188783, -0.236959,
		0.285606, -0.820758, 0.494758,
		-0.101084, -0.539181, -0.836101,
		4.234235, 0.557774, 4.351045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.946248, 0.501842, 4.840389>,  <4.304995, 0.935201, 4.936316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.946248, 0.501842, 4.840389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775234, 0.496025, 4.478836>,  <4.672626, 0.492535, 4.261904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.775234, 0.496025, 4.478836>,  <4.946248, 0.501842, 4.840389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.775234, 0.496025, 4.478836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899266, -0.109032, -0.423595,
		-0.092393, -0.993932, 0.059690,
		-0.427533, -0.014540, -0.903883,
		4.646974, 0.491663, 4.207671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.351913, 0.119368, 4.409184>,  <4.946248, 0.501842, 4.840389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.351913, 0.119368, 4.409184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.142231, 0.357529, 4.165642>,  <5.016421, 0.500425, 4.019516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.142231, 0.357529, 4.165642>,  <5.351913, 0.119368, 4.409184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.142231, 0.357529, 4.165642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797750, 0.093147, -0.595751,
		-0.297997, -0.798011, -0.523809,
		-0.524206, 0.595401, -0.608856,
		4.984969, 0.536149, 3.982985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.599509, 0.026063, 3.735259>,  <5.351913, 0.119368, 4.409184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.599509, 0.026063, 3.735259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.456562, 0.398460, 3.705482>,  <5.370794, 0.621899, 3.687617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.456562, 0.398460, 3.705482>,  <5.599509, 0.026063, 3.735259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.456562, 0.398460, 3.705482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875099, 0.305931, -0.374978,
		-0.326328, -0.199148, -0.924040,
		-0.357368, 0.930992, -0.074440,
		5.349351, 0.677758, 3.683150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.818569, 0.254822, 3.040253>,  <5.599509, 0.026063, 3.735259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.818569, 0.254822, 3.040253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729824, 0.596329, 3.228661>,  <5.676577, 0.801233, 3.341705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.729824, 0.596329, 3.228661>,  <5.818569, 0.254822, 3.040253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.729824, 0.596329, 3.228661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638122, 0.492380, -0.591914,
		-0.737277, 0.169244, -0.654048,
		-0.221862, 0.853767, 0.471019,
		5.663266, 0.852459, 3.369966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.008731, 1.417326, 2.611664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887535, 1.742081, 2.811279>,  <1.814818, 1.936933, 2.931048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.887535, 1.742081, 2.811279>,  <2.008731, 1.417326, 2.611664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.887535, 1.742081, 2.811279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868045, -0.451236, 0.207086,
		0.393314, -0.370442, 0.841473,
		-0.302990, 0.811886, 0.499037,
		1.796638, 1.985646, 2.960990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.915690, 1.248329, 3.289977>,  <2.008731, 1.417326, 2.611664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.915690, 1.248329, 3.289977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681385, 1.557587, 3.192711>,  <1.540802, 1.743142, 3.134351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.681385, 1.557587, 3.192711>,  <1.915690, 1.248329, 3.289977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.681385, 1.557587, 3.192711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797055, -0.495133, 0.345754,
		0.146919, 0.396346, 0.906270,
		-0.585763, 0.773145, -0.243165,
		1.505656, 1.789530, 3.119761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.506047, 1.477970, 3.775002>,  <1.915690, 1.248329, 3.289977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.506047, 1.477970, 3.775002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.287476, 1.584366, 3.457344>,  <1.156333, 1.648203, 3.266750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.287476, 1.584366, 3.457344>,  <1.506047, 1.477970, 3.775002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.287476, 1.584366, 3.457344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836055, -0.229027, 0.498557,
		-0.049269, 0.936374, 0.347529,
		-0.546429, 0.265990, -0.794144,
		1.123547, 1.664163, 3.219101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.816848, 1.860252, 3.982184>,  <1.506047, 1.477970, 3.775002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.816848, 1.860252, 3.982184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815968, 1.650223, 3.641762>,  <0.815439, 1.524205, 3.437509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815968, 1.650223, 3.641762>,  <0.816848, 1.860252, 3.982184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.815968, 1.650223, 3.641762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807157, -0.501474, 0.311481,
		-0.590332, 0.687621, -0.422712,
		-0.002201, -0.525072, -0.851055,
		0.815307, 1.492701, 3.386445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.203122, 2.068075, 3.658591>,  <0.816848, 1.860252, 3.982184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.203122, 2.068075, 3.658591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340900, 1.700897, 3.579865>,  <0.423567, 1.480591, 3.532629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.340900, 1.700897, 3.579865>,  <0.203122, 2.068075, 3.658591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.340900, 1.700897, 3.579865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881744, -0.388296, 0.267870,
		-0.322313, 0.081275, -0.943138,
		0.344445, -0.917944, -0.196816,
		0.444234, 1.425514, 3.520819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.322489, 1.734997, 3.397644>,  <0.203122, 2.068075, 3.658591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.322489, 1.734997, 3.397644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102428, 1.411636, 3.481377>,  <0.029608, 1.217620, 3.531616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102428, 1.411636, 3.481377>,  <-0.322489, 1.734997, 3.397644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.102428, 1.411636, 3.481377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825305, -0.488148, 0.283873,
		-0.127298, -0.328936, -0.935733,
		0.550152, -0.808401, 0.209332,
		0.062617, 1.169116, 3.544176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.631713, 1.208289, 3.075147>,  <-0.322489, 1.734997, 3.397644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.631713, 1.208289, 3.075147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.431473, 1.012772, 3.360939>,  <-0.311329, 0.895461, 3.532414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.431473, 1.012772, 3.360939>,  <-0.631713, 1.208289, 3.075147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.431473, 1.012772, 3.360939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836715, -0.484904, 0.254511,
		0.222051, -0.725224, -0.651724,
		0.500601, -0.488793, 0.714479,
		-0.281292, 0.866134, 3.575283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.785495, 0.477888, 2.922524>,  <-0.631713, 1.208289, 3.075147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.785495, 0.477888, 2.922524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.689625, 0.548096, 3.304466>,  <-0.632102, 0.590220, 3.533632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.689625, 0.548096, 3.304466>,  <-0.785495, 0.477888, 2.922524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.689625, 0.548096, 3.304466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751865, -0.588668, 0.296932,
		0.614211, -0.789089, -0.009122,
		0.239676, 0.175520, 0.954855,
		-0.617722, 0.600752, 3.590923>
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
