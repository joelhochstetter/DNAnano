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
	<-1.100668, 4.670363, 0.602812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.919292, 4.815184, 0.928588>,  <-0.810467, 4.902076, 1.124053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.919292, 4.815184, 0.928588>,  <-1.100668, 4.670363, 0.602812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.919292, 4.815184, 0.928588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660832, -0.749734, -0.034630,
		0.598076, 0.553910, -0.579214,
		0.453438, 0.362052, 0.814440,
		-0.783261, 4.923800, 1.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.432967, 4.914342, 0.465664>,  <-1.100668, 4.670363, 0.602812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.432967, 4.914342, 0.465664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.455353, 4.782703, 0.842718>,  <-0.468784, 4.703720, 1.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.455353, 4.782703, 0.842718>,  <-0.432967, 4.914342, 0.465664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.455353, 4.782703, 0.842718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679126, -0.704616, -0.205679,
		0.731885, 0.628658, 0.262932,
		-0.055964, -0.329098, 0.942636,
		-0.472142, 4.683974, 1.125509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.289601, 4.821811, 0.699520>,  <-0.432967, 4.914342, 0.465664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.289601, 4.821811, 0.699520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049412, 4.589596, 0.919487>,  <-0.094702, 4.450267, 1.051467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.049412, 4.589596, 0.919487>,  <0.289601, 4.821811, 0.699520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.049412, 4.589596, 0.919487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640237, -0.761058, -0.104340,
		0.479092, 0.289424, 0.828677,
		-0.600473, -0.580538, 0.549917,
		-0.130730, 4.415434, 1.084462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.624113, 4.467135, 1.199008>,  <0.289601, 4.821811, 0.699520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.624113, 4.467135, 1.199008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318302, 4.238792, 1.079261>,  <0.134815, 4.101787, 1.007413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.318302, 4.238792, 1.079261>,  <0.624113, 4.467135, 1.199008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.318302, 4.238792, 1.079261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628116, -0.764099, -0.147049,
		-0.144802, -0.300460, 0.942739,
		-0.764528, -0.570856, -0.299367,
		0.088944, 4.067535, 0.989451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.518140, 3.805495, 1.628376>,  <0.624113, 4.467135, 1.199008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.518140, 3.805495, 1.628376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.375191, 3.745420, 1.259653>,  <0.289421, 3.709376, 1.038419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.375191, 3.745420, 1.259653>,  <0.518140, 3.805495, 1.628376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.375191, 3.745420, 1.259653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627745, -0.769421, -0.118011,
		-0.691534, -0.620834, 0.369249,
		-0.357374, -0.150186, -0.921807,
		0.267979, 3.700365, 0.983111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.214675, 3.127938, 1.543234>,  <0.518140, 3.805495, 1.628376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.214675, 3.127938, 1.543234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.369724, 3.257652, 1.198076>,  <0.462754, 3.335481, 0.990982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.369724, 3.257652, 1.198076>,  <0.214675, 3.127938, 1.543234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.369724, 3.257652, 1.198076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555521, -0.829183, -0.062071,
		-0.735626, -0.455296, -0.501558,
		0.387622, 0.324287, -0.862895,
		0.486011, 3.354939, 0.939208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.233962, 2.568827, 1.078723>,  <0.214675, 3.127938, 1.543234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.233962, 2.568827, 1.078723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.501320, 2.821468, 0.921586>,  <0.661735, 2.973053, 0.827304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.501320, 2.821468, 0.921586>,  <0.233962, 2.568827, 1.078723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.501320, 2.821468, 0.921586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622688, -0.764020, -0.168914,
		-0.406827, -0.131718, -0.903959,
		0.668394, 0.631604, -0.392843,
		0.701838, 3.010949, 0.803733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.661751, 2.099649, 1.631360>,  <0.233962, 2.568827, 1.078723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.661751, 2.099649, 1.631360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889305, 1.793713, 1.752281>,  <1.025837, 1.610150, 1.824834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889305, 1.793713, 1.752281>,  <0.661751, 2.099649, 1.631360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889305, 1.793713, 1.752281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764866, 0.627123, 0.147302,
		-0.302243, 0.147423, 0.941762,
		0.568885, -0.764842, 0.302302,
		1.059970, 1.564260, 1.842972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.908748, 1.497569, 1.063386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.030518, 1.878582, 1.062099>,  <2.103579, 2.107190, 1.061328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.030518, 1.878582, 1.062099>,  <1.908748, 1.497569, 1.063386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.030518, 1.878582, 1.062099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912434, 0.290636, -0.288088,
		-0.273478, 0.090635, 0.957599,
		0.304424, 0.952531, -0.003216,
		2.121845, 2.164341, 1.061135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.446459, 2.064470, 1.399538>,  <1.908748, 1.497569, 1.063386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.446459, 2.064470, 1.399538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633217, 2.221725, 1.082691>,  <1.745271, 2.316079, 0.892583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.633217, 2.221725, 1.082691>,  <1.446459, 2.064470, 1.399538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.633217, 2.221725, 1.082691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846631, 0.457417, -0.272003,
		0.255393, 0.797628, 0.546410,
		0.466894, 0.393140, -0.792118,
		1.773285, 2.339667, 0.845056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.461417, 2.860435, 1.381150>,  <1.446459, 2.064470, 1.399538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.461417, 2.860435, 1.381150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.479584, 2.735065, 1.001740>,  <1.490484, 2.659844, 0.774093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.479584, 2.735065, 1.001740>,  <1.461417, 2.860435, 1.381150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.479584, 2.735065, 1.001740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636106, 0.723053, -0.269376,
		0.770264, 0.615598, -0.166532,
		0.045416, -0.313423, -0.948527,
		1.493209, 2.641039, 0.717181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.694848, 3.442206, 0.874367>,  <1.461417, 2.860435, 1.381150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.694848, 3.442206, 0.874367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.459885, 3.156868, 0.721479>,  <1.318907, 2.985665, 0.629747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.459885, 3.156868, 0.721479>,  <1.694848, 3.442206, 0.874367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.459885, 3.156868, 0.721479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681061, 0.690846, -0.242667,
		0.437159, 0.117769, -0.891640,
		-0.587407, -0.713345, -0.382218,
		1.283662, 2.942864, 0.606814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.501613, 3.763126, 0.228006>,  <1.694848, 3.442206, 0.874367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.501613, 3.763126, 0.228006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.243736, 3.508385, 0.397141>,  <1.089010, 3.355540, 0.498621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.243736, 3.508385, 0.397141>,  <1.501613, 3.763126, 0.228006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.243736, 3.508385, 0.397141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725747, 0.683656, -0.076848,
		-0.240133, -0.356415, -0.902942,
		-0.644692, -0.636854, 0.422835,
		1.050329, 3.317329, 0.523991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926119, 3.652262, -0.229505>,  <1.501613, 3.763126, 0.228006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926119, 3.652262, -0.229505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787354, 3.567406, 0.135931>,  <0.704094, 3.516492, 0.355193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.787354, 3.567406, 0.135931>,  <0.926119, 3.652262, -0.229505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.787354, 3.567406, 0.135931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815589, 0.549207, -0.182172,
		-0.463104, -0.808312, -0.363548,
		-0.346914, -0.212141, 0.913590,
		0.683279, 3.503763, 0.410008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.221911, 3.486177, -0.310433>,  <0.926119, 3.652262, -0.229505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.221911, 3.486177, -0.310433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.256889, 3.612286, 0.067553>,  <0.277876, 3.687951, 0.294344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.256889, 3.612286, 0.067553>,  <0.221911, 3.486177, -0.310433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.256889, 3.612286, 0.067553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635531, 0.748130, -0.190790,
		-0.767107, -0.583871, 0.265785,
		0.087445, 0.315271, 0.944964,
		0.283123, 3.706867, 0.351042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.406491, 3.535093, 0.107197>,  <0.221911, 3.486177, -0.310433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.406491, 3.535093, 0.107197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.166084, 3.818375, 0.255373>,  <-0.021840, 3.988343, 0.344278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.166084, 3.818375, 0.255373>,  <-0.406491, 3.535093, 0.107197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.166084, 3.818375, 0.255373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736870, 0.670500, -0.086327,
		-0.309516, -0.221082, 0.924836,
		0.601018, 0.708204, 0.370439,
		0.014221, 4.030836, 0.366505>
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
