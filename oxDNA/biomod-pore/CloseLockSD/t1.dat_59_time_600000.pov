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
	<4.568172, 14.999681, 15.280532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349966, 15.119970, 14.967615>,  <4.219042, 15.192143, 14.779865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.349966, 15.119970, 14.967615>,  <4.568172, 14.999681, 15.280532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.349966, 15.119970, 14.967615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822666, 0.370443, -0.431268,
		0.160103, -0.878828, -0.449476,
		-0.545516, 0.300721, -0.782291,
		4.186311, 15.210187, 14.732927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.965796, 14.951092, 14.656404>,  <4.568172, 14.999681, 15.280532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.965796, 14.951092, 14.656404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.738689, 15.280279, 14.664012>,  <4.602425, 15.477792, 14.668577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.738689, 15.280279, 14.664012>,  <4.965796, 14.951092, 14.656404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.738689, 15.280279, 14.664012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781645, 0.546218, -0.301127,
		-0.258207, -0.156103, -0.953394,
		-0.567768, 0.822969, 0.019021,
		4.568359, 15.527170, 14.669718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.763969, 15.335242, 13.966942>,  <4.965796, 14.951092, 14.656404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.763969, 15.335242, 13.966942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799943, 15.539208, 14.309146>,  <4.821528, 15.661588, 14.514468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.799943, 15.539208, 14.309146>,  <4.763969, 15.335242, 13.966942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.799943, 15.539208, 14.309146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789838, 0.486741, -0.373147,
		-0.606686, 0.709274, -0.358975,
		0.089936, 0.509916, 0.855510,
		4.826924, 15.692183, 14.565799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.677485, 16.088566, 13.996543>,  <4.763969, 15.335242, 13.966942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.677485, 16.088566, 13.996543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.977078, 15.988990, 14.242162>,  <5.156835, 15.929245, 14.389533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.977078, 15.988990, 14.242162>,  <4.677485, 16.088566, 13.996543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.977078, 15.988990, 14.242162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616870, 0.600258, -0.509079,
		-0.241857, 0.760079, 0.603146,
		0.748984, -0.248939, 0.614046,
		5.201774, 15.914309, 14.426375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.077481, 16.745369, 14.250986>,  <4.677485, 16.088566, 13.996543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.077481, 16.745369, 14.250986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323447, 16.429939, 14.248828>,  <5.471027, 16.240681, 14.247533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.323447, 16.429939, 14.248828>,  <5.077481, 16.745369, 14.250986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.323447, 16.429939, 14.248828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673280, 0.528548, -0.517040,
		0.410576, 0.314304, 0.855944,
		0.614915, -0.788575, -0.005395,
		5.507922, 16.193367, 14.247210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.769037, 16.822004, 14.588838>,  <5.077481, 16.745369, 14.250986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.769037, 16.822004, 14.588838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.844787, 16.534477, 14.321274>,  <5.890237, 16.361961, 14.160736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.844787, 16.534477, 14.321274>,  <5.769037, 16.822004, 14.588838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.844787, 16.534477, 14.321274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626050, 0.613201, -0.481711,
		0.756438, -0.327546, 0.566141,
		0.189376, -0.718817, -0.668909,
		5.901600, 16.318832, 14.120602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.462817, 16.899557, 14.497263>,  <5.769037, 16.822004, 14.588838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.462817, 16.899557, 14.497263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.353838, 16.683046, 14.179070>,  <6.288451, 16.553141, 13.988153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.353838, 16.683046, 14.179070>,  <6.462817, 16.899557, 14.497263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.353838, 16.683046, 14.179070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630380, 0.524190, -0.572578,
		0.726907, -0.657454, 0.198396,
		-0.272447, -0.541276, -0.795483,
		6.272104, 16.520664, 13.940425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.077094, 16.773157, 14.101770>,  <6.462817, 16.899557, 14.497263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.077094, 16.773157, 14.101770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.801949, 16.669209, 13.830680>,  <6.636861, 16.606840, 13.668026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.801949, 16.669209, 13.830680>,  <7.077094, 16.773157, 14.101770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.801949, 16.669209, 13.830680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460394, 0.565639, -0.684171,
		0.561112, -0.782649, -0.269471,
		-0.687889, -0.259834, -0.677713,
		6.595590, 16.591248, 13.627362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.410049, 16.570631, 13.518359>,  <7.077094, 16.773157, 14.101770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.410049, 16.570631, 13.518359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.057109, 16.656450, 13.350824>,  <6.845345, 16.707943, 13.250303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.057109, 16.656450, 13.350824>,  <7.410049, 16.570631, 13.518359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.057109, 16.656450, 13.350824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458125, 0.595123, -0.660265,
		0.107599, -0.774466, -0.623398,
		-0.882352, 0.214550, -0.418837,
		6.792403, 16.720816, 13.225173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.385750, 16.422485, 12.777100>,  <7.410049, 16.570631, 13.518359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.385750, 16.422485, 12.777100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.093547, 16.691015, 12.827188>,  <6.918225, 16.852133, 12.857241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.093547, 16.691015, 12.827188>,  <7.385750, 16.422485, 12.777100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.093547, 16.691015, 12.827188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291229, 0.472103, -0.832048,
		-0.617692, -0.571351, -0.540384,
		-0.730508, 0.671325, 0.125220,
		6.874394, 16.892412, 12.864754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.139826, 16.416096, 12.192493>,  <7.385750, 16.422485, 12.777100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.139826, 16.416096, 12.192493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.008690, 16.757999, 12.353443>,  <6.930009, 16.963142, 12.450013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.008690, 16.757999, 12.353443>,  <7.139826, 16.416096, 12.192493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.008690, 16.757999, 12.353443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064699, 0.445226, -0.893078,
		-0.942515, -0.266754, -0.201266,
		-0.327840, 0.854761, 0.402374,
		6.910338, 17.014427, 12.474155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.984094, 16.819838, 11.675900>,  <7.139826, 16.416096, 12.192493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.984094, 16.819838, 11.675900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.980202, 17.106871, 11.954463>,  <6.977867, 17.279091, 12.121600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.980202, 17.106871, 11.954463>,  <6.984094, 16.819838, 11.675900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.980202, 17.106871, 11.954463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254789, 0.675230, -0.692204,
		-0.966948, 0.170702, -0.189402,
		-0.009729, 0.717583, 0.696405,
		6.977283, 17.322145, 12.163384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.543635, 17.346317, 11.384951>,  <6.984094, 16.819838, 11.675900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.543635, 17.346317, 11.384951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.773916, 17.538792, 11.649384>,  <6.912084, 17.654276, 11.808043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.773916, 17.538792, 11.649384>,  <6.543635, 17.346317, 11.384951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.773916, 17.538792, 11.649384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135573, 0.741141, -0.657519,
		-0.806343, 0.468159, 0.361439,
		0.575701, 0.481184, 0.661083,
		6.946626, 17.683147, 11.847709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.289810, 17.997246, 11.312060>,  <6.543635, 17.346317, 11.384951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.289810, 17.997246, 11.312060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.658759, 18.003372, 11.466460>,  <6.880128, 18.007048, 11.559100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.658759, 18.003372, 11.466460>,  <6.289810, 17.997246, 11.312060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.658759, 18.003372, 11.466460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300682, 0.598868, -0.742259,
		-0.242531, 0.800701, 0.547774,
		0.922372, 0.015315, 0.386000,
		6.935470, 18.007967, 11.582260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.522182, 18.757036, 11.247352>,  <6.289810, 17.997246, 11.312060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.522182, 18.757036, 11.247352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.858483, 18.552536, 11.318635>,  <7.060264, 18.429836, 11.361405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.858483, 18.552536, 11.318635>,  <6.522182, 18.757036, 11.247352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.858483, 18.552536, 11.318635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482814, 0.559025, -0.674078,
		0.244999, 0.652775, 0.716841,
		0.840753, -0.511250, 0.178208,
		7.110709, 18.399160, 11.372097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.190755, 19.215193, 11.355839>,  <6.522182, 18.757036, 11.247352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.190755, 19.215193, 11.355839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.350878, 18.866898, 11.241599>,  <7.446951, 18.657921, 11.173056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.350878, 18.866898, 11.241599>,  <7.190755, 19.215193, 11.355839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.350878, 18.866898, 11.241599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611516, 0.485943, -0.624426,
		0.682497, 0.075313, 0.726998,
		0.400306, -0.870740, -0.285599,
		7.470970, 18.605675, 11.155919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.858867, 19.405556, 11.364582>,  <7.190755, 19.215193, 11.355839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.858867, 19.405556, 11.364582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.825893, 19.080698, 11.133541>,  <7.806109, 18.885782, 10.994917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.825893, 19.080698, 11.133541>,  <7.858867, 19.405556, 11.364582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.825893, 19.080698, 11.133541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582369, 0.431067, -0.689223,
		0.808734, -0.393192, 0.437435,
		-0.082433, -0.812146, -0.577601,
		7.801164, 18.837053, 10.960260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.546222, 19.194321, 11.229256>,  <7.858867, 19.405556, 11.364582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.546222, 19.194321, 11.229256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297400, 19.045111, 10.953895>,  <8.148106, 18.955585, 10.788678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.297400, 19.045111, 10.953895>,  <8.546222, 19.194321, 11.229256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.297400, 19.045111, 10.953895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612557, 0.315756, -0.724619,
		0.487669, -0.872439, 0.032081,
		-0.622056, -0.373025, -0.688403,
		8.110783, 18.933203, 10.747374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.043377, 18.878675, 10.744522>,  <8.546222, 19.194321, 11.229256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.043377, 18.878675, 10.744522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706585, 18.933115, 10.535699>,  <8.504510, 18.965778, 10.410405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.706585, 18.933115, 10.535699>,  <9.043377, 18.878675, 10.744522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.706585, 18.933115, 10.535699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516166, 0.484769, -0.706096,
		0.156978, -0.863988, -0.478417,
		-0.841981, 0.136101, -0.522059,
		8.453991, 18.973946, 10.379081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261737, 18.623817, 10.097336>,  <9.043377, 18.878675, 10.744522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261737, 18.623817, 10.097336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.935819, 18.853172, 10.063079>,  <8.740268, 18.990786, 10.042525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.935819, 18.853172, 10.063079>,  <9.261737, 18.623817, 10.097336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.935819, 18.853172, 10.063079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390896, 0.434255, -0.811556,
		-0.428147, -0.694728, -0.577965,
		-0.814794, 0.573389, -0.085642,
		8.691381, 19.025188, 10.037386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.085426, 18.587082, 9.410040>,  <9.261737, 18.623817, 10.097336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.085426, 18.587082, 9.410040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924476, 18.917017, 9.568905>,  <8.827906, 19.114979, 9.664224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.924476, 18.917017, 9.568905>,  <9.085426, 18.587082, 9.410040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.924476, 18.917017, 9.568905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441979, 0.554951, -0.704758,
		-0.801716, -0.108040, -0.587860,
		-0.402376, 0.824837, 0.397162,
		8.803762, 19.164469, 9.688053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.835803, 18.984106, 8.765289>,  <9.085426, 18.587082, 9.410040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.835803, 18.984106, 8.765289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919020, 19.235743, 9.064878>,  <8.968949, 19.386724, 9.244632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.919020, 19.235743, 9.064878>,  <8.835803, 18.984106, 8.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.919020, 19.235743, 9.064878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527926, 0.572397, -0.627420,
		-0.823416, 0.525932, -0.213032,
		0.208041, 0.629093, 0.748974,
		8.981432, 19.424471, 9.289571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.785262, 19.640179, 8.404328>,  <8.835803, 18.984106, 8.765289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.785262, 19.640179, 8.404328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923522, 19.745916, 8.764472>,  <9.006478, 19.809359, 8.980558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.923522, 19.745916, 8.764472>,  <8.785262, 19.640179, 8.404328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.923522, 19.745916, 8.764472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496747, 0.762481, -0.414566,
		-0.796096, 0.590546, 0.132239,
		0.345650, 0.264345, 0.900360,
		9.027217, 19.825220, 9.034580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.837276, 20.393581, 8.461145>,  <8.785262, 19.640179, 8.404328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.837276, 20.393581, 8.461145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.078135, 20.260609, 8.751498>,  <9.222651, 20.180824, 8.925710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.078135, 20.260609, 8.751498>,  <8.837276, 20.393581, 8.461145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.078135, 20.260609, 8.751498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718426, 0.622201, -0.311013,
		-0.348254, 0.708769, 0.613487,
		0.602148, -0.332434, 0.725882,
		9.258780, 20.160879, 8.969263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.967018, 20.939556, 8.811408>,  <8.837276, 20.393581, 8.461145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.967018, 20.939556, 8.811408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.271384, 20.689409, 8.880598>,  <9.454004, 20.539320, 8.922112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.271384, 20.689409, 8.880598>,  <8.967018, 20.939556, 8.811408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.271384, 20.689409, 8.880598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644491, 0.759303, -0.089947,
		-0.075091, 0.179923, 0.980810,
		0.760916, -0.625369, 0.172976,
		9.499659, 20.501799, 8.932490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420112, 21.365751, 9.299719>,  <8.967018, 20.939556, 8.811408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420112, 21.365751, 9.299719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581740, 21.066265, 9.089520>,  <9.678718, 20.886574, 8.963400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.581740, 21.066265, 9.089520>,  <9.420112, 21.365751, 9.299719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.581740, 21.066265, 9.089520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702448, 0.621961, -0.346022,
		0.585913, -0.229318, 0.777251,
		0.404071, -0.748717, -0.525499,
		9.702962, 20.841650, 8.931870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.103502, 21.154694, 9.489079>,  <9.420112, 21.365751, 9.299719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.103502, 21.154694, 9.489079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048945, 21.097317, 9.096993>,  <10.016212, 21.062891, 8.861742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.048945, 21.097317, 9.096993>,  <10.103502, 21.154694, 9.489079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.048945, 21.097317, 9.096993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787297, 0.584880, -0.195139,
		0.601300, -0.798335, 0.033160,
		-0.136392, -0.143444, -0.980215,
		10.008028, 21.054283, 8.802929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.809415, 20.959677, 9.125971>,  <10.103502, 21.154694, 9.489079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.809415, 20.959677, 9.125971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577240, 21.142618, 8.856477>,  <10.437935, 21.252384, 8.694780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.577240, 21.142618, 8.856477>,  <10.809415, 20.959677, 9.125971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.577240, 21.142618, 8.856477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743540, 0.635026, -0.209499,
		0.332023, -0.622550, -0.708655,
		-0.580438, 0.457355, -0.673734,
		10.403109, 21.279825, 8.654357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.149607, 21.471203, 8.565423>,  <10.809415, 20.959677, 9.125971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.149607, 21.471203, 8.565423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317431, 21.110826, 8.609735>,  <11.418127, 20.894600, 8.636322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.317431, 21.110826, 8.609735>,  <11.149607, 21.471203, 8.565423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.317431, 21.110826, 8.609735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906864, 0.410714, -0.094398,
		0.039548, 0.140068, 0.989352,
		0.419563, -0.900941, 0.110780,
		11.443300, 20.840544, 8.642968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.713635, 21.684307, 8.879476>,  <11.149607, 21.471203, 8.565423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.713635, 21.684307, 8.879476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.773860, 21.323910, 8.716728>,  <11.809995, 21.107672, 8.619080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.773860, 21.323910, 8.716728>,  <11.713635, 21.684307, 8.879476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.773860, 21.323910, 8.716728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944144, 0.253078, -0.211052,
		0.293126, -0.352366, 0.888772,
		0.150561, -0.900994, -0.406868,
		11.819028, 21.053612, 8.594667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192359, 21.277388, 9.139159>,  <11.713635, 21.684307, 8.879476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192359, 21.277388, 9.139159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199205, 21.215212, 8.744081>,  <12.203313, 21.177906, 8.507033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199205, 21.215212, 8.744081>,  <12.192359, 21.277388, 9.139159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199205, 21.215212, 8.744081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997541, 0.069800, 0.006301,
		0.067962, -0.985376, 0.156253,
		0.017115, -0.155440, -0.987697,
		12.204340, 21.168579, 8.447771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118295, 20.991554, 9.829466>,  <12.192359, 21.277388, 9.139159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118295, 20.991554, 9.829466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.854609, 20.774195, 10.037372>,  <11.696398, 20.643780, 10.162115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.854609, 20.774195, 10.037372>,  <12.118295, 20.991554, 9.829466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.854609, 20.774195, 10.037372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272648, -0.816908, -0.508257,
		0.700785, -0.193338, 0.686674,
		-0.659214, -0.543399, 0.519764,
		11.656845, 20.611176, 10.193300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.386405, 20.353140, 9.900485>,  <12.118295, 20.991554, 9.829466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.386405, 20.353140, 9.900485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004478, 20.264673, 9.979891>,  <11.775322, 20.211594, 10.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.004478, 20.264673, 9.979891>,  <12.386405, 20.353140, 9.900485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.004478, 20.264673, 9.979891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101263, -0.870109, -0.482345,
		0.279410, -0.440449, 0.853191,
		-0.954817, -0.221168, 0.198516,
		11.718033, 20.198322, 10.039446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.299396, 19.759029, 10.249269>,  <12.386405, 20.353140, 9.900485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.299396, 19.759029, 10.249269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955594, 19.788885, 10.047009>,  <11.749313, 19.806799, 9.925653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.955594, 19.788885, 10.047009>,  <12.299396, 19.759029, 10.249269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.955594, 19.788885, 10.047009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165940, -0.894948, -0.414164,
		-0.483443, -0.439883, 0.756826,
		-0.859504, 0.074637, -0.505650,
		11.697742, 19.811275, 9.895314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089253, 19.202980, 10.655341>,  <12.299396, 19.759029, 10.249269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089253, 19.202980, 10.655341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790165, 19.425068, 10.801023>,  <11.610712, 19.558321, 10.888432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.790165, 19.425068, 10.801023>,  <12.089253, 19.202980, 10.655341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.790165, 19.425068, 10.801023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259514, -0.749216, 0.609367,
		0.611200, 0.361120, 0.704292,
		-0.747721, 0.555219, 0.364205,
		11.565848, 19.591633, 10.910284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.132923, 19.133486, 11.316956>,  <12.089253, 19.202980, 10.655341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.132923, 19.133486, 11.316956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752234, 19.251253, 11.282208>,  <11.523822, 19.321913, 11.261360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.752234, 19.251253, 11.282208>,  <12.132923, 19.133486, 11.316956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.752234, 19.251253, 11.282208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251991, -0.587739, 0.768807,
		0.175295, 0.753579, 0.633554,
		-0.951720, 0.294418, -0.086867,
		11.466719, 19.339579, 11.256148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.836067, 19.249943, 12.040756>,  <12.132923, 19.133486, 11.316956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.836067, 19.249943, 12.040756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.523385, 19.187511, 11.799236>,  <11.335775, 19.150053, 11.654325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.523385, 19.187511, 11.799236>,  <11.836067, 19.249943, 12.040756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.523385, 19.187511, 11.799236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452215, -0.524857, 0.721129,
		-0.429461, 0.836759, 0.339703,
		-0.781706, -0.156078, -0.603801,
		11.288874, 19.140688, 11.618096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264587, 19.335686, 12.471703>,  <11.836067, 19.249943, 12.040756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264587, 19.335686, 12.471703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173523, 19.089470, 12.169900>,  <11.118884, 18.941740, 11.988818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.173523, 19.089470, 12.169900>,  <11.264587, 19.335686, 12.471703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.173523, 19.089470, 12.169900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248879, -0.712335, 0.656230,
		-0.941397, 0.337180, 0.008977,
		-0.227662, -0.615539, -0.754507,
		11.105225, 18.904808, 11.943548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.715316, 19.029682, 12.748746>,  <11.264587, 19.335686, 12.471703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.715316, 19.029682, 12.748746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.803811, 18.791088, 12.440134>,  <10.856908, 18.647932, 12.254967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.803811, 18.791088, 12.440134>,  <10.715316, 19.029682, 12.748746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.803811, 18.791088, 12.440134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317520, -0.792085, 0.521328,
		-0.922082, 0.129638, -0.364636,
		0.221238, -0.596485, -0.771530,
		10.870183, 18.612143, 12.208675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.145477, 18.666367, 12.660174>,  <10.715316, 19.029682, 12.748746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.145477, 18.666367, 12.660174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.410542, 18.434244, 12.470805>,  <10.569580, 18.294971, 12.357183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.410542, 18.434244, 12.470805>,  <10.145477, 18.666367, 12.660174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.410542, 18.434244, 12.470805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502069, -0.813275, 0.294125,
		-0.555705, 0.042786, -0.830278,
		0.662660, -0.580304, -0.473423,
		10.609340, 18.260153, 12.328778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.738358, 18.144871, 12.256531>,  <10.145477, 18.666367, 12.660174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.738358, 18.144871, 12.256531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104771, 17.997017, 12.318834>,  <10.324617, 17.908304, 12.356216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104771, 17.997017, 12.318834>,  <9.738358, 18.144871, 12.256531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.104771, 17.997017, 12.318834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398572, -0.795184, 0.456972,
		-0.045054, -0.480681, -0.875737,
		0.916030, -0.369633, 0.155760,
		10.379580, 17.886127, 12.365562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.670988, 17.422483, 12.211519>,  <9.738358, 18.144871, 12.256531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.670988, 17.422483, 12.211519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.038117, 17.425203, 12.370292>,  <10.258395, 17.426836, 12.465555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.038117, 17.425203, 12.370292>,  <9.670988, 17.422483, 12.211519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.038117, 17.425203, 12.370292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165138, -0.902703, 0.397311,
		0.361014, -0.430209, -0.827399,
		0.917823, 0.006800, 0.396932,
		10.313464, 17.427242, 12.489371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.004965, 16.807291, 12.090224>,  <9.670988, 17.422483, 12.211519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.004965, 16.807291, 12.090224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171170, 16.950697, 12.424605>,  <10.270893, 17.036741, 12.625234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.171170, 16.950697, 12.424605>,  <10.004965, 16.807291, 12.090224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171170, 16.950697, 12.424605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340474, -0.790927, 0.508440,
		0.843461, -0.495884, -0.206575,
		0.415513, 0.358516, 0.835952,
		10.295824, 17.058252, 12.675391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.271605, 16.231804, 12.400866>,  <10.004965, 16.807291, 12.090224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.271605, 16.231804, 12.400866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244301, 16.483276, 12.710731>,  <10.227918, 16.634159, 12.896649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.244301, 16.483276, 12.710731>,  <10.271605, 16.231804, 12.400866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.244301, 16.483276, 12.710731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536509, -0.677773, 0.502774,
		0.841129, -0.381293, 0.383559,
		-0.068262, 0.628680, 0.774662,
		10.223823, 16.671881, 12.943130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.345805, 15.788534, 13.110023>,  <10.271605, 16.231804, 12.400866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.345805, 15.788534, 13.110023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247755, 16.144463, 13.263975>,  <10.188925, 16.358019, 13.356346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.247755, 16.144463, 13.263975>,  <10.345805, 15.788534, 13.110023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.247755, 16.144463, 13.263975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564033, -0.453781, 0.689891,
		0.788531, -0.047977, 0.613121,
		-0.245124, 0.889821, 0.384881,
		10.174218, 16.411409, 13.379439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.519348, 15.703363, 13.794853>,  <10.345805, 15.788534, 13.110023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.519348, 15.703363, 13.794853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224784, 15.972413, 13.765800>,  <10.048045, 16.133842, 13.748369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.224784, 15.972413, 13.765800>,  <10.519348, 15.703363, 13.794853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.224784, 15.972413, 13.765800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610257, -0.614085, 0.500486,
		0.292037, 0.412887, 0.862692,
		-0.736411, 0.672624, -0.072631,
		10.003860, 16.174200, 13.744011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.211698, 15.766458, 14.424154>,  <10.519348, 15.703363, 13.794853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.211698, 15.766458, 14.424154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928273, 15.912093, 14.182367>,  <9.758219, 15.999475, 14.037295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.928273, 15.912093, 14.182367>,  <10.211698, 15.766458, 14.424154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.928273, 15.912093, 14.182367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676866, -0.592837, 0.436345,
		-0.199482, 0.718320, 0.666501,
		-0.708562, 0.364089, -0.604466,
		9.715705, 16.021320, 14.001027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.480587, 15.911583, 14.862986>,  <10.211698, 15.766458, 14.424154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.480587, 15.911583, 14.862986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405547, 15.863257, 14.473071>,  <9.360523, 15.834262, 14.239122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.405547, 15.863257, 14.473071>,  <9.480587, 15.911583, 14.862986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.405547, 15.863257, 14.473071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795527, -0.563417, 0.222930,
		-0.576144, 0.817292, 0.009587,
		-0.187600, -0.120813, -0.974787,
		9.349267, 15.827014, 14.180634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.793137, 16.064501, 14.819566>,  <9.480587, 15.911583, 14.862986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.793137, 16.064501, 14.819566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.858090, 15.866017, 14.478413>,  <8.897062, 15.746927, 14.273721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.858090, 15.866017, 14.478413>,  <8.793137, 16.064501, 14.819566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.858090, 15.866017, 14.478413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829257, -0.537064, 0.154579,
		-0.534755, 0.682157, -0.498696,
		0.162384, -0.496210, -0.852882,
		8.906806, 15.717155, 14.222548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.067221, 15.993217, 14.510404>,  <8.793137, 16.064501, 14.819566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.067221, 15.993217, 14.510404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.300197, 15.731523, 14.317432>,  <8.439982, 15.574506, 14.201650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.300197, 15.731523, 14.317432>,  <8.067221, 15.993217, 14.510404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.300197, 15.731523, 14.317432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748935, -0.662620, -0.005595,
		-0.316005, 0.364566, -0.875918,
		0.582440, -0.654238, -0.482428,
		8.474929, 15.535252, 14.172704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.707862, 15.861806, 13.836329>,  <8.067221, 15.993217, 14.510404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.707862, 15.861806, 13.836329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945793, 15.562287, 13.953279>,  <8.088552, 15.382576, 14.023450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.945793, 15.562287, 13.953279>,  <7.707862, 15.861806, 13.836329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945793, 15.562287, 13.953279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761632, -0.641311, -0.092935,
		0.257094, -0.167403, -0.951777,
		0.594828, -0.748796, 0.292377,
		8.124242, 15.337648, 14.040993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.491288, 15.264380, 13.332082>,  <7.707862, 15.861806, 13.836329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.491288, 15.264380, 13.332082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.695343, 15.095970, 13.632082>,  <7.817776, 14.994925, 13.812082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.695343, 15.095970, 13.632082>,  <7.491288, 15.264380, 13.332082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.695343, 15.095970, 13.632082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720110, -0.685905, 0.104766,
		0.470319, -0.593527, -0.653089,
		0.510138, -0.421022, 0.750000,
		7.848384, 14.969664, 13.857082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.574225, 14.514482, 13.164855>,  <7.491288, 15.264380, 13.332082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.574225, 14.514482, 13.164855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.622365, 14.527352, 13.561739>,  <7.651249, 14.535074, 13.799870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.622365, 14.527352, 13.561739>,  <7.574225, 14.514482, 13.164855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.622365, 14.527352, 13.561739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631547, -0.768661, 0.101528,
		0.765940, -0.638846, -0.072186,
		0.120348, 0.032175, 0.992210,
		7.658470, 14.537004, 13.859402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691168, 13.835149, 13.400427>,  <7.574225, 14.514482, 13.164855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691168, 13.835149, 13.400427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603723, 13.995914, 13.756106>,  <7.551256, 14.092372, 13.969514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603723, 13.995914, 13.756106>,  <7.691168, 13.835149, 13.400427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.603723, 13.995914, 13.756106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465873, -0.843671, 0.266797,
		0.857421, -0.355930, 0.371676,
		-0.218611, 0.401911, 0.889200,
		7.538140, 14.116487, 14.022866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.814612, 13.264484, 13.908673>,  <7.691168, 13.835149, 13.400427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.814612, 13.264484, 13.908673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541331, 13.516641, 14.056100>,  <7.377363, 13.667934, 14.144556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541331, 13.516641, 14.056100>,  <7.814612, 13.264484, 13.908673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541331, 13.516641, 14.056100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535226, -0.775648, 0.334519,
		0.496756, 0.031278, 0.867326,
		-0.683203, 0.630390, 0.368567,
		7.336370, 13.705758, 14.166670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.654077, 13.031404, 14.536525>,  <7.814612, 13.264484, 13.908673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.654077, 13.031404, 14.536525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.354508, 13.264786, 14.410859>,  <7.174767, 13.404815, 14.335460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.354508, 13.264786, 14.410859>,  <7.654077, 13.031404, 14.536525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.354508, 13.264786, 14.410859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655373, -0.722264, 0.220956,
		-0.097992, 0.371374, 0.923298,
		-0.748922, 0.583452, -0.314165,
		7.129832, 13.439821, 14.316609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.894658, 12.281187, 14.596061>,  <7.654077, 13.031404, 14.536525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.894658, 12.281187, 14.596061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.022718, 12.438736, 14.251418>,  <8.099555, 12.533265, 14.044632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.022718, 12.438736, 14.251418>,  <7.894658, 12.281187, 14.596061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.022718, 12.438736, 14.251418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680395, -0.728446, -0.080181,
		-0.659216, -0.560563, -0.501203,
		0.320152, 0.393873, -0.861607,
		8.118764, 12.556898, 13.992936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.357858, 11.747622, 14.492109>,  <7.894658, 12.281187, 14.596061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.357858, 11.747622, 14.492109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.402284, 11.974190, 14.165469>,  <8.428939, 12.110130, 13.969485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.402284, 11.974190, 14.165469>,  <8.357858, 11.747622, 14.492109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.402284, 11.974190, 14.165469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879697, -0.438329, -0.184392,
		-0.462382, -0.697881, -0.546959,
		0.111065, 0.566418, -0.816600,
		8.435603, 12.144115, 13.920489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.065681, 11.528932, 14.641502>,  <8.357858, 11.747622, 14.492109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.065681, 11.528932, 14.641502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335790, 11.427170, 14.918425>,  <9.497854, 11.366113, 15.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335790, 11.427170, 14.918425>,  <9.065681, 11.528932, 14.641502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335790, 11.427170, 14.918425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697965, -0.083033, -0.711302,
		0.238442, 0.963527, 0.121495,
		0.675271, -0.254404, 0.692306,
		9.538371, 11.350848, 15.126117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.701480, 12.036230, 14.537255>,  <9.065681, 11.528932, 14.641502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.701480, 12.036230, 14.537255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797990, 11.722914, 14.766424>,  <9.855896, 11.534924, 14.903926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.797990, 11.722914, 14.766424>,  <9.701480, 12.036230, 14.537255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.797990, 11.722914, 14.766424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734527, -0.238431, -0.635311,
		0.634236, 0.574112, 0.517822,
		0.241275, -0.783292, 0.572922,
		9.870373, 11.487926, 14.938301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.276168, 11.851246, 14.245321>,  <9.701480, 12.036230, 14.537255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.276168, 11.851246, 14.245321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267283, 11.542108, 14.499002>,  <10.261952, 11.356625, 14.651212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.267283, 11.542108, 14.499002>,  <10.276168, 11.851246, 14.245321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.267283, 11.542108, 14.499002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870372, -0.327064, -0.368080,
		0.491894, 0.543817, 0.679928,
		-0.022212, -0.772847, 0.634204,
		10.260620, 11.310253, 14.689263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.942128, 11.845071, 14.567614>,  <10.276168, 11.851246, 14.245321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.942128, 11.845071, 14.567614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.778025, 11.480379, 14.559230>,  <10.679563, 11.261564, 14.554199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.778025, 11.480379, 14.559230>,  <10.942128, 11.845071, 14.567614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.778025, 11.480379, 14.559230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842551, -0.370135, -0.391289,
		0.348992, -0.178190, 0.920029,
		-0.410259, -0.911728, -0.020960,
		10.654947, 11.206861, 14.552942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431058, 11.404120, 14.363219>,  <10.942128, 11.845071, 14.567614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431058, 11.404120, 14.363219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.161289, 11.108805, 14.359561>,  <10.999428, 10.931615, 14.357367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.161289, 11.108805, 14.359561>,  <11.431058, 11.404120, 14.363219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.161289, 11.108805, 14.359561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698120, -0.633598, -0.333439,
		0.240380, -0.231263, 0.942727,
		-0.674422, -0.738289, -0.009145,
		10.958962, 10.887318, 14.356817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714181, 10.815553, 14.718620>,  <11.431058, 11.404120, 14.363219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714181, 10.815553, 14.718620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438081, 10.690180, 14.457756>,  <11.272421, 10.614956, 14.301237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.438081, 10.690180, 14.457756>,  <11.714181, 10.815553, 14.718620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.438081, 10.690180, 14.457756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669608, -0.618242, -0.411585,
		-0.274189, -0.720789, 0.636619,
		-0.690251, -0.313433, -0.652161,
		11.231006, 10.596149, 14.262108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887795, 10.709749, 15.458645>,  <11.714181, 10.815553, 14.718620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887795, 10.709749, 15.458645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274178, 10.777906, 15.536512>,  <12.506007, 10.818801, 15.583233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.274178, 10.777906, 15.536512>,  <11.887795, 10.709749, 15.458645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.274178, 10.777906, 15.536512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258294, 0.677726, 0.688456,
		-0.014624, -0.715300, 0.698665,
		0.965956, 0.170393, 0.194669,
		12.563964, 10.829024, 15.594913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.044029, 10.569057, 16.163357>,  <11.887795, 10.709749, 15.458645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.044029, 10.569057, 16.163357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.309516, 10.830923, 16.018639>,  <12.468808, 10.988042, 15.931808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.309516, 10.830923, 16.018639>,  <12.044029, 10.569057, 16.163357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.309516, 10.830923, 16.018639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201628, 0.622381, 0.756299,
		0.720297, -0.429019, 0.545082,
		0.663716, 0.654664, -0.361797,
		12.508631, 11.027322, 15.910100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.441657, 10.730316, 16.738394>,  <12.044029, 10.569057, 16.163357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.441657, 10.730316, 16.738394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503729, 11.028758, 16.479397>,  <12.540972, 11.207823, 16.323997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.503729, 11.028758, 16.479397>,  <12.441657, 10.730316, 16.738394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.503729, 11.028758, 16.479397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151892, 0.665660, 0.730634,
		0.976139, -0.015031, 0.216624,
		0.155180, 0.746104, -0.647493,
		12.550282, 11.252589, 16.285149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.690065, 11.222213, 17.123306>,  <12.441657, 10.730316, 16.738394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.690065, 11.222213, 17.123306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590732, 11.431197, 16.797028>,  <12.531131, 11.556588, 16.601259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590732, 11.431197, 16.797028>,  <12.690065, 11.222213, 17.123306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.590732, 11.431197, 16.797028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280761, 0.767109, 0.576816,
		0.927094, 0.372260, -0.043814,
		-0.248336, 0.522462, -0.815698,
		12.516231, 11.587935, 16.552319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.834360, 11.856263, 17.358116>,  <12.690065, 11.222213, 17.123306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.834360, 11.856263, 17.358116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586641, 11.910271, 17.048733>,  <12.438010, 11.942676, 16.863102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.586641, 11.910271, 17.048733>,  <12.834360, 11.856263, 17.358116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.586641, 11.910271, 17.048733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406895, 0.787308, 0.463231,
		0.671496, 0.601595, -0.432639,
		-0.619298, 0.135020, -0.773460,
		12.400852, 11.950776, 16.816694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.812406, 12.513229, 17.228352>,  <12.834360, 11.856263, 17.358116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.812406, 12.513229, 17.228352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469100, 12.374874, 17.076696>,  <12.263117, 12.291861, 16.985704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.469100, 12.374874, 17.076696>,  <12.812406, 12.513229, 17.228352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.469100, 12.374874, 17.076696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505885, 0.694553, 0.511543,
		0.086394, 0.630838, -0.771090,
		-0.858263, -0.345889, -0.379137,
		12.211621, 12.271108, 16.962955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.414946, 13.143336, 17.157127>,  <12.812406, 12.513229, 17.228352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.414946, 13.143336, 17.157127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131409, 12.861299, 17.149279>,  <11.961287, 12.692076, 17.144569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131409, 12.861299, 17.149279>,  <12.414946, 13.143336, 17.157127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.131409, 12.861299, 17.149279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639847, 0.631042, 0.438613,
		-0.296882, 0.323463, -0.898462,
		-0.708843, -0.705094, -0.019622,
		11.918756, 12.649771, 17.143393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.712715, 13.473562, 16.954309>,  <12.414946, 13.143336, 17.157127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.712715, 13.473562, 16.954309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.622496, 13.114510, 17.105774>,  <11.568364, 12.899077, 17.196653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.622496, 13.114510, 17.105774>,  <11.712715, 13.473562, 16.954309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.622496, 13.114510, 17.105774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845120, 0.373635, 0.382322,
		-0.484665, -0.233781, -0.842879,
		-0.225549, -0.897632, 0.378661,
		11.554831, 12.845220, 17.219372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.996091, 13.452518, 16.979664>,  <11.712715, 13.473562, 16.954309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.996091, 13.452518, 16.979664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073938, 13.145847, 17.224396>,  <11.120646, 12.961845, 17.371235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073938, 13.145847, 17.224396>,  <10.996091, 13.452518, 16.979664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073938, 13.145847, 17.224396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804266, 0.232336, 0.546969,
		-0.561498, -0.598522, -0.571395,
		0.194617, -0.766676, 0.611827,
		11.132323, 12.915845, 17.407944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.435916, 13.071812, 16.941929>,  <10.996091, 13.452518, 16.979664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.435916, 13.071812, 16.941929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614554, 13.004901, 17.293512>,  <10.721738, 12.964754, 17.504463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.614554, 13.004901, 17.293512>,  <10.435916, 13.071812, 16.941929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.614554, 13.004901, 17.293512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861080, 0.186545, 0.473014,
		-0.243090, -0.968101, -0.060729,
		0.446597, -0.167277, 0.878960,
		10.748533, 12.954718, 17.557199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.942853, 12.782433, 17.315636>,  <10.435916, 13.071812, 16.941929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.942853, 12.782433, 17.315636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.210875, 12.891820, 17.591677>,  <10.371688, 12.957453, 17.757301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.210875, 12.891820, 17.591677>,  <9.942853, 12.782433, 17.315636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.210875, 12.891820, 17.591677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740166, 0.175492, 0.649120,
		0.056405, -0.945737, 0.320000,
		0.670055, 0.273467, 0.690103,
		10.411891, 12.973861, 17.798708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.737315, 12.579415, 18.015900>,  <9.942853, 12.782433, 17.315636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.737315, 12.579415, 18.015900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029320, 12.838014, 18.104559>,  <10.204522, 12.993173, 18.157755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.029320, 12.838014, 18.104559>,  <9.737315, 12.579415, 18.015900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.029320, 12.838014, 18.104559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560303, 0.380428, 0.735755,
		0.391343, -0.661297, 0.639951,
		0.730008, 0.646499, 0.221650,
		10.248323, 13.031962, 18.171053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.794145, 12.484458, 18.753736>,  <9.737315, 12.579415, 18.015900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.794145, 12.484458, 18.753736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946031, 12.835718, 18.637344>,  <10.037162, 13.046474, 18.567509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.946031, 12.835718, 18.637344>,  <9.794145, 12.484458, 18.753736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.946031, 12.835718, 18.637344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376879, 0.434093, 0.818245,
		0.844854, -0.201036, 0.495788,
		0.379715, 0.878150, -0.290980,
		10.059945, 13.099163, 18.550051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.114010, 12.672969, 19.298916>,  <9.794145, 12.484458, 18.753736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.114010, 12.672969, 19.298916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.065661, 13.024184, 19.113686>,  <10.036653, 13.234914, 19.002548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.065661, 13.024184, 19.113686>,  <10.114010, 12.672969, 19.298916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.065661, 13.024184, 19.113686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201630, 0.435053, 0.877539,
		0.971975, 0.199439, 0.124454,
		-0.120871, 0.878039, -0.463074,
		10.029400, 13.287596, 18.974764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.591766, 13.225593, 19.638983>,  <10.114010, 12.672969, 19.298916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.591766, 13.225593, 19.638983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291828, 13.411360, 19.450495>,  <10.111865, 13.522820, 19.337402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.291828, 13.411360, 19.450495>,  <10.591766, 13.225593, 19.638983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.291828, 13.411360, 19.450495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271919, 0.432967, 0.859418,
		0.603151, 0.772565, -0.198375,
		-0.749846, 0.464417, -0.471219,
		10.066875, 13.550685, 19.309130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.616899, 13.981689, 19.890076>,  <10.591766, 13.225593, 19.638983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.616899, 13.981689, 19.890076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258865, 13.845572, 19.774822>,  <10.044044, 13.763901, 19.705669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.258865, 13.845572, 19.774822>,  <10.616899, 13.981689, 19.890076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.258865, 13.845572, 19.774822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423374, 0.445827, 0.788665,
		-0.139920, 0.827911, -0.543125,
		-0.895085, -0.340295, -0.288136,
		9.990340, 13.743483, 19.688381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.256463, 14.301254, 20.347906>,  <10.616899, 13.981689, 19.890076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.256463, 14.301254, 20.347906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975822, 14.059661, 20.196665>,  <9.807438, 13.914705, 20.105921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975822, 14.059661, 20.196665>,  <10.256463, 14.301254, 20.347906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975822, 14.059661, 20.196665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621868, 0.259923, 0.738729,
		-0.347902, 0.753422, -0.557960,
		-0.701601, -0.603983, -0.378101,
		9.765342, 13.878466, 20.083235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.660032, 14.650669, 20.296133>,  <10.256463, 14.301254, 20.347906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.660032, 14.650669, 20.296133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507771, 14.281549, 20.319931>,  <9.416413, 14.060076, 20.334209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507771, 14.281549, 20.319931>,  <9.660032, 14.650669, 20.296133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.507771, 14.281549, 20.319931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702449, 0.330401, 0.630397,
		-0.601388, 0.198173, -0.773990,
		-0.380655, -0.922801, 0.059493,
		9.393574, 14.004708, 20.337778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.041834, 14.846463, 20.496477>,  <9.660032, 14.650669, 20.296133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.041834, 14.846463, 20.496477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046470, 14.448101, 20.532343>,  <9.049252, 14.209084, 20.553862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.046470, 14.448101, 20.532343>,  <9.041834, 14.846463, 20.496477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.046470, 14.448101, 20.532343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698197, 0.056133, 0.713701,
		-0.715811, -0.070875, -0.694688,
		0.011589, -0.995905, 0.089665,
		9.049947, 14.149330, 20.559242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.399864, 14.781003, 20.340044>,  <9.041834, 14.846463, 20.496477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.399864, 14.781003, 20.340044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.564329, 14.490696, 20.560663>,  <8.663008, 14.316511, 20.693035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.564329, 14.490696, 20.560663>,  <8.399864, 14.781003, 20.340044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.564329, 14.490696, 20.560663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531484, 0.300706, 0.791896,
		-0.740588, -0.618737, -0.262096,
		0.411161, -0.725769, 0.551548,
		8.687677, 14.272965, 20.726128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.868815, 14.435695, 20.633734>,  <8.399864, 14.781003, 20.340044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.868815, 14.435695, 20.633734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176193, 14.340072, 20.871168>,  <8.360620, 14.282698, 21.013628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.176193, 14.340072, 20.871168>,  <7.868815, 14.435695, 20.633734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.176193, 14.340072, 20.871168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578706, 0.136288, 0.804068,
		-0.273117, -0.961393, -0.033614,
		0.768444, -0.239057, 0.593587,
		8.406727, 14.268354, 21.049244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.500120, 14.096610, 21.225195>,  <7.868815, 14.435695, 20.633734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.500120, 14.096610, 21.225195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878033, 14.146476, 21.346420>,  <8.104780, 14.176395, 21.419155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.878033, 14.146476, 21.346420>,  <7.500120, 14.096610, 21.225195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.878033, 14.146476, 21.346420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316506, 0.107472, 0.942483,
		0.084914, -0.986362, 0.140992,
		0.944782, 0.124655, 0.303064,
		8.161467, 14.183875, 21.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.629430, 13.610728, 21.712166>,  <7.500120, 14.096610, 21.225195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.629430, 13.610728, 21.712166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.872711, 13.922694, 21.771255>,  <8.018680, 14.109874, 21.806709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.872711, 13.922694, 21.771255>,  <7.629430, 13.610728, 21.712166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.872711, 13.922694, 21.771255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385849, 0.127843, 0.913661,
		0.693693, -0.612689, 0.378684,
		0.608202, 0.779916, 0.147722,
		8.055172, 14.156669, 21.815573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.894454, 13.433900, 22.301474>,  <7.629430, 13.610728, 21.712166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.894454, 13.433900, 22.301474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.953440, 13.828855, 22.278416>,  <7.988831, 14.065827, 22.264582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.953440, 13.828855, 22.278416>,  <7.894454, 13.433900, 22.301474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.953440, 13.828855, 22.278416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293012, 0.099278, 0.950941,
		0.944668, -0.123339, 0.303956,
		0.147464, 0.987386, -0.057645,
		7.997679, 14.125071, 22.261122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.422462, 13.478730, 22.787508>,  <7.894454, 13.433900, 22.301474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.422462, 13.478730, 22.787508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.244740, 13.831513, 22.724590>,  <8.138106, 14.043183, 22.686840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.244740, 13.831513, 22.724590>,  <8.422462, 13.478730, 22.787508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.244740, 13.831513, 22.724590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008959, 0.179939, 0.983637,
		0.895830, 0.435627, -0.087850,
		-0.444307, 0.881958, -0.157292,
		8.111447, 14.096101, 22.677402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.767722, 13.881460, 23.354614>,  <8.422462, 13.478730, 22.787508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.767722, 13.881460, 23.354614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.430274, 14.063195, 23.240152>,  <8.227805, 14.172236, 23.171474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.430274, 14.063195, 23.240152>,  <8.767722, 13.881460, 23.354614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.430274, 14.063195, 23.240152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251788, 0.135968, 0.958184,
		0.474246, 0.880392, -0.000309,
		-0.843619, 0.454337, -0.286154,
		8.177188, 14.199496, 23.154306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.700686, 14.631515, 23.654873>,  <8.767722, 13.881460, 23.354614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.700686, 14.631515, 23.654873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.332864, 14.502441, 23.565170>,  <8.112170, 14.424997, 23.511349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.332864, 14.502441, 23.565170>,  <8.700686, 14.631515, 23.654873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.332864, 14.502441, 23.565170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354385, 0.434415, 0.828067,
		-0.169782, 0.840928, -0.513823,
		-0.919557, -0.322682, -0.224256,
		8.056996, 14.405637, 23.497894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.366426, 15.191246, 23.708071>,  <8.700686, 14.631515, 23.654873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.366426, 15.191246, 23.708071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106068, 14.891043, 23.753801>,  <7.949852, 14.710921, 23.781240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.106068, 14.891043, 23.753801>,  <8.366426, 15.191246, 23.708071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106068, 14.891043, 23.753801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350107, 0.430380, 0.831985,
		-0.673615, 0.501510, -0.542891,
		-0.650898, -0.750507, 0.114328,
		7.910799, 14.665891, 23.788099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.895523, 15.557174, 24.134449>,  <8.366426, 15.191246, 23.708071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.895523, 15.557174, 24.134449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.757306, 15.181820, 24.132113>,  <7.674376, 14.956608, 24.130711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.757306, 15.181820, 24.132113>,  <7.895523, 15.557174, 24.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.757306, 15.181820, 24.132113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457570, 0.163051, 0.874096,
		-0.819287, 0.304708, -0.485718,
		-0.345541, -0.938386, -0.005840,
		7.653644, 14.900304, 24.130362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.230742, 15.531175, 24.150471>,  <7.895523, 15.557174, 24.134449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.230742, 15.531175, 24.150471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.357921, 15.190932, 24.317984>,  <7.434228, 14.986787, 24.418491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.357921, 15.190932, 24.317984>,  <7.230742, 15.531175, 24.150471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.357921, 15.190932, 24.317984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535861, 0.203166, 0.819498,
		-0.782152, -0.484966, -0.391211,
		0.317948, -0.850606, 0.418781,
		7.453305, 14.935750, 24.443619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.587224, 15.208695, 24.359371>,  <7.230742, 15.531175, 24.150471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.587224, 15.208695, 24.359371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.877936, 15.017507, 24.556686>,  <7.052362, 14.902793, 24.675076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.877936, 15.017507, 24.556686>,  <6.587224, 15.208695, 24.359371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.877936, 15.017507, 24.556686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544324, 0.037238, 0.838048,
		-0.418934, -0.877585, -0.233108,
		0.726778, -0.477973, 0.493290,
		7.095969, 14.874115, 24.704674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.246467, 14.840945, 24.802839>,  <6.587224, 15.208695, 24.359371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.246467, 14.840945, 24.802839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.604928, 14.793412, 24.973854>,  <6.820005, 14.764893, 25.076462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.604928, 14.793412, 24.973854>,  <6.246467, 14.840945, 24.802839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.604928, 14.793412, 24.973854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422666, 0.064825, 0.903964,
		-0.135136, -0.990796, 0.007867,
		0.896154, -0.118833, 0.427536,
		6.873774, 14.757762, 25.102116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.082672, 14.496434, 25.410166>,  <6.246467, 14.840945, 24.802839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.082672, 14.496434, 25.410166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446097, 14.651326, 25.472860>,  <6.664152, 14.744262, 25.510477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.446097, 14.651326, 25.472860>,  <6.082672, 14.496434, 25.410166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.446097, 14.651326, 25.472860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233522, 0.159682, 0.959150,
		0.346384, -0.908049, 0.235508,
		0.908562, 0.387231, 0.156738,
		6.718666, 14.767495, 25.519882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.491101, 14.018292, 25.936655>,  <6.082672, 14.496434, 25.410166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.491101, 14.018292, 25.936655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651996, 14.383815, 25.959150>,  <6.748533, 14.603128, 25.972647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.651996, 14.383815, 25.959150>,  <6.491101, 14.018292, 25.936655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.651996, 14.383815, 25.959150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079933, -0.026140, 0.996458,
		0.912039, -0.405308, 0.062529,
		0.402238, 0.913807, 0.056238,
		6.772667, 14.657957, 25.976021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.022182, 14.011106, 26.502932>,  <6.491101, 14.018292, 25.936655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.022182, 14.011106, 26.502932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.944077, 14.396680, 26.430592>,  <6.897214, 14.628024, 26.387188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.944077, 14.396680, 26.430592>,  <7.022182, 14.011106, 26.502932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.944077, 14.396680, 26.430592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151854, 0.211889, 0.965424,
		0.968924, 0.161048, -0.187751,
		-0.195262, 0.963933, -0.180848,
		6.885499, 14.685860, 26.376337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.597345, 14.348991, 26.894499>,  <7.022182, 14.011106, 26.502932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.597345, 14.348991, 26.894499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328871, 14.639967, 26.837448>,  <7.167787, 14.814552, 26.803217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328871, 14.639967, 26.837448>,  <7.597345, 14.348991, 26.894499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.328871, 14.639967, 26.837448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059772, 0.244885, 0.967708,
		0.738876, 0.640987, -0.207843,
		-0.671185, 0.727439, -0.142627,
		7.127516, 14.858199, 26.794661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.818738, 14.823863, 27.253166>,  <7.597345, 14.348991, 26.894499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.818738, 14.823863, 27.253166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.436457, 14.933377, 27.209949>,  <7.207088, 14.999086, 27.184019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.436457, 14.933377, 27.209949>,  <7.818738, 14.823863, 27.253166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.436457, 14.933377, 27.209949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002341, 0.359995, 0.932951,
		0.294325, 0.891877, -0.343408,
		-0.955703, 0.273787, -0.108043,
		7.149746, 15.015513, 27.177536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.741863, 15.490937, 27.608055>,  <7.818738, 14.823863, 27.253166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.741863, 15.490937, 27.608055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.399065, 15.285676, 27.589155>,  <7.193386, 15.162519, 27.577814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.399065, 15.285676, 27.589155>,  <7.741863, 15.490937, 27.608055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.399065, 15.285676, 27.589155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165729, 0.187631, 0.968157,
		-0.487947, 0.837537, -0.245843,
		-0.856996, -0.513153, -0.047251,
		7.141966, 15.131730, 27.574980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.151521, 15.932197, 27.991644>,  <7.741863, 15.490937, 27.608055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.151521, 15.932197, 27.991644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983432, 15.569490, 27.977835>,  <6.882578, 15.351867, 27.969549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.983432, 15.569490, 27.977835>,  <7.151521, 15.932197, 27.991644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.983432, 15.569490, 27.977835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136025, 0.025332, 0.990381,
		-0.897168, 0.420876, -0.133988,
		-0.420222, -0.906764, -0.034522,
		6.857365, 15.297462, 27.967478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.633593, 16.047335, 28.471010>,  <7.151521, 15.932197, 27.991644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.633593, 16.047335, 28.471010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675042, 15.651973, 28.426619>,  <6.699911, 15.414755, 28.399984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.675042, 15.651973, 28.426619>,  <6.633593, 16.047335, 28.471010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.675042, 15.651973, 28.426619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147871, -0.125649, 0.980993,
		-0.983563, -0.085241, -0.159177,
		0.103621, -0.988406, -0.110979,
		6.706128, 15.355451, 28.393324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.107063, 15.816965, 28.815451>,  <6.633593, 16.047335, 28.471010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.107063, 15.816965, 28.815451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.344193, 15.494895, 28.809130>,  <6.486472, 15.301653, 28.805338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.344193, 15.494895, 28.809130>,  <6.107063, 15.816965, 28.815451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.344193, 15.494895, 28.809130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021783, -0.035646, 0.999127,
		-0.805036, -0.591965, -0.038671,
		0.592826, -0.805175, -0.015801,
		6.522041, 15.253343, 28.804390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.170973, 15.234559, 28.194851>,  <6.107063, 15.816965, 28.815451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.170973, 15.234559, 28.194851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060423, 14.855585, 28.259331>,  <5.994093, 14.628201, 28.298019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.060423, 14.855585, 28.259331>,  <6.170973, 15.234559, 28.194851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.060423, 14.855585, 28.259331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364750, 0.258590, 0.894477,
		-0.889143, 0.188412, -0.417044,
		-0.276374, -0.947434, 0.161200,
		5.977511, 14.571355, 28.307692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.397383, 15.343183, 28.362158>,  <6.170973, 15.234559, 28.194851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.397383, 15.343183, 28.362158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.517025, 15.003817, 28.536848>,  <5.588809, 14.800197, 28.641663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.517025, 15.003817, 28.536848>,  <5.397383, 15.343183, 28.362158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.517025, 15.003817, 28.536848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075280, 0.435271, 0.897147,
		-0.951246, -0.301217, 0.066323,
		0.299104, -0.848414, 0.436726,
		5.606756, 14.749292, 28.667866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.003864, 15.201830, 28.999237>,  <5.397383, 15.343183, 28.362158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.003864, 15.201830, 28.999237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347506, 15.004727, 29.054562>,  <5.553690, 14.886465, 29.087755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.347506, 15.004727, 29.054562>,  <5.003864, 15.201830, 28.999237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.347506, 15.004727, 29.054562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049638, 0.349190, 0.935736,
		-0.509388, -0.797030, 0.324450,
		0.859104, -0.492757, 0.138310,
		5.605237, 14.856900, 29.096054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.186446, 14.683489, 29.553289>,  <5.003864, 15.201830, 28.999237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.186446, 14.683489, 29.553289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.516649, 14.903853, 29.504244>,  <5.714771, 15.036073, 29.474817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.516649, 14.903853, 29.504244>,  <5.186446, 14.683489, 29.553289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.516649, 14.903853, 29.504244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098439, 0.354460, 0.929875,
		0.555741, -0.755549, 0.346840,
		0.825507, 0.550912, -0.122612,
		5.764301, 15.069127, 29.467461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.696197, 14.401833, 29.899124>,  <5.186446, 14.683489, 29.553289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.696197, 14.401833, 29.899124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.734854, 14.798989, 29.871332>,  <5.758049, 15.037283, 29.854656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.734854, 14.798989, 29.871332>,  <5.696197, 14.401833, 29.899124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.734854, 14.798989, 29.871332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034673, 0.073124, 0.996720,
		0.994715, -0.093917, 0.041493,
		0.096643, 0.992891, -0.069481,
		5.763847, 15.096857, 29.850489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.042374, 14.662120, 30.538696>,  <5.696197, 14.401833, 29.899124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.042374, 14.662120, 30.538696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875739, 14.985189, 30.371786>,  <5.775758, 15.179031, 30.271641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.875739, 14.985189, 30.371786>,  <6.042374, 14.662120, 30.538696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.875739, 14.985189, 30.371786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369524, 0.268929, 0.889454,
		0.830607, 0.524727, 0.186423,
		-0.416586, 0.807675, -0.417274,
		5.750763, 15.227492, 30.246603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.240802, 15.287258, 30.915855>,  <6.042374, 14.662120, 30.538696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.240802, 15.287258, 30.915855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.888684, 15.352553, 30.737673>,  <5.677413, 15.391730, 30.630762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.888684, 15.352553, 30.737673>,  <6.240802, 15.287258, 30.915855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.888684, 15.352553, 30.737673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369342, 0.353521, 0.859424,
		0.297769, 0.921074, -0.250912,
		-0.880296, 0.163238, -0.445459,
		5.624595, 15.401525, 30.604034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.925137, 15.265899, 31.136545>,  <6.240802, 15.287258, 30.915855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.925137, 15.265899, 31.136545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.848969, 14.979210, 31.404888>,  <6.803267, 14.807197, 31.565893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.848969, 14.979210, 31.404888>,  <6.925137, 15.265899, 31.136545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.848969, 14.979210, 31.404888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969631, 0.030480, -0.242665,
		0.153476, -0.696692, -0.700761,
		-0.190421, -0.716723, 0.670857,
		6.791842, 14.764194, 31.606146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.497112, 15.060152, 30.686213>,  <6.925137, 15.265899, 31.136545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.497112, 15.060152, 30.686213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.446664, 14.663582, 30.699881>,  <7.416395, 14.425639, 30.708082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.446664, 14.663582, 30.699881>,  <7.497112, 15.060152, 30.686213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.446664, 14.663582, 30.699881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843434, -0.125300, -0.522416,
		0.522219, -0.037066, 0.852006,
		-0.126121, -0.991426, 0.034171,
		7.408828, 14.366154, 30.710133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.126072, 14.652411, 30.844437>,  <7.497112, 15.060152, 30.686213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.126072, 14.652411, 30.844437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868449, 14.444531, 30.619902>,  <7.713875, 14.319803, 30.485180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.868449, 14.444531, 30.619902>,  <8.126072, 14.652411, 30.844437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.868449, 14.444531, 30.619902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764891, -0.448499, -0.462374,
		-0.011464, -0.727159, 0.686374,
		-0.644057, -0.519701, -0.561339,
		7.675231, 14.288621, 30.451500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.154220, 13.834634, 30.836306>,  <8.126072, 14.652411, 30.844437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.154220, 13.834634, 30.836306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.012492, 13.975105, 30.489634>,  <7.927455, 14.059388, 30.281631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.012492, 13.975105, 30.489634>,  <8.154220, 13.834634, 30.836306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.012492, 13.975105, 30.489634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802676, -0.361276, -0.474543,
		-0.479759, -0.863802, -0.153875,
		-0.354320, 0.351178, -0.866678,
		7.906196, 14.080459, 30.229630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.517024, 13.524975, 30.353628>,  <8.154220, 13.834634, 30.836306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.517024, 13.524975, 30.353628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.316835, 13.745976, 30.087015>,  <8.196722, 13.878577, 29.927048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.316835, 13.745976, 30.087015>,  <8.517024, 13.524975, 30.353628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.316835, 13.745976, 30.087015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665325, -0.247171, -0.704449,
		-0.553959, -0.796019, -0.243893,
		-0.500472, 0.552504, -0.666534,
		8.166694, 13.911728, 29.887054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.488614, 13.150595, 29.794022>,  <8.517024, 13.524975, 30.353628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.488614, 13.150595, 29.794022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442332, 13.529940, 29.675888>,  <8.414563, 13.757546, 29.605007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.442332, 13.529940, 29.675888>,  <8.488614, 13.150595, 29.794022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.442332, 13.529940, 29.675888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684384, -0.139375, -0.715676,
		-0.719882, -0.284929, -0.632917,
		-0.115704, 0.948362, -0.295335,
		8.407621, 13.814448, 29.587288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209565, 13.157369, 29.202642>,  <8.488614, 13.150595, 29.794022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209565, 13.157369, 29.202642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.385159, 13.516640, 29.193104>,  <8.490516, 13.732203, 29.187382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.385159, 13.516640, 29.193104>,  <8.209565, 13.157369, 29.202642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.385159, 13.516640, 29.193104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499144, -0.265853, -0.824729,
		-0.747092, 0.350142, -0.565026,
		0.438986, 0.898177, -0.023846,
		8.516855, 13.786093, 29.185949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.343717, 13.181688, 28.509604>,  <8.209565, 13.157369, 29.202642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.343717, 13.181688, 28.509604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.550458, 13.480829, 28.676254>,  <8.674502, 13.660314, 28.776245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.550458, 13.480829, 28.676254>,  <8.343717, 13.181688, 28.509604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.550458, 13.480829, 28.676254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751518, -0.163298, -0.639182,
		-0.409979, 0.643467, -0.646426,
		0.516853, 0.747853, 0.416629,
		8.705514, 13.705185, 28.801243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.445362, 13.677305, 27.965971>,  <8.343717, 13.181688, 28.509604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.445362, 13.677305, 27.965971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720292, 13.758931, 28.244808>,  <8.885250, 13.807907, 28.412111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.720292, 13.758931, 28.244808>,  <8.445362, 13.677305, 27.965971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.720292, 13.758931, 28.244808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725432, -0.144613, -0.672931,
		-0.036513, 0.968217, -0.247432,
		0.687325, 0.204065, 0.697095,
		8.926490, 13.820150, 28.453938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.926224, 14.223399, 27.708794>,  <8.445362, 13.677305, 27.965971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.926224, 14.223399, 27.708794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.125795, 14.012667, 27.984045>,  <9.245539, 13.886228, 28.149195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.125795, 14.012667, 27.984045>,  <8.926224, 14.223399, 27.708794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.125795, 14.012667, 27.984045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708041, -0.210072, -0.674201,
		0.499747, 0.823601, 0.268207,
		0.498930, -0.526831, 0.688126,
		9.275475, 13.854617, 28.190483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.688726, 14.400651, 27.565523>,  <8.926224, 14.223399, 27.708794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.688726, 14.400651, 27.565523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.704995, 14.058312, 27.771774>,  <9.714756, 13.852909, 27.895525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.704995, 14.058312, 27.771774>,  <9.688726, 14.400651, 27.565523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.704995, 14.058312, 27.771774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757281, -0.310250, -0.574691,
		0.651821, 0.413848, 0.635499,
		0.040671, -0.855847, 0.515627,
		9.717196, 13.801558, 27.926462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.412232, 14.284804, 27.632700>,  <9.688726, 14.400651, 27.565523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.412232, 14.284804, 27.632700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.252204, 13.925192, 27.703901>,  <10.156187, 13.709424, 27.746622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.252204, 13.925192, 27.703901>,  <10.412232, 14.284804, 27.632700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.252204, 13.925192, 27.703901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672664, -0.419962, -0.609225,
		0.622468, -0.123997, 0.772761,
		-0.400072, -0.899031, 0.178005,
		10.132182, 13.655482, 27.757303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.919050, 13.740822, 27.945221>,  <10.412232, 14.284804, 27.632700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.919050, 13.740822, 27.945221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632771, 13.538827, 27.752237>,  <10.461004, 13.417630, 27.636448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.632771, 13.538827, 27.752237>,  <10.919050, 13.740822, 27.945221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.632771, 13.538827, 27.752237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694966, -0.446395, -0.563696,
		0.069293, -0.738727, 0.670433,
		-0.715696, -0.504988, -0.482458,
		10.418062, 13.387330, 27.607500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.262538, 13.185531, 27.808846>,  <10.919050, 13.740822, 27.945221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.262538, 13.185531, 27.808846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.955565, 13.184842, 27.552395>,  <10.771382, 13.184429, 27.398523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.955565, 13.184842, 27.552395>,  <11.262538, 13.185531, 27.808846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955565, 13.184842, 27.552395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596747, -0.367518, -0.713319,
		-0.234397, -0.930015, 0.283073,
		-0.767431, -0.001723, -0.641128,
		10.725336, 13.184325, 27.360056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.513201, 12.713245, 27.482206>,  <11.262538, 13.185531, 27.808846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.513201, 12.713245, 27.482206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227010, 12.856975, 27.242546>,  <11.055295, 12.943212, 27.098751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.227010, 12.856975, 27.242546>,  <11.513201, 12.713245, 27.482206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.227010, 12.856975, 27.242546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472311, -0.383155, -0.793798,
		-0.514796, -0.850929, 0.104427,
		-0.715477, 0.359322, -0.599150,
		11.012366, 12.964771, 27.062801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.217669, 12.118741, 27.108641>,  <11.513201, 12.713245, 27.482206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.217669, 12.118741, 27.108641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133703, 12.453328, 26.906153>,  <11.083323, 12.654080, 26.784660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.133703, 12.453328, 26.906153>,  <11.217669, 12.118741, 27.108641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.133703, 12.453328, 26.906153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320107, -0.430420, -0.843961,
		-0.923832, -0.339206, -0.177407,
		-0.209917, 0.836467, -0.506218,
		11.070728, 12.704268, 26.754288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.325552, 11.808194, 26.513065>,  <11.217669, 12.118741, 27.108641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.325552, 11.808194, 26.513065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294434, 12.200237, 26.440029>,  <11.275763, 12.435463, 26.396208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.294434, 12.200237, 26.440029>,  <11.325552, 11.808194, 26.513065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.294434, 12.200237, 26.440029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460214, -0.127159, -0.878654,
		-0.884393, -0.152385, -0.441167,
		-0.077796, 0.980107, -0.182588,
		11.271095, 12.494269, 26.385252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028538, 11.925396, 25.850742>,  <11.325552, 11.808194, 26.513065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028538, 11.925396, 25.850742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239693, 12.258375, 25.918112>,  <11.366385, 12.458162, 25.958532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.239693, 12.258375, 25.918112>,  <11.028538, 11.925396, 25.850742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.239693, 12.258375, 25.918112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438936, -0.097634, -0.893198,
		-0.727096, 0.545435, -0.416931,
		0.527888, 0.832447, 0.168422,
		11.398059, 12.508109, 25.968637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.890588, 12.381907, 25.349997>,  <11.028538, 11.925396, 25.850742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.890588, 12.381907, 25.349997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251183, 12.450359, 25.509010>,  <11.467540, 12.491430, 25.604420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251183, 12.450359, 25.509010>,  <10.890588, 12.381907, 25.349997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251183, 12.450359, 25.509010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427871, -0.214073, -0.878122,
		-0.065172, 0.961711, -0.266206,
		0.901487, 0.171131, 0.397537,
		11.521628, 12.501698, 25.628271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255590, 12.893477, 24.854317>,  <10.890588, 12.381907, 25.349997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255590, 12.893477, 24.854317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.522199, 12.688252, 25.070656>,  <11.682164, 12.565118, 25.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.522199, 12.688252, 25.070656>,  <11.255590, 12.893477, 24.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.522199, 12.688252, 25.070656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512181, -0.212000, -0.832302,
		0.541683, 0.831759, 0.121478,
		0.666521, -0.513063, 0.540847,
		11.722156, 12.534333, 25.232910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.838767, 13.115179, 24.468981>,  <11.255590, 12.893477, 24.854317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.838767, 13.115179, 24.468981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.969345, 12.803661, 24.683239>,  <12.047691, 12.616751, 24.811794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.969345, 12.803661, 24.683239>,  <11.838767, 13.115179, 24.468981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.969345, 12.803661, 24.683239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578991, -0.283173, -0.764580,
		0.747130, 0.559725, 0.358475,
		0.326444, -0.778794, 0.535643,
		12.067278, 12.570023, 24.843931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.490117, 13.093724, 24.322487>,  <11.838767, 13.115179, 24.468981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.490117, 13.093724, 24.322487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419441, 12.732639, 24.479403>,  <12.377035, 12.515988, 24.573551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.419441, 12.732639, 24.479403>,  <12.490117, 13.093724, 24.322487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419441, 12.732639, 24.479403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531385, -0.422972, -0.733979,
		0.828499, 0.078769, 0.554423,
		-0.176691, -0.902713, 0.392288,
		12.366434, 12.461825, 24.597090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.157419, 12.714123, 24.282751>,  <12.490117, 13.093724, 24.322487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.157419, 12.714123, 24.282751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883626, 12.424320, 24.315184>,  <12.719350, 12.250439, 24.334642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.883626, 12.424320, 24.315184>,  <13.157419, 12.714123, 24.282751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.883626, 12.424320, 24.315184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506118, -0.552292, -0.662434,
		0.524718, -0.412388, 0.744720,
		-0.684482, -0.724507, 0.081081,
		12.678281, 12.206968, 24.339508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.450416, 11.968128, 24.411573>,  <13.157419, 12.714123, 24.282751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.450416, 11.968128, 24.411573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093422, 11.936430, 24.233948>,  <12.879226, 11.917411, 24.127373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.093422, 11.936430, 24.233948>,  <13.450416, 11.968128, 24.411573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.093422, 11.936430, 24.233948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382065, -0.656126, -0.650788,
		-0.239790, -0.750479, 0.615858,
		-0.892484, -0.079245, -0.444064,
		12.825677, 11.912657, 24.100729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.525376, 11.251490, 24.086306>,  <13.450416, 11.968128, 24.411573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.525376, 11.251490, 24.086306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196372, 11.393522, 23.908590>,  <12.998969, 11.478742, 23.801962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.196372, 11.393522, 23.908590>,  <13.525376, 11.251490, 24.086306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.196372, 11.393522, 23.908590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203217, -0.546121, -0.812684,
		-0.531193, -0.758733, 0.377039,
		-0.822519, 0.355071, -0.444283,
		12.949618, 11.500047, 23.775303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292178, 10.691143, 23.805819>,  <13.525376, 11.251490, 24.086306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292178, 10.691143, 23.805819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114377, 10.986642, 23.603168>,  <13.007696, 11.163941, 23.481579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.114377, 10.986642, 23.603168>,  <13.292178, 10.691143, 23.805819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114377, 10.986642, 23.603168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099023, -0.521582, -0.847435,
		-0.890288, -0.426855, 0.158691,
		-0.444503, 0.738747, -0.506627,
		12.981027, 11.208266, 23.451181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733155, 10.432837, 23.320696>,  <13.292178, 10.691143, 23.805819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733155, 10.432837, 23.320696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894279, 10.758698, 23.153801>,  <12.990952, 10.954215, 23.053663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.894279, 10.758698, 23.153801>,  <12.733155, 10.432837, 23.320696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.894279, 10.758698, 23.153801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171214, -0.514875, -0.839994,
		-0.899128, 0.266920, -0.346875,
		0.402808, 0.814652, -0.417238,
		13.015121, 11.003094, 23.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.497471, 10.396504, 22.576220>,  <12.733155, 10.432837, 23.320696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.497471, 10.396504, 22.576220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788897, 10.669181, 22.549416>,  <12.963752, 10.832787, 22.533333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.788897, 10.669181, 22.549416>,  <12.497471, 10.396504, 22.576220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.788897, 10.669181, 22.549416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241268, -0.346946, -0.906321,
		-0.641080, 0.644147, -0.417243,
		0.728565, 0.681691, -0.067008,
		13.007466, 10.873689, 22.529314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.384358, 10.766614, 21.951473>,  <12.497471, 10.396504, 22.576220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.384358, 10.766614, 21.951473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771471, 10.841169, 22.019190>,  <13.003738, 10.885902, 22.059820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.771471, 10.841169, 22.019190>,  <12.384358, 10.766614, 21.951473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.771471, 10.841169, 22.019190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201307, -0.168882, -0.964860,
		-0.151248, 0.967853, -0.200962,
		0.967781, 0.186388, 0.169292,
		13.061806, 10.897085, 22.069977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667005, 11.115768, 21.307100>,  <12.384358, 10.766614, 21.951473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667005, 11.115768, 21.307100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002321, 10.978155, 21.476290>,  <13.203511, 10.895587, 21.577803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.002321, 10.978155, 21.476290>,  <12.667005, 11.115768, 21.307100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.002321, 10.978155, 21.476290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397541, -0.145234, -0.906018,
		0.373131, 0.927657, 0.015019,
		0.838293, -0.344034, 0.422973,
		13.253809, 10.874945, 21.603182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.193760, 11.476245, 20.955046>,  <12.667005, 11.115768, 21.307100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.193760, 11.476245, 20.955046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363169, 11.151493, 21.115784>,  <13.464814, 10.956642, 21.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.363169, 11.151493, 21.115784>,  <13.193760, 11.476245, 20.955046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.363169, 11.151493, 21.115784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497145, -0.162520, -0.852311,
		0.757281, 0.560750, 0.334790,
		0.423523, -0.811879, 0.401847,
		13.490226, 10.907929, 21.236338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.805119, 11.529447, 20.721182>,  <13.193760, 11.476245, 20.955046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.805119, 11.529447, 20.721182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.787168, 11.154440, 20.859194>,  <13.776397, 10.929436, 20.942001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.787168, 11.154440, 20.859194>,  <13.805119, 11.529447, 20.721182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.787168, 11.154440, 20.859194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609085, -0.299438, -0.734406,
		0.791834, 0.177195, 0.584466,
		-0.044878, -0.937517, 0.345032,
		13.773704, 10.873184, 20.962704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.454659, 11.246920, 20.595106>,  <13.805119, 11.529447, 20.721182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.454659, 11.246920, 20.595106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215275, 10.930582, 20.646351>,  <14.071645, 10.740780, 20.677097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.215275, 10.930582, 20.646351>,  <14.454659, 11.246920, 20.595106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.215275, 10.930582, 20.646351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510704, -0.499794, -0.699562,
		0.617275, -0.353231, 0.702993,
		-0.598459, -0.790844, 0.128114,
		14.035737, 10.693329, 20.684786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889228, 10.697453, 20.399654>,  <14.454659, 11.246920, 20.595106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889228, 10.697453, 20.399654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526017, 10.536503, 20.353037>,  <14.308091, 10.439933, 20.325068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.526017, 10.536503, 20.353037>,  <14.889228, 10.697453, 20.399654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.526017, 10.536503, 20.353037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259321, -0.321420, -0.910737,
		0.328999, -0.857195, 0.396202,
		-0.908027, -0.402375, -0.116542,
		14.253609, 10.415791, 20.318075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.995885, 10.078440, 20.360806>,  <14.889228, 10.697453, 20.399654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.995885, 10.078440, 20.360806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667675, 10.197655, 20.165701>,  <14.470749, 10.269184, 20.048637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.667675, 10.197655, 20.165701>,  <14.995885, 10.078440, 20.360806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.667675, 10.197655, 20.165701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397560, -0.315565, -0.861606,
		-0.410712, -0.900884, 0.140441,
		-0.820525, 0.298039, -0.487762,
		14.421517, 10.287066, 20.019373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.910510, 9.602455, 19.874235>,  <14.995885, 10.078440, 20.360806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.910510, 9.602455, 19.874235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672915, 9.889699, 19.729183>,  <14.530359, 10.062045, 19.642153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672915, 9.889699, 19.729183>,  <14.910510, 9.602455, 19.874235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672915, 9.889699, 19.729183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185571, -0.316302, -0.930331,
		-0.782780, -0.619897, 0.054618,
		-0.593985, 0.718109, -0.362630,
		14.494720, 10.105132, 19.620394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.582368, 9.304947, 19.221821>,  <14.910510, 9.602455, 19.874235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.582368, 9.304947, 19.221821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543397, 9.700529, 19.177145>,  <14.520014, 9.937879, 19.150339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.543397, 9.700529, 19.177145>,  <14.582368, 9.304947, 19.221821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.543397, 9.700529, 19.177145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031114, -0.109141, -0.993539,
		-0.994756, -0.100274, -0.020137,
		-0.097428, 0.988956, -0.111688,
		14.514169, 9.997216, 19.143639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.216866, 9.371704, 18.757460>,  <14.582368, 9.304947, 19.221821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.216866, 9.371704, 18.757460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315214, 9.758799, 18.735428>,  <14.374223, 9.991055, 18.722208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.315214, 9.758799, 18.735428>,  <14.216866, 9.371704, 18.757460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.315214, 9.758799, 18.735428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185389, -0.008825, -0.982626,
		-0.951409, 0.251808, 0.177238,
		0.245869, 0.967737, -0.055079,
		14.388975, 10.049120, 18.718904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.593266, 9.817264, 18.382860>,  <14.216866, 9.371704, 18.757460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.593266, 9.817264, 18.382860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950881, 9.995683, 18.366175>,  <14.165450, 10.102735, 18.356163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.950881, 9.995683, 18.366175>,  <13.593266, 9.817264, 18.382860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.950881, 9.995683, 18.366175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093648, 0.095021, -0.991060,
		-0.438097, 0.889950, 0.126724,
		0.894036, 0.446048, -0.041713,
		14.219092, 10.129498, 18.353661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512784, 10.237816, 17.857777>,  <13.593266, 9.817264, 18.382860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512784, 10.237816, 17.857777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906942, 10.284036, 17.907806>,  <14.143437, 10.311768, 17.937824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.906942, 10.284036, 17.907806>,  <13.512784, 10.237816, 17.857777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.906942, 10.284036, 17.907806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101409, 0.191834, -0.976174,
		-0.136789, 0.974602, 0.177315,
		0.985396, 0.115549, 0.125075,
		14.202561, 10.318700, 17.945330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.708076, 10.988622, 17.670101>,  <13.512784, 10.237816, 17.857777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.708076, 10.988622, 17.670101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997501, 10.723111, 17.594358>,  <14.171157, 10.563805, 17.548912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.997501, 10.723111, 17.594358>,  <13.708076, 10.988622, 17.670101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.997501, 10.723111, 17.594358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052334, 0.220784, -0.973918,
		0.688271, 0.714601, 0.125013,
		0.723564, -0.663777, -0.189357,
		14.214570, 10.523978, 17.537552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155890, 11.291200, 17.394630>,  <13.708076, 10.988622, 17.670101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155890, 11.291200, 17.394630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240198, 10.915833, 17.285120>,  <14.290784, 10.690614, 17.219414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.240198, 10.915833, 17.285120>,  <14.155890, 11.291200, 17.394630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.240198, 10.915833, 17.285120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047685, 0.289603, -0.955958,
		0.976371, 0.188435, 0.105789,
		0.210773, -0.938415, -0.273774,
		14.303430, 10.634309, 17.202988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561161, 11.430576, 16.863054>,  <14.155890, 11.291200, 17.394630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561161, 11.430576, 16.863054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459296, 11.046701, 16.815474>,  <14.398177, 10.816377, 16.786926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.459296, 11.046701, 16.815474>,  <14.561161, 11.430576, 16.863054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459296, 11.046701, 16.815474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082927, 0.100880, -0.991436,
		0.963468, -0.262346, 0.053894,
		-0.254663, -0.959686, -0.118950,
		14.382897, 10.758796, 16.779789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.222794, 11.784357, 16.975897>,  <14.561161, 11.430576, 16.863054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.222794, 11.784357, 16.975897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574375, 11.973293, 17.002232>,  <15.785324, 12.086656, 17.018032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.574375, 11.973293, 17.002232>,  <15.222794, 11.784357, 16.975897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574375, 11.973293, 17.002232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117739, 0.081147, 0.989724,
		0.462146, -0.877672, 0.126938,
		0.878953, 0.472343, 0.065835,
		15.838061, 12.114996, 17.021982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726144, 11.334764, 17.496473>,  <15.222794, 11.784357, 16.975897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726144, 11.334764, 17.496473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833170, 11.719267, 17.469961>,  <15.897386, 11.949968, 17.454054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833170, 11.719267, 17.469961>,  <15.726144, 11.334764, 17.496473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833170, 11.719267, 17.469961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215929, 0.126858, 0.968133,
		0.939033, -0.244728, 0.241506,
		0.267566, 0.961257, -0.066280,
		15.913440, 12.007644, 17.450077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217115, 11.486095, 17.997759>,  <15.726144, 11.334764, 17.496473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217115, 11.486095, 17.997759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055147, 11.843207, 17.918783>,  <15.957966, 12.057474, 17.871397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.055147, 11.843207, 17.918783>,  <16.217115, 11.486095, 17.997759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.055147, 11.843207, 17.918783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094955, 0.173706, 0.980209,
		0.909407, 0.415656, 0.014437,
		-0.404922, 0.892780, -0.197439,
		15.933671, 12.111041, 17.859552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.518940, 11.913738, 18.451429>,  <16.217115, 11.486095, 17.997759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.518940, 11.913738, 18.451429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179310, 12.097064, 18.346346>,  <15.975532, 12.207059, 18.283297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.179310, 12.097064, 18.346346>,  <16.518940, 11.913738, 18.451429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.179310, 12.097064, 18.346346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226976, 0.132553, 0.964838,
		0.477021, 0.878850, -0.008522,
		-0.849078, 0.458314, -0.262708,
		15.924586, 12.234558, 18.267534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575264, 12.428090, 18.854107>,  <16.518940, 11.913738, 18.451429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.575264, 12.428090, 18.854107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188232, 12.412059, 18.754356>,  <15.956014, 12.402440, 18.694506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.188232, 12.412059, 18.754356>,  <16.575264, 12.428090, 18.854107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.188232, 12.412059, 18.754356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247719, 0.343277, 0.905978,
		0.049295, 0.938379, -0.342075,
		-0.967577, -0.040078, -0.249376,
		15.897960, 12.400036, 18.679544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.276728, 13.092982, 19.093987>,  <16.575264, 12.428090, 18.854107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.276728, 13.092982, 19.093987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975708, 12.831898, 19.059032>,  <15.795095, 12.675247, 19.038061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.975708, 12.831898, 19.059032>,  <16.276728, 13.092982, 19.093987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.975708, 12.831898, 19.059032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500514, 0.480679, 0.720023,
		-0.427963, 0.585591, -0.688426,
		-0.752551, -0.652711, -0.087384,
		15.749943, 12.636085, 19.032818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701275, 13.405374, 19.283226>,  <16.276728, 13.092982, 19.093987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701275, 13.405374, 19.283226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538815, 13.043231, 19.332815>,  <15.441339, 12.825945, 19.362570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538815, 13.043231, 19.332815>,  <15.701275, 13.405374, 19.283226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538815, 13.043231, 19.332815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573102, 0.358037, 0.737133,
		-0.711756, 0.228337, -0.664279,
		-0.406151, -0.905357, 0.123974,
		15.416969, 12.771624, 19.370007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.023842, 13.553873, 19.438431>,  <15.701275, 13.405374, 19.283226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.023842, 13.553873, 19.438431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030413, 13.165795, 19.535137>,  <15.034355, 12.932948, 19.593161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.030413, 13.165795, 19.535137>,  <15.023842, 13.553873, 19.438431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.030413, 13.165795, 19.535137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678737, 0.166731, 0.715204,
		-0.734198, -0.175845, -0.655768,
		0.016428, -0.970195, 0.241766,
		15.035341, 12.874737, 19.607668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.359725, 13.384001, 19.527317>,  <15.023842, 13.553873, 19.438431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.359725, 13.384001, 19.527317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595366, 13.144463, 19.744331>,  <14.736750, 13.000740, 19.874540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.595366, 13.144463, 19.744331>,  <14.359725, 13.384001, 19.527317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595366, 13.144463, 19.744331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608005, 0.113749, 0.785743,
		-0.532251, -0.792746, -0.297091,
		0.589101, -0.598845, 0.542536,
		14.772096, 12.964809, 19.907093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950331, 12.887437, 19.811565>,  <14.359725, 13.384001, 19.527317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950331, 12.887437, 19.811565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273668, 12.876435, 20.046793>,  <14.467670, 12.869834, 20.187929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.273668, 12.876435, 20.046793>,  <13.950331, 12.887437, 19.811565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.273668, 12.876435, 20.046793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575409, 0.174230, 0.799092,
		-0.124437, -0.984321, 0.125011,
		0.808344, -0.027504, 0.588068,
		14.516171, 12.868184, 20.223213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.724029, 12.643053, 20.414476>,  <13.950331, 12.887437, 19.811565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.724029, 12.643053, 20.414476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065048, 12.792943, 20.560211>,  <14.269660, 12.882876, 20.647652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.065048, 12.792943, 20.560211>,  <13.724029, 12.643053, 20.414476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.065048, 12.792943, 20.560211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480203, 0.286439, 0.829071,
		0.206311, -0.881780, 0.424146,
		0.852550, 0.374723, 0.364338,
		14.320813, 12.905360, 20.669512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.819792, 12.402567, 21.172516>,  <13.724029, 12.643053, 20.414476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.819792, 12.402567, 21.172516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.058992, 12.722604, 21.153555>,  <14.202513, 12.914626, 21.142178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.058992, 12.722604, 21.153555>,  <13.819792, 12.402567, 21.172516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.058992, 12.722604, 21.153555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303251, 0.280609, 0.910658,
		0.741911, -0.530200, 0.410434,
		0.598002, 0.800091, -0.047403,
		14.238393, 12.962631, 21.139334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.181517, 12.429025, 21.740755>,  <13.819792, 12.402567, 21.172516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.181517, 12.429025, 21.740755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145654, 12.811444, 21.629089>,  <14.124136, 13.040896, 21.562090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.145654, 12.811444, 21.629089>,  <14.181517, 12.429025, 21.740755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145654, 12.811444, 21.629089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271960, 0.246140, 0.930297,
		0.958123, 0.159330, 0.237939,
		-0.089658, 0.956049, -0.279163,
		14.118756, 13.098259, 21.545340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.433807, 12.789292, 22.274055>,  <14.181517, 12.429025, 21.740755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.433807, 12.789292, 22.274055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241458, 13.077737, 22.074551>,  <14.126048, 13.250803, 21.954847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.241458, 13.077737, 22.074551>,  <14.433807, 12.789292, 22.274055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.241458, 13.077737, 22.074551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388338, 0.334844, 0.858530,
		0.786101, 0.606531, 0.119017,
		-0.480873, 0.721110, -0.498760,
		14.097197, 13.294070, 21.924923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744376, 13.375669, 22.633204>,  <14.433807, 12.789292, 22.274055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744376, 13.375669, 22.633204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411682, 13.516048, 22.461134>,  <14.212066, 13.600276, 22.357891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.411682, 13.516048, 22.461134>,  <14.744376, 13.375669, 22.633204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.411682, 13.516048, 22.461134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252018, 0.451740, 0.855814,
		0.494675, 0.820223, -0.287282,
		-0.831735, 0.350949, -0.430175,
		14.162162, 13.621333, 22.332081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657829, 14.053592, 22.851065>,  <14.744376, 13.375669, 22.633204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657829, 14.053592, 22.851065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285790, 13.948674, 22.748211>,  <14.062567, 13.885723, 22.686499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.285790, 13.948674, 22.748211>,  <14.657829, 14.053592, 22.851065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285790, 13.948674, 22.748211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353749, 0.451191, 0.819322,
		-0.098887, 0.853011, -0.512438,
		-0.930098, -0.262295, -0.257135,
		14.006761, 13.869986, 22.671070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.211545, 14.654341, 22.867010>,  <14.657829, 14.053592, 22.851065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.211545, 14.654341, 22.867010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963120, 14.340844, 22.869282>,  <13.814066, 14.152746, 22.870646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.963120, 14.340844, 22.869282>,  <14.211545, 14.654341, 22.867010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.963120, 14.340844, 22.869282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588523, 0.471124, 0.657026,
		-0.517614, 0.404711, -0.753847,
		-0.621061, -0.783742, 0.005679,
		13.776802, 14.105721, 22.870985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.565826, 14.955008, 22.798155>,  <14.211545, 14.654341, 22.867010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.565826, 14.955008, 22.798155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528904, 14.595646, 22.969898>,  <13.506750, 14.380029, 23.072945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.528904, 14.595646, 22.969898>,  <13.565826, 14.955008, 22.798155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.528904, 14.595646, 22.969898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643445, 0.382895, 0.662850,
		-0.759907, -0.215083, -0.613418,
		-0.092307, -0.898405, 0.429358,
		13.501212, 14.326124, 23.098705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.847235, 14.814563, 22.853132>,  <13.565826, 14.955008, 22.798155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.847235, 14.814563, 22.853132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004355, 14.555869, 23.114649>,  <13.098628, 14.400653, 23.271559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004355, 14.555869, 23.114649>,  <12.847235, 14.814563, 22.853132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004355, 14.555869, 23.114649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630798, 0.327841, 0.703288,
		-0.669179, -0.688663, -0.279182,
		0.392801, -0.646733, 0.653791,
		13.122196, 14.361849, 23.310787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.358544, 14.552242, 23.292379>,  <12.847235, 14.814563, 22.853132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.358544, 14.552242, 23.292379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668465, 14.449018, 23.523235>,  <12.854417, 14.387083, 23.661749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.668465, 14.449018, 23.523235>,  <12.358544, 14.552242, 23.292379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.668465, 14.449018, 23.523235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522995, 0.251254, 0.814461,
		-0.355190, -0.932886, 0.059707,
		0.774801, -0.258061, 0.577137,
		12.900905, 14.371599, 23.696377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.100945, 14.115130, 23.825541>,  <12.358544, 14.552242, 23.292379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.100945, 14.115130, 23.825541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440572, 14.266007, 23.973494>,  <12.644347, 14.356534, 24.062265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.440572, 14.266007, 23.973494>,  <12.100945, 14.115130, 23.825541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.440572, 14.266007, 23.973494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504460, 0.370987, 0.779672,
		0.156866, -0.848584, 0.505271,
		0.849066, 0.377193, 0.369882,
		12.695292, 14.379166, 24.084457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.098993, 13.959788, 24.442600>,  <12.100945, 14.115130, 23.825541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.098993, 13.959788, 24.442600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.368703, 14.255131, 24.437141>,  <12.530529, 14.432336, 24.433867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.368703, 14.255131, 24.437141>,  <12.098993, 13.959788, 24.442600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.368703, 14.255131, 24.437141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367826, 0.351813, 0.860774,
		0.640359, -0.575377, 0.508804,
		0.674273, 0.738356, -0.013648,
		12.570985, 14.476638, 24.433046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.487715, 13.942903, 25.122667>,  <12.098993, 13.959788, 24.442600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.487715, 13.942903, 25.122667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541966, 14.308523, 24.969767>,  <12.574517, 14.527896, 24.878027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.541966, 14.308523, 24.969767>,  <12.487715, 13.942903, 25.122667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541966, 14.308523, 24.969767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208320, 0.403500, 0.890949,
		0.968611, -0.041208, 0.245141,
		0.135628, 0.914051, -0.382250,
		12.582655, 14.582739, 24.855091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.924146, 14.272679, 25.612022>,  <12.487715, 13.942903, 25.122667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.924146, 14.272679, 25.612022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748487, 14.567027, 25.405859>,  <12.643091, 14.743635, 25.282162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.748487, 14.567027, 25.405859>,  <12.924146, 14.272679, 25.612022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.748487, 14.567027, 25.405859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242251, 0.455449, 0.856668,
		0.865138, 0.501062, -0.021745,
		-0.439148, 0.735868, -0.515409,
		12.616742, 14.787787, 25.251236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.056167, 14.970276, 26.043169>,  <12.924146, 14.272679, 25.612022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.056167, 14.970276, 26.043169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739451, 15.021843, 25.804354>,  <12.549422, 15.052783, 25.661064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.739451, 15.021843, 25.804354>,  <13.056167, 14.970276, 26.043169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.739451, 15.021843, 25.804354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467824, 0.500447, 0.728487,
		0.392700, 0.856115, -0.335937,
		-0.791787, 0.128918, -0.597037,
		12.501915, 15.060518, 25.625242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.887467, 15.642406, 26.104071>,  <13.056167, 14.970276, 26.043169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.887467, 15.642406, 26.104071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542046, 15.493257, 25.968283>,  <12.334792, 15.403767, 25.886810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.542046, 15.493257, 25.968283>,  <12.887467, 15.642406, 26.104071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.542046, 15.493257, 25.968283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502662, 0.583051, 0.638265,
		-0.040067, 0.721814, -0.690926,
		-0.863554, -0.372875, -0.339468,
		12.282979, 15.381394, 25.866442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.423023, 16.130320, 25.756744>,  <12.887467, 15.642406, 26.104071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.423023, 16.130320, 25.756744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252228, 15.823387, 25.948112>,  <12.149751, 15.639228, 26.062933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.252228, 15.823387, 25.948112>,  <12.423023, 16.130320, 25.756744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.252228, 15.823387, 25.948112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559821, 0.639808, 0.526542,
		-0.710127, -0.043001, -0.702759,
		-0.426989, -0.767331, 0.478418,
		12.124131, 15.593188, 26.091639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.971037, 16.446501, 26.325094>,  <12.423023, 16.130320, 25.756744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.971037, 16.446501, 26.325094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903865, 16.054245, 26.365393>,  <11.863562, 15.818892, 26.389572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.903865, 16.054245, 26.365393>,  <11.971037, 16.446501, 26.325094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.903865, 16.054245, 26.365393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659631, 0.187728, 0.727767,
		-0.732589, 0.055757, -0.678384,
		-0.167929, -0.980638, 0.100748,
		11.853486, 15.760054, 26.395617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.184949, 16.388372, 26.362143>,  <11.971037, 16.446501, 26.325094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.184949, 16.388372, 26.362143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413870, 16.110847, 26.536999>,  <11.551223, 15.944332, 26.641912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.413870, 16.110847, 26.536999>,  <11.184949, 16.388372, 26.362143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.413870, 16.110847, 26.536999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425113, 0.204832, 0.881659,
		-0.701247, -0.690411, -0.177723,
		0.572303, -0.693813, 0.437141,
		11.585561, 15.902703, 26.668140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.652722, 16.004957, 26.848570>,  <11.184949, 16.388372, 26.362143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.652722, 16.004957, 26.848570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009538, 15.895776, 26.992661>,  <11.223627, 15.830267, 27.079115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.009538, 15.895776, 26.992661>,  <10.652722, 16.004957, 26.848570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.009538, 15.895776, 26.992661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322745, 0.173252, 0.930494,
		-0.316392, -0.946298, 0.066453,
		0.892038, -0.272953, 0.360228,
		11.277149, 15.813890, 27.100729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.522318, 15.519875, 27.461462>,  <10.652722, 16.004957, 26.848570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.522318, 15.519875, 27.461462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895080, 15.662436, 27.488386>,  <11.118736, 15.747972, 27.504541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.895080, 15.662436, 27.488386>,  <10.522318, 15.519875, 27.461462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.895080, 15.662436, 27.488386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098778, 0.070816, 0.992586,
		0.348995, -0.931644, 0.101199,
		0.931904, 0.356404, 0.067312,
		11.174651, 15.769357, 27.508579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683266, 15.343291, 28.123829>,  <10.522318, 15.519875, 27.461462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683266, 15.343291, 28.123829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.977956, 15.600931, 28.041492>,  <11.154770, 15.755515, 27.992090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.977956, 15.600931, 28.041492>,  <10.683266, 15.343291, 28.123829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.977956, 15.600931, 28.041492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060159, 0.365638, 0.928811,
		0.673511, -0.671895, 0.308124,
		0.736725, 0.644101, -0.205841,
		11.198974, 15.794161, 27.979740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.080935, 15.243420, 28.681959>,  <10.683266, 15.343291, 28.123829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.080935, 15.243420, 28.681959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209407, 15.598746, 28.550665>,  <11.286490, 15.811942, 28.471889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.209407, 15.598746, 28.550665>,  <11.080935, 15.243420, 28.681959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.209407, 15.598746, 28.550665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220800, 0.407288, 0.886208,
		0.920918, -0.212158, 0.326953,
		0.321180, 0.888316, -0.328234,
		11.305761, 15.865241, 28.452194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.555903, 15.653553, 29.012953>,  <11.080935, 15.243420, 28.681959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.555903, 15.653553, 29.012953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.306662, 15.900359, 28.820690>,  <11.157117, 16.048443, 28.705332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.306662, 15.900359, 28.820690>,  <11.555903, 15.653553, 29.012953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.306662, 15.900359, 28.820690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223203, 0.448710, 0.865355,
		0.749614, 0.646491, -0.141874,
		-0.623104, 0.617016, -0.480658,
		11.119730, 16.085464, 28.676493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.312870, 16.184385, 29.523029>,  <11.555903, 15.653553, 29.012953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.312870, 16.184385, 29.523029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067875, 16.254055, 29.214609>,  <10.920877, 16.295856, 29.029556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.067875, 16.254055, 29.214609>,  <11.312870, 16.184385, 29.523029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.067875, 16.254055, 29.214609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622117, 0.495563, 0.606125,
		0.487677, 0.850929, -0.195168,
		-0.612488, 0.174176, -0.771052,
		10.884129, 16.306309, 28.983294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002085, 16.770151, 29.688765>,  <11.312870, 16.184385, 29.523029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002085, 16.770151, 29.688765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.747049, 16.652508, 29.403954>,  <10.594028, 16.581923, 29.233067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.747049, 16.652508, 29.403954>,  <11.002085, 16.770151, 29.688765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.747049, 16.652508, 29.403954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738304, 0.497193, 0.455749,
		0.219976, 0.816272, -0.534145,
		-0.637588, -0.294107, -0.712027,
		10.555773, 16.564276, 29.190346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.571617, 17.334063, 29.533644>,  <11.002085, 16.770151, 29.688765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.571617, 17.334063, 29.533644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355191, 17.008369, 29.449476>,  <10.225336, 16.812954, 29.398975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355191, 17.008369, 29.449476>,  <10.571617, 17.334063, 29.533644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355191, 17.008369, 29.449476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780302, 0.392740, 0.486707,
		-0.313653, 0.427530, -0.847845,
		-0.541064, -0.814232, -0.210418,
		10.192872, 16.764099, 29.386351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.976372, 17.728916, 29.245443>,  <10.571617, 17.334063, 29.533644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.976372, 17.728916, 29.245443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608184, 17.846052, 29.348967>,  <9.387271, 17.916334, 29.411079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608184, 17.846052, 29.348967>,  <9.976372, 17.728916, 29.245443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.608184, 17.846052, 29.348967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364954, -0.880967, -0.301174,
		0.139803, -0.371674, 0.917776,
		-0.920469, 0.292841, 0.258806,
		9.332043, 17.933905, 29.426609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.549771, 17.932377, 28.789209>,  <9.976372, 17.728916, 29.245443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.549771, 17.932377, 28.789209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645247, 18.159996, 29.103970>,  <10.702532, 18.296568, 29.292826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.645247, 18.159996, 29.103970>,  <10.549771, 17.932377, 28.789209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.645247, 18.159996, 29.103970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908418, 0.155563, -0.388042,
		-0.343228, 0.807455, -0.479803,
		0.238687, 0.569048, 0.786901,
		10.716853, 18.330711, 29.340040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.770584, 18.604895, 28.546501>,  <10.549771, 17.932377, 28.789209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.770584, 18.604895, 28.546501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.938241, 18.575163, 28.908451>,  <11.038836, 18.557323, 29.125620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.938241, 18.575163, 28.908451>,  <10.770584, 18.604895, 28.546501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.938241, 18.575163, 28.908451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889244, 0.234718, -0.392622,
		-0.183206, 0.969217, 0.164479,
		0.419142, -0.074331, 0.904873,
		11.063984, 18.552864, 29.179913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.218848, 19.032913, 28.523384>,  <10.770584, 18.604895, 28.546501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.218848, 19.032913, 28.523384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350183, 18.801491, 28.822039>,  <11.428985, 18.662638, 29.001232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.350183, 18.801491, 28.822039>,  <11.218848, 19.032913, 28.523384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.350183, 18.801491, 28.822039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913698, -0.005866, -0.406351,
		0.239477, 0.815621, 0.526701,
		0.328339, -0.578557, 0.746636,
		11.448685, 18.627924, 29.046030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.859495, 19.285286, 28.723812>,  <11.218848, 19.032913, 28.523384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.859495, 19.285286, 28.723812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882426, 18.912199, 28.866219>,  <11.896185, 18.688347, 28.951662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.882426, 18.912199, 28.866219>,  <11.859495, 19.285286, 28.723812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.882426, 18.912199, 28.866219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903063, -0.103598, -0.416828,
		0.425666, 0.345403, 0.836364,
		0.057328, -0.932719, 0.356019,
		11.899625, 18.632383, 28.973024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.413312, 19.251438, 28.998112>,  <11.859495, 19.285286, 28.723812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.413312, 19.251438, 28.998112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312747, 18.881430, 28.884178>,  <12.252408, 18.659426, 28.815819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.312747, 18.881430, 28.884178>,  <12.413312, 19.251438, 28.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.312747, 18.881430, 28.884178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887129, -0.102554, -0.449984,
		0.387033, -0.365815, 0.846395,
		-0.251412, -0.925020, -0.284833,
		12.237324, 18.603924, 28.798729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902879, 18.785812, 29.255041>,  <12.413312, 19.251438, 28.998112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902879, 18.785812, 29.255041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733736, 18.590107, 28.949934>,  <12.632251, 18.472683, 28.766870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.733736, 18.590107, 28.949934>,  <12.902879, 18.785812, 29.255041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.733736, 18.590107, 28.949934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903424, -0.293404, -0.312633,
		-0.070838, -0.821300, 0.566082,
		-0.422856, -0.489266, -0.762766,
		12.606879, 18.443327, 28.721104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.333883, 18.293234, 29.129919>,  <12.902879, 18.785812, 29.255041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.333883, 18.293234, 29.129919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112866, 18.248114, 28.799593>,  <12.980256, 18.221043, 28.601397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.112866, 18.248114, 28.799593>,  <13.333883, 18.293234, 29.129919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112866, 18.248114, 28.799593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730997, -0.541584, -0.415126,
		-0.400423, -0.833044, 0.381704,
		-0.552543, -0.112799, -0.825816,
		12.947104, 18.214273, 28.551847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.567542, 17.699444, 28.873857>,  <13.333883, 18.293234, 29.129919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.567542, 17.699444, 28.873857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382665, 17.847097, 28.551338>,  <13.271738, 17.935690, 28.357826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.382665, 17.847097, 28.551338>,  <13.567542, 17.699444, 28.873857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.382665, 17.847097, 28.551338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593379, -0.546952, -0.590547,
		-0.658997, -0.751387, 0.033761,
		-0.462195, 0.369135, -0.806297,
		13.244006, 17.957838, 28.309448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599252, 17.122902, 28.368767>,  <13.567542, 17.699444, 28.873857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599252, 17.122902, 28.368767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.501331, 17.442120, 28.148514>,  <13.442579, 17.633650, 28.016361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.501331, 17.442120, 28.148514>,  <13.599252, 17.122902, 28.368767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.501331, 17.442120, 28.148514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436642, -0.416324, -0.797507,
		-0.865689, -0.435660, -0.246544,
		-0.244800, 0.798044, -0.550635,
		13.427892, 17.681532, 27.983324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.102320, 16.987263, 27.817247>,  <13.599252, 17.122902, 28.368767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.102320, 16.987263, 27.817247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348899, 17.289143, 27.727428>,  <13.496846, 17.470270, 27.673536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348899, 17.289143, 27.727428>,  <13.102320, 16.987263, 27.817247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348899, 17.289143, 27.727428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324337, -0.503238, -0.800973,
		-0.717494, 0.420929, -0.554997,
		0.616448, 0.754699, -0.224547,
		13.533834, 17.515553, 27.660065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.246182, 16.967371, 27.134779>,  <13.102320, 16.987263, 27.817247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.246182, 16.967371, 27.134779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500831, 17.274364, 27.164930>,  <13.653620, 17.458561, 27.183022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.500831, 17.274364, 27.164930>,  <13.246182, 16.967371, 27.134779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.500831, 17.274364, 27.164930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315119, -0.169679, -0.933761,
		-0.703857, 0.618203, -0.349870,
		0.636620, 0.767485, 0.075377,
		13.691816, 17.504610, 27.187544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.089832, 17.425518, 26.579208>,  <13.246182, 16.967371, 27.134779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.089832, 17.425518, 26.579208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470200, 17.460892, 26.697824>,  <13.698420, 17.482117, 26.768993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.470200, 17.460892, 26.697824>,  <13.089832, 17.425518, 26.579208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470200, 17.460892, 26.697824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309060, -0.223677, -0.924365,
		-0.015419, 0.970643, -0.240031,
		0.950917, 0.088436, 0.296538,
		13.755475, 17.487423, 26.786785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.368883, 17.795544, 26.127733>,  <13.089832, 17.425518, 26.579208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.368883, 17.795544, 26.127733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.672384, 17.599066, 26.298857>,  <13.854486, 17.481178, 26.401531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.672384, 17.599066, 26.298857>,  <13.368883, 17.795544, 26.127733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672384, 17.599066, 26.298857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363269, -0.226061, -0.903843,
		0.540675, 0.841204, 0.006912,
		0.758753, -0.491196, 0.427809,
		13.900010, 17.451708, 26.427198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.830256, 17.762667, 25.562048>,  <13.368883, 17.795544, 26.127733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.830256, 17.762667, 25.562048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987102, 17.504076, 25.823832>,  <14.081208, 17.348923, 25.980902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987102, 17.504076, 25.823832>,  <13.830256, 17.762667, 25.562048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.987102, 17.504076, 25.823832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435858, -0.495951, -0.751040,
		0.810108, 0.579744, 0.087303,
		0.392113, -0.646475, 0.654460,
		14.104735, 17.310133, 26.020170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677388, 17.766239, 25.473978>,  <13.830256, 17.762667, 25.562048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677388, 17.766239, 25.473978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.558917, 17.428980, 25.653479>,  <14.487835, 17.226624, 25.761179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.558917, 17.428980, 25.653479>,  <14.677388, 17.766239, 25.473978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.558917, 17.428980, 25.653479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446062, -0.537550, -0.715590,
		0.844576, -0.011770, 0.535307,
		-0.296177, -0.843149, 0.448752,
		14.470064, 17.176035, 25.788105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291660, 17.339153, 25.559456>,  <14.677388, 17.766239, 25.473978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291660, 17.339153, 25.559456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965102, 17.108202, 25.564020>,  <14.769167, 16.969631, 25.566759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.965102, 17.108202, 25.564020>,  <15.291660, 17.339153, 25.559456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965102, 17.108202, 25.564020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466999, -0.671685, -0.575111,
		0.339721, -0.464190, 0.817996,
		-0.816396, -0.577380, 0.011409,
		14.720183, 16.934988, 25.567444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.530739, 16.772997, 25.360418>,  <15.291660, 17.339153, 25.559456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.530739, 16.772997, 25.360418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153165, 16.658613, 25.294432>,  <14.926620, 16.589983, 25.254839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.153165, 16.658613, 25.294432>,  <15.530739, 16.772997, 25.360418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.153165, 16.658613, 25.294432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315481, -0.634145, -0.705926,
		0.097254, -0.718392, 0.688806,
		-0.943935, -0.285960, -0.164966,
		14.869985, 16.572824, 25.244942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.555785, 16.046293, 25.251616>,  <15.530739, 16.772997, 25.360418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.555785, 16.046293, 25.251616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203263, 16.145792, 25.090904>,  <14.991750, 16.205490, 24.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203263, 16.145792, 25.090904>,  <15.555785, 16.046293, 25.251616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203263, 16.145792, 25.090904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208357, -0.558580, -0.802855,
		-0.424131, -0.791274, 0.440453,
		-0.881306, 0.248744, -0.401779,
		14.938871, 16.220415, 24.970371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.198776, 15.458994, 25.077238>,  <15.555785, 16.046293, 25.251616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.198776, 15.458994, 25.077238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059971, 15.752965, 24.844185>,  <14.976687, 15.929348, 24.704353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.059971, 15.752965, 24.844185>,  <15.198776, 15.458994, 25.077238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.059971, 15.752965, 24.844185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145113, -0.571680, -0.807542,
		-0.926565, -0.364776, 0.091733,
		-0.347014, 0.734929, -0.582633,
		14.955867, 15.973444, 24.669395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.778001, 15.071433, 24.523151>,  <15.198776, 15.458994, 25.077238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.778001, 15.071433, 24.523151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799890, 15.435357, 24.358591>,  <14.813023, 15.653711, 24.259855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.799890, 15.435357, 24.358591>,  <14.778001, 15.071433, 24.523151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.799890, 15.435357, 24.358591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071844, -0.414537, -0.907192,
		-0.995914, 0.020087, -0.088049,
		0.054722, 0.909811, -0.411400,
		14.816306, 15.708301, 24.235170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.310183, 14.982427, 23.866678>,  <14.778001, 15.071433, 24.523151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.310183, 14.982427, 23.866678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542124, 15.302851, 23.807251>,  <14.681289, 15.495106, 23.771595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.542124, 15.302851, 23.807251>,  <14.310183, 14.982427, 23.866678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.542124, 15.302851, 23.807251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108910, -0.256930, -0.960274,
		-0.807409, 0.540636, -0.236225,
		0.579852, 0.801061, -0.148567,
		14.716080, 15.543169, 23.762680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.018981, 15.343146, 23.281992>,  <14.310183, 14.982427, 23.866678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.018981, 15.343146, 23.281992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402689, 15.452836, 23.309122>,  <14.632914, 15.518650, 23.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.402689, 15.452836, 23.309122>,  <14.018981, 15.343146, 23.281992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.402689, 15.452836, 23.309122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103998, -0.119581, -0.987363,
		-0.262649, 0.954202, -0.143229,
		0.959270, 0.274225, 0.067828,
		14.690470, 15.535104, 23.329470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171450, 15.745479, 22.615168>,  <14.018981, 15.343146, 23.281992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171450, 15.745479, 22.615168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528135, 15.649704, 22.768799>,  <14.742146, 15.592239, 22.860977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528135, 15.649704, 22.768799>,  <14.171450, 15.745479, 22.615168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528135, 15.649704, 22.768799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355868, -0.153415, -0.921858,
		0.279651, 0.958715, -0.051594,
		0.891714, -0.239438, 0.384078,
		14.795650, 15.577872, 22.884022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.708414, 16.183758, 22.233942>,  <14.171450, 15.745479, 22.615168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.708414, 16.183758, 22.233942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891478, 15.870027, 22.401457>,  <15.001315, 15.681788, 22.501965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891478, 15.870027, 22.401457>,  <14.708414, 16.183758, 22.233942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891478, 15.870027, 22.401457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372163, -0.258777, -0.891364,
		0.807492, 0.563796, 0.173466,
		0.457658, -0.784327, 0.418785,
		15.028775, 15.634728, 22.527092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443460, 16.178844, 21.873308>,  <14.708414, 16.183758, 22.233942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443460, 16.178844, 21.873308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419030, 15.821928, 22.052233>,  <15.404372, 15.607779, 22.159588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.419030, 15.821928, 22.052233>,  <15.443460, 16.178844, 21.873308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.419030, 15.821928, 22.052233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496670, -0.415895, -0.761807,
		0.865788, 0.175638, 0.468575,
		-0.061075, -0.892291, 0.447311,
		15.400707, 15.554241, 22.186426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.109211, 15.906905, 21.983240>,  <15.443460, 16.178844, 21.873308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.109211, 15.906905, 21.983240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873012, 15.585350, 21.954748>,  <15.731292, 15.392417, 21.937653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.873012, 15.585350, 21.954748>,  <16.109211, 15.906905, 21.983240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.873012, 15.585350, 21.954748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592219, -0.371666, -0.714942,
		0.548259, -0.464357, 0.695547,
		-0.590499, -0.803889, -0.071232,
		15.695862, 15.344184, 21.933378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506144, 15.382783, 21.972261>,  <16.109211, 15.906905, 21.983240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506144, 15.382783, 21.972261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169792, 15.247720, 21.803070>,  <15.967981, 15.166682, 21.701555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169792, 15.247720, 21.803070>,  <16.506144, 15.382783, 21.972261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169792, 15.247720, 21.803070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526070, -0.326283, -0.785359,
		0.127172, -0.882908, 0.451996,
		-0.840879, -0.337657, -0.422978,
		15.917528, 15.146422, 21.676176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616871, 14.682221, 21.735504>,  <16.506144, 15.382783, 21.972261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616871, 14.682221, 21.735504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316179, 14.821033, 21.511192>,  <16.135765, 14.904320, 21.376606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316179, 14.821033, 21.511192>,  <16.616871, 14.682221, 21.735504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316179, 14.821033, 21.511192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551581, -0.135235, -0.823086,
		-0.361472, -0.928053, -0.089755,
		-0.751729, 0.347029, -0.560780,
		16.090660, 14.925141, 21.342958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.591885, 14.102274, 21.157866>,  <16.616871, 14.682221, 21.735504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.591885, 14.102274, 21.157866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369091, 14.406959, 21.025465>,  <16.235415, 14.589769, 20.946026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.369091, 14.406959, 21.025465>,  <16.591885, 14.102274, 21.157866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369091, 14.406959, 21.025465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220689, -0.248475, -0.943163,
		-0.800665, -0.598376, -0.029705,
		-0.556985, 0.761713, -0.331000,
		16.201996, 14.635472, 20.926165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.357115, 13.815567, 20.515116>,  <16.591885, 14.102274, 21.157866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.357115, 13.815567, 20.515116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331812, 14.214766, 20.515949>,  <16.316631, 14.454285, 20.516449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.331812, 14.214766, 20.515949>,  <16.357115, 13.815567, 20.515116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.331812, 14.214766, 20.515949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238956, 0.017171, -0.970879,
		-0.968968, -0.060915, -0.239563,
		-0.063255, 0.997995, 0.002082,
		16.312836, 14.514164, 20.516573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.079346, 13.992606, 19.814228>,  <16.357115, 13.815567, 20.515116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.079346, 13.992606, 19.814228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269333, 14.324783, 19.930691>,  <16.383326, 14.524090, 20.000568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269333, 14.324783, 19.930691>,  <16.079346, 13.992606, 19.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269333, 14.324783, 19.930691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427846, 0.071208, -0.901042,
		-0.768996, 0.552536, -0.321480,
		0.474966, 0.830442, 0.291159,
		16.411823, 14.573915, 20.018038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901958, 14.450178, 19.388866>,  <16.079346, 13.992606, 19.814228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901958, 14.450178, 19.388866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235598, 14.618490, 19.531540>,  <16.435781, 14.719478, 19.617144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.235598, 14.618490, 19.531540>,  <15.901958, 14.450178, 19.388866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.235598, 14.618490, 19.531540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307837, 0.181484, -0.933970,
		-0.457729, 0.888824, 0.021844,
		0.834099, 0.420781, 0.356683,
		16.485826, 14.744724, 19.638544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070307, 14.884048, 18.888861>,  <15.901958, 14.450178, 19.388866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070307, 14.884048, 18.888861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415987, 14.868451, 19.089514>,  <16.623396, 14.859093, 19.209906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.415987, 14.868451, 19.089514>,  <16.070307, 14.884048, 18.888861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.415987, 14.868451, 19.089514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488029, 0.307518, -0.816860,
		-0.122409, 0.950743, 0.284787,
		0.864201, -0.038993, 0.501633,
		16.675247, 14.856753, 19.240004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509203, 15.398367, 18.666252>,  <16.070307, 14.884048, 18.888861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509203, 15.398367, 18.666252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812820, 15.205904, 18.841677>,  <16.994991, 15.090426, 18.946932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812820, 15.205904, 18.841677>,  <16.509203, 15.398367, 18.666252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812820, 15.205904, 18.841677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614874, 0.308432, -0.725809,
		0.213961, 0.820584, 0.529965,
		0.759046, -0.481157, 0.438563,
		17.040535, 15.061557, 18.973246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035780, 15.801950, 18.576895>,  <16.509203, 15.398367, 18.666252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035780, 15.801950, 18.576895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208313, 15.447297, 18.643633>,  <17.311832, 15.234506, 18.683676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208313, 15.447297, 18.643633>,  <17.035780, 15.801950, 18.576895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208313, 15.447297, 18.643633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684903, 0.201421, -0.700240,
		0.587249, 0.416310, 0.694136,
		0.431331, -0.886632, 0.166847,
		17.337711, 15.181308, 18.693687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.754913, 15.972734, 18.650904>,  <17.035780, 15.801950, 18.576895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.754913, 15.972734, 18.650904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724703, 15.581629, 18.572651>,  <17.706577, 15.346965, 18.525700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.724703, 15.581629, 18.572651>,  <17.754913, 15.972734, 18.650904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.724703, 15.581629, 18.572651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857972, 0.036251, -0.512416,
		0.508114, -0.206547, 0.836157,
		-0.075527, -0.977765, -0.195631,
		17.702045, 15.288300, 18.513962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446867, 15.687830, 18.790636>,  <17.754913, 15.972734, 18.650904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446867, 15.687830, 18.790636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247187, 15.442872, 18.545437>,  <18.127378, 15.295897, 18.398317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247187, 15.442872, 18.545437>,  <18.446867, 15.687830, 18.790636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247187, 15.442872, 18.545437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775776, -0.000754, -0.631008,
		0.385964, -0.790552, 0.475457,
		-0.499203, -0.612394, -0.613000,
		18.097425, 15.259153, 18.361536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.937965, 15.058441, 18.664762>,  <18.446867, 15.687830, 18.790636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.937965, 15.058441, 18.664762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677568, 15.144146, 18.373476>,  <18.521330, 15.195569, 18.198704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.677568, 15.144146, 18.373476>,  <18.937965, 15.058441, 18.664762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.677568, 15.144146, 18.373476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724819, -0.109513, -0.680180,
		-0.225486, -0.970618, -0.084008,
		-0.650994, 0.214262, -0.728215,
		18.482269, 15.208425, 18.155012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096972, 14.666709, 18.027565>,  <18.937965, 15.058441, 18.664762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096972, 14.666709, 18.027565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819963, 14.910934, 17.873875>,  <18.653759, 15.057469, 17.781660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819963, 14.910934, 17.873875>,  <19.096972, 14.666709, 18.027565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819963, 14.910934, 17.873875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559508, 0.118384, -0.820327,
		-0.455375, -0.783070, -0.423599,
		-0.692520, 0.610563, -0.384224,
		18.612207, 15.094103, 17.758608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.093159, 14.441568, 17.376104>,  <19.096972, 14.666709, 18.027565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.093159, 14.441568, 17.376104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933550, 14.806679, 17.341188>,  <18.837784, 15.025745, 17.320240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.933550, 14.806679, 17.341188>,  <19.093159, 14.441568, 17.376104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.933550, 14.806679, 17.341188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577508, 0.176229, -0.797138,
		-0.712226, -0.368486, -0.597455,
		-0.399023, 0.912777, -0.087289,
		18.813843, 15.080512, 17.315002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109600, 14.643531, 16.667089>,  <19.093159, 14.441568, 17.376104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109600, 14.643531, 16.667089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078970, 14.996134, 16.853456>,  <19.060593, 15.207696, 16.965277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078970, 14.996134, 16.853456>,  <19.109600, 14.643531, 16.667089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078970, 14.996134, 16.853456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633181, 0.403964, -0.660223,
		-0.770206, 0.244455, -0.589087,
		-0.076575, 0.881507, 0.465920,
		19.055998, 15.260586, 16.993233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262173, 15.177421, 16.190424>,  <19.109600, 14.643531, 16.667089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262173, 15.177421, 16.190424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349028, 15.335437, 16.547478>,  <19.401140, 15.430246, 16.761709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.349028, 15.335437, 16.547478>,  <19.262173, 15.177421, 16.190424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.349028, 15.335437, 16.547478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748962, 0.519039, -0.411892,
		-0.626026, 0.757985, -0.183169,
		0.217136, 0.395041, 0.892633,
		19.414169, 15.453949, 16.815268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.349655, 15.940722, 16.107756>,  <19.262173, 15.177421, 16.190424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.349655, 15.940722, 16.107756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598083, 15.735841, 16.345047>,  <19.747141, 15.612912, 16.487421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.598083, 15.735841, 16.345047>,  <19.349655, 15.940722, 16.107756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.598083, 15.735841, 16.345047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782480, 0.362052, -0.506600,
		0.044703, 0.778823, 0.625649,
		0.621069, -0.512204, 0.593229,
		19.784405, 15.582180, 16.523016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.977530, 16.349255, 16.369474>,  <19.349655, 15.940722, 16.107756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.977530, 16.349255, 16.369474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084713, 15.963941, 16.376215>,  <20.149023, 15.732753, 16.380259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.084713, 15.963941, 16.376215>,  <19.977530, 16.349255, 16.369474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.084713, 15.963941, 16.376215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870118, 0.234460, -0.433501,
		0.413634, 0.130821, 0.900996,
		0.267958, -0.963283, 0.016849,
		20.165100, 15.674955, 16.381269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748941, 16.249496, 16.306349>,  <19.977530, 16.349255, 16.369474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748941, 16.249496, 16.306349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629147, 15.875787, 16.228954>,  <20.557270, 15.651561, 16.182518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629147, 15.875787, 16.228954>,  <20.748941, 16.249496, 16.306349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629147, 15.875787, 16.228954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849938, -0.169108, -0.499007,
		0.433490, -0.313896, 0.844722,
		-0.299485, -0.934276, -0.193486,
		20.539301, 15.595504, 16.170908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.246250, 15.802604, 16.580627>,  <20.748941, 16.249496, 16.306349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.246250, 15.802604, 16.580627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068386, 15.698683, 16.237751>,  <20.961668, 15.636331, 16.032024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068386, 15.698683, 16.237751>,  <21.246250, 15.802604, 16.580627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068386, 15.698683, 16.237751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878662, 0.059250, -0.473754,
		0.173871, -0.963842, 0.201932,
		-0.444660, -0.259803, -0.857193,
		20.934988, 15.620742, 15.980593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.020266, 15.839189, 16.301374>,  <21.246250, 15.802604, 16.580627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.020266, 15.839189, 16.301374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863403, 15.616096, 16.008759>,  <21.769285, 15.482240, 15.833189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.863403, 15.616096, 16.008759>,  <22.020266, 15.839189, 16.301374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863403, 15.616096, 16.008759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794116, 0.196146, -0.575245,
		0.464321, -0.806511, 0.365986,
		-0.392155, -0.557734, -0.731538,
		21.745756, 15.448775, 15.789297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492453, 15.209167, 16.081079>,  <22.020266, 15.839189, 16.301374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492453, 15.209167, 16.081079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.247494, 15.288577, 15.774993>,  <22.100519, 15.336224, 15.591341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.247494, 15.288577, 15.774993>,  <22.492453, 15.209167, 16.081079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.247494, 15.288577, 15.774993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780164, 0.308166, -0.544407,
		0.127735, -0.930388, -0.343603,
		-0.612396, 0.198527, -0.765218,
		22.063774, 15.348135, 15.545427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.838812, 15.005675, 15.363340>,  <22.492453, 15.209167, 16.081079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.838812, 15.005675, 15.363340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562046, 15.275656, 15.260815>,  <22.395987, 15.437644, 15.199300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.562046, 15.275656, 15.260815>,  <22.838812, 15.005675, 15.363340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562046, 15.275656, 15.260815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571480, 0.295054, -0.765737,
		-0.441208, -0.676303, -0.589873,
		-0.691915, 0.674950, -0.256314,
		22.354471, 15.478141, 15.183921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.770184, 14.907410, 14.595116>,  <22.838812, 15.005675, 15.363340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.770184, 14.907410, 14.595116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.650227, 15.264367, 14.729993>,  <22.578253, 15.478541, 14.810919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.650227, 15.264367, 14.729993>,  <22.770184, 14.907410, 14.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.650227, 15.264367, 14.729993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689794, 0.447009, -0.569533,
		-0.658975, 0.061794, -0.749622,
		-0.299895, 0.892392, 0.337193,
		22.560259, 15.532084, 14.831151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.555851, 15.193711, 13.953060>,  <22.770184, 14.907410, 14.595116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.555851, 15.193711, 13.953060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635969, 15.473680, 14.227283>,  <22.684040, 15.641661, 14.391818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.635969, 15.473680, 14.227283>,  <22.555851, 15.193711, 13.953060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.635969, 15.473680, 14.227283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650309, 0.428389, -0.627360,
		-0.732789, 0.571483, -0.369361,
		0.200295, 0.699922, 0.685559,
		22.696058, 15.683656, 14.432951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461760, 15.780665, 13.564999>,  <22.555851, 15.193711, 13.953060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461760, 15.780665, 13.564999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683134, 15.873678, 13.884908>,  <22.815960, 15.929485, 14.076853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.683134, 15.873678, 13.884908>,  <22.461760, 15.780665, 13.564999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683134, 15.873678, 13.884908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660623, 0.462232, -0.591540,
		-0.507231, 0.855729, 0.102202,
		0.553439, 0.232531, 0.799772,
		22.849165, 15.943438, 14.124840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.779268, 16.334578, 13.345477>,  <22.461760, 15.780665, 13.564999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.779268, 16.334578, 13.345477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012777, 16.245661, 13.657835>,  <23.152884, 16.192310, 13.845250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.012777, 16.245661, 13.657835>,  <22.779268, 16.334578, 13.345477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.012777, 16.245661, 13.657835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775604, 0.437099, -0.455393,
		-0.240099, 0.871511, 0.427576,
		0.583773, -0.222290, 0.780895,
		23.187910, 16.178974, 13.892103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.221209, 16.896183, 13.385926>,  <22.779268, 16.334578, 13.345477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.221209, 16.896183, 13.385926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.403015, 16.597527, 13.580221>,  <23.512100, 16.418333, 13.696798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.403015, 16.597527, 13.580221>,  <23.221209, 16.896183, 13.385926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.403015, 16.597527, 13.580221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866769, 0.245086, -0.434332,
		0.205242, 0.618434, 0.758561,
		0.454519, -0.746640, 0.485738,
		23.539371, 16.373535, 13.725943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.932470, 17.135029, 13.503143>,  <23.221209, 16.896183, 13.385926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.932470, 17.135029, 13.503143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977795, 16.741089, 13.555654>,  <24.004990, 16.504725, 13.587159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.977795, 16.741089, 13.555654>,  <23.932470, 17.135029, 13.503143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.977795, 16.741089, 13.555654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934160, 0.060602, -0.351671,
		0.338387, 0.162480, 0.926874,
		0.113309, -0.984849, 0.131275,
		24.011787, 16.445635, 13.595037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488918, 17.108219, 13.890813>,  <23.932470, 17.135029, 13.503143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488918, 17.108219, 13.890813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433638, 16.758289, 13.705091>,  <24.400469, 16.548330, 13.593657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.433638, 16.758289, 13.705091>,  <24.488918, 17.108219, 13.890813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.433638, 16.758289, 13.705091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954977, 0.006560, -0.296606,
		0.262525, -0.484393, 0.834532,
		-0.138200, -0.874826, -0.464307,
		24.392178, 16.495842, 13.565799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955616, 16.753359, 14.033961>,  <24.488918, 17.108219, 13.890813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955616, 16.753359, 14.033961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843798, 16.559278, 13.702556>,  <24.776707, 16.442831, 13.503713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.843798, 16.559278, 13.702556>,  <24.955616, 16.753359, 14.033961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.843798, 16.559278, 13.702556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959308, -0.105369, -0.261967,
		0.039807, -0.868030, 0.494913,
		-0.279544, -0.485202, -0.828514,
		24.759935, 16.413717, 13.454001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.356462, 16.040249, 14.008301>,  <24.955616, 16.753359, 14.033961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.356462, 16.040249, 14.008301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232904, 16.144508, 13.642427>,  <25.158770, 16.207064, 13.422903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.232904, 16.144508, 13.642427>,  <25.356462, 16.040249, 14.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.232904, 16.144508, 13.642427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949881, 0.035970, -0.310534,
		-0.048038, -0.964764, -0.258694,
		-0.308897, 0.260647, -0.914683,
		25.140236, 16.222702, 13.368022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840036, 15.620552, 13.702742>,  <25.356462, 16.040249, 14.008301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840036, 15.620552, 13.702742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692486, 15.887620, 13.444084>,  <25.603956, 16.047861, 13.288890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.692486, 15.887620, 13.444084>,  <25.840036, 15.620552, 13.702742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692486, 15.887620, 13.444084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925947, 0.203378, -0.318212,
		-0.080948, -0.716138, -0.693249,
		-0.368875, 0.667670, -0.646643,
		25.581823, 16.087921, 13.250092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946445, 15.339515, 13.107574>,  <25.840036, 15.620552, 13.702742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946445, 15.339515, 13.107574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913500, 15.732017, 13.037881>,  <25.893732, 15.967518, 12.996065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913500, 15.732017, 13.037881>,  <25.946445, 15.339515, 13.107574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913500, 15.732017, 13.037881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840573, -0.025524, -0.541096,
		-0.535400, -0.191022, -0.822714,
		-0.082362, 0.981254, -0.174234,
		25.888792, 16.026392, 12.985611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270048, 15.494524, 12.367735>,  <25.946445, 15.339515, 13.107574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270048, 15.494524, 12.367735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261126, 15.848410, 12.553974>,  <26.255772, 16.060741, 12.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.261126, 15.848410, 12.553974>,  <26.270048, 15.494524, 12.367735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.261126, 15.848410, 12.553974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860779, 0.253866, -0.441148,
		-0.508490, 0.390938, -0.767207,
		-0.022307, 0.884714, 0.465599,
		26.254433, 16.113825, 12.693654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.408546, 16.042999, 11.782411>,  <26.270048, 15.494524, 12.367735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.408546, 16.042999, 11.782411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472845, 16.207500, 12.141305>,  <26.511425, 16.306202, 12.356642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.472845, 16.207500, 12.141305>,  <26.408546, 16.042999, 11.782411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.472845, 16.207500, 12.141305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874025, 0.363000, -0.322972,
		-0.458520, 0.836123, -0.301093,
		0.160748, 0.411252, 0.897236,
		26.521069, 16.330875, 12.410476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534689, 16.755981, 11.612037>,  <26.408546, 16.042999, 11.782411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534689, 16.755981, 11.612037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698849, 16.629354, 11.954114>,  <26.797344, 16.553379, 12.159361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698849, 16.629354, 11.954114>,  <26.534689, 16.755981, 11.612037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698849, 16.629354, 11.954114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896598, 0.311193, -0.315075,
		-0.166388, 0.896071, 0.411547,
		0.410400, -0.316568, 0.855194,
		26.821968, 16.534384, 12.210672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.896616, 17.317764, 11.822965>,  <26.534689, 16.755981, 11.612037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.896616, 17.317764, 11.822965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055235, 17.007883, 12.019976>,  <27.150406, 16.821955, 12.138182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.055235, 17.007883, 12.019976>,  <26.896616, 17.317764, 11.822965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055235, 17.007883, 12.019976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895719, 0.208992, -0.392442,
		0.201092, 0.596787, 0.776793,
		0.396548, -0.774705, 0.492527,
		27.174200, 16.775473, 12.167734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531897, 17.571287, 12.046173>,  <26.896616, 17.317764, 11.822965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531897, 17.571287, 12.046173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553125, 17.172928, 12.075492>,  <27.565863, 16.933912, 12.093083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553125, 17.172928, 12.075492>,  <27.531897, 17.571287, 12.046173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553125, 17.172928, 12.075492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976859, 0.036548, -0.210736,
		0.207192, 0.082786, 0.974791,
		0.053073, -0.995897, 0.073297,
		27.569048, 16.874159, 12.097481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073111, 17.388475, 12.485452>,  <27.531897, 17.571287, 12.046173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073111, 17.388475, 12.485452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025333, 17.081095, 12.233988>,  <27.996668, 16.896666, 12.083109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025333, 17.081095, 12.233988>,  <28.073111, 17.388475, 12.485452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025333, 17.081095, 12.233988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966539, 0.054786, -0.250603,
		0.227019, -0.637557, 0.736196,
		-0.119441, -0.768453, -0.628661,
		27.989502, 16.850559, 12.045389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.721828, 16.956898, 12.605298>,  <28.073111, 17.388475, 12.485452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.721828, 16.956898, 12.605298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562208, 16.786085, 12.280729>,  <28.466436, 16.683598, 12.085988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562208, 16.786085, 12.280729>,  <28.721828, 16.956898, 12.605298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562208, 16.786085, 12.280729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888047, 0.040366, -0.457977,
		0.228324, -0.903336, 0.363116,
		-0.399049, -0.427031, -0.811421,
		28.442493, 16.657976, 12.037303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111670, 16.441338, 12.446715>,  <28.721828, 16.956898, 12.605298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111670, 16.441338, 12.446715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928194, 16.517950, 12.099631>,  <28.818108, 16.563917, 11.891381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928194, 16.517950, 12.099631>,  <29.111670, 16.441338, 12.446715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928194, 16.517950, 12.099631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838903, -0.228636, -0.493930,
		-0.292993, -0.954485, -0.055804,
		-0.458690, 0.191532, -0.867709,
		28.790586, 16.575409, 11.839318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.231821, 15.854930, 12.017989>,  <29.111670, 16.441338, 12.446715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.231821, 15.854930, 12.017989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138737, 16.153093, 11.768122>,  <29.082886, 16.331991, 11.618201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138737, 16.153093, 11.768122>,  <29.231821, 15.854930, 12.017989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138737, 16.153093, 11.768122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685548, -0.329862, -0.649011,
		-0.689833, -0.579272, -0.434251,
		-0.232712, 0.745409, -0.624669,
		29.068924, 16.376717, 11.580721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990255, 15.490560, 11.476092>,  <29.231821, 15.854930, 12.017989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990255, 15.490560, 11.476092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126650, 15.848887, 11.362085>,  <29.208487, 16.063885, 11.293681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.126650, 15.848887, 11.362085>,  <28.990255, 15.490560, 11.476092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.126650, 15.848887, 11.362085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687127, -0.444418, -0.574761,
		-0.641549, 0.000141, -0.767082,
		0.340986, 0.895820, -0.285019,
		29.228945, 16.117634, 11.276580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073423, 15.612323, 10.718446>,  <28.990255, 15.490560, 11.476092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073423, 15.612323, 10.718446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327681, 15.840514, 10.926489>,  <29.480234, 15.977429, 11.051314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327681, 15.840514, 10.926489>,  <29.073423, 15.612323, 10.718446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327681, 15.840514, 10.926489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769797, -0.417715, -0.482625,
		-0.058070, 0.707154, -0.704671,
		0.635642, 0.570479, 0.520108,
		29.518373, 16.011658, 11.082521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174768, 15.610583, 9.948063>,  <29.073423, 15.612323, 10.718446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174768, 15.610583, 9.948063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327862, 15.337077, 10.196571>,  <29.419718, 15.172974, 10.345676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.327862, 15.337077, 10.196571>,  <29.174768, 15.610583, 9.948063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.327862, 15.337077, 10.196571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904182, -0.139187, 0.403834,
		-0.189656, -0.716302, -0.671522,
		0.382735, -0.683768, 0.621269,
		29.442682, 15.131948, 10.382953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862156, 14.959496, 9.725109>,  <29.174768, 15.610583, 9.948063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862156, 14.959496, 9.725109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916756, 14.979660, 10.120852>,  <28.949516, 14.991759, 10.358297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916756, 14.979660, 10.120852>,  <28.862156, 14.959496, 9.725109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916756, 14.979660, 10.120852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966498, -0.212363, 0.144166,
		0.217370, -0.975890, 0.019734,
		0.136499, 0.050411, 0.989357,
		28.957705, 14.994783, 10.417659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.475815, 14.458615, 9.846050>,  <28.862156, 14.959496, 9.725109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.475815, 14.458615, 9.846050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511650, 14.710629, 10.154604>,  <28.533152, 14.861836, 10.339736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511650, 14.710629, 10.154604>,  <28.475815, 14.458615, 9.846050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511650, 14.710629, 10.154604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957830, -0.157800, 0.240125,
		0.273011, -0.760366, 0.589328,
		0.089587, 0.630033, 0.771383,
		28.538527, 14.899638, 10.386019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372755, 14.124979, 10.525647>,  <28.475815, 14.458615, 9.846050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372755, 14.124979, 10.525647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280272, 14.511826, 10.568037>,  <28.224781, 14.743934, 10.593471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.280272, 14.511826, 10.568037>,  <28.372755, 14.124979, 10.525647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280272, 14.511826, 10.568037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904145, -0.253811, 0.343660,
		0.359256, -0.016359, 0.933096,
		-0.231208, 0.967116, 0.105974,
		28.210909, 14.801960, 10.599830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306719, 14.461296, 11.263210>,  <28.372755, 14.124979, 10.525647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306719, 14.461296, 11.263210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057405, 14.646923, 11.011446>,  <27.907818, 14.758299, 10.860388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057405, 14.646923, 11.011446>,  <28.306719, 14.461296, 11.263210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057405, 14.646923, 11.011446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781067, -0.330256, 0.529968,
		0.038075, 0.821932, 0.568311,
		-0.623286, 0.464068, -0.629410,
		27.870420, 14.786143, 10.822623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.947462, 15.054571, 11.545022>,  <28.306719, 14.461296, 11.263210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.947462, 15.054571, 11.545022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786764, 14.792767, 11.288830>,  <27.690346, 14.635684, 11.135115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.786764, 14.792767, 11.288830>,  <27.947462, 15.054571, 11.545022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786764, 14.792767, 11.288830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647373, -0.291691, 0.704148,
		-0.647695, 0.697518, -0.306527,
		-0.401745, -0.654511, -0.640481,
		27.666241, 14.596414, 11.096685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.224258, 15.073603, 11.276364>,  <27.947462, 15.054571, 11.545022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.224258, 15.073603, 11.276364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289999, 14.679046, 11.278157>,  <27.329443, 14.442311, 11.279233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.289999, 14.679046, 11.278157>,  <27.224258, 15.073603, 11.276364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.289999, 14.679046, 11.278157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779632, -0.127115, 0.613202,
		-0.604288, -0.104274, -0.789914,
		0.164351, -0.986392, 0.004481,
		27.339304, 14.383128, 11.279502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487715, 14.591081, 11.105190>,  <27.224258, 15.073603, 11.276364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487715, 14.591081, 11.105190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771498, 14.428227, 11.335290>,  <26.941769, 14.330516, 11.473350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771498, 14.428227, 11.335290>,  <26.487715, 14.591081, 11.105190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771498, 14.428227, 11.335290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704740, -0.406116, 0.581732,
		-0.003224, -0.818115, -0.575045,
		0.709459, -0.407133, 0.575249,
		26.984335, 14.306087, 11.507865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.250671, 13.902430, 11.173252>,  <26.487715, 14.591081, 11.105190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.250671, 13.902430, 11.173252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498917, 13.993879, 11.473270>,  <26.647863, 14.048749, 11.653281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498917, 13.993879, 11.473270>,  <26.250671, 13.902430, 11.173252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498917, 13.993879, 11.473270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600778, -0.476056, 0.642212,
		0.503890, -0.849177, -0.158094,
		0.620613, 0.228625, 0.750046,
		26.685101, 14.062467, 11.698284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079840, 13.367800, 11.635843>,  <26.250671, 13.902430, 11.173252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079840, 13.367800, 11.635843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313862, 13.624506, 11.834175>,  <26.454275, 13.778530, 11.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.313862, 13.624506, 11.834175>,  <26.079840, 13.367800, 11.635843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.313862, 13.624506, 11.834175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423394, -0.279751, 0.861671,
		0.691700, -0.714056, 0.108050,
		0.585054, 0.641766, 0.495830,
		26.489378, 13.817036, 11.982924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429497, 12.930668, 12.199591>,  <26.079840, 13.367800, 11.635843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429497, 12.930668, 12.199591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433992, 13.312332, 12.319224>,  <26.436689, 13.541330, 12.391005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.433992, 13.312332, 12.319224>,  <26.429497, 12.930668, 12.199591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.433992, 13.312332, 12.319224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381649, -0.272367, 0.883267,
		0.924239, -0.124072, 0.361093,
		0.011238, 0.954161, 0.299084,
		26.437365, 13.598580, 12.408950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.737057, 12.856739, 12.882214>,  <26.429497, 12.930668, 12.199591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.737057, 12.856739, 12.882214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551336, 13.210625, 12.865677>,  <26.439905, 13.422956, 12.855755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.551336, 13.210625, 12.865677>,  <26.737057, 12.856739, 12.882214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551336, 13.210625, 12.865677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303956, -0.115326, 0.945680,
		0.831888, 0.451644, 0.322460,
		-0.464299, 0.884713, -0.041342,
		26.412046, 13.476039, 12.853274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.025772, 13.300643, 13.327577>,  <26.737057, 12.856739, 12.882214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.025772, 13.300643, 13.327577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657953, 13.452459, 13.286822>,  <26.437262, 13.543550, 13.262370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657953, 13.452459, 13.286822>,  <27.025772, 13.300643, 13.327577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657953, 13.452459, 13.286822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183810, -0.186242, 0.965157,
		0.347342, 0.906235, 0.241022,
		-0.919547, 0.379542, -0.101886,
		26.382090, 13.566322, 13.256257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925709, 13.593556, 13.967848>,  <27.025772, 13.300643, 13.327577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925709, 13.593556, 13.967848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566790, 13.600211, 13.791402>,  <26.351439, 13.604204, 13.685534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566790, 13.600211, 13.791402>,  <26.925709, 13.593556, 13.967848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566790, 13.600211, 13.791402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434417, 0.144102, 0.889110,
		0.078357, 0.989423, -0.122075,
		-0.897297, 0.016637, -0.441114,
		26.297600, 13.605202, 13.659068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574554, 14.119190, 14.284101>,  <26.925709, 13.593556, 13.967848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574554, 14.119190, 14.284101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285261, 13.883927, 14.139322>,  <26.111685, 13.742769, 14.052456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285261, 13.883927, 14.139322>,  <26.574554, 14.119190, 14.284101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285261, 13.883927, 14.139322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559957, 0.192674, 0.805807,
		-0.404204, 0.785460, -0.468691,
		-0.723234, -0.588157, -0.361945,
		26.068291, 13.707480, 14.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951036, 14.448698, 14.507771>,  <26.574554, 14.119190, 14.284101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951036, 14.448698, 14.507771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834530, 14.079756, 14.406243>,  <25.764626, 13.858391, 14.345326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834530, 14.079756, 14.406243>,  <25.951036, 14.448698, 14.507771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834530, 14.079756, 14.406243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671935, 0.008393, 0.740562,
		-0.680931, 0.386253, -0.622208,
		-0.291267, -0.922355, -0.253821,
		25.747150, 13.803049, 14.330097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219444, 14.443528, 14.454127>,  <25.951036, 14.448698, 14.507771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219444, 14.443528, 14.454127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330042, 14.061013, 14.492209>,  <25.396400, 13.831504, 14.515059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.330042, 14.061013, 14.492209>,  <25.219444, 14.443528, 14.454127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330042, 14.061013, 14.492209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646572, -0.111817, 0.754614,
		-0.710982, -0.270204, -0.649226,
		0.276495, -0.956288, 0.095206,
		25.412991, 13.774127, 14.520771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587370, 14.021120, 14.543451>,  <25.219444, 14.443528, 14.454127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587370, 14.021120, 14.543451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896803, 13.812201, 14.686993>,  <25.082462, 13.686849, 14.773118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.896803, 13.812201, 14.686993>,  <24.587370, 14.021120, 14.543451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.896803, 13.812201, 14.686993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516157, -0.190805, 0.834970,
		-0.367633, -0.831142, -0.417191,
		0.773582, -0.522298, 0.358854,
		25.128878, 13.655511, 14.794649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178789, 13.623282, 14.823973>,  <24.587370, 14.021120, 14.543451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178789, 13.623282, 14.823973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539898, 13.574617, 14.988994>,  <24.756563, 13.545418, 15.088006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.539898, 13.574617, 14.988994>,  <24.178789, 13.623282, 14.823973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.539898, 13.574617, 14.988994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424904, -0.103386, 0.899315,
		-0.066747, -0.987174, -0.145023,
		0.902774, -0.121647, 0.412554,
		24.810730, 13.538118, 15.112759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.097349, 13.011761, 15.125905>,  <24.178789, 13.623282, 14.823973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.097349, 13.011761, 15.125905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398783, 13.210507, 15.298060>,  <24.579643, 13.329756, 15.401354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.398783, 13.210507, 15.298060>,  <24.097349, 13.011761, 15.125905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.398783, 13.210507, 15.298060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422269, -0.135876, 0.896229,
		0.503787, -0.857123, 0.107418,
		0.753583, 0.496868, 0.430389,
		24.624857, 13.359568, 15.427177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.109392, 12.668248, 15.710338>,  <24.097349, 13.011761, 15.125905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.109392, 12.668248, 15.710338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310923, 13.006296, 15.781815>,  <24.431841, 13.209125, 15.824700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.310923, 13.006296, 15.781815>,  <24.109392, 12.668248, 15.710338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.310923, 13.006296, 15.781815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378689, 0.030171, 0.925032,
		0.776372, -0.533724, 0.335238,
		0.503827, 0.845120, 0.178691,
		24.462070, 13.259832, 15.835422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.694948, 12.636045, 16.249279>,  <24.109392, 12.668248, 15.710338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.694948, 12.636045, 16.249279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578165, 13.018382, 16.235853>,  <24.508095, 13.247784, 16.227798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.578165, 13.018382, 16.235853>,  <24.694948, 12.636045, 16.249279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.578165, 13.018382, 16.235853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391037, -0.087269, 0.916228,
		0.872840, 0.280626, 0.399249,
		-0.291959, 0.955842, -0.033563,
		24.490578, 13.305135, 16.225784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.649261, 12.803431, 16.918194>,  <24.694948, 12.636045, 16.249279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.649261, 12.803431, 16.918194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476114, 13.134354, 16.774982>,  <24.372225, 13.332908, 16.689056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.476114, 13.134354, 16.774982>,  <24.649261, 12.803431, 16.918194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.476114, 13.134354, 16.774982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581830, 0.046955, 0.811954,
		0.688548, 0.559782, 0.461027,
		-0.432870, 0.827309, -0.358028,
		24.346252, 13.382546, 16.667574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.673037, 13.324197, 17.570440>,  <24.649261, 12.803431, 16.918194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.673037, 13.324197, 17.570440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388796, 13.442301, 17.314983>,  <24.218252, 13.513164, 17.161709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.388796, 13.442301, 17.314983>,  <24.673037, 13.324197, 17.570440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388796, 13.442301, 17.314983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589264, 0.246243, 0.769501,
		0.384465, 0.923139, -0.000994,
		-0.710601, 0.295261, -0.638644,
		24.175615, 13.530879, 17.123390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.689392, 13.996844, 17.237234>,  <24.673037, 13.324197, 17.570440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.689392, 13.996844, 17.237234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087442, 13.999974, 17.276550>,  <25.326273, 14.001852, 17.300140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.087442, 13.999974, 17.276550>,  <24.689392, 13.996844, 17.237234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.087442, 13.999974, 17.276550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090929, 0.312724, -0.945482,
		-0.038137, 0.949812, 0.310489,
		0.995127, 0.007825, 0.098292,
		25.385981, 14.002322, 17.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.919003, 14.524006, 16.782028>,  <24.689392, 13.996844, 17.237234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.919003, 14.524006, 16.782028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262732, 14.329883, 16.846581>,  <25.468969, 14.213408, 16.885313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262732, 14.329883, 16.846581>,  <24.919003, 14.524006, 16.782028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262732, 14.329883, 16.846581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403152, 0.448609, -0.797633,
		0.314699, 0.750484, 0.581152,
		0.859321, -0.485307, 0.161382,
		25.520527, 14.184290, 16.894995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445852, 15.002705, 16.859322>,  <24.919003, 14.524006, 16.782028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445852, 15.002705, 16.859322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646181, 14.680075, 16.733709>,  <25.766378, 14.486497, 16.658342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646181, 14.680075, 16.733709>,  <25.445852, 15.002705, 16.859322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646181, 14.680075, 16.733709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444422, 0.550959, -0.706352,
		0.742743, 0.214195, 0.634392,
		0.500821, -0.806576, -0.314028,
		25.796427, 14.438102, 16.639502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258993, 15.037029, 16.896086>,  <25.445852, 15.002705, 16.859322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258993, 15.037029, 16.896086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081266, 14.832188, 16.602057>,  <25.974630, 14.709283, 16.425638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081266, 14.832188, 16.602057>,  <26.258993, 15.037029, 16.896086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081266, 14.832188, 16.602057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341584, 0.661690, -0.667448,
		0.828194, -0.547647, -0.119073,
		-0.444315, -0.512103, -0.735074,
		25.947971, 14.678556, 16.381535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564234, 15.160286, 16.333588>,  <26.258993, 15.037029, 16.896086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564234, 15.160286, 16.333588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283247, 14.987476, 16.107349>,  <26.114655, 14.883791, 15.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283247, 14.987476, 16.107349>,  <26.564234, 15.160286, 16.333588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283247, 14.987476, 16.107349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418085, 0.392636, -0.819172,
		0.575975, -0.811906, -0.095190,
		-0.702466, -0.432025, -0.565594,
		26.072508, 14.857869, 15.937672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811415, 14.652808, 15.842505>,  <26.564234, 15.160286, 16.333588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811415, 14.652808, 15.842505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483536, 14.833008, 15.701001>,  <26.286808, 14.941128, 15.616099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483536, 14.833008, 15.701001>,  <26.811415, 14.652808, 15.842505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483536, 14.833008, 15.701001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529994, 0.362264, -0.766727,
		-0.217256, -0.815975, -0.535710,
		-0.819699, 0.450499, -0.353758,
		26.237627, 14.968158, 15.594873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.938728, 14.675603, 15.131396>,  <26.811415, 14.652808, 15.842505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.938728, 14.675603, 15.131396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667501, 14.956456, 15.218327>,  <26.504765, 15.124969, 15.270485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.667501, 14.956456, 15.218327>,  <26.938728, 14.675603, 15.131396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.667501, 14.956456, 15.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370604, 0.581954, -0.723866,
		-0.634724, -0.410289, -0.654819,
		-0.678069, 0.702134, 0.217326,
		26.464081, 15.167096, 15.283525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752714, 14.899514, 14.488564>,  <26.938728, 14.675603, 15.131396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752714, 14.899514, 14.488564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648298, 15.192751, 14.739780>,  <26.585648, 15.368692, 14.890511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.648298, 15.192751, 14.739780>,  <26.752714, 14.899514, 14.488564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.648298, 15.192751, 14.739780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185466, 0.676565, -0.712644,
		-0.947344, -0.069549, -0.312575,
		-0.261041, 0.733091, 0.628041,
		26.569986, 15.412679, 14.928192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<10.199408, 17.534397, 21.902451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.838979, 17.392984, 21.801985>,  <9.622722, 17.308136, 21.741705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.838979, 17.392984, 21.801985>,  <10.199408, 17.534397, 21.902451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.838979, 17.392984, 21.801985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320913, -0.154021, -0.934501,
		0.291691, -0.922655, 0.252237,
		-0.901072, -0.353532, -0.251165,
		9.568657, 17.286924, 21.726635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.181752, 16.652071, 21.764585>,  <10.199408, 17.534397, 21.902451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.181752, 16.652071, 21.764585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.842444, 16.787237, 21.601488>,  <9.638860, 16.868336, 21.503630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.842444, 16.787237, 21.601488>,  <10.181752, 16.652071, 21.764585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.842444, 16.787237, 21.601488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193362, -0.519159, -0.832517,
		-0.493000, -0.785042, 0.375048,
		-0.848271, 0.337911, -0.407742,
		9.587964, 16.888611, 21.479166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.854240, 16.034180, 21.432142>,  <10.181752, 16.652071, 21.764585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.854240, 16.034180, 21.432142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.701894, 16.361635, 21.260201>,  <9.610486, 16.558107, 21.157036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.701894, 16.361635, 21.260201>,  <9.854240, 16.034180, 21.432142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.701894, 16.361635, 21.260201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294337, -0.333364, -0.895675,
		-0.876530, -0.467655, -0.113987,
		-0.380868, 0.818637, -0.429852,
		9.587633, 16.607227, 21.131245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.495609, 15.788757, 20.868532>,  <9.854240, 16.034180, 21.432142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.495609, 15.788757, 20.868532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.557586, 16.173927, 20.780195>,  <9.594771, 16.405029, 20.727194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.557586, 16.173927, 20.780195>,  <9.495609, 15.788757, 20.868532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.557586, 16.173927, 20.780195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254455, -0.254896, -0.932888,
		-0.954592, 0.088348, -0.284515,
		0.154940, 0.962924, -0.220841,
		9.604068, 16.462805, 20.713943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.114264, 15.867875, 20.267349>,  <9.495609, 15.788757, 20.868532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.114264, 15.867875, 20.267349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.402925, 16.143091, 20.297861>,  <9.576121, 16.308220, 20.316168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.402925, 16.143091, 20.297861>,  <9.114264, 15.867875, 20.267349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.402925, 16.143091, 20.297861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357898, -0.276507, -0.891881,
		-0.592559, 0.670928, -0.445791,
		0.721653, 0.688040, 0.076278,
		9.619420, 16.349503, 20.320744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.092637, 16.166626, 19.619144>,  <9.114264, 15.867875, 20.267349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.092637, 16.166626, 19.619144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.443435, 16.296007, 19.761274>,  <9.653913, 16.373636, 19.846552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.443435, 16.296007, 19.761274>,  <9.092637, 16.166626, 19.619144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.443435, 16.296007, 19.761274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384327, -0.028352, -0.922762,
		-0.288398, 0.945818, -0.149177,
		0.876994, 0.323455, 0.355327,
		9.706533, 16.393044, 19.867872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.253877, 16.644936, 19.158731>,  <9.092637, 16.166626, 19.619144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.253877, 16.644936, 19.158731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.604444, 16.554819, 19.328972>,  <9.814784, 16.500750, 19.431116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<9.604444, 16.554819, 19.328972>,  <9.253877, 16.644936, 19.158731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.604444, 16.554819, 19.328972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407346, -0.124525, -0.904745,
		0.256828, 0.966301, -0.017365,
		0.876418, -0.225290, 0.425600,
		9.867369, 16.487232, 19.456652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.861800, 16.963081, 18.778748>,  <9.253877, 16.644936, 19.158731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.861800, 16.963081, 18.778748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.035019, 16.674854, 18.995359>,  <10.138950, 16.501919, 19.125326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.035019, 16.674854, 18.995359>,  <9.861800, 16.963081, 18.778748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.035019, 16.674854, 18.995359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525281, -0.286487, -0.801252,
		0.732496, 0.631435, 0.254437,
		0.433046, -0.720566, 0.541532,
		10.164932, 16.458685, 19.157820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.526410, 16.877304, 18.431059>,  <9.861800, 16.963081, 18.778748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.526410, 16.877304, 18.431059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.517595, 16.558634, 18.672659>,  <10.512306, 16.367432, 18.817619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.517595, 16.558634, 18.672659>,  <10.526410, 16.877304, 18.431059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517595, 16.558634, 18.672659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645476, -0.472695, -0.599933,
		0.763462, 0.376648, 0.524654,
		-0.022038, -0.796678, 0.604002,
		10.510983, 16.319630, 18.853859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176246, 16.667376, 18.614368>,  <10.526410, 16.877304, 18.431059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176246, 16.667376, 18.614368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.989383, 16.322674, 18.693504>,  <10.877265, 16.115852, 18.740986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<10.989383, 16.322674, 18.693504>,  <11.176246, 16.667376, 18.614368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989383, 16.322674, 18.693504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719536, -0.500570, -0.481350,
		0.513840, -0.082512, 0.853909,
		-0.467158, -0.861755, 0.197842,
		10.849236, 16.064148, 18.752857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.567598, 16.290703, 19.058739>,  <11.176246, 16.667376, 18.614368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.567598, 16.290703, 19.058739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.327507, 16.038185, 18.862293>,  <11.183453, 15.886675, 18.744425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.327507, 16.038185, 18.862293>,  <11.567598, 16.290703, 19.058739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.327507, 16.038185, 18.862293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786861, -0.576192, -0.221027,
		-0.143443, -0.519106, 0.842587,
		-0.600228, -0.631294, -0.491114,
		11.147439, 15.848797, 18.714958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.757291, 15.625882, 19.163902>,  <11.567598, 16.290703, 19.058739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.757291, 15.625882, 19.163902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.567395, 15.597574, 18.812992>,  <11.453458, 15.580589, 18.602446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.567395, 15.597574, 18.812992>,  <11.757291, 15.625882, 19.163902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567395, 15.597574, 18.812992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706237, -0.625450, -0.331726,
		-0.525217, -0.777048, 0.346906,
		-0.474739, -0.070770, -0.877277,
		11.424973, 15.576344, 18.549809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.034080, 14.997308, 18.978575>,  <11.757291, 15.625882, 19.163902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.034080, 14.997308, 18.978575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.872131, 15.161475, 18.651739>,  <11.774962, 15.259975, 18.455637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.872131, 15.161475, 18.651739>,  <12.034080, 14.997308, 18.978575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.872131, 15.161475, 18.651739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761348, -0.343572, -0.549825,
		-0.506388, -0.844698, -0.173369,
		-0.404871, 0.410419, -0.817090,
		11.750670, 15.284601, 18.406612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.864884, 14.477318, 18.548914>,  <12.034080, 14.997308, 18.978575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.864884, 14.477318, 18.548914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.929745, 14.798386, 18.319330>,  <11.968660, 14.991026, 18.181580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.929745, 14.798386, 18.319330>,  <11.864884, 14.477318, 18.548914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929745, 14.798386, 18.319330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450845, -0.577661, -0.680475,
		-0.877750, -0.148428, -0.455547,
		0.162150, 0.802669, -0.573960,
		11.978390, 15.039186, 18.147142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.157282, 14.222271, 17.959026>,  <11.864884, 14.477318, 18.548914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.157282, 14.222271, 17.959026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.203653, 14.605287, 17.853437>,  <12.231476, 14.835095, 17.790085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.203653, 14.605287, 17.853437>,  <12.157282, 14.222271, 17.959026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203653, 14.605287, 17.853437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598364, -0.279453, -0.750910,
		-0.792793, -0.070899, -0.605353,
		0.115929, 0.957538, -0.263972,
		12.238432, 14.892548, 17.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.043830, 14.289408, 17.190628>,  <12.157282, 14.222271, 17.959026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.043830, 14.289408, 17.190628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.276059, 14.598495, 17.293266>,  <12.415397, 14.783948, 17.354849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.276059, 14.598495, 17.293266>,  <12.043830, 14.289408, 17.190628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.276059, 14.598495, 17.293266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625081, -0.221062, -0.748602,
		-0.521736, 0.595011, -0.611354,
		0.580573, 0.772719, 0.256594,
		12.450232, 14.830311, 17.370245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228080, 14.704224, 16.508581>,  <12.043830, 14.289408, 17.190628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228080, 14.704224, 16.508581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.489604, 14.809891, 16.792200>,  <12.646519, 14.873291, 16.962372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.489604, 14.809891, 16.792200>,  <12.228080, 14.704224, 16.508581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.489604, 14.809891, 16.792200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735866, -0.003820, -0.677116,
		-0.176163, 0.964469, -0.196890,
		0.653810, 0.264167, 0.709047,
		12.685747, 14.889141, 17.004915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635911, 15.100656, 16.165272>,  <12.228080, 14.704224, 16.508581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635911, 15.100656, 16.165272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.853420, 15.022912, 16.491838>,  <12.983926, 14.976266, 16.687778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.853420, 15.022912, 16.491838>,  <12.635911, 15.100656, 16.165272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.853420, 15.022912, 16.491838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832694, 0.003750, -0.553721,
		0.104559, 0.980923, 0.163881,
		0.543773, -0.194360, 0.816416,
		13.016552, 14.964604, 16.736763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.269348, 15.292124, 15.924445>,  <12.635911, 15.100656, 16.165272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.269348, 15.292124, 15.924445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.385113, 15.090275, 16.249800>,  <13.454572, 14.969166, 16.445013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.385113, 15.090275, 16.249800>,  <13.269348, 15.292124, 15.924445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.385113, 15.090275, 16.249800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884060, -0.184877, -0.429253,
		0.366987, 0.843314, 0.392610,
		0.289411, -0.504621, 0.813387,
		13.471936, 14.938889, 16.493816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.888955, 15.430680, 15.994206>,  <13.269348, 15.292124, 15.924445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.888955, 15.430680, 15.994206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.859468, 15.077541, 16.179743>,  <13.841775, 14.865658, 16.291065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.859468, 15.077541, 16.179743>,  <13.888955, 15.430680, 15.994206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.859468, 15.077541, 16.179743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890487, -0.267673, -0.367945,
		0.448997, 0.385919, 0.805896,
		-0.073719, -0.882846, 0.463841,
		13.837352, 14.812688, 16.318895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.422320, 15.370898, 16.533091>,  <13.888955, 15.430680, 15.994206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.422320, 15.370898, 16.533091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.305457, 14.998534, 16.445412>,  <14.235339, 14.775116, 16.392803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.305457, 14.998534, 16.445412>,  <14.422320, 15.370898, 16.533091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305457, 14.998534, 16.445412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925234, -0.217116, -0.311131,
		0.242044, -0.293710, 0.924743,
		-0.292158, -0.930911, -0.219199,
		14.217810, 14.719261, 16.379652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110501, 15.410088, 16.096876>,  <14.422320, 15.370898, 16.533091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110501, 15.410088, 16.096876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.803226, 15.280773, 15.875834>,  <14.618860, 15.203185, 15.743210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.803226, 15.280773, 15.875834>,  <15.110501, 15.410088, 16.096876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.803226, 15.280773, 15.875834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242151, 0.652306, -0.718234,
		0.592658, -0.685555, -0.422813,
		-0.768193, -0.323282, -0.552602,
		14.572768, 15.183787, 15.710053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.514317, 16.092646, 16.075552>,  <15.110501, 15.410088, 16.096876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.514317, 16.092646, 16.075552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.896171, 16.197657, 16.131767>,  <16.125282, 16.260664, 16.165497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.896171, 16.197657, 16.131767>,  <15.514317, 16.092646, 16.075552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.896171, 16.197657, 16.131767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145000, -0.002395, 0.989429,
		0.260090, -0.964921, 0.035780,
		0.954635, 0.262529, 0.140536,
		16.182562, 16.276415, 16.173927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951669, 15.530701, 16.422626>,  <15.514317, 16.092646, 16.075552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951669, 15.530701, 16.422626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.073252, 15.907396, 16.480228>,  <16.146202, 16.133413, 16.514790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.073252, 15.907396, 16.480228>,  <15.951669, 15.530701, 16.422626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.073252, 15.907396, 16.480228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059057, -0.132240, 0.989457,
		0.950853, -0.309256, 0.015422,
		0.303956, 0.941739, 0.144004,
		16.164438, 16.189919, 16.523430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244944, 15.449937, 17.023817>,  <15.951669, 15.530701, 16.422626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244944, 15.449937, 17.023817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.247135, 15.849924, 17.021418>,  <16.248451, 16.089916, 17.019978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.247135, 15.849924, 17.021418>,  <16.244944, 15.449937, 17.023817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247135, 15.849924, 17.021418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011208, 0.006058, 0.999919,
		0.999922, -0.005413, 0.011241,
		0.005481, 0.999967, -0.005997,
		16.248779, 16.149914, 17.019619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739136, 15.691836, 17.560841>,  <16.244944, 15.449937, 17.023817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739136, 15.691836, 17.560841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.477421, 15.985000, 17.486269>,  <16.320393, 16.160898, 17.441526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.477421, 15.985000, 17.486269>,  <16.739136, 15.691836, 17.560841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.477421, 15.985000, 17.486269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139426, 0.125390, 0.982261,
		0.743284, 0.668673, 0.020145,
		-0.654286, 0.732908, -0.186431,
		16.281136, 16.204872, 17.430340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.860630, 16.294886, 18.079639>,  <16.739136, 15.691836, 17.560841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.860630, 16.294886, 18.079639> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.489941, 16.364140, 17.946245>,  <16.267527, 16.405691, 17.866209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.489941, 16.364140, 17.946245>,  <16.860630, 16.294886, 18.079639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489941, 16.364140, 17.946245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292118, 0.226257, 0.929234,
		0.236335, 0.958558, -0.159102,
		-0.926722, 0.173134, -0.333484,
		16.211924, 16.416080, 17.846199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.635349, 16.910742, 18.364758>,  <16.860630, 16.294886, 18.079639>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.635349, 16.910742, 18.364758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.307384, 16.714376, 18.246943>,  <16.110605, 16.596558, 18.176254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.307384, 16.714376, 18.246943>,  <16.635349, 16.910742, 18.364758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.307384, 16.714376, 18.246943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489105, 0.333285, 0.806038,
		-0.297528, 0.804939, -0.513371,
		-0.819911, -0.490911, -0.294538,
		16.061411, 16.567102, 18.158581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.054790, 17.321478, 18.633213>,  <16.635349, 16.910742, 18.364758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.054790, 17.321478, 18.633213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876016, 16.976326, 18.538816>,  <15.768751, 16.769236, 18.482180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.876016, 16.976326, 18.538816>,  <16.054790, 17.321478, 18.633213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876016, 16.976326, 18.538816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383254, -0.053671, 0.922082,
		-0.808310, 0.502555, -0.306714,
		-0.446936, -0.862877, -0.235989,
		15.741935, 16.717463, 18.468019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400350, 17.494364, 18.781847>,  <16.054790, 17.321478, 18.633213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400350, 17.494364, 18.781847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.406496, 17.094685, 18.796621>,  <15.410184, 16.854877, 18.805487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.406496, 17.094685, 18.796621>,  <15.400350, 17.494364, 18.781847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.406496, 17.094685, 18.796621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630254, 0.019000, 0.776156,
		-0.776237, -0.035207, -0.629458,
		0.015367, -0.999199, 0.036938,
		15.411106, 16.794926, 18.807703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.720055, 17.303894, 18.882378>,  <15.400350, 17.494364, 18.781847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.720055, 17.303894, 18.882378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.943663, 16.994606, 19.002129>,  <15.077827, 16.809032, 19.073978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.943663, 16.994606, 19.002129>,  <14.720055, 17.303894, 18.882378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.943663, 16.994606, 19.002129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576523, -0.102976, 0.810566,
		-0.595919, -0.625718, -0.503345,
		0.559019, -0.773222, 0.299376,
		15.111368, 16.762640, 19.091942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.282825, 16.786373, 18.943552>,  <14.720055, 17.303894, 18.882378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.282825, 16.786373, 18.943552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.597301, 16.699053, 19.174810>,  <14.785987, 16.646660, 19.313564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.597301, 16.699053, 19.174810>,  <14.282825, 16.786373, 18.943552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.597301, 16.699053, 19.174810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608342, -0.108752, 0.786189,
		-0.108752, -0.969802, -0.218303,
		-0.786189, 0.218303, -0.578144,
		14.833158, 16.633562, 19.348253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.149147, 16.107992, 19.214306>,  <14.282825, 16.786373, 18.943552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.149147, 16.107992, 19.214306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.417299, 16.294983, 19.444803>,  <14.578191, 16.407177, 19.583101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.417299, 16.294983, 19.444803>,  <14.149147, 16.107992, 19.214306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.417299, 16.294983, 19.444803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607264, -0.100622, 0.788102,
		0.426404, -0.878259, 0.216428,
		0.670380, 0.467479, 0.576241,
		14.618413, 16.435226, 19.617676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171147, 15.656812, 19.825047>,  <14.149147, 16.107992, 19.214306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171147, 15.656812, 19.825047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.325165, 16.012671, 19.923246>,  <14.417575, 16.226185, 19.982166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.325165, 16.012671, 19.923246>,  <14.171147, 15.656812, 19.825047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.325165, 16.012671, 19.923246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567048, 0.018178, 0.823484,
		0.728147, -0.456288, 0.511472,
		0.385044, 0.889647, 0.245501,
		14.440678, 16.279564, 19.996897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.391167, 15.537421, 20.526478>,  <14.171147, 15.656812, 19.825047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.391167, 15.537421, 20.526478> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.359181, 15.929639, 20.454765>,  <14.339991, 16.164968, 20.411737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.359181, 15.929639, 20.454765>,  <14.391167, 15.537421, 20.526478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.359181, 15.929639, 20.454765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608045, 0.094536, 0.788254,
		0.789865, 0.172041, 0.588655,
		-0.079962, 0.980543, -0.179279,
		14.335193, 16.223803, 20.400982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.439005, 15.845682, 21.102488>,  <14.391167, 15.537421, 20.526478>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.439005, 15.845682, 21.102488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.260213, 16.137119, 20.894888>,  <14.152938, 16.311981, 20.770329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.260213, 16.137119, 20.894888>,  <14.439005, 15.845682, 21.102488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.260213, 16.137119, 20.894888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569222, 0.215904, 0.793330,
		0.690069, 0.650028, 0.318226,
		-0.446980, 0.728593, -0.518999,
		14.126119, 16.355698, 20.739187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.393928, 16.393898, 21.610619>,  <14.439005, 15.845682, 21.102488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.393928, 16.393898, 21.610619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145044, 16.543404, 21.335472>,  <13.995714, 16.633106, 21.170385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.145044, 16.543404, 21.335472>,  <14.393928, 16.393898, 21.610619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.145044, 16.543404, 21.335472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602867, 0.331762, 0.725593,
		0.499407, 0.866161, 0.018905,
		-0.622209, 0.373764, -0.687864,
		13.958382, 16.655533, 21.129112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.200926, 17.191586, 21.790270>,  <14.393928, 16.393898, 21.610619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.200926, 17.191586, 21.790270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.924065, 17.005198, 21.569798>,  <13.757948, 16.893366, 21.437515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.924065, 17.005198, 21.569798>,  <14.200926, 17.191586, 21.790270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924065, 17.005198, 21.569798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706798, 0.282960, 0.648360,
		-0.146153, 0.838336, -0.525197,
		-0.692153, -0.465968, -0.551179,
		13.716418, 16.865408, 21.404444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.706276, 17.777643, 21.557951>,  <14.200926, 17.191586, 21.790270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.706276, 17.777643, 21.557951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.512438, 17.429150, 21.526661>,  <13.396134, 17.220053, 21.507887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.512438, 17.429150, 21.526661>,  <13.706276, 17.777643, 21.557951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.512438, 17.429150, 21.526661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668228, 0.311001, 0.675832,
		-0.564480, 0.379777, -0.732893,
		-0.484596, -0.871233, -0.078224,
		13.367059, 17.167780, 21.503193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.004850, 17.933218, 21.547056>,  <13.706276, 17.777643, 21.557951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.004850, 17.933218, 21.547056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.981816, 17.545744, 21.643661>,  <12.967996, 17.313259, 21.701626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.981816, 17.545744, 21.643661>,  <13.004850, 17.933218, 21.547056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.981816, 17.545744, 21.643661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810747, 0.186541, 0.554879,
		-0.582557, -0.163854, -0.796103,
		-0.057586, -0.968687, 0.241515,
		12.964540, 17.255138, 21.716116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<12.211266, 17.723875, 21.567610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.419426, 17.454180, 21.777212>,  <12.544322, 17.292362, 21.902973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.419426, 17.454180, 21.777212>,  <12.211266, 17.723875, 21.567610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.419426, 17.454180, 21.777212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661581, 0.069637, 0.746633,
		-0.539900, -0.735222, -0.409825,
		0.520402, -0.674240, 0.524006,
		12.575546, 17.251907, 21.934414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.577742, 17.376020, 21.885740>,  <12.211266, 17.723875, 21.567610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.577742, 17.376020, 21.885740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.893722, 17.244762, 22.092932>,  <12.083309, 17.166008, 22.217247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.893722, 17.244762, 22.092932>,  <11.577742, 17.376020, 21.885740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.893722, 17.244762, 22.092932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532448, 0.051860, 0.844873,
		-0.304103, -0.943203, -0.133753,
		0.789950, -0.328145, 0.517977,
		12.130707, 17.146318, 22.248325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357860, 16.742506, 22.155212>,  <11.577742, 17.376020, 21.885740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357860, 16.742506, 22.155212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.650802, 16.895515, 22.380541>,  <11.826567, 16.987322, 22.515738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.650802, 16.895515, 22.380541>,  <11.357860, 16.742506, 22.155212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.650802, 16.895515, 22.380541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568216, -0.112550, 0.815146,
		0.375217, -0.917064, 0.134931,
		0.732354, 0.382526, 0.563321,
		11.870508, 17.010273, 22.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.492232, 16.383383, 22.782446>,  <11.357860, 16.742506, 22.155212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.492232, 16.383383, 22.782446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.619598, 16.757584, 22.843697>,  <11.696018, 16.982103, 22.880447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.619598, 16.757584, 22.843697>,  <11.492232, 16.383383, 22.782446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.619598, 16.757584, 22.843697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672308, 0.108982, 0.732205,
		0.668291, -0.336094, 0.663647,
		0.318415, 0.935502, 0.153127,
		11.715123, 17.038235, 22.889635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.290410, 16.584728, 23.469742>,  <11.492232, 16.383383, 22.782446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.290410, 16.584728, 23.469742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.427907, 16.945419, 23.364878>,  <11.510406, 17.161835, 23.301960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.427907, 16.945419, 23.364878>,  <11.290410, 16.584728, 23.469742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427907, 16.945419, 23.364878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406316, 0.394505, 0.824180,
		0.846610, -0.176786, 0.501994,
		0.343743, 0.901727, -0.262160,
		11.531030, 17.215937, 23.286230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.681886, 16.832102, 24.040478>,  <11.290410, 16.584728, 23.469742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.681886, 16.832102, 24.040478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.559852, 17.145939, 23.824575>,  <11.486631, 17.334242, 23.695034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.559852, 17.145939, 23.824575>,  <11.681886, 16.832102, 24.040478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.559852, 17.145939, 23.824575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407070, 0.404950, 0.818724,
		0.860940, 0.469499, 0.195840,
		-0.305085, 0.784593, -0.539757,
		11.468327, 17.381317, 23.662649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.896122, 17.519436, 24.411240>,  <11.681886, 16.832102, 24.040478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.896122, 17.519436, 24.411240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.591118, 17.631546, 24.177994>,  <11.408115, 17.698812, 24.038046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.591118, 17.631546, 24.177994>,  <11.896122, 17.519436, 24.411240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.591118, 17.631546, 24.177994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327305, 0.610335, 0.721361,
		0.558076, 0.740902, -0.373651,
		-0.762511, 0.280277, -0.583115,
		11.362365, 17.715630, 24.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.840261, 18.102304, 24.548429>,  <11.896122, 17.519436, 24.411240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.840261, 18.102304, 24.548429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.485504, 18.032259, 24.377430>,  <11.272650, 17.990232, 24.274830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.485504, 18.032259, 24.377430>,  <11.840261, 18.102304, 24.548429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.485504, 18.032259, 24.377430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439153, 0.606813, 0.662512,
		0.143396, 0.775315, -0.615081,
		-0.886894, -0.175113, -0.427497,
		11.219436, 17.979725, 24.249182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.494031, 18.647423, 24.466690>,  <11.840261, 18.102304, 24.548429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.494031, 18.647423, 24.466690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.189857, 18.387661, 24.465281>,  <11.007354, 18.231804, 24.464434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.189857, 18.387661, 24.465281>,  <11.494031, 18.647423, 24.466690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.189857, 18.387661, 24.465281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529747, 0.617158, 0.581793,
		-0.375645, 0.444282, -0.813329,
		-0.760433, -0.649407, -0.003525,
		10.961727, 18.192839, 24.464224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.927191, 19.034679, 24.436411>,  <11.494031, 18.647423, 24.466690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.927191, 19.034679, 24.436411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.782126, 18.678478, 24.546307>,  <10.695087, 18.464758, 24.612244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.782126, 18.678478, 24.546307>,  <10.927191, 19.034679, 24.436411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.782126, 18.678478, 24.546307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599796, 0.448671, 0.662525,
		-0.713247, 0.075485, -0.696836,
		-0.362661, -0.890504, 0.274738,
		10.673328, 18.411327, 24.628727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.322937, 19.223114, 24.587461>,  <10.927191, 19.034679, 24.436411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.322937, 19.223114, 24.587461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.317492, 18.864889, 24.765352>,  <10.314224, 18.649954, 24.872086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.317492, 18.864889, 24.765352>,  <10.322937, 19.223114, 24.587461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.317492, 18.864889, 24.765352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625515, 0.354619, 0.694964,
		-0.780093, -0.268722, -0.565016,
		-0.013614, -0.895563, 0.444726,
		10.313408, 18.596220, 24.898769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.692877, 19.162716, 24.818962>,  <10.322937, 19.223114, 24.587461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.692877, 19.162716, 24.818962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.892823, 18.884516, 25.025423>,  <10.012792, 18.717596, 25.149300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.892823, 18.884516, 25.025423>,  <9.692877, 19.162716, 24.818962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.892823, 18.884516, 25.025423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406596, 0.337757, 0.848882,
		-0.764730, -0.634194, -0.113954,
		0.499867, -0.695499, 0.516154,
		10.042784, 18.675867, 25.180269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.275039, 18.738106, 25.461388>,  <9.692877, 19.162716, 24.818962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.275039, 18.738106, 25.461388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.665010, 18.750534, 25.549520>,  <9.898993, 18.757992, 25.602400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.665010, 18.750534, 25.549520>,  <9.275039, 18.738106, 25.461388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.665010, 18.750534, 25.549520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214639, 0.392369, 0.894414,
		-0.058661, -0.919283, 0.389201,
		0.974930, 0.031070, 0.220331,
		9.957490, 18.759855, 25.615620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.342227, 18.470160, 26.164248>,  <9.275039, 18.738106, 25.461388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.342227, 18.470160, 26.164248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.648157, 18.714066, 26.081079>,  <9.831716, 18.860409, 26.031179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.648157, 18.714066, 26.081079>,  <9.342227, 18.470160, 26.164248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.648157, 18.714066, 26.081079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169956, 0.502275, 0.847842,
		0.621414, -0.613114, 0.487786,
		0.764826, 0.609763, -0.207918,
		9.877605, 18.896994, 26.018703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.662604, 18.414644, 26.790968>,  <9.342227, 18.470160, 26.164248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.662604, 18.414644, 26.790968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.805224, 18.743015, 26.612551>,  <9.890797, 18.940037, 26.505501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.805224, 18.743015, 26.612551>,  <9.662604, 18.414644, 26.790968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.805224, 18.743015, 26.612551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054202, 0.458440, 0.887071,
		0.932703, -0.340461, 0.118961,
		0.356549, 0.820926, -0.446042,
		9.912189, 18.989292, 26.478739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.293650, 18.570166, 27.090286>,  <9.662604, 18.414644, 26.790968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.293650, 18.570166, 27.090286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.147643, 18.912628, 26.943995>,  <10.060039, 19.118107, 26.856220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.147643, 18.912628, 26.943995>,  <10.293650, 18.570166, 27.090286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.147643, 18.912628, 26.943995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049485, 0.410120, 0.910688,
		0.929685, 0.314318, -0.192068,
		-0.365017, 0.856157, -0.365728,
		10.038138, 19.169476, 26.834276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.663269, 19.080954, 27.455666>,  <10.293650, 18.570166, 27.090286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.663269, 19.080954, 27.455666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.338937, 19.264534, 27.310383>,  <10.144338, 19.374681, 27.223213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.338937, 19.264534, 27.310383>,  <10.663269, 19.080954, 27.455666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.338937, 19.264534, 27.310383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201794, 0.363303, 0.909555,
		0.549395, 0.810787, -0.201964,
		-0.810830, 0.458949, -0.363209,
		10.095688, 19.402218, 27.201420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.697742, 19.778011, 27.716713>,  <10.663269, 19.080954, 27.455666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.697742, 19.778011, 27.716713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.314737, 19.719631, 27.617216>,  <10.084935, 19.684603, 27.557518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.314737, 19.719631, 27.617216>,  <10.697742, 19.778011, 27.716713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.314737, 19.719631, 27.617216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280852, 0.275834, 0.919259,
		-0.065554, 0.950060, -0.305104,
		-0.957510, -0.145950, -0.248744,
		10.027484, 19.675846, 27.542593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.348832, 20.355635, 28.053356>,  <10.697742, 19.778011, 27.716713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.348832, 20.355635, 28.053356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.034568, 20.126310, 27.960360>,  <9.846009, 19.988716, 27.904562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.034568, 20.126310, 27.960360>,  <10.348832, 20.355635, 28.053356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.034568, 20.126310, 27.960360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436408, 0.247223, 0.865118,
		-0.438503, 0.781151, -0.444430,
		-0.785661, -0.573309, -0.232493,
		9.798869, 19.954317, 27.890612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.854486, 20.670624, 28.213446>,  <10.348832, 20.355635, 28.053356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.854486, 20.670624, 28.213446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.676731, 20.312370, 28.205904>,  <9.570078, 20.097418, 28.201380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.676731, 20.312370, 28.205904>,  <9.854486, 20.670624, 28.213446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.676731, 20.312370, 28.205904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427782, 0.193669, 0.882890,
		-0.787097, 0.400411, -0.469201,
		-0.444388, -0.895636, -0.018853,
		9.543415, 20.043680, 28.200249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.090918, 20.801800, 28.218716>,  <9.854486, 20.670624, 28.213446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.090918, 20.801800, 28.218716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.176751, 20.439754, 28.365534>,  <9.228251, 20.222527, 28.453625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.176751, 20.439754, 28.365534>,  <9.090918, 20.801800, 28.218716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.176751, 20.439754, 28.365534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656247, 0.144723, 0.740537,
		-0.723390, -0.399780, -0.562923,
		0.214584, -0.905114, 0.367046,
		9.241126, 20.168221, 28.475647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.497993, 20.463993, 28.305445>,  <9.090918, 20.801800, 28.218716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.497993, 20.463993, 28.305445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.773363, 20.304413, 28.547737>,  <8.938584, 20.208664, 28.693113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.773363, 20.304413, 28.547737>,  <8.497993, 20.463993, 28.305445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.773363, 20.304413, 28.547737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554704, 0.248474, 0.794080,
		-0.467308, -0.882666, -0.050245,
		0.688423, -0.398951, 0.605732,
		8.979890, 20.184727, 28.729456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.002519, 19.940912, 28.709015>,  <8.497993, 20.463993, 28.305445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.002519, 19.940912, 28.709015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.346625, 20.065659, 28.870348>,  <8.553089, 20.140507, 28.967148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.346625, 20.065659, 28.870348>,  <8.002519, 19.940912, 28.709015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.346625, 20.065659, 28.870348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506288, 0.429292, 0.747918,
		0.060102, -0.847613, 0.527200,
		0.860268, 0.311867, 0.403335,
		8.604706, 20.159218, 28.991348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.278446, 19.729115, 28.757147>,  <8.002519, 19.940912, 28.709015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.278446, 19.729115, 28.757147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.946756, 19.519056, 28.833679>,  <6.747742, 19.393023, 28.879599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.946756, 19.519056, 28.833679>,  <7.278446, 19.729115, 28.757147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.946756, 19.519056, 28.833679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060588, -0.424770, -0.903271,
		0.555620, -0.737424, 0.384048,
		-0.829226, -0.525144, 0.191332,
		6.697988, 19.361513, 28.891079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.383399, 18.986244, 28.584114>,  <7.278446, 19.729115, 28.757147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.383399, 18.986244, 28.584114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.995415, 19.083525, 28.581848>,  <6.762625, 19.141893, 28.580488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.995415, 19.083525, 28.581848>,  <7.383399, 18.986244, 28.584114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.995415, 19.083525, 28.581848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123816, -0.513587, -0.849057,
		-0.209403, -0.822849, 0.528271,
		-0.969959, 0.243204, -0.005665,
		6.704428, 19.156487, 28.580149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.870002, 18.383186, 28.646544>,  <7.383399, 18.986244, 28.584114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.870002, 18.383186, 28.646544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.651535, 18.664013, 28.463762>,  <6.520454, 18.832508, 28.354094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.651535, 18.664013, 28.463762>,  <6.870002, 18.383186, 28.646544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.651535, 18.664013, 28.463762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127818, -0.608959, -0.782835,
		-0.827866, -0.369153, 0.422331,
		-0.546169, 0.702065, -0.456952,
		6.487684, 18.874632, 28.326677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.405278, 17.966969, 28.429110>,  <6.870002, 18.383186, 28.646544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.405278, 17.966969, 28.429110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.354326, 18.287207, 28.194906>,  <6.323755, 18.479349, 28.054384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.354326, 18.287207, 28.194906>,  <6.405278, 17.966969, 28.429110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.354326, 18.287207, 28.194906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025659, -0.587461, -0.808845,
		-0.991522, -0.118054, 0.054288,
		-0.127380, 0.800595, -0.585510,
		6.316112, 18.527386, 28.019253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.936324, 17.795296, 27.956778>,  <6.405278, 17.966969, 28.429110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.936324, 17.795296, 27.956778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.138485, 18.095287, 27.786083>,  <6.259782, 18.275282, 27.683666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.138485, 18.095287, 27.786083>,  <5.936324, 17.795296, 27.956778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.138485, 18.095287, 27.786083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133803, -0.556678, -0.819882,
		-0.852446, 0.357273, -0.381696,
		0.505403, 0.749977, -0.426734,
		6.290106, 18.320280, 27.658064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.722926, 17.712769, 27.343998>,  <5.936324, 17.795296, 27.956778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.722926, 17.712769, 27.343998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.055079, 17.935181, 27.329601>,  <6.254370, 18.068628, 27.320963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.055079, 17.935181, 27.329601>,  <5.722926, 17.712769, 27.343998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.055079, 17.935181, 27.329601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156895, -0.295308, -0.942432,
		-0.534649, 0.776932, -0.332457,
		0.830382, 0.556030, -0.035989,
		6.304193, 18.101990, 27.318804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.729447, 18.016260, 26.661974>,  <5.722926, 17.712769, 27.343998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.729447, 18.016260, 26.661974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.106170, 18.028313, 26.795895>,  <6.332203, 18.035543, 26.876247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.106170, 18.028313, 26.795895>,  <5.729447, 18.016260, 26.661974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.106170, 18.028313, 26.795895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317830, -0.404175, -0.857687,
		0.109476, 0.914185, -0.390231,
		0.941806, 0.030131, 0.334803,
		6.388711, 18.037352, 26.896336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.035322, 18.086847, 26.160009>,  <5.729447, 18.016260, 26.661974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.035322, 18.086847, 26.160009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.377597, 18.022072, 26.356609>,  <6.582963, 17.983206, 26.474569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.377597, 18.022072, 26.356609>,  <6.035322, 18.086847, 26.160009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.377597, 18.022072, 26.356609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403701, -0.385327, -0.829788,
		0.323763, 0.908460, -0.264345,
		0.855689, -0.161939, 0.491501,
		6.634304, 17.973490, 26.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.519027, 18.389168, 25.799814>,  <6.035322, 18.086847, 26.160009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.519027, 18.389168, 25.799814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.709360, 18.115446, 26.020836>,  <6.823560, 17.951214, 26.153448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<6.709360, 18.115446, 26.020836>,  <6.519027, 18.389168, 25.799814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.709360, 18.115446, 26.020836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558598, -0.250139, -0.790822,
		0.679376, 0.684953, 0.263225,
		0.475833, -0.684302, 0.552552,
		6.852109, 17.910156, 26.186602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.259961, 18.508213, 25.707108>,  <6.519027, 18.389168, 25.799814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.259961, 18.508213, 25.707108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.247887, 18.124926, 25.820881>,  <7.240642, 17.894953, 25.889145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.247887, 18.124926, 25.820881>,  <7.259961, 18.508213, 25.707108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.247887, 18.124926, 25.820881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589844, -0.246812, -0.768874,
		0.806953, 0.144564, 0.572650,
		-0.030185, -0.958220, 0.284436,
		7.238831, 17.837460, 25.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.925598, 18.280172, 25.690645>,  <7.259961, 18.508213, 25.707108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.925598, 18.280172, 25.690645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.697768, 17.952936, 25.658867>,  <7.561070, 17.756594, 25.639799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<7.697768, 17.952936, 25.658867>,  <7.925598, 18.280172, 25.690645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.697768, 17.952936, 25.658867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552349, -0.309385, -0.774074,
		0.608684, -0.484775, 0.628090,
		-0.569573, -0.818092, -0.079447,
		7.526896, 17.707508, 25.635033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.398481, 17.781088, 25.722895>,  <7.925598, 18.280172, 25.690645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.398481, 17.781088, 25.722895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.081441, 17.620811, 25.539055>,  <7.891217, 17.524647, 25.428751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.081441, 17.620811, 25.539055>,  <8.398481, 17.781088, 25.722895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.081441, 17.620811, 25.539055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598295, -0.365703, -0.712955,
		0.117596, -0.840065, 0.529586,
		-0.792600, -0.400689, -0.459602,
		7.843661, 17.500605, 25.401175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.555092, 17.063370, 25.486910>,  <8.398481, 17.781088, 25.722895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.555092, 17.063370, 25.486910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.255831, 17.158236, 25.239033>,  <8.076274, 17.215155, 25.090307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.255831, 17.158236, 25.239033>,  <8.555092, 17.063370, 25.486910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.255831, 17.158236, 25.239033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530985, -0.346057, -0.773498,
		-0.397898, -0.907742, 0.132971,
		-0.748152, 0.237168, -0.619693,
		8.031385, 17.229385, 25.053125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.540195, 16.537952, 25.027597>,  <8.555092, 17.063370, 25.486910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.540195, 16.537952, 25.027597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.325583, 16.822117, 24.845411>,  <8.196815, 16.992615, 24.736099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.325583, 16.822117, 24.845411>,  <8.540195, 16.537952, 25.027597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.325583, 16.822117, 24.845411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397421, -0.263414, -0.879016,
		-0.744438, -0.652633, -0.141002,
		-0.536533, 0.710411, -0.455466,
		8.164622, 17.035240, 24.708771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.354372, 16.263372, 24.302090>,  <8.540195, 16.537952, 25.027597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.354372, 16.263372, 24.302090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.330050, 16.662485, 24.312958>,  <8.315456, 16.901953, 24.319479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.330050, 16.662485, 24.312958>,  <8.354372, 16.263372, 24.302090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.330050, 16.662485, 24.312958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417251, 0.050137, -0.907407,
		-0.906755, -0.043839, -0.419373,
		-0.060806, 0.997780, 0.027170,
		8.311808, 16.961819, 24.321108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.082041, 16.428751, 23.610868>,  <8.354372, 16.263372, 24.302090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.082041, 16.428751, 23.610868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.248796, 16.762985, 23.753977>,  <8.348848, 16.963526, 23.839842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.248796, 16.762985, 23.753977>,  <8.082041, 16.428751, 23.610868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.248796, 16.762985, 23.753977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246807, 0.274758, -0.929298,
		-0.874810, 0.475712, -0.091686,
		0.416887, 0.835587, 0.357770,
		8.373861, 17.013660, 23.861307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.876237, 16.930681, 23.095264>,  <8.082041, 16.428751, 23.610868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.876237, 16.930681, 23.095264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.187127, 17.095243, 23.285704>,  <8.373661, 17.193981, 23.399967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.187127, 17.095243, 23.285704>,  <7.876237, 16.930681, 23.095264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.187127, 17.095243, 23.285704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356837, 0.335016, -0.872027,
		-0.518255, 0.847650, 0.113579,
		0.777225, 0.411403, 0.476097,
		8.420295, 17.218664, 23.428534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.997369, 17.651484, 22.870668>,  <7.876237, 16.930681, 23.095264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.997369, 17.651484, 22.870668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.333426, 17.510237, 23.035334>,  <8.535061, 17.425489, 23.134132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.333426, 17.510237, 23.035334>,  <7.997369, 17.651484, 22.870668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.333426, 17.510237, 23.035334> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486904, 0.156698, -0.859285,
		0.238921, 0.922363, 0.303583,
		0.840144, -0.353117, 0.411664,
		8.585469, 17.404301, 23.158833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.556586, 18.183683, 22.658928>,  <7.997369, 17.651484, 22.870668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.556586, 18.183683, 22.658928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.712219, 17.821373, 22.726078>,  <8.805599, 17.603987, 22.766369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<8.712219, 17.821373, 22.726078>,  <8.556586, 18.183683, 22.658928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.712219, 17.821373, 22.726078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525299, 0.068448, -0.848160,
		0.756754, 0.418190, 0.502436,
		0.389082, -0.905777, 0.167877,
		8.828944, 17.549641, 22.776442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.062284, 18.256226, 22.320999>,  <8.556586, 18.183683, 22.658928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.062284, 18.256226, 22.320999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.050353, 17.859987, 22.374416>,  <9.043194, 17.622244, 22.406467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.050353, 17.859987, 22.374416>,  <9.062284, 18.256226, 22.320999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.050353, 17.859987, 22.374416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501866, -0.130385, -0.855062,
		0.864431, 0.041515, 0.501034,
		-0.029829, -0.990594, 0.133544,
		9.041405, 17.562809, 22.414480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.729511, 18.089771, 22.115320>,  <9.062284, 18.256226, 22.320999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.729511, 18.089771, 22.115320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.502687, 17.760794, 22.097300>,  <9.366591, 17.563408, 22.086487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.502687, 17.760794, 22.097300>,  <9.729511, 18.089771, 22.115320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.502687, 17.760794, 22.097300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402840, -0.229212, -0.886105,
		0.718443, -0.520626, 0.461290,
		-0.567062, -0.822442, -0.045053,
		9.332568, 17.514061, 22.083784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.151733, 14.869581, 8.573279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.438736, 14.719447, 8.807991>,  <31.610937, 14.629367, 8.948818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.438736, 14.719447, 8.807991>,  <31.151733, 14.869581, 8.573279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438736, 14.719447, 8.807991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518355, -0.274999, -0.809743,
		0.465288, 0.885155, -0.002757,
		0.717506, -0.375334, 0.586778,
		31.653988, 14.606847, 8.984025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502665, 15.124925, 8.359012>,  <31.151733, 14.869581, 8.573279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502665, 15.124925, 8.359012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.482815, 15.514804, 8.446189>,  <30.470905, 15.748732, 8.498495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.482815, 15.514804, 8.446189>,  <30.502665, 15.124925, 8.359012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482815, 15.514804, 8.446189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458699, -0.216080, 0.861919,
		0.887205, -0.057198, 0.457817,
		-0.049625, 0.974699, 0.217944,
		30.467928, 15.807214, 8.511572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811457, 15.359390, 9.017604>,  <30.502665, 15.124925, 8.359012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811457, 15.359390, 9.017604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.484493, 15.561558, 8.907042>,  <30.288315, 15.682858, 8.840704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.484493, 15.561558, 8.907042>,  <30.811457, 15.359390, 9.017604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484493, 15.561558, 8.907042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419003, -0.192357, 0.887375,
		0.395327, 0.841161, 0.369006,
		-0.817406, 0.505418, -0.276405,
		30.239271, 15.713183, 8.824120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593552, 15.572935, 9.580014>,  <30.811457, 15.359390, 9.017604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593552, 15.572935, 9.580014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268335, 15.669721, 9.368196>,  <30.073206, 15.727792, 9.241104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.268335, 15.669721, 9.368196>,  <30.593552, 15.572935, 9.580014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268335, 15.669721, 9.368196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577670, -0.221934, 0.785521,
		0.072544, 0.944563, 0.320217,
		-0.813040, 0.241965, -0.529546,
		30.024424, 15.742311, 9.209332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870096, 16.071404, 10.084039>,  <30.593552, 15.572935, 9.580014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870096, 16.071404, 10.084039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.748657, 16.449713, 10.130236>,  <30.675793, 16.676699, 10.157954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.748657, 16.449713, 10.130236>,  <30.870096, 16.071404, 10.084039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748657, 16.449713, 10.130236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749759, -0.311940, 0.583571,
		0.587953, 0.090580, 0.803807,
		-0.303599, 0.945774, 0.115493,
		30.657578, 16.733444, 10.164884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627163, 16.009815, 10.725051>,  <30.870096, 16.071404, 10.084039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627163, 16.009815, 10.725051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.492348, 16.347073, 10.557471>,  <30.411459, 16.549427, 10.456923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.492348, 16.347073, 10.557471>,  <30.627163, 16.009815, 10.725051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492348, 16.347073, 10.557471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894627, -0.148159, 0.421536,
		0.293343, 0.516877, 0.804232,
		-0.337036, 0.843141, -0.418950,
		30.391237, 16.600016, 10.431787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339746, 16.455338, 11.285803>,  <30.627163, 16.009815, 10.725051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339746, 16.455338, 11.285803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.163214, 16.532988, 10.935365>,  <30.057295, 16.579576, 10.725101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.163214, 16.532988, 10.935365>,  <30.339746, 16.455338, 11.285803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163214, 16.532988, 10.935365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896831, -0.128448, 0.423314,
		-0.030358, 0.972531, 0.230784,
		-0.441330, 0.194124, -0.876096,
		30.030815, 16.591225, 10.672536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847101, 16.979145, 11.266958>,  <30.339746, 16.455338, 11.285803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847101, 16.979145, 11.266958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.719997, 16.733875, 10.977672>,  <29.643734, 16.586712, 10.804100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.719997, 16.733875, 10.977672>,  <29.847101, 16.979145, 11.266958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719997, 16.733875, 10.977672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848075, -0.157302, 0.505989,
		-0.424024, 0.774126, -0.470035,
		-0.317762, -0.613177, -0.723216,
		29.624668, 16.549923, 10.760707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255676, 17.307196, 10.880303>,  <29.847101, 16.979145, 11.266958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255676, 17.307196, 10.880303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.244612, 16.909143, 10.918149>,  <29.237974, 16.670313, 10.940856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.244612, 16.909143, 10.918149>,  <29.255676, 17.307196, 10.880303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244612, 16.909143, 10.918149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907681, 0.064653, 0.414652,
		-0.418749, -0.074410, -0.905048,
		-0.027659, -0.995130, 0.094614,
		29.236315, 16.610605, 10.946533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692001, 17.119947, 10.619630>,  <29.255676, 17.307196, 10.880303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692001, 17.119947, 10.619630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.798086, 16.861315, 10.905732>,  <28.861736, 16.706135, 11.077394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.798086, 16.861315, 10.905732>,  <28.692001, 17.119947, 10.619630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798086, 16.861315, 10.905732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891848, 0.117413, 0.436831,
		-0.366428, -0.753753, -0.545515,
		0.265212, -0.646584, 0.715257,
		28.877649, 16.667339, 11.120309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120440, 16.775297, 10.706733>,  <28.692001, 17.119947, 10.619630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120440, 16.775297, 10.706733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.325905, 16.676212, 11.035315>,  <28.449184, 16.616760, 11.232464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.325905, 16.676212, 11.035315>,  <28.120440, 16.775297, 10.706733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325905, 16.676212, 11.035315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857419, -0.113207, 0.502012,
		-0.031360, -0.962197, -0.270544,
		0.513662, -0.247713, 0.821456,
		28.480003, 16.601898, 11.281752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884163, 16.132637, 10.957203>,  <28.120440, 16.775297, 10.706733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884163, 16.132637, 10.957203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.049774, 16.312450, 11.273810>,  <28.149141, 16.420338, 11.463775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.049774, 16.312450, 11.273810>,  <27.884163, 16.132637, 10.957203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049774, 16.312450, 11.273810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775111, -0.281811, 0.565496,
		0.477267, -0.847646, 0.231759,
		0.414029, 0.449532, 0.791519,
		28.173983, 16.447309, 11.511266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.598568, 15.772316, 11.414193>,  <27.884163, 16.132637, 10.957203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.598568, 15.772316, 11.414193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.749920, 16.088940, 11.606136>,  <27.840731, 16.278913, 11.721302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.749920, 16.088940, 11.606136>,  <27.598568, 15.772316, 11.414193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.749920, 16.088940, 11.606136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718831, -0.075338, 0.691091,
		0.583191, -0.606430, 0.540492,
		0.378379, 0.791560, 0.479857,
		27.863434, 16.326408, 11.750093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.695765, 15.571138, 12.184806>,  <27.598568, 15.772316, 11.414193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.695765, 15.571138, 12.184806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.649366, 15.966091, 12.141688>,  <27.621527, 16.203064, 12.115818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.649366, 15.966091, 12.141688>,  <27.695765, 15.571138, 12.184806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.649366, 15.966091, 12.141688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627856, 0.011204, 0.778249,
		0.769638, 0.157953, 0.618635,
		-0.115995, 0.987383, -0.107795,
		27.614567, 16.262306, 12.109350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801203, 15.847906, 12.871457>,  <27.695765, 15.571138, 12.184806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801203, 15.847906, 12.871457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.596548, 16.109213, 12.648220>,  <27.473755, 16.265997, 12.514277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.596548, 16.109213, 12.648220>,  <27.801203, 15.847906, 12.871457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596548, 16.109213, 12.648220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700975, 0.058243, 0.710804,
		0.496850, 0.754884, 0.428124,
		-0.511639, 0.653267, -0.558093,
		27.443056, 16.305193, 12.480792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430433, 16.185402, 13.371681>,  <27.801203, 15.847906, 12.871457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430433, 16.185402, 13.371681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.235041, 16.287010, 13.037769>,  <27.117805, 16.347975, 12.837422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.235041, 16.287010, 13.037769>,  <27.430433, 16.185402, 13.371681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235041, 16.287010, 13.037769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853906, 0.057668, 0.517223,
		0.179525, 0.965478, 0.188739,
		-0.488483, 0.254019, -0.834780,
		27.088495, 16.363216, 12.787335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870964, 16.636520, 13.615384>,  <27.430433, 16.185402, 13.371681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870964, 16.636520, 13.615384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.753222, 16.560280, 13.240786>,  <26.682575, 16.514536, 13.016026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.753222, 16.560280, 13.240786>,  <26.870964, 16.636520, 13.615384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753222, 16.560280, 13.240786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952526, 0.138255, 0.271257,
		0.077774, 0.971883, -0.222249,
		-0.294357, -0.190601, -0.936496,
		26.664915, 16.503099, 12.959837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325752, 17.150892, 13.465836>,  <26.870964, 16.636520, 13.615384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325752, 17.150892, 13.465836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.293692, 16.836472, 13.220657>,  <26.274454, 16.647820, 13.073550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.293692, 16.836472, 13.220657>,  <26.325752, 17.150892, 13.465836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.293692, 16.836472, 13.220657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961741, -0.100627, 0.254809,
		-0.261972, 0.609918, -0.747911,
		-0.080152, -0.786050, -0.612945,
		26.269646, 16.600657, 13.036774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.789776, 17.309532, 13.004688>,  <26.325752, 17.150892, 13.465836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.789776, 17.309532, 13.004688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.820404, 16.910822, 12.995098>,  <25.838781, 16.671597, 12.989344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.820404, 16.910822, 12.995098>,  <25.789776, 17.309532, 13.004688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820404, 16.910822, 12.995098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927829, -0.080036, 0.364316,
		-0.365061, -0.005650, -0.930966,
		0.076569, -0.996776, -0.023975,
		25.843374, 16.611790, 12.987906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168398, 17.060421, 12.432683>,  <25.789776, 17.309532, 13.004688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168398, 17.060421, 12.432683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.274351, 16.762066, 12.677137>,  <25.337923, 16.583052, 12.823810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.274351, 16.762066, 12.677137>,  <25.168398, 17.060421, 12.432683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.274351, 16.762066, 12.677137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964099, -0.217146, 0.152842,
		0.018702, -0.629680, -0.776630,
		0.264883, -0.745890, 0.611135,
		25.353817, 16.538300, 12.860477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.697994, 16.485100, 12.167598>,  <25.168398, 17.060421, 12.432683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.697994, 16.485100, 12.167598> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.840412, 16.385523, 12.527878>,  <24.925863, 16.325777, 12.744046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.840412, 16.385523, 12.527878>,  <24.697994, 16.485100, 12.167598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.840412, 16.385523, 12.527878> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925154, -0.229659, 0.302235,
		0.131614, -0.940895, -0.312079,
		0.356043, -0.248943, 0.900700,
		24.947226, 16.310841, 12.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.349981, 15.808493, 12.431584>,  <24.697994, 16.485100, 12.167598>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.349981, 15.808493, 12.431584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.498360, 15.982280, 12.759886>,  <24.587387, 16.086552, 12.956867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.498360, 15.982280, 12.759886>,  <24.349981, 15.808493, 12.431584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.498360, 15.982280, 12.759886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863785, -0.163101, 0.476732,
		0.340990, -0.885797, 0.314785,
		0.370946, 0.434468, 0.820754,
		24.609644, 16.112619, 13.006112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.328102, 15.349373, 13.012599>,  <24.349981, 15.808493, 12.431584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.328102, 15.349373, 13.012599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355473, 15.718224, 13.164915>,  <24.371895, 15.939534, 13.256305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.355473, 15.718224, 13.164915>,  <24.328102, 15.349373, 13.012599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.355473, 15.718224, 13.164915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803393, -0.175370, 0.569040,
		0.591505, -0.344862, 0.728829,
		0.068425, 0.922126, 0.380791,
		24.375999, 15.994862, 13.279153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.103706, 15.160018, 13.661620>,  <24.328102, 15.349373, 13.012599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.103706, 15.160018, 13.661620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.076181, 15.558966, 13.670739>,  <24.059668, 15.798334, 13.676210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.076181, 15.558966, 13.670739>,  <24.103706, 15.160018, 13.661620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.076181, 15.558966, 13.670739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799628, -0.068804, 0.596541,
		0.596540, 0.022818, 0.802259,
		-0.068811, 0.997369, 0.022798,
		24.055538, 15.858176, 13.677579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.089605, 15.367008, 14.390630>,  <24.103706, 15.160018, 13.661620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.089605, 15.367008, 14.390630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.923861, 15.668362, 14.186389>,  <23.824413, 15.849174, 14.063845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.923861, 15.668362, 14.186389>,  <24.089605, 15.367008, 14.390630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.923861, 15.668362, 14.186389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774060, 0.003347, 0.633103,
		0.478679, 0.657573, 0.581777,
		-0.414364, 0.753384, -0.510603,
		23.799551, 15.894377, 14.033208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.896334, 15.922048, 14.948508>,  <24.089605, 15.367008, 14.390630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.896334, 15.922048, 14.948508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675625, 15.991446, 14.622209>,  <23.543200, 16.033085, 14.426429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.675625, 15.991446, 14.622209>,  <23.896334, 15.922048, 14.948508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.675625, 15.991446, 14.622209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804785, 0.145834, 0.575373,
		0.218788, 0.973978, 0.059158,
		-0.551773, 0.173494, -0.815749,
		23.510094, 16.043493, 14.377484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.431644, 16.141659, 15.270392>,  <23.896334, 15.922048, 14.948508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.431644, 16.141659, 15.270392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261999, 16.111862, 14.909376>,  <23.160212, 16.093985, 14.692766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.261999, 16.111862, 14.909376>,  <23.431644, 16.141659, 15.270392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.261999, 16.111862, 14.909376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905443, 0.015716, 0.424177,
		-0.017414, 0.997098, -0.074114,
		-0.424111, -0.074493, -0.902541,
		23.134766, 16.089514, 14.638614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849379, 16.615381, 15.372746>,  <23.431644, 16.141659, 15.270392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849379, 16.615381, 15.372746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796207, 16.337446, 15.090036>,  <22.764305, 16.170685, 14.920410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.796207, 16.337446, 15.090036>,  <22.849379, 16.615381, 15.372746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.796207, 16.337446, 15.090036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849299, -0.287734, 0.442605,
		-0.510902, 0.659098, -0.551878,
		-0.132927, -0.694838, -0.706775,
		22.756329, 16.128994, 14.878004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163380, 16.664087, 15.240678>,  <22.849379, 16.615381, 15.372746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163380, 16.664087, 15.240678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.285019, 16.310053, 15.099739>,  <22.358004, 16.097633, 15.015176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.285019, 16.310053, 15.099739>,  <22.163380, 16.664087, 15.240678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.285019, 16.310053, 15.099739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816136, -0.432825, 0.382863,
		-0.491372, 0.171135, -0.853971,
		0.304099, -0.885085, -0.352348,
		22.376249, 16.044527, 14.994036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.497829, 16.392214, 15.030712>,  <22.163380, 16.664087, 15.240678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.497829, 16.392214, 15.030712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772064, 16.103413, 15.067970>,  <21.936605, 15.930131, 15.090325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772064, 16.103413, 15.067970>,  <21.497829, 16.392214, 15.030712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772064, 16.103413, 15.067970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698130, -0.615797, 0.365252,
		-0.206354, -0.315441, -0.926237,
		0.685589, -0.722005, 0.093147,
		21.977741, 15.886811, 15.095914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.164442, 15.730268, 14.764797>,  <21.497829, 16.392214, 15.030712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.164442, 15.730268, 14.764797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469063, 15.593699, 14.985149>,  <21.651834, 15.511757, 15.117361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469063, 15.593699, 14.985149>,  <21.164442, 15.730268, 14.764797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469063, 15.593699, 14.985149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581415, -0.735450, 0.347950,
		0.286347, -0.585273, -0.758592,
		0.761552, -0.341422, 0.550881,
		21.697529, 15.491272, 15.150414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141817, 15.045638, 14.685685>,  <21.164442, 15.730268, 14.764797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141817, 15.045638, 14.685685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387192, 15.100437, 14.996793>,  <21.534416, 15.133317, 15.183457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.387192, 15.100437, 14.996793>,  <21.141817, 15.045638, 14.685685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387192, 15.100437, 14.996793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387779, -0.805690, 0.447762,
		0.687984, -0.576277, -0.441116,
		0.613438, 0.136998, 0.777770,
		21.571222, 15.141537, 15.230124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.569832, 14.453135, 14.960003>,  <21.141817, 15.045638, 14.685685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.569832, 14.453135, 14.960003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.629704, 14.647825, 15.304257>,  <21.665627, 14.764640, 15.510810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.629704, 14.647825, 15.304257>,  <21.569832, 14.453135, 14.960003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629704, 14.647825, 15.304257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066468, -0.863519, 0.499917,
		0.986498, -0.132032, -0.096899,
		0.149680, 0.486726, 0.860636,
		21.674608, 14.793843, 15.562449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.289783, 14.302648, 15.211833>,  <21.569832, 14.453135, 14.960003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.289783, 14.302648, 15.211833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014181, 14.358086, 15.496385>,  <21.848820, 14.391348, 15.667116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014181, 14.358086, 15.496385>,  <22.289783, 14.302648, 15.211833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014181, 14.358086, 15.496385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152156, -0.932009, 0.328948,
		0.708603, 0.334888, 0.621073,
		-0.689007, 0.138594, 0.711380,
		21.807480, 14.399664, 15.709799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482607, 14.013462, 15.848116>,  <22.289783, 14.302648, 15.211833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482607, 14.013462, 15.848116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088177, 14.023850, 15.913823>,  <21.851519, 14.030084, 15.953248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088177, 14.023850, 15.913823>,  <22.482607, 14.013462, 15.848116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.088177, 14.023850, 15.913823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000264, -0.987486, 0.157707,
		0.166309, 0.155554, 0.973727,
		-0.986074, 0.025971, 0.164269,
		21.792355, 14.031642, 15.963104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.182646, 13.792473, 16.285845>,  <22.482607, 14.013462, 15.848116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.182646, 13.792473, 16.285845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509016, 13.743087, 16.511772>,  <23.704838, 13.713455, 16.647329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.509016, 13.743087, 16.511772>,  <23.182646, 13.792473, 16.285845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.509016, 13.743087, 16.511772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574559, 0.064377, -0.815927,
		0.064377, 0.990259, 0.123464,
		0.815927, -0.123464, 0.564818,
		23.753794, 13.706048, 16.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.659555, 14.257890, 16.059134>,  <23.182646, 13.792473, 16.285845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.659555, 14.257890, 16.059134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874136, 13.989154, 16.263428>,  <24.002884, 13.827912, 16.386003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.874136, 13.989154, 16.263428>,  <23.659555, 14.257890, 16.059134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.874136, 13.989154, 16.263428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683495, -0.009114, -0.729898,
		0.495029, 0.740641, 0.454310,
		0.536452, -0.671839, 0.510736,
		24.035072, 13.787602, 16.416649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.351698, 14.571197, 16.119194>,  <23.659555, 14.257890, 16.059134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.351698, 14.571197, 16.119194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386206, 14.174677, 16.158964>,  <24.406910, 13.936766, 16.182827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.386206, 14.174677, 16.158964>,  <24.351698, 14.571197, 16.119194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386206, 14.174677, 16.158964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657656, -0.018303, -0.753096,
		0.748363, 0.130356, 0.650354,
		0.086267, -0.991298, 0.099427,
		24.412086, 13.877288, 16.188793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060682, 14.364119, 15.939861>,  <24.351698, 14.571197, 16.119194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060682, 14.364119, 15.939861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.870152, 14.012733, 15.924804>,  <24.755833, 13.801903, 15.915770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.870152, 14.012733, 15.924804>,  <25.060682, 14.364119, 15.939861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870152, 14.012733, 15.924804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664138, -0.331397, -0.670147,
		0.576224, -0.344210, 0.741273,
		-0.476326, -0.878462, -0.037644,
		24.727253, 13.749195, 15.913510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.615208, 13.879118, 16.039742>,  <25.060682, 14.364119, 15.939861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.615208, 13.879118, 16.039742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.303080, 13.738173, 15.833076>,  <25.115803, 13.653605, 15.709076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.303080, 13.738173, 15.833076>,  <25.615208, 13.879118, 16.039742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303080, 13.738173, 15.833076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586810, -0.126894, -0.799720,
		0.216231, -0.927220, 0.305788,
		-0.780319, -0.352364, -0.516663,
		25.068983, 13.632463, 15.678077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.897125, 13.304180, 15.796629>,  <25.615208, 13.879118, 16.039742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.897125, 13.304180, 15.796629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574921, 13.408247, 15.583664>,  <25.381598, 13.470687, 15.455885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.574921, 13.408247, 15.583664>,  <25.897125, 13.304180, 15.796629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574921, 13.408247, 15.583664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537478, -0.057579, -0.841310,
		-0.249537, -0.963845, -0.093453,
		-0.805512, 0.260167, -0.532413,
		25.333267, 13.486297, 15.423940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048588, 12.925694, 15.217471>,  <25.897125, 13.304180, 15.796629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048588, 12.925694, 15.217471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.749098, 13.157869, 15.089405>,  <25.569405, 13.297174, 15.012566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.749098, 13.157869, 15.089405>,  <26.048588, 12.925694, 15.217471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.749098, 13.157869, 15.089405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305477, -0.126526, -0.943756,
		-0.588301, -0.804415, -0.082577,
		-0.748723, 0.580438, -0.320166,
		25.524481, 13.332001, 14.993356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804720, 12.564813, 14.660037>,  <26.048588, 12.925694, 15.217471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804720, 12.564813, 14.660037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.696999, 12.948905, 14.630558>,  <25.632366, 13.179360, 14.612870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.696999, 12.948905, 14.630558>,  <25.804720, 12.564813, 14.660037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.696999, 12.948905, 14.630558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249371, -0.004387, -0.968398,
		-0.930210, -0.279171, -0.238272,
		-0.269303, 0.960231, -0.073698,
		25.616207, 13.236975, 14.608449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.530697, 12.546636, 14.050277>,  <25.804720, 12.564813, 14.660037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.530697, 12.546636, 14.050277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.602926, 12.931561, 14.131613>,  <25.646265, 13.162516, 14.180414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.602926, 12.931561, 14.131613>,  <25.530697, 12.546636, 14.050277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602926, 12.931561, 14.131613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287045, 0.146177, -0.946698,
		-0.940743, 0.229318, -0.249831,
		0.180575, 0.962313, 0.203340,
		25.657099, 13.220254, 14.192615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268114, 12.866484, 13.526614>,  <25.530697, 12.546636, 14.050277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268114, 12.866484, 13.526614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.505024, 13.143967, 13.690557>,  <25.647169, 13.310456, 13.788922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.505024, 13.143967, 13.690557>,  <25.268114, 12.866484, 13.526614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505024, 13.143967, 13.690557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334607, 0.250974, -0.908323,
		-0.732973, 0.675116, -0.083474,
		0.592274, 0.693707, 0.409856,
		25.682707, 13.352078, 13.813514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102537, 13.437392, 13.116643>,  <25.268114, 12.866484, 13.526614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102537, 13.437392, 13.116643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459352, 13.503160, 13.285040>,  <25.673441, 13.542622, 13.386078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.459352, 13.503160, 13.285040>,  <25.102537, 13.437392, 13.116643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459352, 13.503160, 13.285040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355777, 0.319005, -0.878441,
		-0.278733, 0.933382, 0.226067,
		0.892037, 0.164420, 0.420993,
		25.726963, 13.552486, 13.411338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308746, 14.155687, 12.989692>,  <25.102537, 13.437392, 13.116643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308746, 14.155687, 12.989692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647797, 13.962999, 13.078665>,  <25.851227, 13.847386, 13.132049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.647797, 13.962999, 13.078665>,  <25.308746, 14.155687, 12.989692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647797, 13.962999, 13.078665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424165, 0.363333, -0.829502,
		0.318770, 0.797456, 0.512299,
		0.847626, -0.481720, 0.222433,
		25.902084, 13.818483, 13.145395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780409, 14.616800, 12.855409>,  <25.308746, 14.155687, 12.989692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780409, 14.616800, 12.855409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.975204, 14.267437, 12.855976>,  <26.092081, 14.057819, 12.856317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.975204, 14.267437, 12.855976>,  <25.780409, 14.616800, 12.855409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975204, 14.267437, 12.855976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489373, 0.271515, -0.828730,
		0.723434, 0.404277, 0.559647,
		0.486989, -0.873407, 0.001419,
		26.121302, 14.005415, 12.856401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506790, 14.853043, 12.803178>,  <25.780409, 14.616800, 12.855409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506790, 14.853043, 12.803178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.473068, 14.475386, 12.675748>,  <26.452835, 14.248792, 12.599290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.473068, 14.475386, 12.675748>,  <26.506790, 14.853043, 12.803178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.473068, 14.475386, 12.675748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502114, 0.235904, -0.832004,
		0.860682, -0.230102, 0.454179,
		-0.084303, -0.944141, -0.318576,
		26.447777, 14.192143, 12.580175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.139694, 14.668222, 12.737790>,  <26.506790, 14.853043, 12.803178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.139694, 14.668222, 12.737790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.924477, 14.425013, 12.504272>,  <26.795347, 14.279087, 12.364161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.924477, 14.425013, 12.504272>,  <27.139694, 14.668222, 12.737790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924477, 14.425013, 12.504272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655275, 0.133942, -0.743421,
		0.530213, -0.782538, 0.326357,
		-0.538042, -0.608024, -0.583795,
		26.763063, 14.242605, 12.329134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564754, 14.108294, 12.623845>,  <27.139694, 14.668222, 12.737790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564754, 14.108294, 12.623845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.287991, 14.120795, 12.335321>,  <27.121933, 14.128296, 12.162208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.287991, 14.120795, 12.335321>,  <27.564754, 14.108294, 12.623845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.287991, 14.120795, 12.335321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720352, 0.097053, -0.686785,
		0.048543, -0.994789, -0.089662,
		-0.691908, 0.031250, -0.721309,
		27.080418, 14.130171, 12.118929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.768932, 13.597142, 12.223629>,  <27.564754, 14.108294, 12.623845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.768932, 13.597142, 12.223629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.547300, 13.853987, 12.011709>,  <27.414322, 14.008094, 11.884558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<27.547300, 13.853987, 12.011709>,  <27.768932, 13.597142, 12.223629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547300, 13.853987, 12.011709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748842, 0.106452, -0.654143,
		-0.363635, -0.759184, -0.539823,
		-0.554080, 0.642112, -0.529800,
		27.381077, 14.046620, 11.852769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<15.059284, 17.383202, 20.274004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862305, 17.042952, 20.200319>,  <14.744117, 16.838802, 20.156109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.862305, 17.042952, 20.200319>,  <15.059284, 17.383202, 20.274004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862305, 17.042952, 20.200319> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773060, -0.330259, -0.541578,
		0.399842, -0.409106, 0.820219,
		-0.492448, -0.850624, -0.184212,
		14.714570, 16.787764, 20.145056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.533734, 16.877190, 20.395401>,  <15.059284, 17.383202, 20.274004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.533734, 16.877190, 20.395401> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255392, 16.729832, 20.148802>,  <15.088387, 16.641417, 20.000843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.255392, 16.729832, 20.148802>,  <15.533734, 16.877190, 20.395401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255392, 16.729832, 20.148802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711037, -0.232613, -0.663565,
		0.101049, -0.900098, 0.423808,
		-0.695856, -0.368395, -0.616498,
		15.046636, 16.619314, 19.963852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853031, 16.322178, 20.068865>,  <15.533734, 16.877190, 20.395401>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853031, 16.322178, 20.068865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541225, 16.395153, 19.829174>,  <15.354142, 16.438938, 19.685360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541225, 16.395153, 19.829174>,  <15.853031, 16.322178, 20.068865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.541225, 16.395153, 19.829174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574673, -0.172320, -0.800036,
		-0.249215, -0.967999, 0.029484,
		-0.779515, 0.182438, -0.599227,
		15.307371, 16.449884, 19.649406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909386, 15.815166, 19.544420>,  <15.853031, 16.322178, 20.068865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909386, 15.815166, 19.544420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633536, 16.061646, 19.392254>,  <15.468026, 16.209534, 19.300955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633536, 16.061646, 19.392254>,  <15.909386, 15.815166, 19.544420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.633536, 16.061646, 19.392254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339334, -0.189102, -0.921462,
		-0.639743, -0.764550, -0.078689,
		-0.689624, 0.616201, -0.380415,
		15.426649, 16.246506, 19.278130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.482923, 15.486266, 19.006664>,  <15.909386, 15.815166, 19.544420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.482923, 15.486266, 19.006664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468087, 15.880404, 18.940062>,  <15.459186, 16.116886, 18.900101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.468087, 15.880404, 18.940062>,  <15.482923, 15.486266, 19.006664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468087, 15.880404, 18.940062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466304, -0.130302, -0.874976,
		-0.883847, -0.110094, -0.454636,
		-0.037089, 0.985343, -0.166504,
		15.456961, 16.176006, 18.890110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228166, 15.543964, 18.245661>,  <15.482923, 15.486266, 19.006664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228166, 15.543964, 18.245661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376161, 15.906376, 18.327854>,  <15.464957, 16.123823, 18.377171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376161, 15.906376, 18.327854>,  <15.228166, 15.543964, 18.245661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.376161, 15.906376, 18.327854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382739, 0.052888, -0.922341,
		-0.846534, 0.419901, -0.327205,
		0.369987, 0.906028, 0.205484,
		15.487157, 16.178185, 18.389500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.983433, 15.973360, 17.772505>,  <15.228166, 15.543964, 18.245661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.983433, 15.973360, 17.772505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322432, 16.137600, 17.907059>,  <15.525831, 16.236143, 17.987791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.322432, 16.137600, 17.907059>,  <14.983433, 15.973360, 17.772505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322432, 16.137600, 17.907059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321865, 0.106400, -0.940788,
		-0.422079, 0.905586, -0.041984,
		0.847498, 0.410600, 0.336386,
		15.576681, 16.260780, 18.007975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.026556, 16.503330, 17.288713>,  <14.983433, 15.973360, 17.772505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.026556, 16.503330, 17.288713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386453, 16.450798, 17.455191>,  <15.602390, 16.419279, 17.555077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.386453, 16.450798, 17.455191>,  <15.026556, 16.503330, 17.288713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386453, 16.450798, 17.455191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436413, 0.264042, -0.860131,
		0.003070, 0.955528, 0.294885,
		0.899741, -0.131332, 0.416194,
		15.656375, 16.411398, 17.580050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444176, 17.216873, 17.121796>,  <15.026556, 16.503330, 17.288713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444176, 17.216873, 17.121796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686213, 16.914751, 17.222496>,  <15.831434, 16.733479, 17.282915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686213, 16.914751, 17.222496>,  <15.444176, 17.216873, 17.121796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.686213, 16.914751, 17.222496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537230, 0.153987, -0.829260,
		0.587578, 0.637026, 0.498949,
		0.605092, -0.755305, 0.251750,
		15.867741, 16.688160, 17.298021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217083, 17.445061, 16.963692>,  <15.444176, 17.216873, 17.121796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217083, 17.445061, 16.963692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229486, 17.045450, 16.951111>,  <16.236929, 16.805685, 16.943562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229486, 17.045450, 16.951111>,  <16.217083, 17.445061, 16.963692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229486, 17.045450, 16.951111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449872, 0.042051, -0.892103,
		0.892555, 0.013514, 0.450737,
		0.031010, -0.999024, -0.031453,
		16.238789, 16.745743, 16.941675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.870689, 17.269030, 16.765137>,  <16.217083, 17.445061, 16.963692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.870689, 17.269030, 16.765137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664255, 16.938698, 16.674221>,  <16.540396, 16.740498, 16.619671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664255, 16.938698, 16.674221>,  <16.870689, 17.269030, 16.765137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.664255, 16.938698, 16.674221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386361, 0.012384, -0.922264,
		0.764450, -0.563782, 0.312677,
		-0.516084, -0.825831, -0.227290,
		16.509430, 16.690948, 16.606033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.345911, 16.844570, 16.342949>,  <16.870689, 17.269030, 16.765137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.345911, 16.844570, 16.342949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001249, 16.648029, 16.292158>,  <16.794453, 16.530104, 16.261684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001249, 16.648029, 16.292158>,  <17.345911, 16.844570, 16.342949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001249, 16.648029, 16.292158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186610, -0.074086, -0.979637,
		0.471942, -0.867803, 0.155528,
		-0.861654, -0.491354, -0.126976,
		16.742752, 16.500624, 16.254065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.107870, 16.892004, 16.045542>,  <17.345911, 16.844570, 16.342949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.107870, 16.892004, 16.045542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089491, 17.109209, 16.380928>,  <18.078463, 17.239532, 16.582159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.089491, 17.109209, 16.380928>,  <18.107870, 16.892004, 16.045542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.089491, 17.109209, 16.380928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344119, -0.796582, 0.497030,
		0.937801, -0.265694, 0.223463,
		-0.045949, 0.543013, 0.838466,
		18.075706, 17.272114, 16.632467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.315575, 16.367170, 16.442677>,  <18.107870, 16.892004, 16.045542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.315575, 16.367170, 16.442677> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131680, 16.647400, 16.660976>,  <18.021343, 16.815536, 16.791956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131680, 16.647400, 16.660976>,  <18.315575, 16.367170, 16.442677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.131680, 16.647400, 16.660976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365497, -0.709349, 0.602691,
		0.809355, 0.077609, 0.582170,
		-0.459736, 0.700572, 0.545749,
		17.993759, 16.857571, 16.824701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390106, 16.258324, 17.237423>,  <18.315575, 16.367170, 16.442677>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390106, 16.258324, 17.237423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529289, 15.883578, 17.251322>,  <18.612799, 15.658731, 17.259661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529289, 15.883578, 17.251322>,  <18.390106, 16.258324, 17.237423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529289, 15.883578, 17.251322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646560, -0.212970, 0.732532,
		-0.678885, -0.277356, -0.679845,
		0.347959, -0.936866, 0.034745,
		18.633677, 15.602519, 17.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.855894, 15.838338, 17.078617>,  <18.390106, 16.258324, 17.237423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.855894, 15.838338, 17.078617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102432, 15.632032, 17.316643>,  <18.250355, 15.508249, 17.459459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102432, 15.632032, 17.316643>,  <17.855894, 15.838338, 17.078617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102432, 15.632032, 17.316643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787450, -0.409645, 0.460557,
		0.006227, -0.752448, -0.658622,
		0.616347, -0.515764, 0.595066,
		18.287336, 15.477304, 17.495163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.561699, 15.220945, 17.252407>,  <17.855894, 15.838338, 17.078617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.561699, 15.220945, 17.252407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858028, 15.189307, 17.519217>,  <18.035826, 15.170324, 17.679302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.858028, 15.189307, 17.519217>,  <17.561699, 15.220945, 17.252407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.858028, 15.189307, 17.519217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625695, -0.442440, 0.642458,
		0.244303, -0.893303, -0.377260,
		0.740824, -0.079095, 0.667025,
		18.080276, 15.165579, 17.719324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.486275, 14.453612, 17.550409>,  <17.561699, 15.220945, 17.252407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.486275, 14.453612, 17.550409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667368, 14.718294, 17.789469>,  <17.776024, 14.877103, 17.932903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667368, 14.718294, 17.789469>,  <17.486275, 14.453612, 17.550409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667368, 14.718294, 17.789469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636115, -0.229995, 0.736519,
		0.624813, -0.713617, 0.316794,
		0.452732, 0.661705, 0.597647,
		17.803188, 14.916805, 17.968763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.509172, 13.989423, 18.112665>,  <17.486275, 14.453612, 17.550409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.509172, 13.989423, 18.112665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588945, 14.359074, 18.243029>,  <17.636808, 14.580864, 18.321247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588945, 14.359074, 18.243029>,  <17.509172, 13.989423, 18.112665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.588945, 14.359074, 18.243029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563885, -0.163778, 0.809451,
		0.801412, -0.345205, 0.488439,
		0.199431, 0.924127, 0.325909,
		17.648775, 14.636312, 18.340801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.757927, 13.951879, 18.863998>,  <17.509172, 13.989423, 18.112665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.757927, 13.951879, 18.863998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637280, 14.330462, 18.817963>,  <17.564892, 14.557611, 18.790340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637280, 14.330462, 18.817963>,  <17.757927, 13.951879, 18.863998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637280, 14.330462, 18.817963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243044, 0.040398, 0.969174,
		0.921931, 0.320291, 0.217846,
		-0.301617, 0.946457, -0.115089,
		17.546795, 14.614399, 18.783436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793665, 14.206097, 19.553194>,  <17.757927, 13.951879, 18.863998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793665, 14.206097, 19.553194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578102, 14.498603, 19.385942>,  <17.448765, 14.674107, 19.285591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.578102, 14.498603, 19.385942>,  <17.793665, 14.206097, 19.553194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578102, 14.498603, 19.385942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359111, 0.249567, 0.899309,
		0.761984, 0.634798, 0.128112,
		-0.538906, 0.731265, -0.418129,
		17.416430, 14.717982, 19.260504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793716, 14.740116, 19.910046>,  <17.793665, 14.206097, 19.553194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793716, 14.740116, 19.910046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448004, 14.784949, 19.713902>,  <17.240576, 14.811850, 19.596216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.448004, 14.784949, 19.713902>,  <17.793716, 14.740116, 19.910046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448004, 14.784949, 19.713902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493733, -0.002724, 0.869609,
		0.096133, 0.993695, 0.057694,
		-0.864283, 0.112083, -0.490359,
		17.188719, 14.818574, 19.566793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.555548, 15.292517, 20.136932>,  <17.793716, 14.740116, 19.910046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.555548, 15.292517, 20.136932> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215626, 15.153112, 19.978758>,  <17.011673, 15.069469, 19.883854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.215626, 15.153112, 19.978758>,  <17.555548, 15.292517, 20.136932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215626, 15.153112, 19.978758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451792, 0.095180, 0.887031,
		-0.271503, 0.932459, -0.238339,
		-0.849806, -0.348511, -0.395436,
		16.960684, 15.048559, 19.860126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.989576, 15.653648, 20.399660>,  <17.555548, 15.292517, 20.136932>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.989576, 15.653648, 20.399660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806177, 15.319839, 20.277445>,  <16.696138, 15.119555, 20.204115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.806177, 15.319839, 20.277445>,  <16.989576, 15.653648, 20.399660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806177, 15.319839, 20.277445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576746, 0.017847, 0.816729,
		-0.676125, 0.550686, -0.489489,
		-0.458497, -0.834522, -0.305539,
		16.668629, 15.069483, 20.185783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.339577, 15.871458, 20.450542>,  <16.989576, 15.653648, 20.399660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.339577, 15.871458, 20.450542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338240, 15.471460, 20.450136>,  <16.337437, 15.231462, 20.449892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.338240, 15.471460, 20.450136>,  <16.339577, 15.871458, 20.450542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.338240, 15.471460, 20.450136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613444, 0.001247, 0.789737,
		-0.789731, 0.003265, -0.613445,
		-0.003343, -0.999994, -0.001018,
		16.337236, 15.171462, 20.449831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673235, 15.716005, 20.464785>,  <16.339577, 15.871458, 20.450542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673235, 15.716005, 20.464785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840227, 15.384426, 20.613676>,  <15.940422, 15.185478, 20.703011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.840227, 15.384426, 20.613676>,  <15.673235, 15.716005, 20.464785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840227, 15.384426, 20.613676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610406, 0.047618, 0.790656,
		-0.673138, -0.557293, -0.486116,
		0.417479, -0.828949, 0.372229,
		15.965471, 15.135741, 20.725346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.097994, 15.378479, 20.708767>,  <15.673235, 15.716005, 20.464785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.097994, 15.378479, 20.708767> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424454, 15.257375, 20.905638>,  <15.620330, 15.184712, 21.023760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.424454, 15.257375, 20.905638>,  <15.097994, 15.378479, 20.708767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.424454, 15.257375, 20.905638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497847, 0.063967, 0.864903,
		-0.293342, -0.950917, -0.098522,
		0.816149, -0.302761, 0.492175,
		15.669298, 15.166547, 21.053289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867011, 14.842015, 20.989479>,  <15.097994, 15.378479, 20.708767>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867011, 14.842015, 20.989479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186539, 14.925159, 21.215288>,  <15.378255, 14.975044, 21.350773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.186539, 14.925159, 21.215288>,  <14.867011, 14.842015, 20.989479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.186539, 14.925159, 21.215288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563249, -0.071155, 0.823218,
		0.211280, -0.975568, 0.060235,
		0.798819, 0.207857, 0.564521,
		15.426185, 14.987515, 21.384644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.944571, 14.026443, 21.068037>,  <14.867011, 14.842015, 20.989479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.944571, 14.026443, 21.068037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746144, 13.680443, 21.098228>,  <14.627089, 13.472843, 21.116344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.746144, 13.680443, 21.098228>,  <14.944571, 14.026443, 21.068037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.746144, 13.680443, 21.098228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539021, -0.374937, -0.754240,
		0.680717, -0.333466, 0.652246,
		-0.496064, -0.864999, 0.075480,
		14.597325, 13.420943, 21.120872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432111, 13.526862, 20.919094>,  <14.944571, 14.026443, 21.068037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432111, 13.526862, 20.919094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092585, 13.326735, 20.850750>,  <14.888868, 13.206658, 20.809744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.092585, 13.326735, 20.850750>,  <15.432111, 13.526862, 20.919094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092585, 13.326735, 20.850750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434099, -0.475084, -0.765410,
		0.301777, -0.723862, 0.620447,
		-0.848816, -0.500319, -0.170858,
		14.837940, 13.176639, 20.799492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.672587, 12.926641, 20.764799>,  <15.432111, 13.526862, 20.919094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.672587, 12.926641, 20.764799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296782, 12.894507, 20.631618>,  <15.071298, 12.875227, 20.551710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296782, 12.894507, 20.631618>,  <15.672587, 12.926641, 20.764799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296782, 12.894507, 20.631618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326156, -0.506611, -0.798103,
		-0.104561, -0.858424, 0.502171,
		-0.939516, -0.080336, -0.332951,
		15.014927, 12.870407, 20.531733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.497627, 12.114034, 20.564262>,  <15.672587, 12.926641, 20.764799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.497627, 12.114034, 20.564262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275137, 12.376417, 20.360172>,  <15.141643, 12.533848, 20.237719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275137, 12.376417, 20.360172>,  <15.497627, 12.114034, 20.564262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.275137, 12.376417, 20.360172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328839, -0.390125, -0.860039,
		-0.763203, -0.646158, 0.001292,
		-0.556225, 0.655960, -0.510227,
		15.108270, 12.573205, 20.207104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197501, 11.719439, 20.137690>,  <15.497627, 12.114034, 20.564262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197501, 11.719439, 20.137690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156905, 12.074649, 19.958309>,  <15.132547, 12.287775, 19.850681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156905, 12.074649, 19.958309>,  <15.197501, 11.719439, 20.137690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156905, 12.074649, 19.958309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318116, -0.398144, -0.860397,
		-0.942604, -0.229981, -0.242088,
		-0.101489, 0.888026, -0.448453,
		15.126458, 12.341057, 19.823772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924564, 11.590322, 19.472376>,  <15.197501, 11.719439, 20.137690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924564, 11.590322, 19.472376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107538, 11.945205, 19.448301>,  <15.217322, 12.158134, 19.433857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.107538, 11.945205, 19.448301>,  <14.924564, 11.590322, 19.472376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.107538, 11.945205, 19.448301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233150, -0.184976, -0.954686,
		-0.858135, 0.422673, -0.291466,
		0.457434, 0.887204, -0.060188,
		15.244768, 12.211366, 19.430244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622690, 11.919529, 18.787096>,  <14.924564, 11.590322, 19.472376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622690, 11.919529, 18.787096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953422, 12.131758, 18.861769>,  <15.151860, 12.259095, 18.906572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953422, 12.131758, 18.861769>,  <14.622690, 11.919529, 18.787096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.953422, 12.131758, 18.861769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209176, 0.018034, -0.977712,
		-0.522112, 0.847449, -0.096072,
		0.826828, 0.530571, 0.186681,
		15.201470, 12.290929, 18.917772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652657, 12.416279, 18.226562>,  <14.622690, 11.919529, 18.787096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652657, 12.416279, 18.226562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020802, 12.449620, 18.379395>,  <15.241689, 12.469625, 18.471094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.020802, 12.449620, 18.379395>,  <14.652657, 12.416279, 18.226562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.020802, 12.449620, 18.379395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373047, 0.106030, -0.921734,
		-0.117342, 0.990863, 0.066491,
		0.920362, 0.083354, 0.382081,
		15.296910, 12.474627, 18.494019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.927327, 13.032472, 17.968754>,  <14.652657, 12.416279, 18.226562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.927327, 13.032472, 17.968754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246671, 12.810443, 18.062149>,  <15.438277, 12.677225, 18.118185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.246671, 12.810443, 18.062149>,  <14.927327, 13.032472, 17.968754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246671, 12.810443, 18.062149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261477, -0.029733, -0.964752,
		0.542449, 0.831270, 0.121401,
		0.798360, -0.555072, 0.233487,
		15.486178, 12.643921, 18.132195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517941, 13.289667, 17.666103>,  <14.927327, 13.032472, 17.968754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517941, 13.289667, 17.666103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646554, 12.914922, 17.721102>,  <15.723722, 12.690075, 17.754101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646554, 12.914922, 17.721102>,  <15.517941, 13.289667, 17.666103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646554, 12.914922, 17.721102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305283, -0.034890, -0.951622,
		0.896337, 0.347951, 0.274790,
		0.321530, -0.936863, 0.137497,
		15.743013, 12.633862, 17.762350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161753, 13.331564, 17.330109>,  <15.517941, 13.289667, 17.666103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161753, 13.331564, 17.330109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083809, 12.941477, 17.372025>,  <16.037043, 12.707424, 17.397175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.083809, 12.941477, 17.372025>,  <16.161753, 13.331564, 17.330109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.083809, 12.941477, 17.372025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435110, -0.181698, -0.881853,
		0.879039, -0.126240, 0.459732,
		-0.194857, -0.975218, 0.104792,
		16.025352, 12.648911, 17.403461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805246, 12.939249, 17.266006>,  <16.161753, 13.331564, 17.330109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805246, 12.939249, 17.266006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508911, 12.680808, 17.192562>,  <16.331110, 12.525743, 17.148495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508911, 12.680808, 17.192562>,  <16.805246, 12.939249, 17.266006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508911, 12.680808, 17.192562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489849, -0.332664, -0.805843,
		0.459575, -0.686940, 0.562942,
		-0.740837, -0.646102, -0.183613,
		16.286659, 12.486978, 17.137478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<11.130556, 14.893937, 25.544086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.477911, 15.077092, 25.620237>,  <11.686324, 15.186985, 25.665928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.477911, 15.077092, 25.620237>,  <11.130556, 14.893937, 25.544086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477911, 15.077092, 25.620237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332631, -0.253132, -0.908450,
		-0.367779, 0.852210, -0.372125,
		0.868387, 0.457889, 0.190375,
		11.738427, 15.214458, 25.677349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.419580, 15.155491, 24.868340>,  <11.130556, 14.893937, 25.544086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.419580, 15.155491, 24.868340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.743391, 15.151303, 25.103136>,  <11.937677, 15.148790, 25.244013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<11.743391, 15.151303, 25.103136>,  <11.419580, 15.155491, 24.868340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743391, 15.151303, 25.103136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555405, -0.310339, -0.771502,
		0.190244, 0.950568, -0.245412,
		0.809526, -0.010470, 0.586990,
		11.986249, 15.148162, 25.279234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959591, 15.617914, 24.519932>,  <11.419580, 15.155491, 24.868340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959591, 15.617914, 24.519932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.169765, 15.380639, 24.763914>,  <12.295870, 15.238274, 24.910303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.169765, 15.380639, 24.763914>,  <11.959591, 15.617914, 24.519932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.169765, 15.380639, 24.763914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599749, -0.250276, -0.760042,
		0.603505, 0.765173, 0.224260,
		0.525437, -0.593188, 0.609954,
		12.327396, 15.202682, 24.946899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.726034, 15.797256, 24.416128>,  <11.959591, 15.617914, 24.519932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.726034, 15.797256, 24.416128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.704935, 15.425638, 24.562605>,  <12.692276, 15.202668, 24.650492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<12.704935, 15.425638, 24.562605>,  <12.726034, 15.797256, 24.416128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.704935, 15.425638, 24.562605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506644, -0.340900, -0.791896,
		0.860540, 0.143759, 0.488675,
		-0.052747, -0.929043, 0.366193,
		12.689111, 15.146925, 24.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.386134, 15.525036, 24.349813>,  <12.726034, 15.797256, 24.416128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.386134, 15.525036, 24.349813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.165578, 15.196269, 24.406973>,  <13.033244, 14.999009, 24.441269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.165578, 15.196269, 24.406973>,  <13.386134, 15.525036, 24.349813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.165578, 15.196269, 24.406973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599216, -0.509373, -0.617641,
		0.580439, -0.254933, 0.773369,
		-0.551390, -0.821918, 0.142900,
		13.000161, 14.949694, 24.449842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.785713, 14.884373, 24.562183>,  <13.386134, 15.525036, 24.349813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.785713, 14.884373, 24.562183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.449808, 14.742799, 24.397488>,  <13.248265, 14.657854, 24.298670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.449808, 14.742799, 24.397488>,  <13.785713, 14.884373, 24.562183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449808, 14.742799, 24.397488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542213, -0.586288, -0.601890,
		-0.028368, -0.728695, 0.684251,
		-0.839762, -0.353935, -0.411740,
		13.197880, 14.636619, 24.273966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910375, 14.231318, 24.508451>,  <13.785713, 14.884373, 24.562183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910375, 14.231318, 24.508451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.612178, 14.281729, 24.246655>,  <13.433260, 14.311975, 24.089577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.612178, 14.281729, 24.246655>,  <13.910375, 14.231318, 24.508451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.612178, 14.281729, 24.246655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455126, -0.621134, -0.638007,
		-0.486931, -0.773505, 0.405693,
		-0.745492, 0.126024, -0.654492,
		13.388531, 14.319536, 24.050306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.864047, 13.622631, 24.128929>,  <13.910375, 14.231318, 24.508451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.864047, 13.622631, 24.128929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.606080, 13.818010, 23.893812>,  <13.451300, 13.935238, 23.752741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.606080, 13.818010, 23.893812>,  <13.864047, 13.622631, 24.128929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.606080, 13.818010, 23.893812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300053, -0.545529, -0.782538,
		-0.702888, -0.681041, 0.205260,
		-0.644916, 0.488448, -0.587794,
		13.412605, 13.964544, 23.717474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.458923, 13.127295, 23.666798>,  <13.864047, 13.622631, 24.128929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.458923, 13.127295, 23.666798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.448861, 13.494205, 23.507812>,  <13.442824, 13.714350, 23.412420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.448861, 13.494205, 23.507812>,  <13.458923, 13.127295, 23.666798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.448861, 13.494205, 23.507812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171345, -0.387750, -0.905699,
		-0.984890, -0.090886, -0.147416,
		-0.025155, 0.917273, -0.397464,
		13.441315, 13.769386, 23.388573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.965744, 13.102531, 23.053595>,  <13.458923, 13.127295, 23.666798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.965744, 13.102531, 23.053595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.223042, 13.405373, 23.007929>,  <13.377420, 13.587077, 22.980530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.223042, 13.405373, 23.007929>,  <12.965744, 13.102531, 23.053595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223042, 13.405373, 23.007929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343297, -0.418463, -0.840854,
		-0.684387, 0.501681, -0.529084,
		0.643243, 0.757102, -0.114165,
		13.416015, 13.632504, 22.973679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.873799, 13.373918, 22.374699>,  <12.965744, 13.102531, 23.053595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.873799, 13.373918, 22.374699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.225713, 13.533066, 22.478758>,  <13.436861, 13.628555, 22.541193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.225713, 13.533066, 22.478758>,  <12.873799, 13.373918, 22.374699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225713, 13.533066, 22.478758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338681, -0.140597, -0.930337,
		-0.333578, 0.906604, -0.258447,
		0.879784, 0.397871, 0.260149,
		13.489648, 13.652428, 22.556803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.987592, 13.709715, 21.799707>,  <12.873799, 13.373918, 22.374699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.987592, 13.709715, 21.799707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.338454, 13.703077, 21.991674>,  <13.548972, 13.699095, 22.106853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.338454, 13.703077, 21.991674>,  <12.987592, 13.709715, 21.799707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.338454, 13.703077, 21.991674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471878, -0.155504, -0.867842,
		0.089030, 0.987696, -0.128571,
		0.877157, -0.016594, 0.479917,
		13.601602, 13.698099, 22.135649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.361266, 14.241488, 21.404707>,  <12.987592, 13.709715, 21.799707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.361266, 14.241488, 21.404707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.595350, 13.955650, 21.558008>,  <13.735801, 13.784148, 21.649990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.595350, 13.955650, 21.558008>,  <13.361266, 14.241488, 21.404707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.595350, 13.955650, 21.558008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461018, -0.095612, -0.882225,
		0.667076, 0.692975, 0.273487,
		0.585211, -0.714593, 0.383254,
		13.770914, 13.741272, 21.672985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.041367, 14.350967, 21.359324>,  <13.361266, 14.241488, 21.404707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.041367, 14.350967, 21.359324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.027509, 13.952938, 21.396477>,  <14.019194, 13.714120, 21.418768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.027509, 13.952938, 21.396477>,  <14.041367, 14.350967, 21.359324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027509, 13.952938, 21.396477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462863, -0.098347, -0.880957,
		0.885753, 0.012472, 0.463990,
		-0.034644, -0.995074, 0.092884,
		14.017116, 13.654416, 21.424341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.739654, 14.509372, 21.760811>,  <14.041367, 14.350967, 21.359324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.739654, 14.509372, 21.760811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.056638, 14.745507, 21.822138>,  <15.246828, 14.887188, 21.858934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.056638, 14.745507, 21.822138>,  <14.739654, 14.509372, 21.760811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.056638, 14.745507, 21.822138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263287, 0.104355, 0.959057,
		0.550168, -0.800382, 0.238126,
		0.792461, 0.590338, 0.153317,
		15.294376, 14.922608, 21.868134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.253175, 14.317603, 22.366957>,  <14.739654, 14.509372, 21.760811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.253175, 14.317603, 22.366957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.286723, 14.714369, 22.328854>,  <15.306852, 14.952428, 22.305992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.286723, 14.714369, 22.328854>,  <15.253175, 14.317603, 22.366957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.286723, 14.714369, 22.328854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204857, 0.110714, 0.972510,
		0.975192, -0.062051, 0.212486,
		0.083871, 0.991913, -0.095256,
		15.311885, 15.011943, 22.300278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589831, 14.576242, 23.069744>,  <15.253175, 14.317603, 22.366957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589831, 14.576242, 23.069744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.437842, 14.909555, 22.909115>,  <15.346649, 15.109543, 22.812738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.437842, 14.909555, 22.909115>,  <15.589831, 14.576242, 23.069744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.437842, 14.909555, 22.909115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211806, 0.344220, 0.914686,
		0.900421, 0.432612, 0.045700,
		-0.379974, 0.833282, -0.401572,
		15.323851, 15.159540, 22.788643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.960191, 15.161184, 23.449585>,  <15.589831, 14.576242, 23.069744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.960191, 15.161184, 23.449585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.642602, 15.319377, 23.264889>,  <15.452049, 15.414292, 23.154072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.642602, 15.319377, 23.264889>,  <15.960191, 15.161184, 23.449585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.642602, 15.319377, 23.264889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213687, 0.529500, 0.820955,
		0.569164, 0.750483, -0.335898,
		-0.793971, 0.395481, -0.461741,
		15.404410, 15.438022, 23.126366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.955795, 15.911129, 23.382690>,  <15.960191, 15.161184, 23.449585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.955795, 15.911129, 23.382690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.577158, 15.783498, 23.401243>,  <15.349976, 15.706919, 23.412374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.577158, 15.783498, 23.401243>,  <15.955795, 15.911129, 23.382690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577158, 15.783498, 23.401243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120275, 0.482894, 0.867379,
		-0.299159, 0.815477, -0.495481,
		-0.946593, -0.319078, 0.046381,
		15.293180, 15.687775, 23.415157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585715, 16.535416, 23.552574>,  <15.955795, 15.911129, 23.382690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585715, 16.535416, 23.552574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.334721, 16.236492, 23.640020>,  <15.184124, 16.057138, 23.692488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.334721, 16.236492, 23.640020>,  <15.585715, 16.535416, 23.552574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334721, 16.236492, 23.640020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333465, 0.511645, 0.791846,
		-0.703606, 0.423972, -0.570252,
		-0.627487, -0.747306, 0.218616,
		15.146475, 16.012300, 23.705605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.003111, 16.857738, 23.784239>,  <15.585715, 16.535416, 23.552574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.003111, 16.857738, 23.784239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.947786, 16.481689, 23.908840>,  <14.914592, 16.256060, 23.983601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.947786, 16.481689, 23.908840>,  <15.003111, 16.857738, 23.784239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947786, 16.481689, 23.908840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409224, 0.340672, 0.846450,
		-0.901890, -0.010402, -0.431841,
		-0.138311, -0.940125, 0.311506,
		14.906293, 16.199652, 24.002293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.332677, 16.871428, 24.019129>,  <15.003111, 16.857738, 23.784239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.332677, 16.871428, 24.019129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.518852, 16.574392, 24.211765>,  <14.630557, 16.396172, 24.327347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.518852, 16.574392, 24.211765>,  <14.332677, 16.871428, 24.019129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518852, 16.574392, 24.211765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345887, 0.348243, 0.871257,
		-0.814696, -0.572092, -0.094767,
		0.465437, -0.742589, 0.481591,
		14.658484, 16.351616, 24.356243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.803299, 16.587526, 24.478025>,  <14.332677, 16.871428, 24.019129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.803299, 16.587526, 24.478025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.166527, 16.472662, 24.599974>,  <14.384463, 16.403744, 24.673143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.166527, 16.472662, 24.599974>,  <13.803299, 16.587526, 24.478025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.166527, 16.472662, 24.599974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177317, 0.395870, 0.901025,
		-0.379430, -0.872252, 0.308559,
		0.908070, -0.287163, 0.304870,
		14.438948, 16.386513, 24.691435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.654519, 16.231926, 25.089159>,  <13.803299, 16.587526, 24.478025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.654519, 16.231926, 25.089159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.038221, 16.338264, 25.127430>,  <14.268442, 16.402067, 25.150393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.038221, 16.338264, 25.127430>,  <13.654519, 16.231926, 25.089159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.038221, 16.338264, 25.127430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181075, 0.318501, 0.930467,
		0.216887, -0.909881, 0.353662,
		0.959256, 0.265845, 0.095678,
		14.325998, 16.418018, 25.156134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.678487, 16.208487, 25.786064>,  <13.654519, 16.231926, 25.089159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.678487, 16.208487, 25.786064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.022722, 16.401951, 25.722239>,  <14.229263, 16.518030, 25.683943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.022722, 16.401951, 25.722239>,  <13.678487, 16.208487, 25.786064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.022722, 16.401951, 25.722239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124239, 0.503193, 0.855196,
		0.493907, -0.716153, 0.493133,
		0.860593, 0.483654, -0.159557,
		14.280898, 16.547049, 25.674370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137556, 16.102753, 26.381117>,  <13.678487, 16.208487, 25.786064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137556, 16.102753, 26.381117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.223382, 16.442930, 26.188990>,  <14.274878, 16.647038, 26.073713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.223382, 16.442930, 26.188990>,  <14.137556, 16.102753, 26.381117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.223382, 16.442930, 26.188990> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054884, 0.501494, 0.863418,
		0.975166, -0.158897, 0.154278,
		0.214565, 0.850444, -0.480319,
		14.287751, 16.698063, 26.044893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.537179, 16.426771, 26.884054>,  <14.137556, 16.102753, 26.381117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.537179, 16.426771, 26.884054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.423192, 16.703754, 26.618938>,  <14.354799, 16.869946, 26.459869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.423192, 16.703754, 26.618938>,  <14.537179, 16.426771, 26.884054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.423192, 16.703754, 26.618938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025882, 0.685651, 0.727470,
		0.958188, 0.224460, -0.177467,
		-0.284968, 0.692460, -0.662792,
		14.337702, 16.911493, 26.420101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953966, 16.962555, 26.976828>,  <14.537179, 16.426771, 26.884054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953966, 16.962555, 26.976828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.615914, 17.085308, 26.801750>,  <14.413083, 17.158960, 26.696703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.615914, 17.085308, 26.801750>,  <14.953966, 16.962555, 26.976828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.615914, 17.085308, 26.801750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183733, 0.602150, 0.776954,
		0.501992, 0.737047, -0.452510,
		-0.845131, 0.306884, -0.437695,
		14.362375, 17.177374, 26.670443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<6.879632, 14.227562, 23.125195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.239607, 14.334511, 23.262960>,  <7.455592, 14.398680, 23.345621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.239607, 14.334511, 23.262960>,  <6.879632, 14.227562, 23.125195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.239607, 14.334511, 23.262960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363106, -0.022274, -0.931481,
		-0.241381, 0.963336, -0.117130,
		0.899938, 0.267372, 0.344417,
		7.509588, 14.414722, 23.366285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.109345, 14.820899, 22.757490>,  <6.879632, 14.227562, 23.125195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.109345, 14.820899, 22.757490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.431561, 14.625993, 22.892353>,  <7.624891, 14.509049, 22.973270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.431561, 14.625993, 22.892353>,  <7.109345, 14.820899, 22.757490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.431561, 14.625993, 22.892353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441123, 0.113246, -0.890273,
		0.395617, 0.865880, 0.306168,
		0.805542, -0.487265, 0.337158,
		7.673224, 14.479814, 22.993500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.632308, 15.272418, 22.435795>,  <7.109345, 14.820899, 22.757490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.632308, 15.272418, 22.435795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.769668, 14.906813, 22.522192>,  <7.852084, 14.687449, 22.574030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<7.769668, 14.906813, 22.522192>,  <7.632308, 15.272418, 22.435795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.769668, 14.906813, 22.522192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511716, -0.010760, -0.859087,
		0.787542, 0.405539, 0.464021,
		0.343401, -0.914014, 0.215995,
		7.872688, 14.632608, 22.586990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.332482, 15.355289, 22.340504>,  <7.632308, 15.272418, 22.435795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.332482, 15.355289, 22.340504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.215693, 14.978392, 22.274860>,  <8.145618, 14.752254, 22.235476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.215693, 14.978392, 22.274860>,  <8.332482, 15.355289, 22.340504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.215693, 14.978392, 22.274860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627572, -0.059262, -0.776300,
		0.721737, -0.329648, 0.608628,
		-0.291974, -0.942242, -0.164107,
		8.128100, 14.695719, 22.225628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.951576, 15.049855, 22.114717>,  <8.332482, 15.355289, 22.340504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.951576, 15.049855, 22.114717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.698832, 14.752188, 22.028032>,  <8.547185, 14.573587, 21.976021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.698832, 14.752188, 22.028032>,  <8.951576, 15.049855, 22.114717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.698832, 14.752188, 22.028032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528860, -0.209540, -0.822436,
		0.566621, -0.634275, 0.525961,
		-0.631860, -0.744169, -0.216713,
		8.509274, 14.528937, 21.963018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.406586, 14.580185, 21.821714>,  <8.951576, 15.049855, 22.114717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.406586, 14.580185, 21.821714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.042627, 14.443353, 21.727844>,  <8.824252, 14.361254, 21.671522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.042627, 14.443353, 21.727844>,  <9.406586, 14.580185, 21.821714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.042627, 14.443353, 21.727844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377041, -0.446019, -0.811731,
		0.173007, -0.827072, 0.534809,
		-0.909895, -0.342080, -0.234676,
		8.769659, 14.340729, 21.657442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.372330, 13.865458, 21.734552>,  <9.406586, 14.580185, 21.821714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.372330, 13.865458, 21.734552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.063341, 13.992427, 21.514540>,  <8.877949, 14.068608, 21.382532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.063341, 13.992427, 21.514540>,  <9.372330, 13.865458, 21.734552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.063341, 13.992427, 21.514540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388484, -0.448955, -0.804686,
		-0.502362, -0.835274, 0.223492,
		-0.772471, 0.317421, -0.550029,
		8.831600, 14.087653, 21.349531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.293694, 13.318629, 21.337379>,  <9.372330, 13.865458, 21.734552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.293694, 13.318629, 21.337379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.090954, 13.611044, 21.154650>,  <8.969310, 13.786492, 21.045012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.090954, 13.611044, 21.154650>,  <9.293694, 13.318629, 21.337379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.090954, 13.611044, 21.154650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317485, -0.334385, -0.887350,
		-0.801441, -0.594788, -0.062610,
		-0.506849, 0.731036, -0.456827,
		8.938899, 13.830355, 21.017601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.021202, 12.888125, 20.836487>,  <9.293694, 13.318629, 21.337379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.021202, 12.888125, 20.836487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.044441, 13.273476, 20.731773>,  <9.058385, 13.504686, 20.668945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.044441, 13.273476, 20.731773>,  <9.021202, 12.888125, 20.836487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.044441, 13.273476, 20.731773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369683, -0.264347, -0.890761,
		-0.927340, -0.045027, -0.371502,
		0.058097, 0.963376, -0.261785,
		9.061871, 13.562489, 20.653238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.948808, 12.817141, 20.166664>,  <9.021202, 12.888125, 20.836487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.948808, 12.817141, 20.166664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.084378, 13.193357, 20.175714>,  <9.165721, 13.419086, 20.181145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.084378, 13.193357, 20.175714>,  <8.948808, 12.817141, 20.166664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.084378, 13.193357, 20.175714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386077, -0.117114, -0.915002,
		-0.857947, 0.318853, -0.402814,
		0.338926, 0.940541, 0.022624,
		9.186056, 13.475519, 20.182501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.766602, 13.240073, 19.489290>,  <8.948808, 12.817141, 20.166664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.766602, 13.240073, 19.489290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.072890, 13.429473, 19.663401>,  <9.256663, 13.543113, 19.767868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.072890, 13.429473, 19.663401>,  <8.766602, 13.240073, 19.489290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.072890, 13.429473, 19.663401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450062, 0.089006, -0.888551,
		-0.459471, 0.876285, -0.144950,
		0.765723, 0.473500, 0.435278,
		9.302607, 13.571523, 19.793983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.899955, 13.528752, 18.980791>,  <8.766602, 13.240073, 19.489290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.899955, 13.528752, 18.980791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.208102, 13.609635, 19.222664>,  <9.392991, 13.658165, 19.367788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.208102, 13.609635, 19.222664>,  <8.899955, 13.528752, 18.980791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.208102, 13.609635, 19.222664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605546, 0.064873, -0.793162,
		-0.199611, 0.977192, -0.072470,
		0.770370, 0.202208, 0.604684,
		9.439213, 13.670298, 19.404070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.125561, 14.191196, 18.653126>,  <8.899955, 13.528752, 18.980791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.125561, 14.191196, 18.653126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.395906, 13.985682, 18.864494>,  <9.558114, 13.862374, 18.991316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.395906, 13.985682, 18.864494>,  <9.125561, 14.191196, 18.653126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.395906, 13.985682, 18.864494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581767, -0.068281, -0.810484,
		0.452496, 0.855197, 0.252755,
		0.675865, -0.513786, 0.528423,
		9.598666, 13.831547, 19.023022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.833853, 14.412098, 18.412966>,  <9.125561, 14.191196, 18.653126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.833853, 14.412098, 18.412966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.864102, 14.051986, 18.584442>,  <9.882253, 13.835918, 18.687328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.864102, 14.051986, 18.584442>,  <9.833853, 14.412098, 18.412966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.864102, 14.051986, 18.584442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643947, -0.284156, -0.710343,
		0.761323, 0.329774, 0.558244,
		0.075625, -0.900280, 0.428692,
		9.886789, 13.781901, 18.713049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.008743, 15.094129, 18.898228>,  <9.833853, 14.412098, 18.412966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.008743, 15.094129, 18.898228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.289498, 15.376388, 18.859411>,  <10.457952, 15.545743, 18.836121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.289498, 15.376388, 18.859411>,  <10.008743, 15.094129, 18.898228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.289498, 15.376388, 18.859411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346439, 0.457236, 0.819094,
		0.622362, -0.541293, 0.565391,
		0.701887, 0.705647, -0.097041,
		10.500065, 15.588081, 18.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.296227, 15.231282, 19.495861>,  <10.008743, 15.094129, 18.898228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.296227, 15.231282, 19.495861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.341641, 15.572879, 19.292763>,  <10.368890, 15.777837, 19.170904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.341641, 15.572879, 19.292763>,  <10.296227, 15.231282, 19.495861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.341641, 15.572879, 19.292763> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301391, 0.516573, 0.801446,
		0.946717, 0.062038, 0.316034,
		0.113535, 0.853993, -0.507747,
		10.375702, 15.829077, 19.140438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844160, 15.621935, 19.895655>,  <10.296227, 15.231282, 19.495861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844160, 15.621935, 19.895655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.633284, 15.873592, 19.667183>,  <10.506758, 16.024588, 19.530100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.633284, 15.873592, 19.667183>,  <10.844160, 15.621935, 19.895655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.633284, 15.873592, 19.667183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264762, 0.517099, 0.813947,
		0.807446, 0.580333, -0.106037,
		-0.527192, 0.629144, -0.571180,
		10.475126, 16.062336, 19.495829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.056211, 16.330059, 20.063734>,  <10.844160, 15.621935, 19.895655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.056211, 16.330059, 20.063734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.694880, 16.346756, 19.892969>,  <10.478081, 16.356773, 19.790510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.694880, 16.346756, 19.892969>,  <11.056211, 16.330059, 20.063734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.694880, 16.346756, 19.892969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384218, 0.363769, 0.848557,
		0.190719, 0.930553, -0.312565,
		-0.903329, 0.041743, -0.426913,
		10.423881, 16.359280, 19.764894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.792957, 16.788658, 20.390091>,  <11.056211, 16.330059, 20.063734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.792957, 16.788658, 20.390091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.451853, 16.667934, 20.219582>,  <10.247190, 16.595499, 20.117275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.451853, 16.667934, 20.219582>,  <10.792957, 16.788658, 20.390091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.451853, 16.667934, 20.219582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521486, 0.446356, 0.727200,
		-0.029206, 0.842423, -0.538024,
		-0.852760, -0.301810, -0.426275,
		10.196025, 16.577391, 20.091700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.438969, 17.395321, 20.366995>,  <10.792957, 16.788658, 20.390091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.438969, 17.395321, 20.366995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.181441, 17.090946, 20.334818>,  <10.026925, 16.908321, 20.315512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.181441, 17.090946, 20.334818>,  <10.438969, 17.395321, 20.366995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.181441, 17.090946, 20.334818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565867, 0.402716, 0.719454,
		-0.515065, 0.508718, -0.689866,
		-0.643819, -0.760938, -0.080442,
		9.988296, 16.862665, 20.310686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.792627, 17.698912, 20.276690>,  <10.438969, 17.395321, 20.366995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.792627, 17.698912, 20.276690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.767482, 17.324738, 20.415834>,  <9.752395, 17.100233, 20.499321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.767482, 17.324738, 20.415834>,  <9.792627, 17.698912, 20.276690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.767482, 17.324738, 20.415834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574939, 0.318847, 0.753512,
		-0.815777, -0.152630, -0.557863,
		-0.062865, -0.935436, 0.347861,
		9.748622, 17.044107, 20.520193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.096865, 17.713736, 20.627272>,  <9.792627, 17.698912, 20.276690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.096865, 17.713736, 20.627272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.253749, 17.372545, 20.765026>,  <9.347879, 17.167831, 20.847679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.253749, 17.372545, 20.765026>,  <9.096865, 17.713736, 20.627272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.253749, 17.372545, 20.765026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489473, 0.123463, 0.863234,
		-0.778837, -0.507137, -0.369086,
		0.392209, -0.852976, 0.344388,
		9.371411, 17.116652, 20.868343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.575944, 17.467464, 20.874115>,  <9.096865, 17.713736, 20.627272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.575944, 17.467464, 20.874115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.902251, 17.305210, 21.039032>,  <9.098036, 17.207857, 21.137981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.902251, 17.305210, 21.039032>,  <8.575944, 17.467464, 20.874115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.902251, 17.305210, 21.039032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400852, 0.117355, 0.908596,
		-0.416944, -0.906469, -0.066866,
		0.815767, -0.405637, 0.412290,
		9.146981, 17.183519, 21.162720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.302504, 16.999935, 21.445215>,  <8.575944, 17.467464, 20.874115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.302504, 16.999935, 21.445215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.691284, 17.064190, 21.513926>,  <8.924553, 17.102743, 21.555151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.691284, 17.064190, 21.513926>,  <8.302504, 16.999935, 21.445215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.691284, 17.064190, 21.513926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158188, -0.093947, 0.982930,
		0.174032, -0.982532, -0.065901,
		0.971951, 0.160636, 0.171775,
		8.982869, 17.112381, 21.565458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.612867, 16.449516, 21.898102>,  <8.302504, 16.999935, 21.445215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.612867, 16.449516, 21.898102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.825537, 16.782923, 21.958204>,  <8.953138, 16.982965, 21.994267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<8.825537, 16.782923, 21.958204>,  <8.612867, 16.449516, 21.898102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.825537, 16.782923, 21.958204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049985, -0.146220, 0.987989,
		0.845474, -0.532797, -0.036078,
		0.531673, 0.833515, 0.150257,
		8.985039, 17.032978, 22.003281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.996460, 16.288668, 22.456980>,  <8.612867, 16.449516, 21.898102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.996460, 16.288668, 22.456980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.029204, 16.687233, 22.448383>,  <9.048851, 16.926373, 22.443226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.029204, 16.687233, 22.448383>,  <8.996460, 16.288668, 22.456980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.029204, 16.687233, 22.448383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103927, 0.029980, 0.994133,
		0.991210, -0.079148, 0.106009,
		0.081862, 0.996412, -0.021491,
		9.053763, 16.986156, 22.441936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.409365, 16.499630, 23.153536>,  <8.996460, 16.288668, 22.456980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.409365, 16.499630, 23.153536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.222731, 16.826756, 23.018789>,  <9.110750, 17.023031, 22.937941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.222731, 16.826756, 23.018789>,  <9.409365, 16.499630, 23.153536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222731, 16.826756, 23.018789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229581, 0.255829, 0.939066,
		0.854161, 0.515492, 0.068388,
		-0.466585, 0.817814, -0.336867,
		9.082755, 17.072100, 22.917728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.765719, 17.032551, 23.553551>,  <9.409365, 16.499630, 23.153536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.765719, 17.032551, 23.553551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.394532, 17.121252, 23.433750>,  <9.171820, 17.174473, 23.361870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.394532, 17.121252, 23.433750>,  <9.765719, 17.032551, 23.553551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.394532, 17.121252, 23.433750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281424, 0.109821, 0.953278,
		0.244284, 0.968899, -0.039504,
		-0.927969, 0.221753, -0.299499,
		9.116141, 17.187778, 23.343901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.056144, 17.675375, 23.701227>,  <9.765719, 17.032551, 23.553551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.056144, 17.675375, 23.701227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.405441, 17.775034, 23.868736>,  <10.615020, 17.834829, 23.969242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.405441, 17.775034, 23.868736>,  <10.056144, 17.675375, 23.701227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.405441, 17.775034, 23.868736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476928, -0.260756, -0.839372,
		-0.099927, 0.932702, -0.346528,
		0.873244, 0.249145, 0.418775,
		10.667415, 17.849777, 23.994370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.452247, 18.172039, 23.212996>,  <10.056144, 17.675375, 23.701227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.452247, 18.172039, 23.212996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.722934, 18.010582, 23.459288>,  <10.885345, 17.913708, 23.607063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.722934, 18.010582, 23.459288>,  <10.452247, 18.172039, 23.212996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.722934, 18.010582, 23.459288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540239, -0.295945, -0.787755,
		0.500195, 0.865730, 0.017794,
		0.676717, -0.403644, 0.615731,
		10.925949, 17.889488, 23.644007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.157179, 18.446026, 22.953203>,  <10.452247, 18.172039, 23.212996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.157179, 18.446026, 22.953203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.244107, 18.116493, 23.162611>,  <11.296265, 17.918774, 23.288256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.244107, 18.116493, 23.162611>,  <11.157179, 18.446026, 22.953203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244107, 18.116493, 23.162611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669061, -0.264797, -0.694435,
		0.710725, 0.501180, 0.493648,
		0.217321, -0.823833, 0.523518,
		11.309303, 17.869343, 23.319666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832612, 18.383194, 22.909616>,  <11.157179, 18.446026, 22.953203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832612, 18.383194, 22.909616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.740402, 18.018877, 23.046623>,  <11.685077, 17.800287, 23.128826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.740402, 18.018877, 23.046623>,  <11.832612, 18.383194, 22.909616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.740402, 18.018877, 23.046623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689278, -0.401301, -0.603203,
		0.686844, 0.097036, 0.720298,
		-0.230523, -0.910792, 0.342516,
		11.671246, 17.745640, 23.149378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.379309, 18.140329, 23.139336>,  <11.832612, 18.383194, 22.909616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.379309, 18.140329, 23.139336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.161434, 17.810678, 23.077200>,  <12.030709, 17.612888, 23.039919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.161434, 17.810678, 23.077200>,  <12.379309, 18.140329, 23.139336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.161434, 17.810678, 23.077200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744272, -0.389668, -0.542419,
		0.386491, -0.411064, 0.825621,
		-0.544687, -0.824127, -0.155340,
		11.998028, 17.563440, 23.030598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850112, 17.592194, 23.198948>,  <12.379309, 18.140329, 23.139336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850112, 17.592194, 23.198948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.546635, 17.400396, 23.022552>,  <12.364549, 17.285318, 22.916716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.546635, 17.400396, 23.022552>,  <12.850112, 17.592194, 23.198948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.546635, 17.400396, 23.022552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649113, -0.499162, -0.574013,
		0.055109, -0.721752, 0.689955,
		-0.758693, -0.479491, -0.440990,
		12.319027, 17.256550, 22.890255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.103090, 16.938957, 23.092718>,  <12.850112, 17.592194, 23.198948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.103090, 16.938957, 23.092718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.813239, 16.993116, 22.822435>,  <12.639328, 17.025612, 22.660265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.813239, 16.993116, 22.822435>,  <13.103090, 16.938957, 23.092718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.813239, 16.993116, 22.822435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607721, -0.336783, -0.719202,
		-0.324943, -0.931797, 0.161761,
		-0.724629, 0.135394, -0.675708,
		12.595851, 17.033735, 22.619722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.957149, 16.283478, 22.756773>,  <13.103090, 16.938957, 23.092718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.957149, 16.283478, 22.756773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.859715, 16.567465, 22.492466>,  <12.801254, 16.737858, 22.333881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.859715, 16.567465, 22.492466>,  <12.957149, 16.283478, 22.756773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859715, 16.567465, 22.492466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807952, -0.228355, -0.543202,
		-0.536546, -0.666182, -0.517996,
		-0.243584, 0.709969, -0.660766,
		12.786639, 16.780455, 22.294237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.057988, 15.944858, 22.066385>,  <12.957149, 16.283478, 22.756773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.057988, 15.944858, 22.066385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.000943, 16.328779, 21.969688>,  <12.966717, 16.559132, 21.911671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.000943, 16.328779, 21.969688>,  <13.057988, 15.944858, 22.066385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.000943, 16.328779, 21.969688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475863, -0.147671, -0.867034,
		-0.867881, -0.238686, -0.435675,
		-0.142612, 0.959803, -0.241743,
		12.958159, 16.616720, 21.897165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.706636, 16.069624, 21.337595>,  <13.057988, 15.944858, 22.066385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.706636, 16.069624, 21.337595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.895802, 16.420153, 21.374279>,  <13.009302, 16.630470, 21.396290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.895802, 16.420153, 21.374279>,  <12.706636, 16.069624, 21.337595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895802, 16.420153, 21.374279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600797, -0.244579, -0.761068,
		-0.644510, 0.415020, -0.642157,
		0.472916, 0.876322, 0.091709,
		13.037677, 16.683050, 21.401793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.732480, 16.507969, 20.647114>,  <12.706636, 16.069624, 21.337595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.732480, 16.507969, 20.647114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046746, 16.595236, 20.878675>,  <13.235306, 16.647596, 21.017612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.046746, 16.595236, 20.878675>,  <12.732480, 16.507969, 20.647114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.046746, 16.595236, 20.878675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601599, -0.051242, -0.797153,
		-0.144247, 0.974565, -0.171508,
		0.785666, 0.218166, 0.578906,
		13.282446, 16.660686, 21.052347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.017669, 16.884626, 20.268843>,  <12.732480, 16.507969, 20.647114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.017669, 16.884626, 20.268843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.331903, 16.847992, 20.513618>,  <13.520443, 16.826012, 20.660484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.331903, 16.847992, 20.513618>,  <13.017669, 16.884626, 20.268843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.331903, 16.847992, 20.513618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590257, -0.185749, -0.785553,
		0.185613, 0.978320, -0.091862,
		0.785585, -0.091586, 0.611938,
		13.567578, 16.820517, 20.697199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.588647, 17.253870, 20.056746>,  <13.017669, 16.884626, 20.268843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.588647, 17.253870, 20.056746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.770358, 16.980318, 20.285110>,  <13.879385, 16.816187, 20.422129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.770358, 16.980318, 20.285110>,  <13.588647, 17.253870, 20.056746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770358, 16.980318, 20.285110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753978, -0.046189, -0.655274,
		0.474498, 0.728132, 0.494648,
		0.454278, -0.683879, 0.570912,
		13.906641, 16.775154, 20.456385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.307293, 17.570404, 20.280750>,  <13.588647, 17.253870, 20.056746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.307293, 17.570404, 20.280750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.292800, 17.171461, 20.305943>,  <14.284104, 16.932095, 20.321058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.292800, 17.171461, 20.305943>,  <14.307293, 17.570404, 20.280750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.292800, 17.171461, 20.305943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720990, -0.069727, -0.689428,
		0.691998, 0.020428, 0.721611,
		-0.036232, -0.997357, 0.062979,
		14.281930, 16.872253, 20.324837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.349177, 21.611858, 5.706153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.341712, 21.270794, 5.915007>,  <9.337233, 21.066156, 6.040319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.341712, 21.270794, 5.915007>,  <9.349177, 21.611858, 5.706153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.341712, 21.270794, 5.915007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794714, 0.304237, 0.525233,
		-0.606697, 0.424751, 0.671942,
		-0.018663, -0.852659, 0.522135,
		9.336113, 21.014996, 6.071648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.963344, 21.640959, 6.374327>,  <9.349177, 21.611858, 5.706153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.963344, 21.640959, 6.374327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.269960, 21.384272, 6.364464>,  <9.453931, 21.230259, 6.358546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.269960, 21.384272, 6.364464>,  <8.963344, 21.640959, 6.374327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.269960, 21.384272, 6.364464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496561, 0.567926, 0.656420,
		-0.407235, -0.515417, 0.753993,
		0.766542, -0.641720, -0.024657,
		9.499923, 21.191755, 6.357067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.055705, 21.456976, 7.025820>,  <8.963344, 21.640959, 6.374327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.055705, 21.456976, 7.025820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.383540, 21.433006, 6.797896>,  <9.580241, 21.418625, 6.661141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.383540, 21.433006, 6.797896>,  <9.055705, 21.456976, 7.025820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.383540, 21.433006, 6.797896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494670, 0.575813, 0.650954,
		0.289095, -0.815382, 0.501573,
		0.819589, -0.059925, -0.569810,
		9.629416, 21.415030, 6.626953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.747758, 21.872921, 6.885530>,  <9.055705, 21.456976, 7.025820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.747758, 21.872921, 6.885530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.534965, 22.206438, 6.944569>,  <9.407289, 22.406548, 6.979992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.534965, 22.206438, 6.944569>,  <9.747758, 21.872921, 6.885530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.534965, 22.206438, 6.944569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005891, 0.170661, -0.985312,
		-0.846735, -0.525038, -0.085877,
		-0.531982, 0.833792, 0.147598,
		9.375370, 22.456575, 6.988848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.467838, 22.148619, 7.117520>,  <9.747758, 21.872921, 6.885530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.467838, 22.148619, 7.117520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.657260, 21.878906, 6.890860>,  <10.770913, 21.717079, 6.754864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.657260, 21.878906, 6.890860>,  <10.467838, 22.148619, 7.117520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.657260, 21.878906, 6.890860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679466, 0.129686, -0.722154,
		0.560421, 0.726999, -0.396738,
		0.473554, -0.674281, -0.566650,
		10.799326, 21.676622, 6.720865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.557041, 22.154757, 7.897921>,  <10.467838, 22.148619, 7.117520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.557041, 22.154757, 7.897921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.767560, 21.833862, 7.785190>,  <10.893871, 21.641325, 7.717552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.767560, 21.833862, 7.785190>,  <10.557041, 22.154757, 7.897921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.767560, 21.833862, 7.785190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644916, -0.592620, 0.482581,
		-0.554159, -0.072229, -0.829271,
		0.526299, -0.802237, -0.281824,
		10.925449, 21.593191, 7.700642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.084387, 21.606947, 7.789450>,  <10.557041, 22.154757, 7.897921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.084387, 21.606947, 7.789450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.437170, 21.436159, 7.869295>,  <10.648840, 21.333687, 7.917202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.437170, 21.436159, 7.869295>,  <10.084387, 21.606947, 7.789450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.437170, 21.436159, 7.869295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459612, -0.685263, 0.564953,
		-0.104430, -0.590011, -0.800614,
		0.881959, -0.426969, 0.199614,
		10.701757, 21.308067, 7.929179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.149150, 20.860853, 7.706738>,  <10.084387, 21.606947, 7.789450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.149150, 20.860853, 7.706738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.384582, 20.951967, 8.017013>,  <10.525841, 21.006636, 8.203177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.384582, 20.951967, 8.017013>,  <10.149150, 20.860853, 7.706738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.384582, 20.951967, 8.017013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512202, -0.637271, 0.575790,
		0.625478, -0.736206, -0.258413,
		0.588580, 0.227784, 0.775686,
		10.561155, 21.020302, 8.249719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.456105, 20.215303, 7.965304>,  <10.149150, 20.860853, 7.706738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.456105, 20.215303, 7.965304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.435390, 20.463070, 8.278646>,  <10.422960, 20.611731, 8.466650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.435390, 20.463070, 8.278646>,  <10.456105, 20.215303, 7.965304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.435390, 20.463070, 8.278646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620985, -0.634289, 0.460495,
		0.782110, -0.462602, 0.417497,
		-0.051788, 0.619417, 0.783352,
		10.419853, 20.648895, 8.513651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.487160, 19.857857, 8.560311>,  <10.456105, 20.215303, 7.965304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.487160, 19.857857, 8.560311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.330495, 20.179176, 8.739780>,  <10.236496, 20.371969, 8.847462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.330495, 20.179176, 8.739780>,  <10.487160, 19.857857, 8.560311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.330495, 20.179176, 8.739780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527919, -0.595573, 0.605470,
		0.753592, 0.000277, 0.657342,
		-0.391663, 0.803301, 0.448673,
		10.212996, 20.420166, 8.874382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.464324, 19.760065, 9.340136>,  <10.487160, 19.857857, 8.560311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.464324, 19.760065, 9.340136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.169608, 19.997169, 9.210041>,  <9.992779, 20.139431, 9.131985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.169608, 19.997169, 9.210041>,  <10.464324, 19.760065, 9.340136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.169608, 19.997169, 9.210041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670521, -0.578800, 0.464103,
		0.086855, 0.560023, 0.823912,
		-0.736789, 0.592760, -0.325235,
		9.948571, 20.174997, 9.112471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.101016, 19.828180, 9.911860>,  <10.464324, 19.760065, 9.340136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.101016, 19.828180, 9.911860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.853903, 19.919313, 9.610812>,  <9.705635, 19.973993, 9.430183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.853903, 19.919313, 9.610812>,  <10.101016, 19.828180, 9.911860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.853903, 19.919313, 9.610812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754646, -0.440803, 0.486006,
		-0.221030, 0.868209, 0.444251,
		-0.617782, 0.227830, -0.752621,
		9.668568, 19.987663, 9.385026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.527268, 20.143959, 10.263452>,  <10.101016, 19.828180, 9.911860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.527268, 20.143959, 10.263452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.378891, 20.061619, 9.901230>,  <9.289865, 20.012215, 9.683897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.378891, 20.061619, 9.901230>,  <9.527268, 20.143959, 10.263452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.378891, 20.061619, 9.901230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780853, -0.458676, 0.424128,
		-0.502662, 0.864432, 0.009405,
		-0.370944, -0.205849, -0.905553,
		9.267608, 19.999865, 9.629564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.776567, 20.406807, 10.166553>,  <9.527268, 20.143959, 10.263452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.776567, 20.406807, 10.166553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.862549, 20.101641, 9.922667>,  <8.914138, 19.918541, 9.776335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.862549, 20.101641, 9.922667>,  <8.776567, 20.406807, 10.166553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.862549, 20.101641, 9.922667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845404, -0.457927, 0.274946,
		-0.488966, 0.456354, -0.743407,
		0.214953, -0.762917, -0.609714,
		8.927034, 19.872765, 9.739752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.116499, 20.232697, 10.034250>,  <8.776567, 20.406807, 10.166553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.116499, 20.232697, 10.034250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.344770, 19.924103, 9.921722>,  <8.481733, 19.738947, 9.854206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.344770, 19.924103, 9.921722>,  <8.116499, 20.232697, 10.034250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.344770, 19.924103, 9.921722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695863, -0.636225, 0.333156,
		-0.436006, 0.005635, -0.899926,
		0.570678, -0.771483, -0.281319,
		8.515974, 19.692657, 9.837327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.696212, 19.783260, 9.673018>,  <8.116499, 20.232697, 10.034250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.696212, 19.783260, 9.673018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.998385, 19.561665, 9.812970>,  <8.179689, 19.428707, 9.896941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.998385, 19.561665, 9.812970>,  <7.696212, 19.783260, 9.673018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.998385, 19.561665, 9.812970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655207, -0.642879, 0.396751,
		0.005133, -0.528961, -0.848630,
		0.755432, -0.553992, 0.349879,
		8.225015, 19.395468, 9.917933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.459725, 18.996159, 9.550357>,  <7.696212, 19.783260, 9.673018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.459725, 18.996159, 9.550357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.754487, 19.015329, 9.820076>,  <7.931344, 19.026833, 9.981907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.754487, 19.015329, 9.820076>,  <7.459725, 18.996159, 9.550357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.754487, 19.015329, 9.820076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425818, -0.741803, 0.518081,
		0.525026, -0.668903, -0.526228,
		0.736903, 0.047929, 0.674297,
		7.975557, 19.029709, 10.022365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.507268, 18.295404, 9.820769>,  <7.459725, 18.996159, 9.550357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.507268, 18.295404, 9.820769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.701029, 18.504782, 10.101157>,  <7.817286, 18.630409, 10.269390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.701029, 18.504782, 10.101157>,  <7.507268, 18.295404, 9.820769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.701029, 18.504782, 10.101157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345596, -0.621587, 0.702989,
		0.803690, -0.582782, -0.120198,
		0.484403, 0.523445, 0.700970,
		7.846350, 18.661816, 10.311448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.761734, 17.724701, 10.228415>,  <7.507268, 18.295404, 9.820769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.761734, 17.724701, 10.228415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.804909, 18.051268, 10.455330>,  <7.830814, 18.247208, 10.591478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.804909, 18.051268, 10.455330>,  <7.761734, 17.724701, 10.228415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.804909, 18.051268, 10.455330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435391, -0.474168, 0.765245,
		0.893747, -0.329590, 0.304280,
		0.107937, 0.816416, 0.567287,
		7.837290, 18.296192, 10.625516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.028736, 17.502098, 10.949061>,  <7.761734, 17.724701, 10.228415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.028736, 17.502098, 10.949061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.854102, 17.856045, 11.014064>,  <7.749321, 18.068413, 11.053065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.854102, 17.856045, 11.014064>,  <8.028736, 17.502098, 10.949061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.854102, 17.856045, 11.014064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450659, -0.371431, 0.811754,
		0.778652, 0.281165, 0.560934,
		-0.436585, 0.884864, 0.162506,
		7.723126, 18.121504, 11.062816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.219152, 17.794365, 11.515637>,  <8.028736, 17.502098, 10.949061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.219152, 17.794365, 11.515637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.873390, 17.990814, 11.472557>,  <7.665933, 18.108685, 11.446709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.873390, 17.990814, 11.472557>,  <8.219152, 17.794365, 11.515637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.873390, 17.990814, 11.472557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356690, -0.448018, 0.819788,
		0.354365, 0.747046, 0.562449,
		-0.864406, 0.491124, -0.107702,
		7.614069, 18.138151, 11.440247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.090071, 18.084339, 12.228576>,  <8.219152, 17.794365, 11.515637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.090071, 18.084339, 12.228576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.743073, 18.056164, 12.031603>,  <7.534873, 18.039259, 11.913419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.743073, 18.056164, 12.031603>,  <8.090071, 18.084339, 12.228576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.743073, 18.056164, 12.031603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452327, -0.300249, 0.839792,
		-0.207005, 0.951257, 0.228605,
		-0.867496, -0.070437, -0.492432,
		7.482824, 18.035032, 11.883873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.674716, 18.335457, 12.747419>,  <8.090071, 18.084339, 12.228576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.674716, 18.335457, 12.747419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.458776, 18.136627, 12.475690>,  <7.329213, 18.017330, 12.312652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.458776, 18.136627, 12.475690>,  <7.674716, 18.335457, 12.747419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.458776, 18.136627, 12.475690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560176, -0.390229, 0.730701,
		-0.628303, 0.775010, -0.067783,
		-0.539850, -0.497073, -0.679324,
		7.296822, 17.987505, 12.271893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.085133, 18.248688, 13.076652>,  <7.674716, 18.335457, 12.747419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.085133, 18.248688, 13.076652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052780, 17.969484, 12.792048>,  <7.033369, 17.801962, 12.621286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.052780, 17.969484, 12.792048>,  <7.085133, 18.248688, 13.076652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.052780, 17.969484, 12.792048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611092, -0.529215, 0.588642,
		-0.787417, 0.482407, -0.383743,
		-0.080882, -0.698008, -0.711507,
		7.028515, 17.760082, 12.578596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.359488, 18.089058, 12.863940>,  <7.085133, 18.248688, 13.076652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.359488, 18.089058, 12.863940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513223, 17.744854, 12.730190>,  <6.605464, 17.538332, 12.649940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.513223, 17.744854, 12.730190>,  <6.359488, 18.089058, 12.863940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.513223, 17.744854, 12.730190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634229, -0.509302, 0.581691,
		-0.670849, -0.011494, -0.741505,
		0.384336, -0.860511, -0.334375,
		6.628524, 17.486700, 12.629878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.774190, 17.632185, 12.970412>,  <6.359488, 18.089058, 12.863940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.774190, 17.632185, 12.970412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.105298, 17.410919, 12.932870>,  <6.303962, 17.278160, 12.910344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.105298, 17.410919, 12.932870>,  <5.774190, 17.632185, 12.970412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.105298, 17.410919, 12.932870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394343, -0.692588, 0.603999,
		-0.399113, -0.462961, -0.791439,
		0.827769, -0.553163, -0.093856,
		6.353628, 17.244970, 12.904713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.546896, 16.994320, 12.753707>,  <5.774190, 17.632185, 12.970412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.546896, 16.994320, 12.753707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907056, 16.913826, 12.907999>,  <6.123151, 16.865530, 13.000574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.907056, 16.913826, 12.907999>,  <5.546896, 16.994320, 12.753707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.907056, 16.913826, 12.907999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392847, -0.757047, 0.522064,
		0.186958, -0.621598, -0.760699,
		0.900399, -0.201235, 0.385729,
		6.177176, 16.853456, 13.023718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.715085, 16.267399, 12.711371>,  <5.546896, 16.994320, 12.753707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.715085, 16.267399, 12.711371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990246, 16.372278, 12.982086>,  <6.155343, 16.435205, 13.144515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.990246, 16.372278, 12.982086>,  <5.715085, 16.267399, 12.711371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.990246, 16.372278, 12.982086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258007, -0.783224, 0.565679,
		0.678397, -0.563748, -0.471133,
		0.687903, 0.262199, 0.676787,
		6.196617, 16.450937, 13.185122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.877115, 15.594093, 13.011257>,  <5.715085, 16.267399, 12.711371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.877115, 15.594093, 13.011257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993134, 15.880366, 13.265398>,  <6.062746, 16.052130, 13.417883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.993134, 15.880366, 13.265398>,  <5.877115, 15.594093, 13.011257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.993134, 15.880366, 13.265398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342596, -0.542244, 0.767202,
		0.893589, -0.440194, 0.087914,
		0.290047, 0.715682, 0.635352,
		6.080148, 16.095072, 13.456003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.188741, 15.283109, 13.506093>,  <5.877115, 15.594093, 13.011257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.188741, 15.283109, 13.506093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.072983, 15.626781, 13.674883>,  <6.003529, 15.832983, 13.776157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.072983, 15.626781, 13.674883>,  <6.188741, 15.283109, 13.506093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.072983, 15.626781, 13.674883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358753, -0.506060, 0.784346,
		0.887438, 0.075601, 0.454684,
		-0.289394, 0.859178, 0.421975,
		5.986165, 15.884534, 13.801476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.103615, 15.042407, 14.151315>,  <6.188741, 15.283109, 13.506093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.103615, 15.042407, 14.151315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.913935, 15.394546, 14.146854>,  <5.800127, 15.605828, 14.144178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.913935, 15.394546, 14.146854>,  <6.103615, 15.042407, 14.151315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.913935, 15.394546, 14.146854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579077, -0.302331, 0.757143,
		0.663177, 0.365494, 0.653154,
		-0.474200, 0.880347, -0.011150,
		5.771675, 15.658649, 14.143510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.228792, 14.278298, 14.105765>,  <6.103615, 15.042407, 14.151315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.228792, 14.278298, 14.105765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.466050, 14.017762, 14.295053>,  <6.608405, 13.861441, 14.408625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.466050, 14.017762, 14.295053>,  <6.228792, 14.278298, 14.105765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.466050, 14.017762, 14.295053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690258, 0.713958, 0.117507,
		-0.414394, 0.256943, 0.873074,
		0.593145, -0.651340, 0.473217,
		6.643993, 13.822360, 14.437017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.501385, 14.569042, 14.659659>,  <6.228792, 14.278298, 14.105765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.501385, 14.569042, 14.659659> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.778058, 14.298491, 14.558398>,  <6.944062, 14.136160, 14.497642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.778058, 14.298491, 14.558398>,  <6.501385, 14.569042, 14.659659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.778058, 14.298491, 14.558398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700537, 0.713576, 0.007512,
		0.175563, -0.182538, 0.967397,
		0.691683, -0.676379, -0.253152,
		6.985563, 14.095577, 14.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.189840, 14.678692, 15.112163>,  <6.501385, 14.569042, 14.659659>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.189840, 14.678692, 15.112163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.298160, 14.473243, 14.786498>,  <7.363153, 14.349974, 14.591100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.298160, 14.473243, 14.786498>,  <7.189840, 14.678692, 15.112163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.298160, 14.473243, 14.786498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720926, 0.668673, -0.182050,
		0.637913, -0.537651, 0.551361,
		0.270801, -0.513623, -0.814161,
		7.379400, 14.319156, 14.542250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.910872, 14.768227, 15.100578>,  <7.189840, 14.678692, 15.112163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.910872, 14.768227, 15.100578> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.836407, 14.662848, 14.721962>,  <7.791728, 14.599622, 14.494792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.836407, 14.662848, 14.721962>,  <7.910872, 14.768227, 15.100578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.836407, 14.662848, 14.721962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730336, 0.607325, -0.312674,
		0.657231, -0.749501, 0.079342,
		-0.186163, -0.263446, -0.946541,
		7.780558, 14.583815, 14.438000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.542170, 14.501101, 14.867990>,  <7.910872, 14.768227, 15.100578>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.542170, 14.501101, 14.867990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.334636, 14.633014, 14.552508>,  <8.210115, 14.712161, 14.363219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.334636, 14.633014, 14.552508>,  <8.542170, 14.501101, 14.867990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.334636, 14.633014, 14.552508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780749, 0.558574, -0.280044,
		0.348197, -0.761077, -0.547284,
		-0.518834, 0.329781, -0.788705,
		8.178986, 14.731948, 14.315897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.055957, 14.464833, 14.279571>,  <8.542170, 14.501101, 14.867990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.055957, 14.464833, 14.279571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.763355, 14.730511, 14.217926>,  <8.587794, 14.889917, 14.180940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.763355, 14.730511, 14.217926>,  <9.055957, 14.464833, 14.279571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.763355, 14.730511, 14.217926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634275, 0.579928, -0.511252,
		-0.250197, -0.471731, -0.845501,
		-0.731503, 0.664194, -0.154111,
		8.543904, 14.929769, 14.171693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.328408, 14.780416, 13.610334>,  <9.055957, 14.464833, 14.279571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.328408, 14.780416, 13.610334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041260, 15.006397, 13.773056>,  <8.868971, 15.141986, 13.870689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.041260, 15.006397, 13.773056>,  <9.328408, 14.780416, 13.610334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041260, 15.006397, 13.773056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408379, 0.814973, -0.411152,
		-0.563817, -0.129023, -0.815760,
		-0.717870, 0.564953, 0.406805,
		8.825899, 15.175883, 13.895098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.007977, 15.091424, 13.113827>,  <9.328408, 14.780416, 13.610334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.007977, 15.091424, 13.113827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.992564, 15.305360, 13.451456>,  <8.983316, 15.433722, 13.654034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.992564, 15.305360, 13.451456>,  <9.007977, 15.091424, 13.113827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.992564, 15.305360, 13.451456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554896, 0.713944, -0.427053,
		-0.831027, 0.451918, -0.324292,
		-0.038533, 0.534841, 0.844074,
		8.981004, 15.465812, 13.704679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.943770, 15.745463, 12.921208>,  <9.007977, 15.091424, 13.113827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.943770, 15.745463, 12.921208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.069481, 15.776867, 13.299640>,  <9.144907, 15.795710, 13.526699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.069481, 15.776867, 13.299640>,  <8.943770, 15.745463, 12.921208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.069481, 15.776867, 13.299640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600926, 0.755049, -0.262278,
		-0.734927, 0.650951, 0.190116,
		0.314277, 0.078509, 0.946079,
		9.163764, 15.800420, 13.583464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.867559, 16.454365, 13.123013>,  <8.943770, 15.745463, 12.921208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.867559, 16.454365, 13.123013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.131915, 16.312548, 13.387595>,  <9.290528, 16.227457, 13.546345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.131915, 16.312548, 13.387595>,  <8.867559, 16.454365, 13.123013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.131915, 16.312548, 13.387595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623500, 0.749939, -0.220996,
		-0.417698, 0.558471, 0.716685,
		0.660890, -0.354544, 0.661455,
		9.330182, 16.206184, 13.586032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992256, 16.976946, 13.570274>,  <8.867559, 16.454365, 13.123013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992256, 16.976946, 13.570274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.311078, 16.736151, 13.589520>,  <9.502371, 16.591673, 13.601067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.311078, 16.736151, 13.589520>,  <8.992256, 16.976946, 13.570274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.311078, 16.736151, 13.589520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602154, 0.786145, -0.139231,
		0.045992, 0.139946, 0.989090,
		0.797054, -0.601989, 0.048113,
		9.550194, 16.555553, 13.603953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.490162, 17.411255, 13.757576>,  <8.992256, 16.976946, 13.570274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.490162, 17.411255, 13.757576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.708852, 17.107370, 13.616762>,  <9.840066, 16.925039, 13.532274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.708852, 17.107370, 13.616762>,  <9.490162, 17.411255, 13.757576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.708852, 17.107370, 13.616762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673944, 0.648766, -0.353415,
		0.496882, -0.044029, 0.866701,
		0.546725, -0.759713, -0.352033,
		9.872869, 16.879456, 13.511152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136563, 17.547934, 13.905400>,  <9.490162, 17.411255, 13.757576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136563, 17.547934, 13.905400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.148550, 17.293837, 13.596707>,  <10.155742, 17.141378, 13.411491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.148550, 17.293837, 13.596707>,  <10.136563, 17.547934, 13.905400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.148550, 17.293837, 13.596707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672701, 0.583877, -0.454490,
		0.739307, -0.505525, 0.444824,
		0.029967, -0.635241, -0.771732,
		10.157540, 17.103264, 13.365188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.880041, 17.508358, 13.683755>,  <10.136563, 17.547934, 13.905400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.880041, 17.508358, 13.683755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.689759, 17.353703, 13.367725>,  <10.575590, 17.260910, 13.178107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.689759, 17.353703, 13.367725>,  <10.880041, 17.508358, 13.683755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.689759, 17.353703, 13.367725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637232, 0.467678, -0.612546,
		0.606333, -0.794851, 0.023901,
		-0.475704, -0.386638, -0.790074,
		10.547048, 17.237711, 13.130703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.369134, 17.450619, 13.179680>,  <10.880041, 17.508358, 13.683755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.369134, 17.450619, 13.179680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.047678, 17.432425, 12.942329>,  <10.854805, 17.421507, 12.799919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.047678, 17.432425, 12.942329>,  <11.369134, 17.450619, 13.179680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047678, 17.432425, 12.942329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420856, 0.661525, -0.620698,
		0.420767, -0.748542, -0.512484,
		-0.803639, -0.045487, -0.593376,
		10.806586, 17.418779, 12.764317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.607984, 17.494026, 12.534807>,  <11.369134, 17.450619, 13.179680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.607984, 17.494026, 12.534807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.225792, 17.597881, 12.478739>,  <10.996477, 17.660194, 12.445098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.225792, 17.597881, 12.478739>,  <11.607984, 17.494026, 12.534807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.225792, 17.597881, 12.478739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290041, 0.739219, -0.607809,
		-0.054194, -0.621404, -0.781614,
		-0.955479, 0.259639, -0.140171,
		10.939148, 17.675774, 12.436687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.591024, 17.636322, 11.763592>,  <11.607984, 17.494026, 12.534807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.591024, 17.636322, 11.763592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.283034, 17.807539, 11.952872>,  <11.098241, 17.910269, 12.066441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.283034, 17.807539, 11.952872>,  <11.591024, 17.636322, 11.763592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.283034, 17.807539, 11.952872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144651, 0.839396, -0.523918,
		-0.621463, -0.334954, -0.708230,
		-0.769974, 0.428042, 0.473202,
		11.052042, 17.935951, 12.094832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.240749, 17.878487, 11.230344>,  <11.591024, 17.636322, 11.763592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.240749, 17.878487, 11.230344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.094570, 18.089239, 11.537289>,  <11.006863, 18.215691, 11.721456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.094570, 18.089239, 11.537289>,  <11.240749, 17.878487, 11.230344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.094570, 18.089239, 11.537289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018315, 0.828295, -0.559993,
		-0.930652, -0.190594, -0.312348,
		-0.365447, 0.526879, 0.767363,
		10.984936, 18.247303, 11.767498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.509607, 18.200657, 11.071319>,  <11.240749, 17.878487, 11.230344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.509607, 18.200657, 11.071319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.707373, 18.433079, 11.329908>,  <10.826032, 18.572533, 11.485063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.707373, 18.433079, 11.329908>,  <10.509607, 18.200657, 11.071319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.707373, 18.433079, 11.329908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044314, 0.759618, -0.648858,
		-0.868097, 0.292156, 0.401314,
		0.494413, 0.581055, 0.646476,
		10.855697, 18.607395, 11.523851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.264267, 18.888803, 10.941657>,  <10.509607, 18.200657, 11.071319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.264267, 18.888803, 10.941657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.601198, 18.955700, 11.146601>,  <10.803357, 18.995838, 11.269567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.601198, 18.955700, 11.146601>,  <10.264267, 18.888803, 10.941657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.601198, 18.955700, 11.146601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181784, 0.806777, -0.562197,
		-0.507382, 0.566693, 0.649170,
		0.842329, 0.167240, 0.512360,
		10.853897, 19.005873, 11.300309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.218740, 19.607716, 11.071710>,  <10.264267, 18.888803, 10.941657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.218740, 19.607716, 11.071710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.601188, 19.490929, 11.081431>,  <10.830656, 19.420856, 11.087264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.601188, 19.490929, 11.081431>,  <10.218740, 19.607716, 11.071710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.601188, 19.490929, 11.081431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254542, 0.786745, -0.562353,
		0.145068, 0.543863, 0.826540,
		0.956119, -0.291968, 0.024305,
		10.888023, 19.403337, 11.088723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<14.957690, 17.802437, 27.062551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.582910, 17.667168, 27.027317>,  <14.358041, 17.586006, 27.006176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.582910, 17.667168, 27.027317>,  <14.957690, 17.802437, 27.062551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.582910, 17.667168, 27.027317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306259, 0.673222, 0.673036,
		-0.168301, 0.657580, -0.734345,
		-0.936953, -0.338173, -0.088086,
		14.301824, 17.565716, 27.000891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.593745, 18.433367, 27.177044>,  <14.957690, 17.802437, 27.062551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.593745, 18.433367, 27.177044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.335967, 18.128422, 27.200691>,  <14.181300, 17.945456, 27.214880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.335967, 18.128422, 27.200691>,  <14.593745, 18.433367, 27.177044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.335967, 18.128422, 27.200691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526183, 0.498235, 0.689125,
		-0.554816, 0.412997, -0.722227,
		-0.644446, -0.762362, 0.059116,
		14.142633, 17.899714, 27.218426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083232, 18.725281, 27.394253>,  <14.593745, 18.433367, 27.177044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083232, 18.725281, 27.394253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.912283, 18.365849, 27.434061>,  <13.809713, 18.150188, 27.457945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.912283, 18.365849, 27.434061>,  <14.083232, 18.725281, 27.394253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.912283, 18.365849, 27.434061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743592, 0.411983, 0.526632,
		-0.514223, 0.151066, -0.844248,
		-0.427372, -0.898582, 0.099520,
		13.784071, 18.096273, 27.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.403771, 18.869383, 27.366594>,  <14.083232, 18.725281, 27.394253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.403771, 18.869383, 27.366594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.392782, 18.499790, 27.519175>,  <13.386189, 18.278034, 27.610723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.392782, 18.499790, 27.519175>,  <13.403771, 18.869383, 27.366594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.392782, 18.499790, 27.519175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819871, 0.239140, 0.520215,
		-0.571889, -0.298448, -0.764115,
		-0.027474, -0.923981, 0.381450,
		13.384540, 18.222595, 27.633610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.781137, 18.570347, 27.330772>,  <13.403771, 18.869383, 27.366594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.781137, 18.570347, 27.330772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.930183, 18.351267, 27.630421>,  <13.019611, 18.219818, 27.810209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.930183, 18.351267, 27.630421>,  <12.781137, 18.570347, 27.330772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.930183, 18.351267, 27.630421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876890, 0.056362, 0.477375,
		-0.303681, -0.834773, -0.459273,
		0.372614, -0.547702, 0.749120,
		13.041967, 18.186956, 27.855156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226771, 18.055624, 27.415310>,  <12.781137, 18.570347, 27.330772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226771, 18.055624, 27.415310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.457386, 18.090891, 27.740231>,  <12.595755, 18.112051, 27.935183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.457386, 18.090891, 27.740231>,  <12.226771, 18.055624, 27.415310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457386, 18.090891, 27.740231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811702, -0.051994, 0.581754,
		0.093526, -0.994748, 0.041589,
		0.576536, 0.088167, 0.812301,
		12.630347, 18.117340, 27.983921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.934093, 17.589600, 27.894310>,  <12.226771, 18.055624, 27.415310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.934093, 17.589600, 27.894310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.137155, 17.825932, 28.145136>,  <12.258991, 17.967731, 28.295631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.137155, 17.825932, 28.145136>,  <11.934093, 17.589600, 27.894310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.137155, 17.825932, 28.145136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721522, -0.106211, 0.684196,
		0.470845, -0.799774, 0.372379,
		0.507652, 0.590830, 0.627064,
		12.289451, 18.003181, 28.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869885, 17.355419, 28.627125>,  <11.934093, 17.589600, 27.894310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.869885, 17.355419, 28.627125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.995554, 17.727123, 28.704861>,  <12.070955, 17.950146, 28.751503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.995554, 17.727123, 28.704861>,  <11.869885, 17.355419, 28.627125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.995554, 17.727123, 28.704861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767150, 0.127903, 0.628587,
		0.559265, -0.346573, 0.753067,
		0.314171, 0.929262, 0.194342,
		12.089806, 18.005901, 28.763163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.966922, 17.411800, 29.331669>,  <11.869885, 17.355419, 28.627125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.966922, 17.411800, 29.331669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.931352, 17.784447, 29.190708>,  <11.910009, 18.008034, 29.106133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.931352, 17.784447, 29.190708>,  <11.966922, 17.411800, 29.331669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.931352, 17.784447, 29.190708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748409, 0.170966, 0.640823,
		0.657249, 0.320725, 0.682026,
		-0.088924, 0.931615, -0.352401,
		11.904675, 18.063931, 29.084988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.831849, 17.810822, 30.007896>,  <11.966922, 17.411800, 29.331669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.831849, 17.810822, 30.007896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.704774, 18.057051, 29.719412>,  <11.628529, 18.204788, 29.546322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.704774, 18.057051, 29.719412>,  <11.831849, 17.810822, 30.007896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.704774, 18.057051, 29.719412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850228, 0.151772, 0.504061,
		0.419746, 0.773328, 0.475160,
		-0.317689, 0.615572, -0.721211,
		11.609468, 18.241722, 29.503048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.381536, 18.276419, 30.366127>,  <11.831849, 17.810822, 30.007896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.381536, 18.276419, 30.366127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.308031, 18.369701, 29.984165>,  <11.263927, 18.425671, 29.754988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.308031, 18.369701, 29.984165>,  <11.381536, 18.276419, 30.366127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308031, 18.369701, 29.984165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964428, 0.145022, 0.221014,
		0.190024, 0.961552, 0.198263,
		-0.183764, 0.233209, -0.954905,
		11.252902, 18.439665, 29.697693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.038159, 18.950317, 30.408466>,  <11.381536, 18.276419, 30.366127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.038159, 18.950317, 30.408466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.922248, 18.722927, 30.100475>,  <10.852701, 18.586493, 29.915680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.922248, 18.722927, 30.100475>,  <11.038159, 18.950317, 30.408466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922248, 18.722927, 30.100475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957085, 0.175553, 0.230584,
		0.004092, 0.803753, -0.594949,
		-0.289778, -0.568474, -0.769978,
		10.835315, 18.552385, 29.869482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.373738, 19.198284, 30.167465>,  <11.038159, 18.950317, 30.408466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.373738, 19.198284, 30.167465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.413493, 18.819859, 30.044123>,  <10.437346, 18.592802, 29.970118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.413493, 18.819859, 30.044123>,  <10.373738, 19.198284, 30.167465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.413493, 18.819859, 30.044123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896300, -0.219708, 0.385195,
		-0.432167, 0.238096, -0.869794,
		0.099387, -0.946065, -0.308356,
		10.443309, 18.536039, 29.951616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.793998, 18.845819, 29.688002>,  <10.373738, 19.198284, 30.167465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.793998, 18.845819, 29.688002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.971892, 18.564425, 29.909744>,  <10.078629, 18.395588, 30.042789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.971892, 18.564425, 29.909744>,  <9.793998, 18.845819, 29.688002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.971892, 18.564425, 29.909744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894751, -0.321061, 0.310388,
		-0.040371, -0.634054, -0.772235,
		0.444737, -0.703488, 0.554358,
		10.105313, 18.353378, 30.076052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.754090, 19.579628, 29.464014>,  <9.793998, 18.845819, 29.688002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.754090, 19.579628, 29.464014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.455770, 19.711123, 29.232248>,  <9.276779, 19.790018, 29.093189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.455770, 19.711123, 29.232248>,  <9.754090, 19.579628, 29.464014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.455770, 19.711123, 29.232248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480401, -0.337167, -0.809650,
		-0.461519, -0.882186, 0.093534,
		-0.745798, 0.328735, -0.579412,
		9.232031, 19.809742, 29.058424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.674728, 19.061380, 28.924389>,  <9.754090, 19.579628, 29.464014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.674728, 19.061380, 28.924389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.489451, 19.383039, 28.775366>,  <9.378285, 19.576035, 28.685953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.489451, 19.383039, 28.775366>,  <9.674728, 19.061380, 28.924389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.489451, 19.383039, 28.775366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267012, -0.274215, -0.923857,
		-0.845079, -0.527400, -0.087704,
		-0.463192, 0.804149, -0.372555,
		9.350493, 19.624285, 28.663599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.128253, 18.867847, 28.362593>,  <9.674728, 19.061380, 28.924389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.128253, 18.867847, 28.362593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.232824, 19.248091, 28.295664>,  <9.295567, 19.476236, 28.255507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.232824, 19.248091, 28.295664>,  <9.128253, 18.867847, 28.362593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.232824, 19.248091, 28.295664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381943, -0.261082, -0.886541,
		-0.886439, 0.167860, -0.431333,
		0.261428, 0.950610, -0.167320,
		9.311253, 19.533274, 28.245468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.915051, 19.048782, 27.623075>,  <9.128253, 18.867847, 28.362593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.915051, 19.048782, 27.623075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.187488, 19.327154, 27.714106>,  <9.350950, 19.494177, 27.768724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.187488, 19.327154, 27.714106>,  <8.915051, 19.048782, 27.623075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.187488, 19.327154, 27.714106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318051, -0.001242, -0.948073,
		-0.659511, 0.718107, -0.222187,
		0.681094, 0.695932, 0.227575,
		9.391816, 19.535934, 27.782377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.816065, 19.616859, 27.072708>,  <8.915051, 19.048782, 27.623075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.816065, 19.616859, 27.072708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.185039, 19.634218, 27.226191>,  <9.406423, 19.644634, 27.318279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.185039, 19.634218, 27.226191>,  <8.816065, 19.616859, 27.072708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.185039, 19.634218, 27.226191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385068, -0.028930, -0.922435,
		-0.028930, 0.998639, -0.043396,
		0.922435, 0.043396, 0.383707,
		9.461769, 19.647238, 27.341303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.125847, 20.105085, 26.670261>,  <8.816065, 19.616859, 27.072708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.125847, 20.105085, 26.670261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.406101, 19.879234, 26.844755>,  <9.574254, 19.743723, 26.949451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.406101, 19.879234, 26.844755>,  <9.125847, 20.105085, 26.670261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.406101, 19.879234, 26.844755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379631, -0.222678, -0.897939,
		0.604144, 0.794738, 0.058335,
		0.700636, -0.564630, 0.436236,
		9.616292, 19.709845, 26.975626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.810860, 20.266537, 26.269421>,  <9.125847, 20.105085, 26.670261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.810860, 20.266537, 26.269421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.857671, 19.912533, 26.449669>,  <9.885757, 19.700130, 26.557817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.857671, 19.912533, 26.449669>,  <9.810860, 20.266537, 26.269421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.857671, 19.912533, 26.449669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315007, -0.397230, -0.861962,
		0.941846, 0.242822, 0.232298,
		0.117028, -0.885011, 0.450621,
		9.892779, 19.647030, 26.584854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.386980, 20.069839, 25.903460>,  <9.810860, 20.266537, 26.269421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.386980, 20.069839, 25.903460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.221568, 19.745026, 26.068186>,  <10.122321, 19.550137, 26.167021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.221568, 19.745026, 26.068186>,  <10.386980, 20.069839, 25.903460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.221568, 19.745026, 26.068186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280657, -0.543962, -0.790782,
		0.866155, -0.211434, 0.452848,
		-0.413530, -0.812035, 0.411815,
		10.097509, 19.501415, 26.191730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.962625, 19.544943, 25.797485>,  <10.386980, 20.069839, 25.903460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.962625, 19.544943, 25.797485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.636606, 19.327227, 25.876932>,  <10.440995, 19.196598, 25.924601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.636606, 19.327227, 25.876932>,  <10.962625, 19.544943, 25.797485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.636606, 19.327227, 25.876932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322064, -0.710566, -0.625596,
		0.481636, -0.445922, 0.754440,
		-0.815046, -0.544288, 0.198619,
		10.392093, 19.163940, 25.936518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.202527, 18.837782, 25.947050>,  <10.962625, 19.544943, 25.797485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.202527, 18.837782, 25.947050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.817532, 18.840504, 25.838556>,  <10.586535, 18.842136, 25.773460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.817532, 18.840504, 25.838556>,  <11.202527, 18.837782, 25.947050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.817532, 18.840504, 25.838556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179383, -0.734063, -0.654961,
		-0.203559, -0.679047, 0.705307,
		-0.962489, 0.006803, -0.271235,
		10.528785, 18.842545, 25.757185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.980824, 18.106083, 25.935307>,  <11.202527, 18.837782, 25.947050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.980824, 18.106083, 25.935307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.703548, 18.267145, 25.696190>,  <10.537183, 18.363783, 25.552719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.703548, 18.267145, 25.696190>,  <10.980824, 18.106083, 25.935307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.703548, 18.267145, 25.696190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215267, -0.675880, -0.704873,
		-0.687855, -0.617297, 0.381837,
		-0.693193, 0.402654, -0.597791,
		10.495591, 18.387943, 25.516851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.565802, 17.517269, 25.657831>,  <10.980824, 18.106083, 25.935307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.565802, 17.517269, 25.657831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.512163, 17.830397, 25.414780>,  <10.479980, 18.018272, 25.268948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.512163, 17.830397, 25.414780>,  <10.565802, 17.517269, 25.657831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.512163, 17.830397, 25.414780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237519, -0.569906, -0.786633,
		-0.962083, -0.249808, -0.109511,
		-0.134096, 0.782817, -0.607631,
		10.471934, 18.065243, 25.232491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.355093, 17.200035, 25.082235>,  <10.565802, 17.517269, 25.657831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.355093, 17.200035, 25.082235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.442232, 17.571770, 24.962990>,  <10.494515, 17.794811, 24.891443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.442232, 17.571770, 24.962990>,  <10.355093, 17.200035, 25.082235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.442232, 17.571770, 24.962990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374200, -0.361640, -0.853927,
		-0.901397, 0.074472, -0.426541,
		0.217848, 0.929339, -0.298114,
		10.507586, 17.850571, 24.873556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.995520, 17.344057, 24.450205>,  <10.355093, 17.200035, 25.082235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.995520, 17.344057, 24.450205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.312198, 17.587103, 24.475580>,  <10.502205, 17.732929, 24.490807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.312198, 17.587103, 24.475580>,  <9.995520, 17.344057, 24.450205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.312198, 17.587103, 24.475580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331740, -0.340383, -0.879823,
		-0.512998, 0.717598, -0.471049,
		0.791696, 0.607613, 0.063440,
		10.549706, 17.769386, 24.494612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.426682, 17.676617, 24.088636>,  <9.995520, 17.344057, 24.450205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.426682, 17.676617, 24.088636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.112322, 17.559771, 23.870634>,  <8.923706, 17.489662, 23.739834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.112322, 17.559771, 23.870634>,  <9.426682, 17.676617, 24.088636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.112322, 17.559771, 23.870634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595670, 0.121106, 0.794047,
		-0.165952, 0.948684, -0.269182,
		-0.785899, -0.292117, -0.545004,
		8.876552, 17.472136, 23.707132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.865422, 18.150396, 24.262909>,  <9.426682, 17.676617, 24.088636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.865422, 18.150396, 24.262909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.716709, 17.799580, 24.141207>,  <8.627481, 17.589088, 24.068186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.716709, 17.799580, 24.141207>,  <8.865422, 18.150396, 24.262909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.716709, 17.799580, 24.141207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600325, -0.022852, 0.799430,
		-0.708088, 0.479867, -0.518015,
		-0.371782, -0.877044, -0.304257,
		8.605175, 17.536467, 24.049929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.138917, 18.275166, 24.247160>,  <8.865422, 18.150396, 24.262909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.138917, 18.275166, 24.247160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.182723, 17.878994, 24.280758>,  <8.209007, 17.641291, 24.300917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<8.182723, 17.878994, 24.280758>,  <8.138917, 18.275166, 24.247160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<8.182723, 17.878994, 24.280758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652472, -0.007882, 0.757772,
		-0.749858, -0.137792, -0.647091,
		0.109516, -0.990430, 0.083995,
		8.215578, 17.581865, 24.305956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.464243, 17.991285, 24.112379>,  <8.138917, 18.275166, 24.247160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.464243, 17.991285, 24.112379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.688591, 17.722023, 24.305164>,  <7.823199, 17.560467, 24.420835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.688591, 17.722023, 24.305164>,  <7.464243, 17.991285, 24.112379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.688591, 17.722023, 24.305164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708811, -0.089621, 0.699682,
		-0.427800, -0.734051, -0.527406,
		0.560869, -0.673155, 0.481964,
		7.856851, 17.520077, 24.449753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.026346, 17.407974, 24.312313>,  <7.464243, 17.991285, 24.112379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.026346, 17.407974, 24.312313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.359575, 17.400928, 24.533466>,  <7.559512, 17.396700, 24.666159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.359575, 17.400928, 24.533466>,  <7.026346, 17.407974, 24.312313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.359575, 17.400928, 24.533466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550254, -0.128779, 0.825007,
		0.056666, -0.991517, -0.116975,
		0.833073, -0.017616, 0.552884,
		7.609497, 17.395643, 24.699331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.923582, 16.875605, 24.742525>,  <7.026346, 17.407974, 24.312313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.923582, 16.875605, 24.742525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.183099, 17.083153, 24.965179>,  <7.338809, 17.207682, 25.098772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.183099, 17.083153, 24.965179>,  <6.923582, 16.875605, 24.742525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.183099, 17.083153, 24.965179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582012, -0.132893, 0.802247,
		0.490234, -0.844462, 0.215768,
		0.648793, 0.518868, 0.556636,
		7.377737, 17.238813, 25.132170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.017787, 16.536476, 25.479982>,  <6.923582, 16.875605, 24.742525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.017787, 16.536476, 25.479982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.148149, 16.911329, 25.529898>,  <7.226366, 17.136240, 25.559847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.148149, 16.911329, 25.529898>,  <7.017787, 16.536476, 25.479982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.148149, 16.911329, 25.529898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486076, 0.052886, 0.872315,
		0.810874, -0.344947, 0.472753,
		0.325905, 0.937131, 0.124787,
		7.245921, 17.192469, 25.567333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.217478, 15.880384, 25.909290>,  <7.017787, 16.536476, 25.479982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.217478, 15.880384, 25.909290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.065237, 15.512368, 25.946527>,  <6.973892, 15.291558, 25.968870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.065237, 15.512368, 25.946527>,  <7.217478, 15.880384, 25.909290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.065237, 15.512368, 25.946527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292602, -0.215316, -0.931677,
		0.877226, -0.327360, 0.351156,
		-0.380603, -0.920040, 0.093095,
		6.951056, 15.236356, 25.974457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.768163, 15.488862, 25.748283>,  <7.217478, 15.880384, 25.909290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.768163, 15.488862, 25.748283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.460163, 15.241924, 25.683804>,  <7.275363, 15.093761, 25.645115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.460163, 15.241924, 25.683804>,  <7.768163, 15.488862, 25.748283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.460163, 15.241924, 25.683804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491912, -0.413486, -0.766193,
		0.406352, -0.669265, 0.622063,
		-0.770001, -0.617344, -0.161199,
		7.229163, 15.056721, 25.635445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.074529, 14.860902, 25.579958>,  <7.768163, 15.488862, 25.748283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.074529, 14.860902, 25.579958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.700456, 14.837594, 25.440220>,  <7.476013, 14.823609, 25.356377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.700456, 14.837594, 25.440220>,  <8.074529, 14.860902, 25.579958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.700456, 14.837594, 25.440220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348127, -0.332690, -0.876427,
		-0.065154, -0.941234, 0.331410,
		-0.935180, -0.058271, -0.349345,
		7.419902, 14.820113, 25.335417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.942762, 14.188185, 25.350592>,  <8.074529, 14.860902, 25.579958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.942762, 14.188185, 25.350592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.675888, 14.404867, 25.146076>,  <7.515763, 14.534877, 25.023367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.675888, 14.404867, 25.146076>,  <7.942762, 14.188185, 25.350592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.675888, 14.404867, 25.146076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372570, -0.351692, -0.858781,
		-0.645024, -0.763457, 0.032820,
		-0.667185, 0.541706, -0.511291,
		7.475732, 14.567379, 24.992689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.641121, 13.758889, 24.897846>,  <7.942762, 14.188185, 25.350592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.641121, 13.758889, 24.897846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.607557, 14.134377, 24.764120>,  <7.587419, 14.359669, 24.683884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.607557, 14.134377, 24.764120>,  <7.641121, 13.758889, 24.897846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.607557, 14.134377, 24.764120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189933, -0.314283, -0.930135,
		-0.978205, -0.141545, -0.151922,
		-0.083909, 0.938718, -0.334317,
		7.582385, 14.415992, 24.663824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.305553, 13.698301, 24.320919>,  <7.641121, 13.758889, 24.897846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.305553, 13.698301, 24.320919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.395965, 14.079967, 24.242449>,  <7.450212, 14.308966, 24.195368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.395965, 14.079967, 24.242449>,  <7.305553, 13.698301, 24.320919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.395965, 14.079967, 24.242449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079705, -0.182595, -0.979952,
		-0.970854, 0.237134, 0.034780,
		0.226030, 0.954163, -0.196174,
		7.463773, 14.366216, 24.183598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.960783, 13.837328, 23.735321>,  <7.305553, 13.698301, 24.320919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.960783, 13.837328, 23.735321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.222576, 14.139314, 23.751720>,  <7.379652, 14.320505, 23.761560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<7.222576, 14.139314, 23.751720>,  <6.960783, 13.837328, 23.735321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<7.222576, 14.139314, 23.751720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088945, -0.023033, -0.995770,
		-0.750826, 0.655361, -0.082226,
		0.654483, 0.754964, 0.040997,
		7.418921, 14.365803, 23.764019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<8.979897, 16.514345, 27.916718> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.030069, 16.202358, 27.671469>,  <9.060172, 16.015165, 27.524319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.030069, 16.202358, 27.671469>,  <8.979897, 16.514345, 27.916718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.030069, 16.202358, 27.671469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570669, -0.562251, 0.598507,
		-0.811544, 0.274819, -0.515626,
		0.125430, -0.779967, -0.613122,
		9.067698, 15.968369, 27.487532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.995769, 17.364452, 27.943729>,  <8.979897, 16.514345, 27.916718>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.995769, 17.364452, 27.943729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.784876, 17.226023, 28.254150>,  <8.658340, 17.142965, 28.440403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.784876, 17.226023, 28.254150>,  <8.995769, 17.364452, 27.943729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.784876, 17.226023, 28.254150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114023, -0.933859, -0.338978,
		0.842037, -0.090231, 0.531820,
		-0.527231, -0.346072, 0.776055,
		8.626706, 17.122202, 28.486967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.412230, 17.785164, 28.482834>,  <8.995769, 17.364452, 27.943729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.412230, 17.785164, 28.482834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.619983, 17.481176, 28.639133>,  <9.744635, 17.298784, 28.732914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.619983, 17.481176, 28.639133>,  <9.412230, 17.785164, 28.482834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.619983, 17.481176, 28.639133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487316, -0.112217, -0.865986,
		0.701972, 0.640197, 0.312062,
		0.519383, -0.759970, 0.390751,
		9.775798, 17.253185, 28.756359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.122428, 17.760742, 28.219971>,  <9.412230, 17.785164, 28.482834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.122428, 17.760742, 28.219971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.056585, 17.389078, 28.352371>,  <10.017079, 17.166079, 28.431812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.056585, 17.389078, 28.352371>,  <10.122428, 17.760742, 28.219971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.056585, 17.389078, 28.352371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469505, -0.368932, -0.802156,
		0.867450, 0.023367, 0.496975,
		-0.164607, -0.929163, 0.331001,
		10.007203, 17.110329, 28.451672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.767957, 17.335541, 28.217928>,  <10.122428, 17.760742, 28.219971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.767957, 17.335541, 28.217928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.448707, 17.096252, 28.189285>,  <10.257156, 16.952679, 28.172100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.448707, 17.096252, 28.189285>,  <10.767957, 17.335541, 28.217928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.448707, 17.096252, 28.189285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465282, -0.536492, -0.704052,
		0.382763, -0.595239, 0.706529,
		-0.798126, -0.598220, -0.071604,
		10.209269, 16.916786, 28.167805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.469505, 17.058249, 27.925974>,  <10.767957, 17.335541, 28.217928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.469505, 17.058249, 27.925974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.449763, 16.692019, 28.085619>,  <11.437918, 16.472281, 28.181406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.449763, 16.692019, 28.085619>,  <11.469505, 17.058249, 27.925974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.449763, 16.692019, 28.085619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118302, -0.402144, -0.907901,
		0.991750, 0.002406, 0.128162,
		-0.049355, -0.915573, 0.399111,
		11.434957, 16.417347, 28.205353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.050068, 16.733387, 27.732038>,  <11.469505, 17.058249, 27.925974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.050068, 16.733387, 27.732038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.787491, 16.443598, 27.816153>,  <11.629945, 16.269724, 27.866621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.787491, 16.443598, 27.816153>,  <12.050068, 16.733387, 27.732038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.787491, 16.443598, 27.816153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308186, -0.511980, -0.801809,
		0.688553, -0.461533, 0.559358,
		-0.656442, -0.724474, 0.210287,
		11.590558, 16.226255, 27.879238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.435258, 16.118572, 27.791729>,  <12.050068, 16.733387, 27.732038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.435258, 16.118572, 27.791729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.056166, 16.037489, 27.693165>,  <11.828711, 15.988839, 27.634026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.056166, 16.037489, 27.693165>,  <12.435258, 16.118572, 27.791729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.056166, 16.037489, 27.693165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318946, -0.579915, -0.749648,
		0.009064, -0.789055, 0.614256,
		-0.947729, -0.202709, -0.246410,
		11.771847, 15.976676, 27.619242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471666, 15.459845, 27.502974>,  <12.435258, 16.118572, 27.791729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471666, 15.459845, 27.502974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.105140, 15.566626, 27.383574>,  <11.885224, 15.630694, 27.311934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.105140, 15.566626, 27.383574>,  <12.471666, 15.459845, 27.502974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.105140, 15.566626, 27.383574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205770, -0.325599, -0.922846,
		-0.343548, -0.907040, 0.243420,
		-0.916315, 0.266953, -0.298500,
		11.830245, 15.646711, 27.294024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.158163, 14.904976, 27.257240>,  <12.471666, 15.459845, 27.502974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.158163, 14.904976, 27.257240> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.975246, 15.206187, 27.067997>,  <11.865497, 15.386914, 26.954451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.975246, 15.206187, 27.067997>,  <12.158163, 14.904976, 27.257240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.975246, 15.206187, 27.067997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414338, -0.290318, -0.862577,
		-0.786898, -0.590476, -0.179249,
		-0.457292, 0.753029, -0.473108,
		11.838058, 15.432096, 26.926065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.879443, 14.542802, 26.689352>,  <12.158163, 14.904976, 27.257240>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.879443, 14.542802, 26.689352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855148, 14.929598, 26.590364>,  <11.840571, 15.161675, 26.530972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.855148, 14.929598, 26.590364>,  <11.879443, 14.542802, 26.689352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.855148, 14.929598, 26.590364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002223, -0.248056, -0.968743,
		-0.998151, -0.058289, 0.017216,
		-0.060738, 0.966990, -0.247468,
		11.836927, 15.219695, 26.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.431587, 14.491168, 26.055048>,  <11.879443, 14.542802, 26.689352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.431587, 14.491168, 26.055048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.598918, 14.854451, 26.060120>,  <11.699317, 15.072421, 26.063164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.598918, 14.854451, 26.060120>,  <11.431587, 14.491168, 26.055048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.598918, 14.854451, 26.060120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028035, 0.026865, -0.999246,
		-0.907864, 0.417656, 0.036700,
		0.418327, 0.908208, 0.012680,
		11.724416, 15.126913, 26.063923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.410749, 13.757771, 26.075058>,  <11.431587, 14.491168, 26.055048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.410749, 13.757771, 26.075058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.348706, 13.373960, 26.169083>,  <11.311481, 13.143675, 26.225498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.348706, 13.373960, 26.169083>,  <11.410749, 13.757771, 26.075058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.348706, 13.373960, 26.169083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690316, 0.275482, 0.669009,
		-0.706686, -0.058498, -0.705105,
		-0.155108, -0.959525, 0.235061,
		11.302174, 13.086103, 26.239601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.716286, 13.731742, 26.069918>,  <11.410749, 13.757771, 26.075058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.716286, 13.731742, 26.069918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848270, 13.410979, 26.269144>,  <10.927462, 13.218521, 26.388680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.848270, 13.410979, 26.269144>,  <10.716286, 13.731742, 26.069918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.848270, 13.410979, 26.269144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705877, 0.140729, 0.694214,
		-0.626788, -0.580637, -0.519612,
		0.329962, -0.801908, 0.498066,
		10.947259, 13.170407, 26.418564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.112780, 13.401806, 26.256964>,  <10.716286, 13.731742, 26.069918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.112780, 13.401806, 26.256964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.409659, 13.279840, 26.495682>,  <10.587788, 13.206659, 26.638912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.409659, 13.279840, 26.495682>,  <10.112780, 13.401806, 26.256964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.409659, 13.279840, 26.495682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640081, -0.058647, 0.766066,
		-0.198585, -0.950572, -0.238699,
		0.742200, -0.304916, 0.596797,
		10.632319, 13.188364, 26.674721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.777119, 12.885021, 26.598925>,  <10.112780, 13.401806, 26.256964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.777119, 12.885021, 26.598925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.076080, 12.993796, 26.841391>,  <10.255458, 13.059062, 26.986870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.076080, 12.993796, 26.841391>,  <9.777119, 12.885021, 26.598925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.076080, 12.993796, 26.841391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616475, -0.056269, 0.785361,
		0.247680, -0.960667, 0.125589,
		0.747404, 0.271940, 0.606165,
		10.300302, 13.075377, 27.023239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.420153, 12.802080, 27.142130>,  <9.777119, 12.885021, 26.598925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.420153, 12.802080, 27.142130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.757894, 12.954326, 27.292969>,  <9.960538, 13.045673, 27.383472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.757894, 12.954326, 27.292969>,  <9.420153, 12.802080, 27.142130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.757894, 12.954326, 27.292969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479424, 0.222477, 0.848915,
		0.239220, -0.897570, 0.370328,
		0.844350, 0.380621, 0.377095,
		10.011199, 13.068510, 27.406097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.531545, 12.519465, 27.819504>,  <9.420153, 12.802080, 27.142130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.531545, 12.519465, 27.819504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.715626, 12.874513, 27.826946>,  <9.826075, 13.087542, 27.831411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.715626, 12.874513, 27.826946>,  <9.531545, 12.519465, 27.819504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.715626, 12.874513, 27.826946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554750, 0.271132, 0.786600,
		0.693156, -0.372318, 0.617182,
		0.460203, 0.887618, 0.018607,
		9.853686, 13.140799, 27.832529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.714807, 12.682064, 28.569445>,  <9.531545, 12.519465, 27.819504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.714807, 12.682064, 28.569445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.737386, 13.032657, 28.378199>,  <9.750933, 13.243012, 28.263451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.737386, 13.032657, 28.378199>,  <9.714807, 12.682064, 28.569445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.737386, 13.032657, 28.378199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483771, 0.442917, 0.754844,
		0.873372, 0.188689, 0.449018,
		0.056447, 0.876482, -0.478114,
		9.754320, 13.295601, 28.234764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.851339, 13.140952, 29.083160>,  <9.714807, 12.682064, 28.569445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.851339, 13.140952, 29.083160> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.690783, 13.377069, 28.803034>,  <9.594449, 13.518738, 28.634958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.690783, 13.377069, 28.803034>,  <9.851339, 13.140952, 29.083160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.690783, 13.377069, 28.803034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615781, 0.392092, 0.683431,
		0.678010, 0.705565, 0.206107,
		-0.401392, 0.590290, -0.700316,
		9.570365, 13.554155, 28.592939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.857356, 13.890933, 29.368671>,  <9.851339, 13.140952, 29.083160>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.857356, 13.890933, 29.368671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.579083, 13.879329, 29.081566>,  <9.412120, 13.872366, 28.909302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.579083, 13.879329, 29.081566>,  <9.857356, 13.890933, 29.368671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.579083, 13.879329, 29.081566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656719, 0.430606, 0.619111,
		0.291113, 0.902074, -0.318616,
		-0.695682, -0.029010, -0.717764,
		9.370378, 13.870625, 28.866236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.478248, 14.540848, 29.346451>,  <9.857356, 13.890933, 29.368671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.478248, 14.540848, 29.346451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.231410, 14.304398, 29.138695>,  <9.083307, 14.162527, 29.014042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.231410, 14.304398, 29.138695>,  <9.478248, 14.540848, 29.346451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.231410, 14.304398, 29.138695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774865, 0.341543, 0.531914,
		-0.137034, 0.730698, -0.668807,
		-0.617095, -0.591125, -0.519389,
		9.046282, 14.127060, 28.982878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991989, 14.988110, 29.181400>,  <9.478248, 14.540848, 29.346451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991989, 14.988110, 29.181400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.837906, 14.619123, 29.171070>,  <8.745456, 14.397730, 29.164873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.837906, 14.619123, 29.171070>,  <8.991989, 14.988110, 29.181400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.837906, 14.619123, 29.171070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825787, 0.332073, 0.455854,
		-0.411936, 0.196923, -0.889680,
		-0.385207, -0.922469, -0.025824,
		8.722343, 14.342381, 29.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.287918, 15.078074, 29.298779>,  <8.991989, 14.988110, 29.181400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.287918, 15.078074, 29.298779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.318179, 14.685763, 29.370731>,  <8.336336, 14.450377, 29.413902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.318179, 14.685763, 29.370731>,  <8.287918, 15.078074, 29.298779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.318179, 14.685763, 29.370731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882026, 0.018319, 0.470843,
		-0.465087, -0.194280, -0.863684,
		0.075654, -0.980775, 0.179880,
		8.340876, 14.391531, 29.424696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.696845, 14.870590, 29.160032>,  <8.287918, 15.078074, 29.298779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.696845, 14.870590, 29.160032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.850667, 14.571861, 29.377058>,  <7.942960, 14.392624, 29.507273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.850667, 14.571861, 29.377058>,  <7.696845, 14.870590, 29.160032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.850667, 14.571861, 29.377058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876089, -0.110091, 0.469413,
		-0.290837, -0.655849, -0.696618,
		0.384555, -0.746822, 0.542563,
		7.966033, 14.347815, 29.539827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.154964, 14.409665, 29.265398>,  <7.696845, 14.870590, 29.160032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.154964, 14.409665, 29.265398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.407670, 14.346175, 29.568892>,  <7.559293, 14.308082, 29.750988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.407670, 14.346175, 29.568892>,  <7.154964, 14.409665, 29.265398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.407670, 14.346175, 29.568892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774988, -0.108669, 0.622563,
		-0.016365, -0.981324, -0.191662,
		0.631764, -0.158724, 0.758736,
		7.597199, 14.298557, 29.796513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.437227, 14.401569, 28.596851>,  <7.154964, 14.409665, 29.265398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.437227, 14.401569, 28.596851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.133442, 14.647955, 28.680571>,  <6.951171, 14.795786, 28.730803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.133442, 14.647955, 28.680571>,  <7.437227, 14.401569, 28.596851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.133442, 14.647955, 28.680571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175999, 0.115189, -0.977628,
		-0.626292, -0.779308, 0.020927,
		-0.759462, 0.615964, 0.209299,
		6.905603, 14.832744, 28.743361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.850794, 14.083410, 28.197166>,  <7.437227, 14.401569, 28.596851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.850794, 14.083410, 28.197166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.794130, 14.473031, 28.267771>,  <6.760131, 14.706803, 28.310133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.794130, 14.473031, 28.267771>,  <6.850794, 14.083410, 28.197166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.794130, 14.473031, 28.267771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250874, 0.137164, -0.958253,
		-0.957598, -0.180029, 0.224934,
		-0.141660, 0.974051, 0.176512,
		6.751632, 14.765246, 28.320724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.236939, 14.182802, 27.889854>,  <6.850794, 14.083410, 28.197166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.236939, 14.182802, 27.889854> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.458994, 14.514528, 27.915337>,  <6.592227, 14.713564, 27.930626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.458994, 14.514528, 27.915337>,  <6.236939, 14.182802, 27.889854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.458994, 14.514528, 27.915337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096892, 0.140550, -0.985321,
		-0.826095, 0.540817, 0.158379,
		0.555138, 0.829315, 0.063707,
		6.625536, 14.763323, 27.934448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.999746, 14.572508, 27.440935>,  <6.236939, 14.182802, 27.889854>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.999746, 14.572508, 27.440935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.332845, 14.786952, 27.496243>,  <6.532705, 14.915618, 27.529427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.332845, 14.786952, 27.496243>,  <5.999746, 14.572508, 27.440935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.332845, 14.786952, 27.496243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024725, 0.213479, -0.976635,
		-0.553100, 0.816709, 0.164519,
		0.832747, 0.536109, 0.138269,
		6.582669, 14.947784, 27.537724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.857156, 15.185911, 27.021809>,  <5.999746, 14.572508, 27.440935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.857156, 15.185911, 27.021809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.251441, 15.154351, 27.081337>,  <6.488011, 15.135415, 27.117054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.251441, 15.154351, 27.081337>,  <5.857156, 15.185911, 27.021809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.251441, 15.154351, 27.081337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159043, 0.144963, -0.976571,
		0.055478, 0.986286, 0.155440,
		0.985712, -0.078900, 0.148820,
		6.547154, 15.130681, 27.125982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.162574, 15.802423, 26.801245>,  <5.857156, 15.185911, 27.021809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.162574, 15.802423, 26.801245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.464623, 15.540973, 26.780996>,  <6.645852, 15.384102, 26.768848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.464623, 15.540973, 26.780996>,  <6.162574, 15.802423, 26.801245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.464623, 15.540973, 26.780996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072040, 0.159474, -0.984570,
		0.651614, 0.739824, 0.167510,
		0.755122, -0.653628, -0.050619,
		6.691160, 15.344885, 26.765810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.633942, 15.981773, 26.345373>,  <6.162574, 15.802423, 26.801245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.633942, 15.981773, 26.345373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.723865, 15.592150, 26.335012>,  <6.777818, 15.358376, 26.328796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.723865, 15.592150, 26.335012>,  <6.633942, 15.981773, 26.345373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.723865, 15.592150, 26.335012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039967, 0.035778, -0.998560,
		0.973583, 0.223448, 0.046974,
		0.224807, -0.974059, -0.025902,
		6.791306, 15.299932, 26.327242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.053056, 16.611362, 26.266138>,  <6.633942, 15.981773, 26.345373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.053056, 16.611362, 26.266138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.114894, 16.985588, 26.139130>,  <7.151998, 17.210123, 26.062925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.114894, 16.985588, 26.139130>,  <7.053056, 16.611362, 26.266138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.114894, 16.985588, 26.139130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243408, 0.347545, 0.905519,
		0.957524, -0.062702, 0.281453,
		0.154596, 0.935564, -0.317520,
		7.161273, 17.266258, 26.043873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.309924, 16.922689, 26.834955>,  <7.053056, 16.611362, 26.266138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.309924, 16.922689, 26.834955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.163157, 17.213724, 26.603098>,  <7.075097, 17.388346, 26.463984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.163157, 17.213724, 26.603098>,  <7.309924, 16.922689, 26.834955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.163157, 17.213724, 26.603098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298114, 0.498272, 0.814158,
		0.881192, 0.471529, 0.034079,
		-0.366919, 0.727589, -0.579642,
		7.053082, 17.432001, 26.429205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.623562, 17.475954, 27.150038>,  <7.309924, 16.922689, 26.834955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.623562, 17.475954, 27.150038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.298773, 17.619425, 26.965843>,  <7.103899, 17.705507, 26.855326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.298773, 17.619425, 26.965843>,  <7.623562, 17.475954, 27.150038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.298773, 17.619425, 26.965843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248674, 0.501170, 0.828848,
		0.528072, 0.787515, -0.317743,
		-0.811974, 0.358677, -0.460488,
		7.055181, 17.727028, 26.827696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598688, 18.114431, 27.324781>,  <7.623562, 17.475954, 27.150038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598688, 18.114431, 27.324781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.219121, 18.070200, 27.206573>,  <6.991382, 18.043661, 27.135649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.219121, 18.070200, 27.206573>,  <7.598688, 18.114431, 27.324781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.219121, 18.070200, 27.206573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290721, 0.670441, 0.682635,
		0.122643, 0.733676, -0.668339,
		-0.948915, -0.110580, -0.295520,
		6.934447, 18.037025, 27.117918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.309006, 18.829340, 27.424696>,  <7.598688, 18.114431, 27.324781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.309006, 18.829340, 27.424696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.000548, 18.585640, 27.350775>,  <6.815473, 18.439421, 27.306423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<7.000548, 18.585640, 27.350775>,  <7.309006, 18.829340, 27.424696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<7.000548, 18.585640, 27.350775> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584089, 0.561512, 0.586126,
		-0.253327, 0.559929, -0.788863,
		-0.771145, -0.609248, -0.184802,
		6.769204, 18.402866, 27.295334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.869907, 19.332899, 27.029659>,  <7.309006, 18.829340, 27.424696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.869907, 19.332899, 27.029659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.694028, 19.033407, 27.228081>,  <6.588500, 18.853712, 27.347134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.694028, 19.033407, 27.228081>,  <6.869907, 19.332899, 27.029659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.694028, 19.033407, 27.228081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353859, 0.652051, 0.670532,
		-0.825500, 0.119299, -0.551651,
		-0.439698, -0.748731, 0.496053,
		6.562119, 18.808788, 27.376896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.149915, 19.606565, 27.295847>,  <6.869907, 19.332899, 27.029659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.149915, 19.606565, 27.295847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.208245, 19.279583, 27.518736>,  <6.243243, 19.083393, 27.652470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<6.208245, 19.279583, 27.518736>,  <6.149915, 19.606565, 27.295847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<6.208245, 19.279583, 27.518736> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329398, 0.490986, 0.806492,
		-0.932862, -0.301155, -0.197670,
		0.145826, -0.817458, 0.557222,
		6.251993, 19.034346, 27.685902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.713649, 19.787724, 27.924500>,  <6.149915, 19.606565, 27.295847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.713649, 19.787724, 27.924500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.953009, 19.485571, 28.031317>,  <6.096625, 19.304279, 28.095407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.953009, 19.485571, 28.031317>,  <5.713649, 19.787724, 27.924500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<5.953009, 19.485571, 28.031317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056429, 0.292741, 0.954525,
		-0.799207, -0.586258, 0.132551,
		0.598401, -0.755384, 0.267043,
		6.132529, 19.258955, 28.111429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.394866, 19.390373, 28.495588>,  <5.713649, 19.787724, 27.924500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.394866, 19.390373, 28.495588> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.792589, 19.359802, 28.525274>,  <6.031223, 19.341459, 28.543085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<5.792589, 19.359802, 28.525274>,  <5.394866, 19.390373, 28.495588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<5.792589, 19.359802, 28.525274> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070118, 0.054973, 0.996023,
		-0.080202, -0.995559, 0.049301,
		0.994309, -0.076426, 0.074215,
		6.090882, 19.336874, 28.547539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.781064, 13.876657, 15.552501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073662, 13.950706, 15.814996>,  <14.249220, 13.995134, 15.972493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.073662, 13.950706, 15.814996>,  <13.781064, 13.876657, 15.552501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073662, 13.950706, 15.814996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659689, 0.435511, 0.612487,
		-0.172416, -0.880943, 0.440695,
		0.731494, 0.185119, 0.656237,
		14.293110, 14.006241, 16.011868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.672284, 13.514831, 16.250904>,  <13.781064, 13.876657, 15.552501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.672284, 13.514831, 16.250904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867134, 13.862565, 16.284286>,  <13.984044, 14.071205, 16.304316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.867134, 13.862565, 16.284286>,  <13.672284, 13.514831, 16.250904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.867134, 13.862565, 16.284286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664717, 0.307087, 0.681065,
		0.566446, -0.387238, 0.727452,
		0.487125, 0.869335, 0.083455,
		14.013272, 14.123365, 16.309324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.775902, 13.691362, 16.973614>,  <13.672284, 13.514831, 16.250904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.775902, 13.691362, 16.973614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774292, 14.024616, 16.752392>,  <13.773326, 14.224568, 16.619659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.774292, 14.024616, 16.752392>,  <13.775902, 13.691362, 16.973614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.774292, 14.024616, 16.752392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688060, 0.399019, 0.606100,
		0.725643, 0.382974, 0.571641,
		-0.004025, 0.833136, -0.553054,
		13.773085, 14.274557, 16.586475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754402, 14.125335, 17.485029>,  <13.775902, 13.691362, 16.973614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754402, 14.125335, 17.485029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.672138, 14.382396, 17.189814>,  <13.622780, 14.536633, 17.012684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.672138, 14.382396, 17.189814>,  <13.754402, 14.125335, 17.485029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.672138, 14.382396, 17.189814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644774, 0.478348, 0.596196,
		0.736186, 0.598482, 0.315988,
		-0.205660, 0.642652, -0.738039,
		13.610440, 14.575191, 16.968401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.692539, 14.738290, 17.848164>,  <13.754402, 14.125335, 17.485029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.692539, 14.738290, 17.848164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505186, 14.790902, 17.498692>,  <13.392775, 14.822470, 17.289009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.505186, 14.790902, 17.498692>,  <13.692539, 14.738290, 17.848164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505186, 14.790902, 17.498692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708638, 0.534667, 0.460395,
		0.527684, 0.834764, -0.157221,
		-0.468382, 0.131530, -0.873681,
		13.364672, 14.830361, 17.236588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.482143, 15.388706, 17.939718>,  <13.692539, 14.738290, 17.848164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.482143, 15.388706, 17.939718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.248272, 15.254251, 17.644377>,  <13.107949, 15.173578, 17.467173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.248272, 15.254251, 17.644377>,  <13.482143, 15.388706, 17.939718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.248272, 15.254251, 17.644377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806092, 0.343329, 0.482017,
		0.091474, 0.877004, -0.471695,
		-0.584678, -0.336138, -0.738352,
		13.072868, 15.153410, 17.422871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.027365, 15.909059, 17.668875>,  <13.482143, 15.388706, 17.939718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.027365, 15.909059, 17.668875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842761, 15.561870, 17.595514>,  <12.731999, 15.353557, 17.551498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.842761, 15.561870, 17.595514>,  <13.027365, 15.909059, 17.668875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.842761, 15.561870, 17.595514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800704, 0.318539, 0.507353,
		-0.381948, 0.380996, -0.841996,
		-0.461508, -0.867972, -0.183400,
		12.704309, 15.301478, 17.540495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.416611, 16.141006, 17.473431>,  <13.027365, 15.909059, 17.668875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.416611, 16.141006, 17.473431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380659, 15.755700, 17.574657>,  <12.359088, 15.524517, 17.635393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.380659, 15.755700, 17.574657>,  <12.416611, 16.141006, 17.473431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.380659, 15.755700, 17.574657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825808, 0.214120, 0.521722,
		-0.556743, -0.162094, -0.814716,
		-0.089879, -0.963264, 0.253068,
		12.353696, 15.466721, 17.650578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.768497, 16.034416, 17.327589>,  <12.416611, 16.141006, 17.473431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.768497, 16.034416, 17.327589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834668, 15.734032, 17.583303>,  <11.874372, 15.553801, 17.736732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834668, 15.734032, 17.583303>,  <11.768497, 16.034416, 17.327589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834668, 15.734032, 17.583303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920344, 0.115386, 0.373701,
		-0.354401, -0.650184, -0.672057,
		0.165429, -0.750964, 0.639286,
		11.884296, 15.508742, 17.775089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.117023, 15.656251, 17.330500>,  <11.768497, 16.034416, 17.327589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.117023, 15.656251, 17.330500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.310928, 15.550089, 17.663862>,  <11.427272, 15.486392, 17.863880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.310928, 15.550089, 17.663862>,  <11.117023, 15.656251, 17.330500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.310928, 15.550089, 17.663862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863759, 0.004604, 0.503885,
		-0.137571, -0.964125, -0.227016,
		0.484763, -0.265407, 0.833405,
		11.456357, 15.470468, 17.913883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.717983, 15.201771, 17.560310>,  <11.117023, 15.656251, 17.330500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.717983, 15.201771, 17.560310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935240, 15.319705, 17.874781>,  <11.065594, 15.390466, 18.063463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935240, 15.319705, 17.874781>,  <10.717983, 15.201771, 17.560310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935240, 15.319705, 17.874781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837709, 0.126801, 0.531193,
		0.056923, -0.947100, 0.315851,
		0.543143, 0.294828, 0.786176,
		11.098183, 15.408155, 18.110632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.341433, 15.008546, 18.218264>,  <10.717983, 15.201771, 17.560310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.341433, 15.008546, 18.218264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604768, 15.255263, 18.390846>,  <10.762769, 15.403294, 18.494396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.604768, 15.255263, 18.390846>,  <10.341433, 15.008546, 18.218264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.604768, 15.255263, 18.390846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723927, 0.361796, 0.587395,
		0.206200, -0.699050, 0.684697,
		0.658339, 0.616792, 0.431459,
		10.802270, 15.440301, 18.520283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.607609, 14.252110, 18.266987>,  <10.341433, 15.008546, 18.218264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.607609, 14.252110, 18.266987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441995, 13.919497, 18.415108>,  <10.342626, 13.719928, 18.503981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441995, 13.919497, 18.415108>,  <10.607609, 14.252110, 18.266987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441995, 13.919497, 18.415108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566869, -0.553836, -0.609857,
		0.712204, -0.042592, 0.700680,
		-0.414036, -0.831536, 0.370300,
		10.317783, 13.670035, 18.526197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.210801, 13.841259, 18.515013>,  <10.607609, 14.252110, 18.266987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.210801, 13.841259, 18.515013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904321, 13.604280, 18.415461>,  <10.720432, 13.462093, 18.355730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.904321, 13.604280, 18.415461>,  <11.210801, 13.841259, 18.515013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.904321, 13.604280, 18.415461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626566, -0.602801, -0.494010,
		0.142650, -0.534451, 0.833074,
		-0.766202, -0.592447, -0.248880,
		10.674460, 13.426546, 18.340797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.334302, 13.202340, 18.706846>,  <11.210801, 13.841259, 18.515013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.334302, 13.202340, 18.706846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062402, 13.157253, 18.416954>,  <10.899261, 13.130201, 18.243019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062402, 13.157253, 18.416954>,  <11.334302, 13.202340, 18.706846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062402, 13.157253, 18.416954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613972, -0.627987, -0.478195,
		-0.401221, -0.770018, 0.496079,
		-0.679750, -0.112717, -0.724731,
		10.858477, 13.123439, 18.199535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.473568, 12.623295, 18.562597>,  <11.334302, 13.202340, 18.706846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.473568, 12.623295, 18.562597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236868, 12.716018, 18.253767>,  <11.094848, 12.771651, 18.068470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.236868, 12.716018, 18.253767>,  <11.473568, 12.623295, 18.562597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.236868, 12.716018, 18.253767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589465, -0.528886, -0.610583,
		-0.549875, -0.816423, 0.176328,
		-0.591751, 0.231805, -0.772073,
		11.059343, 12.785560, 18.022144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.488634, 12.000454, 18.271763>,  <11.473568, 12.623295, 18.562597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.488634, 12.000454, 18.271763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360642, 12.278446, 18.014200>,  <11.283847, 12.445242, 17.859663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.360642, 12.278446, 18.014200>,  <11.488634, 12.000454, 18.271763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.360642, 12.278446, 18.014200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707449, -0.276795, -0.650308,
		-0.630181, -0.663615, -0.403096,
		-0.319980, 0.694982, -0.643905,
		11.264648, 12.486940, 17.821028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308240, 11.665836, 17.748180>,  <11.488634, 12.000454, 18.271763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308240, 11.665836, 17.748180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397739, 12.031143, 17.612015>,  <11.451439, 12.250327, 17.530315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.397739, 12.031143, 17.612015>,  <11.308240, 11.665836, 17.748180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.397739, 12.031143, 17.612015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643330, -0.400761, -0.652316,
		-0.732163, -0.073045, -0.677201,
		0.223748, 0.913266, -0.340415,
		11.464864, 12.305123, 17.509890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.152392, 11.625998, 17.001316>,  <11.308240, 11.665836, 17.748180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.152392, 11.625998, 17.001316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405563, 11.926329, 17.076851>,  <11.557467, 12.106527, 17.122171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.405563, 11.926329, 17.076851>,  <11.152392, 11.625998, 17.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.405563, 11.926329, 17.076851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638464, -0.368230, -0.675848,
		-0.437911, 0.548328, -0.712440,
		0.632928, 0.750828, 0.188835,
		11.595442, 12.151577, 17.133501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178386, 11.877769, 16.340530>,  <11.152392, 11.625998, 17.001316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178386, 11.877769, 16.340530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.490908, 11.998405, 16.559111>,  <11.678421, 12.070786, 16.690258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.490908, 11.998405, 16.559111>,  <11.178386, 11.877769, 16.340530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.490908, 11.998405, 16.559111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619679, -0.270229, -0.736868,
		-0.074565, 0.914341, -0.398020,
		0.781305, 0.301589, 0.546448,
		11.725299, 12.088882, 16.723045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.549660, 12.172339, 15.875307>,  <11.178386, 11.877769, 16.340530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.549660, 12.172339, 15.875307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822848, 12.078849, 16.152124>,  <11.986761, 12.022755, 16.318214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.822848, 12.078849, 16.152124>,  <11.549660, 12.172339, 15.875307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.822848, 12.078849, 16.152124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592906, -0.375975, -0.712113,
		0.426629, 0.896669, -0.118203,
		0.682971, -0.233725, 0.692042,
		12.027740, 12.008731, 16.359737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.123748, 12.485918, 15.643548>,  <11.549660, 12.172339, 15.875307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.123748, 12.485918, 15.643548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229312, 12.196102, 15.898230>,  <12.292650, 12.022212, 16.051039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.229312, 12.196102, 15.898230>,  <12.123748, 12.485918, 15.643548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229312, 12.196102, 15.898230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724146, -0.287216, -0.626992,
		0.637153, 0.626536, 0.448874,
		0.263909, -0.724541, 0.636705,
		12.308485, 11.978740, 16.089241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609673, 12.284710, 15.365681>,  <12.123748, 12.485918, 15.643548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609673, 12.284710, 15.365681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604648, 11.986812, 15.632573>,  <12.601632, 11.808073, 15.792708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.604648, 11.986812, 15.632573>,  <12.609673, 12.284710, 15.365681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.604648, 11.986812, 15.632573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636770, -0.520443, -0.568914,
		0.770952, 0.417726, 0.480769,
		-0.012563, -0.744745, 0.667231,
		12.600879, 11.763389, 15.832743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.286967, 11.956439, 15.475739>,  <12.609673, 12.284710, 15.365681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.286967, 11.956439, 15.475739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039511, 11.668588, 15.601862>,  <12.891037, 11.495877, 15.677536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.039511, 11.668588, 15.601862>,  <13.286967, 11.956439, 15.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.039511, 11.668588, 15.601862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478057, -0.663259, -0.575803,
		0.623494, -0.205481, 0.754342,
		-0.618641, -0.719628, 0.315307,
		12.853918, 11.452699, 15.696454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.729263, 11.422478, 15.652772>,  <13.286967, 11.956439, 15.475739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.729263, 11.422478, 15.652772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375032, 11.239229, 15.622105>,  <13.162494, 11.129280, 15.603704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.375032, 11.239229, 15.622105>,  <13.729263, 11.422478, 15.652772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.375032, 11.239229, 15.622105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404172, -0.678661, -0.613241,
		0.228907, -0.574060, 0.786166,
		-0.885577, -0.458121, -0.076669,
		13.109360, 11.101793, 15.599104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827752, 10.683549, 15.847692>,  <13.729263, 11.422478, 15.652772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827752, 10.683549, 15.847692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508168, 10.736398, 15.613014>,  <13.316418, 10.768106, 15.472208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.508168, 10.736398, 15.613014>,  <13.827752, 10.683549, 15.847692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.508168, 10.736398, 15.613014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375391, -0.652604, -0.658171,
		-0.469836, -0.746091, 0.471807,
		-0.798959, 0.132121, -0.586693,
		13.268480, 10.776034, 15.437006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.228482, 10.249305, 15.842812>,  <13.827752, 10.683549, 15.847692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.228482, 10.249305, 15.842812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091606, 9.994951, 15.566100>,  <13.009480, 9.842340, 15.400073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.091606, 9.994951, 15.566100>,  <13.228482, 10.249305, 15.842812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091606, 9.994951, 15.566100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248980, -0.648547, 0.719303,
		-0.906044, 0.418377, 0.063604,
		-0.342190, -0.635884, -0.691779,
		12.988949, 9.804186, 15.358566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.563317, 9.915812, 16.454643>,  <13.228482, 10.249305, 15.842812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.563317, 9.915812, 16.454643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927129, 10.068947, 16.389906>,  <14.145416, 10.160828, 16.351063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.927129, 10.068947, 16.389906>,  <13.563317, 9.915812, 16.454643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.927129, 10.068947, 16.389906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223670, -0.122622, 0.966921,
		0.350326, -0.915642, -0.197157,
		0.909529, 0.382836, -0.161844,
		14.199987, 10.183798, 16.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171946, 9.483384, 16.559620>,  <13.563317, 9.915812, 16.454643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171946, 9.483384, 16.559620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277129, 9.863260, 16.627670>,  <14.340240, 10.091186, 16.668501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.277129, 9.863260, 16.627670>,  <14.171946, 9.483384, 16.559620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.277129, 9.863260, 16.627670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296306, -0.247302, 0.922521,
		0.918181, -0.192175, -0.346429,
		0.262958, 0.949690, 0.170125,
		14.356016, 10.148168, 16.678707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.828518, 9.498137, 16.870798>,  <14.171946, 9.483384, 16.559620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.828518, 9.498137, 16.870798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664012, 9.849441, 16.968388>,  <14.565309, 10.060223, 17.026941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.664012, 9.849441, 16.968388>,  <14.828518, 9.498137, 16.870798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.664012, 9.849441, 16.968388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243747, -0.151948, 0.957862,
		0.878322, 0.453402, -0.151582,
		-0.411264, 0.878258, 0.243975,
		14.540633, 10.112918, 17.041580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.212770, 9.749071, 17.450020>,  <14.828518, 9.498137, 16.870798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.212770, 9.749071, 17.450020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891179, 9.984690, 17.482634>,  <14.698225, 10.126060, 17.502201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.891179, 9.984690, 17.482634>,  <15.212770, 9.749071, 17.450020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.891179, 9.984690, 17.482634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088357, -0.017256, 0.995939,
		0.588061, 0.807915, -0.038173,
		-0.803976, 0.589046, 0.081532,
		14.649986, 10.161404, 17.507093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.503987, 10.262252, 17.874304>,  <15.212770, 9.749071, 17.450020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.503987, 10.262252, 17.874304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104496, 10.255389, 17.893263>,  <14.864801, 10.251272, 17.904638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104496, 10.255389, 17.893263>,  <15.503987, 10.262252, 17.874304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104496, 10.255389, 17.893263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043365, 0.186929, 0.981416,
		-0.025697, 0.982224, -0.185948,
		-0.998729, -0.017156, 0.047398,
		14.804877, 10.250242, 17.907482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.431403, 10.575983, 18.362520>,  <15.503987, 10.262252, 17.874304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.431403, 10.575983, 18.362520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041950, 10.487166, 18.341595>,  <14.808278, 10.433876, 18.329039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041950, 10.487166, 18.341595>,  <15.431403, 10.575983, 18.362520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041950, 10.487166, 18.341595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089234, 0.159644, 0.983133,
		-0.209945, 0.961879, -0.175248,
		-0.973633, -0.222042, -0.052316,
		14.749861, 10.420554, 18.325899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.924795, 11.193121, 18.544252>,  <15.431403, 10.575983, 18.362520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.924795, 11.193121, 18.544252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752535, 10.839567, 18.617233>,  <14.649179, 10.627435, 18.661022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.752535, 10.839567, 18.617233>,  <14.924795, 11.193121, 18.544252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.752535, 10.839567, 18.617233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131187, 0.261316, 0.956297,
		-0.892933, 0.387895, -0.228490,
		-0.430651, -0.883884, 0.182451,
		14.623340, 10.574402, 18.671968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.302927, 11.279623, 19.020832>,  <14.924795, 11.193121, 18.544252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.302927, 11.279623, 19.020832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382487, 10.890325, 19.066841>,  <14.430223, 10.656745, 19.094446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.382487, 10.890325, 19.066841>,  <14.302927, 11.279623, 19.020832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.382487, 10.890325, 19.066841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412749, 0.023258, 0.910548,
		-0.888863, -0.228582, -0.397080,
		0.198900, -0.973247, 0.115021,
		14.442157, 10.598351, 19.101347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.653977, 11.070209, 19.269407>,  <14.302927, 11.279623, 19.020832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.653977, 11.070209, 19.269407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928974, 10.797068, 19.368254>,  <14.093972, 10.633183, 19.427561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.928974, 10.797068, 19.368254>,  <13.653977, 11.070209, 19.269407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.928974, 10.797068, 19.368254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344297, -0.006882, 0.938836,
		-0.639387, -0.730523, -0.239835,
		0.687491, -0.682854, 0.247117,
		14.135221, 10.592212, 19.442389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.238090, 10.544208, 19.583277>,  <13.653977, 11.070209, 19.269407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.238090, 10.544208, 19.583277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613203, 10.478446, 19.705608>,  <13.838271, 10.438990, 19.779007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613203, 10.478446, 19.705608>,  <13.238090, 10.544208, 19.583277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613203, 10.478446, 19.705608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327442, -0.125714, 0.936471,
		-0.115512, -0.978350, -0.171725,
		0.937784, -0.164403, 0.305831,
		13.894538, 10.429125, 19.797358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.074777, 9.966656, 20.011784>,  <13.238090, 10.544208, 19.583277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.074777, 9.966656, 20.011784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423268, 10.136113, 20.110968>,  <13.632363, 10.237787, 20.170479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.423268, 10.136113, 20.110968>,  <13.074777, 9.966656, 20.011784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.423268, 10.136113, 20.110968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236511, -0.080360, 0.968300,
		0.430141, -0.902257, 0.030185,
		0.871230, 0.423644, 0.247960,
		13.684637, 10.263206, 20.185356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248398, 9.706399, 20.671537>,  <13.074777, 9.966656, 20.011784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.248398, 9.706399, 20.671537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483853, 10.029696, 20.665236>,  <13.625127, 10.223675, 20.661455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.483853, 10.029696, 20.665236>,  <13.248398, 9.706399, 20.671537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.483853, 10.029696, 20.665236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034934, 0.044900, 0.998381,
		0.807641, -0.587135, 0.054665,
		0.588638, 0.808243, -0.015752,
		13.660445, 10.272169, 20.660509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.584357, 9.567440, 21.269247>,  <13.248398, 9.706399, 20.671537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.584357, 9.567440, 21.269247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.648626, 9.949717, 21.170584>,  <13.687188, 10.179082, 21.111385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.648626, 9.949717, 21.170584>,  <13.584357, 9.567440, 21.269247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.648626, 9.949717, 21.170584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064269, 0.259505, 0.963601,
		0.984913, -0.138973, 0.103117,
		0.160674, 0.955690, -0.246658,
		13.696829, 10.236423, 21.096586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.040931, 9.881737, 21.821875>,  <13.584357, 9.567440, 21.269247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.040931, 9.881737, 21.821875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913596, 10.208447, 21.629398>,  <13.837195, 10.404472, 21.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.913596, 10.208447, 21.629398>,  <14.040931, 9.881737, 21.821875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913596, 10.208447, 21.629398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201559, 0.437672, 0.876252,
		0.926302, 0.375931, 0.025301,
		-0.318337, 0.816774, -0.481189,
		13.818095, 10.453479, 21.485043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315311, 10.461926, 22.124607>,  <14.040931, 9.881737, 21.821875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315311, 10.461926, 22.124607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972416, 10.590932, 21.964046>,  <13.766679, 10.668336, 21.867710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.972416, 10.590932, 21.964046>,  <14.315311, 10.461926, 22.124607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.972416, 10.590932, 21.964046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231634, 0.454680, 0.860007,
		0.459876, 0.830210, -0.315064,
		-0.857240, 0.322517, -0.401401,
		13.715244, 10.687687, 21.843626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285742, 11.190883, 22.164249>,  <14.315311, 10.461926, 22.124607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.285742, 11.190883, 22.164249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901272, 11.082065, 22.145765>,  <13.670589, 11.016774, 22.134676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901272, 11.082065, 22.145765>,  <14.285742, 11.190883, 22.164249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901272, 11.082065, 22.145765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194622, 0.549639, 0.812415,
		-0.195615, 0.789866, -0.581245,
		-0.961175, -0.272044, -0.046208,
		13.612920, 11.000451, 22.131903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936229, 11.725059, 22.453913>,  <14.285742, 11.190883, 22.164249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936229, 11.725059, 22.453913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642173, 11.456070, 22.488211>,  <13.465739, 11.294677, 22.508789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.642173, 11.456070, 22.488211>,  <13.936229, 11.725059, 22.453913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642173, 11.456070, 22.488211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402850, 0.535073, 0.742569,
		-0.545234, 0.511351, -0.664259,
		-0.735140, -0.672471, 0.085743,
		13.421631, 11.254329, 22.513933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.248635, 12.075586, 22.441797>,  <13.936229, 11.725059, 22.453913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.248635, 12.075586, 22.441797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199732, 11.734804, 22.645454>,  <13.170389, 11.530335, 22.767649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.199732, 11.734804, 22.645454>,  <13.248635, 12.075586, 22.441797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.199732, 11.734804, 22.645454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516510, 0.492665, 0.700356,
		-0.847508, -0.177352, -0.500276,
		-0.122259, -0.851955, 0.509142,
		13.163054, 11.479218, 22.798197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.558969, 12.164855, 22.705456>,  <13.248635, 12.075586, 22.441797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.558969, 12.164855, 22.705456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677213, 11.861092, 22.937288>,  <12.748158, 11.678834, 23.076387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.677213, 11.861092, 22.937288>,  <12.558969, 12.164855, 22.705456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.677213, 11.861092, 22.937288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443564, 0.428222, 0.787322,
		-0.846089, -0.489820, -0.210260,
		0.295609, -0.759409, 0.579581,
		12.765895, 11.633269, 23.111162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.928547, 11.877851, 23.110542>,  <12.558969, 12.164855, 22.705456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.928547, 11.877851, 23.110542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243983, 11.771173, 23.332172>,  <12.433245, 11.707165, 23.465151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.243983, 11.771173, 23.332172>,  <11.928547, 11.877851, 23.110542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.243983, 11.771173, 23.332172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498531, 0.250216, 0.829975,
		-0.359991, -0.930733, 0.064361,
		0.788589, -0.266698, 0.554074,
		12.480560, 11.691163, 23.498394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654003, 11.592420, 23.701387>,  <11.928547, 11.877851, 23.110542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654003, 11.592420, 23.701387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015616, 11.719964, 23.815266>,  <12.232585, 11.796491, 23.883593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.015616, 11.719964, 23.815266>,  <11.654003, 11.592420, 23.701387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.015616, 11.719964, 23.815266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363836, 0.224380, 0.904034,
		0.224380, -0.920859, 0.318860,
		-0.904034, -0.318860, -0.284695,
		12.286826, 11.815622, 23.900675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704400, 11.368912, 24.440840>,  <11.654003, 11.592420, 23.701387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704400, 11.368912, 24.440840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014088, 11.617681, 24.393858>,  <12.199901, 11.766942, 24.365669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.014088, 11.617681, 24.393858>,  <11.704400, 11.368912, 24.440840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.014088, 11.617681, 24.393858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164963, 0.377451, 0.911218,
		0.611042, -0.686106, 0.394824,
		0.774219, 0.621924, -0.117456,
		12.246353, 11.804257, 24.358622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.175810, 11.254037, 25.075947>,  <11.704400, 11.368912, 24.440840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.175810, 11.254037, 25.075947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236826, 11.623186, 24.934505>,  <12.273436, 11.844676, 24.849640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.236826, 11.623186, 24.934505>,  <12.175810, 11.254037, 25.075947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.236826, 11.623186, 24.934505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120085, 0.372448, 0.920251,
		0.980975, -0.097912, 0.167636,
		0.152540, 0.922873, -0.353604,
		12.282588, 11.900048, 24.828424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636508, 11.575780, 25.559084>,  <12.175810, 11.254037, 25.075947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636508, 11.575780, 25.559084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.432657, 11.858953, 25.363489>,  <12.310347, 12.028858, 25.246132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.432657, 11.858953, 25.363489>,  <12.636508, 11.575780, 25.559084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.432657, 11.858953, 25.363489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213878, 0.446256, 0.868972,
		0.833389, 0.547435, -0.076013,
		-0.509627, 0.707934, -0.488989,
		12.279769, 12.071334, 25.216793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.624674, 12.099107, 26.059763>,  <12.636508, 11.575780, 25.559084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.624674, 12.099107, 26.059763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375635, 12.258009, 25.790077>,  <12.226212, 12.353350, 25.628265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375635, 12.258009, 25.790077>,  <12.624674, 12.099107, 26.059763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375635, 12.258009, 25.790077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420997, 0.556225, 0.716502,
		0.659648, 0.729933, -0.179061,
		-0.622596, 0.397255, -0.674213,
		12.188856, 12.377186, 25.587814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.599828, 12.873592, 26.145657>,  <12.624674, 12.099107, 26.059763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.599828, 12.873592, 26.145657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260154, 12.747899, 25.975883>,  <12.056350, 12.672483, 25.874020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.260154, 12.747899, 25.975883>,  <12.599828, 12.873592, 26.145657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.260154, 12.747899, 25.975883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528082, 0.499222, 0.686954,
		-0.003976, 0.807487, -0.589872,
		-0.849184, -0.314232, -0.424435,
		12.005399, 12.653629, 25.848553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.105919, 13.558281, 26.181570>,  <12.599828, 12.873592, 26.145657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.105919, 13.558281, 26.181570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.894836, 13.224160, 26.119865>,  <11.768187, 13.023687, 26.082842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.894836, 13.224160, 26.119865>,  <12.105919, 13.558281, 26.181570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.894836, 13.224160, 26.119865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740892, 0.363800, 0.564560,
		-0.415457, 0.412215, -0.810848,
		-0.527706, -0.835302, -0.154263,
		11.736525, 12.973570, 26.073586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
