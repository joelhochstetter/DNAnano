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
	<2.581001, -0.328830, 2.475402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405640, -0.409714, 2.825697>,  <2.300423, -0.458244, 3.035874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.405640, -0.409714, 2.825697>,  <2.581001, -0.328830, 2.475402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.405640, -0.409714, 2.825697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835948, 0.449643, -0.314661,
		-0.330142, -0.870019, -0.366160,
		-0.438403, -0.202208, 0.875737,
		2.274119, -0.470376, 3.088418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.947770, -0.588634, 2.358268>,  <2.581001, -0.328830, 2.475402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.947770, -0.588634, 2.358268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908691, -0.459032, 2.734667>,  <1.885244, -0.381271, 2.960506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.908691, -0.459032, 2.734667>,  <1.947770, -0.588634, 2.358268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.908691, -0.459032, 2.734667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864034, 0.441589, -0.241753,
		-0.493863, -0.836672, 0.236809,
		-0.097695, 0.324004, 0.940998,
		1.879383, -0.361831, 3.016966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.332844, -0.722762, 2.764138>,  <1.947770, -0.588634, 2.358268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.332844, -0.722762, 2.764138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.374001, -0.365011, 2.938267>,  <1.398694, -0.150361, 3.042744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.374001, -0.365011, 2.938267>,  <1.332844, -0.722762, 2.764138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.374001, -0.365011, 2.938267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920315, 0.251646, -0.299491,
		-0.377405, -0.369817, 0.849000,
		0.102890, 0.894377, 0.435321,
		1.404868, -0.096698, 3.068863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.757998, -0.695442, 3.200884>,  <1.332844, -0.722762, 2.764138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.757998, -0.695442, 3.200884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896160, -0.324499, 3.143328>,  <0.979058, -0.101934, 3.108794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.896160, -0.324499, 3.143328>,  <0.757998, -0.695442, 3.200884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.896160, -0.324499, 3.143328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937202, 0.332953, -0.103895,
		-0.048439, 0.170741, 0.984125,
		0.345406, 0.927356, -0.143890,
		0.999782, -0.046292, 3.100161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.306013, -0.203194, 3.657645>,  <0.757998, -0.695442, 3.200884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.306013, -0.203194, 3.657645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.469425, 0.004377, 3.357294>,  <0.567472, 0.128920, 3.177083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.469425, 0.004377, 3.357294>,  <0.306013, -0.203194, 3.657645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.469425, 0.004377, 3.357294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884520, 0.428081, -0.185396,
		0.225229, 0.739906, 0.633886,
		0.408530, 0.518928, -0.750878,
		0.591984, 0.160056, 3.132031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.256899, 0.485898, 3.865343>,  <0.306013, -0.203194, 3.657645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.256899, 0.485898, 3.865343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295799, 0.463247, 3.467884>,  <0.319139, 0.449657, 3.229409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.295799, 0.463247, 3.467884>,  <0.256899, 0.485898, 3.865343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.295799, 0.463247, 3.467884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777398, 0.619072, -0.111365,
		0.621445, 0.783290, 0.016182,
		0.097249, -0.056627, -0.993648,
		0.324974, 0.446259, 3.169790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.068334, 1.179958, 3.708668>,  <0.256899, 0.485898, 3.865343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.068334, 1.179958, 3.708668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.066116, 0.990944, 3.356150>,  <0.064786, 0.877536, 3.144639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.066116, 0.990944, 3.356150>,  <0.068334, 1.179958, 3.708668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.066116, 0.990944, 3.356150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819884, 0.506707, -0.266529,
		0.572502, 0.721082, -0.390233,
		-0.005544, -0.472535, -0.881294,
		0.064453, 0.849183, 3.091761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.011162, 1.684548, 3.160038>,  <0.068334, 1.179958, 3.708668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.011162, 1.684548, 3.160038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.161194, 1.336250, 3.065266>,  <-0.264608, 1.127272, 3.008402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.161194, 1.336250, 3.065266>,  <0.011162, 1.684548, 3.160038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.161194, 1.336250, 3.065266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900178, 0.433180, 0.045115,
		0.063351, 0.232720, -0.970478,
		-0.430891, -0.870744, -0.236932,
		-0.290461, 1.075027, 2.994186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.455600, 1.297273, 3.216564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396866, 1.060196, 2.899792>,  <3.361626, 0.917949, 2.709728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396866, 1.060196, 2.899792>,  <3.455600, 1.297273, 3.216564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396866, 1.060196, 2.899792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982948, -0.177023, -0.049764,
		-0.110695, -0.785734, 0.608580,
		-0.146834, -0.592694, -0.791931,
		3.352816, 0.882388, 2.662213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.767118, 0.722672, 3.351984>,  <3.455600, 1.297273, 3.216564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.767118, 0.722672, 3.351984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.746300, 0.768221, 2.955132>,  <3.733809, 0.795551, 2.717020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.746300, 0.768221, 2.955132>,  <3.767118, 0.722672, 3.351984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.746300, 0.768221, 2.955132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943495, -0.319974, -0.086220,
		-0.327275, -0.940558, -0.090786,
		-0.052045, 0.113874, -0.992131,
		3.730686, 0.802383, 2.657492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.896471, 0.092733, 2.888235>,  <3.767118, 0.722672, 3.351984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.896471, 0.092733, 2.888235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.996429, 0.411472, 2.668203>,  <4.056405, 0.602715, 2.536184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.996429, 0.411472, 2.668203>,  <3.896471, 0.092733, 2.888235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.996429, 0.411472, 2.668203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968260, -0.208538, 0.137784,
		-0.004920, -0.567052, -0.823667,
		0.249897, 0.796846, -0.550080,
		4.071398, 0.650526, 2.503179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.338603, 0.105293, 2.266996>,  <3.896471, 0.092733, 2.888235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.338603, 0.105293, 2.266996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.451073, 0.430551, 2.470854>,  <4.518555, 0.625706, 2.593168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.451073, 0.430551, 2.470854>,  <4.338603, 0.105293, 2.266996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.451073, 0.430551, 2.470854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953203, -0.298130, -0.050218,
		0.111106, 0.499915, -0.858918,
		0.281174, 0.813144, 0.509645,
		4.535425, 0.674494, 2.623747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.039027, 0.160885, 2.021559>,  <4.338603, 0.105293, 2.266996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.039027, 0.160885, 2.021559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.050804, 0.392906, 2.347178>,  <5.057871, 0.532118, 2.542549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.050804, 0.392906, 2.347178>,  <5.039027, 0.160885, 2.021559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.050804, 0.392906, 2.347178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956462, -0.252927, 0.145629,
		0.290367, 0.774318, -0.562245,
		0.029444, 0.580052, 0.814047,
		5.059638, 0.566921, 2.591392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.610405, 0.581874, 1.888117>,  <5.039027, 0.160885, 2.021559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.610405, 0.581874, 1.888117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.545723, 0.574110, 2.282776>,  <5.506913, 0.569451, 2.519571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.545723, 0.574110, 2.282776>,  <5.610405, 0.581874, 1.888117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.545723, 0.574110, 2.282776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966999, -0.202591, 0.154501,
		0.196887, 0.979071, 0.051531,
		-0.161707, -0.019411, 0.986648,
		5.497211, 0.568286, 2.578770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.126099, 0.950787, 2.252990>,  <5.610405, 0.581874, 1.888117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.126099, 0.950787, 2.252990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.965263, 0.721635, 2.538685>,  <5.868762, 0.584144, 2.710101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.965263, 0.721635, 2.538685>,  <6.126099, 0.950787, 2.252990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.965263, 0.721635, 2.538685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915600, -0.251979, 0.313341,
		0.000466, 0.779945, 0.625847,
		-0.402089, -0.572880, 0.714236,
		5.844636, 0.549771, 2.752956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.474451, 1.098633, 2.975662>,  <6.126099, 0.950787, 2.252990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.474451, 1.098633, 2.975662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.342628, 0.721250, 2.961355>,  <6.263535, 0.494819, 2.952771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<6.342628, 0.721250, 2.961355>,  <6.474451, 1.098633, 2.975662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.342628, 0.721250, 2.961355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887365, -0.322455, 0.329555,
		-0.322455, 0.076867, 0.943459,
		-0.329555, -0.943459, -0.035768,
		6.243762, 0.438212, 2.950625>
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
