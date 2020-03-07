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
	<3.555123, 0.695711, 4.372171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860518, 0.769386, 4.619772>,  <4.043754, 0.813591, 4.768332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.860518, 0.769386, 4.619772>,  <3.555123, 0.695711, 4.372171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.860518, 0.769386, 4.619772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636235, -0.379060, -0.671951,
		0.110874, 0.906856, -0.406594,
		0.763486, 0.184188, 0.619002,
		4.089563, 0.824643, 4.805472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.053300, 1.012957, 4.034578>,  <3.555123, 0.695711, 4.372171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.053300, 1.012957, 4.034578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.200842, 0.776905, 4.321825>,  <4.289367, 0.635274, 4.494173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.200842, 0.776905, 4.321825>,  <4.053300, 1.012957, 4.034578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200842, 0.776905, 4.321825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445427, -0.565878, -0.693813,
		0.815807, 0.575785, 0.054133,
		0.368855, -0.590130, 0.718118,
		4.311498, 0.599866, 4.537261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.852855, 1.146790, 3.992243>,  <4.053300, 1.012957, 4.034578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.852855, 1.146790, 3.992243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.694981, 0.796745, 4.104246>,  <4.600256, 0.586719, 4.171448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.694981, 0.796745, 4.104246>,  <4.852855, 1.146790, 3.992243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.694981, 0.796745, 4.104246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174642, -0.370643, -0.912208,
		0.902066, -0.311134, 0.299118,
		-0.394685, -0.875111, 0.280008,
		4.576575, 0.534212, 4.188249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.258261, 0.621204, 3.916251>,  <4.852855, 1.146790, 3.992243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.258261, 0.621204, 3.916251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878611, 0.499863, 3.882456>,  <4.650821, 0.427058, 3.862179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.878611, 0.499863, 3.882456>,  <5.258261, 0.621204, 3.916251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.878611, 0.499863, 3.882456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207888, -0.402087, -0.891688,
		0.236525, -0.863888, 0.444695,
		-0.949125, -0.303354, -0.084488,
		4.593873, 0.408857, 3.857109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.228556, -0.167234, 3.871628>,  <5.258261, 0.621204, 3.916251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.228556, -0.167234, 3.871628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955311, 0.042194, 3.667969>,  <4.791364, 0.167851, 3.545773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.955311, 0.042194, 3.667969>,  <5.228556, -0.167234, 3.871628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.955311, 0.042194, 3.667969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181211, -0.553846, -0.812661,
		-0.707475, -0.647402, 0.283461,
		-0.683112, 0.523571, -0.509149,
		4.750377, 0.199265, 3.515224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.060778, -0.587239, 3.277511>,  <5.228556, -0.167234, 3.871628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.060778, -0.587239, 3.277511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871901, -0.249653, 3.175722>,  <4.758574, -0.047101, 3.114649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.871901, -0.249653, 3.175722>,  <5.060778, -0.587239, 3.277511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.871901, -0.249653, 3.175722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109765, -0.230142, -0.966947,
		-0.874634, -0.484519, 0.016034,
		-0.472194, 0.843965, -0.254473,
		4.730242, 0.003537, 3.099380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.585812, -0.738038, 2.711298>,  <5.060778, -0.587239, 3.277511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.585812, -0.738038, 2.711298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.678307, -0.350891, 2.671774>,  <4.733803, -0.118603, 2.648059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.678307, -0.350891, 2.671774>,  <4.585812, -0.738038, 2.711298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.678307, -0.350891, 2.671774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118362, -0.128795, -0.984582,
		-0.965671, 0.215976, -0.144341,
		0.231237, 0.967867, -0.098810,
		4.747678, -0.060531, 2.642131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.128485, -0.566447, 2.196538>,  <4.585812, -0.738038, 2.711298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.128485, -0.566447, 2.196538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410181, -0.284332, 2.229074>,  <4.579198, -0.115063, 2.248596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.410181, -0.284332, 2.229074>,  <4.128485, -0.566447, 2.196538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.410181, -0.284332, 2.229074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131964, -0.017463, -0.991101,
		-0.697590, 0.708707, -0.105370,
		0.704240, 0.705287, 0.081342,
		4.621453, -0.072746, 2.253477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.610066, -0.789750, 0.754941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.903606, -0.518105, 0.761494>,  <5.079731, -0.355117, 0.765425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.903606, -0.518105, 0.761494>,  <4.610066, -0.789750, 0.754941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.903606, -0.518105, 0.761494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057093, 0.037630, 0.997659,
		0.676908, -0.733068, 0.066387,
		0.733850, 0.679114, 0.016381,
		5.123762, -0.314371, 0.766408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.820924, -0.702495, 1.411267>,  <4.610066, -0.789750, 0.754941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.820924, -0.702495, 1.411267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.041264, -0.413040, 1.244934>,  <5.173468, -0.239367, 1.145135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.041264, -0.413040, 1.244934>,  <4.820924, -0.702495, 1.411267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.041264, -0.413040, 1.244934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057048, 0.464426, 0.883773,
		0.832653, -0.510548, 0.214546,
		0.550849, 0.723636, -0.415831,
		5.206518, -0.195949, 1.120185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.394970, -0.657575, 1.757146>,  <4.820924, -0.702495, 1.411267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.394970, -0.657575, 1.757146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.284336, -0.305168, 1.603622>,  <5.217956, -0.093724, 1.511509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.284336, -0.305168, 1.603622>,  <5.394970, -0.657575, 1.757146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.284336, -0.305168, 1.603622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037629, 0.409011, 0.911753,
		0.960252, 0.237736, -0.146279,
		-0.276586, 0.881018, -0.383808,
		5.201360, -0.040863, 1.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.774006, 0.005492, 1.992172>,  <5.394970, -0.657575, 1.757146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.774006, 0.005492, 1.992172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.390705, 0.094872, 1.920815>,  <5.160725, 0.148499, 1.878000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.390705, 0.094872, 1.920815>,  <5.774006, 0.005492, 1.992172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.390705, 0.094872, 1.920815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080061, 0.389273, 0.917637,
		0.274490, 0.893609, -0.355131,
		-0.958251, 0.223450, -0.178394,
		5.103230, 0.161906, 1.867296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.647359, 0.651211, 2.370461>,  <5.774006, 0.005492, 1.992172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.647359, 0.651211, 2.370461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.295654, 0.466179, 2.324995>,  <5.084631, 0.355160, 2.297715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.295654, 0.466179, 2.324995>,  <5.647359, 0.651211, 2.370461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.295654, 0.466179, 2.324995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254878, 0.255295, 0.932664,
		-0.402413, 0.849026, -0.342372,
		-0.879262, -0.462579, -0.113665,
		5.031876, 0.327405, 2.290896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.107678, 1.149156, 2.593488>,  <5.647359, 0.651211, 2.370461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.107678, 1.149156, 2.593488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.966480, 0.774979, 2.600855>,  <4.881762, 0.550472, 2.605275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.966480, 0.774979, 2.600855>,  <5.107678, 1.149156, 2.593488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.966480, 0.774979, 2.600855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356971, 0.152847, 0.921526,
		-0.864851, 0.318720, -0.387880,
		-0.352995, -0.935444, 0.018416,
		4.860582, 0.494345, 2.606380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.380558, 1.137132, 2.682140>,  <5.107678, 1.149156, 2.593488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.380558, 1.137132, 2.682140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472992, 0.769463, 2.809715>,  <4.528453, 0.548861, 2.886260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.472992, 0.769463, 2.809715>,  <4.380558, 1.137132, 2.682140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.472992, 0.769463, 2.809715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201609, 0.275456, 0.939935,
		-0.951816, -0.281506, -0.121659,
		0.231086, -0.919173, 0.318937,
		4.542318, 0.493711, 2.905396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.801896, 0.873728, 2.983608>,  <4.380558, 1.137132, 2.682140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.801896, 0.873728, 2.983608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140251, 0.722733, 3.134327>,  <4.343264, 0.632135, 3.224758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.140251, 0.722733, 3.134327>,  <3.801896, 0.873728, 2.983608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.140251, 0.722733, 3.134327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262218, 0.320854, 0.910107,
		-0.464453, -0.868651, 0.172422,
		0.845887, -0.377489, 0.376798,
		4.394017, 0.609486, 3.247366>
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
