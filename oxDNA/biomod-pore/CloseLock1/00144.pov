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
	<23.902643, 34.997341, 35.244251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186483, 35.114414, 34.987877>,  <24.356789, 35.184658, 34.834053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.186483, 35.114414, 34.987877>,  <23.902643, 34.997341, 35.244251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.186483, 35.114414, 34.987877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690522, -0.107932, 0.715213,
		0.140153, -0.950099, -0.278693,
		0.709602, 0.292683, -0.640937,
		24.399364, 35.202221, 34.795597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.434187, 34.616646, 35.336308>,  <23.902643, 34.997341, 35.244251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.434187, 34.616646, 35.336308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541405, 34.983906, 35.219589>,  <24.605736, 35.204262, 35.149559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541405, 34.983906, 35.219589>,  <24.434187, 34.616646, 35.336308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541405, 34.983906, 35.219589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673708, 0.037873, 0.738026,
		0.688672, -0.394412, -0.608416,
		0.268044, 0.918153, -0.291800,
		24.621819, 35.259350, 35.132050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.990156, 34.751801, 34.930447>,  <24.434187, 34.616646, 35.336308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.990156, 34.751801, 34.930447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828856, 34.480816, 34.684376>,  <24.732075, 34.318226, 34.536736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.828856, 34.480816, 34.684376>,  <24.990156, 34.751801, 34.930447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.828856, 34.480816, 34.684376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258913, 0.729254, -0.633366,
		0.877697, -0.096129, -0.469475,
		-0.403251, -0.677457, -0.615175,
		24.707880, 34.277580, 34.499825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.495623, 34.583874, 35.517540>,  <24.990156, 34.751801, 34.930447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.495623, 34.583874, 35.517540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615427, 34.952000, 35.416893>,  <25.687309, 35.172874, 35.356506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615427, 34.952000, 35.416893>,  <25.495623, 34.583874, 35.517540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615427, 34.952000, 35.416893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801325, -0.385788, -0.457216,
		-0.517854, -0.064686, -0.853020,
		0.299509, 0.920317, -0.251616,
		25.705280, 35.228096, 35.341408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735369, 34.637478, 34.897179>,  <25.495623, 34.583874, 35.517540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735369, 34.637478, 34.897179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909372, 34.968895, 35.038193>,  <26.013775, 35.167747, 35.122803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909372, 34.968895, 35.038193>,  <25.735369, 34.637478, 34.897179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909372, 34.968895, 35.038193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858770, -0.264055, -0.439078,
		-0.270708, 0.493748, -0.826396,
		0.435007, 0.828546, 0.352534,
		26.039875, 35.217457, 35.143951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115562, 35.086067, 34.348095>,  <25.735369, 34.637478, 34.897179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115562, 35.086067, 34.348095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304667, 35.092056, 34.700520>,  <26.418129, 35.095650, 34.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304667, 35.092056, 34.700520>,  <26.115562, 35.086067, 34.348095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304667, 35.092056, 34.700520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858060, -0.235412, -0.456415,
		0.200580, 0.971780, -0.124140,
		0.472759, 0.014972, 0.881064,
		26.446495, 35.096546, 34.964840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.736525, 35.483772, 34.290981>,  <26.115562, 35.086067, 34.348095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.736525, 35.483772, 34.290981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756775, 35.207199, 34.579247>,  <26.768925, 35.041256, 34.752205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.756775, 35.207199, 34.579247>,  <26.736525, 35.483772, 34.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.756775, 35.207199, 34.579247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912850, -0.260686, -0.314241,
		0.405143, 0.673765, 0.617980,
		0.050626, -0.691436, 0.720662,
		26.771963, 34.999767, 34.795444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.925985, 35.538322, 34.997181>,  <26.736525, 35.483772, 34.290981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.925985, 35.538322, 34.997181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315510, 35.569733, 34.911839>,  <27.549225, 35.588577, 34.860634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.315510, 35.569733, 34.911839>,  <26.925985, 35.538322, 34.997181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315510, 35.569733, 34.911839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199572, 0.744754, -0.636799,
		0.108897, 0.662704, 0.740922,
		0.973813, 0.078521, -0.213359,
		27.607655, 35.593288, 34.847832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051107, 36.255692, 34.998333>,  <26.925985, 35.538322, 34.997181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051107, 36.255692, 34.998333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361168, 36.109146, 34.792450>,  <27.547205, 36.021221, 34.668922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.361168, 36.109146, 34.792450>,  <27.051107, 36.255692, 34.998333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.361168, 36.109146, 34.792450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155829, 0.678653, -0.717737,
		0.612255, 0.636561, 0.468970,
		0.775152, -0.366360, -0.514704,
		27.593714, 35.999237, 34.638039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524075, 36.882370, 34.830940>,  <27.051107, 36.255692, 34.998333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524075, 36.882370, 34.830940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630846, 36.596340, 34.572510>,  <27.694910, 36.424721, 34.417450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.630846, 36.596340, 34.572510>,  <27.524075, 36.882370, 34.830940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630846, 36.596340, 34.572510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154803, 0.629883, -0.761106,
		0.951202, 0.303177, 0.057439,
		0.266930, -0.715074, -0.646079,
		27.710924, 36.381817, 34.378685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787783, 37.302326, 34.342167>,  <27.524075, 36.882370, 34.830940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787783, 37.302326, 34.342167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753101, 36.946140, 34.163479>,  <27.732292, 36.732430, 34.056267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.753101, 36.946140, 34.163479>,  <27.787783, 37.302326, 34.342167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.753101, 36.946140, 34.163479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171121, 0.455057, -0.873865,
		0.981427, 0.000677, -0.191832,
		-0.086703, -0.890462, -0.446721,
		27.727091, 36.679001, 34.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243517, 37.391788, 33.863701>,  <27.787783, 37.302326, 34.342167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243517, 37.391788, 33.863701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981211, 37.111591, 33.751068>,  <27.823826, 36.943474, 33.683491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981211, 37.111591, 33.751068>,  <28.243517, 37.391788, 33.863701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981211, 37.111591, 33.751068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064064, 0.423255, -0.903743,
		0.752241, -0.574605, -0.322432,
		-0.655766, -0.700489, -0.281579,
		27.784481, 36.901443, 33.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474802, 37.199707, 33.240681>,  <28.243517, 37.391788, 33.863701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474802, 37.199707, 33.240681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085993, 37.107422, 33.258316>,  <27.852707, 37.052052, 33.268898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085993, 37.107422, 33.258316>,  <28.474802, 37.199707, 33.240681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085993, 37.107422, 33.258316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118459, 0.319434, -0.940175,
		0.202825, -0.919094, -0.337827,
		-0.972023, -0.230710, 0.044086,
		27.794386, 37.038208, 33.271542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266211, 37.027721, 32.560482>,  <28.474802, 37.199707, 33.240681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266211, 37.027721, 32.560482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911982, 37.114079, 32.724995>,  <27.699444, 37.165894, 32.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.911982, 37.114079, 32.724995>,  <28.266211, 37.027721, 32.560482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.911982, 37.114079, 32.724995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299171, 0.412232, -0.860559,
		-0.355332, -0.885131, -0.300472,
		-0.885571, 0.215891, 0.411285,
		27.646311, 37.178844, 32.848381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.818014, 36.727207, 32.155941>,  <28.266211, 37.027721, 32.560482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.818014, 36.727207, 32.155941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643270, 37.028362, 32.352840>,  <27.538424, 37.209057, 32.470982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643270, 37.028362, 32.352840>,  <27.818014, 36.727207, 32.155941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643270, 37.028362, 32.352840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288689, 0.400938, -0.869429,
		-0.851946, -0.521926, 0.042197,
		-0.436859, 0.752889, 0.492252,
		27.512213, 37.254230, 32.500515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352924, 36.895821, 31.770624>,  <27.818014, 36.727207, 32.155941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352924, 36.895821, 31.770624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347652, 37.214489, 32.012333>,  <27.344490, 37.405689, 32.157360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347652, 37.214489, 32.012333>,  <27.352924, 36.895821, 31.770624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347652, 37.214489, 32.012333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197248, 0.590379, -0.782653,
		-0.980265, -0.129505, 0.149362,
		-0.013177, 0.796669, 0.604272,
		27.343699, 37.453491, 32.193615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789169, 37.340954, 31.551010>,  <27.352924, 36.895821, 31.770624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789169, 37.340954, 31.551010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022436, 37.580570, 31.770487>,  <27.162397, 37.724339, 31.902172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.022436, 37.580570, 31.770487>,  <26.789169, 37.340954, 31.551010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022436, 37.580570, 31.770487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044461, 0.697961, -0.714754,
		-0.811133, 0.392427, 0.433663,
		0.583169, 0.599042, 0.548692,
		27.197388, 37.760284, 31.935095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466391, 38.041653, 31.613630>,  <26.789169, 37.340954, 31.551010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466391, 38.041653, 31.613630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854424, 38.110012, 31.682602>,  <27.087244, 38.151028, 31.723986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854424, 38.110012, 31.682602>,  <26.466391, 38.041653, 31.613630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854424, 38.110012, 31.682602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032986, 0.796447, -0.603808,
		-0.240524, 0.580056, 0.778256,
		0.970083, 0.170902, 0.172431,
		27.145449, 38.161282, 31.734331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474777, 38.675430, 31.688623>,  <26.466391, 38.041653, 31.613630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474777, 38.675430, 31.688623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855116, 38.592926, 31.596239>,  <27.083319, 38.543423, 31.540808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.855116, 38.592926, 31.596239>,  <26.474777, 38.675430, 31.688623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855116, 38.592926, 31.596239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022369, 0.789667, -0.613128,
		0.308849, 0.577825, 0.755467,
		0.950848, -0.206263, -0.230963,
		27.140369, 38.531048, 31.526951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727402, 39.292263, 31.604174>,  <26.474777, 38.675430, 31.688623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727402, 39.292263, 31.604174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009272, 39.049915, 31.456469>,  <27.178392, 38.904507, 31.367846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.009272, 39.049915, 31.456469>,  <26.727402, 39.292263, 31.604174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.009272, 39.049915, 31.456469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354568, 0.751487, -0.556372,
		0.614586, 0.261131, 0.744375,
		0.704674, -0.605870, -0.369265,
		27.220675, 38.868153, 31.345690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300442, 39.743450, 31.442581>,  <26.727402, 39.292263, 31.604174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300442, 39.743450, 31.442581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455309, 39.414520, 31.275785>,  <27.548229, 39.217163, 31.175707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455309, 39.414520, 31.275785>,  <27.300442, 39.743450, 31.442581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455309, 39.414520, 31.275785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636885, 0.565550, -0.523957,
		0.666692, -0.062716, 0.742690,
		0.387167, -0.822326, -0.416990,
		27.571459, 39.167824, 31.150688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037958, 39.698658, 31.631771>,  <27.300442, 39.743450, 31.442581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037958, 39.698658, 31.631771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963936, 39.490799, 31.298132>,  <27.919523, 39.366085, 31.097948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963936, 39.490799, 31.298132>,  <28.037958, 39.698658, 31.631771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963936, 39.490799, 31.298132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715206, 0.510877, -0.476954,
		0.673970, -0.684816, 0.277113,
		-0.185056, -0.519646, -0.834100,
		27.908419, 39.334904, 31.047901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648319, 39.396179, 31.253330>,  <28.037958, 39.698658, 31.631771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648319, 39.396179, 31.253330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382198, 39.422844, 30.955893>,  <28.222527, 39.438843, 30.777430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382198, 39.422844, 30.955893>,  <28.648319, 39.396179, 31.253330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382198, 39.422844, 30.955893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669204, 0.494799, -0.554382,
		0.330971, -0.866446, -0.373804,
		-0.665300, 0.066667, -0.743593,
		28.182608, 39.442844, 30.732815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.975182, 39.117336, 30.699512>,  <28.648319, 39.396179, 31.253330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.975182, 39.117336, 30.699512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685034, 39.343201, 30.542036>,  <28.510944, 39.478722, 30.447550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.685034, 39.343201, 30.542036>,  <28.975182, 39.117336, 30.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.685034, 39.343201, 30.542036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654272, 0.387811, -0.649254,
		-0.213933, -0.728530, -0.650750,
		-0.725370, 0.564664, -0.393691,
		28.467422, 39.512600, 30.423929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014879, 39.089058, 29.985596>,  <28.975182, 39.117336, 30.699512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014879, 39.089058, 29.985596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796892, 39.421543, 30.029575>,  <28.666100, 39.621037, 30.055964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.796892, 39.421543, 30.029575>,  <29.014879, 39.089058, 29.985596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796892, 39.421543, 30.029575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532898, 0.444611, -0.719959,
		-0.647326, -0.333763, -0.685253,
		-0.544967, 0.831218, 0.109947,
		28.633402, 39.670910, 30.062559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765499, 39.303780, 29.324682>,  <29.014879, 39.089058, 29.985596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765499, 39.303780, 29.324682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802235, 39.617569, 29.570011>,  <28.824276, 39.805843, 29.717209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802235, 39.617569, 29.570011>,  <28.765499, 39.303780, 29.324682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802235, 39.617569, 29.570011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570502, 0.463368, -0.678099,
		-0.816146, 0.412177, -0.404989,
		0.091838, 0.784475, 0.613323,
		28.829786, 39.852913, 29.754007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694170, 39.800537, 28.840420>,  <28.765499, 39.303780, 29.324682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694170, 39.800537, 28.840420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859306, 39.972431, 29.161640>,  <28.958387, 40.075569, 29.354372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859306, 39.972431, 29.161640>,  <28.694170, 39.800537, 28.840420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859306, 39.972431, 29.161640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614042, 0.519872, -0.593874,
		-0.672694, 0.738280, -0.049255,
		0.412839, 0.429739, 0.803049,
		28.983158, 40.101353, 29.402555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915359, 40.495964, 28.623409>,  <28.694170, 39.800537, 28.840420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915359, 40.495964, 28.623409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146618, 40.371117, 28.924959>,  <29.285374, 40.296207, 29.105890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146618, 40.371117, 28.924959>,  <28.915359, 40.495964, 28.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146618, 40.371117, 28.924959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813946, 0.285054, -0.506198,
		-0.056902, 0.906271, 0.418850,
		0.578147, -0.312117, 0.753876,
		29.320063, 40.277481, 29.151121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403090, 41.078297, 28.783440>,  <28.915359, 40.495964, 28.623409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403090, 41.078297, 28.783440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541254, 40.709652, 28.854231>,  <29.624153, 40.488464, 28.896706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.541254, 40.709652, 28.854231>,  <29.403090, 41.078297, 28.783440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541254, 40.709652, 28.854231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815874, 0.201719, -0.541902,
		0.463724, 0.331572, 0.821596,
		0.345411, -0.921612, 0.176980,
		29.644876, 40.433167, 28.907326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085278, 41.150589, 28.817648>,  <29.403090, 41.078297, 28.783440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085278, 41.150589, 28.817648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997747, 40.786018, 28.678265>,  <29.945229, 40.567276, 28.594635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997747, 40.786018, 28.678265>,  <30.085278, 41.150589, 28.817648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997747, 40.786018, 28.678265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592164, 0.159789, -0.789816,
		0.775536, -0.379177, 0.504746,
		-0.218827, -0.911423, -0.348458,
		29.932098, 40.512592, 28.573727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598930, 41.060917, 28.392080>,  <30.085278, 41.150589, 28.817648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598930, 41.060917, 28.392080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374889, 40.743584, 28.296654>,  <30.240465, 40.553185, 28.239397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374889, 40.743584, 28.296654>,  <30.598930, 41.060917, 28.392080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374889, 40.743584, 28.296654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474034, -0.070749, -0.877660,
		0.679395, -0.604667, 0.415692,
		-0.560101, -0.793330, -0.238566,
		30.206860, 40.505585, 28.225084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053539, 40.363895, 28.197861>,  <30.598930, 41.060917, 28.392080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053539, 40.363895, 28.197861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697002, 40.359497, 28.016581>,  <30.483080, 40.356857, 27.907812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.697002, 40.359497, 28.016581>,  <31.053539, 40.363895, 28.197861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697002, 40.359497, 28.016581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451421, 0.070175, -0.889547,
		0.041581, -0.997474, -0.057588,
		-0.891342, -0.010992, -0.453199,
		30.429600, 40.356197, 27.880621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189003, 39.667599, 28.212645>,  <31.053539, 40.363895, 28.197861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189003, 39.667599, 28.212645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905296, 39.893429, 28.043791>,  <30.735073, 40.028927, 27.942478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905296, 39.893429, 28.043791>,  <31.189003, 39.667599, 28.212645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905296, 39.893429, 28.043791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540928, 0.051886, -0.839467,
		-0.452039, -0.823750, -0.342194,
		-0.709266, 0.564574, -0.422135,
		30.692516, 40.062801, 27.917150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842646, 39.425072, 28.842966>,  <31.189003, 39.667599, 28.212645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842646, 39.425072, 28.842966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889198, 39.816345, 28.911798>,  <30.917130, 40.051109, 28.953098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.889198, 39.816345, 28.911798>,  <30.842646, 39.425072, 28.842966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.889198, 39.816345, 28.911798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082740, -0.182205, 0.979773,
		0.989752, -0.099789, -0.102140,
		0.116381, 0.978184, 0.172081,
		30.924112, 40.109802, 28.963423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408947, 39.523781, 29.419613>,  <30.842646, 39.425072, 28.842966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408947, 39.523781, 29.419613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159803, 39.836487, 29.431591>,  <31.010317, 40.024109, 29.438778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159803, 39.836487, 29.431591>,  <31.408947, 39.523781, 29.419613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159803, 39.836487, 29.431591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123679, -0.136188, 0.982933,
		0.772497, 0.608524, 0.181513,
		-0.622858, 0.781762, 0.029943,
		30.972946, 40.071014, 29.440575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.589117, 40.007889, 29.940502>,  <31.408947, 39.523781, 29.419613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.589117, 40.007889, 29.940502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193121, 40.007374, 29.884052>,  <30.955523, 40.007065, 29.850182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.193121, 40.007374, 29.884052>,  <31.589117, 40.007889, 29.940502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193121, 40.007374, 29.884052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139300, -0.151717, 0.978559,
		-0.022669, 0.988423, 0.150020,
		-0.989991, -0.001285, -0.141126,
		30.896124, 40.006989, 29.841715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219824, 40.538078, 30.353857>,  <31.589117, 40.007889, 29.940502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219824, 40.538078, 30.353857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939501, 40.266521, 30.266247>,  <30.771307, 40.103588, 30.213680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939501, 40.266521, 30.266247>,  <31.219824, 40.538078, 30.353857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939501, 40.266521, 30.266247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356190, 0.067004, 0.932008,
		-0.618057, 0.731175, -0.288772,
		-0.700810, -0.678892, -0.219025,
		30.729258, 40.062855, 30.200539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.755564, 40.843979, 30.723158>,  <31.219824, 40.538078, 30.353857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.755564, 40.843979, 30.723158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640379, 40.467842, 30.650669>,  <30.571268, 40.242161, 30.607176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.640379, 40.467842, 30.650669>,  <30.755564, 40.843979, 30.723158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640379, 40.467842, 30.650669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471667, -0.025426, 0.881410,
		-0.833431, 0.339290, -0.436205,
		-0.287963, -0.940338, -0.181222,
		30.553989, 40.185741, 30.596302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071482, 40.750843, 31.089808>,  <30.755564, 40.843979, 30.723158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071482, 40.750843, 31.089808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240320, 40.393040, 31.030895>,  <30.341623, 40.178356, 30.995548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240320, 40.393040, 31.030895>,  <30.071482, 40.750843, 31.089808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240320, 40.393040, 31.030895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394866, -0.327651, 0.858328,
		-0.816038, -0.304138, -0.491510,
		0.422094, -0.894508, -0.147283,
		30.366949, 40.124687, 30.986712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592697, 40.223656, 31.341412>,  <30.071482, 40.750843, 31.089808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592697, 40.223656, 31.341412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949818, 40.043762, 31.331240>,  <30.164091, 39.935825, 31.325136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949818, 40.043762, 31.331240>,  <29.592697, 40.223656, 31.341412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949818, 40.043762, 31.331240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221512, -0.487499, 0.844557,
		-0.392218, -0.748390, -0.534861,
		0.892803, -0.449729, -0.025429,
		30.217659, 39.908844, 31.323610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402931, 39.504452, 31.332241>,  <29.592697, 40.223656, 31.341412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402931, 39.504452, 31.332241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778908, 39.536488, 31.464966>,  <30.004494, 39.555710, 31.544601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778908, 39.536488, 31.464966>,  <29.402931, 39.504452, 31.332241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778908, 39.536488, 31.464966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252664, -0.490355, 0.834094,
		0.229511, -0.867835, -0.440668,
		0.939939, 0.080092, 0.331813,
		30.060890, 39.560516, 31.564510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387289, 38.997581, 31.762735>,  <29.402931, 39.504452, 31.332241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387289, 38.997581, 31.762735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740047, 39.157639, 31.862452>,  <29.951702, 39.253674, 31.922281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740047, 39.157639, 31.862452>,  <29.387289, 38.997581, 31.762735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740047, 39.157639, 31.862452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045177, -0.598076, 0.800165,
		0.469274, -0.694401, -0.545518,
		0.881896, 0.400141, 0.249291,
		30.004616, 39.277679, 31.937239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780075, 38.424618, 31.850830>,  <29.387289, 38.997581, 31.762735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780075, 38.424618, 31.850830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935650, 38.727108, 32.061298>,  <30.028996, 38.908600, 32.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935650, 38.727108, 32.061298>,  <29.780075, 38.424618, 31.850830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935650, 38.727108, 32.061298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152646, -0.616145, 0.772699,
		0.908529, -0.220215, -0.355077,
		0.388939, 0.756221, 0.526171,
		30.052332, 38.953976, 32.219151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332487, 38.098869, 32.306835>,  <29.780075, 38.424618, 31.850830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332487, 38.098869, 32.306835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254484, 38.463104, 32.452606>,  <30.207682, 38.681644, 32.540070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254484, 38.463104, 32.452606>,  <30.332487, 38.098869, 32.306835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254484, 38.463104, 32.452606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100066, -0.351146, 0.930958,
		0.975684, 0.218009, -0.022642,
		-0.195007, 0.910587, 0.364423,
		30.195982, 38.736279, 32.561932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837061, 38.237621, 32.875504>,  <30.332487, 38.098869, 32.306835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837061, 38.237621, 32.875504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519371, 38.470718, 32.944340>,  <30.328756, 38.610577, 32.985641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519371, 38.470718, 32.944340>,  <30.837061, 38.237621, 32.875504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519371, 38.470718, 32.944340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087299, -0.389712, 0.916790,
		0.601318, 0.713116, 0.360392,
		-0.794227, 0.582744, 0.172086,
		30.281103, 38.645542, 32.995964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070107, 38.425362, 33.538303>,  <30.837061, 38.237621, 32.875504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070107, 38.425362, 33.538303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674347, 38.467609, 33.498428>,  <30.436892, 38.492958, 33.474503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674347, 38.467609, 33.498428>,  <31.070107, 38.425362, 33.538303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674347, 38.467609, 33.498428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127420, -0.301907, 0.944784,
		0.069694, 0.947468, 0.312165,
		-0.989397, 0.105621, -0.099685,
		30.377527, 38.499294, 33.468521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897703, 38.615070, 34.111645>,  <31.070107, 38.425362, 33.538303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897703, 38.615070, 34.111645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547319, 38.503349, 33.954323>,  <30.337090, 38.436317, 33.859928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547319, 38.503349, 33.954323>,  <30.897703, 38.615070, 34.111645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547319, 38.503349, 33.954323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234791, -0.465385, 0.853399,
		-0.421392, 0.839886, 0.342081,
		-0.875958, -0.279298, -0.393308,
		30.284533, 38.419559, 33.836330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459879, 38.743656, 34.655582>,  <30.897703, 38.615070, 34.111645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459879, 38.743656, 34.655582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300093, 38.477268, 34.403580>,  <30.204220, 38.317436, 34.252377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300093, 38.477268, 34.403580>,  <30.459879, 38.743656, 34.655582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300093, 38.477268, 34.403580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155501, -0.628039, 0.762487,
		-0.903463, 0.402555, 0.147322,
		-0.399467, -0.665970, -0.630008,
		30.180252, 38.277477, 34.214577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742243, 38.637367, 34.842686>,  <30.459879, 38.743656, 34.655582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742243, 38.637367, 34.842686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859440, 38.308918, 34.646767>,  <29.929758, 38.111847, 34.529213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.859440, 38.308918, 34.646767>,  <29.742243, 38.637367, 34.842686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859440, 38.308918, 34.646767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305765, -0.565850, 0.765716,
		-0.905905, -0.074584, -0.416861,
		0.292991, -0.821128, -0.489801,
		29.947338, 38.062580, 34.499825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348024, 38.143177, 35.133713>,  <29.742243, 38.637367, 34.842686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348024, 38.143177, 35.133713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582607, 37.916023, 34.902691>,  <29.723356, 37.779732, 34.764076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582607, 37.916023, 34.902691>,  <29.348024, 38.143177, 35.133713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582607, 37.916023, 34.902691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103276, -0.759655, 0.642073,
		-0.803372, -0.316898, -0.504153,
		0.586454, -0.567890, -0.577557,
		29.758545, 37.745655, 34.729424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993895, 37.618431, 35.211716>,  <29.348024, 38.143177, 35.133713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993895, 37.618431, 35.211716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364389, 37.531063, 35.088833>,  <29.586687, 37.478642, 35.015102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364389, 37.531063, 35.088833>,  <28.993895, 37.618431, 35.211716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364389, 37.531063, 35.088833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067282, -0.706108, 0.704900,
		-0.370884, -0.673575, -0.639329,
		0.926238, -0.218421, -0.307204,
		29.642262, 37.465538, 34.996674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.032701, 36.893909, 34.880386>,  <28.993895, 37.618431, 35.211716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.032701, 36.893909, 34.880386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404009, 36.982567, 34.999847>,  <29.626793, 37.035759, 35.071526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.404009, 36.982567, 34.999847>,  <29.032701, 36.893909, 34.880386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.404009, 36.982567, 34.999847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033703, -0.749588, 0.661046,
		0.370383, -0.623693, -0.688348,
		0.928267, 0.221641, 0.298655,
		29.682489, 37.049061, 35.089443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260479, 36.314472, 34.985397>,  <29.032701, 36.893909, 34.880386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260479, 36.314472, 34.985397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528164, 36.538094, 35.181202>,  <29.688774, 36.672264, 35.298683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.528164, 36.538094, 35.181202>,  <29.260479, 36.314472, 34.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.528164, 36.538094, 35.181202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023730, -0.642347, 0.766046,
		0.742693, -0.524263, -0.416600,
		0.669211, 0.559051, 0.489508,
		29.728928, 36.705811, 35.328053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758608, 35.933109, 35.173073>,  <29.260479, 36.314472, 34.985397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758608, 35.933109, 35.173073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830519, 36.232491, 35.428413>,  <29.873665, 36.412121, 35.581619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830519, 36.232491, 35.428413>,  <29.758608, 35.933109, 35.173073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830519, 36.232491, 35.428413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109400, -0.660111, 0.743159,
		0.977605, -0.063767, -0.200554,
		0.179777, 0.748457, 0.638352,
		29.884451, 36.457027, 35.619919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347214, 35.676590, 35.635090>,  <29.758608, 35.933109, 35.173073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347214, 35.676590, 35.635090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090025, 35.934643, 35.800205>,  <29.935711, 36.089474, 35.899277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090025, 35.934643, 35.800205>,  <30.347214, 35.676590, 35.635090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090025, 35.934643, 35.800205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046891, -0.571119, 0.819527,
		0.764453, 0.507576, 0.397465,
		-0.642972, 0.645127, 0.412793,
		29.897133, 36.128181, 35.924042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614990, 35.741928, 36.333210>,  <30.347214, 35.676590, 35.635090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614990, 35.741928, 36.333210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240934, 35.878510, 36.370987>,  <30.016500, 35.960461, 36.393654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.240934, 35.878510, 36.370987>,  <30.614990, 35.741928, 36.333210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.240934, 35.878510, 36.370987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043103, -0.374244, 0.926328,
		0.351645, 0.862177, 0.364688,
		-0.935141, 0.341457, 0.094438,
		29.960392, 35.980946, 36.399319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555212, 36.053764, 37.037151>,  <30.614990, 35.741928, 36.333210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555212, 36.053764, 37.037151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182911, 35.976349, 36.913059>,  <29.959530, 35.929901, 36.838604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182911, 35.976349, 36.913059>,  <30.555212, 36.053764, 37.037151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182911, 35.976349, 36.913059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196749, -0.450053, 0.871058,
		-0.308199, 0.871778, 0.380811,
		-0.930754, -0.193536, -0.310227,
		29.903685, 35.918289, 36.819992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.191845, 36.483265, 37.418610>,  <30.555212, 36.053764, 37.037151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.191845, 36.483265, 37.418610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980597, 36.166180, 37.296829>,  <29.853848, 35.975929, 37.223759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980597, 36.166180, 37.296829>,  <30.191845, 36.483265, 37.418610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980597, 36.166180, 37.296829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078734, -0.311275, 0.947053,
		-0.845512, 0.524128, 0.101977,
		-0.528120, -0.792715, -0.304454,
		29.822161, 35.928364, 37.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550528, 36.551933, 37.735981>,  <30.191845, 36.483265, 37.418610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550528, 36.551933, 37.735981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675488, 36.179417, 37.661041>,  <29.750463, 35.955906, 37.616077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.675488, 36.179417, 37.661041>,  <29.550528, 36.551933, 37.735981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675488, 36.179417, 37.661041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115548, -0.233011, 0.965585,
		-0.942897, -0.280000, -0.180401,
		0.312399, -0.931293, -0.187352,
		29.769207, 35.900028, 37.604836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007977, 36.054409, 38.075966>,  <29.550528, 36.551933, 37.735981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007977, 36.054409, 38.075966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352962, 35.865623, 38.002865>,  <29.559954, 35.752350, 37.959003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352962, 35.865623, 38.002865>,  <29.007977, 36.054409, 38.075966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352962, 35.865623, 38.002865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022587, -0.324835, 0.945501,
		-0.505610, -0.819591, -0.269499,
		0.862466, -0.471968, -0.182752,
		29.611702, 35.724033, 37.948040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924133, 35.482807, 38.480083>,  <29.007977, 36.054409, 38.075966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924133, 35.482807, 38.480083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314955, 35.502029, 38.397083>,  <29.549448, 35.513561, 38.347282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314955, 35.502029, 38.397083>,  <28.924133, 35.482807, 38.480083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314955, 35.502029, 38.397083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208103, -0.422996, 0.881911,
		-0.045393, -0.904856, -0.423290,
		0.977053, 0.048055, -0.207504,
		29.608070, 35.516445, 38.334831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934183, 34.906666, 37.909550>,  <28.924133, 35.482807, 38.480083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934183, 34.906666, 37.909550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937349, 34.668320, 38.230770>,  <28.939249, 34.525314, 38.423500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937349, 34.668320, 38.230770>,  <28.934183, 34.906666, 37.909550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937349, 34.668320, 38.230770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688276, -0.579326, -0.436644,
		0.725406, 0.556175, 0.405531,
		0.007916, -0.595861, 0.803049,
		28.939724, 34.489563, 38.471684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611591, 34.738575, 38.267281>,  <28.934183, 34.906666, 37.909550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611591, 34.738575, 38.267281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337254, 34.447514, 38.262489>,  <29.172651, 34.272877, 38.259613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337254, 34.447514, 38.262489>,  <29.611591, 34.738575, 38.267281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337254, 34.447514, 38.262489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626059, -0.581538, -0.519484,
		0.371037, -0.363783, 0.854397,
		-0.685844, -0.727651, -0.011978,
		29.131500, 34.229218, 38.258896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936817, 34.049419, 38.418686>,  <29.611591, 34.738575, 38.267281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936817, 34.049419, 38.418686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600180, 34.009285, 38.206402>,  <29.398197, 33.985203, 38.079033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600180, 34.009285, 38.206402>,  <29.936817, 34.049419, 38.418686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600180, 34.009285, 38.206402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489973, -0.555276, -0.672008,
		-0.227261, -0.825591, 0.516480,
		-0.841593, -0.100340, -0.530710,
		29.347702, 33.979183, 38.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608534, 34.574997, 38.608662>,  <29.936817, 34.049419, 38.418686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608534, 34.574997, 38.608662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877151, 34.337399, 38.431484>,  <31.038322, 34.194839, 38.325180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877151, 34.337399, 38.431484>,  <30.608534, 34.574997, 38.608662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877151, 34.337399, 38.431484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001997, -0.599239, 0.800568,
		-0.740961, -0.536732, -0.403602,
		0.671544, -0.593996, -0.442941,
		31.078615, 34.159199, 38.298603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894459, 33.853065, 38.860909>,  <30.608534, 34.574997, 38.608662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894459, 33.853065, 38.860909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190184, 33.741970, 38.615543>,  <31.367619, 33.675312, 38.468323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190184, 33.741970, 38.615543>,  <30.894459, 33.853065, 38.860909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190184, 33.741970, 38.615543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661592, 0.130028, 0.738504,
		-0.125349, -0.951816, 0.279881,
		0.739312, -0.277738, -0.613416,
		31.411978, 33.658649, 38.431519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272787, 33.210674, 39.108486>,  <30.894459, 33.853065, 38.860909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272787, 33.210674, 39.108486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484800, 33.474171, 38.894897>,  <31.612009, 33.632267, 38.766743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484800, 33.474171, 38.894897>,  <31.272787, 33.210674, 39.108486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484800, 33.474171, 38.894897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667072, 0.064859, 0.742164,
		0.523526, -0.749570, -0.405050,
		0.530033, 0.658740, -0.533973,
		31.643810, 33.671791, 38.734707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919821, 33.032413, 39.197926>,  <31.272787, 33.210674, 39.108486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919821, 33.032413, 39.197926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920042, 33.415016, 39.081245>,  <31.920176, 33.644577, 39.011238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.920042, 33.415016, 39.081245>,  <31.919821, 33.032413, 39.197926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920042, 33.415016, 39.081245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709945, 0.205057, 0.673742,
		0.704256, -0.207468, -0.678955,
		0.000555, 0.956509, -0.291704,
		31.920208, 33.701969, 38.993732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617043, 33.214039, 39.276920>,  <31.919821, 33.032413, 39.197926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617043, 33.214039, 39.276920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457840, 33.578785, 39.236736>,  <32.362320, 33.797634, 39.212624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457840, 33.578785, 39.236736>,  <32.617043, 33.214039, 39.276920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457840, 33.578785, 39.236736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576480, 0.333790, 0.745825,
		0.713625, 0.238929, -0.658522,
		-0.398008, 0.911865, -0.100463,
		32.338436, 33.852345, 39.206596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121494, 33.671749, 39.295387>,  <32.617043, 33.214039, 39.276920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121494, 33.671749, 39.295387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796444, 33.876945, 39.406010>,  <32.601414, 34.000065, 39.472385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796444, 33.876945, 39.406010>,  <33.121494, 33.671749, 39.295387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796444, 33.876945, 39.406010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471023, 0.298669, 0.830020,
		0.343194, 0.804758, -0.484337,
		-0.812622, 0.512992, 0.276558,
		32.552658, 34.030842, 39.488976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430859, 34.219349, 39.338303>,  <33.121494, 33.671749, 39.295387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430859, 34.219349, 39.338303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089527, 34.252811, 39.544151>,  <32.884727, 34.272888, 39.667660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.089527, 34.252811, 39.544151>,  <33.430859, 34.219349, 39.338303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089527, 34.252811, 39.544151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519359, 0.223118, 0.824915,
		-0.045812, 0.971195, -0.233840,
		-0.853327, 0.083656, 0.514621,
		32.833530, 34.277908, 39.698536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597137, 34.753979, 39.825642>,  <33.430859, 34.219349, 39.338303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597137, 34.753979, 39.825642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304447, 34.527943, 39.978088>,  <33.128834, 34.392319, 40.069557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304447, 34.527943, 39.978088>,  <33.597137, 34.753979, 39.825642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304447, 34.527943, 39.978088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403579, 0.091399, 0.910368,
		-0.549278, 0.819948, 0.161182,
		-0.731723, -0.565094, 0.381117,
		33.084930, 34.358414, 40.092422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428421, 35.132496, 40.474918>,  <33.597137, 34.753979, 39.825642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428421, 35.132496, 40.474918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283676, 34.762897, 40.524368>,  <33.196831, 34.541138, 40.554039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.283676, 34.762897, 40.524368>,  <33.428421, 35.132496, 40.474918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283676, 34.762897, 40.524368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260066, 0.027291, 0.965205,
		-0.895222, 0.381420, 0.230425,
		-0.361860, -0.923999, 0.123626,
		33.175117, 34.485699, 40.561455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137970, 35.161156, 41.165897>,  <33.428421, 35.132496, 40.474918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137970, 35.161156, 41.165897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170700, 34.770908, 41.084446>,  <33.190338, 34.536758, 41.035576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170700, 34.770908, 41.084446>,  <33.137970, 35.161156, 41.165897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170700, 34.770908, 41.084446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243918, -0.178493, 0.953228,
		-0.966337, -0.127670, 0.223366,
		0.081829, -0.975623, -0.203626,
		33.195248, 34.478222, 41.023357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756100, 34.821625, 41.606064>,  <33.137970, 35.161156, 41.165897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756100, 34.821625, 41.606064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015106, 34.530254, 41.516518>,  <33.170509, 34.355434, 41.462788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015106, 34.530254, 41.516518>,  <32.756100, 34.821625, 41.606064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015106, 34.530254, 41.516518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072146, -0.233856, 0.969591,
		-0.758626, -0.643981, -0.098873,
		0.647520, -0.728423, -0.223870,
		33.209362, 34.311726, 41.449356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534542, 34.227932, 41.930309>,  <32.756100, 34.821625, 41.606064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534542, 34.227932, 41.930309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915279, 34.154247, 41.832279>,  <33.143723, 34.110035, 41.773460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915279, 34.154247, 41.832279>,  <32.534542, 34.227932, 41.930309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915279, 34.154247, 41.832279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143666, -0.438163, 0.887341,
		-0.270839, -0.879818, -0.390598,
		0.951844, -0.184211, -0.245071,
		33.200832, 34.098984, 41.758759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745750, 33.462425, 42.104137>,  <32.534542, 34.227932, 41.930309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745750, 33.462425, 42.104137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097271, 33.652382, 42.122829>,  <33.308186, 33.766354, 42.134045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097271, 33.652382, 42.122829>,  <32.745750, 33.462425, 42.104137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097271, 33.652382, 42.122829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146955, -0.362508, 0.920322,
		0.453991, -0.801916, -0.388361,
		0.878804, 0.474889, 0.046730,
		33.360912, 33.794849, 42.136848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147717, 32.928860, 42.341187>,  <32.745750, 33.462425, 42.104137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147717, 32.928860, 42.341187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336838, 33.274345, 42.410995>,  <33.450310, 33.481636, 42.452881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336838, 33.274345, 42.410995>,  <33.147717, 32.928860, 42.341187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336838, 33.274345, 42.410995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367761, -0.373399, 0.851660,
		0.800755, -0.338487, -0.494184,
		0.472804, 0.863712, 0.174519,
		33.478680, 33.533459, 42.463352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.679207, 32.697971, 42.695412>,  <33.147717, 32.928860, 42.341187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.679207, 32.697971, 42.695412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677036, 33.090321, 42.773251>,  <33.675735, 33.325729, 42.819954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677036, 33.090321, 42.773251>,  <33.679207, 32.697971, 42.695412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677036, 33.090321, 42.773251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406213, -0.175657, 0.896736,
		0.913762, 0.083914, -0.397488,
		-0.005427, 0.980868, 0.194596,
		33.675407, 33.384583, 42.831631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295650, 32.704113, 42.988075>,  <33.679207, 32.697971, 42.695412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295650, 32.704113, 42.988075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123993, 33.047157, 43.101456>,  <34.021000, 33.252983, 43.169483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.123993, 33.047157, 43.101456>,  <34.295650, 32.704113, 42.988075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123993, 33.047157, 43.101456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341100, -0.136705, 0.930033,
		0.836354, 0.495802, -0.233865,
		-0.429142, 0.857608, 0.283452,
		33.995251, 33.304440, 43.186493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700584, 32.972115, 43.381145>,  <34.295650, 32.704113, 42.988075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700584, 32.972115, 43.381145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370552, 33.167820, 43.494179>,  <34.172531, 33.285244, 43.562000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370552, 33.167820, 43.494179>,  <34.700584, 32.972115, 43.381145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370552, 33.167820, 43.494179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254301, -0.125048, 0.959007,
		0.504547, 0.863123, -0.021246,
		-0.825084, 0.489267, 0.282586,
		34.123028, 33.314598, 43.578953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889729, 33.427540, 43.857025>,  <34.700584, 32.972115, 43.381145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889729, 33.427540, 43.857025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496231, 33.427479, 43.928864>,  <34.260132, 33.427444, 43.971966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496231, 33.427479, 43.928864>,  <34.889729, 33.427540, 43.857025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496231, 33.427479, 43.928864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179442, -0.042847, 0.982835,
		0.007550, 0.999082, 0.042177,
		-0.983740, -0.000148, 0.179601,
		34.201111, 33.427433, 43.982742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780312, 33.883270, 44.468731>,  <34.889729, 33.427540, 43.857025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780312, 33.883270, 44.468731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484829, 33.613762, 44.461266>,  <34.307541, 33.452057, 44.456787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484829, 33.613762, 44.461266>,  <34.780312, 33.883270, 44.468731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484829, 33.613762, 44.461266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220727, -0.267975, 0.937800,
		-0.636864, 0.688637, 0.346674,
		-0.738704, -0.673772, -0.018663,
		34.263218, 33.411629, 44.455666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384975, 34.089138, 44.956444>,  <34.780312, 33.883270, 44.468731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384975, 34.089138, 44.956444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279003, 33.708778, 44.892445>,  <34.215420, 33.480564, 44.854046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279003, 33.708778, 44.892445>,  <34.384975, 34.089138, 44.956444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279003, 33.708778, 44.892445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165695, -0.208357, 0.963915,
		-0.949924, 0.228862, 0.212760,
		-0.264934, -0.950899, -0.160002,
		34.199524, 33.423508, 44.844444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859970, 33.945999, 45.422405>,  <34.384975, 34.089138, 44.956444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859970, 33.945999, 45.422405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018749, 33.589378, 45.335171>,  <34.114017, 33.375404, 45.282829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018749, 33.589378, 45.335171>,  <33.859970, 33.945999, 45.422405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018749, 33.589378, 45.335171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241442, -0.127814, 0.961961,
		-0.885514, -0.434508, 0.164522,
		0.396951, -0.891553, -0.218090,
		34.137836, 33.321911, 45.269745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748459, 33.523369, 45.968189>,  <33.859970, 33.945999, 45.422405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748459, 33.523369, 45.968189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016502, 33.288456, 45.786617>,  <34.177326, 33.147507, 45.677673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.016502, 33.288456, 45.786617>,  <33.748459, 33.523369, 45.968189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016502, 33.288456, 45.786617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300449, -0.344601, 0.889371,
		-0.678739, -0.732356, -0.054470,
		0.670106, -0.587285, -0.453930,
		34.217533, 33.112270, 45.650436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733410, 32.884907, 46.220268>,  <33.748459, 33.523369, 45.968189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733410, 32.884907, 46.220268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092945, 32.847950, 46.048893>,  <34.308666, 32.825775, 45.946068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092945, 32.847950, 46.048893>,  <33.733410, 32.884907, 46.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092945, 32.847950, 46.048893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291260, -0.604547, 0.741411,
		-0.327511, -0.791193, -0.516478,
		0.898835, -0.092391, -0.428439,
		34.362595, 32.820232, 45.920361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725956, 32.237915, 46.094280>,  <33.733410, 32.884907, 46.220268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725956, 32.237915, 46.094280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091820, 32.396851, 46.124012>,  <34.311337, 32.492210, 46.141850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091820, 32.396851, 46.124012>,  <33.725956, 32.237915, 46.094280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091820, 32.396851, 46.124012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292057, -0.776696, 0.558074,
		0.279475, -0.488738, -0.826456,
		0.914657, 0.397340, 0.074327,
		34.366219, 32.516052, 46.146309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163155, 31.728500, 46.025486>,  <33.725956, 32.237915, 46.094280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163155, 31.728500, 46.025486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428268, 31.980429, 46.187492>,  <34.587337, 32.131584, 46.284695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428268, 31.980429, 46.187492>,  <34.163155, 31.728500, 46.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428268, 31.980429, 46.187492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336132, -0.733567, 0.590672,
		0.669124, -0.255351, -0.697903,
		0.662788, 0.629821, 0.405016,
		34.627106, 32.169376, 46.308998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768188, 31.357836, 46.053295>,  <34.163155, 31.728500, 46.025486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768188, 31.357836, 46.053295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839676, 31.652649, 46.314014>,  <34.882568, 31.829536, 46.470448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839676, 31.652649, 46.314014>,  <34.768188, 31.357836, 46.053295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839676, 31.652649, 46.314014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451906, -0.649945, 0.611025,
		0.873979, 0.185347, -0.449230,
		0.178723, 0.737033, 0.651798,
		34.893291, 31.873758, 46.509552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473061, 31.273901, 46.210571>,  <34.768188, 31.357836, 46.053295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473061, 31.273901, 46.210571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292976, 31.482052, 46.500816>,  <35.184925, 31.606941, 46.674965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.292976, 31.482052, 46.500816>,  <35.473061, 31.273901, 46.210571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292976, 31.482052, 46.500816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380814, -0.623122, 0.683154,
		0.807643, 0.583890, 0.082372,
		-0.450215, 0.520376, 0.725614,
		35.157913, 31.638165, 46.718502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959305, 31.476292, 46.727737>,  <35.473061, 31.273901, 46.210571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959305, 31.476292, 46.727737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615387, 31.489113, 46.931587>,  <35.409035, 31.496805, 47.053898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615387, 31.489113, 46.931587>,  <35.959305, 31.476292, 46.727737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615387, 31.489113, 46.931587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401568, -0.574041, 0.713597,
		0.315418, 0.818199, 0.480689,
		-0.859799, 0.032051, 0.509625,
		35.357449, 31.498728, 47.084476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188416, 31.530300, 47.342350>,  <35.959305, 31.476292, 46.727737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188416, 31.530300, 47.342350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811142, 31.403086, 47.380836>,  <35.584778, 31.326757, 47.403927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811142, 31.403086, 47.380836>,  <36.188416, 31.530300, 47.342350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811142, 31.403086, 47.380836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228650, -0.411141, 0.882430,
		-0.241085, 0.854293, 0.460501,
		-0.943185, -0.318034, 0.096214,
		35.528187, 31.307676, 47.409702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087345, 31.677975, 48.141434>,  <36.188416, 31.530300, 47.342350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087345, 31.677975, 48.141434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795429, 31.437904, 48.010471>,  <35.620281, 31.293861, 47.931892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795429, 31.437904, 48.010471>,  <36.087345, 31.677975, 48.141434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795429, 31.437904, 48.010471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022510, -0.457539, 0.888905,
		-0.683300, 0.656084, 0.320398,
		-0.729790, -0.600177, -0.327405,
		35.576492, 31.257851, 47.912251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621025, 31.639292, 48.724945>,  <36.087345, 31.677975, 48.141434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621025, 31.639292, 48.724945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576511, 31.314943, 48.495125>,  <35.549805, 31.120335, 48.357235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.576511, 31.314943, 48.495125>,  <35.621025, 31.639292, 48.724945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576511, 31.314943, 48.495125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058773, -0.571757, 0.818315,
		-0.992049, 0.124833, 0.015970,
		-0.111283, -0.810871, -0.574547,
		35.543125, 31.071682, 48.322762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045643, 31.317450, 48.996063>,  <35.621025, 31.639292, 48.724945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045643, 31.317450, 48.996063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250660, 31.030020, 48.808044>,  <35.373672, 30.857561, 48.695232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250660, 31.030020, 48.808044>,  <35.045643, 31.317450, 48.996063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250660, 31.030020, 48.808044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009118, -0.542837, 0.839789,
		-0.858611, -0.434717, -0.271677,
		0.512546, -0.718575, -0.470050,
		35.404423, 30.814447, 48.667030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824207, 30.689541, 49.251129>,  <35.045643, 31.317450, 48.996063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824207, 30.689541, 49.251129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165474, 30.578552, 49.074440>,  <35.370235, 30.511959, 48.968426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165474, 30.578552, 49.074440>,  <34.824207, 30.689541, 49.251129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165474, 30.578552, 49.074440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105268, -0.737794, 0.666767,
		-0.510907, -0.615362, -0.600252,
		0.853166, -0.277469, -0.441722,
		35.421425, 30.495312, 48.941925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843708, 30.041437, 49.380596>,  <34.824207, 30.689541, 49.251129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843708, 30.041437, 49.380596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228676, 30.083681, 49.280525>,  <35.459656, 30.109028, 49.220482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228676, 30.083681, 49.280525>,  <34.843708, 30.041437, 49.380596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228676, 30.083681, 49.280525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252756, -0.685201, 0.683091,
		-0.099279, -0.720656, -0.686147,
		0.962423, 0.105611, -0.250176,
		35.517403, 30.115364, 49.205471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093681, 29.382692, 49.389725>,  <34.843708, 30.041437, 49.380596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093681, 29.382692, 49.389725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417843, 29.615618, 49.415497>,  <35.612339, 29.755373, 49.430962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417843, 29.615618, 49.415497>,  <35.093681, 29.382692, 49.389725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417843, 29.615618, 49.415497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395287, -0.624641, 0.673477,
		0.432424, -0.520320, -0.736394,
		0.810406, 0.582315, 0.064434,
		35.660965, 29.790312, 49.434826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666267, 28.965742, 49.236561>,  <35.093681, 29.382692, 49.389725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666267, 28.965742, 49.236561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820618, 29.284710, 49.422127>,  <35.913227, 29.476091, 49.533466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820618, 29.284710, 49.422127>,  <35.666267, 28.965742, 49.236561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820618, 29.284710, 49.422127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379848, -0.595590, 0.707805,
		0.840722, -0.096908, -0.532724,
		0.385877, 0.797421, 0.463916,
		35.936382, 29.523937, 49.561302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405586, 28.797436, 49.379929>,  <35.666267, 28.965742, 49.236561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405586, 28.797436, 49.379929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294434, 29.073025, 49.647690>,  <36.227741, 29.238379, 49.808346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294434, 29.073025, 49.647690>,  <36.405586, 28.797436, 49.379929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294434, 29.073025, 49.647690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365537, -0.568587, 0.736947,
		0.888349, 0.449477, -0.093844,
		-0.277882, 0.688970, 0.669404,
		36.211067, 29.279716, 49.848511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050301, 28.845587, 49.855732>,  <36.405586, 28.797436, 49.379929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050301, 28.845587, 49.855732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706215, 28.962992, 50.022530>,  <36.499763, 29.033436, 50.122608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706215, 28.962992, 50.022530>,  <37.050301, 28.845587, 49.855732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706215, 28.962992, 50.022530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236281, -0.495229, 0.836014,
		0.451887, 0.817678, 0.356652,
		-0.860215, 0.293514, 0.416990,
		36.448151, 29.051046, 50.147625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230572, 28.993931, 50.484535>,  <37.050301, 28.845587, 49.855732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230572, 28.993931, 50.484535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834431, 28.952543, 50.521412>,  <36.596748, 28.927711, 50.543537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834431, 28.952543, 50.521412>,  <37.230572, 28.993931, 50.484535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834431, 28.952543, 50.521412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136616, -0.617220, 0.774839,
		-0.023266, 0.779958, 0.625400,
		-0.990351, -0.103467, 0.092194,
		36.537327, 28.921503, 50.549068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178486, 29.074425, 51.099747>,  <37.230572, 28.993931, 50.484535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178486, 29.074425, 51.099747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826405, 28.907972, 51.008469>,  <36.615154, 28.808102, 50.953701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.826405, 28.907972, 51.008469>,  <37.178486, 29.074425, 51.099747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826405, 28.907972, 51.008469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182059, -0.740098, 0.647387,
		-0.438281, 0.528290, 0.727200,
		-0.880207, -0.416130, -0.228191,
		36.562344, 28.783133, 50.940010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715416, 29.051634, 51.722298>,  <37.178486, 29.074425, 51.099747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715416, 29.051634, 51.722298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603455, 28.765247, 51.466473>,  <36.536278, 28.593414, 51.312977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603455, 28.765247, 51.466473>,  <36.715416, 29.051634, 51.722298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603455, 28.765247, 51.466473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122958, -0.687444, 0.715753,
		-0.952122, 0.121700, 0.280450,
		-0.279901, -0.715968, -0.639567,
		36.519485, 28.550457, 51.274601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155266, 28.616686, 51.898468>,  <36.715416, 29.051634, 51.722298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155266, 28.616686, 51.898468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356838, 28.375978, 51.650620>,  <36.477783, 28.231554, 51.501911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356838, 28.375978, 51.650620>,  <36.155266, 28.616686, 51.898468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356838, 28.375978, 51.650620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054205, -0.737985, 0.672636,
		-0.862042, -0.305375, -0.404512,
		0.503930, -0.601767, -0.619621,
		36.508018, 28.195448, 51.464733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787086, 27.938698, 51.723366>,  <36.155266, 28.616686, 51.898468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787086, 27.938698, 51.723366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186451, 27.921087, 51.737450>,  <36.426071, 27.910521, 51.745899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.186451, 27.921087, 51.737450>,  <35.787086, 27.938698, 51.723366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.186451, 27.921087, 51.737450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055252, -0.640161, 0.766252,
		-0.011192, -0.766979, -0.641575,
		0.998410, -0.044024, 0.035212,
		36.485973, 27.907881, 51.748013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857105, 27.261244, 51.831249>,  <35.787086, 27.938698, 51.723366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857105, 27.261244, 51.831249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180370, 27.444542, 51.979237>,  <36.374329, 27.554522, 52.068031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180370, 27.444542, 51.979237>,  <35.857105, 27.261244, 51.831249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180370, 27.444542, 51.979237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020200, -0.606245, 0.795021,
		0.588608, -0.649983, -0.480690,
		0.808167, 0.458246, 0.369970,
		36.422821, 27.582016, 52.090229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371777, 26.733109, 51.832062>,  <35.857105, 27.261244, 51.831249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371777, 26.733109, 51.832062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374729, 27.040195, 52.088360>,  <36.376503, 27.224447, 52.242138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374729, 27.040195, 52.088360>,  <36.371777, 26.733109, 51.832062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374729, 27.040195, 52.088360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059969, -0.639268, 0.766642,
		0.998173, -0.044086, 0.041319,
		0.007384, 0.767720, 0.640744,
		36.376945, 27.270512, 52.280582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967922, 26.954386, 52.334957>,  <36.371777, 26.733109, 51.832062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967922, 26.954386, 52.334957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599594, 27.028633, 52.472145>,  <36.378597, 27.073181, 52.554459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.599594, 27.028633, 52.472145>,  <36.967922, 26.954386, 52.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599594, 27.028633, 52.472145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193032, -0.547228, 0.814420,
		0.338854, 0.816142, 0.468071,
		-0.920824, 0.185617, 0.342972,
		36.323345, 27.084318, 52.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608185, 26.448418, 51.999916>,  <36.967922, 26.954386, 52.334957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608185, 26.448418, 51.999916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007725, 26.433640, 52.012089>,  <38.247448, 26.424772, 52.019394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007725, 26.433640, 52.012089>,  <37.608185, 26.448418, 51.999916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007725, 26.433640, 52.012089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004041, -0.698606, -0.715495,
		0.047696, 0.714552, -0.697954,
		0.998854, -0.036947, 0.030433,
		38.307381, 26.422556, 52.021217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882721, 26.630589, 51.330162>,  <37.608185, 26.448418, 51.999916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882721, 26.630589, 51.330162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 26.362665, 51.516754>,  <38.252460, 26.201912, 51.628708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113808, 26.362665, 51.516754>,  <37.882721, 26.630589, 51.330162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113808, 26.362665, 51.516754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085189, -0.518899, -0.850580,
		0.811780, 0.531133, -0.242716,
		0.577716, -0.669807, 0.466479,
		38.287121, 26.161722, 51.656696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326408, 26.184921, 51.390167>,  <37.882721, 26.630589, 51.330162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326408, 26.184921, 51.390167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146858, 25.836973, 51.308346>,  <37.039127, 25.628204, 51.259254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146858, 25.836973, 51.308346>,  <37.326408, 26.184921, 51.390167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146858, 25.836973, 51.308346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236328, 0.336317, -0.911614,
		0.861778, -0.360860, -0.356539,
		-0.448875, -0.869869, -0.204549,
		37.012196, 25.576014, 51.246983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490906, 25.945635, 50.783573>,  <37.326408, 26.184921, 51.390167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490906, 25.945635, 50.783573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146049, 25.751137, 50.840546>,  <36.939137, 25.634438, 50.874729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146049, 25.751137, 50.840546>,  <37.490906, 25.945635, 50.783573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146049, 25.751137, 50.840546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176428, 0.024581, -0.984007,
		0.474969, -0.873476, -0.106980,
		-0.862136, -0.486247, 0.142430,
		36.887409, 25.605263, 50.883274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402817, 25.357718, 50.307270>,  <37.490906, 25.945635, 50.783573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402817, 25.357718, 50.307270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025635, 25.480209, 50.359520>,  <36.799328, 25.553705, 50.390869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.025635, 25.480209, 50.359520>,  <37.402817, 25.357718, 50.307270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025635, 25.480209, 50.359520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016544, 0.434965, -0.900295,
		-0.332514, -0.846776, -0.415218,
		-0.942954, 0.306230, 0.130623,
		36.742748, 25.572079, 50.398708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970905, 25.230656, 49.709152>,  <37.402817, 25.357718, 50.307270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970905, 25.230656, 49.709152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813793, 25.545858, 49.898792>,  <36.719524, 25.734980, 50.012577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813793, 25.545858, 49.898792>,  <36.970905, 25.230656, 49.709152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813793, 25.545858, 49.898792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043541, 0.530888, -0.846323,
		-0.918601, -0.311776, -0.242833,
		-0.392781, 0.788006, 0.474099,
		36.695957, 25.782261, 50.041023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323269, 25.389824, 49.578415>,  <36.970905, 25.230656, 49.709152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323269, 25.389824, 49.578415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507000, 25.732893, 49.670864>,  <36.617237, 25.938734, 49.726334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507000, 25.732893, 49.670864>,  <36.323269, 25.389824, 49.578415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507000, 25.732893, 49.670864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279407, 0.386494, -0.878950,
		-0.843180, 0.339146, 0.417167,
		0.459325, 0.857673, 0.231125,
		36.644798, 25.990194, 49.740200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915268, 25.895315, 49.427834>,  <36.323269, 25.389824, 49.578415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915268, 25.895315, 49.427834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285007, 26.046696, 49.408413>,  <36.506851, 26.137524, 49.396759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285007, 26.046696, 49.408413>,  <35.915268, 25.895315, 49.427834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285007, 26.046696, 49.408413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138671, 0.214666, -0.966793,
		-0.355464, 0.900384, 0.250906,
		0.924346, 0.378453, -0.048551,
		36.562313, 26.160233, 49.393848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864700, 26.512297, 49.153431>,  <35.915268, 25.895315, 49.427834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864700, 26.512297, 49.153431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247604, 26.423990, 49.078678>,  <36.477345, 26.371006, 49.033825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247604, 26.423990, 49.078678>,  <35.864700, 26.512297, 49.153431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247604, 26.423990, 49.078678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149435, 0.175721, -0.973032,
		0.247651, 0.959366, 0.135220,
		0.957255, -0.220766, -0.186881,
		36.534782, 26.357759, 49.022614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104191, 26.914658, 48.742260>,  <35.864700, 26.512297, 49.153431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104191, 26.914658, 48.742260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392910, 26.642931, 48.689281>,  <36.566139, 26.479895, 48.657494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392910, 26.642931, 48.689281>,  <36.104191, 26.914658, 48.742260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392910, 26.642931, 48.689281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002935, 0.188355, -0.982097,
		0.692102, 0.709260, 0.133959,
		0.721794, -0.679318, -0.132443,
		36.609447, 26.439137, 48.649548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520336, 27.227821, 48.377411>,  <36.104191, 26.914658, 48.742260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520336, 27.227821, 48.377411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640629, 26.849951, 48.325035>,  <36.712807, 26.623228, 48.293610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640629, 26.849951, 48.325035>,  <36.520336, 27.227821, 48.377411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640629, 26.849951, 48.325035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019438, 0.143338, -0.989483,
		0.953509, 0.295027, 0.061469,
		0.300735, -0.944676, -0.130939,
		36.730850, 26.566547, 48.285755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913074, 27.337927, 47.743587>,  <36.520336, 27.227821, 48.377411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913074, 27.337927, 47.743587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882195, 26.939289, 47.755203>,  <36.863667, 26.700108, 47.762173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882195, 26.939289, 47.755203>,  <36.913074, 27.337927, 47.743587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882195, 26.939289, 47.755203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133166, -0.018557, -0.990920,
		0.988082, -0.080369, -0.131279,
		-0.077203, -0.996592, 0.029038,
		36.859032, 26.640312, 47.763916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300819, 27.034492, 47.177948>,  <36.913074, 27.337927, 47.743587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300819, 27.034492, 47.177948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048309, 26.739748, 47.274715>,  <36.896805, 26.562901, 47.332775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048309, 26.739748, 47.274715>,  <37.300819, 27.034492, 47.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048309, 26.739748, 47.274715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206709, -0.140789, -0.968220,
		0.747505, -0.661219, -0.063440,
		-0.631274, -0.736863, 0.241921,
		36.858929, 26.518688, 47.347290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539986, 26.465952, 46.842083>,  <37.300819, 27.034492, 47.177948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539986, 26.465952, 46.842083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155029, 26.370066, 46.893211>,  <36.924057, 26.312534, 46.923889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.155029, 26.370066, 46.893211>,  <37.539986, 26.465952, 46.842083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155029, 26.370066, 46.893211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080768, -0.196759, -0.977119,
		0.259379, -0.950696, 0.169998,
		-0.962392, -0.239714, 0.127821,
		36.866310, 26.298151, 46.931557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422012, 25.942724, 46.373722>,  <37.539986, 26.465952, 46.842083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422012, 25.942724, 46.373722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046932, 26.052113, 46.459454>,  <36.821884, 26.117746, 46.510891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046932, 26.052113, 46.459454>,  <37.422012, 25.942724, 46.373722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046932, 26.052113, 46.459454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278611, -0.223241, -0.934098,
		-0.207586, -0.935621, 0.285521,
		-0.937701, 0.273455, 0.214333,
		36.765621, 26.134155, 46.523750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919117, 25.420809, 45.995010>,  <37.422012, 25.942724, 46.373722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919117, 25.420809, 45.995010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711735, 25.749514, 46.089588>,  <36.587307, 25.946737, 46.146336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.711735, 25.749514, 46.089588>,  <36.919117, 25.420809, 45.995010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711735, 25.749514, 46.089588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357605, 0.042808, -0.932891,
		-0.776739, -0.568217, 0.271673,
		-0.518455, 0.821764, 0.236448,
		36.556198, 25.996042, 46.160522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259445, 25.331556, 45.789536>,  <36.919117, 25.420809, 45.995010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259445, 25.331556, 45.789536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296219, 25.729733, 45.799709>,  <36.318283, 25.968637, 45.805813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296219, 25.729733, 45.799709>,  <36.259445, 25.331556, 45.789536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296219, 25.729733, 45.799709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467864, 0.065727, -0.881353,
		-0.879006, 0.069125, 0.471773,
		0.091932, 0.995440, 0.025433,
		36.323799, 26.028364, 45.807339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712143, 25.562029, 45.317348>,  <36.259445, 25.331556, 45.789536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712143, 25.562029, 45.317348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891247, 25.913654, 45.382782>,  <35.998711, 26.124630, 45.422043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891247, 25.913654, 45.382782>,  <35.712143, 25.562029, 45.317348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891247, 25.913654, 45.382782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317968, 0.327531, -0.889730,
		-0.835708, 0.346370, 0.426169,
		0.447760, 0.879063, 0.163585,
		36.025574, 26.177374, 45.431858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271606, 25.974909, 45.144711>,  <35.712143, 25.562029, 45.317348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271606, 25.974909, 45.144711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597958, 26.206177, 45.147934>,  <35.793766, 26.344938, 45.149868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597958, 26.206177, 45.147934>,  <35.271606, 25.974909, 45.144711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597958, 26.206177, 45.147934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350445, 0.505513, -0.788445,
		-0.459931, 0.640448, 0.615053,
		0.815875, 0.578172, 0.008060,
		35.842720, 26.379629, 45.150352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074524, 26.653683, 45.161251>,  <35.271606, 25.974909, 45.144711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074524, 26.653683, 45.161251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445335, 26.675581, 45.012859>,  <35.667820, 26.688719, 44.923824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.445335, 26.675581, 45.012859>,  <35.074524, 26.653683, 45.161251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445335, 26.675581, 45.012859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341127, 0.533974, -0.773630,
		0.155742, 0.843727, 0.513683,
		0.927026, 0.054744, -0.370980,
		35.723442, 26.692005, 44.901566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206787, 27.457689, 44.995167>,  <35.074524, 26.653683, 45.161251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206787, 27.457689, 44.995167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430882, 27.211397, 44.773533>,  <35.565338, 27.063622, 44.640553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430882, 27.211397, 44.773533>,  <35.206787, 27.457689, 44.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430882, 27.211397, 44.773533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247309, 0.514076, -0.821318,
		0.790554, 0.597162, 0.135727,
		0.560234, -0.615730, -0.554089,
		35.598953, 27.026678, 44.607307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653343, 27.893381, 44.648941>,  <35.206787, 27.457689, 44.995167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653343, 27.893381, 44.648941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633533, 27.550097, 44.444580>,  <35.621647, 27.344126, 44.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633533, 27.550097, 44.444580>,  <35.653343, 27.893381, 44.648941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633533, 27.550097, 44.444580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094838, 0.513256, -0.852980,
		0.994260, 0.006213, -0.106808,
		-0.049520, -0.858213, -0.510899,
		35.618679, 27.292633, 44.291309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086205, 27.999170, 44.109585>,  <35.653343, 27.893381, 44.648941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086205, 27.999170, 44.109585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851051, 27.697653, 43.992153>,  <35.709961, 27.516743, 43.921692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851051, 27.697653, 43.992153>,  <36.086205, 27.999170, 44.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851051, 27.697653, 43.992153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004671, 0.366078, -0.930572,
		0.808932, -0.545696, -0.218732,
		-0.587883, -0.753792, -0.293583,
		35.674686, 27.471516, 43.904079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356846, 27.927635, 43.425777>,  <36.086205, 27.999170, 44.109585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356846, 27.927635, 43.425777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016441, 27.718319, 43.443401>,  <35.812199, 27.592730, 43.453976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016441, 27.718319, 43.443401>,  <36.356846, 27.927635, 43.425777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016441, 27.718319, 43.443401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342054, 0.488699, -0.802603,
		0.398459, -0.698100, -0.594884,
		-0.851017, -0.523287, 0.044062,
		35.761135, 27.561333, 43.456619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237930, 27.649035, 42.795837>,  <36.356846, 27.927635, 43.425777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237930, 27.649035, 42.795837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869595, 27.656614, 42.951633>,  <35.648594, 27.661163, 43.045113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869595, 27.656614, 42.951633>,  <36.237930, 27.649035, 42.795837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869595, 27.656614, 42.951633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328905, 0.498821, -0.801872,
		-0.209483, -0.866498, -0.453099,
		-0.920836, 0.018952, 0.389490,
		35.593346, 27.662300, 43.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871681, 27.296837, 42.378181>,  <36.237930, 27.649035, 42.795837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871681, 27.296837, 42.378181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615849, 27.526991, 42.582092>,  <35.462349, 27.665083, 42.704437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615849, 27.526991, 42.582092>,  <35.871681, 27.296837, 42.378181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615849, 27.526991, 42.582092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296017, 0.427660, -0.854096,
		-0.709442, -0.697167, -0.103200,
		-0.639582, 0.575383, 0.509773,
		35.423973, 27.699606, 42.735023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331043, 27.314970, 41.885082>,  <35.871681, 27.296837, 42.378181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331043, 27.314970, 41.885082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259232, 27.610390, 42.145027>,  <35.216145, 27.787642, 42.300995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259232, 27.610390, 42.145027>,  <35.331043, 27.314970, 41.885082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259232, 27.610390, 42.145027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372988, 0.560167, -0.739657,
		-0.910302, -0.375180, 0.174902,
		-0.179530, 0.738547, 0.649859,
		35.205372, 27.831953, 42.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568836, 27.512520, 41.889370>,  <35.331043, 27.314970, 41.885082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568836, 27.512520, 41.889370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760456, 27.822613, 42.054062>,  <34.875427, 28.008669, 42.152878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760456, 27.822613, 42.054062>,  <34.568836, 27.512520, 41.889370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760456, 27.822613, 42.054062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307743, 0.587611, -0.748337,
		-0.822072, 0.231788, 0.520070,
		0.479054, 0.775234, 0.411727,
		34.904171, 28.055183, 42.177582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102077, 27.990391, 41.941540>,  <34.568836, 27.512520, 41.889370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102077, 27.990391, 41.941540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463810, 28.161114, 41.943375>,  <34.680851, 28.263548, 41.944473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.463810, 28.161114, 41.943375>,  <34.102077, 27.990391, 41.941540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463810, 28.161114, 41.943375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165274, 0.360049, -0.918177,
		-0.393535, 0.829579, 0.396144,
		0.904331, 0.426807, 0.004584,
		34.735111, 28.289156, 41.944752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948208, 28.759344, 41.866959>,  <34.102077, 27.990391, 41.941540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948208, 28.759344, 41.866959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325726, 28.684711, 41.757816>,  <34.552235, 28.639933, 41.692333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325726, 28.684711, 41.757816>,  <33.948208, 28.759344, 41.866959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325726, 28.684711, 41.757816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122714, 0.568687, -0.813348,
		0.306923, 0.801113, 0.513825,
		0.943790, -0.186581, -0.272851,
		34.608864, 28.628736, 41.675961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175034, 29.372025, 41.829983>,  <33.948208, 28.759344, 41.866959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175034, 29.372025, 41.829983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382225, 29.132742, 41.585411>,  <34.506542, 28.989172, 41.438667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382225, 29.132742, 41.585411>,  <34.175034, 29.372025, 41.829983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382225, 29.132742, 41.585411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055777, 0.736893, -0.673704,
		0.853571, 0.314863, 0.415064,
		0.517982, -0.598205, -0.611429,
		34.537621, 28.953279, 41.401981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622253, 29.762470, 41.471771>,  <34.175034, 29.372025, 41.829983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622253, 29.762470, 41.471771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657642, 29.417501, 41.272411>,  <34.678875, 29.210520, 41.152798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657642, 29.417501, 41.272411>,  <34.622253, 29.762470, 41.471771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657642, 29.417501, 41.272411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051839, 0.503666, -0.862341,
		0.994729, 0.050454, 0.089267,
		0.088469, -0.862424, -0.498396,
		34.684181, 29.158773, 41.122894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198277, 29.816589, 41.035408>,  <34.622253, 29.762470, 41.471771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198277, 29.816589, 41.035408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987720, 29.521027, 40.867153>,  <34.861385, 29.343689, 40.766201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987720, 29.521027, 40.867153>,  <35.198277, 29.816589, 41.035408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987720, 29.521027, 40.867153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002141, 0.495875, -0.868392,
		0.850242, -0.456211, -0.262604,
		-0.526388, -0.738904, -0.420637,
		34.829803, 29.299355, 40.740963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533417, 29.663744, 40.419842>,  <35.198277, 29.816589, 41.035408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533417, 29.663744, 40.419842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154259, 29.542505, 40.380608>,  <34.926762, 29.469763, 40.357067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.154259, 29.542505, 40.380608>,  <35.533417, 29.663744, 40.419842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154259, 29.542505, 40.380608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064976, 0.485365, -0.871894,
		0.311876, -0.820094, -0.479771,
		-0.947899, -0.303096, -0.098087,
		34.869888, 29.451576, 40.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470737, 29.426252, 39.590679>,  <35.533417, 29.663744, 40.419842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470737, 29.426252, 39.590679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113091, 29.487623, 39.758968>,  <34.898502, 29.524445, 39.859943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113091, 29.487623, 39.758968>,  <35.470737, 29.426252, 39.590679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113091, 29.487623, 39.758968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301253, 0.489075, -0.818567,
		-0.331355, -0.858642, -0.391072,
		-0.894120, 0.153425, 0.420726,
		34.844856, 29.533651, 39.885185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953621, 29.405428, 39.057163>,  <35.470737, 29.426252, 39.590679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953621, 29.405428, 39.057163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747696, 29.591219, 39.345394>,  <34.624142, 29.702694, 39.518333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747696, 29.591219, 39.345394>,  <34.953621, 29.405428, 39.057163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747696, 29.591219, 39.345394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462353, 0.557379, -0.689607,
		-0.721942, -0.688178, -0.072191,
		-0.514810, 0.464478, 0.720577,
		34.593254, 29.730562, 39.561565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341736, 29.522564, 38.794292>,  <34.953621, 29.405428, 39.057163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341736, 29.522564, 38.794292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348644, 29.782030, 39.098644>,  <34.352791, 29.937710, 39.281254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348644, 29.782030, 39.098644>,  <34.341736, 29.522564, 38.794292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348644, 29.782030, 39.098644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460740, 0.680542, -0.569720,
		-0.887367, -0.340725, 0.310623,
		0.017274, 0.648667, 0.760877,
		34.353825, 29.976629, 39.326908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699364, 29.919107, 38.774368>,  <34.341736, 29.522564, 38.794292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699364, 29.919107, 38.774368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939236, 30.155024, 38.990711>,  <34.083160, 30.296574, 39.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939236, 30.155024, 38.990711>,  <33.699364, 29.919107, 38.774368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939236, 30.155024, 38.990711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373817, 0.804058, -0.462333,
		-0.707563, 0.075069, 0.702652,
		0.599680, 0.589792, 0.540860,
		34.119141, 30.331961, 39.152969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237740, 30.400688, 38.928505>,  <33.699364, 29.919107, 38.774368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237740, 30.400688, 38.928505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588196, 30.568729, 39.023064>,  <33.798470, 30.669554, 39.079800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588196, 30.568729, 39.023064>,  <33.237740, 30.400688, 38.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588196, 30.568729, 39.023064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356517, 0.894787, -0.268797,
		-0.324450, 0.151224, 0.933736,
		0.876143, 0.420104, 0.236400,
		33.851040, 30.694761, 39.093983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037151, 31.085688, 39.273006>,  <33.237740, 30.400688, 38.928505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037151, 31.085688, 39.273006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418873, 31.119823, 39.158447>,  <33.647907, 31.140305, 39.089710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.418873, 31.119823, 39.158447>,  <33.037151, 31.085688, 39.273006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418873, 31.119823, 39.158447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195201, 0.903671, -0.381150,
		0.226280, 0.419637, 0.879035,
		0.954303, 0.085342, -0.286397,
		33.705162, 31.145426, 39.072529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271935, 31.697330, 39.489468>,  <33.037151, 31.085688, 39.273006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271935, 31.697330, 39.489468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514904, 31.613005, 39.183113>,  <33.660686, 31.562408, 38.999298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514904, 31.613005, 39.183113>,  <33.271935, 31.697330, 39.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514904, 31.613005, 39.183113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131031, 0.924346, -0.358351,
		0.783493, 0.318028, 0.533851,
		0.607428, -0.210815, -0.765890,
		33.697132, 31.549761, 38.953346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740681, 32.287590, 39.441063>,  <33.271935, 31.697330, 39.489468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740681, 32.287590, 39.441063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773617, 32.131378, 39.074303>,  <33.793377, 32.037651, 38.854248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773617, 32.131378, 39.074303>,  <33.740681, 32.287590, 39.441063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773617, 32.131378, 39.074303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139415, 0.906463, -0.398608,
		0.986805, 0.160651, 0.020192,
		0.082340, -0.390533, -0.916899,
		33.798317, 32.014217, 38.799232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398270, 32.587467, 39.158894>,  <33.740681, 32.287590, 39.441063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398270, 32.587467, 39.158894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177845, 32.480240, 38.842800>,  <34.045589, 32.415901, 38.653145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177845, 32.480240, 38.842800>,  <34.398270, 32.587467, 39.158894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177845, 32.480240, 38.842800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087168, 0.923321, -0.374004,
		0.829901, -0.274982, -0.485438,
		-0.551059, -0.268072, -0.790235,
		34.012527, 32.399818, 38.605728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742779, 32.696873, 38.458569>,  <34.398270, 32.587467, 39.158894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742779, 32.696873, 38.458569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367012, 32.674587, 38.323277>,  <34.141552, 32.661217, 38.242104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367012, 32.674587, 38.323277>,  <34.742779, 32.696873, 38.458569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367012, 32.674587, 38.323277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158225, 0.804819, -0.572041,
		0.304083, -0.590899, -0.747243,
		-0.939414, -0.055715, -0.338227,
		34.085186, 32.657871, 38.221809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725456, 32.911945, 37.787228>,  <34.742779, 32.696873, 38.458569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725456, 32.911945, 37.787228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328579, 32.934860, 37.831528>,  <34.090450, 32.948608, 37.858109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328579, 32.934860, 37.831528>,  <34.725456, 32.911945, 37.787228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328579, 32.934860, 37.831528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007081, 0.860899, -0.508727,
		-0.124484, -0.505541, -0.853775,
		-0.992196, 0.057283, 0.110748,
		34.030922, 32.952045, 37.864754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646427, 32.268551, 37.499016>,  <34.725456, 32.911945, 37.787228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646427, 32.268551, 37.499016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858780, 32.493080, 37.245060>,  <34.986191, 32.627796, 37.092686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858780, 32.493080, 37.245060>,  <34.646427, 32.268551, 37.499016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858780, 32.493080, 37.245060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817986, -0.535234, 0.210770,
		-0.221506, -0.631226, -0.743296,
		0.530881, 0.561319, -0.634891,
		35.018044, 32.661476, 37.054592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911842, 31.788828, 37.087311>,  <34.646427, 32.268551, 37.499016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911842, 31.788828, 37.087311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137081, 32.118061, 37.057758>,  <35.272224, 32.315601, 37.040028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137081, 32.118061, 37.057758>,  <34.911842, 31.788828, 37.087311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137081, 32.118061, 37.057758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771359, -0.491407, 0.404381,
		0.296533, -0.284695, -0.911601,
		0.563093, 0.823084, -0.073883,
		35.306007, 32.364986, 37.035595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543362, 31.512197, 36.948875>,  <34.911842, 31.788828, 37.087311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543362, 31.512197, 36.948875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644608, 31.887768, 37.042126>,  <35.705357, 32.113110, 37.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644608, 31.887768, 37.042126>,  <35.543362, 31.512197, 36.948875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644608, 31.887768, 37.042126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892318, -0.319682, 0.318704,
		0.373766, 0.127351, -0.918739,
		0.253117, 0.938928, 0.233124,
		35.720543, 32.169445, 37.112064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288151, 31.614573, 36.567928>,  <35.543362, 31.512197, 36.948875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288151, 31.614573, 36.567928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204697, 31.846081, 36.883270>,  <36.154625, 31.984985, 37.072475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204697, 31.846081, 36.883270>,  <36.288151, 31.614573, 36.567928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204697, 31.846081, 36.883270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734564, -0.439440, 0.517018,
		0.645667, 0.686963, -0.333461,
		-0.208636, 0.578770, 0.788351,
		36.142105, 32.019711, 37.119774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883324, 31.851053, 36.793560>,  <36.288151, 31.614573, 36.567928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883324, 31.851053, 36.793560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668266, 31.912584, 37.125168>,  <36.539230, 31.949503, 37.324131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668266, 31.912584, 37.125168>,  <36.883324, 31.851053, 36.793560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668266, 31.912584, 37.125168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669109, -0.520438, 0.530507,
		0.513061, 0.839929, 0.176884,
		-0.537645, 0.153827, 0.829020,
		36.506973, 31.958733, 37.373875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412300, 31.874098, 37.341255>,  <36.883324, 31.851053, 36.793560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412300, 31.874098, 37.341255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073265, 31.852598, 37.552422>,  <36.869843, 31.839699, 37.679123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073265, 31.852598, 37.552422>,  <37.412300, 31.874098, 37.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073265, 31.852598, 37.552422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421567, -0.672429, 0.608375,
		0.322289, 0.738207, 0.592604,
		-0.847591, -0.053750, 0.527920,
		36.818989, 31.836473, 37.710796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686111, 31.760859, 37.870369>,  <37.412300, 31.874098, 37.341255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686111, 31.760859, 37.870369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309696, 31.684841, 37.982323>,  <37.083847, 31.639231, 38.049496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309696, 31.684841, 37.982323>,  <37.686111, 31.760859, 37.870369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309696, 31.684841, 37.982323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327681, -0.717749, 0.614379,
		0.084131, 0.669866, 0.737700,
		-0.941035, -0.190042, 0.279887,
		37.027386, 31.627829, 38.066288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598511, 31.928371, 38.662987>,  <37.686111, 31.760859, 37.870369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598511, 31.928371, 38.662987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349773, 31.653564, 38.512619>,  <37.200531, 31.488680, 38.422398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349773, 31.653564, 38.512619>,  <37.598511, 31.928371, 38.662987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349773, 31.653564, 38.512619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291222, -0.648452, 0.703349,
		-0.726978, 0.327900, 0.603312,
		-0.621846, -0.687017, -0.375919,
		37.163219, 31.447460, 38.399845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401398, 31.662983, 39.265648>,  <37.598511, 31.928371, 38.662987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401398, 31.662983, 39.265648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314426, 31.394310, 38.982361>,  <37.262245, 31.233107, 38.812389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314426, 31.394310, 38.982361>,  <37.401398, 31.662983, 39.265648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314426, 31.394310, 38.982361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159856, -0.740282, 0.653016,
		-0.962898, 0.028770, 0.268328,
		-0.217425, -0.671681, -0.708217,
		37.249199, 31.192806, 38.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906704, 31.127893, 39.572926>,  <37.401398, 31.662983, 39.265648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906704, 31.127893, 39.572926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041080, 30.952909, 39.239273>,  <37.121704, 30.847919, 39.039082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.041080, 30.952909, 39.239273>,  <36.906704, 31.127893, 39.572926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041080, 30.952909, 39.239273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254387, -0.810545, 0.527545,
		-0.906881, -0.389415, -0.161009,
		0.335939, -0.437462, -0.834130,
		37.141861, 30.821671, 38.989033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461708, 30.573299, 39.568123>,  <36.906704, 31.127893, 39.572926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461708, 30.573299, 39.568123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807182, 30.524714, 39.372452>,  <37.014465, 30.495562, 39.255051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807182, 30.524714, 39.372452>,  <36.461708, 30.573299, 39.568123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807182, 30.524714, 39.372452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178642, -0.833756, 0.522434,
		-0.471310, -0.538607, -0.698406,
		0.863686, -0.121464, -0.489175,
		37.066288, 30.488274, 39.225700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532085, 29.852066, 39.441902>,  <36.461708, 30.573299, 39.568123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532085, 29.852066, 39.441902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913193, 29.965656, 39.398853>,  <37.141857, 30.033810, 39.373024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913193, 29.965656, 39.398853>,  <36.532085, 29.852066, 39.441902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913193, 29.965656, 39.398853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296335, -0.791869, 0.533975,
		0.066410, -0.540650, -0.838622,
		0.952772, 0.283974, -0.107625,
		37.199024, 30.050848, 39.366566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879158, 29.221928, 39.290073>,  <36.532085, 29.852066, 39.441902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879158, 29.221928, 39.290073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136929, 29.495274, 39.427319>,  <37.291592, 29.659281, 39.509666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136929, 29.495274, 39.427319>,  <36.879158, 29.221928, 39.290073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136929, 29.495274, 39.427319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546360, -0.725423, 0.418630,
		0.534981, -0.082311, -0.840845,
		0.644426, 0.683364, 0.343116,
		37.330257, 29.700283, 39.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542171, 28.882454, 39.130035>,  <36.879158, 29.221928, 39.290073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542171, 28.882454, 39.130035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575821, 29.148584, 39.426754>,  <37.596008, 29.308264, 39.604786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575821, 29.148584, 39.426754>,  <37.542171, 28.882454, 39.130035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575821, 29.148584, 39.426754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344780, -0.717887, 0.604785,
		0.934907, 0.204882, -0.289780,
		0.084120, 0.665328, 0.741797,
		37.601055, 29.348183, 39.649292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234188, 28.782917, 39.470760>,  <37.542171, 28.882454, 39.130035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234188, 28.782917, 39.470760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004406, 28.979324, 39.732723>,  <37.866539, 29.097170, 39.889900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004406, 28.979324, 39.732723>,  <38.234188, 28.782917, 39.470760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004406, 28.979324, 39.732723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366719, -0.560919, 0.742218,
		0.731794, 0.666536, 0.142155,
		-0.574452, 0.491020, 0.654908,
		37.832069, 29.126631, 39.929195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666912, 28.923119, 40.090240>,  <38.234188, 28.782917, 39.470760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666912, 28.923119, 40.090240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295891, 28.960039, 40.235088>,  <38.073280, 28.982191, 40.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295891, 28.960039, 40.235088>,  <38.666912, 28.923119, 40.090240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295891, 28.960039, 40.235088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210437, -0.671757, 0.710252,
		0.308812, 0.734998, 0.603666,
		-0.927551, 0.092301, 0.362118,
		38.017624, 28.987730, 40.343723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752953, 28.905117, 40.758465>,  <38.666912, 28.923119, 40.090240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752953, 28.905117, 40.758465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360073, 28.836184, 40.728558>,  <38.124348, 28.794825, 40.710613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.360073, 28.836184, 40.728558>,  <38.752953, 28.905117, 40.758465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360073, 28.836184, 40.728558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043630, -0.596415, 0.801490,
		-0.182717, 0.783959, 0.593315,
		-0.982197, -0.172332, -0.074771,
		38.065414, 28.784483, 40.706127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443573, 29.060396, 41.470509>,  <38.752953, 28.905117, 40.758465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443573, 29.060396, 41.470509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193829, 28.811495, 41.281628>,  <38.043983, 28.662153, 41.168297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.193829, 28.811495, 41.281628>,  <38.443573, 29.060396, 41.470509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193829, 28.811495, 41.281628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014050, -0.613356, 0.789681,
		-0.781013, 0.486408, 0.391696,
		-0.624356, -0.622255, -0.472205,
		38.006523, 28.624819, 41.139965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824623, 29.016739, 41.906948>,  <38.443573, 29.060396, 41.470509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824623, 29.016739, 41.906948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776482, 28.692438, 41.677795>,  <37.747597, 28.497858, 41.540302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776482, 28.692438, 41.677795>,  <37.824623, 29.016739, 41.906948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776482, 28.692438, 41.677795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079879, -0.567295, 0.819631,
		-0.989512, 0.144409, 0.003515,
		-0.120357, -0.810754, -0.572881,
		37.740376, 28.449211, 41.505932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222912, 28.718830, 42.182503>,  <37.824623, 29.016739, 41.906948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222912, 28.718830, 42.182503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444035, 28.451202, 41.983807>,  <37.576706, 28.290627, 41.864590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444035, 28.451202, 41.983807>,  <37.222912, 28.718830, 42.182503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444035, 28.451202, 41.983807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034614, -0.614031, 0.788523,
		-0.832594, -0.418702, -0.362596,
		0.552801, -0.669070, -0.496745,
		37.609875, 28.250481, 41.834782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894600, 28.088028, 42.426857>,  <37.222912, 28.718830, 42.182503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894600, 28.088028, 42.426857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253567, 27.983715, 42.284512>,  <37.468948, 27.921127, 42.199104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253567, 27.983715, 42.284512>,  <36.894600, 28.088028, 42.426857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253567, 27.983715, 42.284512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151922, -0.574607, 0.804205,
		-0.414202, -0.775770, -0.476044,
		0.897416, -0.260782, -0.355860,
		37.522793, 27.905479, 42.177753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892719, 27.343567, 42.533638>,  <36.894600, 28.088028, 42.426857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892719, 27.343567, 42.533638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263908, 27.490473, 42.508389>,  <37.486622, 27.578617, 42.493240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263908, 27.490473, 42.508389>,  <36.892719, 27.343567, 42.533638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263908, 27.490473, 42.508389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283878, -0.586966, 0.758211,
		0.241417, -0.721516, -0.648947,
		0.927972, 0.367266, -0.063119,
		37.542301, 27.600653, 42.489452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306065, 26.781790, 42.654217>,  <36.892719, 27.343567, 42.533638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306065, 26.781790, 42.654217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564808, 27.080948, 42.713848>,  <37.720055, 27.260443, 42.749626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564808, 27.080948, 42.713848>,  <37.306065, 26.781790, 42.654217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564808, 27.080948, 42.713848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406267, -0.503391, 0.762591,
		0.645382, -0.432725, -0.629469,
		0.646861, 0.747895, 0.149078,
		37.758865, 27.305317, 42.758572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034416, 26.459026, 42.745033>,  <37.306065, 26.781790, 42.654217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034416, 26.459026, 42.745033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070061, 26.822069, 42.909138>,  <38.091446, 27.039894, 43.007599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.070061, 26.822069, 42.909138>,  <38.034416, 26.459026, 42.745033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070061, 26.822069, 42.909138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353434, -0.413907, 0.838907,
		0.931206, 0.070245, -0.357662,
		0.089110, 0.907605, 0.410259,
		38.096794, 27.094351, 43.032215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624084, 26.436842, 43.198071>,  <38.034416, 26.459026, 42.745033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624084, 26.436842, 43.198071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422256, 26.754501, 43.333561>,  <38.301159, 26.945097, 43.414856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422256, 26.754501, 43.333561>,  <38.624084, 26.436842, 43.198071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422256, 26.754501, 43.333561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419013, -0.117787, 0.900308,
		0.754877, 0.596199, -0.273327,
		-0.504568, 0.794149, 0.338730,
		38.270885, 26.992746, 43.435181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152176, 26.907598, 43.559063>,  <38.624084, 26.436842, 43.198071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152176, 26.907598, 43.559063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791939, 26.984474, 43.715012>,  <38.575798, 27.030600, 43.808582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.791939, 26.984474, 43.715012>,  <39.152176, 26.907598, 43.559063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791939, 26.984474, 43.715012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387420, -0.051793, 0.920447,
		0.197091, 0.979991, -0.027813,
		-0.900589, 0.192187, 0.389876,
		38.521763, 27.042130, 43.831974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275982, 27.522766, 44.001671>,  <39.152176, 26.907598, 43.559063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275982, 27.522766, 44.001671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947182, 27.319981, 44.105446>,  <38.749901, 27.198309, 44.167713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947182, 27.319981, 44.105446>,  <39.275982, 27.522766, 44.001671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947182, 27.319981, 44.105446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323409, -0.040573, 0.945389,
		-0.468750, 0.861013, 0.197307,
		-0.821998, -0.506961, 0.259441,
		38.700581, 27.167892, 44.183277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063522, 27.768105, 44.573818>,  <39.275982, 27.522766, 44.001671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063522, 27.768105, 44.573818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878963, 27.413389, 44.563137>,  <38.768227, 27.200560, 44.556728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878963, 27.413389, 44.563137>,  <39.063522, 27.768105, 44.573818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878963, 27.413389, 44.563137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232482, -0.149894, 0.960981,
		-0.856190, 0.437191, 0.275324,
		-0.461401, -0.886790, -0.026698,
		38.740543, 27.147352, 44.555126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671097, 27.719519, 45.203209>,  <39.063522, 27.768105, 44.573818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671097, 27.719519, 45.203209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700504, 27.337212, 45.089291>,  <38.718151, 27.107828, 45.020939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700504, 27.337212, 45.089291>,  <38.671097, 27.719519, 45.203209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700504, 27.337212, 45.089291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263610, -0.256785, 0.929823,
		-0.961823, -0.143437, 0.233071,
		0.073522, -0.955766, -0.284793,
		38.722561, 27.050482, 45.003853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276169, 27.335913, 45.795799>,  <38.671097, 27.719519, 45.203209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276169, 27.335913, 45.795799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494282, 27.072273, 45.588623>,  <38.625149, 26.914089, 45.464317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.494282, 27.072273, 45.588623>,  <38.276169, 27.335913, 45.795799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494282, 27.072273, 45.588623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339349, -0.391414, 0.855358,
		-0.766494, -0.642170, 0.010236,
		0.545278, -0.659100, -0.517937,
		38.657864, 26.874544, 45.433243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150269, 26.772465, 46.105881>,  <38.276169, 27.335913, 45.795799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150269, 26.772465, 46.105881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498875, 26.686666, 45.929497>,  <38.708038, 26.635187, 45.823666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498875, 26.686666, 45.929497>,  <38.150269, 26.772465, 46.105881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498875, 26.686666, 45.929497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335686, -0.394534, 0.855370,
		-0.357448, -0.893496, -0.271840,
		0.871520, -0.214497, -0.440959,
		38.760330, 26.622318, 45.797211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148769, 26.105768, 46.052448>,  <38.150269, 26.772465, 46.105881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148769, 26.105768, 46.052448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526806, 26.236465, 46.050037>,  <38.753628, 26.314884, 46.048592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526806, 26.236465, 46.050037>,  <38.148769, 26.105768, 46.052448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526806, 26.236465, 46.050037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160475, -0.447949, 0.879540,
		0.284687, -0.832214, -0.475787,
		0.945093, 0.326745, -0.006024,
		38.810333, 26.334490, 46.048229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475868, 25.570595, 46.384590>,  <38.148769, 26.105768, 46.052448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475868, 25.570595, 46.384590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743931, 25.867289, 46.395306>,  <38.904770, 26.045305, 46.401733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.743931, 25.867289, 46.395306>,  <38.475868, 25.570595, 46.384590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743931, 25.867289, 46.395306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246050, -0.256067, 0.934820,
		0.700246, -0.619889, -0.354109,
		0.670161, 0.741733, 0.026786,
		38.944981, 26.089808, 46.403343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141022, 25.282280, 46.743820>,  <38.475868, 25.570595, 46.384590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141022, 25.282280, 46.743820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140961, 25.681976, 46.759422>,  <39.140926, 25.921793, 46.768784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140961, 25.681976, 46.759422>,  <39.141022, 25.282280, 46.743820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140961, 25.681976, 46.759422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165275, -0.038442, 0.985498,
		0.986248, 0.006593, -0.165144,
		-0.000149, 0.999239, 0.039003,
		39.140915, 25.981749, 46.771122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762478, 25.438017, 47.184284>,  <39.141022, 25.282280, 46.743820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762478, 25.438017, 47.184284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492313, 25.732500, 47.167248>,  <39.330215, 25.909191, 47.157024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.492313, 25.732500, 47.167248>,  <39.762478, 25.438017, 47.184284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492313, 25.732500, 47.167248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060661, 0.113028, 0.991738,
		0.734941, 0.667249, -0.121000,
		-0.675413, 0.736209, -0.042593,
		39.289688, 25.953363, 47.154469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097885, 26.105011, 47.432579>,  <39.762478, 25.438017, 47.184284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097885, 26.105011, 47.432579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702168, 26.090219, 47.489044>,  <39.464737, 26.081345, 47.522923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702168, 26.090219, 47.489044>,  <40.097885, 26.105011, 47.432579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702168, 26.090219, 47.489044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140954, 0.008250, 0.989982,
		-0.037774, 0.999282, -0.002949,
		-0.989295, -0.036979, 0.141164,
		39.405380, 26.079126, 47.531395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984936, 26.560789, 47.967499>,  <40.097885, 26.105011, 47.432579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984936, 26.560789, 47.967499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675140, 26.308355, 47.984943>,  <39.489262, 26.156895, 47.995411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675140, 26.308355, 47.984943>,  <39.984936, 26.560789, 47.967499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675140, 26.308355, 47.984943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143589, -0.108242, 0.983700,
		-0.616077, 0.768125, 0.174448,
		-0.774488, -0.631084, 0.043609,
		39.442795, 26.119030, 47.998028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388786, 26.189991, 48.485531>,  <39.984936, 26.560789, 47.967499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388786, 26.189991, 48.485531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356388, 25.822399, 48.331173>,  <40.336948, 25.601845, 48.238560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.356388, 25.822399, 48.331173>,  <40.388786, 26.189991, 48.485531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356388, 25.822399, 48.331173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949237, 0.046944, -0.311038,
		0.303953, -0.391501, 0.868527,
		-0.081000, -0.918979, -0.385896,
		40.332088, 25.546705, 48.215405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125343, 26.369825, 49.060860>,  <40.388786, 26.189991, 48.485531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125343, 26.369825, 49.060860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423336, 26.616951, 49.161499>,  <40.602131, 26.765226, 49.221882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423336, 26.616951, 49.161499>,  <40.125343, 26.369825, 49.060860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423336, 26.616951, 49.161499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018128, 0.358271, -0.933442,
		-0.666834, 0.699962, 0.255706,
		0.744985, 0.617815, 0.251596,
		40.646832, 26.802296, 49.236977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914059, 27.000898, 48.723309>,  <40.125343, 26.369825, 49.060860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914059, 27.000898, 48.723309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291470, 27.086611, 48.824379>,  <40.517914, 27.138039, 48.885021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291470, 27.086611, 48.824379>,  <39.914059, 27.000898, 48.723309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291470, 27.086611, 48.824379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087585, 0.574218, -0.814004,
		-0.319519, 0.790163, 0.523021,
		0.943523, 0.214281, 0.252680,
		40.574528, 27.150894, 48.900185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011173, 27.792944, 48.758415>,  <39.914059, 27.000898, 48.723309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011173, 27.792944, 48.758415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361828, 27.614296, 48.686810>,  <40.572220, 27.507107, 48.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361828, 27.614296, 48.686810>,  <40.011173, 27.792944, 48.758415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361828, 27.614296, 48.686810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136953, 0.588257, -0.796993,
		0.461256, 0.674155, 0.576852,
		0.876634, -0.446619, -0.179010,
		40.624817, 27.480310, 48.633106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452614, 28.303993, 48.496662>,  <40.011173, 27.792944, 48.758415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452614, 28.303993, 48.496662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658104, 27.981144, 48.380295>,  <40.781399, 27.787434, 48.310474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658104, 27.981144, 48.380295>,  <40.452614, 28.303993, 48.496662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658104, 27.981144, 48.380295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227511, 0.455108, -0.860881,
		0.827238, 0.376070, 0.417431,
		0.513728, -0.807123, -0.290922,
		40.812222, 27.739006, 48.293018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005432, 28.633219, 48.292206>,  <40.452614, 28.303993, 48.496662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005432, 28.633219, 48.292206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986160, 28.284906, 48.096481>,  <40.974598, 28.075920, 47.979046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.986160, 28.284906, 48.096481>,  <41.005432, 28.633219, 48.292206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986160, 28.284906, 48.096481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110651, 0.482207, -0.869041,
		0.992691, -0.096014, 0.073119,
		-0.048182, -0.870780, -0.489307,
		40.971706, 28.023672, 47.949688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445415, 28.808413, 47.678013>,  <41.005432, 28.633219, 48.292206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445415, 28.808413, 47.678013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263454, 28.460075, 47.603504>,  <41.154278, 28.251072, 47.558800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263454, 28.460075, 47.603504>,  <41.445415, 28.808413, 47.678013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263454, 28.460075, 47.603504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019745, 0.218975, -0.975531,
		0.890324, -0.440091, -0.116806,
		-0.454900, -0.870844, -0.186269,
		41.126984, 28.198822, 47.547623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784969, 28.497467, 47.155338>,  <41.445415, 28.808413, 47.678013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784969, 28.497467, 47.155338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426476, 28.320459, 47.143036>,  <41.211380, 28.214254, 47.135654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426476, 28.320459, 47.143036>,  <41.784969, 28.497467, 47.155338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426476, 28.320459, 47.143036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029422, 0.128478, -0.991276,
		0.442610, -0.887508, -0.128165,
		-0.896231, -0.442519, -0.030754,
		41.157604, 28.187704, 47.133808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815437, 28.132029, 46.527386>,  <41.784969, 28.497467, 47.155338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815437, 28.132029, 46.527386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421062, 28.135267, 46.594147>,  <41.184437, 28.137211, 46.634205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421062, 28.135267, 46.594147>,  <41.815437, 28.132029, 46.527386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421062, 28.135267, 46.594147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165194, 0.103234, -0.980843,
		-0.025171, -0.994624, -0.100445,
		-0.985940, 0.008096, 0.166905,
		41.125282, 28.137695, 46.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463657, 27.746288, 45.989346>,  <41.815437, 28.132029, 46.527386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463657, 27.746288, 45.989346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180298, 27.983473, 46.142483>,  <41.010281, 28.125784, 46.234364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180298, 27.983473, 46.142483>,  <41.463657, 27.746288, 45.989346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180298, 27.983473, 46.142483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249492, 0.297021, -0.921701,
		-0.660245, -0.748448, -0.062470,
		-0.708400, 0.592963, 0.382838,
		40.967777, 28.161362, 46.257336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976799, 27.617373, 45.550358>,  <41.463657, 27.746288, 45.989346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976799, 27.617373, 45.550358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898113, 27.967564, 45.726921>,  <40.850903, 28.177679, 45.832859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.898113, 27.967564, 45.726921>,  <40.976799, 27.617373, 45.550358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898113, 27.967564, 45.726921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345236, 0.359521, -0.866924,
		-0.917669, -0.322923, 0.231525,
		-0.196711, 0.875480, 0.441406,
		40.839100, 28.230207, 45.859344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304291, 27.729965, 45.280640>,  <40.976799, 27.617373, 45.550358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304291, 27.729965, 45.280640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446823, 28.078623, 45.415260>,  <40.532341, 28.287817, 45.496033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.446823, 28.078623, 45.415260>,  <40.304291, 27.729965, 45.280640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446823, 28.078623, 45.415260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402172, 0.468200, -0.786795,
		-0.843378, 0.145006, 0.517384,
		0.356330, 0.871643, 0.336552,
		40.553722, 28.340117, 45.516228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.814545, 28.216797, 45.289661>,  <40.304291, 27.729965, 45.280640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.814545, 28.216797, 45.289661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165806, 28.405689, 45.259079>,  <40.376564, 28.519024, 45.240730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165806, 28.405689, 45.259079>,  <39.814545, 28.216797, 45.289661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165806, 28.405689, 45.259079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337496, 0.498312, -0.798612,
		-0.339031, 0.727107, 0.596971,
		0.878154, 0.472230, -0.076453,
		40.429253, 28.547358, 45.236145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593029, 28.867802, 45.329144>,  <39.814545, 28.216797, 45.289661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593029, 28.867802, 45.329144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922920, 28.817375, 45.108624>,  <40.120853, 28.787119, 44.976311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.922920, 28.817375, 45.108624>,  <39.593029, 28.867802, 45.329144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922920, 28.817375, 45.108624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431380, 0.490136, -0.757415,
		0.365695, 0.862481, 0.349847,
		0.824729, -0.126066, -0.551298,
		40.170338, 28.779554, 44.943233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785809, 29.539450, 45.062035>,  <39.593029, 28.867802, 45.329144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785809, 29.539450, 45.062035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963570, 29.279640, 44.815254>,  <40.070225, 29.123755, 44.667187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963570, 29.279640, 44.815254>,  <39.785809, 29.539450, 45.062035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963570, 29.279640, 44.815254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231651, 0.581947, -0.779535,
		0.865358, 0.489345, 0.108157,
		0.444403, -0.649522, -0.616949,
		40.096889, 29.084784, 44.630169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831505, 29.905573, 44.476768>,  <39.785809, 29.539450, 45.062035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831505, 29.905573, 44.476768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943928, 29.537519, 44.367691>,  <40.011379, 29.316687, 44.302246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.943928, 29.537519, 44.367691>,  <39.831505, 29.905573, 44.476768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943928, 29.537519, 44.367691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051925, 0.269150, -0.961698,
		0.958286, 0.284450, 0.027868,
		0.281056, -0.920134, -0.272693,
		40.028244, 29.261478, 44.285885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451801, 29.914583, 44.209969>,  <39.831505, 29.905573, 44.476768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451801, 29.914583, 44.209969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245068, 29.608984, 44.055466>,  <40.121029, 29.425625, 43.962765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.245068, 29.608984, 44.055466>,  <40.451801, 29.914583, 44.209969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245068, 29.608984, 44.055466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040561, 0.472532, -0.880380,
		0.855124, -0.439344, -0.275209,
		-0.516834, -0.763997, -0.386253,
		40.090015, 29.379786, 43.939590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597950, 29.968407, 43.581512>,  <40.451801, 29.914583, 44.209969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597950, 29.968407, 43.581512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279808, 29.726904, 43.560043>,  <40.088921, 29.582003, 43.547161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279808, 29.726904, 43.560043>,  <40.597950, 29.968407, 43.581512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279808, 29.726904, 43.560043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161377, 0.296277, -0.941370,
		0.584262, -0.740065, -0.333079,
		-0.795359, -0.603758, -0.053674,
		40.041199, 29.545776, 43.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643745, 29.745609, 42.845345>,  <40.597950, 29.968407, 43.581512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643745, 29.745609, 42.845345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280483, 29.658873, 42.988586>,  <40.062527, 29.606831, 43.074532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.280483, 29.658873, 42.988586>,  <40.643745, 29.745609, 42.845345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280483, 29.658873, 42.988586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418044, 0.424105, -0.803352,
		0.022324, -0.879270, -0.475800,
		-0.908153, -0.216840, 0.358106,
		40.008038, 29.593821, 43.096020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306778, 29.496229, 42.230282>,  <40.643745, 29.745609, 42.845345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306778, 29.496229, 42.230282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999233, 29.582104, 42.471199>,  <39.814705, 29.633629, 42.615749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999233, 29.582104, 42.471199>,  <40.306778, 29.496229, 42.230282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999233, 29.582104, 42.471199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425794, 0.530811, -0.732762,
		-0.477016, -0.819848, -0.316711,
		-0.768866, 0.214686, 0.602291,
		39.768574, 29.646509, 42.651886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634727, 29.270433, 41.852009>,  <40.306778, 29.496229, 42.230282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634727, 29.270433, 41.852009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573322, 29.559967, 42.121082>,  <39.536480, 29.733686, 42.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.573322, 29.559967, 42.121082>,  <39.634727, 29.270433, 41.852009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573322, 29.559967, 42.121082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303654, 0.613255, -0.729186,
		-0.940335, -0.316199, 0.125656,
		-0.153509, 0.723835, 0.672680,
		39.527271, 29.777117, 42.322887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954033, 29.462427, 41.754070>,  <39.634727, 29.270433, 41.852009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954033, 29.462427, 41.754070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114700, 29.768454, 41.955402>,  <39.211102, 29.952068, 42.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114700, 29.768454, 41.955402>,  <38.954033, 29.462427, 41.754070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114700, 29.768454, 41.955402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252229, 0.620777, -0.742305,
		-0.880366, 0.171205, 0.442317,
		0.401667, 0.765065, 0.503328,
		39.235199, 29.997972, 42.106400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368347, 30.013361, 41.842831>,  <38.954033, 29.462427, 41.754070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368347, 30.013361, 41.842831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740059, 30.160999, 41.848705>,  <38.963085, 30.249582, 41.852230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740059, 30.160999, 41.848705>,  <38.368347, 30.013361, 41.842831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740059, 30.160999, 41.848705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221670, 0.589030, -0.777114,
		-0.295480, 0.718898, 0.629188,
		0.929276, 0.369094, 0.014689,
		39.018841, 30.271727, 41.853111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282558, 30.654591, 41.761654>,  <38.368347, 30.013361, 41.842831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282558, 30.654591, 41.761654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673065, 30.623693, 41.680729>,  <38.907372, 30.605154, 41.632172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673065, 30.623693, 41.680729>,  <38.282558, 30.654591, 41.761654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673065, 30.623693, 41.680729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135168, 0.512553, -0.847950,
		0.169196, 0.855174, 0.489948,
		0.976269, -0.077245, -0.202314,
		38.965946, 30.600519, 41.620033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462383, 31.302856, 41.619125>,  <38.282558, 30.654591, 41.761654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462383, 31.302856, 41.619125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787579, 31.122473, 41.471783>,  <38.982697, 31.014242, 41.383377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787579, 31.122473, 41.471783>,  <38.462383, 31.302856, 41.619125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787579, 31.122473, 41.471783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009791, 0.621929, -0.783012,
		0.582198, 0.640186, 0.501206,
		0.812988, -0.450961, -0.368354,
		39.031475, 30.987185, 41.361275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830757, 31.810677, 41.235378>,  <38.462383, 31.302856, 41.619125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830757, 31.810677, 41.235378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000530, 31.475941, 41.097073>,  <39.102394, 31.275099, 41.014088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000530, 31.475941, 41.097073>,  <38.830757, 31.810677, 41.235378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000530, 31.475941, 41.097073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180823, 0.452514, -0.873232,
		0.887221, 0.308104, 0.343381,
		0.424431, -0.836841, -0.345767,
		39.127861, 31.224888, 40.993343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503265, 31.980618, 40.977982>,  <38.830757, 31.810677, 41.235378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503265, 31.980618, 40.977982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375401, 31.648344, 40.795650>,  <39.298683, 31.448980, 40.686253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375401, 31.648344, 40.795650>,  <39.503265, 31.980618, 40.977982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375401, 31.648344, 40.795650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275473, 0.378816, -0.883523,
		0.906604, -0.407997, 0.107738,
		-0.319661, -0.830685, -0.455828,
		39.279503, 31.399139, 40.658901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062904, 31.873131, 40.552528>,  <39.503265, 31.980618, 40.977982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062904, 31.873131, 40.552528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750381, 31.682074, 40.391823>,  <39.562866, 31.567438, 40.295399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750381, 31.682074, 40.391823>,  <40.062904, 31.873131, 40.552528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750381, 31.682074, 40.391823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351231, 0.195637, -0.915621,
		0.515943, -0.856493, 0.014911,
		-0.781307, -0.477646, -0.401765,
		39.515991, 31.538780, 40.271294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354977, 31.458761, 39.971943>,  <40.062904, 31.873131, 40.552528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354977, 31.458761, 39.971943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965195, 31.521069, 39.907238>,  <39.731323, 31.558453, 39.868416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.965195, 31.521069, 39.907238>,  <40.354977, 31.458761, 39.971943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965195, 31.521069, 39.907238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215360, 0.444015, -0.869753,
		-0.063653, -0.882376, -0.466221,
		-0.974458, 0.155768, -0.161765,
		39.672855, 31.567799, 39.858707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318851, 31.326233, 39.254467>,  <40.354977, 31.458761, 39.971943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318851, 31.326233, 39.254467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980991, 31.513741, 39.357872>,  <39.778275, 31.626245, 39.419914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.980991, 31.513741, 39.357872>,  <40.318851, 31.326233, 39.254467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980991, 31.513741, 39.357872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036576, 0.431241, -0.901495,
		-0.534072, -0.770901, -0.347101,
		-0.844647, 0.468767, 0.258510,
		39.727596, 31.654371, 39.435425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873581, 31.329464, 38.741459>,  <40.318851, 31.326233, 39.254467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873581, 31.329464, 38.741459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759434, 31.679033, 38.898849>,  <39.690945, 31.888775, 38.993286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759434, 31.679033, 38.898849>,  <39.873581, 31.329464, 38.741459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759434, 31.679033, 38.898849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080202, 0.430886, -0.898835,
		-0.955057, -0.224939, -0.193051,
		-0.285366, 0.873922, 0.393481,
		39.673824, 31.941210, 39.016895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261787, 31.681286, 38.293076>,  <39.873581, 31.329464, 38.741459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261787, 31.681286, 38.293076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380058, 31.993729, 38.513054>,  <39.451023, 32.181194, 38.645042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380058, 31.993729, 38.513054>,  <39.261787, 31.681286, 38.293076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380058, 31.993729, 38.513054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007682, 0.577616, -0.816272,
		-0.955256, 0.237131, 0.176791,
		0.295681, 0.781107, 0.549949,
		39.468761, 32.228062, 38.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091080, 32.172085, 37.809467>,  <39.261787, 31.681286, 38.293076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091080, 32.172085, 37.809467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238163, 32.373455, 38.122223>,  <39.326412, 32.494278, 38.309875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.238163, 32.373455, 38.122223>,  <39.091080, 32.172085, 37.809467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238163, 32.373455, 38.122223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216507, 0.864035, -0.454497,
		-0.904385, -0.002160, 0.426712,
		0.367712, 0.503427, 0.781888,
		39.348476, 32.524483, 38.356789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704102, 32.795204, 37.970196>,  <39.091080, 32.172085, 37.809467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704102, 32.795204, 37.970196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080128, 32.867947, 38.085579>,  <39.305744, 32.911591, 38.154808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080128, 32.867947, 38.085579>,  <38.704102, 32.795204, 37.970196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080128, 32.867947, 38.085579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018509, 0.817469, -0.575676,
		-0.340495, 0.546511, 0.765107,
		0.940064, 0.181854, 0.288459,
		39.362148, 32.922504, 38.172115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797626, 33.554409, 38.314201>,  <38.704102, 32.795204, 37.970196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797626, 33.554409, 38.314201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118637, 33.395275, 38.136356>,  <39.311245, 33.299793, 38.029648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118637, 33.395275, 38.136356>,  <38.797626, 33.554409, 38.314201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118637, 33.395275, 38.136356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047016, 0.700732, -0.711874,
		0.594762, 0.592201, 0.543651,
		0.802526, -0.397835, -0.444612,
		39.359394, 33.275925, 38.002972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156956, 34.115551, 38.071396>,  <38.797626, 33.554409, 38.314201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156956, 34.115551, 38.071396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325108, 33.805004, 37.883553>,  <39.425999, 33.618675, 37.770847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325108, 33.805004, 37.883553>,  <39.156956, 34.115551, 38.071396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325108, 33.805004, 37.883553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118897, 0.560231, -0.819759,
		0.899525, 0.288774, 0.327817,
		0.420379, -0.776370, -0.469608,
		39.451221, 33.572094, 37.742672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625317, 34.354744, 37.805447>,  <39.156956, 34.115551, 38.071396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625317, 34.354744, 37.805447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580311, 34.051289, 37.548756>,  <39.553307, 33.869217, 37.394741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.580311, 34.051289, 37.548756>,  <39.625317, 34.354744, 37.805447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580311, 34.051289, 37.548756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037878, 0.648629, -0.760161,
		0.992928, -0.061219, -0.101713,
		-0.112510, -0.758638, -0.641724,
		39.546558, 33.823696, 37.356239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028431, 34.434875, 37.212666>,  <39.625317, 34.354744, 37.805447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028431, 34.434875, 37.212666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780052, 34.166370, 37.050762>,  <39.631027, 34.005268, 36.953621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.780052, 34.166370, 37.050762>,  <40.028431, 34.434875, 37.212666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780052, 34.166370, 37.050762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023246, 0.500374, -0.865497,
		0.783511, -0.546834, -0.295099,
		-0.620943, -0.671266, -0.404760,
		39.593769, 33.964989, 36.929333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264820, 34.280270, 36.586067>,  <40.028431, 34.434875, 37.212666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264820, 34.280270, 36.586067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900360, 34.120598, 36.545143>,  <39.681686, 34.024796, 36.520588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900360, 34.120598, 36.545143>,  <40.264820, 34.280270, 36.586067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900360, 34.120598, 36.545143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048125, 0.349644, -0.935646,
		0.409264, -0.847586, -0.337787,
		-0.911146, -0.399182, -0.102307,
		39.627014, 34.000843, 36.514450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358673, 33.857002, 36.051079>,  <40.264820, 34.280270, 36.586067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.358673, 33.857002, 36.051079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967361, 33.937309, 36.071709>,  <39.732574, 33.985493, 36.084087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967361, 33.937309, 36.071709>,  <40.358673, 33.857002, 36.051079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967361, 33.937309, 36.071709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025028, 0.361390, -0.932079,
		-0.205768, -0.910544, -0.358565,
		-0.978281, 0.200767, 0.051573,
		39.673878, 33.997540, 36.087181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217972, 33.670879, 35.389755>,  <40.358673, 33.857002, 36.051079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217972, 33.670879, 35.389755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903408, 33.889339, 35.505192>,  <39.714672, 34.020416, 35.574455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.903408, 33.889339, 35.505192>,  <40.217972, 33.670879, 35.389755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903408, 33.889339, 35.505192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110539, 0.335227, -0.935630,
		-0.607741, -0.767684, -0.203253,
		-0.786404, 0.546154, 0.288590,
		39.667488, 34.053185, 35.591770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963959, 33.382706, 35.435593>,  <40.217972, 33.670879, 35.389755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963959, 33.382706, 35.435593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345108, 33.261433, 35.431183>,  <41.573795, 33.188667, 35.428539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345108, 33.261433, 35.431183>,  <40.963959, 33.382706, 35.435593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345108, 33.261433, 35.431183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131748, 0.380800, 0.915223,
		-0.273282, -0.873540, 0.402796,
		0.952869, -0.303182, -0.011021,
		41.630970, 33.170479, 35.427876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995659, 33.189590, 36.163036>,  <40.963959, 33.382706, 35.435593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995659, 33.189590, 36.163036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337204, 33.276035, 35.973629>,  <41.542130, 33.327904, 35.859985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337204, 33.276035, 35.973629>,  <40.995659, 33.189590, 36.163036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337204, 33.276035, 35.973629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377329, 0.369632, 0.849114,
		0.358517, -0.903700, 0.234076,
		0.853867, 0.216099, -0.473511,
		41.593361, 33.340870, 35.831573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569447, 32.927296, 36.571785>,  <40.995659, 33.189590, 36.163036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569447, 32.927296, 36.571785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667320, 33.251419, 36.358795>,  <41.726044, 33.445892, 36.230999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667320, 33.251419, 36.358795>,  <41.569447, 32.927296, 36.571785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667320, 33.251419, 36.358795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297707, 0.459859, 0.836601,
		0.922768, -0.363225, -0.128715,
		0.244683, 0.810307, -0.532477,
		41.740726, 33.494511, 36.199051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390682, 33.162174, 36.487659>,  <41.569447, 32.927296, 36.571785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390682, 33.162174, 36.487659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113632, 33.450680, 36.484772>,  <41.947403, 33.623783, 36.483040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113632, 33.450680, 36.484772>,  <42.390682, 33.162174, 36.487659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113632, 33.450680, 36.484772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440327, 0.430722, 0.787776,
		0.571302, 0.542455, -0.615920,
		-0.692623, 0.721263, -0.007215,
		41.905846, 33.667057, 36.482609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617443, 33.923790, 36.310001>,  <42.390682, 33.162174, 36.487659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617443, 33.923790, 36.310001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341209, 33.845768, 36.588581>,  <42.175468, 33.798954, 36.755730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341209, 33.845768, 36.588581>,  <42.617443, 33.923790, 36.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341209, 33.845768, 36.588581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611426, 0.356917, 0.706235,
		-0.386328, 0.913545, -0.127223,
		-0.690586, -0.195051, 0.696452,
		42.134033, 33.787254, 36.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397068, 34.510433, 36.682835>,  <42.617443, 33.923790, 36.310001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397068, 34.510433, 36.682835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436314, 34.167789, 36.885456>,  <42.459862, 33.962204, 37.007030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.436314, 34.167789, 36.885456>,  <42.397068, 34.510433, 36.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.436314, 34.167789, 36.885456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551616, 0.470470, 0.688750,
		-0.828308, 0.211849, 0.518678,
		0.098111, -0.856608, 0.506554,
		42.465748, 33.910809, 37.037422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114628, 34.509899, 37.445507>,  <42.397068, 34.510433, 36.682835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114628, 34.509899, 37.445507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445267, 34.305191, 37.351837>,  <42.643650, 34.182365, 37.295635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445267, 34.305191, 37.351837>,  <42.114628, 34.509899, 37.445507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445267, 34.305191, 37.351837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518132, 0.529538, 0.671660,
		-0.219731, -0.676523, 0.702876,
		0.826593, -0.511768, -0.234173,
		42.693245, 34.151661, 37.281586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357323, 34.134815, 37.959217>,  <42.114628, 34.509899, 37.445507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357323, 34.134815, 37.959217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695396, 34.197788, 37.754913>,  <42.898243, 34.235573, 37.632332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.695396, 34.197788, 37.754913>,  <42.357323, 34.134815, 37.959217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695396, 34.197788, 37.754913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363697, 0.530847, 0.765458,
		0.391638, -0.832717, 0.391410,
		0.845189, 0.157428, -0.510756,
		42.948952, 34.245018, 37.601685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911190, 33.820480, 38.347759>,  <42.357323, 34.134815, 37.959217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911190, 33.820480, 38.347759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025791, 34.128002, 38.119072>,  <43.094551, 34.312515, 37.981861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025791, 34.128002, 38.119072>,  <42.911190, 33.820480, 38.347759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025791, 34.128002, 38.119072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366298, 0.463498, 0.806843,
		0.885293, -0.440578, -0.148819,
		0.286500, 0.768805, -0.571714,
		43.111740, 34.358643, 37.947559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573872, 33.974567, 38.571957>,  <42.911190, 33.820480, 38.347759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573872, 33.974567, 38.571957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444546, 34.307041, 38.391029>,  <43.366951, 34.506527, 38.282475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444546, 34.307041, 38.391029>,  <43.573872, 33.974567, 38.571957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444546, 34.307041, 38.391029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435015, 0.555042, 0.709007,
		0.840374, 0.032470, -0.541034,
		-0.323318, 0.831189, -0.452318,
		43.347549, 34.556396, 38.255333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.185078, 34.607590, 38.606777>,  <43.573872, 33.974567, 38.571957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.185078, 34.607590, 38.606777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832062, 34.783749, 38.540840>,  <43.620251, 34.889442, 38.501278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.832062, 34.783749, 38.540840>,  <44.185078, 34.607590, 38.606777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.832062, 34.783749, 38.540840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272715, 0.764928, 0.583534,
		0.383079, 0.470037, -0.795183,
		-0.882540, 0.440398, -0.164842,
		43.567299, 34.915867, 38.491386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.317047, 35.289246, 38.557301>,  <44.185078, 34.607590, 38.606777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.317047, 35.289246, 38.557301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925781, 35.290424, 38.640427>,  <43.691021, 35.291134, 38.690304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.925781, 35.290424, 38.640427>,  <44.317047, 35.289246, 38.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925781, 35.290424, 38.640427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139518, 0.750456, 0.646027,
		-0.154053, 0.660914, -0.734480,
		-0.978163, 0.002951, 0.207820,
		43.632332, 35.291309, 38.702774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137131, 36.010693, 38.567993>,  <44.317047, 35.289246, 38.557301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137131, 36.010693, 38.567993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842014, 35.831852, 38.770287>,  <43.664944, 35.724548, 38.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842014, 35.831852, 38.770287>,  <44.137131, 36.010693, 38.567993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842014, 35.831852, 38.770287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095123, 0.672864, 0.733624,
		-0.668296, 0.589367, -0.453902,
		-0.737789, -0.447101, 0.505735,
		43.620678, 35.697723, 38.922009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530937, 36.615101, 38.727623>,  <44.137131, 36.010693, 38.567993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530937, 36.615101, 38.727623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518696, 36.309296, 38.985176>,  <43.511353, 36.125813, 39.139706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518696, 36.309296, 38.985176>,  <43.530937, 36.615101, 38.727623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518696, 36.309296, 38.985176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001840, 0.644224, 0.764835,
		-0.999530, 0.022220, -0.021120,
		-0.030600, -0.764514, 0.643880,
		43.509514, 36.079941, 39.178341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192219, 36.948124, 39.200619>,  <43.530937, 36.615101, 38.727623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192219, 36.948124, 39.200619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310120, 36.617374, 39.392204>,  <43.380859, 36.418926, 39.507156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310120, 36.617374, 39.392204>,  <43.192219, 36.948124, 39.200619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310120, 36.617374, 39.392204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146207, 0.456302, 0.877731,
		-0.944322, -0.328740, 0.013601,
		0.294751, -0.826873, 0.478960,
		43.398544, 36.369312, 39.535892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665588, 36.789234, 39.798027>,  <43.192219, 36.948124, 39.200619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665588, 36.789234, 39.798027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015835, 36.612961, 39.877110>,  <43.225983, 36.507195, 39.924561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015835, 36.612961, 39.877110>,  <42.665588, 36.789234, 39.798027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015835, 36.612961, 39.877110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049061, 0.326062, 0.944074,
		-0.480506, -0.836349, 0.263885,
		0.875618, -0.440686, 0.197707,
		43.278519, 36.480755, 39.936420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577621, 36.309174, 40.354195>,  <42.665588, 36.789234, 39.798027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577621, 36.309174, 40.354195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957912, 36.432938, 40.346432>,  <43.186089, 36.507198, 40.341774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.957912, 36.432938, 40.346432>,  <42.577621, 36.309174, 40.354195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957912, 36.432938, 40.346432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022090, 0.130038, 0.991263,
		0.309234, -0.941994, 0.130466,
		0.950730, 0.309414, -0.019404,
		43.243130, 36.525761, 40.340611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.929443, 35.914814, 40.862164>,  <42.577621, 36.309174, 40.354195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.929443, 35.914814, 40.862164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185024, 36.210075, 40.775570>,  <43.338371, 36.387234, 40.723614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.185024, 36.210075, 40.775570>,  <42.929443, 35.914814, 40.862164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.185024, 36.210075, 40.775570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214888, 0.098941, 0.971614,
		0.738622, -0.667336, -0.095402,
		0.638953, 0.738156, -0.216482,
		43.376709, 36.431522, 40.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487926, 35.750515, 41.205372>,  <42.929443, 35.914814, 40.862164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487926, 35.750515, 41.205372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497982, 36.148239, 41.163952>,  <43.504013, 36.386871, 41.139099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497982, 36.148239, 41.163952>,  <43.487926, 35.750515, 41.205372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497982, 36.148239, 41.163952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221360, 0.095477, 0.970507,
		0.974868, -0.047315, -0.217700,
		0.025134, 0.994306, -0.103552,
		43.505524, 36.446529, 41.132885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117607, 35.926472, 41.548843>,  <43.487926, 35.750515, 41.205372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117607, 35.926472, 41.548843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911045, 36.268143, 41.524525>,  <43.787106, 36.473145, 41.509933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911045, 36.268143, 41.524525>,  <44.117607, 35.926472, 41.548843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911045, 36.268143, 41.524525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245939, 0.215944, 0.944924,
		0.820266, 0.473015, -0.321592,
		-0.516409, 0.854181, -0.060798,
		43.756123, 36.524399, 41.506287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372143, 36.280682, 42.035236>,  <44.117607, 35.926472, 41.548843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372143, 36.280682, 42.035236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078556, 36.540150, 41.954723>,  <43.902405, 36.695831, 41.906418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078556, 36.540150, 41.954723>,  <44.372143, 36.280682, 42.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078556, 36.540150, 41.954723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215492, 0.503457, 0.836717,
		0.644090, 0.570751, -0.509305,
		-0.733970, 0.648672, -0.201279,
		43.858364, 36.734753, 41.894341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693928, 36.893211, 42.309647>,  <44.372143, 36.280682, 42.035236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693928, 36.893211, 42.309647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294918, 36.911522, 42.288300>,  <44.055511, 36.922508, 42.275490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294918, 36.911522, 42.288300>,  <44.693928, 36.893211, 42.309647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294918, 36.911522, 42.288300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014832, 0.604931, 0.796139,
		0.068728, 0.794961, -0.602756,
		-0.997525, 0.045777, -0.053366,
		43.995659, 36.925255, 42.272289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463047, 37.576397, 42.261227>,  <44.693928, 36.893211, 42.309647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463047, 37.576397, 42.261227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156101, 37.396366, 42.443909>,  <43.971935, 37.288345, 42.553516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.156101, 37.396366, 42.443909>,  <44.463047, 37.576397, 42.261227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.156101, 37.396366, 42.443909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066479, 0.764260, 0.641473,
		-0.637756, 0.461882, -0.616386,
		-0.767364, -0.450080, 0.456707,
		43.925892, 37.261341, 42.580921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989353, 38.145786, 42.420952>,  <44.463047, 37.576397, 42.261227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989353, 38.145786, 42.420952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885330, 37.838081, 42.654396>,  <43.822918, 37.653458, 42.794464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.885330, 37.838081, 42.654396>,  <43.989353, 38.145786, 42.420952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.885330, 37.838081, 42.654396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047745, 0.593427, 0.803470,
		-0.964412, 0.236812, -0.117595,
		-0.260055, -0.769262, 0.583615,
		43.807312, 37.607304, 42.829479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330563, 38.305893, 42.516811>,  <43.989353, 38.145786, 42.420952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330563, 38.305893, 42.516811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480782, 38.087902, 42.816669>,  <43.570911, 37.957108, 42.996582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480782, 38.087902, 42.816669>,  <43.330563, 38.305893, 42.516811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480782, 38.087902, 42.816669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349676, 0.665753, 0.659166,
		-0.858308, -0.509679, 0.059455,
		0.375546, -0.544978, 0.749643,
		43.593445, 37.924408, 43.041561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908169, 38.509644, 43.095936>,  <43.330563, 38.305893, 42.516811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908169, 38.509644, 43.095936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200035, 38.307865, 43.280598>,  <43.375153, 38.186798, 43.391396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.200035, 38.307865, 43.280598>,  <42.908169, 38.509644, 43.095936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200035, 38.307865, 43.280598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212579, 0.474337, 0.854292,
		-0.649925, -0.721484, 0.238872,
		0.729663, -0.504446, 0.461656,
		43.418934, 38.156532, 43.419094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624577, 38.336479, 43.772728>,  <42.908169, 38.509644, 43.095936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624577, 38.336479, 43.772728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022072, 38.315487, 43.812176>,  <43.260571, 38.302891, 43.835846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022072, 38.315487, 43.812176>,  <42.624577, 38.336479, 43.772728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022072, 38.315487, 43.812176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064414, 0.452125, 0.889626,
		-0.091276, -0.890410, 0.445914,
		0.993740, -0.052478, 0.098623,
		43.320194, 38.299744, 43.841763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728802, 38.055443, 44.403774>,  <42.624577, 38.336479, 43.772728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728802, 38.055443, 44.403774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080513, 38.226734, 44.320362>,  <43.291542, 38.329510, 44.270313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080513, 38.226734, 44.320362>,  <42.728802, 38.055443, 44.403774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080513, 38.226734, 44.320362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096459, 0.588841, 0.802473,
		0.466431, -0.685486, 0.559063,
		0.879283, 0.428225, -0.208532,
		43.344299, 38.355202, 44.257801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942768, 38.164261, 45.087475>,  <42.728802, 38.055443, 44.403774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942768, 38.164261, 45.087475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141258, 38.440578, 44.877117>,  <43.260353, 38.606369, 44.750904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.141258, 38.440578, 44.877117>,  <42.942768, 38.164261, 45.087475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141258, 38.440578, 44.877117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035402, 0.621328, 0.782750,
		0.867474, -0.369799, 0.332772,
		0.496221, 0.690796, -0.525895,
		43.290123, 38.647816, 44.719349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519402, 38.345211, 45.447247>,  <42.942768, 38.164261, 45.087475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519402, 38.345211, 45.447247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403893, 38.653561, 45.220135>,  <43.334587, 38.838570, 45.083866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.403893, 38.653561, 45.220135>,  <43.519402, 38.345211, 45.447247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.403893, 38.653561, 45.220135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311762, 0.485007, 0.817051,
		0.905217, 0.412951, 0.100273,
		-0.288769, 0.770870, -0.567779,
		43.317261, 38.884823, 45.049801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885651, 39.092247, 45.593517>,  <43.519402, 38.345211, 45.447247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885651, 39.092247, 45.593517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525009, 39.134472, 45.425724>,  <43.308624, 39.159809, 45.325050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525009, 39.134472, 45.425724>,  <43.885651, 39.092247, 45.593517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525009, 39.134472, 45.425724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293571, 0.562888, 0.772641,
		0.317683, 0.819764, -0.476513,
		-0.901606, 0.105564, -0.419479,
		43.254528, 39.166142, 45.299881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271675, 39.241444, 46.245018>,  <43.885651, 39.092247, 45.593517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271675, 39.241444, 46.245018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371681, 39.384178, 45.884983>,  <44.431686, 39.469818, 45.668961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371681, 39.384178, 45.884983>,  <44.271675, 39.241444, 46.245018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371681, 39.384178, 45.884983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857717, -0.512937, 0.034896,
		-0.449237, -0.780746, -0.434306,
		0.250016, 0.356835, -0.900089,
		44.446686, 39.491230, 45.614956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.630478, 38.650703, 45.916321>,  <44.271675, 39.241444, 46.245018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.630478, 38.650703, 45.916321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740444, 38.999504, 45.754314>,  <44.806423, 39.208782, 45.657112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740444, 38.999504, 45.754314>,  <44.630478, 38.650703, 45.916321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740444, 38.999504, 45.754314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936870, -0.337631, -0.090990,
		-0.216088, -0.354431, -0.909772,
		0.274918, 0.872000, -0.405014,
		44.822918, 39.261105, 45.632809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.311111, 38.261272, 45.839447>,  <44.630478, 38.650703, 45.916321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.311111, 38.261272, 45.839447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635536, 38.339390, 46.060005>,  <45.830193, 38.386261, 46.192341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635536, 38.339390, 46.060005>,  <45.311111, 38.261272, 45.839447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635536, 38.339390, 46.060005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461703, -0.365064, 0.808429,
		0.359179, -0.910268, -0.205921,
		0.811062, 0.195297, 0.551397,
		45.878853, 38.397980, 46.225426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.770729, 37.587109, 45.590027>,  <45.311111, 38.261272, 45.839447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.770729, 37.587109, 45.590027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122669, 37.475456, 45.743885>,  <46.333832, 37.408466, 45.836201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.122669, 37.475456, 45.743885>,  <45.770729, 37.587109, 45.590027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122669, 37.475456, 45.743885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405123, 0.017343, -0.914098,
		0.248480, 0.960097, 0.128341,
		0.879848, -0.279129, 0.384648,
		46.386623, 37.391716, 45.859280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336056, 38.087257, 45.481052>,  <45.770729, 37.587109, 45.590027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336056, 38.087257, 45.481052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475368, 37.713940, 45.446037>,  <46.558956, 37.489948, 45.425030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475368, 37.713940, 45.446037>,  <46.336056, 38.087257, 45.481052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475368, 37.713940, 45.446037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304161, 0.200848, -0.931207,
		0.886670, 0.297700, 0.353824,
		0.348285, -0.933292, -0.087538,
		46.579853, 37.433952, 45.419777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061409, 38.131100, 45.113209>,  <46.336056, 38.087257, 45.481052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061409, 38.131100, 45.113209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895203, 37.770435, 45.065273>,  <46.795479, 37.554039, 45.036510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.895203, 37.770435, 45.065273>,  <47.061409, 38.131100, 45.113209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895203, 37.770435, 45.065273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124292, 0.074233, -0.989465,
		0.901054, -0.426032, 0.081223,
		-0.415515, -0.901657, -0.119840,
		46.770550, 37.499939, 45.029320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.486149, 37.756142, 44.592274>,  <47.061409, 38.131100, 45.113209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.486149, 37.756142, 44.592274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123535, 37.588417, 44.611732>,  <46.905968, 37.487782, 44.623409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123535, 37.588417, 44.611732>,  <47.486149, 37.756142, 44.592274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123535, 37.588417, 44.611732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019845, -0.157459, -0.987326,
		0.421656, -0.894084, 0.151064,
		-0.906539, -0.419310, 0.048651,
		46.851574, 37.462624, 44.626328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.596470, 37.151112, 44.416088>,  <47.486149, 37.756142, 44.592274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.596470, 37.151112, 44.416088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229637, 37.275818, 44.316681>,  <47.009537, 37.350643, 44.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.229637, 37.275818, 44.316681>,  <47.596470, 37.151112, 44.416088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.229637, 37.275818, 44.316681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207491, -0.159062, -0.965219,
		-0.340456, -0.936749, 0.081183,
		-0.917081, 0.311770, -0.248521,
		46.954514, 37.369347, 44.242126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.343964, 36.634987, 44.083027>,  <47.596470, 37.151112, 44.416088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.343964, 36.634987, 44.083027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125675, 36.945667, 43.957222>,  <46.994701, 37.132076, 43.881737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.125675, 36.945667, 43.957222>,  <47.343964, 36.634987, 44.083027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.125675, 36.945667, 43.957222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137950, -0.286939, -0.947964,
		-0.826532, -0.560714, 0.049444,
		-0.545724, 0.776702, -0.314515,
		46.961960, 37.178677, 43.862869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.083973, 36.428516, 43.516003>,  <47.343964, 36.634987, 44.083027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.083973, 36.428516, 43.516003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011765, 36.817101, 43.454460>,  <46.968437, 37.050251, 43.417534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.011765, 36.817101, 43.454460>,  <47.083973, 36.428516, 43.516003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.011765, 36.817101, 43.454460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060409, -0.167086, -0.984090,
		-0.981714, -0.168357, 0.088848,
		-0.180523, 0.971462, -0.153860,
		46.957607, 37.108540, 43.408302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.506123, 36.475307, 43.075367>,  <47.083973, 36.428516, 43.516003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.506123, 36.475307, 43.075367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733364, 36.799221, 43.016712>,  <46.869709, 36.993568, 42.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.733364, 36.799221, 43.016712>,  <46.506123, 36.475307, 43.075367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.733364, 36.799221, 43.016712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146255, -0.075999, -0.986323,
		-0.809854, 0.581784, 0.075260,
		0.568108, 0.809785, -0.146637,
		46.903797, 37.042156, 42.972721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167046, 36.793720, 42.579739>,  <46.506123, 36.475307, 43.075367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167046, 36.793720, 42.579739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540901, 36.935867, 42.584793>,  <46.765217, 37.021156, 42.587826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.540901, 36.935867, 42.584793>,  <46.167046, 36.793720, 42.579739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.540901, 36.935867, 42.584793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076438, -0.166088, -0.983144,
		-0.347275, 0.919854, -0.182396,
		0.934643, 0.355364, 0.012634,
		46.821293, 37.042477, 42.588585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128475, 37.318600, 42.064526>,  <46.167046, 36.793720, 42.579739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128475, 37.318600, 42.064526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514683, 37.230976, 42.120792>,  <46.746407, 37.178402, 42.154552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514683, 37.230976, 42.120792>,  <46.128475, 37.318600, 42.064526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514683, 37.230976, 42.120792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143580, -0.002667, -0.989635,
		0.217160, 0.975709, 0.028877,
		0.965519, -0.219055, 0.140672,
		46.804337, 37.165260, 42.162994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545769, 37.693050, 41.564220>,  <46.128475, 37.318600, 42.064526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545769, 37.693050, 41.564220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781315, 37.396641, 41.693291>,  <46.922642, 37.218796, 41.770733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781315, 37.396641, 41.693291>,  <46.545769, 37.693050, 41.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781315, 37.396641, 41.693291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130175, -0.307067, -0.942743,
		0.797679, 0.597154, -0.084359,
		0.588866, -0.741024, 0.322675,
		46.957973, 37.174332, 41.790092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.131401, 37.635445, 41.031677>,  <46.545769, 37.693050, 41.564220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.131401, 37.635445, 41.031677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176086, 37.303978, 41.251068>,  <47.202896, 37.105099, 41.382702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.176086, 37.303978, 41.251068>,  <47.131401, 37.635445, 41.031677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.176086, 37.303978, 41.251068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005183, -0.552411, -0.833556,
		0.993727, 0.090277, -0.066006,
		0.111713, -0.828669, 0.548478,
		47.209599, 37.055378, 41.415611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.686981, 37.302692, 40.689861>,  <47.131401, 37.635445, 41.031677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.686981, 37.302692, 40.689861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446156, 37.050011, 40.885197>,  <47.301659, 36.898403, 41.002396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446156, 37.050011, 40.885197>,  <47.686981, 37.302692, 40.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446156, 37.050011, 40.885197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104204, -0.544210, -0.832453,
		0.791618, -0.552077, 0.261824,
		-0.602065, -0.631702, 0.488335,
		47.265537, 36.860500, 41.031696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.946869, 36.520454, 40.509357>,  <47.686981, 37.302692, 40.689861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.946869, 36.520454, 40.509357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560757, 36.536270, 40.612644>,  <47.329090, 36.545757, 40.674618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.560757, 36.536270, 40.612644>,  <47.946869, 36.520454, 40.509357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.560757, 36.536270, 40.612644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236047, -0.555456, -0.797340,
		0.111905, -0.830606, 0.545501,
		-0.965277, 0.039538, 0.258220,
		47.271175, 36.548130, 40.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732533, 35.913078, 40.168434>,  <47.946869, 36.520454, 40.509357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732533, 35.913078, 40.168434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399361, 36.102116, 40.283592>,  <47.199459, 36.215538, 40.352688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.399361, 36.102116, 40.283592>,  <47.732533, 35.913078, 40.168434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.399361, 36.102116, 40.283592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511387, -0.458555, -0.726781,
		-0.211452, -0.752586, 0.623621,
		-0.832929, 0.472591, 0.287900,
		47.149483, 36.243893, 40.369961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.135441, 35.357880, 40.265488>,  <47.732533, 35.913078, 40.168434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.135441, 35.357880, 40.265488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938812, 35.703457, 40.221733>,  <46.820835, 35.910801, 40.195480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938812, 35.703457, 40.221733>,  <47.135441, 35.357880, 40.265488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938812, 35.703457, 40.221733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680095, -0.459315, -0.571402,
		-0.543902, -0.206490, 0.813347,
		-0.491571, 0.863939, -0.109390,
		46.791340, 35.962639, 40.188915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445393, 35.119732, 40.162971>,  <47.135441, 35.357880, 40.265488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445393, 35.119732, 40.162971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419201, 35.504036, 40.055157>,  <46.403488, 35.734619, 39.990467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.419201, 35.504036, 40.055157>,  <46.445393, 35.119732, 40.162971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.419201, 35.504036, 40.055157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779313, -0.217935, -0.587516,
		-0.623205, 0.171588, 0.763003,
		-0.065475, 0.960761, -0.269539,
		46.399559, 35.792263, 39.974297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.720226, 35.202602, 40.067261>,  <46.445393, 35.119732, 40.162971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.720226, 35.202602, 40.067261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909348, 35.497360, 39.873997>,  <46.022820, 35.674213, 39.758038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.909348, 35.497360, 39.873997>,  <45.720226, 35.202602, 40.067261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.909348, 35.497360, 39.873997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640664, -0.088986, -0.762647,
		-0.604984, 0.670128, 0.430027,
		0.472805, 0.736892, -0.483162,
		46.051189, 35.718430, 39.729050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146854, 35.607082, 39.864483>,  <45.720226, 35.202602, 40.067261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146854, 35.607082, 39.864483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456676, 35.694904, 39.627209>,  <45.642570, 35.747597, 39.484844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.456676, 35.694904, 39.627209>,  <45.146854, 35.607082, 39.864483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.456676, 35.694904, 39.627209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564912, -0.181711, -0.804894,
		-0.284505, 0.958529, -0.016717,
		0.774552, 0.219553, -0.593183,
		45.689041, 35.760769, 39.449253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928085, 35.930626, 39.182487>,  <45.146854, 35.607082, 39.864483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928085, 35.930626, 39.182487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302124, 35.825443, 39.087448>,  <45.526546, 35.762333, 39.030422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302124, 35.825443, 39.087448>,  <44.928085, 35.930626, 39.182487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302124, 35.825443, 39.087448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306434, -0.263107, -0.914808,
		0.178042, 0.928239, -0.326609,
		0.935093, -0.262958, -0.237600,
		45.582653, 35.746555, 39.016167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.947800, 36.108009, 38.485210>,  <44.928085, 35.930626, 39.182487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.947800, 36.108009, 38.485210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281345, 35.887299, 38.490990>,  <45.481472, 35.754871, 38.494457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.281345, 35.887299, 38.490990>,  <44.947800, 36.108009, 38.485210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.281345, 35.887299, 38.490990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160226, -0.267022, -0.950277,
		0.528199, 0.790089, -0.311070,
		0.833866, -0.551777, 0.014448,
		45.531506, 35.721764, 38.495323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248714, 36.260715, 37.835003>,  <44.947800, 36.108009, 38.485210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248714, 36.260715, 37.835003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401070, 35.911411, 37.956551>,  <45.492485, 35.701828, 38.029480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.401070, 35.911411, 37.956551>,  <45.248714, 36.260715, 37.835003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.401070, 35.911411, 37.956551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025988, -0.318405, -0.947599,
		0.924254, 0.368829, -0.098584,
		0.380891, -0.873260, 0.303872,
		45.515339, 35.649433, 38.047710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.874973, 36.049297, 37.411774>,  <45.248714, 36.260715, 37.835003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.874973, 36.049297, 37.411774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697750, 35.725456, 37.565788>,  <45.591415, 35.531151, 37.658195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.697750, 35.725456, 37.565788>,  <45.874973, 36.049297, 37.411774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.697750, 35.725456, 37.565788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002199, -0.428506, -0.903536,
		0.896492, -0.401162, 0.188071,
		-0.443054, -0.809599, 0.385035,
		45.564835, 35.482578, 37.681297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128616, 35.532757, 37.050762>,  <45.874973, 36.049297, 37.411774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128616, 35.532757, 37.050762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822861, 35.342304, 37.224659>,  <45.639408, 35.228031, 37.328999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822861, 35.342304, 37.224659>,  <46.128616, 35.532757, 37.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822861, 35.342304, 37.224659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094564, -0.584198, -0.806083,
		0.637780, -0.657274, 0.401531,
		-0.764391, -0.476134, 0.434745,
		45.593544, 35.199463, 37.355083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261589, 34.826542, 36.960213>,  <46.128616, 35.532757, 37.050762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261589, 34.826542, 36.960213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869160, 34.851383, 37.033581>,  <45.633701, 34.866287, 37.077602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869160, 34.851383, 37.033581>,  <46.261589, 34.826542, 36.960213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869160, 34.851383, 37.033581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184799, -0.583361, -0.790911,
		0.057880, -0.809835, 0.583795,
		-0.981070, 0.062107, 0.183422,
		45.574837, 34.870014, 37.088608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670559, 35.010880, 36.329048>,  <46.261589, 34.826542, 36.960213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670559, 35.010880, 36.329048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615005, 35.132469, 35.952049>,  <46.581673, 35.205425, 35.725849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615005, 35.132469, 35.952049>,  <46.670559, 35.010880, 36.329048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615005, 35.132469, 35.952049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814211, -0.506698, -0.283403,
		-0.563712, -0.806755, -0.177130,
		-0.138886, 0.303979, -0.942501,
		46.573341, 35.223663, 35.669300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752743, 34.423874, 35.768780>,  <46.670559, 35.010880, 36.329048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752743, 34.423874, 35.768780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878735, 34.792961, 35.679893>,  <46.954330, 35.014412, 35.626564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878735, 34.792961, 35.679893>,  <46.752743, 34.423874, 35.768780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878735, 34.792961, 35.679893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947702, -0.318470, 0.020923,
		-0.051462, -0.217182, -0.974774,
		0.314980, 0.922718, -0.222213,
		46.973228, 35.069778, 35.613228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166004, 34.468155, 35.205570>,  <46.752743, 34.423874, 35.768780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166004, 34.468155, 35.205570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250355, 34.774254, 35.448856>,  <47.300964, 34.957912, 35.594830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.250355, 34.774254, 35.448856>,  <47.166004, 34.468155, 35.205570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.250355, 34.774254, 35.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976707, -0.190204, -0.099327,
		0.039677, 0.614997, -0.787530,
		0.210877, 0.765245, 0.608219,
		47.313618, 35.003826, 35.631321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.557270, 34.944420, 34.753948>,  <47.166004, 34.468155, 35.205570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.557270, 34.944420, 34.753948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638130, 35.002285, 35.141392>,  <47.686646, 35.037003, 35.373859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638130, 35.002285, 35.141392>,  <47.557270, 34.944420, 34.753948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638130, 35.002285, 35.141392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970633, -0.161298, -0.178480,
		0.130416, 0.976246, -0.173019,
		0.202148, 0.144662, 0.968612,
		47.698776, 35.045685, 35.431976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.107445, 33.768986, 45.049911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755585, 33.787407, 45.239269>,  <37.544468, 33.798458, 45.352882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755585, 33.787407, 45.239269>,  <38.107445, 33.768986, 45.049911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755585, 33.787407, 45.239269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455085, 0.207855, -0.865849,
		-0.138272, -0.977075, -0.161881,
		-0.879647, 0.046053, 0.473393,
		37.491692, 33.801224, 45.381287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722012, 33.364830, 44.548618>,  <38.107445, 33.768986, 45.049911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722012, 33.364830, 44.548618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430634, 33.544533, 44.755516>,  <37.255806, 33.652355, 44.879654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.430634, 33.544533, 44.755516>,  <37.722012, 33.364830, 44.548618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430634, 33.544533, 44.755516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357635, 0.394600, -0.846397,
		-0.584352, -0.801537, -0.126774,
		-0.728444, 0.449255, 0.517243,
		37.212101, 33.679310, 44.910690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034866, 33.199989, 44.220722>,  <37.722012, 33.364830, 44.548618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034866, 33.199989, 44.220722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974117, 33.534115, 44.432072>,  <36.937668, 33.734592, 44.558884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.974117, 33.534115, 44.432072>,  <37.034866, 33.199989, 44.220722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974117, 33.534115, 44.432072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423706, 0.427945, -0.798334,
		-0.892977, -0.345124, 0.288933,
		-0.151877, 0.835316, 0.528376,
		36.928555, 33.784710, 44.590584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340942, 33.338020, 44.182426>,  <37.034866, 33.199989, 44.220722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340942, 33.338020, 44.182426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516666, 33.688816, 44.260296>,  <36.622101, 33.899292, 44.307018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.516666, 33.688816, 44.260296>,  <36.340942, 33.338020, 44.182426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516666, 33.688816, 44.260296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580323, 0.442468, -0.683702,
		-0.685734, 0.187386, 0.703318,
		0.439312, 0.876989, 0.194671,
		36.648460, 33.951912, 44.318699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749081, 33.812355, 44.230511>,  <36.340942, 33.338020, 44.182426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749081, 33.812355, 44.230511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051273, 34.073200, 44.205231>,  <36.232590, 34.229706, 44.190063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.051273, 34.073200, 44.205231>,  <35.749081, 33.812355, 44.230511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051273, 34.073200, 44.205231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536293, 0.560110, -0.631400,
		-0.376344, 0.510907, 0.772877,
		0.755483, 0.652113, -0.063202,
		36.277920, 34.268833, 44.186272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445076, 34.443050, 44.293243>,  <35.749081, 33.812355, 44.230511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445076, 34.443050, 44.293243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796642, 34.504974, 44.112782>,  <36.007584, 34.542130, 44.004505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796642, 34.504974, 44.112782>,  <35.445076, 34.443050, 44.293243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796642, 34.504974, 44.112782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463675, 0.499149, -0.732022,
		0.111870, 0.852575, 0.510491,
		0.878915, 0.154810, -0.451157,
		36.060318, 34.551418, 43.977436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402126, 35.193188, 44.123894>,  <35.445076, 34.443050, 44.293243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402126, 35.193188, 44.123894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677803, 35.021385, 43.890472>,  <35.843208, 34.918304, 43.750420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.677803, 35.021385, 43.890472>,  <35.402126, 35.193188, 44.123894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677803, 35.021385, 43.890472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485867, 0.323534, -0.811948,
		0.537540, 0.843117, 0.014291,
		0.689190, -0.429511, -0.583555,
		35.884560, 34.892532, 43.715405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603458, 35.713085, 43.571152>,  <35.402126, 35.193188, 44.123894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603458, 35.713085, 43.571152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705555, 35.362942, 43.406910>,  <35.766811, 35.152855, 43.308365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705555, 35.362942, 43.406910>,  <35.603458, 35.713085, 43.571152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705555, 35.362942, 43.406910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188459, 0.371489, -0.909109,
		0.948333, 0.309424, -0.070150,
		0.255240, -0.875359, -0.410609,
		35.782127, 35.100334, 43.283726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008633, 35.976303, 42.894527>,  <35.603458, 35.713085, 43.571152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008633, 35.976303, 42.894527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910763, 35.590199, 42.857838>,  <35.852039, 35.358536, 42.835823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910763, 35.590199, 42.857838>,  <36.008633, 35.976303, 42.894527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910763, 35.590199, 42.857838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141814, 0.129204, -0.981425,
		0.959178, -0.227122, -0.168500,
		-0.244674, -0.965257, -0.091721,
		35.837360, 35.300621, 42.830322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.430050, 35.781075, 42.336578>,  <36.008633, 35.976303, 42.894527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.430050, 35.781075, 42.336578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173069, 35.475723, 42.363441>,  <36.018879, 35.292515, 42.379559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.173069, 35.475723, 42.363441>,  <36.430050, 35.781075, 42.336578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173069, 35.475723, 42.363441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054458, -0.132896, -0.989633,
		0.764386, -0.632137, 0.126952,
		-0.642455, -0.763375, 0.067159,
		35.980331, 35.246712, 42.383591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640675, 35.194408, 41.822617>,  <36.430050, 35.781075, 42.336578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640675, 35.194408, 41.822617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246964, 35.197670, 41.893200>,  <36.010738, 35.199627, 41.935551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.246964, 35.197670, 41.893200>,  <36.640675, 35.194408, 41.822617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246964, 35.197670, 41.893200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175486, 0.069228, -0.982045,
		-0.020226, -0.997568, -0.066708,
		-0.984274, 0.008157, 0.176459,
		35.951683, 35.200115, 41.946136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351028, 34.606762, 41.420807>,  <36.640675, 35.194408, 41.822617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351028, 34.606762, 41.420807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081474, 34.893669, 41.491692>,  <35.919743, 35.065811, 41.534222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.081474, 34.893669, 41.491692>,  <36.351028, 34.606762, 41.420807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081474, 34.893669, 41.491692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278616, -0.024564, -0.960088,
		-0.684285, -0.696367, 0.216395,
		-0.673890, 0.717265, 0.177210,
		35.879307, 35.108849, 41.544853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681862, 34.412510, 41.091576>,  <36.351028, 34.606762, 41.420807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681862, 34.412510, 41.091576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619518, 34.803234, 41.150299>,  <35.582111, 35.037666, 41.185532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.619518, 34.803234, 41.150299>,  <35.681862, 34.412510, 41.091576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619518, 34.803234, 41.150299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321591, 0.090346, -0.942559,
		-0.933963, -0.194119, 0.300052,
		-0.155861, 0.976809, 0.146806,
		35.572762, 35.096275, 41.194340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060516, 34.511158, 40.608631>,  <35.681862, 34.412510, 41.091576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060516, 34.511158, 40.608631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182335, 34.871960, 40.731030>,  <35.255424, 35.088440, 40.804470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182335, 34.871960, 40.731030>,  <35.060516, 34.511158, 40.608631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182335, 34.871960, 40.731030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096029, 0.348699, -0.932302,
		-0.947646, 0.254540, 0.192813,
		0.304542, 0.902008, 0.306000,
		35.273697, 35.142563, 40.822830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535561, 34.992847, 40.442165>,  <35.060516, 34.511158, 40.608631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535561, 34.992847, 40.442165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886562, 35.182938, 40.467918>,  <35.097164, 35.296989, 40.483372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886562, 35.182938, 40.467918>,  <34.535561, 34.992847, 40.442165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886562, 35.182938, 40.467918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213588, 0.507485, -0.834769,
		-0.429373, 0.718765, 0.546824,
		0.877507, 0.475222, 0.064381,
		35.149815, 35.325504, 40.487232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329971, 35.730148, 40.375996>,  <34.535561, 34.992847, 40.442165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329971, 35.730148, 40.375996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721706, 35.722893, 40.295433>,  <34.956749, 35.718540, 40.247093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.721706, 35.722893, 40.295433>,  <34.329971, 35.730148, 40.375996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721706, 35.722893, 40.295433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168273, 0.479288, -0.861375,
		0.112156, 0.877470, 0.466334,
		0.979339, -0.018137, -0.201409,
		35.015507, 35.717453, 40.235012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437729, 36.338951, 40.090122>,  <34.329971, 35.730148, 40.375996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437729, 36.338951, 40.090122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753948, 36.122387, 39.975643>,  <34.943680, 35.992447, 39.906956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753948, 36.122387, 39.975643>,  <34.437729, 36.338951, 40.090122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753948, 36.122387, 39.975643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016913, 0.447856, -0.893946,
		0.612168, 0.711546, 0.344894,
		0.790547, -0.541412, -0.286198,
		34.991112, 35.959965, 39.889786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933552, 36.820366, 39.945007>,  <34.437729, 36.338951, 40.090122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933552, 36.820366, 39.945007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027363, 36.487804, 39.743504>,  <35.083649, 36.288269, 39.622601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.027363, 36.487804, 39.743504>,  <34.933552, 36.820366, 39.945007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027363, 36.487804, 39.743504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133662, 0.540866, -0.830420,
		0.962877, 0.127422, 0.237974,
		0.234526, -0.831401, -0.503756,
		35.097721, 36.238384, 39.592377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408367, 37.044823, 39.506481>,  <34.933552, 36.820366, 39.945007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408367, 37.044823, 39.506481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300518, 36.692608, 39.350555>,  <35.235809, 36.481277, 39.257000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.300518, 36.692608, 39.350555>,  <35.408367, 37.044823, 39.506481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300518, 36.692608, 39.350555> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073238, 0.384887, -0.920053,
		0.960178, -0.276615, -0.039284,
		-0.269620, -0.880537, -0.389819,
		35.219631, 36.428448, 39.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939713, 36.937542, 39.022377>,  <35.408367, 37.044823, 39.506481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939713, 36.937542, 39.022377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622787, 36.716591, 38.918751>,  <35.432632, 36.584019, 38.856575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.622787, 36.716591, 38.918751>,  <35.939713, 36.937542, 39.022377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622787, 36.716591, 38.918751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111930, 0.285815, -0.951725,
		0.599762, -0.783060, -0.164626,
		-0.792311, -0.552382, -0.259069,
		35.385094, 36.550877, 38.841030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141529, 36.576233, 38.488773>,  <35.939713, 36.937542, 39.022377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141529, 36.576233, 38.488773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744663, 36.571087, 38.439064>,  <35.506542, 36.568001, 38.409241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744663, 36.571087, 38.439064>,  <36.141529, 36.576233, 38.488773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744663, 36.571087, 38.439064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110830, 0.368471, -0.923009,
		0.057663, -0.929550, -0.364158,
		-0.992166, -0.012864, -0.124269,
		35.447014, 36.567226, 38.401783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940964, 36.234600, 37.818649>,  <36.141529, 36.576233, 38.488773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940964, 36.234600, 37.818649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654716, 36.482082, 37.948318>,  <35.482967, 36.630569, 38.026119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.654716, 36.482082, 37.948318>,  <35.940964, 36.234600, 37.818649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654716, 36.482082, 37.948318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066426, 0.401728, -0.913347,
		-0.695322, -0.675145, -0.246388,
		-0.715622, 0.618703, 0.324178,
		35.440029, 36.667694, 38.045570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670532, 36.226021, 37.002605>,  <35.940964, 36.234600, 37.818649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670532, 36.226021, 37.002605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005131, 36.133694, 36.803810>,  <36.205891, 36.078297, 36.684532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.005131, 36.133694, 36.803810>,  <35.670532, 36.226021, 37.002605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005131, 36.133694, 36.803810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399951, -0.362805, 0.841672,
		-0.374601, -0.902821, -0.211159,
		0.836489, -0.230838, -0.496991,
		36.256081, 36.064449, 36.654713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908241, 35.501499, 37.278091>,  <35.670532, 36.226021, 37.002605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908241, 35.501499, 37.278091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225918, 35.686100, 37.119961>,  <36.416523, 35.796860, 37.025082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225918, 35.686100, 37.119961>,  <35.908241, 35.501499, 37.278091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225918, 35.686100, 37.119961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575138, -0.360873, 0.734157,
		0.196151, -0.810426, -0.552027,
		0.794192, 0.461498, -0.395322,
		36.464176, 35.824551, 37.001366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343445, 35.028667, 37.047695>,  <35.908241, 35.501499, 37.278091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343445, 35.028667, 37.047695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555309, 35.353016, 37.147259>,  <36.682426, 35.547623, 37.206997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555309, 35.353016, 37.147259>,  <36.343445, 35.028667, 37.047695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555309, 35.353016, 37.147259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583731, -0.561368, 0.586621,
		0.615404, -0.165409, -0.770660,
		0.529657, 0.810867, 0.248913,
		36.714207, 35.596275, 37.221931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924442, 34.733932, 37.025547>,  <36.343445, 35.028667, 37.047695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924442, 34.733932, 37.025547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964737, 35.073509, 37.233067>,  <36.988914, 35.277256, 37.357578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.964737, 35.073509, 37.233067>,  <36.924442, 34.733932, 37.025547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964737, 35.073509, 37.233067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679799, -0.439474, 0.587143,
		0.726448, 0.293534, -0.621378,
		0.100733, 0.848941, 0.518799,
		36.994957, 35.328190, 37.388706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680820, 34.844639, 37.205391>,  <36.924442, 34.733932, 37.025547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680820, 34.844639, 37.205391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458294, 35.028152, 37.482529>,  <37.324780, 35.138260, 37.648811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.458294, 35.028152, 37.482529>,  <37.680820, 34.844639, 37.205391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458294, 35.028152, 37.482529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663493, -0.256737, 0.702754,
		0.500291, 0.850649, -0.161573,
		-0.556315, 0.458784, 0.692842,
		37.291401, 35.165787, 37.690380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116764, 35.036652, 37.721718>,  <37.680820, 34.844639, 37.205391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116764, 35.036652, 37.721718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776550, 35.085194, 37.926411>,  <37.572422, 35.114319, 38.049225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.776550, 35.085194, 37.926411>,  <38.116764, 35.036652, 37.721718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776550, 35.085194, 37.926411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514986, -0.005254, 0.857182,
		0.106713, 0.992595, -0.058028,
		-0.850530, 0.121356, 0.511733,
		37.521393, 35.121601, 38.079929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339588, 35.463043, 38.325684>,  <38.116764, 35.036652, 37.721718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339588, 35.463043, 38.325684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983616, 35.310452, 38.425682>,  <37.770031, 35.218899, 38.485680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.983616, 35.310452, 38.425682>,  <38.339588, 35.463043, 38.325684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983616, 35.310452, 38.425682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343741, -0.200722, 0.917362,
		-0.299773, 0.902322, 0.309758,
		-0.889932, -0.381477, 0.249994,
		37.716637, 35.196007, 38.500679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232029, 35.754688, 38.948238>,  <38.339588, 35.463043, 38.325684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232029, 35.754688, 38.948238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981747, 35.443012, 38.933514>,  <37.831577, 35.256004, 38.924679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.981747, 35.443012, 38.933514>,  <38.232029, 35.754688, 38.948238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981747, 35.443012, 38.933514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246883, -0.242578, 0.938192,
		-0.739962, 0.577941, 0.344151,
		-0.625703, -0.779192, -0.036815,
		37.794037, 35.209255, 38.922470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647701, 35.869587, 39.419022>,  <38.232029, 35.754688, 38.948238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647701, 35.869587, 39.419022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691460, 35.474525, 39.374187>,  <37.717716, 35.237488, 39.347286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.691460, 35.474525, 39.374187>,  <37.647701, 35.869587, 39.419022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691460, 35.474525, 39.374187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057962, -0.106235, 0.992650,
		-0.992307, -0.115092, 0.045625,
		0.109399, -0.987658, -0.112089,
		37.724281, 35.178226, 39.340561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293797, 35.592274, 39.972046>,  <37.647701, 35.869587, 39.419022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293797, 35.592274, 39.972046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520195, 35.289337, 39.841763>,  <37.656033, 35.107574, 39.763592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.520195, 35.289337, 39.841763>,  <37.293797, 35.592274, 39.972046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520195, 35.289337, 39.841763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259857, -0.211053, 0.942301,
		-0.782385, -0.617973, 0.077346,
		0.565992, -0.757342, -0.325709,
		37.689991, 35.062134, 39.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113258, 35.049572, 40.335472>,  <37.293797, 35.592274, 39.972046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113258, 35.049572, 40.335472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467636, 34.926666, 40.196510>,  <37.680264, 34.852924, 40.113132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.467636, 34.926666, 40.196510>,  <37.113258, 35.049572, 40.335472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467636, 34.926666, 40.196510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252396, -0.309004, 0.916958,
		-0.389098, -0.900058, -0.196208,
		0.885945, -0.307265, -0.347404,
		37.733421, 34.834488, 40.092289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221386, 34.436840, 40.703697>,  <37.113258, 35.049572, 40.335472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221386, 34.436840, 40.703697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585232, 34.547134, 40.579391>,  <37.803539, 34.613312, 40.504807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585232, 34.547134, 40.579391>,  <37.221386, 34.436840, 40.703697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585232, 34.547134, 40.579391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398225, -0.365437, 0.841352,
		0.118425, -0.889059, -0.442210,
		0.909611, 0.275736, -0.310769,
		37.858116, 34.629856, 40.486160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744404, 33.897076, 40.605915>,  <37.221386, 34.436840, 40.703697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744404, 33.897076, 40.605915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974125, 34.212635, 40.693394>,  <38.111958, 34.401970, 40.745880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974125, 34.212635, 40.693394>,  <37.744404, 33.897076, 40.605915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974125, 34.212635, 40.693394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431546, -0.518747, 0.738018,
		0.695665, -0.329466, -0.638360,
		0.574299, 0.788894, 0.218694,
		38.146416, 34.449303, 40.759003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466579, 33.660210, 40.653114>,  <37.744404, 33.897076, 40.605915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466579, 33.660210, 40.653114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434357, 34.002224, 40.858025>,  <38.415024, 34.207432, 40.980972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.434357, 34.002224, 40.858025>,  <38.466579, 33.660210, 40.653114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434357, 34.002224, 40.858025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396020, -0.444185, 0.803659,
		0.914701, 0.267615, -0.302827,
		-0.080560, 0.855033, 0.512277,
		38.410187, 34.258736, 41.011707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093792, 33.721066, 41.106041>,  <38.466579, 33.660210, 40.653114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093792, 33.721066, 41.106041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876617, 34.017746, 41.263577>,  <38.746311, 34.195755, 41.358097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.876617, 34.017746, 41.263577>,  <39.093792, 33.721066, 41.106041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876617, 34.017746, 41.263577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289747, -0.274728, 0.916827,
		0.788205, 0.611890, -0.065745,
		-0.542936, 0.741697, 0.393835,
		38.713737, 34.240253, 41.381725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547325, 34.290249, 41.499977>,  <39.093792, 33.721066, 41.106041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547325, 34.290249, 41.499977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177925, 34.254349, 41.649155>,  <38.956284, 34.232811, 41.738659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.177925, 34.254349, 41.649155>,  <39.547325, 34.290249, 41.499977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177925, 34.254349, 41.649155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381476, -0.316772, 0.868407,
		0.040201, 0.944246, 0.326777,
		-0.923504, -0.089747, 0.372942,
		38.900875, 34.227425, 41.761036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672791, 34.280716, 42.188370>,  <39.547325, 34.290249, 41.499977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672791, 34.280716, 42.188370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277676, 34.225502, 42.217270>,  <39.040607, 34.192375, 42.234608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.277676, 34.225502, 42.217270>,  <39.672791, 34.280716, 42.188370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277676, 34.225502, 42.217270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118510, -0.364673, 0.923563,
		-0.101135, 0.920847, 0.376578,
		-0.987789, -0.138033, 0.072249,
		38.981339, 34.184093, 42.238945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403328, 34.541031, 42.823322>,  <39.672791, 34.280716, 42.188370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403328, 34.541031, 42.823322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148357, 34.249783, 42.722496>,  <38.995377, 34.075035, 42.661999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.148357, 34.249783, 42.722496>,  <39.403328, 34.541031, 42.823322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148357, 34.249783, 42.722496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148844, -0.437341, 0.886892,
		-0.756002, 0.527805, 0.387147,
		-0.637422, -0.728117, -0.252070,
		38.957130, 34.031349, 42.646873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.883816, 34.476387, 43.438469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816345, 34.135681, 43.240055>,  <38.775864, 33.931259, 43.121006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816345, 34.135681, 43.240055>,  <38.883816, 34.476387, 43.438469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816345, 34.135681, 43.240055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069000, -0.491805, 0.867967,
		-0.983253, 0.180634, 0.024185,
		-0.168679, -0.851763, -0.496032,
		38.765743, 33.880154, 43.091244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283108, 34.096039, 43.718525>,  <38.883816, 34.476387, 43.438469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283108, 34.096039, 43.718525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456596, 33.802521, 43.509361>,  <38.560688, 33.626411, 43.383862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.456596, 33.802521, 43.509361>,  <38.283108, 34.096039, 43.718525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456596, 33.802521, 43.509361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055222, -0.600892, 0.797421,
		-0.899353, -0.316983, -0.301141,
		0.433722, -0.733792, -0.522909,
		38.586712, 33.582382, 43.352489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896999, 33.399834, 43.820099>,  <38.283108, 34.096039, 43.718525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896999, 33.399834, 43.820099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281704, 33.341312, 43.727474>,  <38.512527, 33.306202, 43.671902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.281704, 33.341312, 43.727474>,  <37.896999, 33.399834, 43.820099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281704, 33.341312, 43.727474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102919, -0.590424, 0.800505,
		-0.253831, -0.793723, -0.552787,
		0.961757, -0.146301, -0.231557,
		38.570232, 33.297421, 43.658009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969368, 32.704739, 43.950756>,  <37.896999, 33.399834, 43.820099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969368, 32.704739, 43.950756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347073, 32.836277, 43.944744>,  <38.573696, 32.915199, 43.941135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.347073, 32.836277, 43.944744>,  <37.969368, 32.704739, 43.950756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347073, 32.836277, 43.944744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229159, -0.623850, 0.747193,
		0.236336, -0.708991, -0.664437,
		0.944262, 0.328851, -0.015033,
		38.630352, 32.934933, 43.940235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533932, 32.120895, 44.118225>,  <37.969368, 32.704739, 43.950756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533932, 32.120895, 44.118225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776188, 32.432835, 44.181515>,  <38.921539, 32.619999, 44.219490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.776188, 32.432835, 44.181515>,  <38.533932, 32.120895, 44.118225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776188, 32.432835, 44.181515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475913, -0.514346, 0.713411,
		0.637738, -0.356766, -0.682648,
		0.605638, 0.779850, 0.158228,
		38.957878, 32.666790, 44.228985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090031, 31.866823, 44.326698>,  <38.533932, 32.120895, 44.118225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090031, 31.866823, 44.326698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142384, 32.247017, 44.439449>,  <39.173794, 32.475132, 44.507099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142384, 32.247017, 44.439449>,  <39.090031, 31.866823, 44.326698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142384, 32.247017, 44.439449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562165, -0.305344, 0.768593,
		0.816604, 0.057870, -0.574291,
		0.130878, 0.950482, 0.281878,
		39.181648, 32.532162, 44.524014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842270, 31.993721, 44.474384>,  <39.090031, 31.866823, 44.326698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842270, 31.993721, 44.474384> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658566, 32.277782, 44.687840>,  <39.548344, 32.448219, 44.815910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.658566, 32.277782, 44.687840>,  <39.842270, 31.993721, 44.474384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.658566, 32.277782, 44.687840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613894, -0.180460, 0.768485,
		0.642040, 0.680528, -0.353081,
		-0.459259, 0.710152, 0.533634,
		39.520786, 32.490829, 44.847931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412453, 32.442085, 44.722656>,  <39.842270, 31.993721, 44.474384>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412453, 32.442085, 44.722656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096432, 32.521763, 44.954567>,  <39.906818, 32.569569, 45.093716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096432, 32.521763, 44.954567>,  <40.412453, 32.442085, 44.722656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096432, 32.521763, 44.954567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600025, 0.057401, 0.797919,
		0.125657, 0.978279, -0.164868,
		-0.790051, 0.199190, 0.579779,
		39.859417, 32.581520, 45.128502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.562550, 33.029961, 45.140820>,  <40.412453, 32.442085, 44.722656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.562550, 33.029961, 45.140820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275108, 32.834774, 45.339008>,  <40.102642, 32.717663, 45.457924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275108, 32.834774, 45.339008>,  <40.562550, 33.029961, 45.140820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275108, 32.834774, 45.339008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540329, 0.056745, 0.839538,
		-0.437783, 0.871016, 0.222886,
		-0.718604, -0.487967, 0.495477,
		40.059528, 32.688385, 45.487652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.688618, 33.233776, 45.873215>,  <40.562550, 33.029961, 45.140820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.688618, 33.233776, 45.873215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440037, 32.924198, 45.921886>,  <40.290890, 32.738449, 45.951092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.440037, 32.924198, 45.921886>,  <40.688618, 33.233776, 45.873215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440037, 32.924198, 45.921886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411311, -0.190108, 0.891449,
		-0.666802, 0.604040, 0.436476,
		-0.621449, -0.773947, 0.121684,
		40.253601, 32.692013, 45.958393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353977, 33.294601, 46.585888>,  <40.688618, 33.233776, 45.873215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353977, 33.294601, 46.585888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364513, 32.914402, 46.462048>,  <40.370834, 32.686283, 46.387745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.364513, 32.914402, 46.462048>,  <40.353977, 33.294601, 46.585888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364513, 32.914402, 46.462048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209983, -0.297535, 0.931332,
		-0.977350, -0.089539, 0.191753,
		0.026337, -0.950503, -0.309598,
		40.372414, 32.629250, 46.369167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114700, 32.911118, 47.170704>,  <40.353977, 33.294601, 46.585888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114700, 32.911118, 47.170704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275707, 32.624165, 46.943249>,  <40.372311, 32.451992, 46.806778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.275707, 32.624165, 46.943249>,  <40.114700, 32.911118, 47.170704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275707, 32.624165, 46.943249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061024, -0.598771, 0.798592,
		-0.913375, -0.356150, -0.197240,
		0.402520, -0.717378, -0.568636,
		40.396461, 32.408951, 46.772659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776436, 32.292488, 47.360088>,  <40.114700, 32.911118, 47.170704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776436, 32.292488, 47.360088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142834, 32.205170, 47.225449>,  <40.362671, 32.152779, 47.144665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142834, 32.205170, 47.225449>,  <39.776436, 32.292488, 47.360088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142834, 32.205170, 47.225449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124580, -0.642758, 0.755871,
		-0.381358, -0.734308, -0.561567,
		0.915994, -0.218298, -0.336601,
		40.417633, 32.139679, 47.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901028, 31.637625, 47.513641>,  <39.776436, 32.292488, 47.360088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901028, 31.637625, 47.513641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.280373, 31.724962, 47.421608>,  <40.507980, 31.777365, 47.366386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.280373, 31.724962, 47.421608>,  <39.901028, 31.637625, 47.513641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280373, 31.724962, 47.421608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311389, -0.502709, 0.806424,
		0.060412, -0.836426, -0.544739,
		0.948360, 0.218344, -0.230084,
		40.564880, 31.790466, 47.352581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262699, 30.887375, 47.414936>,  <39.901028, 31.637625, 47.513641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262699, 30.887375, 47.414936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542473, 31.164566, 47.484882>,  <40.710335, 31.330881, 47.526848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.542473, 31.164566, 47.484882>,  <40.262699, 30.887375, 47.414936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542473, 31.164566, 47.484882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305292, -0.510910, 0.803597,
		0.646215, -0.508676, -0.568907,
		0.699430, 0.692979, 0.174863,
		40.752300, 31.372459, 47.537342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876694, 30.563805, 47.406525>,  <40.262699, 30.887375, 47.414936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876694, 30.563805, 47.406525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949505, 30.897573, 47.614601>,  <40.993191, 31.097836, 47.739449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.949505, 30.897573, 47.614601>,  <40.876694, 30.563805, 47.406525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949505, 30.897573, 47.614601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272344, -0.551119, 0.788731,
		0.944826, -0.001898, -0.327569,
		0.182026, 0.834424, 0.520195,
		41.004112, 31.147902, 47.770660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556152, 30.485703, 47.723713>,  <40.876694, 30.563805, 47.406525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556152, 30.485703, 47.723713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.391014, 30.774441, 47.945885>,  <41.291931, 30.947683, 48.079185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.391014, 30.774441, 47.945885>,  <41.556152, 30.485703, 47.723713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391014, 30.774441, 47.945885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342460, -0.442050, 0.829044,
		0.843969, 0.532476, -0.064707,
		-0.412842, 0.721846, 0.555428,
		41.267162, 30.990995, 48.112514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026531, 30.543560, 48.281612>,  <41.556152, 30.485703, 47.723713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026531, 30.543560, 48.281612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682545, 30.698591, 48.414421>,  <41.476151, 30.791611, 48.494106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.682545, 30.698591, 48.414421>,  <42.026531, 30.543560, 48.281612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.682545, 30.698591, 48.414421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174342, -0.388330, 0.904878,
		0.479644, 0.836052, 0.266380,
		-0.859969, 0.387578, 0.332019,
		41.424553, 30.814865, 48.514027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223148, 30.849882, 48.939651>,  <42.026531, 30.543560, 48.281612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223148, 30.849882, 48.939651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.825356, 30.809771, 48.951965>,  <41.586681, 30.785704, 48.959354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.825356, 30.809771, 48.951965>,  <42.223148, 30.849882, 48.939651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825356, 30.809771, 48.951965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065602, -0.365547, 0.928478,
		-0.081851, 0.925376, 0.370108,
		-0.994483, -0.100277, 0.030786,
		41.527012, 30.779688, 48.961201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974964, 31.236387, 49.522346>,  <42.223148, 30.849882, 48.939651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974964, 31.236387, 49.522346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.700642, 30.958498, 49.435596>,  <41.536049, 30.791765, 49.383545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.700642, 30.958498, 49.435596>,  <41.974964, 31.236387, 49.522346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700642, 30.958498, 49.435596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018785, -0.314789, 0.948976,
		-0.727545, 0.646736, 0.228934,
		-0.685802, -0.694723, -0.216875,
		41.494900, 30.750080, 49.370533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434074, 31.296030, 50.002766>,  <41.974964, 31.236387, 49.522346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434074, 31.296030, 50.002766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401562, 30.919283, 49.872364>,  <41.382053, 30.693235, 49.794121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.401562, 30.919283, 49.872364>,  <41.434074, 31.296030, 50.002766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401562, 30.919283, 49.872364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085183, -0.319327, 0.943808,
		-0.993044, 0.104486, -0.054275,
		-0.081283, -0.941867, -0.326006,
		41.377178, 30.636723, 49.774563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042961, 31.100344, 50.498550>,  <41.434074, 31.296030, 50.002766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042961, 31.100344, 50.498550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182991, 30.757343, 50.347744>,  <41.267010, 30.551544, 50.257259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.182991, 30.757343, 50.347744>,  <41.042961, 31.100344, 50.498550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182991, 30.757343, 50.347744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095580, -0.367682, 0.925027,
		-0.931832, -0.359866, -0.046757,
		0.350078, -0.857500, -0.377014,
		41.288013, 30.500093, 50.234638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487488, 30.469795, 50.585464>,  <41.042961, 31.100344, 50.498550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487488, 30.469795, 50.585464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881927, 30.405283, 50.601486>,  <41.118591, 30.366575, 50.611099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.881927, 30.405283, 50.601486>,  <40.487488, 30.469795, 50.585464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881927, 30.405283, 50.601486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140614, -0.681336, 0.718338,
		-0.088566, -0.713982, -0.694540,
		0.986095, -0.161283, 0.040052,
		41.177757, 30.356897, 50.613503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837391, 29.767483, 50.574120>,  <40.487488, 30.469795, 50.585464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837391, 29.767483, 50.574120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105171, 29.955202, 50.804455>,  <41.265839, 30.067835, 50.942657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.105171, 29.955202, 50.804455>,  <40.837391, 29.767483, 50.574120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.105171, 29.955202, 50.804455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143684, -0.678731, 0.720194,
		0.728828, -0.564873, -0.386946,
		0.669451, 0.469300, 0.575842,
		41.306007, 30.095991, 50.977207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381229, 29.972178, 51.263638>,  <40.837391, 29.767483, 50.574120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381229, 29.972178, 51.263638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076469, 30.073662, 51.502010>,  <39.893612, 30.134552, 51.645035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.076469, 30.073662, 51.502010>,  <40.381229, 29.972178, 51.263638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076469, 30.073662, 51.502010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540275, 0.258514, -0.800795,
		-0.357230, -0.932095, -0.059886,
		-0.761899, 0.253713, 0.595937,
		39.847900, 30.149776, 51.680790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806679, 29.669100, 51.060570>,  <40.381229, 29.972178, 51.263638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806679, 29.669100, 51.060570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637516, 29.961702, 51.274506>,  <39.536018, 30.137264, 51.402866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.637516, 29.961702, 51.274506>,  <39.806679, 29.669100, 51.060570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637516, 29.961702, 51.274506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622777, 0.194116, -0.757936,
		-0.658255, -0.653620, 0.373472,
		-0.422905, 0.731506, 0.534838,
		39.510643, 30.181154, 51.434956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981888, 29.638292, 50.998600>,  <39.806679, 29.669100, 51.060570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981888, 29.638292, 50.998600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091812, 30.012274, 51.088345>,  <39.157768, 30.236664, 51.142193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.091812, 30.012274, 51.088345>,  <38.981888, 29.638292, 50.998600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091812, 30.012274, 51.088345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599071, 0.349015, -0.720627,
		-0.752059, 0.063628, 0.656017,
		0.274812, 0.934955, 0.224362,
		39.174255, 30.292761, 51.155655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398304, 29.965242, 50.735447>,  <38.981888, 29.638292, 50.998600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398304, 29.965242, 50.735447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657463, 30.259159, 50.815765>,  <38.812958, 30.435509, 50.863956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.657463, 30.259159, 50.815765>,  <38.398304, 29.965242, 50.735447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657463, 30.259159, 50.815765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576682, 0.645373, -0.500931,
		-0.497666, 0.208755, 0.841873,
		0.647893, 0.734790, 0.200795,
		38.851830, 30.479595, 50.876003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069740, 30.465487, 51.113632>,  <38.398304, 29.965242, 50.735447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069740, 30.465487, 51.113632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373363, 30.635086, 50.916023>,  <38.555538, 30.736845, 50.797459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.373363, 30.635086, 50.916023>,  <38.069740, 30.465487, 51.113632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373363, 30.635086, 50.916023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647437, 0.571185, -0.504552,
		0.068250, 0.702833, 0.708073,
		0.759057, 0.423997, -0.494024,
		38.601082, 30.762285, 50.767815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969757, 31.160574, 51.100597>,  <38.069740, 30.465487, 51.113632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969757, 31.160574, 51.100597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217854, 31.066063, 50.801407>,  <38.366711, 31.009356, 50.621891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.217854, 31.066063, 50.801407>,  <37.969757, 31.160574, 51.100597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217854, 31.066063, 50.801407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627834, 0.422105, -0.653951,
		0.470241, 0.875214, 0.113462,
		0.620240, -0.236280, -0.747980,
		38.403927, 30.995178, 50.577011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022568, 31.679817, 50.676495>,  <37.969757, 31.160574, 51.100597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022568, 31.679817, 50.676495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182552, 31.411943, 50.426197>,  <38.278542, 31.251219, 50.276020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.182552, 31.411943, 50.426197>,  <38.022568, 31.679817, 50.676495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182552, 31.411943, 50.426197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525806, 0.391550, -0.755127,
		0.750706, 0.631042, -0.195518,
		0.399962, -0.669682, -0.625744,
		38.302540, 31.211039, 50.238472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985134, 32.085831, 50.114185>,  <38.022568, 31.679817, 50.676495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985134, 32.085831, 50.114185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055172, 31.719919, 49.968575>,  <38.097195, 31.500372, 49.881207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.055172, 31.719919, 49.968575>,  <37.985134, 32.085831, 50.114185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055172, 31.719919, 49.968575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410630, 0.268197, -0.871466,
		0.894833, 0.302069, -0.328678,
		0.175092, -0.914781, -0.364030,
		38.107700, 31.445484, 49.859364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477196, 32.123291, 49.588924>,  <37.985134, 32.085831, 50.114185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477196, 32.123291, 49.588924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271160, 31.788347, 49.515701>,  <38.147537, 31.587381, 49.471767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.271160, 31.788347, 49.515701>,  <38.477196, 32.123291, 49.588924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271160, 31.788347, 49.515701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068528, 0.253122, -0.965004,
		0.854392, -0.484520, -0.187763,
		-0.515091, -0.837359, -0.183062,
		38.116634, 31.537140, 49.460781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885708, 31.820391, 49.078407>,  <38.477196, 32.123291, 49.588924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885708, 31.820391, 49.078407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508392, 31.692047, 49.044350>,  <38.282001, 31.615042, 49.023914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.508392, 31.692047, 49.044350>,  <38.885708, 31.820391, 49.078407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508392, 31.692047, 49.044350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003203, 0.265266, -0.964170,
		0.331952, -0.909220, -0.251251,
		-0.943291, -0.320863, -0.085144,
		38.225403, 31.595789, 49.018806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.888588, 31.392406, 48.477596>,  <38.885708, 31.820391, 49.078407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.888588, 31.392406, 48.477596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513355, 31.517069, 48.538090>,  <38.288216, 31.591866, 48.574387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.513355, 31.517069, 48.538090>,  <38.888588, 31.392406, 48.477596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513355, 31.517069, 48.538090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034065, 0.351455, -0.935585,
		-0.344729, -0.882809, -0.319078,
		-0.938084, 0.311654, 0.151230,
		38.231930, 31.610565, 48.583458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527901, 31.229641, 47.925167>,  <38.888588, 31.392406, 48.477596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527901, 31.229641, 47.925167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270985, 31.498869, 48.071831>,  <38.116837, 31.660406, 48.159828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270985, 31.498869, 48.071831>,  <38.527901, 31.229641, 47.925167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270985, 31.498869, 48.071831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209020, 0.306437, -0.928659,
		-0.737413, -0.673105, -0.056135,
		-0.642287, 0.673072, 0.366663,
		38.078297, 31.700790, 48.181831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084572, 31.240986, 47.352074>,  <38.527901, 31.229641, 47.925167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084572, 31.240986, 47.352074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001801, 31.563639, 47.573532>,  <37.952137, 31.757231, 47.706406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001801, 31.563639, 47.573532>,  <38.084572, 31.240986, 47.352074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001801, 31.563639, 47.573532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414787, 0.440185, -0.796360,
		-0.886076, -0.394437, 0.243492,
		-0.206932, 0.806633, 0.553645,
		37.939720, 31.805628, 47.739624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415428, 31.382347, 47.279293>,  <38.084572, 31.240986, 47.352074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415428, 31.382347, 47.279293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597374, 31.726248, 47.372177>,  <37.706543, 31.932589, 47.427910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.597374, 31.726248, 47.372177>,  <37.415428, 31.382347, 47.279293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597374, 31.726248, 47.372177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514925, 0.466651, -0.719089,
		-0.726600, 0.207519, 0.654972,
		0.454868, 0.859751, 0.232212,
		37.733833, 31.984173, 47.441841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954193, 31.869715, 47.124107>,  <37.415428, 31.382347, 47.279293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954193, 31.869715, 47.124107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277176, 32.105431, 47.135078>,  <37.470966, 32.246861, 47.141663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.277176, 32.105431, 47.135078>,  <36.954193, 31.869715, 47.124107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277176, 32.105431, 47.135078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407988, 0.591405, -0.695547,
		-0.426102, 0.550432, 0.717957,
		0.807455, 0.589292, 0.027430,
		37.519413, 32.282219, 47.143307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705017, 32.647175, 47.162292>,  <36.954193, 31.869715, 47.124107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705017, 32.647175, 47.162292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080654, 32.644806, 47.024841>,  <37.306034, 32.643383, 46.942371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080654, 32.644806, 47.024841>,  <36.705017, 32.647175, 47.162292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080654, 32.644806, 47.024841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251443, 0.669757, -0.698715,
		0.234285, 0.742557, 0.627471,
		0.939088, -0.005925, -0.343625,
		37.362381, 32.643028, 46.921753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993782, 33.393803, 47.123962>,  <36.705017, 32.647175, 47.162292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993782, 33.393803, 47.123962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251122, 33.197327, 46.889072>,  <37.405525, 33.079441, 46.748138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.251122, 33.197327, 46.889072>,  <36.993782, 33.393803, 47.123962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251122, 33.197327, 46.889072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017112, 0.776074, -0.630410,
		0.765381, 0.395525, 0.507692,
		0.643350, -0.491192, -0.587224,
		37.444126, 33.049969, 46.712906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452572, 33.963474, 46.913387>,  <36.993782, 33.393803, 47.123962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452572, 33.963474, 46.913387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516033, 33.652573, 46.669846>,  <37.554108, 33.466030, 46.523720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.516033, 33.652573, 46.669846>,  <37.452572, 33.963474, 46.913387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516033, 33.652573, 46.669846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104684, 0.626428, -0.772417,
		0.981769, 0.058808, 0.180750,
		0.158651, -0.777257, -0.608852,
		37.563629, 33.419395, 46.487190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999905, 34.117123, 46.373699>,  <37.452572, 33.963474, 46.913387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999905, 34.117123, 46.373699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802773, 33.801098, 46.227867>,  <37.684494, 33.611481, 46.140366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.802773, 33.801098, 46.227867>,  <37.999905, 34.117123, 46.373699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802773, 33.801098, 46.227867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149768, 0.489766, -0.858894,
		0.857142, -0.368682, -0.359695,
		-0.492825, -0.790065, -0.364582,
		37.654926, 33.564079, 46.118492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246315, 34.048698, 45.744511>,  <37.999905, 34.117123, 46.373699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246315, 34.048698, 45.744511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886757, 33.873943, 45.757847>,  <37.671021, 33.769093, 45.765846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.886757, 33.873943, 45.757847>,  <38.246315, 34.048698, 45.744511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886757, 33.873943, 45.757847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225005, 0.394988, -0.890706,
		0.375961, -0.808160, -0.453356,
		-0.898903, -0.436878, 0.033340,
		37.617088, 33.742878, 45.767849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.453415, 38.928974, 44.086605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108753, 38.732395, 44.137257>,  <43.901958, 38.614449, 44.167648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.108753, 38.732395, 44.137257>,  <44.453415, 38.928974, 44.086605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108753, 38.732395, 44.137257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263836, -0.646923, -0.715458,
		0.433531, -0.583066, 0.687084,
		-0.861650, -0.491451, 0.126628,
		43.850258, 38.584961, 44.175243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599270, 38.258995, 43.898163>,  <44.453415, 38.928974, 44.086605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599270, 38.258995, 43.898163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200153, 38.265690, 43.872421>,  <43.960686, 38.269707, 43.856976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.200153, 38.265690, 43.872421>,  <44.599270, 38.258995, 43.898163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200153, 38.265690, 43.872421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034999, -0.690664, -0.722329,
		-0.056538, -0.722982, 0.688549,
		-0.997787, 0.016740, -0.064353,
		43.900818, 38.270714, 43.853115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.378914, 37.591534, 43.988602>,  <44.599270, 38.258995, 43.898163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.378914, 37.591534, 43.988602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072132, 37.771290, 43.805374>,  <43.888062, 37.879143, 43.695438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.072132, 37.771290, 43.805374>,  <44.378914, 37.591534, 43.988602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.072132, 37.771290, 43.805374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062974, -0.763098, -0.643207,
		-0.638601, -0.464466, 0.613564,
		-0.766957, 0.449391, -0.458065,
		43.842045, 37.906109, 43.667953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020325, 36.995213, 43.822765>,  <44.378914, 37.591534, 43.988602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020325, 36.995213, 43.822765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852989, 37.281624, 43.599232>,  <43.752590, 37.453472, 43.465111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.852989, 37.281624, 43.599232>,  <44.020325, 36.995213, 43.822765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852989, 37.281624, 43.599232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119156, -0.653205, -0.747747,
		-0.900443, -0.246219, 0.358577,
		-0.418334, 0.716030, -0.558836,
		43.727489, 37.496433, 43.431580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.552872, 36.597462, 43.551617>,  <44.020325, 36.995213, 43.822765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.552872, 36.597462, 43.551617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607895, 36.905075, 43.301926>,  <43.640907, 37.089642, 43.152111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.607895, 36.905075, 43.301926>,  <43.552872, 36.597462, 43.551617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607895, 36.905075, 43.301926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105346, -0.615288, -0.781232,
		-0.984876, 0.173224, -0.003623,
		0.137557, 0.769035, -0.624230,
		43.649162, 37.135784, 43.114658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.950977, 36.645542, 43.099731>,  <43.552872, 36.597462, 43.551617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.950977, 36.645542, 43.099731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258465, 36.831520, 42.924049>,  <43.442955, 36.943108, 42.818642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.258465, 36.831520, 42.924049>,  <42.950977, 36.645542, 43.099731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258465, 36.831520, 42.924049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224420, -0.446957, -0.865948,
		-0.598924, 0.764234, -0.239240,
		0.768717, 0.464947, -0.439203,
		43.489079, 36.971004, 42.792290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.658627, 36.900307, 42.471687>,  <42.950977, 36.645542, 43.099731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.658627, 36.900307, 42.471687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049843, 36.891708, 42.388763>,  <43.284573, 36.886551, 42.339008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.049843, 36.891708, 42.388763>,  <42.658627, 36.900307, 42.471687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.049843, 36.891708, 42.388763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204649, -0.287446, -0.935678,
		-0.039477, 0.957556, -0.285533,
		0.978039, -0.021497, -0.207310,
		43.343254, 36.885258, 42.326569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.718819, 37.358433, 41.870056>,  <42.658627, 36.900307, 42.471687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.718819, 37.358433, 41.870056> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065117, 37.158455, 41.860741>,  <43.272896, 37.038467, 41.855152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065117, 37.158455, 41.860741>,  <42.718819, 37.358433, 41.870056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065117, 37.158455, 41.860741> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080889, -0.093846, -0.992295,
		0.493911, 0.860956, -0.121687,
		0.865742, -0.499948, -0.023291,
		43.324841, 37.008469, 41.853752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156528, 37.650978, 41.327293>,  <42.718819, 37.358433, 41.870056>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156528, 37.650978, 41.327293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319977, 37.290184, 41.383080>,  <43.418045, 37.073708, 41.416553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.319977, 37.290184, 41.383080>,  <43.156528, 37.650978, 41.327293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319977, 37.290184, 41.383080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079766, -0.116932, -0.989932,
		0.909212, 0.415631, 0.024167,
		0.408620, -0.901986, 0.139469,
		43.442562, 37.019588, 41.424919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632950, 37.686771, 40.844395>,  <43.156528, 37.650978, 41.327293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632950, 37.686771, 40.844395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599682, 37.301903, 40.948166>,  <43.579720, 37.070980, 41.010429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.599682, 37.301903, 40.948166>,  <43.632950, 37.686771, 40.844395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599682, 37.301903, 40.948166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144114, -0.269209, -0.952238,
		0.986060, -0.041812, 0.161053,
		-0.083172, -0.962174, 0.259430,
		43.574730, 37.013252, 41.025993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.271168, 37.248711, 40.564903>,  <43.632950, 37.686771, 40.844395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.271168, 37.248711, 40.564903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943291, 37.025116, 40.614929>,  <43.746563, 36.890961, 40.644943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943291, 37.025116, 40.614929>,  <44.271168, 37.248711, 40.564903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943291, 37.025116, 40.614929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220069, -0.508902, -0.832219,
		0.528840, -0.654642, 0.540159,
		-0.819693, -0.558983, 0.125061,
		43.697384, 36.857422, 40.652447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.482979, 36.594337, 40.404099>,  <44.271168, 37.248711, 40.564903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.482979, 36.594337, 40.404099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087746, 36.535316, 40.386566>,  <43.850605, 36.499905, 40.376045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.087746, 36.535316, 40.386566>,  <44.482979, 36.594337, 40.404099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087746, 36.535316, 40.386566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127540, -0.625376, -0.769830,
		0.086180, -0.766246, 0.636742,
		-0.988083, -0.147555, -0.043832,
		43.791321, 36.491051, 40.373417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400257, 35.911789, 40.281872>,  <44.482979, 36.594337, 40.404099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400257, 35.911789, 40.281872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.041943, 36.067593, 40.196217>,  <43.826954, 36.161076, 40.144821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.041943, 36.067593, 40.196217>,  <44.400257, 35.911789, 40.281872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.041943, 36.067593, 40.196217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046477, -0.561200, -0.826374,
		-0.442057, -0.730299, 0.520816,
		-0.895782, 0.389511, -0.214140,
		43.773209, 36.184444, 40.131973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892742, 35.383156, 40.172737>,  <44.400257, 35.911789, 40.281872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892742, 35.383156, 40.172737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706360, 35.674026, 39.971104>,  <43.594528, 35.848549, 39.850124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.706360, 35.674026, 39.971104>,  <43.892742, 35.383156, 40.172737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.706360, 35.674026, 39.971104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279542, -0.661520, -0.695879,
		-0.839487, -0.183337, 0.511516,
		-0.465958, 0.727172, -0.504087,
		43.566574, 35.892178, 39.819878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203934, 35.203102, 40.063961>,  <43.892742, 35.383156, 40.172737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203934, 35.203102, 40.063961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304234, 35.471855, 39.785194>,  <43.364414, 35.633106, 39.617935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.304234, 35.471855, 39.785194>,  <43.203934, 35.203102, 40.063961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304234, 35.471855, 39.785194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266804, -0.644070, -0.716931,
		-0.930559, 0.365711, 0.017761,
		0.250750, 0.671885, -0.696918,
		43.379459, 35.673420, 39.576118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673847, 35.140167, 39.562321>,  <43.203934, 35.203102, 40.063961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673847, 35.140167, 39.562321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975845, 35.309109, 39.361683>,  <43.157043, 35.410473, 39.241299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.975845, 35.309109, 39.361683>,  <42.673847, 35.140167, 39.562321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.975845, 35.309109, 39.361683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188137, -0.593257, -0.782720,
		-0.628163, 0.685317, -0.368444,
		0.754994, 0.422358, -0.501596,
		43.202343, 35.435818, 39.211205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396866, 35.274261, 38.988926>,  <42.673847, 35.140167, 39.562321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396866, 35.274261, 38.988926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787975, 35.286003, 38.905884>,  <43.022640, 35.293049, 38.856056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.787975, 35.286003, 38.905884>,  <42.396866, 35.274261, 38.988926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787975, 35.286003, 38.905884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158658, -0.543746, -0.824117,
		-0.137081, 0.838736, -0.527001,
		0.977771, 0.029358, -0.207609,
		43.081306, 35.294811, 38.843601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448505, 35.496384, 38.210243>,  <42.396866, 35.274261, 38.988926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448505, 35.496384, 38.210243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785240, 35.310829, 38.320606>,  <42.987282, 35.199497, 38.386826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.785240, 35.310829, 38.320606>,  <42.448505, 35.496384, 38.210243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785240, 35.310829, 38.320606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009432, -0.523759, -0.851815,
		0.539654, 0.714484, -0.445293,
		0.841834, -0.463885, 0.275909,
		43.037792, 35.171665, 38.403378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960461, 35.700989, 37.712753>,  <42.448505, 35.496384, 38.210243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960461, 35.700989, 37.712753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090050, 35.352013, 37.859123>,  <43.167801, 35.142628, 37.946945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.090050, 35.352013, 37.859123>,  <42.960461, 35.700989, 37.712753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090050, 35.352013, 37.859123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263075, -0.454603, -0.850957,
		0.908754, 0.179420, -0.376794,
		0.323970, -0.872436, 0.365921,
		43.187241, 35.090282, 37.968899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380184, 35.389572, 37.205132>,  <42.960461, 35.700989, 37.712753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380184, 35.389572, 37.205132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283520, 35.084045, 37.444523>,  <43.225521, 34.900730, 37.588158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.283520, 35.084045, 37.444523>,  <43.380184, 35.389572, 37.205132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283520, 35.084045, 37.444523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289353, -0.531979, -0.795785,
		0.926214, -0.365485, -0.092453,
		-0.241665, -0.763819, 0.598481,
		43.211021, 34.854900, 37.624065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787712, 34.725853, 36.972225>,  <43.380184, 35.389572, 37.205132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787712, 34.725853, 36.972225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447819, 34.654659, 37.170731>,  <43.243881, 34.611942, 37.289833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.447819, 34.654659, 37.170731>,  <43.787712, 34.725853, 36.972225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.447819, 34.654659, 37.170731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233503, -0.716885, -0.656926,
		0.472683, -0.674090, 0.567602,
		-0.849733, -0.177981, 0.496262,
		43.192898, 34.601265, 37.319611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297115, 35.098980, 37.325462>,  <43.787712, 34.725853, 36.972225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297115, 35.098980, 37.325462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674145, 34.979946, 37.264812>,  <44.900364, 34.908524, 37.228424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.674145, 34.979946, 37.264812>,  <44.297115, 35.098980, 37.325462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.674145, 34.979946, 37.264812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225640, 0.232701, 0.946011,
		-0.246239, -0.925901, 0.286486,
		0.942578, -0.297588, -0.151620,
		44.956917, 34.890671, 37.219326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548832, 34.649677, 37.811920>,  <44.297115, 35.098980, 37.325462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548832, 34.649677, 37.811920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878105, 34.820713, 37.662502>,  <45.075668, 34.923336, 37.572853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.878105, 34.820713, 37.662502>,  <44.548832, 34.649677, 37.811920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.878105, 34.820713, 37.662502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233424, 0.344869, 0.909163,
		0.517573, -0.835603, 0.184081,
		0.823183, 0.427590, -0.373545,
		45.125061, 34.948990, 37.550438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119614, 34.401962, 38.313648>,  <44.548832, 34.649677, 37.811920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119614, 34.401962, 38.313648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240780, 34.730572, 38.120426>,  <45.313480, 34.927738, 38.004494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.240780, 34.730572, 38.120426>,  <45.119614, 34.401962, 38.313648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.240780, 34.730572, 38.120426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488625, 0.301303, 0.818818,
		0.818223, -0.484066, -0.310147,
		0.302914, 0.821521, -0.483059,
		45.331654, 34.977028, 37.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864975, 34.464890, 38.424080>,  <45.119614, 34.401962, 38.313648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864975, 34.464890, 38.424080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767982, 34.840202, 38.325428>,  <45.709785, 35.065392, 38.266239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.767982, 34.840202, 38.325428>,  <45.864975, 34.464890, 38.424080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767982, 34.840202, 38.325428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371907, 0.324696, 0.869631,
		0.896039, 0.119150, -0.427688,
		-0.242485, 0.938284, -0.246628,
		45.695236, 35.121689, 38.251438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457054, 34.838707, 38.589489>,  <45.864975, 34.464890, 38.424080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457054, 34.838707, 38.589489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168076, 35.115044, 38.578110>,  <45.994690, 35.280846, 38.571281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.168076, 35.115044, 38.578110>,  <46.457054, 34.838707, 38.589489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168076, 35.115044, 38.578110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375143, 0.426202, 0.823176,
		0.580814, 0.584024, -0.567072,
		-0.722442, 0.690846, -0.028452,
		45.951344, 35.322296, 38.569572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.757320, 35.395996, 38.603092>,  <46.457054, 34.838707, 38.589489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.757320, 35.395996, 38.603092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399918, 35.508362, 38.743225>,  <46.185474, 35.575783, 38.827305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.399918, 35.508362, 38.743225>,  <46.757320, 35.395996, 38.603092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399918, 35.508362, 38.743225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446364, 0.470481, 0.761187,
		0.049005, 0.836502, -0.545769,
		-0.893509, 0.280914, 0.350328,
		46.131866, 35.592636, 38.848324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.833229, 36.001701, 38.881721>,  <46.757320, 35.395996, 38.603092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.833229, 36.001701, 38.881721> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479095, 35.912807, 39.045086>,  <46.266617, 35.859470, 39.143105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479095, 35.912807, 39.045086>,  <46.833229, 36.001701, 38.881721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479095, 35.912807, 39.045086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274827, 0.458409, 0.845181,
		-0.375047, 0.860508, -0.344768,
		-0.885330, -0.222231, 0.408416,
		46.213497, 35.846138, 39.167610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.714096, 36.666264, 39.101616>,  <46.833229, 36.001701, 38.881721>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.714096, 36.666264, 39.101616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.488674, 36.388733, 39.280949>,  <46.353420, 36.222214, 39.388550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.488674, 36.388733, 39.280949>,  <46.714096, 36.666264, 39.101616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.488674, 36.388733, 39.280949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324927, 0.312801, 0.892512,
		-0.759493, 0.648655, 0.049164,
		-0.563554, -0.693831, 0.448336,
		46.319607, 36.180584, 39.415451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141563, 36.922787, 39.448811>,  <46.714096, 36.666264, 39.101616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141563, 36.922787, 39.448811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.253708, 36.587967, 39.636745>,  <46.320995, 36.387074, 39.749508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.253708, 36.587967, 39.636745>,  <46.141563, 36.922787, 39.448811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253708, 36.587967, 39.636745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193084, 0.528640, 0.826594,
		-0.940275, -0.141025, 0.309831,
		0.280360, -0.837049, 0.469837,
		46.337814, 36.336853, 39.777699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263615, 37.132332, 40.087551>,  <46.141563, 36.922787, 39.448811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263615, 37.132332, 40.087551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.424477, 36.767338, 40.117596>,  <46.520996, 36.548340, 40.135624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.424477, 36.767338, 40.117596>,  <46.263615, 37.132332, 40.087551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424477, 36.767338, 40.117596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299202, 0.208516, 0.931128,
		-0.865302, -0.351985, 0.356874,
		0.402157, -0.912484, 0.075114,
		46.545124, 36.493591, 40.140129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004944, 36.869637, 40.719784>,  <46.263615, 37.132332, 40.087551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004944, 36.869637, 40.719784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.334606, 36.675236, 40.603462>,  <46.532406, 36.558594, 40.533669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.334606, 36.675236, 40.603462>,  <46.004944, 36.869637, 40.719784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.334606, 36.675236, 40.603462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401366, 0.138923, 0.905321,
		-0.399587, -0.862846, 0.309559,
		0.824157, -0.486001, -0.290805,
		46.581852, 36.529434, 40.516220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127052, 36.336067, 41.202808>,  <46.004944, 36.869637, 40.719784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127052, 36.336067, 41.202808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485195, 36.398357, 41.035915>,  <46.700081, 36.435734, 40.935780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.485195, 36.398357, 41.035915>,  <46.127052, 36.336067, 41.202808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485195, 36.398357, 41.035915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397182, 0.144550, 0.906285,
		0.201446, -0.977166, 0.067571,
		0.895358, 0.155729, -0.417232,
		46.753803, 36.445076, 40.910748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.599731, 35.951775, 41.641426>,  <46.127052, 36.336067, 41.202808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.599731, 35.951775, 41.641426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794071, 36.242001, 41.446487>,  <46.910675, 36.416138, 41.329525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.794071, 36.242001, 41.446487>,  <46.599731, 35.951775, 41.641426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.794071, 36.242001, 41.446487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375022, 0.330592, 0.866064,
		0.789500, -0.603540, -0.111487,
		0.485848, 0.725568, -0.487343,
		46.939827, 36.459671, 41.300285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263824, 35.934811, 41.864906>,  <46.599731, 35.951775, 41.641426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263824, 35.934811, 41.864906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.187820, 36.310146, 41.749378>,  <47.142220, 36.535347, 41.680061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.187820, 36.310146, 41.749378>,  <47.263824, 35.934811, 41.864906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.187820, 36.310146, 41.749378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388427, 0.342024, 0.855654,
		0.901676, 0.050398, -0.429464,
		-0.190011, 0.938339, -0.288819,
		47.130817, 36.591648, 41.662731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.873268, 36.259567, 42.029346>,  <47.263824, 35.934811, 41.864906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.873268, 36.259567, 42.029346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.575169, 36.522655, 41.985516>,  <47.396309, 36.680508, 41.959217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.575169, 36.522655, 41.985516>,  <47.873268, 36.259567, 42.029346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575169, 36.522655, 41.985516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243460, 0.421405, 0.873582,
		0.620748, 0.624359, -0.474181,
		-0.745251, 0.657718, -0.109580,
		47.351593, 36.719971, 41.952641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.092239, 36.792545, 42.420876>,  <47.873268, 36.259567, 42.029346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.092239, 36.792545, 42.420876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.715656, 36.904480, 42.345669>,  <47.489708, 36.971642, 42.300545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.715656, 36.904480, 42.345669>,  <48.092239, 36.792545, 42.420876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715656, 36.904480, 42.345669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004438, 0.547352, 0.836891,
		0.337107, 0.788731, -0.514065,
		-0.941456, 0.279840, -0.188017,
		47.433220, 36.988434, 42.289265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.003983, 37.601395, 42.519657>,  <48.092239, 36.792545, 42.420876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.003983, 37.601395, 42.519657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.647697, 37.421982, 42.549152>,  <47.433926, 37.314335, 42.566849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.647697, 37.421982, 42.549152>,  <48.003983, 37.601395, 42.519657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.647697, 37.421982, 42.549152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179686, 0.496447, 0.849266,
		-0.417535, 0.743206, -0.522789,
		-0.890718, -0.448536, 0.073740,
		47.380482, 37.287422, 42.571274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.547539, 38.142906, 42.882820>,  <48.003983, 37.601395, 42.519657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.547539, 38.142906, 42.882820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.394115, 37.777298, 42.935673>,  <47.302063, 37.557934, 42.967384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.394115, 37.777298, 42.935673>,  <47.547539, 38.142906, 42.882820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.394115, 37.777298, 42.935673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304337, 0.260176, 0.916345,
		-0.871932, 0.311257, -0.377961,
		-0.383555, -0.914017, 0.132129,
		47.279049, 37.503094, 42.975311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.979256, 38.349545, 43.316799>,  <47.547539, 38.142906, 42.882820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.979256, 38.349545, 43.316799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923512, 37.953571, 43.326626>,  <46.890064, 37.715988, 43.332523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.923512, 37.953571, 43.326626>,  <46.979256, 38.349545, 43.316799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923512, 37.953571, 43.326626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354476, 0.073041, 0.932208,
		-0.924621, 0.121205, -0.361088,
		-0.139363, -0.989936, 0.024571,
		46.881702, 37.656590, 43.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.254116, 38.243893, 43.561214>,  <46.979256, 38.349545, 43.316799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.254116, 38.243893, 43.561214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443504, 37.900017, 43.637913>,  <46.557137, 37.693691, 43.683929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.443504, 37.900017, 43.637913>,  <46.254116, 38.243893, 43.561214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.443504, 37.900017, 43.637913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286838, 0.055333, 0.956380,
		-0.832796, -0.507817, -0.220392,
		0.473471, -0.859686, 0.191743,
		46.585545, 37.642113, 43.695435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771763, 37.741768, 43.882805>,  <46.254116, 38.243893, 43.561214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771763, 37.741768, 43.882805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142590, 37.661144, 44.009239>,  <46.365086, 37.612770, 44.085102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142590, 37.661144, 44.009239>,  <45.771763, 37.741768, 43.882805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142590, 37.661144, 44.009239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301050, 0.102180, 0.948118,
		-0.223401, -0.974132, 0.034049,
		0.927071, -0.201560, 0.316090,
		46.420712, 37.600677, 44.104065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.025059, 34.890820, 40.043533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662182, 34.802979, 40.187077>,  <38.444454, 34.750275, 40.273201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662182, 34.802979, 40.187077>,  <39.025059, 34.890820, 40.043533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662182, 34.802979, 40.187077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301405, -0.255848, -0.918530,
		0.293526, -0.941443, 0.165914,
		-0.907192, -0.219605, 0.358854,
		38.390022, 34.737099, 40.294731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832340, 34.297836, 39.670898>,  <39.025059, 34.890820, 40.043533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832340, 34.297836, 39.670898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495255, 34.472546, 39.796795>,  <38.293003, 34.577370, 39.872334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495255, 34.472546, 39.796795>,  <38.832340, 34.297836, 39.670898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495255, 34.472546, 39.796795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366667, -0.037580, -0.929593,
		-0.394190, -0.898788, 0.191818,
		-0.842715, 0.436770, 0.314742,
		38.242439, 34.603577, 39.891216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328106, 33.948990, 39.320374>,  <38.832340, 34.297836, 39.670898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328106, 33.948990, 39.320374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146252, 34.285007, 39.438789>,  <38.037140, 34.486618, 39.509838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146252, 34.285007, 39.438789>,  <38.328106, 33.948990, 39.320374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146252, 34.285007, 39.438789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507900, 0.028533, -0.860943,
		-0.731675, -0.541772, 0.413685,
		-0.454631, 0.840041, 0.296043,
		38.009861, 34.537022, 39.527603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657032, 33.942032, 39.106495>,  <38.328106, 33.948990, 39.320374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657032, 33.942032, 39.106495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686035, 34.332157, 39.189930>,  <37.703438, 34.566231, 39.239990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686035, 34.332157, 39.189930>,  <37.657032, 33.942032, 39.106495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686035, 34.332157, 39.189930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507496, 0.216117, -0.834111,
		-0.858597, -0.045372, 0.510639,
		0.072513, 0.975313, 0.208583,
		37.707790, 34.624752, 39.252506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052341, 34.079586, 38.890808>,  <37.657032, 33.942032, 39.106495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052341, 34.079586, 38.890808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263184, 34.418976, 38.909798>,  <37.389687, 34.622608, 38.921192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263184, 34.418976, 38.909798>,  <37.052341, 34.079586, 38.890808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263184, 34.418976, 38.909798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479532, 0.343096, -0.807672,
		-0.701578, 0.402960, 0.587717,
		0.527103, 0.848474, 0.047476,
		37.421314, 34.673519, 38.924042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584400, 34.617561, 38.773342>,  <37.052341, 34.079586, 38.890808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584400, 34.617561, 38.773342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937157, 34.787926, 38.692486>,  <37.148811, 34.890144, 38.643970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937157, 34.787926, 38.692486>,  <36.584400, 34.617561, 38.773342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937157, 34.787926, 38.692486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415251, 0.498736, -0.760808,
		-0.223224, 0.754891, 0.616694,
		0.881894, 0.425913, -0.202140,
		37.201725, 34.915699, 38.631844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368580, 35.344776, 38.611107>,  <36.584400, 34.617561, 38.773342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368580, 35.344776, 38.611107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732422, 35.274391, 38.460560>,  <36.950729, 35.232162, 38.370232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732422, 35.274391, 38.460560>,  <36.368580, 35.344776, 38.611107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732422, 35.274391, 38.460560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248963, 0.494373, -0.832834,
		0.332608, 0.851254, 0.405879,
		0.909609, -0.175959, -0.376364,
		37.005306, 35.221603, 38.347652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559475, 35.954815, 38.452007>,  <36.368580, 35.344776, 38.611107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559475, 35.954815, 38.452007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787991, 35.721008, 38.221539>,  <36.925098, 35.580723, 38.083260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787991, 35.721008, 38.221539>,  <36.559475, 35.954815, 38.452007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787991, 35.721008, 38.221539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328469, 0.480505, -0.813156,
		0.752156, 0.653798, 0.082510,
		0.571287, -0.584518, -0.576168,
		36.959377, 35.545654, 38.048687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889122, 36.461105, 38.003136>,  <36.559475, 35.954815, 38.452007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889122, 36.461105, 38.003136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935562, 36.097916, 37.842091>,  <36.963428, 35.880001, 37.745464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935562, 36.097916, 37.842091>,  <36.889122, 36.461105, 38.003136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935562, 36.097916, 37.842091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124549, 0.388845, -0.912846,
		0.985397, 0.156130, -0.067942,
		0.116103, -0.907978, -0.402612,
		36.970394, 35.825523, 37.721306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400955, 36.627518, 37.476925>,  <36.889122, 36.461105, 38.003136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400955, 36.627518, 37.476925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187634, 36.296223, 37.408089>,  <37.059643, 36.097446, 37.366787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.187634, 36.296223, 37.408089>,  <37.400955, 36.627518, 37.476925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187634, 36.296223, 37.408089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283927, 0.366884, -0.885879,
		0.796853, -0.423580, -0.430819,
		-0.533301, -0.828237, -0.172087,
		37.027641, 36.047752, 37.356464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446770, 36.592983, 36.640690>,  <37.400955, 36.627518, 37.476925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446770, 36.592983, 36.640690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164864, 36.334873, 36.758621>,  <36.995720, 36.180008, 36.829380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164864, 36.334873, 36.758621>,  <37.446770, 36.592983, 36.640690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164864, 36.334873, 36.758621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534868, 0.210279, -0.818351,
		0.466065, -0.734441, -0.493335,
		-0.704769, -0.645274, 0.294826,
		36.953434, 36.141293, 36.847069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348171, 36.008450, 36.123672>,  <37.446770, 36.592983, 36.640690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348171, 36.008450, 36.123672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999016, 36.073711, 36.307606>,  <36.789520, 36.112869, 36.417965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999016, 36.073711, 36.307606>,  <37.348171, 36.008450, 36.123672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.999016, 36.073711, 36.307606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420518, 0.226376, -0.878589,
		-0.247438, -0.960279, -0.128993,
		-0.872891, 0.163152, 0.459828,
		36.737148, 36.122658, 36.445553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595657, 35.481228, 36.572067>,  <37.348171, 36.008450, 36.123672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595657, 35.481228, 36.572067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421597, 35.354847, 36.234825>,  <37.317162, 35.279018, 36.032482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421597, 35.354847, 36.234825>,  <37.595657, 35.481228, 36.572067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421597, 35.354847, 36.234825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271117, -0.938925, 0.211931,
		-0.858570, -0.136358, 0.494231,
		-0.435148, -0.315952, -0.843102,
		37.291054, 35.260063, 35.981895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286163, 35.158489, 36.722088>,  <37.595657, 35.481228, 36.572067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286163, 35.158489, 36.722088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523224, 35.243740, 37.032787>,  <38.665459, 35.294891, 37.219208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523224, 35.243740, 37.032787>,  <38.286163, 35.158489, 36.722088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523224, 35.243740, 37.032787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017445, -0.967528, 0.252162,
		0.805272, -0.135894, -0.577122,
		0.592649, 0.213127, 0.776752,
		38.701019, 35.307678, 37.265812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784599, 34.916882, 36.218182>,  <38.286163, 35.158489, 36.722088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784599, 34.916882, 36.218182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988361, 34.655434, 35.994293>,  <39.110619, 34.498566, 35.859959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988361, 34.655434, 35.994293>,  <38.784599, 34.916882, 36.218182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988361, 34.655434, 35.994293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104644, -0.598564, 0.794211,
		-0.854138, -0.463150, -0.236517,
		0.509409, -0.653616, -0.559722,
		39.141186, 34.459351, 35.826378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430714, 34.257812, 36.162933>,  <38.784599, 34.916882, 36.218182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430714, 34.257812, 36.162933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823624, 34.185886, 36.141727>,  <39.059368, 34.142731, 36.129005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823624, 34.185886, 36.141727>,  <38.430714, 34.257812, 36.162933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823624, 34.185886, 36.141727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065174, -0.592691, 0.802789,
		-0.175774, -0.785101, -0.593903,
		0.982271, -0.179816, -0.053012,
		39.118305, 34.131943, 36.125824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403839, 33.598248, 36.454365>,  <38.430714, 34.257812, 36.162933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403839, 33.598248, 36.454365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793896, 33.686024, 36.442047>,  <39.027927, 33.738689, 36.434658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793896, 33.686024, 36.442047>,  <38.403839, 33.598248, 36.454365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793896, 33.686024, 36.442047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129048, -0.449423, 0.883949,
		0.180140, -0.865947, -0.466569,
		0.975139, 0.219444, -0.030789,
		39.086437, 33.751858, 36.432812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832573, 32.998390, 36.527443>,  <38.403839, 33.598248, 36.454365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832573, 32.998390, 36.527443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063244, 33.300556, 36.651886>,  <39.201649, 33.481857, 36.726551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063244, 33.300556, 36.651886>,  <38.832573, 32.998390, 36.527443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063244, 33.300556, 36.651886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204244, -0.502020, 0.840393,
		0.791027, -0.421097, -0.443794,
		0.576681, 0.755416, 0.311105,
		39.236248, 33.527180, 36.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503983, 32.707066, 36.756992>,  <38.832573, 32.998390, 36.527443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503983, 32.707066, 36.756992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542633, 33.067917, 36.925194>,  <39.565823, 33.284428, 37.026115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542633, 33.067917, 36.925194>,  <39.503983, 32.707066, 36.756992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542633, 33.067917, 36.925194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349194, -0.426356, 0.834437,
		0.932056, 0.066212, -0.356214,
		0.096624, 0.902129, 0.420508,
		39.571621, 33.338554, 37.051346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175133, 32.802017, 37.005886>,  <39.503983, 32.707066, 36.756992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175133, 32.802017, 37.005886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962971, 33.045830, 37.241562>,  <39.835674, 33.192116, 37.382965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.962971, 33.045830, 37.241562>,  <40.175133, 32.802017, 37.005886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962971, 33.045830, 37.241562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324860, -0.495809, 0.805382,
		0.783027, 0.618585, 0.064970,
		-0.530409, 0.609530, 0.589185,
		39.803848, 33.228687, 37.418316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520149, 32.817314, 37.567513>,  <40.175133, 32.802017, 37.005886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520149, 32.817314, 37.567513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167187, 32.954868, 37.695953>,  <39.955410, 33.037399, 37.773018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167187, 32.954868, 37.695953>,  <40.520149, 32.817314, 37.567513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167187, 32.954868, 37.695953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147718, -0.445472, 0.883026,
		0.446698, 0.826619, 0.342289,
		-0.882406, 0.343884, 0.321098,
		39.902466, 33.058033, 37.792282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619293, 33.021965, 38.377197>,  <40.520149, 32.817314, 37.567513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619293, 33.021965, 38.377197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221020, 33.031532, 38.341309>,  <39.982056, 33.037273, 38.319775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221020, 33.031532, 38.341309>,  <40.619293, 33.021965, 38.377197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221020, 33.031532, 38.341309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089756, -0.495304, 0.864070,
		-0.023772, 0.868390, 0.495311,
		-0.995680, 0.023916, -0.089717,
		39.922318, 33.038708, 38.314392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359421, 33.158360, 39.038383>,  <40.619293, 33.021965, 38.377197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359421, 33.158360, 39.038383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081966, 32.959503, 38.829880>,  <39.915493, 32.840187, 38.704777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081966, 32.959503, 38.829880>,  <40.359421, 33.158360, 39.038383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081966, 32.959503, 38.829880> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134099, -0.621875, 0.771550,
		-0.707730, 0.605078, 0.364691,
		-0.693640, -0.497144, -0.521259,
		39.873875, 32.810360, 38.673504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835064, 33.095734, 39.544643>,  <40.359421, 33.158360, 39.038383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835064, 33.095734, 39.544643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708542, 32.841312, 39.263107>,  <39.632629, 32.688660, 39.094185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708542, 32.841312, 39.263107>,  <39.835064, 33.095734, 39.544643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708542, 32.841312, 39.263107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176779, -0.689414, 0.702465,
		-0.932042, 0.346616, 0.105622,
		-0.316303, -0.636055, -0.703837,
		39.613651, 32.650497, 39.051956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113445, 32.884220, 39.655098>,  <39.835064, 33.095734, 39.544643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113445, 32.884220, 39.655098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319683, 32.595074, 39.471085>,  <39.443428, 32.421585, 39.360676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319683, 32.595074, 39.471085>,  <39.113445, 32.884220, 39.655098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319683, 32.595074, 39.471085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350402, -0.667837, 0.656667,
		-0.781908, -0.177378, -0.597626,
		0.515595, -0.722863, -0.460033,
		39.474361, 32.378216, 39.333076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713032, 32.323986, 39.882824>,  <39.113445, 32.884220, 39.655098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713032, 32.323986, 39.882824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039204, 32.145672, 39.735119>,  <39.234905, 32.038685, 39.646496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039204, 32.145672, 39.735119>,  <38.713032, 32.323986, 39.882824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039204, 32.145672, 39.735119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115587, -0.750459, 0.650731,
		-0.567197, -0.487945, -0.663474,
		0.815431, -0.445782, -0.369258,
		39.283833, 32.011936, 39.624340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403233, 31.654020, 39.721283>,  <38.713032, 32.323986, 39.882824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403233, 31.654020, 39.721283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799843, 31.638145, 39.770756>,  <39.037811, 31.628620, 39.800442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799843, 31.638145, 39.770756>,  <38.403233, 31.654020, 39.721283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799843, 31.638145, 39.770756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112672, -0.736583, 0.666896,
		0.064638, -0.675182, -0.734814,
		0.991528, -0.039686, 0.123685,
		39.097301, 31.626240, 39.807861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521336, 30.936174, 39.696072>,  <38.403233, 31.654020, 39.721283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521336, 30.936174, 39.696072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828880, 31.111542, 39.882252>,  <39.013409, 31.216763, 39.993958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828880, 31.111542, 39.882252>,  <38.521336, 30.936174, 39.696072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828880, 31.111542, 39.882252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075212, -0.660865, 0.746726,
		0.634975, -0.609137, -0.475141,
		0.768863, 0.438416, 0.465447,
		39.059540, 31.243067, 40.021885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419956, 30.394760, 39.208294>,  <38.521336, 30.936174, 39.696072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419956, 30.394760, 39.208294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042473, 30.274952, 39.264435>,  <37.815983, 30.203066, 39.298119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042473, 30.274952, 39.264435>,  <38.419956, 30.394760, 39.208294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042473, 30.274952, 39.264435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263028, 0.422252, -0.867479,
		0.200567, -0.855564, -0.477267,
		-0.943710, -0.299522, 0.140347,
		37.759361, 30.185095, 39.306538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129864, 30.135721, 38.527596>,  <38.419956, 30.394760, 39.208294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129864, 30.135721, 38.527596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829334, 30.273439, 38.752796>,  <37.649017, 30.356071, 38.887917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829334, 30.273439, 38.752796>,  <38.129864, 30.135721, 38.527596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829334, 30.273439, 38.752796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371338, 0.484692, -0.791948,
		-0.545550, -0.804073, -0.236309,
		-0.751321, 0.344296, 0.563006,
		37.603939, 30.376728, 38.921700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611946, 30.212912, 37.980579>,  <38.129864, 30.135721, 38.527596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611946, 30.212912, 37.980579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476788, 30.413879, 38.298927>,  <37.395691, 30.534460, 38.489937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476788, 30.413879, 38.298927>,  <37.611946, 30.212912, 37.980579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476788, 30.413879, 38.298927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487746, 0.629721, -0.604613,
		-0.804941, -0.592477, 0.032271,
		-0.337897, 0.502417, 0.795866,
		37.375420, 30.564604, 38.537685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892288, 30.308655, 37.891544>,  <37.611946, 30.212912, 37.980579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892288, 30.308655, 37.891544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009651, 30.592409, 38.147881>,  <37.080070, 30.762661, 38.301682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009651, 30.592409, 38.147881>,  <36.892288, 30.308655, 37.891544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009651, 30.592409, 38.147881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386602, 0.701137, -0.599121,
		-0.874328, -0.071964, 0.479971,
		0.293410, 0.709386, 0.640845,
		37.097675, 30.805225, 38.340134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268787, 30.622225, 38.078243>,  <36.892288, 30.308655, 37.891544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268787, 30.622225, 38.078243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535950, 30.891190, 38.205845>,  <36.696247, 31.052568, 38.282406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535950, 30.891190, 38.205845>,  <36.268787, 30.622225, 38.078243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535950, 30.891190, 38.205845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556239, 0.735777, -0.386303,
		-0.494474, 0.080568, 0.865450,
		0.667902, 0.672414, 0.319008,
		36.736320, 31.092915, 38.301548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894531, 31.181190, 38.355858>,  <36.268787, 30.622225, 38.078243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894531, 31.181190, 38.355858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250957, 31.348066, 38.284348>,  <36.464813, 31.448193, 38.241440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250957, 31.348066, 38.284348>,  <35.894531, 31.181190, 38.355858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250957, 31.348066, 38.284348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451730, 0.776821, -0.438736,
		-0.044158, 0.471701, 0.880652,
		0.891061, 0.417191, -0.178779,
		36.518276, 31.473223, 38.230713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797195, 31.823135, 38.540394>,  <35.894531, 31.181190, 38.355858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797195, 31.823135, 38.540394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104767, 31.822687, 38.284657>,  <36.289310, 31.822418, 38.131214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104767, 31.822687, 38.284657>,  <35.797195, 31.823135, 38.540394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104767, 31.822687, 38.284657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434771, 0.732265, -0.524177,
		0.468753, 0.681018, 0.562569,
		0.768924, -0.001121, -0.639339,
		36.335445, 31.822351, 38.092854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893772, 32.512062, 38.366196>,  <35.797195, 31.823135, 38.540394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893772, 32.512062, 38.366196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098778, 32.340637, 38.068562>,  <36.221783, 32.237782, 37.889980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098778, 32.340637, 38.068562>,  <35.893772, 32.512062, 38.366196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098778, 32.340637, 38.068562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362344, 0.677679, -0.639889,
		0.778481, 0.597569, 0.192037,
		0.512517, -0.428558, -0.744086,
		36.252533, 32.212070, 37.845337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153198, 33.057964, 38.009861>,  <35.893772, 32.512062, 38.366196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153198, 33.057964, 38.009861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152096, 32.748043, 37.756985>,  <36.151432, 32.562088, 37.605259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152096, 32.748043, 37.756985>,  <36.153198, 33.057964, 38.009861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152096, 32.748043, 37.756985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416613, 0.575609, -0.703638,
		0.909080, 0.261439, -0.324382,
		-0.002759, -0.774805, -0.632194,
		36.151268, 32.515602, 37.567326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259747, 33.351521, 37.414257>,  <36.153198, 33.057964, 38.009861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259747, 33.351521, 37.414257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067993, 33.009472, 37.335312>,  <35.952942, 32.804241, 37.287945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067993, 33.009472, 37.335312>,  <36.259747, 33.351521, 37.414257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067993, 33.009472, 37.335312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539503, 0.464525, -0.702249,
		0.692191, -0.230167, -0.684028,
		-0.479383, -0.855126, -0.197364,
		35.924179, 32.752934, 37.276104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128201, 33.373455, 36.758907>,  <36.259747, 33.351521, 37.414257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128201, 33.373455, 36.758907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869801, 33.086746, 36.863914>,  <35.714760, 32.914719, 36.926918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869801, 33.086746, 36.863914>,  <36.128201, 33.373455, 36.758907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869801, 33.086746, 36.863914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674433, 0.374878, -0.636087,
		0.357514, -0.587968, -0.725587,
		-0.646006, -0.716770, 0.262521,
		35.675999, 32.871716, 36.942669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854599, 33.205582, 36.145016>,  <36.128201, 33.373455, 36.758907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854599, 33.205582, 36.145016> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589149, 33.067249, 36.410347>,  <35.429882, 32.984249, 36.569546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589149, 33.067249, 36.410347>,  <35.854599, 33.205582, 36.145016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589149, 33.067249, 36.410347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747971, 0.292436, -0.595835,
		0.012077, -0.891561, -0.452739,
		-0.663621, -0.345832, 0.663331,
		35.390064, 32.963501, 36.609344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.587593, 27.358225, 41.642212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278339, 27.545643, 41.813202>,  <38.092789, 27.658094, 41.915794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.278339, 27.545643, 41.813202>,  <38.587593, 27.358225, 41.642212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278339, 27.545643, 41.813202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411996, 0.141420, -0.900144,
		-0.482212, -0.872047, 0.083703,
		-0.773131, 0.468545, 0.427474,
		38.046398, 27.686207, 41.941444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097481, 27.240801, 41.193890>,  <38.587593, 27.358225, 41.642212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097481, 27.240801, 41.193890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945759, 27.552094, 41.394085>,  <37.854725, 27.738869, 41.514202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.945759, 27.552094, 41.394085>,  <38.097481, 27.240801, 41.193890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945759, 27.552094, 41.394085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236028, 0.441630, -0.865594,
		-0.894661, -0.446453, 0.016171,
		-0.379305, 0.778230, 0.500485,
		37.831966, 27.785563, 41.544231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746944, 27.481419, 40.691151>,  <38.097481, 27.240801, 41.193890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746944, 27.481419, 40.691151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709049, 27.772596, 40.962776>,  <37.686310, 27.947302, 41.125751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.709049, 27.772596, 40.962776>,  <37.746944, 27.481419, 40.691151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709049, 27.772596, 40.962776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372224, 0.606749, -0.702357,
		-0.923295, -0.319305, 0.213473,
		-0.094742, 0.727943, 0.679061,
		37.680626, 27.990978, 41.166496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085690, 27.898735, 40.602787>,  <37.746944, 27.481419, 40.691151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085690, 27.898735, 40.602787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381046, 28.117731, 40.760281>,  <37.558262, 28.249128, 40.854778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.381046, 28.117731, 40.760281>,  <37.085690, 27.898735, 40.602787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381046, 28.117731, 40.760281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136296, 0.692971, -0.707965,
		-0.660452, 0.469093, 0.586307,
		0.738395, 0.547488, 0.393739,
		37.602566, 28.281977, 40.878403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783524, 28.529785, 40.805878>,  <37.085690, 27.898735, 40.602787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783524, 28.529785, 40.805878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172234, 28.607676, 40.752602>,  <37.405460, 28.654409, 40.720634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.172234, 28.607676, 40.752602>,  <36.783524, 28.529785, 40.805878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172234, 28.607676, 40.752602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234239, 0.729061, -0.643119,
		-0.028127, 0.656164, 0.754093,
		0.971772, 0.194727, -0.133193,
		37.463764, 28.666094, 40.712643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854801, 29.249775, 40.872135>,  <36.783524, 28.529785, 40.805878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854801, 29.249775, 40.872135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190899, 29.164259, 40.672825>,  <37.392559, 29.112949, 40.553238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190899, 29.164259, 40.672825>,  <36.854801, 29.249775, 40.872135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190899, 29.164259, 40.672825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106295, 0.836196, -0.538031,
		0.531680, 0.505044, 0.679887,
		0.840248, -0.213792, -0.498273,
		37.442974, 29.100121, 40.523342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314671, 29.831652, 40.899960>,  <36.854801, 29.249775, 40.872135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314671, 29.831652, 40.899960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426460, 29.613773, 40.583683>,  <37.493534, 29.483047, 40.393917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.426460, 29.613773, 40.583683>,  <37.314671, 29.831652, 40.899960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426460, 29.613773, 40.583683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038244, 0.829173, -0.557683,
		0.959390, 0.125620, 0.252566,
		0.279477, -0.544695, -0.790696,
		37.510303, 29.450365, 40.346474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677502, 30.214609, 40.606998>,  <37.314671, 29.831652, 40.899960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677502, 30.214609, 40.606998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665447, 29.939766, 40.316628>,  <37.658215, 29.774860, 40.142403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.665447, 29.939766, 40.316628>,  <37.677502, 30.214609, 40.606998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665447, 29.939766, 40.316628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046693, 0.724501, -0.687690,
		0.998455, -0.054619, 0.010251,
		-0.030134, -0.687106, -0.725932,
		37.656406, 29.733635, 40.098846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215664, 30.403025, 40.101948>,  <37.677502, 30.214609, 40.606998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215664, 30.403025, 40.101948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923306, 30.185604, 39.936855>,  <37.747890, 30.055151, 39.837799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.923306, 30.185604, 39.936855>,  <38.215664, 30.403025, 40.101948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923306, 30.185604, 39.936855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054639, 0.556195, -0.829254,
		0.680301, -0.628647, -0.376820,
		-0.730893, -0.543553, -0.412729,
		37.704037, 30.022539, 39.813038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898838, 30.351240, 40.060673>,  <38.215664, 30.403025, 40.101948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898838, 30.351240, 40.060673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049034, 30.677107, 40.237457>,  <39.139153, 30.872627, 40.343529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.049034, 30.677107, 40.237457>,  <38.898838, 30.351240, 40.060673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049034, 30.677107, 40.237457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065860, -0.499101, 0.864038,
		0.924485, -0.295327, -0.241060,
		0.375487, 0.814666, 0.441961,
		39.161678, 30.921507, 40.370045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449444, 30.157415, 40.373997>,  <38.898838, 30.351240, 40.060673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449444, 30.157415, 40.373997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346386, 30.494293, 40.563450>,  <39.284550, 30.696421, 40.677120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.346386, 30.494293, 40.563450>,  <39.449444, 30.157415, 40.373997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346386, 30.494293, 40.563450> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237031, -0.420115, 0.875968,
		0.936715, 0.337954, -0.091385,
		-0.257644, 0.842194, 0.473634,
		39.269093, 30.746952, 40.705540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961720, 30.281086, 40.855957>,  <39.449444, 30.157415, 40.373997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961720, 30.281086, 40.855957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679276, 30.522772, 41.003651>,  <39.509808, 30.667784, 41.092266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.679276, 30.522772, 41.003651>,  <39.961720, 30.281086, 40.855957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679276, 30.522772, 41.003651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233397, -0.293702, 0.926965,
		0.668529, 0.740719, 0.066365,
		-0.706112, 0.604214, 0.369230,
		39.467442, 30.704037, 41.114418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272301, 30.607998, 41.419147>,  <39.961720, 30.281086, 40.855957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272301, 30.607998, 41.419147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878410, 30.606306, 41.488766>,  <39.642075, 30.605291, 41.530537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.878410, 30.606306, 41.488766>,  <40.272301, 30.607998, 41.419147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878410, 30.606306, 41.488766> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170951, -0.212692, 0.962049,
		0.032951, 0.977110, 0.210167,
		-0.984728, -0.004228, 0.174046,
		39.582993, 30.605038, 41.540981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125023, 30.971546, 42.144707>,  <40.272301, 30.607998, 41.419147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125023, 30.971546, 42.144707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795670, 30.763094, 42.054859>,  <39.598057, 30.638023, 42.000950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795670, 30.763094, 42.054859>,  <40.125023, 30.971546, 42.144707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795670, 30.763094, 42.054859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001273, -0.394129, 0.919054,
		-0.567478, 0.757024, 0.323858,
		-0.823388, -0.521130, -0.224623,
		39.548653, 30.606754, 41.987473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766258, 31.050226, 42.736790>,  <40.125023, 30.971546, 42.144707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766258, 31.050226, 42.736790> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611366, 30.725700, 42.561596>,  <39.518433, 30.530985, 42.456482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.611366, 30.725700, 42.561596>,  <39.766258, 31.050226, 42.736790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611366, 30.725700, 42.561596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274254, -0.554896, 0.785414,
		-0.880250, 0.184016, 0.437376,
		-0.387226, -0.811313, -0.437980,
		39.495197, 30.482306, 42.430202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175659, 30.697849, 43.200089>,  <39.766258, 31.050226, 42.736790>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175659, 30.697849, 43.200089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336887, 30.445082, 42.935299>,  <39.433624, 30.293421, 42.776424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.336887, 30.445082, 42.935299>,  <39.175659, 30.697849, 43.200089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336887, 30.445082, 42.935299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151480, -0.667291, 0.729230,
		-0.902545, -0.394208, -0.173242,
		0.403071, -0.631920, -0.661975,
		39.457809, 30.255507, 42.736706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814331, 30.028255, 43.380711>,  <39.175659, 30.697849, 43.200089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814331, 30.028255, 43.380711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119926, 29.913082, 43.149742>,  <39.303284, 29.843979, 43.011162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.119926, 29.913082, 43.149742>,  <38.814331, 30.028255, 43.380711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119926, 29.913082, 43.149742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209469, -0.735758, 0.644037,
		-0.610282, -0.612989, -0.501798,
		0.763989, -0.287933, -0.577422,
		39.349125, 29.826702, 42.976517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767918, 29.299532, 43.368958>,  <38.814331, 30.028255, 43.380711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767918, 29.299532, 43.368958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145882, 29.406477, 43.293423>,  <39.372662, 29.470644, 43.248104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145882, 29.406477, 43.293423>,  <38.767918, 29.299532, 43.368958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145882, 29.406477, 43.293423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314731, -0.583654, 0.748527,
		0.089915, -0.766724, -0.635649,
		0.944913, 0.267362, -0.188832,
		39.429356, 29.486685, 43.236774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030811, 28.752584, 43.356606>,  <38.767918, 29.299532, 43.368958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030811, 28.752584, 43.356606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345127, 28.985193, 43.440865>,  <39.533718, 29.124758, 43.491421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345127, 28.985193, 43.440865>,  <39.030811, 28.752584, 43.356606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345127, 28.985193, 43.440865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259529, -0.619155, 0.741142,
		0.561411, -0.527713, -0.637446,
		0.785788, 0.581521, 0.210644,
		39.580864, 29.159649, 43.504059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385342, 28.310274, 43.832878>,  <39.030811, 28.752584, 43.356606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385342, 28.310274, 43.832878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593025, 28.652132, 43.834148>,  <39.717636, 28.857246, 43.834911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593025, 28.652132, 43.834148>,  <39.385342, 28.310274, 43.832878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593025, 28.652132, 43.834148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590420, -0.361371, 0.721675,
		0.617924, -0.372821, -0.692224,
		0.519205, 0.854643, 0.003179,
		39.748787, 28.908525, 43.835102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100517, 28.100527, 43.727997>,  <39.385342, 28.310274, 43.832878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100517, 28.100527, 43.727997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078098, 28.455336, 43.911324>,  <40.064648, 28.668221, 44.021320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.078098, 28.455336, 43.911324>,  <40.100517, 28.100527, 43.727997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078098, 28.455336, 43.911324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463750, -0.383388, 0.798718,
		0.884192, 0.257309, -0.389868,
		-0.056047, 0.887021, 0.458315,
		40.061283, 28.721441, 44.048817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776962, 28.290052, 43.831917>,  <40.100517, 28.100527, 43.727997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776962, 28.290052, 43.831917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558037, 28.509447, 44.084778>,  <40.426682, 28.641083, 44.236492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558037, 28.509447, 44.084778>,  <40.776962, 28.290052, 43.831917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558037, 28.509447, 44.084778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536276, -0.350051, 0.768031,
		0.642538, 0.759360, -0.102552,
		-0.547314, 0.548485, 0.632148,
		40.393845, 28.673992, 44.274422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228703, 28.743486, 44.199345>,  <40.776962, 28.290052, 43.831917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228703, 28.743486, 44.199345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903454, 28.685938, 44.424957>,  <40.708305, 28.651409, 44.560326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.903454, 28.685938, 44.424957>,  <41.228703, 28.743486, 44.199345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903454, 28.685938, 44.424957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579362, -0.106354, 0.808102,
		-0.056276, 0.983865, 0.169833,
		-0.813125, -0.143872, 0.564028,
		40.659515, 28.642776, 44.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.696190, 32.311916, 47.734879> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862606, 32.109341, 47.432774>,  <34.962456, 31.987795, 47.251511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862606, 32.109341, 47.432774>,  <34.696190, 32.311916, 47.734879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862606, 32.109341, 47.432774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309148, 0.702317, -0.641232,
		0.855181, 0.500270, 0.135631,
		0.416045, -0.506439, -0.755265,
		34.987419, 31.957409, 47.206196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063770, 32.779755, 47.397503>,  <34.696190, 32.311916, 47.734879>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063770, 32.779755, 47.397503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004890, 32.497620, 47.120132>,  <34.969563, 32.328339, 46.953709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.004890, 32.497620, 47.120132>,  <35.063770, 32.779755, 47.397503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004890, 32.497620, 47.120132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261686, 0.703851, -0.660389,
		0.953863, 0.084254, -0.288180,
		-0.147196, -0.705333, -0.693426,
		34.960732, 32.286018, 46.912106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544186, 32.849335, 46.837788>,  <35.063770, 32.779755, 47.397503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544186, 32.849335, 46.837788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227875, 32.660683, 46.681721>,  <35.038090, 32.547493, 46.588081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.227875, 32.660683, 46.681721>,  <35.544186, 32.849335, 46.837788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227875, 32.660683, 46.681721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124726, 0.748209, -0.651634,
		0.599260, -0.466634, -0.650492,
		-0.790779, -0.471631, -0.390171,
		34.990643, 32.519192, 46.564671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636913, 32.992718, 46.156723>,  <35.544186, 32.849335, 46.837788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636913, 32.992718, 46.156723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274731, 32.823132, 46.148743>,  <35.057419, 32.721382, 46.143955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.274731, 32.823132, 46.148743>,  <35.636913, 32.992718, 46.156723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274731, 32.823132, 46.148743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153674, 0.371302, -0.915707,
		0.395642, -0.826066, -0.401351,
		-0.905456, -0.423969, -0.019957,
		35.003094, 32.695942, 46.142757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576572, 32.657547, 45.496811>,  <35.636913, 32.992718, 46.156723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576572, 32.657547, 45.496811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197746, 32.692650, 45.620331>,  <34.970451, 32.713711, 45.694443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.197746, 32.692650, 45.620331>,  <35.576572, 32.657547, 45.496811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197746, 32.692650, 45.620331> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294636, 0.144346, -0.944645,
		-0.127475, -0.985628, -0.110848,
		-0.947069, 0.087759, 0.308802,
		34.913624, 32.718979, 45.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193794, 32.584858, 44.969036>,  <35.576572, 32.657547, 45.496811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193794, 32.584858, 44.969036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887733, 32.708836, 45.194771>,  <34.704098, 32.783222, 45.330212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887733, 32.708836, 45.194771>,  <35.193794, 32.584858, 44.969036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887733, 32.708836, 45.194771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539631, 0.169394, -0.824684,
		-0.351200, -0.935544, 0.037642,
		-0.765152, 0.309942, 0.564340,
		34.658188, 32.801819, 45.364071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557819, 32.156281, 44.891422>,  <35.193794, 32.584858, 44.969036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557819, 32.156281, 44.891422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422375, 32.519508, 44.990005>,  <34.341106, 32.737446, 45.049156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.422375, 32.519508, 44.990005>,  <34.557819, 32.156281, 44.891422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422375, 32.519508, 44.990005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547511, 0.022869, -0.836486,
		-0.765227, -0.418186, 0.489436,
		-0.338614, 0.908073, 0.246461,
		34.320789, 32.791931, 45.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862640, 32.149773, 44.744091>,  <34.557819, 32.156281, 44.891422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862640, 32.149773, 44.744091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976032, 32.533058, 44.759365>,  <34.044067, 32.763031, 44.768528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.976032, 32.533058, 44.759365>,  <33.862640, 32.149773, 44.744091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976032, 32.533058, 44.759365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432473, 0.163281, -0.886739,
		-0.855923, 0.234863, 0.460690,
		0.283484, 0.958216, 0.038184,
		34.061077, 32.820522, 44.770821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360317, 32.516258, 44.344234>,  <33.862640, 32.149773, 44.744091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360317, 32.516258, 44.344234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636665, 32.802788, 44.383396>,  <33.802475, 32.974705, 44.406895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.636665, 32.802788, 44.383396>,  <33.360317, 32.516258, 44.344234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636665, 32.802788, 44.383396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280030, 0.389977, -0.877213,
		-0.666549, 0.578619, 0.470013,
		0.690866, 0.716323, 0.097908,
		33.843925, 33.017685, 44.412769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053921, 33.092335, 44.319389>,  <33.360317, 32.516258, 44.344234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053921, 33.092335, 44.319389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413963, 33.207497, 44.188591>,  <33.629990, 33.276592, 44.110111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.413963, 33.207497, 44.188591>,  <33.053921, 33.092335, 44.319389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413963, 33.207497, 44.188591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428065, 0.444715, -0.786758,
		-0.081091, 0.848139, 0.523531,
		0.900103, 0.287904, -0.326996,
		33.683994, 33.293869, 44.090492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043587, 33.814987, 44.070663>,  <33.053921, 33.092335, 44.319389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043587, 33.814987, 44.070663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383633, 33.680145, 43.908844>,  <33.587662, 33.599239, 43.811752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383633, 33.680145, 43.908844>,  <33.043587, 33.814987, 44.070663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383633, 33.680145, 43.908844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245823, 0.425352, -0.871003,
		0.465698, 0.839902, 0.278730,
		0.850116, -0.337106, -0.404553,
		33.638668, 33.579014, 43.787479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366474, 34.354588, 43.595760>,  <33.043587, 33.814987, 44.070663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366474, 34.354588, 43.595760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563663, 34.032021, 43.465122>,  <33.681976, 33.838482, 43.386738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.563663, 34.032021, 43.465122>,  <33.366474, 34.354588, 43.595760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563663, 34.032021, 43.465122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137383, 0.298520, -0.944464,
		0.859127, 0.510468, 0.036375,
		0.492978, -0.806417, -0.326596,
		33.711555, 33.790096, 43.367142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792801, 34.672070, 43.129120>,  <33.366474, 34.354588, 43.595760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792801, 34.672070, 43.129120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.753750, 34.286854, 43.028698>,  <33.730320, 34.055725, 42.968445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.753750, 34.286854, 43.028698>,  <33.792801, 34.672070, 43.129120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753750, 34.286854, 43.028698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130277, 0.262458, -0.956109,
		0.986660, -0.060631, -0.151084,
		-0.097623, -0.963037, -0.251058,
		33.724464, 33.997944, 42.953381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195580, 34.608292, 42.605968>,  <33.792801, 34.672070, 43.129120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195580, 34.608292, 42.605968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975021, 34.276173, 42.573547>,  <33.842686, 34.076900, 42.554096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975021, 34.276173, 42.573547>,  <34.195580, 34.608292, 42.605968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975021, 34.276173, 42.573547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100368, 0.162475, -0.981595,
		0.828183, -0.533114, -0.172924,
		-0.551397, -0.830296, -0.081051,
		33.809601, 34.027084, 42.549232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962139, 34.358318, 42.466831>,  <34.195580, 34.608292, 42.605968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962139, 34.358318, 42.466831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282219, 34.595467, 42.430656>,  <35.474266, 34.737755, 42.408951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.282219, 34.595467, 42.430656>,  <34.962139, 34.358318, 42.466831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282219, 34.595467, 42.430656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340550, -0.325069, 0.882245,
		0.493664, -0.736770, -0.462024,
		0.800201, 0.592875, -0.090432,
		35.522278, 34.773331, 42.403526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600769, 34.056183, 42.587952>,  <34.962139, 34.358318, 42.466831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600769, 34.056183, 42.587952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664566, 34.443108, 42.666805>,  <35.702843, 34.675262, 42.714119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.664566, 34.443108, 42.666805>,  <35.600769, 34.056183, 42.587952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664566, 34.443108, 42.666805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401663, -0.246004, 0.882128,
		0.901792, -0.061510, -0.427771,
		0.159493, 0.967315, 0.197138,
		35.712414, 34.733303, 42.725948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232090, 33.955742, 42.900311>,  <35.600769, 34.056183, 42.587952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232090, 33.955742, 42.900311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112736, 34.324787, 42.998081>,  <36.041122, 34.546215, 43.056744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.112736, 34.324787, 42.998081>,  <36.232090, 33.955742, 42.900311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112736, 34.324787, 42.998081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590730, -0.022632, 0.806552,
		0.749671, 0.385053, -0.538264,
		-0.298384, 0.922617, 0.244429,
		36.023220, 34.601574, 43.071411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839787, 34.335213, 43.038200>,  <36.232090, 33.955742, 42.900311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839787, 34.335213, 43.038200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526802, 34.498665, 43.226147>,  <36.339012, 34.596737, 43.338913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.526802, 34.498665, 43.226147>,  <36.839787, 34.335213, 43.038200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526802, 34.498665, 43.226147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516677, 0.004885, 0.856166,
		0.347560, 0.912687, -0.214953,
		-0.782462, 0.408631, 0.469867,
		36.292065, 34.621254, 43.367107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093334, 34.961201, 43.399124>,  <36.839787, 34.335213, 43.038200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093334, 34.961201, 43.399124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761055, 34.830273, 43.579258>,  <36.561687, 34.751717, 43.687340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.761055, 34.830273, 43.579258>,  <37.093334, 34.961201, 43.399124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761055, 34.830273, 43.579258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532458, -0.230904, 0.814354,
		-0.162567, 0.916268, 0.366094,
		-0.830699, -0.327317, 0.450336,
		36.511845, 34.732079, 43.714359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287113, 35.115288, 44.075508>,  <37.093334, 34.961201, 43.399124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287113, 35.115288, 44.075508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987156, 34.851337, 44.094353>,  <36.807182, 34.692966, 44.105659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.987156, 34.851337, 44.094353>,  <37.287113, 35.115288, 44.075508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987156, 34.851337, 44.094353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428567, -0.430314, 0.794456,
		-0.503974, 0.615946, 0.605492,
		-0.749894, -0.659879, 0.047107,
		36.762188, 34.653374, 44.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042637, 35.115738, 44.742981>,  <37.287113, 35.115288, 44.075508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042637, 35.115738, 44.742981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935299, 34.760941, 44.592655>,  <36.870895, 34.548061, 44.502460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.935299, 34.760941, 44.592655>,  <37.042637, 35.115738, 44.742981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935299, 34.760941, 44.592655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319087, -0.449943, 0.834107,
		-0.908941, 0.103911, 0.403768,
		-0.268345, -0.886992, -0.375815,
		36.854797, 34.494843, 44.479912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666138, 34.832081, 45.318760>,  <37.042637, 35.115738, 44.742981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666138, 34.832081, 45.318760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760391, 34.516014, 45.092445>,  <36.816944, 34.326374, 44.956657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.760391, 34.516014, 45.092445>,  <36.666138, 34.832081, 45.318760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760391, 34.516014, 45.092445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209281, -0.527263, 0.823526,
		-0.949041, -0.312459, 0.041126,
		0.235634, -0.790167, -0.565785,
		36.831081, 34.278965, 44.922710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313316, 34.249496, 45.553749>,  <36.666138, 34.832081, 45.318760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313316, 34.249496, 45.553749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624622, 34.071060, 45.376972>,  <36.811405, 33.964001, 45.270905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.624622, 34.071060, 45.376972>,  <36.313316, 34.249496, 45.553749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624622, 34.071060, 45.376972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243780, -0.433957, 0.867325,
		-0.578688, -0.782743, -0.228985,
		0.778262, -0.446089, -0.441942,
		36.858101, 33.937233, 45.244389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329391, 33.648766, 45.941483>,  <36.313316, 34.249496, 45.553749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329391, 33.648766, 45.941483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689873, 33.726795, 45.786682>,  <36.906162, 33.773613, 45.693802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.689873, 33.726795, 45.786682>,  <36.329391, 33.648766, 45.941483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689873, 33.726795, 45.786682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431844, -0.479511, 0.763924,
		-0.036550, -0.855579, -0.516381,
		0.901207, 0.195075, -0.387003,
		36.960236, 33.785316, 45.670582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494667, 33.018333, 45.783459>,  <36.329391, 33.648766, 45.941483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494667, 33.018333, 45.783459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823250, 33.246204, 45.773026>,  <37.020397, 33.382927, 45.766766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.823250, 33.246204, 45.773026>,  <36.494667, 33.018333, 45.783459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823250, 33.246204, 45.773026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473799, -0.656317, 0.587165,
		0.317381, -0.494684, -0.809047,
		0.821452, 0.569681, -0.026079,
		37.069687, 33.417110, 45.765202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037518, 32.588993, 45.520210>,  <36.494667, 33.018333, 45.783459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037518, 32.588993, 45.520210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224117, 32.890366, 45.705559>,  <37.336079, 33.071190, 45.816769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.224117, 32.890366, 45.705559>,  <37.037518, 32.588993, 45.520210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224117, 32.890366, 45.705559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497843, -0.656663, 0.566521,
		0.731117, -0.033593, -0.681425,
		0.466498, 0.753436, 0.463373,
		37.364067, 33.116398, 45.844570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671993, 32.360447, 45.662708>,  <37.037518, 32.588993, 45.520210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671993, 32.360447, 45.662708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646740, 32.677197, 45.905674>,  <37.631588, 32.867245, 46.051453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.646740, 32.677197, 45.905674>,  <37.671993, 32.360447, 45.662708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646740, 32.677197, 45.905674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497126, -0.502797, 0.707150,
		0.865378, 0.346609, -0.361915,
		-0.063135, 0.791869, 0.607418,
		37.627800, 32.914757, 46.087898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220245, 32.315083, 46.024586>,  <37.671993, 32.360447, 45.662708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220245, 32.315083, 46.024586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989826, 32.556469, 46.245129>,  <37.851574, 32.701302, 46.377453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989826, 32.556469, 46.245129>,  <38.220245, 32.315083, 46.024586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989826, 32.556469, 46.245129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282179, -0.486238, 0.827011,
		0.767164, 0.631982, 0.109812,
		-0.576051, 0.603466, 0.551356,
		37.817013, 32.737511, 46.410534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763767, 32.771080, 45.816872>,  <38.220245, 32.315083, 46.024586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763767, 32.771080, 45.816872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100460, 32.727695, 45.605316>,  <39.302475, 32.701664, 45.478382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.100460, 32.727695, 45.605316>,  <38.763767, 32.771080, 45.816872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100460, 32.727695, 45.605316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508655, 0.169090, -0.844203,
		0.180996, 0.979614, 0.087158,
		0.841731, -0.108464, -0.528891,
		39.352978, 32.695156, 45.446648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827019, 33.406845, 45.434364>,  <38.763767, 32.771080, 45.816872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827019, 33.406845, 45.434364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067677, 33.144417, 45.252113>,  <39.212070, 32.986961, 45.142765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067677, 33.144417, 45.252113>,  <38.827019, 33.406845, 45.434364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067677, 33.144417, 45.252113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398957, 0.247347, -0.882979,
		0.691995, 0.713015, -0.112929,
		0.601644, -0.656071, -0.455625,
		39.248169, 32.947594, 45.115425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362015, 33.759987, 44.928089>,  <38.827019, 33.406845, 45.434364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362015, 33.759987, 44.928089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325634, 33.386631, 44.789230>,  <39.303806, 33.162617, 44.705917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.325634, 33.386631, 44.789230>,  <39.362015, 33.759987, 44.928089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325634, 33.386631, 44.789230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282600, 0.358449, -0.889748,
		0.954917, 0.017182, -0.296376,
		-0.090948, -0.933391, -0.347144,
		39.298351, 33.106613, 44.685085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641167, 33.739216, 44.315983>,  <39.362015, 33.759987, 44.928089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641167, 33.739216, 44.315983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420235, 33.407066, 44.286572>,  <39.287674, 33.207775, 44.268925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.420235, 33.407066, 44.286572>,  <39.641167, 33.739216, 44.315983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420235, 33.407066, 44.286572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169541, 0.198260, -0.965375,
		0.816201, -0.520741, -0.250288,
		-0.552333, -0.830374, -0.073533,
		39.254536, 33.157955, 44.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859455, 33.295319, 43.808289>,  <39.641167, 33.739216, 44.315983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859455, 33.295319, 43.808289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475666, 33.191006, 43.850994>,  <39.245392, 33.128418, 43.876617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.475666, 33.191006, 43.850994>,  <39.859455, 33.295319, 43.808289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475666, 33.191006, 43.850994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182540, 0.286547, -0.940516,
		0.214675, -0.921891, -0.322538,
		-0.959476, -0.260782, 0.106768,
		39.187824, 33.112770, 43.883022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727722, 32.931026, 43.209801>,  <39.859455, 33.295319, 43.808289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727722, 32.931026, 43.209801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.378529, 33.049179, 43.365055>,  <39.169014, 33.120071, 43.458210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.378529, 33.049179, 43.365055>,  <39.727722, 32.931026, 43.209801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378529, 33.049179, 43.365055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291451, 0.322176, -0.900699,
		-0.391097, -0.899419, -0.195165,
		-0.872983, 0.295379, 0.388139,
		39.116634, 33.137794, 43.481495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353958, 32.800480, 42.678192>,  <39.727722, 32.931026, 43.209801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353958, 32.800480, 42.678192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126289, 33.036419, 42.907318>,  <38.989689, 33.177982, 43.044796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126289, 33.036419, 42.907318>,  <39.353958, 32.800480, 42.678192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126289, 33.036419, 42.907318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327886, 0.476054, -0.816005,
		-0.754010, -0.652269, -0.077555,
		-0.569174, 0.589846, 0.572819,
		38.955536, 33.213371, 43.079163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648109, 32.815582, 42.392342>,  <39.353958, 32.800480, 42.678192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648109, 32.815582, 42.392342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681114, 33.145519, 42.616066>,  <38.700916, 33.343483, 42.750301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.681114, 33.145519, 42.616066>,  <38.648109, 32.815582, 42.392342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681114, 33.145519, 42.616066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126157, 0.565353, -0.815144,
		-0.988572, -0.003299, 0.150710,
		0.082516, 0.824842, 0.559309,
		38.705868, 33.392971, 42.783859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022057, 33.262558, 42.235859>,  <38.648109, 32.815582, 42.392342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022057, 33.262558, 42.235859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.323093, 33.488670, 42.370953>,  <38.503716, 33.624336, 42.452011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.323093, 33.488670, 42.370953>,  <38.022057, 33.262558, 42.235859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323093, 33.488670, 42.370953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149560, 0.646231, -0.748343,
		-0.641281, 0.512683, 0.570890,
		0.752589, 0.565280, 0.337739,
		38.548870, 33.658253, 42.472275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725452, 33.934204, 42.312546>,  <38.022057, 33.262558, 42.235859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725452, 33.934204, 42.312546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114471, 34.023533, 42.286388>,  <38.347881, 34.077129, 42.270695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.114471, 34.023533, 42.286388>,  <37.725452, 33.934204, 42.312546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.114471, 34.023533, 42.286388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189617, 0.597646, -0.779015,
		-0.134891, 0.770030, 0.623585,
		0.972548, 0.223324, -0.065394,
		38.406235, 34.090530, 42.266769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841625, 34.673092, 42.335991>,  <37.725452, 33.934204, 42.312546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841625, 34.673092, 42.335991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175377, 34.545506, 42.156181>,  <38.375629, 34.468956, 42.048294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.175377, 34.545506, 42.156181>,  <37.841625, 34.673092, 42.335991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175377, 34.545506, 42.156181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279823, 0.457515, -0.844026,
		0.474876, 0.830026, 0.292489,
		0.834381, -0.318962, -0.449523,
		38.425690, 34.449818, 42.021324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995842, 35.167606, 41.974266>,  <37.841625, 34.673092, 42.335991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995842, 35.167606, 41.974266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193138, 34.870895, 41.792507>,  <38.311516, 34.692867, 41.683453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.193138, 34.870895, 41.792507>,  <37.995842, 35.167606, 41.974266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193138, 34.870895, 41.792507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232059, 0.391223, -0.890558,
		0.838367, 0.544708, 0.020831,
		0.493244, -0.741780, -0.454393,
		38.341110, 34.648361, 41.656189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299091, 35.559593, 41.435482>,  <37.995842, 35.167606, 41.974266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299091, 35.559593, 41.435482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.337437, 35.182446, 41.307850>,  <38.360443, 34.956158, 41.231270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.337437, 35.182446, 41.307850>,  <38.299091, 35.559593, 41.435482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337437, 35.182446, 41.307850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038376, 0.323818, -0.945341,
		0.994655, 0.078374, 0.067225,
		0.095859, -0.942868, -0.319079,
		38.366196, 34.899586, 41.212128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928555, 35.511349, 41.036430>,  <38.299091, 35.559593, 41.435482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928555, 35.511349, 41.036430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657043, 35.231480, 40.947235>,  <38.494137, 35.063560, 40.893719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657043, 35.231480, 40.947235>,  <38.928555, 35.511349, 41.036430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657043, 35.231480, 40.947235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067484, 0.361799, -0.929811,
		0.731235, -0.616088, -0.292798,
		-0.678779, -0.699669, -0.222984,
		38.453411, 35.021580, 40.880341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.919573, 40.667564, 30.079838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138685, 40.335865, 30.035500>,  <28.270153, 40.136845, 30.008896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.138685, 40.335865, 30.035500>,  <27.919573, 40.667564, 30.079838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138685, 40.335865, 30.035500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706191, -0.529348, 0.470198,
		-0.448584, -0.179289, -0.875573,
		0.547784, -0.829245, -0.110845,
		28.303020, 40.087093, 30.002245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481504, 40.218609, 29.965874>,  <27.919573, 40.667564, 30.079838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481504, 40.218609, 29.965874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782742, 39.973095, 30.060637>,  <27.963484, 39.825787, 30.117495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782742, 39.973095, 30.060637>,  <27.481504, 40.218609, 29.965874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782742, 39.973095, 30.060637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619907, -0.541365, 0.568014,
		-0.220384, -0.574626, -0.788185,
		0.753092, -0.613783, 0.236906,
		28.008669, 39.788960, 30.131708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339525, 39.495037, 29.808445>,  <27.481504, 40.218609, 29.965874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339525, 39.495037, 29.808445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625856, 39.445995, 30.083418>,  <27.797655, 39.416569, 30.248402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.625856, 39.445995, 30.083418>,  <27.339525, 39.495037, 29.808445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.625856, 39.445995, 30.083418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498380, -0.779249, 0.379984,
		0.489092, -0.614604, -0.618911,
		0.715826, -0.122606, 0.687431,
		27.840605, 39.409214, 30.289648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428196, 38.784050, 29.943302>,  <27.339525, 39.495037, 29.808445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428196, 38.784050, 29.943302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580137, 38.956680, 30.270582>,  <27.671303, 39.060261, 30.466949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580137, 38.956680, 30.270582>,  <27.428196, 38.784050, 29.943302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580137, 38.956680, 30.270582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349295, -0.752098, 0.558875,
		0.856566, -0.498083, -0.134938,
		0.379853, 0.431580, 0.818199,
		27.694094, 39.086155, 30.516043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.829247, 38.287117, 30.301237>,  <27.428196, 38.784050, 29.943302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.829247, 38.287117, 30.301237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747751, 38.559288, 30.582808>,  <27.698854, 38.722591, 30.751749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747751, 38.559288, 30.582808>,  <27.829247, 38.287117, 30.301237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747751, 38.559288, 30.582808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249749, -0.731341, 0.634639,
		0.946634, -0.046506, 0.318937,
		-0.203737, 0.680425, 0.703927,
		27.686630, 38.763416, 30.793985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137123, 38.045780, 30.830723>,  <27.829247, 38.287117, 30.301237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137123, 38.045780, 30.830723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859110, 38.293858, 30.976206>,  <27.692301, 38.442703, 31.063496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859110, 38.293858, 30.976206>,  <28.137123, 38.045780, 30.830723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859110, 38.293858, 30.976206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212221, -0.660296, 0.720397,
		0.686942, 0.423515, 0.590547,
		-0.695035, 0.620197, 0.363706,
		27.650599, 38.479916, 31.085318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414381, 38.381252, 31.414553>,  <28.137123, 38.045780, 30.830723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414381, 38.381252, 31.414553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020344, 38.435928, 31.456320>,  <27.783920, 38.468735, 31.481380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020344, 38.435928, 31.456320>,  <28.414381, 38.381252, 31.414553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020344, 38.435928, 31.456320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017696, -0.523280, 0.851977,
		0.171096, 0.841126, 0.513062,
		-0.985095, 0.136691, 0.104416,
		27.724815, 38.476936, 31.487644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357635, 38.488304, 32.104015>,  <28.414381, 38.381252, 31.414553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357635, 38.488304, 32.104015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993143, 38.374073, 31.985283>,  <27.774448, 38.305534, 31.914045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.993143, 38.374073, 31.985283>,  <28.357635, 38.488304, 32.104015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.993143, 38.374073, 31.985283> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093482, -0.558444, 0.824258,
		-0.401150, 0.778836, 0.482174,
		-0.911230, -0.285577, -0.296827,
		27.719774, 38.288399, 31.896235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006058, 38.496353, 32.668056>,  <28.357635, 38.488304, 32.104015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006058, 38.496353, 32.668056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764614, 38.274815, 32.438656>,  <27.619747, 38.141891, 32.301014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.764614, 38.274815, 32.438656>,  <28.006058, 38.496353, 32.668056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764614, 38.274815, 32.438656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183216, -0.603717, 0.775859,
		-0.775943, 0.573391, 0.262935,
		-0.603609, -0.553849, -0.573505,
		27.583532, 38.108662, 32.266605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.312279, 38.553139, 32.876247>,  <28.006058, 38.496353, 32.668056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.312279, 38.553139, 32.876247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374788, 38.199726, 32.699631>,  <27.412294, 37.987679, 32.593662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.374788, 38.199726, 32.699631>,  <27.312279, 38.553139, 32.876247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.374788, 38.199726, 32.699631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265956, -0.468163, 0.842669,
		-0.951234, -0.014257, -0.308141,
		0.156274, -0.883527, -0.441540,
		27.421671, 37.934669, 32.567169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933546, 38.108650, 33.328197>,  <27.312279, 38.553139, 32.876247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933546, 38.108650, 33.328197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082485, 37.841541, 33.070377>,  <27.171848, 37.681274, 32.915688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.082485, 37.841541, 33.070377>,  <26.933546, 38.108650, 33.328197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082485, 37.841541, 33.070377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024525, -0.687162, 0.726091,
		-0.927770, -0.286165, -0.239485,
		0.372346, -0.667771, -0.644546,
		27.194189, 37.641209, 32.877014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543564, 37.490871, 33.461884>,  <26.933546, 38.108650, 33.328197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543564, 37.490871, 33.461884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873901, 37.374332, 33.268764>,  <27.072104, 37.304409, 33.152893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873901, 37.374332, 33.268764>,  <26.543564, 37.490871, 33.461884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873901, 37.374332, 33.268764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113440, -0.752840, 0.648354,
		-0.552370, -0.590208, -0.588678,
		0.825844, -0.291352, -0.482800,
		27.121655, 37.286926, 33.123924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539291, 36.790096, 33.247211>,  <26.543564, 37.490871, 33.461884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539291, 36.790096, 33.247211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931126, 36.862865, 33.281433>,  <27.166225, 36.906525, 33.301968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.931126, 36.862865, 33.281433>,  <26.539291, 36.790096, 33.247211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.931126, 36.862865, 33.281433> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084983, -0.760417, 0.643850,
		0.182189, -0.623435, -0.760353,
		0.979584, 0.181920, 0.085558,
		27.225000, 36.917442, 33.307102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801792, 36.136639, 33.401966>,  <26.539291, 36.790096, 33.247211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801792, 36.136639, 33.401966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117809, 36.370697, 33.475109>,  <27.307419, 36.511131, 33.518997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117809, 36.370697, 33.475109>,  <26.801792, 36.136639, 33.401966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117809, 36.370697, 33.475109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258779, -0.588709, 0.765803,
		0.555760, -0.557695, -0.616528,
		0.790040, 0.585147, 0.182862,
		27.354822, 36.546242, 33.529968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.380348, 35.689224, 33.256641>,  <26.801792, 36.136639, 33.401966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.380348, 35.689224, 33.256641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520916, 35.971352, 33.502907>,  <27.605257, 36.140629, 33.650665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.520916, 35.971352, 33.502907>,  <27.380348, 35.689224, 33.256641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.520916, 35.971352, 33.502907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403277, -0.707507, 0.580346,
		0.844910, 0.044338, -0.533068,
		0.351419, 0.705314, 0.615660,
		27.626341, 36.182945, 33.687603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126316, 35.531147, 33.464523>,  <27.380348, 35.689224, 33.256641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126316, 35.531147, 33.464523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955772, 35.764259, 33.741241>,  <27.853445, 35.904125, 33.907272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.955772, 35.764259, 33.741241>,  <28.126316, 35.531147, 33.464523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.955772, 35.764259, 33.741241> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381182, -0.577815, 0.721685,
		0.820315, 0.571399, 0.024212,
		-0.426360, 0.582780, 0.691798,
		27.827864, 35.939095, 33.948780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643007, 35.544365, 33.930569>,  <28.126316, 35.531147, 33.464523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643007, 35.544365, 33.930569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318161, 35.654293, 34.136459>,  <28.123253, 35.720249, 34.259995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.318161, 35.654293, 34.136459>,  <28.643007, 35.544365, 33.930569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318161, 35.654293, 34.136459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340928, -0.492412, 0.800811,
		0.473539, 0.825835, 0.306199,
		-0.812114, 0.274824, 0.514726,
		28.074528, 35.736740, 34.290878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898420, 35.685848, 34.563385>,  <28.643007, 35.544365, 33.930569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898420, 35.685848, 34.563385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505997, 35.639458, 34.625450>,  <28.270542, 35.611626, 34.662689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505997, 35.639458, 34.625450>,  <28.898420, 35.685848, 34.563385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505997, 35.639458, 34.625450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193573, -0.556370, 0.808073,
		-0.007388, 0.822801, 0.568281,
		-0.981058, -0.115975, 0.155162,
		28.211679, 35.604664, 34.671997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814095, 35.497551, 35.354847>,  <28.898420, 35.685848, 34.563385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814095, 35.497551, 35.354847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465830, 35.389374, 35.190502>,  <28.256872, 35.324467, 35.091896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.465830, 35.389374, 35.190502>,  <28.814095, 35.497551, 35.354847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465830, 35.389374, 35.190502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122817, -0.689302, 0.713987,
		-0.476305, 0.672102, 0.566933,
		-0.870660, -0.270447, -0.410864,
		28.204632, 35.308239, 35.067242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226830, 35.651577, 35.897903>,  <28.814095, 35.497551, 35.354847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226830, 35.651577, 35.897903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164478, 35.353455, 35.638607>,  <28.127068, 35.174580, 35.483028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.164478, 35.353455, 35.638607>,  <28.226830, 35.651577, 35.897903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.164478, 35.353455, 35.638607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236624, -0.608979, 0.757069,
		-0.959016, 0.271400, -0.081431,
		-0.155879, -0.745309, -0.648241,
		28.117714, 35.129860, 35.444134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613110, 35.827961, 36.506874>,  <28.226830, 35.651577, 35.897903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613110, 35.827961, 36.506874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999046, 35.875172, 36.600807>,  <29.230608, 35.903496, 36.657169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.999046, 35.875172, 36.600807>,  <28.613110, 35.827961, 36.506874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.999046, 35.875172, 36.600807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091134, 0.687832, -0.720127,
		-0.246519, 0.716211, 0.652894,
		0.964843, 0.118024, 0.234835,
		29.288500, 35.910580, 36.671257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819109, 36.511784, 36.536564>,  <28.613110, 35.827961, 36.506874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819109, 36.511784, 36.536564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179018, 36.340111, 36.505047>,  <29.394964, 36.237106, 36.486137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.179018, 36.340111, 36.505047>,  <28.819109, 36.511784, 36.536564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179018, 36.340111, 36.505047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303649, 0.745518, -0.593296,
		0.313374, 0.509907, 0.801119,
		0.899774, -0.429182, -0.078794,
		29.448950, 36.211357, 36.481407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312992, 37.011822, 36.652058>,  <28.819109, 36.511784, 36.536564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312992, 37.011822, 36.652058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499334, 36.749424, 36.414520>,  <29.611139, 36.591988, 36.271999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.499334, 36.749424, 36.414520>,  <29.312992, 37.011822, 36.652058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499334, 36.749424, 36.414520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371735, 0.754112, -0.541414,
		0.802988, 0.031469, 0.595164,
		0.465858, -0.655992, -0.593844,
		29.639091, 36.552628, 36.236366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966059, 37.374592, 36.490025>,  <29.312992, 37.011822, 36.652058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966059, 37.374592, 36.490025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914637, 37.083408, 36.220642>,  <29.883783, 36.908699, 36.059013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.914637, 37.083408, 36.220642>,  <29.966059, 37.374592, 36.490025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.914637, 37.083408, 36.220642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270879, 0.627495, -0.729982,
		0.953990, -0.276270, 0.116521,
		-0.128556, -0.727959, -0.673460,
		29.876070, 36.865021, 36.018604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514294, 37.429615, 36.096958>,  <29.966059, 37.374592, 36.490025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514294, 37.429615, 36.096958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271362, 37.214367, 35.863178>,  <30.125603, 37.085217, 35.722912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271362, 37.214367, 35.863178>,  <30.514294, 37.429615, 36.096958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271362, 37.214367, 35.863178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241165, 0.576070, -0.781014,
		0.756963, -0.615279, -0.220087,
		-0.607327, -0.538122, -0.584447,
		30.089165, 37.052929, 35.687843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890722, 37.298767, 35.515316>,  <30.514294, 37.429615, 36.096958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890722, 37.298767, 35.515316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521294, 37.220337, 35.383514>,  <30.299637, 37.173279, 35.304436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.521294, 37.220337, 35.383514>,  <30.890722, 37.298767, 35.515316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521294, 37.220337, 35.383514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190927, 0.510063, -0.838679,
		0.332510, -0.837491, -0.433643,
		-0.923571, -0.196075, -0.329501,
		30.244223, 37.161514, 35.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906214, 37.216888, 34.801620>,  <30.890722, 37.298767, 35.515316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906214, 37.216888, 34.801620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513479, 37.281971, 34.840652>,  <30.277838, 37.321022, 34.864071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.513479, 37.281971, 34.840652>,  <30.906214, 37.216888, 34.801620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513479, 37.281971, 34.840652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014657, 0.447733, -0.894047,
		-0.189162, -0.879238, -0.437216,
		-0.981836, 0.162711, 0.097581,
		30.218927, 37.330784, 34.869926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688475, 37.053543, 34.114040>,  <30.906214, 37.216888, 34.801620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688475, 37.053543, 34.114040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389763, 37.247643, 34.295963>,  <30.210535, 37.364101, 34.405117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.389763, 37.247643, 34.295963>,  <30.688475, 37.053543, 34.114040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389763, 37.247643, 34.295963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183892, 0.506537, -0.842380,
		-0.639143, -0.712708, -0.289038,
		-0.746780, 0.485249, 0.454812,
		30.165730, 37.393219, 34.432407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283552, 37.124195, 33.572781>,  <30.688475, 37.053543, 34.114040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283552, 37.124195, 33.572781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162453, 37.377129, 33.858017>,  <30.089792, 37.528889, 34.029160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162453, 37.377129, 33.858017>,  <30.283552, 37.124195, 33.572781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162453, 37.377129, 33.858017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122356, 0.716221, -0.687064,
		-0.945183, -0.295259, -0.139466,
		-0.302750, 0.632337, 0.713086,
		30.071627, 37.566830, 34.071941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593985, 37.390549, 33.444702>,  <30.283552, 37.124195, 33.572781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593985, 37.390549, 33.444702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770660, 37.671272, 33.668266>,  <29.876665, 37.839706, 33.802402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.770660, 37.671272, 33.668266>,  <29.593985, 37.390549, 33.444702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770660, 37.671272, 33.668266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159140, 0.674377, -0.721034,
		-0.882942, 0.229528, 0.409550,
		0.441688, 0.701807, 0.558908,
		29.903168, 37.881813, 33.835938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138109, 38.055233, 33.348766>,  <29.593985, 37.390549, 33.444702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138109, 38.055233, 33.348766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490973, 38.170422, 33.497826>,  <29.702690, 38.239536, 33.587261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.490973, 38.170422, 33.497826>,  <29.138109, 38.055233, 33.348766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490973, 38.170422, 33.497826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004828, 0.785698, -0.618592,
		-0.470924, 0.547496, 0.691721,
		0.882160, 0.287970, 0.372647,
		29.755621, 38.256813, 33.609619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090769, 38.770149, 33.422245>,  <29.138109, 38.055233, 33.348766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090769, 38.770149, 33.422245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480610, 38.680580, 33.423439>,  <29.714514, 38.626839, 33.424156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480610, 38.680580, 33.423439>,  <29.090769, 38.770149, 33.422245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480610, 38.680580, 33.423439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158615, 0.680845, -0.715046,
		0.158083, 0.697359, 0.699071,
		0.974603, -0.223920, 0.002982,
		29.772991, 38.613403, 33.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419270, 39.476501, 33.366192>,  <29.090769, 38.770149, 33.422245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419270, 39.476501, 33.366192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667791, 39.190708, 33.237511>,  <29.816904, 39.019234, 33.160301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667791, 39.190708, 33.237511>,  <29.419270, 39.476501, 33.366192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667791, 39.190708, 33.237511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202444, 0.542990, -0.814972,
		0.756965, 0.441220, 0.482005,
		0.621306, -0.714484, -0.321702,
		29.854183, 38.976364, 33.140999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952532, 39.903366, 33.130070>,  <29.419270, 39.476501, 33.366192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952532, 39.903366, 33.130070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029673, 39.547791, 32.963894>,  <30.075956, 39.334446, 32.864189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.029673, 39.547791, 32.963894>,  <29.952532, 39.903366, 33.130070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.029673, 39.547791, 32.963894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264341, 0.454801, -0.850459,
		0.944951, 0.054194, 0.322692,
		0.192851, -0.888943, -0.415439,
		30.087528, 39.281109, 32.839264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525070, 40.043140, 32.833256>,  <29.952532, 39.903366, 33.130070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525070, 40.043140, 32.833256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393068, 39.716850, 32.643230>,  <30.313868, 39.521076, 32.529217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.393068, 39.716850, 32.643230>,  <30.525070, 40.043140, 32.833256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393068, 39.716850, 32.643230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152987, 0.450381, -0.879631,
		0.931499, -0.362961, -0.023832,
		-0.330006, -0.815730, -0.475059,
		30.294067, 39.472130, 32.500713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078064, 39.905174, 32.407307>,  <30.525070, 40.043140, 32.833256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078064, 39.905174, 32.407307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757380, 39.720493, 32.255470>,  <30.564970, 39.609684, 32.164368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757380, 39.720493, 32.255470>,  <31.078064, 39.905174, 32.407307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757380, 39.720493, 32.255470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255089, 0.310037, -0.915864,
		0.540548, -0.831086, -0.130783,
		-0.801709, -0.461707, -0.379591,
		30.516867, 39.581982, 32.141594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335306, 39.506870, 31.854424>,  <31.078064, 39.905174, 32.407307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335306, 39.506870, 31.854424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.944727, 39.542324, 31.775740>,  <30.710381, 39.563599, 31.728529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.944727, 39.542324, 31.775740>,  <31.335306, 39.506870, 31.854424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944727, 39.542324, 31.775740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207582, 0.137369, -0.968524,
		-0.058827, -0.986546, -0.152534,
		-0.976447, 0.088638, -0.196708,
		30.651793, 39.568916, 31.716726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354645, 39.270184, 31.229853>,  <31.335306, 39.506870, 31.854424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354645, 39.270184, 31.229853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990971, 39.430141, 31.276278>,  <30.772766, 39.526115, 31.304132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.990971, 39.430141, 31.276278>,  <31.354645, 39.270184, 31.229853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990971, 39.430141, 31.276278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015682, 0.311414, -0.950145,
		-0.416099, -0.862036, -0.289404,
		-0.909184, 0.399893, 0.116060,
		30.718216, 39.550110, 31.311096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885353, 38.927353, 30.742805>,  <31.354645, 39.270184, 31.229853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885353, 38.927353, 30.742805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710470, 39.281525, 30.805885>,  <30.605541, 39.494026, 30.843733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.710470, 39.281525, 30.805885>,  <30.885353, 38.927353, 30.742805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710470, 39.281525, 30.805885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111957, 0.227566, -0.967305,
		-0.892366, -0.405257, -0.198623,
		-0.437207, 0.885427, 0.157701,
		30.579308, 39.547153, 30.853195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249245, 38.914707, 30.328897>,  <30.885353, 38.927353, 30.742805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249245, 38.914707, 30.328897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307213, 39.301842, 30.411154>,  <30.341993, 39.534122, 30.460508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.307213, 39.301842, 30.411154>,  <30.249245, 38.914707, 30.328897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307213, 39.301842, 30.411154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014111, 0.205792, -0.978494,
		-0.989343, 0.144707, 0.016167,
		0.144921, 0.967838, 0.205641,
		30.350689, 39.592194, 30.472847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723577, 39.342552, 29.961740>,  <30.249245, 38.914707, 30.328897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723577, 39.342552, 29.961740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024708, 39.597061, 30.029163>,  <30.205385, 39.749767, 30.069616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.024708, 39.597061, 30.029163>,  <29.723577, 39.342552, 29.961740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024708, 39.597061, 30.029163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047568, 0.307998, -0.950197,
		-0.656501, 0.707313, 0.262135,
		0.752824, 0.636274, 0.168556,
		30.250555, 39.787945, 30.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633394, 39.936390, 29.629585>,  <29.723577, 39.342552, 29.961740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633394, 39.936390, 29.629585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026066, 39.975315, 29.695110>,  <30.261669, 39.998672, 29.734426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.026066, 39.975315, 29.695110>,  <29.633394, 39.936390, 29.629585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026066, 39.975315, 29.695110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099502, 0.471375, -0.876302,
		-0.162496, 0.876547, 0.453056,
		0.981679, 0.097315, 0.163815,
		30.320570, 40.004509, 29.744255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.319328, 29.395218, 45.281105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.982838, 29.179148, 45.271793>,  <40.780941, 29.049505, 45.266209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.982838, 29.179148, 45.271793>,  <41.319328, 29.395218, 45.281105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982838, 29.179148, 45.271793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155526, -0.282986, 0.946431,
		-0.517824, 0.792547, 0.322068,
		-0.841231, -0.540174, -0.023275,
		40.730469, 29.017096, 45.264812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.018826, 29.515287, 45.896626>,  <41.319328, 29.395218, 45.281105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.018826, 29.515287, 45.896626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.841469, 29.172659, 45.791027>,  <40.735054, 28.967083, 45.727669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.841469, 29.172659, 45.791027>,  <41.018826, 29.515287, 45.896626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841469, 29.172659, 45.791027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018656, -0.303291, 0.952716,
		-0.896135, 0.417498, 0.150456,
		-0.443388, -0.856569, -0.264000,
		40.708454, 28.915688, 45.711826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644428, 29.311020, 46.503265>,  <41.018826, 29.515287, 45.896626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644428, 29.311020, 46.503265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657322, 28.977661, 46.282570>,  <40.665058, 28.777645, 46.150154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.657322, 28.977661, 46.282570>,  <40.644428, 29.311020, 46.503265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.657322, 28.977661, 46.282570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056838, -0.552657, 0.831468,
		-0.997863, 0.004560, -0.065181,
		0.032231, -0.833396, -0.551735,
		40.666992, 28.727642, 46.117050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997780, 28.865805, 46.711998>,  <40.644428, 29.311020, 46.503265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997780, 28.865805, 46.711998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320473, 28.674015, 46.573849>,  <40.514088, 28.558941, 46.490959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320473, 28.674015, 46.573849>,  <39.997780, 28.865805, 46.711998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320473, 28.674015, 46.573849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134389, -0.420291, 0.897382,
		-0.575432, -0.770362, -0.274626,
		0.806733, -0.479476, -0.345377,
		40.562492, 28.530172, 46.470234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823582, 28.211147, 46.822357>,  <39.997780, 28.865805, 46.711998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823582, 28.211147, 46.822357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.222084, 28.200569, 46.789452>,  <40.461185, 28.194223, 46.769707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.222084, 28.200569, 46.789452>,  <39.823582, 28.211147, 46.822357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222084, 28.200569, 46.789452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046969, -0.633400, 0.772398,
		-0.072532, -0.773373, -0.629789,
		0.996260, -0.026443, -0.082267,
		40.520962, 28.192636, 46.764771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945095, 27.694965, 47.144180>,  <39.823582, 28.211147, 46.822357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945095, 27.694965, 47.144180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325550, 27.818020, 47.133671>,  <40.553825, 27.891853, 47.127365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325550, 27.818020, 47.133671>,  <39.945095, 27.694965, 47.144180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325550, 27.818020, 47.133671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209787, -0.581485, 0.786044,
		0.226538, -0.753150, -0.617612,
		0.951141, 0.307636, -0.026273,
		40.610893, 27.910311, 47.125790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478153, 27.101105, 47.147156>,  <39.945095, 27.694965, 47.144180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478153, 27.101105, 47.147156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674744, 27.421566, 47.283745>,  <40.792698, 27.613844, 47.365700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.674744, 27.421566, 47.283745>,  <40.478153, 27.101105, 47.147156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674744, 27.421566, 47.283745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324652, -0.532373, 0.781780,
		0.808118, -0.273365, -0.521745,
		0.491474, 0.801156, 0.341472,
		40.822186, 27.661913, 47.386185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.933880, 26.772461, 47.552868>,  <40.478153, 27.101105, 47.147156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.933880, 26.772461, 47.552868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957726, 27.154753, 47.668129>,  <40.972031, 27.384127, 47.737286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.957726, 27.154753, 47.668129>,  <40.933880, 26.772461, 47.552868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957726, 27.154753, 47.668129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305585, -0.292277, 0.906197,
		0.950297, 0.034035, -0.309479,
		0.059611, 0.955728, 0.288150,
		40.975609, 27.441471, 47.754574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489899, 26.734232, 47.959179>,  <40.933880, 26.772461, 47.552868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.489899, 26.734232, 47.959179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.274002, 27.053400, 48.066509>,  <41.144463, 27.244900, 48.130909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.274002, 27.053400, 48.066509>,  <41.489899, 26.734232, 47.959179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274002, 27.053400, 48.066509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167894, -0.210310, 0.963110,
		0.824916, 0.564886, -0.020452,
		-0.539746, 0.797918, 0.268329,
		41.112080, 27.292776, 48.147007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829300, 26.914270, 48.567268>,  <41.489899, 26.734232, 47.959179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829300, 26.914270, 48.567268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472054, 27.093468, 48.583485>,  <41.257706, 27.200985, 48.593216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.472054, 27.093468, 48.583485>,  <41.829300, 26.914270, 48.567268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472054, 27.093468, 48.583485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001015, -0.088127, 0.996109,
		0.449821, 0.889684, 0.078253,
		-0.893118, 0.447991, 0.040544,
		41.204117, 27.227865, 48.595650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864742, 27.355288, 49.104156>,  <41.829300, 26.914270, 48.567268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864742, 27.355288, 49.104156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473183, 27.297157, 49.046692>,  <41.238247, 27.262280, 49.012211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.473183, 27.297157, 49.046692>,  <41.864742, 27.355288, 49.104156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473183, 27.297157, 49.046692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141345, -0.026228, 0.989613,
		-0.147584, 0.989036, 0.005133,
		-0.978898, -0.145325, -0.143666,
		41.179512, 27.253559, 49.003593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407402, 27.833870, 49.457283>,  <41.864742, 27.355288, 49.104156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407402, 27.833870, 49.457283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.182804, 27.507849, 49.400135>,  <41.048046, 27.312237, 49.365845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.182804, 27.507849, 49.400135>,  <41.407402, 27.833870, 49.457283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182804, 27.507849, 49.400135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216862, -0.021678, 0.975961,
		-0.798557, 0.578981, -0.164582,
		-0.561495, -0.815053, -0.142870,
		41.014355, 27.263332, 49.357273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012577, 28.114073, 49.190773>,  <41.407402, 27.833870, 49.457283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012577, 28.114073, 49.190773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257008, 28.234228, 49.483719>,  <42.403664, 28.306322, 49.659485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.257008, 28.234228, 49.483719>,  <42.012577, 28.114073, 49.190773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257008, 28.234228, 49.483719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062586, 0.940637, -0.333594,
		-0.789095, 0.158014, 0.593599,
		0.611074, 0.300388, 0.732363,
		42.440331, 28.324345, 49.703426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001350, 28.842117, 49.206120>,  <42.012577, 28.114073, 49.190773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001350, 28.842117, 49.206120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.284630, 28.787502, 49.483192>,  <42.454597, 28.754734, 49.649437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.284630, 28.787502, 49.483192>,  <42.001350, 28.842117, 49.206120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284630, 28.787502, 49.483192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182803, 0.983126, 0.006888,
		-0.681937, 0.121747, 0.721207,
		0.708198, -0.136536, 0.692686,
		42.497089, 28.746542, 49.690998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764965, 29.406919, 49.742832>,  <42.001350, 28.842117, 49.206120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764965, 29.406919, 49.742832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.612900, 29.749746, 49.881920>,  <41.521660, 29.955442, 49.965374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.612900, 29.749746, 49.881920>,  <41.764965, 29.406919, 49.742832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612900, 29.749746, 49.881920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262752, 0.260385, -0.929064,
		-0.886813, -0.444561, 0.126208,
		-0.380163, 0.857068, 0.347722,
		41.498852, 30.006866, 49.986237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191578, 29.500595, 49.227306>,  <41.764965, 29.406919, 49.742832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191578, 29.500595, 49.227306> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.233768, 29.844433, 49.427296>,  <41.259083, 30.050735, 49.547291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.233768, 29.844433, 49.427296>,  <41.191578, 29.500595, 49.227306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233768, 29.844433, 49.427296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381062, 0.499339, -0.778108,
		-0.918513, -0.108447, 0.380228,
		0.105479, 0.859593, 0.499974,
		41.265411, 30.102310, 49.577290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524990, 29.859451, 48.987934>,  <41.191578, 29.500595, 49.227306>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524990, 29.859451, 48.987934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784149, 30.130573, 49.126965>,  <40.939644, 30.293245, 49.210381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784149, 30.130573, 49.126965>,  <40.524990, 29.859451, 48.987934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784149, 30.130573, 49.126965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130247, 0.548157, -0.826172,
		-0.750507, 0.490007, 0.443433,
		0.647901, 0.677803, 0.347574,
		40.978519, 30.333914, 49.231236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228970, 30.557873, 48.956451>,  <40.524990, 29.859451, 48.987934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228970, 30.557873, 48.956451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623539, 30.623554, 48.955658>,  <40.860279, 30.662964, 48.955181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.623539, 30.623554, 48.955658>,  <40.228970, 30.557873, 48.956451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.623539, 30.623554, 48.955658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108464, 0.642403, -0.758653,
		-0.123300, 0.748569, 0.651492,
		0.986424, 0.164205, -0.001985,
		40.919468, 30.672815, 48.955063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.451645, 31.322632, 49.097702>,  <40.228970, 30.557873, 48.956451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.451645, 31.322632, 49.097702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.750774, 31.154327, 48.892288>,  <40.930252, 31.053345, 48.769039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.750774, 31.154327, 48.892288>,  <40.451645, 31.322632, 49.097702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750774, 31.154327, 48.892288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139564, 0.656598, -0.741216,
		0.649061, 0.625970, 0.432298,
		0.747825, -0.420761, -0.513535,
		40.975121, 31.028099, 48.738228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646358, 31.873144, 48.822151>,  <40.451645, 31.322632, 49.097702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646358, 31.873144, 48.822151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.862198, 31.611280, 48.610394>,  <40.991699, 31.454163, 48.483337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.862198, 31.611280, 48.610394>,  <40.646358, 31.873144, 48.822151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862198, 31.611280, 48.610394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004041, 0.630799, -0.775936,
		0.841915, 0.416552, 0.343022,
		0.539596, -0.654658, -0.529396,
		41.024078, 31.414883, 48.451576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147224, 32.209904, 48.452816>,  <40.646358, 31.873144, 48.822151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147224, 32.209904, 48.452816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.116554, 31.877831, 48.231937>,  <41.098152, 31.678587, 48.099411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.116554, 31.877831, 48.231937>,  <41.147224, 32.209904, 48.452816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116554, 31.877831, 48.231937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017933, 0.552586, -0.833263,
		0.996895, -0.073795, -0.027483,
		-0.076678, -0.830182, -0.552193,
		41.093552, 31.628777, 48.066280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608410, 32.277027, 47.913628>,  <41.147224, 32.209904, 48.452816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608410, 32.277027, 47.913628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.344730, 32.000916, 47.794312>,  <41.186523, 31.835249, 47.722721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.344730, 32.000916, 47.794312>,  <41.608410, 32.277027, 47.913628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.344730, 32.000916, 47.794312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155714, 0.513382, -0.843915,
		0.735673, -0.509858, -0.445905,
		-0.659196, -0.690279, -0.298289,
		41.146973, 31.793833, 47.704826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760700, 32.174988, 47.213882>,  <41.608410, 32.277027, 47.913628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760700, 32.174988, 47.213882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.386425, 32.044407, 47.267426>,  <41.161861, 31.966059, 47.299553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.386425, 32.044407, 47.267426>,  <41.760700, 32.174988, 47.213882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386425, 32.044407, 47.267426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269955, 0.418094, -0.867365,
		0.227186, -0.847719, -0.479333,
		-0.935688, -0.326451, 0.133861,
		41.105721, 31.946472, 47.307583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491241, 31.743496, 46.559696>,  <41.760700, 32.174988, 47.213882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491241, 31.743496, 46.559696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.147671, 31.868135, 46.722248>,  <40.941528, 31.942919, 46.819778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.147671, 31.868135, 46.722248>,  <41.491241, 31.743496, 46.559696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147671, 31.868135, 46.722248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323653, 0.284654, -0.902342,
		-0.396846, -0.906575, -0.143649,
		-0.858931, 0.311598, 0.406379,
		40.889992, 31.961615, 46.844162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973648, 31.489660, 46.114868>,  <41.491241, 31.743496, 46.559696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973648, 31.489660, 46.114868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.755569, 31.759256, 46.314270>,  <40.624722, 31.921013, 46.433910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.755569, 31.759256, 46.314270>,  <40.973648, 31.489660, 46.114868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755569, 31.759256, 46.314270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326639, 0.376863, -0.866765,
		-0.772056, -0.635385, 0.014687,
		-0.545194, 0.673989, 0.498501,
		40.592010, 31.961452, 46.463821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275219, 31.426062, 45.860817>,  <40.973648, 31.489660, 46.114868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275219, 31.426062, 45.860817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.279449, 31.788031, 46.030998>,  <40.281990, 32.005211, 46.133106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.279449, 31.788031, 46.030998>,  <40.275219, 31.426062, 45.860817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279449, 31.788031, 46.030998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612108, 0.342302, -0.712848,
		-0.790703, -0.252881, 0.557530,
		0.010578, 0.904920, 0.425450,
		40.282623, 32.059505, 46.158634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580292, 31.613008, 45.929138>,  <40.275219, 31.426062, 45.860817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580292, 31.613008, 45.929138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801384, 31.946230, 45.938187>,  <39.934040, 32.146164, 45.943615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.801384, 31.946230, 45.938187>,  <39.580292, 31.613008, 45.929138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801384, 31.946230, 45.938187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624220, 0.431849, -0.651042,
		-0.552120, 0.345732, 0.758705,
		0.552732, 0.833052, 0.022619,
		39.967205, 32.196144, 45.944973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149063, 32.144375, 46.187443>,  <39.580292, 31.613008, 45.929138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149063, 32.144375, 46.187443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422539, 32.280979, 45.929470>,  <39.586624, 32.362942, 45.774685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.422539, 32.280979, 45.929470>,  <39.149063, 32.144375, 46.187443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422539, 32.280979, 45.929470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727344, 0.246820, -0.640351,
		-0.059505, 0.906890, 0.417145,
		0.683688, 0.341513, -0.644934,
		39.627644, 32.383434, 45.735989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642014, 32.633533, 46.623322>,  <39.149063, 32.144375, 46.187443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642014, 32.633533, 46.623322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255539, 32.659184, 46.723217>,  <38.023655, 32.674572, 46.783154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.255539, 32.659184, 46.723217>,  <38.642014, 32.633533, 46.623322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255539, 32.659184, 46.723217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220762, -0.294661, 0.929752,
		0.133208, 0.953448, 0.270542,
		-0.966188, 0.064124, 0.249737,
		37.965683, 32.678421, 46.798138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511261, 33.068043, 47.133011>,  <38.642014, 32.633533, 46.623322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511261, 33.068043, 47.133011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246140, 32.769817, 47.160809>,  <38.087067, 32.590881, 47.177486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246140, 32.769817, 47.160809>,  <38.511261, 33.068043, 47.133011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246140, 32.769817, 47.160809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377422, -0.252478, 0.890958,
		-0.646716, 0.616762, 0.448735,
		-0.662805, -0.745560, 0.069498,
		38.047298, 32.546150, 47.181660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263596, 33.087536, 47.787750>,  <38.511261, 33.068043, 47.133011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263596, 33.087536, 47.787750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122162, 32.728874, 47.681171>,  <38.037300, 32.513680, 47.617226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.122162, 32.728874, 47.681171>,  <38.263596, 33.087536, 47.787750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122162, 32.728874, 47.681171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052665, -0.303477, 0.951382,
		-0.933918, 0.322363, 0.154528,
		-0.353586, -0.896652, -0.266445,
		38.016087, 32.459877, 47.601238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865616, 32.890980, 48.439583>,  <38.263596, 33.087536, 47.787750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865616, 32.890980, 48.439583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864120, 32.563175, 48.210361>,  <37.863224, 32.366493, 48.072830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.864120, 32.563175, 48.210361>,  <37.865616, 32.890980, 48.439583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864120, 32.563175, 48.210361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044364, -0.572352, 0.818807,
		-0.999008, 0.028485, -0.034216,
		-0.003741, -0.819513, -0.573049,
		37.862999, 32.317322, 48.038448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294830, 32.577324, 48.702568>,  <37.865616, 32.890980, 48.439583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294830, 32.577324, 48.702568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544418, 32.314762, 48.532955>,  <37.694172, 32.157227, 48.431187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.544418, 32.314762, 48.532955>,  <37.294830, 32.577324, 48.702568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544418, 32.314762, 48.532955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105278, -0.608283, 0.786707,
		-0.774327, -0.446238, -0.448653,
		0.623967, -0.656402, -0.424031,
		37.731609, 32.117844, 48.405746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969131, 31.828810, 48.742527>,  <37.294830, 32.577324, 48.702568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969131, 31.828810, 48.742527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362305, 31.770855, 48.697193>,  <37.598209, 31.736082, 48.669994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362305, 31.770855, 48.697193>,  <36.969131, 31.828810, 48.742527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362305, 31.770855, 48.697193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018249, -0.689884, 0.723690,
		-0.183039, -0.709273, -0.680756,
		0.982936, -0.144886, -0.113332,
		37.657185, 31.727388, 48.663193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033733, 31.097137, 48.911533>,  <36.969131, 31.828810, 48.742527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033733, 31.097137, 48.911533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395100, 31.266544, 48.938274>,  <37.611919, 31.368189, 48.954319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395100, 31.266544, 48.938274>,  <37.033733, 31.097137, 48.911533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395100, 31.266544, 48.938274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292990, -0.723633, 0.624909,
		0.313036, -0.544967, -0.777830,
		0.903419, 0.423516, 0.066853,
		37.666126, 31.393599, 48.958332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727325, 30.342768, 48.916229>,  <37.033733, 31.097137, 48.911533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727325, 30.342768, 48.916229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343853, 30.266556, 49.000732>,  <36.113770, 30.220829, 49.051434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343853, 30.266556, 49.000732>,  <36.727325, 30.342768, 48.916229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343853, 30.266556, 49.000732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277572, 0.463725, -0.841376,
		0.062341, -0.865250, -0.497450,
		-0.958680, -0.190531, 0.211260,
		36.056248, 30.209396, 49.064110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496990, 30.111019, 48.292976>,  <36.727325, 30.342768, 48.916229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496990, 30.111019, 48.292976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.172768, 30.214457, 48.503166>,  <35.978233, 30.276520, 48.629280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.172768, 30.214457, 48.503166>,  <36.496990, 30.111019, 48.292976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172768, 30.214457, 48.503166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414727, 0.380075, -0.826768,
		-0.413516, -0.888072, -0.200828,
		-0.810559, 0.258593, 0.525474,
		35.929600, 30.292034, 48.660809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053158, 30.075157, 47.834476>,  <36.496990, 30.111019, 48.292976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053158, 30.075157, 47.834476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862122, 30.299568, 48.104931>,  <35.747501, 30.434216, 48.267204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.862122, 30.299568, 48.104931>,  <36.053158, 30.075157, 47.834476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862122, 30.299568, 48.104931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531919, 0.427866, -0.730748,
		-0.699266, -0.708644, 0.094079,
		-0.477587, 0.561030, 0.676133,
		35.718845, 30.467876, 48.307770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352299, 30.043093, 47.633873>,  <36.053158, 30.075157, 47.834476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352299, 30.043093, 47.633873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358143, 30.372746, 47.860355>,  <35.361649, 30.570538, 47.996246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.358143, 30.372746, 47.860355>,  <35.352299, 30.043093, 47.633873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.358143, 30.372746, 47.860355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307168, 0.542586, -0.781824,
		-0.951543, -0.162501, 0.261073,
		0.014607, 0.824133, 0.566209,
		35.362526, 30.619986, 48.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685562, 30.340630, 47.575848>,  <35.352299, 30.043093, 47.633873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685562, 30.340630, 47.575848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956188, 30.622257, 47.662148>,  <35.118565, 30.791235, 47.713928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.956188, 30.622257, 47.662148>,  <34.685562, 30.340630, 47.575848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956188, 30.622257, 47.662148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380013, 0.584778, -0.716676,
		-0.630757, 0.402887, 0.663195,
		0.676562, 0.704071, 0.215750,
		35.159157, 30.833479, 47.726871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306129, 30.857161, 47.660412>,  <34.685562, 30.340630, 47.575848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306129, 30.857161, 47.660412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664478, 31.011358, 47.572037>,  <34.879486, 31.103876, 47.519012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.664478, 31.011358, 47.572037>,  <34.306129, 30.857161, 47.660412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664478, 31.011358, 47.572037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441085, 0.711740, -0.546690,
		-0.053496, 0.587214, 0.807662,
		0.895870, 0.385494, -0.220936,
		34.933239, 31.127007, 47.505756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244629, 31.616917, 47.730297>,  <34.306129, 30.857161, 47.660412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244629, 31.616917, 47.730297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570251, 31.564236, 47.504036>,  <34.765625, 31.532627, 47.368279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570251, 31.564236, 47.504036>,  <34.244629, 31.616917, 47.730297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570251, 31.564236, 47.504036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353306, 0.660715, -0.662291,
		0.460965, 0.738992, 0.491327,
		0.814055, -0.131704, -0.565657,
		34.814468, 31.524725, 47.334339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.573769, 25.408138, 47.344990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.215191, 25.558134, 47.439445>,  <38.000042, 25.648132, 47.496120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.215191, 25.558134, 47.439445>,  <38.573769, 25.408138, 47.344990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215191, 25.558134, 47.439445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440066, 0.690541, 0.574017,
		0.052183, 0.618495, -0.784054,
		-0.896448, 0.374989, 0.236144,
		37.946255, 25.670631, 47.510288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317581, 25.801519, 47.891994>,  <38.573769, 25.408138, 47.344990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317581, 25.801519, 47.891994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585453, 26.094330, 47.942062>,  <38.746178, 26.270016, 47.972103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.585453, 26.094330, 47.942062>,  <38.317581, 25.801519, 47.891994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585453, 26.094330, 47.942062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260093, -0.073307, -0.962797,
		-0.695614, 0.677324, -0.239487,
		0.669681, 0.732024, 0.125174,
		38.786358, 26.313936, 47.979614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131893, 26.422249, 47.541496>,  <38.317581, 25.801519, 47.891994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131893, 26.422249, 47.541496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.527725, 26.369997, 47.565712>,  <38.765224, 26.338646, 47.580242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.527725, 26.369997, 47.565712>,  <38.131893, 26.422249, 47.541496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527725, 26.369997, 47.565712> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072837, 0.091541, -0.993134,
		0.124190, 0.987196, 0.100102,
		0.989582, -0.130629, 0.060536,
		38.824600, 26.330809, 47.583874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522446, 26.999008, 47.351215>,  <38.131893, 26.422249, 47.541496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522446, 26.999008, 47.351215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.758984, 26.683645, 47.283417>,  <38.900906, 26.494427, 47.242737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.758984, 26.683645, 47.283417>,  <38.522446, 26.999008, 47.351215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758984, 26.683645, 47.283417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022675, 0.226360, -0.973780,
		0.806103, 0.571992, 0.151733,
		0.591341, -0.788407, -0.169500,
		38.936386, 26.447123, 47.232567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150639, 27.260910, 46.927555>,  <38.522446, 26.999008, 47.351215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150639, 27.260910, 46.927555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.125721, 26.865694, 46.871132>,  <39.110771, 26.628565, 46.837276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.125721, 26.865694, 46.871132>,  <39.150639, 27.260910, 46.927555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125721, 26.865694, 46.871132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091069, 0.135114, -0.986636,
		0.993894, -0.074309, 0.081562,
		-0.062296, -0.988039, -0.141057,
		39.107033, 26.569283, 46.828815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805248, 27.053585, 46.448544>,  <39.150639, 27.260910, 46.927555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805248, 27.053585, 46.448544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.525715, 26.767609, 46.439678>,  <39.357994, 26.596022, 46.434361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.525715, 26.767609, 46.439678>,  <39.805248, 27.053585, 46.448544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525715, 26.767609, 46.439678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017884, 0.048437, -0.998666,
		0.715062, -0.697504, -0.046635,
		-0.698832, -0.714942, -0.022161,
		39.316067, 26.553125, 46.433029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030964, 26.647173, 45.902763>,  <39.805248, 27.053585, 46.448544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030964, 26.647173, 45.902763> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.635170, 26.601765, 45.938606>,  <39.397694, 26.574520, 45.960114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.635170, 26.601765, 45.938606>,  <40.030964, 26.647173, 45.902763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635170, 26.601765, 45.938606> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097249, 0.063623, -0.993225,
		0.107056, -0.991496, -0.073994,
		-0.989486, -0.113526, 0.089610,
		39.338326, 26.567709, 45.965488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921497, 26.363636, 45.252861>,  <40.030964, 26.647173, 45.902763>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921497, 26.363636, 45.252861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.562630, 26.450523, 45.406693>,  <39.347309, 26.502655, 45.498989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.562630, 26.450523, 45.406693>,  <39.921497, 26.363636, 45.252861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562630, 26.450523, 45.406693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374428, 0.087791, -0.923091,
		-0.234275, -0.972167, 0.002570,
		-0.897172, 0.217219, 0.384574,
		39.293476, 26.515688, 45.522064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461475, 25.922792, 44.989979>,  <39.921497, 26.363636, 45.252861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461475, 25.922792, 44.989979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231014, 26.228649, 45.105473>,  <39.092735, 26.412163, 45.174767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231014, 26.228649, 45.105473>,  <39.461475, 25.922792, 44.989979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231014, 26.228649, 45.105473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483182, -0.033725, -0.874870,
		-0.659226, -0.643571, 0.388893,
		-0.576156, 0.764643, 0.288729,
		39.058167, 26.458042, 45.192093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849766, 25.807617, 44.618935>,  <39.461475, 25.922792, 44.989979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849766, 25.807617, 44.618935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.826412, 26.189447, 44.735813>,  <38.812401, 26.418545, 44.805943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.826412, 26.189447, 44.735813>,  <38.849766, 25.807617, 44.618935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826412, 26.189447, 44.735813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407596, 0.244395, -0.879850,
		-0.911294, -0.170471, 0.374811,
		-0.058387, 0.954574, 0.292199,
		38.808895, 26.475819, 44.823471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127201, 25.983103, 44.505032>,  <38.849766, 25.807617, 44.618935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127201, 25.983103, 44.505032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.311371, 26.336020, 44.544159>,  <38.421871, 26.547770, 44.567635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.311371, 26.336020, 44.544159>,  <38.127201, 25.983103, 44.505032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311371, 26.336020, 44.544159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465351, 0.333730, -0.819800,
		-0.755948, 0.331937, 0.564234,
		0.460424, 0.882294, 0.097815,
		38.449497, 26.600708, 44.573505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604504, 26.541344, 44.546215>,  <38.127201, 25.983103, 44.505032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604504, 26.541344, 44.546215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940346, 26.698805, 44.396492>,  <38.141850, 26.793282, 44.306656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940346, 26.698805, 44.396492>,  <37.604504, 26.541344, 44.546215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940346, 26.698805, 44.396492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525503, 0.414149, -0.743187,
		-0.137538, 0.820682, 0.554585,
		0.839601, 0.393652, -0.374309,
		38.192226, 26.816900, 44.284199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044132, 26.915344, 44.987949>,  <37.604504, 26.541344, 44.546215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044132, 26.915344, 44.987949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658756, 26.812031, 45.016422>,  <36.427528, 26.750042, 45.033504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.658756, 26.812031, 45.016422>,  <37.044132, 26.915344, 44.987949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658756, 26.812031, 45.016422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091710, -0.068302, 0.993441,
		-0.251728, 0.963651, 0.089493,
		-0.963443, -0.258284, 0.071183,
		36.369724, 26.734545, 45.037777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542141, 27.370829, 45.424061>,  <37.044132, 26.915344, 44.987949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542141, 27.370829, 45.424061> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.403538, 26.996027, 45.441772>,  <36.320377, 26.771147, 45.452400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.403538, 26.996027, 45.441772>,  <36.542141, 27.370829, 45.424061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403538, 26.996027, 45.441772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023346, 0.038574, 0.998983,
		-0.937757, 0.347188, 0.008509,
		-0.346507, -0.937002, 0.044279,
		36.299587, 26.714926, 45.455055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197277, 27.281212, 45.977737>,  <36.542141, 27.370829, 45.424061>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197277, 27.281212, 45.977737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248592, 26.891289, 45.904755>,  <36.279381, 26.657335, 45.860966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248592, 26.891289, 45.904755>,  <36.197277, 27.281212, 45.977737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248592, 26.891289, 45.904755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005932, -0.184724, 0.982772,
		-0.991719, -0.124996, -0.029480,
		0.128289, -0.974809, -0.182453,
		36.287079, 26.598846, 45.850018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700638, 26.954514, 46.388939>,  <36.197277, 27.281212, 45.977737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700638, 26.954514, 46.388939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986786, 26.684986, 46.314945>,  <36.158474, 26.523270, 46.270550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986786, 26.684986, 46.314945>,  <35.700638, 26.954514, 46.388939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986786, 26.684986, 46.314945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025029, -0.239851, 0.970487,
		-0.698299, -0.698886, -0.154717,
		0.715369, -0.673817, -0.184980,
		36.201397, 26.482841, 46.259453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.536705, 26.405725, 46.844185>,  <35.700638, 26.954514, 46.388939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.536705, 26.405725, 46.844185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.914757, 26.312660, 46.752453>,  <36.141590, 26.256821, 46.697414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.914757, 26.312660, 46.752453>,  <35.536705, 26.405725, 46.844185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914757, 26.312660, 46.752453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202749, -0.132689, 0.970199,
		-0.256158, -0.963463, -0.078237,
		0.945133, -0.232662, -0.229331,
		36.198296, 26.242863, 46.683655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624424, 25.865686, 47.282627>,  <35.536705, 26.405725, 46.844185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624424, 25.865686, 47.282627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978523, 26.002636, 47.156693>,  <36.190983, 26.084805, 47.081131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978523, 26.002636, 47.156693>,  <35.624424, 25.865686, 47.282627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978523, 26.002636, 47.156693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363126, -0.085739, 0.927787,
		0.290654, -0.935644, -0.200224,
		0.885245, 0.342372, -0.314836,
		36.244099, 26.105347, 47.062241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136238, 25.494953, 47.597618>,  <35.624424, 25.865686, 47.282627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136238, 25.494953, 47.597618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358463, 25.817133, 47.515060>,  <36.491798, 26.010441, 47.465527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.358463, 25.817133, 47.515060>,  <36.136238, 25.494953, 47.597618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358463, 25.817133, 47.515060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483597, -0.111081, 0.868213,
		0.676376, -0.582160, -0.451226,
		0.555562, 0.805450, -0.206399,
		36.525131, 26.058767, 47.453140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841560, 25.343182, 47.650238>,  <36.136238, 25.494953, 47.597618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841560, 25.343182, 47.650238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.826553, 25.737379, 47.716438>,  <36.817547, 25.973898, 47.756157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.826553, 25.737379, 47.716438>,  <36.841560, 25.343182, 47.650238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826553, 25.737379, 47.716438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199965, -0.154864, 0.967487,
		0.979084, 0.069394, -0.191254,
		-0.037520, 0.985496, 0.165501,
		36.815296, 26.033028, 47.766090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106106, 25.353577, 48.248917>,  <36.841560, 25.343182, 47.650238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106106, 25.353577, 48.248917> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039665, 25.747667, 48.232239>,  <36.999802, 25.984121, 48.222233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.039665, 25.747667, 48.232239>,  <37.106106, 25.353577, 48.248917>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039665, 25.747667, 48.232239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259610, 0.084476, 0.962012,
		0.951322, 0.148965, -0.269806,
		-0.166098, 0.985228, -0.041691,
		36.989838, 26.043236, 48.219730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638683, 25.725996, 48.631863>,  <37.106106, 25.353577, 48.248917>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638683, 25.725996, 48.631863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312199, 25.956667, 48.617733>,  <37.116310, 26.095070, 48.609253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312199, 25.956667, 48.617733>,  <37.638683, 25.725996, 48.631863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312199, 25.956667, 48.617733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134990, 0.249801, 0.958842,
		0.561765, 0.777847, -0.281735,
		-0.816209, 0.576675, -0.035328,
		37.067337, 26.129669, 48.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826294, 26.205975, 49.122429>,  <37.638683, 25.725996, 48.631863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826294, 26.205975, 49.122429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428192, 26.238201, 49.100601>,  <37.189331, 26.257536, 49.087505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428192, 26.238201, 49.100601>,  <37.826294, 26.205975, 49.122429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428192, 26.238201, 49.100601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019851, 0.380863, 0.924418,
		0.095258, 0.921115, -0.377457,
		-0.995255, 0.080565, -0.054565,
		37.129616, 26.262371, 49.084232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730904, 26.808834, 49.504475>,  <37.826294, 26.205975, 49.122429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730904, 26.808834, 49.504475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.379780, 26.620749, 49.467922>,  <37.169106, 26.507898, 49.445992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.379780, 26.620749, 49.467922>,  <37.730904, 26.808834, 49.504475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379780, 26.620749, 49.467922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221640, 0.229579, 0.947718,
		-0.424648, 0.852170, -0.305744,
		-0.877810, -0.470212, -0.091385,
		37.116436, 26.479685, 49.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167812, 27.229021, 49.864597>,  <37.730904, 26.808834, 49.504475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167812, 27.229021, 49.864597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.037239, 26.851225, 49.849728>,  <36.958897, 26.624548, 49.840805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.037239, 26.851225, 49.849728>,  <37.167812, 27.229021, 49.864597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037239, 26.851225, 49.849728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205765, 0.032619, 0.978058,
		-0.922552, 0.326921, -0.204990,
		-0.326434, -0.944489, -0.037176,
		36.939308, 26.567879, 49.838573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517155, 27.134432, 50.151661>,  <37.167812, 27.229021, 49.864597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517155, 27.134432, 50.151661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686100, 26.782179, 50.237537>,  <36.787468, 26.570827, 50.289062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686100, 26.782179, 50.237537>,  <36.517155, 27.134432, 50.151661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686100, 26.782179, 50.237537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265552, 0.106245, 0.958225,
		-0.866654, -0.461733, -0.188979,
		0.422366, -0.880633, 0.214692,
		36.812809, 26.517988, 50.301945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026703, 27.698666, 50.347275>,  <36.517155, 27.134432, 50.151661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026703, 27.698666, 50.347275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157501, 27.945871, 50.633247>,  <36.235981, 28.094194, 50.804832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.157501, 27.945871, 50.633247>,  <36.026703, 27.698666, 50.347275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157501, 27.945871, 50.633247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393399, 0.776877, -0.491629,
		-0.859250, -0.120493, 0.497163,
		0.326997, 0.618016, 0.714933,
		36.255600, 28.131275, 50.847729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456215, 28.251234, 50.578865>,  <36.026703, 27.698666, 50.347275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456215, 28.251234, 50.578865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801121, 28.410473, 50.704094>,  <36.008064, 28.506016, 50.779232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.801121, 28.410473, 50.704094>,  <35.456215, 28.251234, 50.578865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801121, 28.410473, 50.704094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256533, 0.876315, -0.407754,
		-0.436673, 0.271281, 0.857743,
		0.862269, 0.398095, 0.313070,
		36.059803, 28.529902, 50.798016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228786, 28.925205, 50.656261>,  <35.456215, 28.251234, 50.578865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228786, 28.925205, 50.656261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.628490, 28.938976, 50.649460>,  <35.868313, 28.947239, 50.645378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.628490, 28.938976, 50.649460>,  <35.228786, 28.925205, 50.656261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.628490, 28.938976, 50.649460> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038376, 0.881140, -0.471296,
		-0.001245, 0.471601, 0.881811,
		0.999263, 0.034427, -0.017001,
		35.928268, 28.949305, 50.644360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481537, 29.534542, 50.840855>,  <35.228786, 28.925205, 50.656261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481537, 29.534542, 50.840855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.791801, 29.403214, 50.625240>,  <35.977959, 29.324415, 50.495872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.791801, 29.403214, 50.625240>,  <35.481537, 29.534542, 50.840855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791801, 29.403214, 50.625240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128256, 0.754235, -0.643956,
		0.617985, 0.568624, 0.542919,
		0.775658, -0.328323, -0.539035,
		36.024498, 29.304716, 50.463531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857700, 30.165171, 50.719223>,  <35.481537, 29.534542, 50.840855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857700, 30.165171, 50.719223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967594, 29.891390, 50.449097>,  <36.033531, 29.727121, 50.287022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.967594, 29.891390, 50.449097>,  <35.857700, 30.165171, 50.719223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967594, 29.891390, 50.449097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070614, 0.686079, -0.724092,
		0.958923, 0.246622, 0.140159,
		0.274737, -0.684451, -0.675312,
		36.050014, 29.686054, 50.246502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272411, 30.506325, 50.272785>,  <35.857700, 30.165171, 50.719223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272411, 30.506325, 50.272785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.158512, 30.191069, 50.054520>,  <36.090172, 30.001915, 49.923561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.158512, 30.191069, 50.054520>,  <36.272411, 30.506325, 50.272785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158512, 30.191069, 50.054520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096251, 0.589861, -0.801748,
		0.953757, -0.175777, -0.243822,
		-0.284750, -0.788141, -0.545666,
		36.073086, 29.954626, 49.890820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724262, 30.512093, 49.622906>,  <36.272411, 30.506325, 50.272785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724262, 30.512093, 49.622906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383450, 30.316536, 49.548042>,  <36.178963, 30.199202, 49.503124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.383450, 30.316536, 49.548042>,  <36.724262, 30.512093, 49.622906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383450, 30.316536, 49.548042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090313, 0.489438, -0.867349,
		0.515644, -0.722104, -0.461169,
		-0.852030, -0.488892, -0.187160,
		36.127838, 30.169868, 49.491894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401028, 30.500986, 49.181488>,  <36.724262, 30.512093, 49.622906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401028, 30.500986, 49.181488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642632, 30.809427, 49.262054>,  <37.787594, 30.994492, 49.310394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.642632, 30.809427, 49.262054>,  <37.401028, 30.500986, 49.181488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642632, 30.809427, 49.262054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283491, -0.444072, 0.849961,
		0.744851, -0.456288, -0.486826,
		0.604012, 0.771104, 0.201414,
		37.823833, 31.040758, 49.322479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073994, 30.210228, 49.420532>,  <37.401028, 30.500986, 49.181488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073994, 30.210228, 49.420532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087257, 30.591658, 49.540264>,  <38.095215, 30.820515, 49.612103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.087257, 30.591658, 49.540264>,  <38.073994, 30.210228, 49.420532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087257, 30.591658, 49.540264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744231, -0.223464, 0.629431,
		0.667099, 0.201898, -0.717089,
		0.033163, 0.953573, 0.299332,
		38.097206, 30.877729, 49.630062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866764, 30.459948, 49.342316>,  <38.073994, 30.210228, 49.420532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866764, 30.459948, 49.342316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.687035, 30.679642, 49.624149>,  <38.579197, 30.811459, 49.793251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.687035, 30.679642, 49.624149>,  <38.866764, 30.459948, 49.342316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687035, 30.679642, 49.624149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749825, -0.196896, 0.631660,
		0.485661, 0.812140, -0.323361,
		-0.449327, 0.549237, 0.704588,
		38.552235, 30.844414, 49.835526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266254, 30.892527, 49.630013>,  <38.866764, 30.459948, 49.342316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266254, 30.892527, 49.630013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002487, 30.917673, 49.929668>,  <38.844227, 30.932760, 50.109463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.002487, 30.917673, 49.929668>,  <39.266254, 30.892527, 49.630013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002487, 30.917673, 49.929668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743088, -0.096538, 0.662194,
		0.113950, 0.993342, 0.016944,
		-0.659421, 0.062866, 0.749141,
		38.804661, 30.936533, 50.154411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648365, 31.222036, 50.137283>,  <39.266254, 30.892527, 49.630013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648365, 31.222036, 50.137283> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.333858, 31.080475, 50.339882>,  <39.145157, 30.995537, 50.461441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.333858, 31.080475, 50.339882>,  <39.648365, 31.222036, 50.137283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333858, 31.080475, 50.339882> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596373, -0.220215, 0.771910,
		-0.161644, 0.908987, 0.384207,
		-0.786264, -0.353905, 0.506498,
		39.097980, 30.974304, 50.491833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705795, 31.447470, 50.791122>,  <39.648365, 31.222036, 50.137283>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705795, 31.447470, 50.791122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.449623, 31.142191, 50.825500>,  <39.295921, 30.959024, 50.846127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.449623, 31.142191, 50.825500>,  <39.705795, 31.447470, 50.791122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449623, 31.142191, 50.825500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397296, -0.233440, 0.887503,
		-0.657274, 0.602527, 0.452716,
		-0.640427, -0.763195, 0.085948,
		39.257496, 30.913233, 50.851284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411346, 31.509077, 51.503334>,  <39.705795, 31.447470, 50.791122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411346, 31.509077, 51.503334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.320953, 31.133532, 51.399437>,  <39.266716, 30.908205, 51.337097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.320953, 31.133532, 51.399437>,  <39.411346, 31.509077, 51.503334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320953, 31.133532, 51.399437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293488, -0.319871, 0.900859,
		-0.928869, 0.127346, 0.347830,
		-0.225982, -0.938864, -0.259744,
		39.253159, 30.851871, 51.321514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104630, 31.165405, 52.102467>,  <39.411346, 31.509077, 51.503334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104630, 31.165405, 52.102467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.193027, 30.843197, 51.882538>,  <39.246067, 30.649872, 51.750580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.193027, 30.843197, 51.882538>,  <39.104630, 31.165405, 52.102467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193027, 30.843197, 51.882538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241145, -0.501121, 0.831100,
		-0.944992, -0.316254, 0.083502,
		0.220994, -0.805519, -0.549819,
		39.259327, 30.601542, 51.717590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755535, 30.435247, 52.299694>,  <39.104630, 31.165405, 52.102467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755535, 30.435247, 52.299694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.092953, 30.345293, 52.104614>,  <39.295403, 30.291321, 51.987564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.092953, 30.345293, 52.104614>,  <38.755535, 30.435247, 52.299694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092953, 30.345293, 52.104614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429906, -0.261516, 0.864170,
		-0.321884, -0.938634, -0.123920,
		0.843547, -0.224889, -0.487702,
		39.346016, 30.277828, 51.958305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.312099, 37.179237, 38.138172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644661, 36.965370, 38.077648>,  <34.844200, 36.837048, 38.041336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644661, 36.965370, 38.077648>,  <34.312099, 37.179237, 38.138172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644661, 36.965370, 38.077648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142089, -0.467808, 0.872334,
		-0.537195, -0.703762, -0.464909,
		0.831403, -0.534672, -0.151307,
		34.894081, 36.804970, 38.032257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178131, 36.501308, 38.380600>,  <34.312099, 37.179237, 38.138172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178131, 36.501308, 38.380600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578033, 36.501266, 38.371746>,  <34.817974, 36.501244, 38.366436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.578033, 36.501266, 38.371746>,  <34.178131, 36.501308, 38.380600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578033, 36.501266, 38.371746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018033, -0.576083, 0.817192,
		-0.012832, -0.817391, -0.575940,
		0.999755, -0.000100, -0.022133,
		34.877960, 36.501236, 38.365105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303524, 35.886295, 38.580925>,  <34.178131, 36.501308, 38.380600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303524, 35.886295, 38.580925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645309, 36.083996, 38.644936>,  <34.850380, 36.202614, 38.683342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.645309, 36.083996, 38.644936>,  <34.303524, 35.886295, 38.580925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645309, 36.083996, 38.644936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130950, -0.503001, 0.854308,
		0.502737, -0.709019, -0.494518,
		0.854463, 0.494249, 0.160031,
		34.901649, 36.232269, 38.692944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835453, 35.316994, 38.685776>,  <34.303524, 35.886295, 38.580925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835453, 35.316994, 38.685776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943401, 35.664452, 38.851967>,  <35.008171, 35.872929, 38.951683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943401, 35.664452, 38.851967>,  <34.835453, 35.316994, 38.685776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943401, 35.664452, 38.851967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134846, -0.461327, 0.876923,
		0.953409, -0.180627, -0.241631,
		0.269866, 0.868649, 0.415476,
		35.024361, 35.925045, 38.976608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561901, 35.250893, 38.888638>,  <34.835453, 35.316994, 38.685776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561901, 35.250893, 38.888638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417397, 35.557510, 39.101017>,  <35.330692, 35.741482, 39.228443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417397, 35.557510, 39.101017>,  <35.561901, 35.250893, 38.888638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417397, 35.557510, 39.101017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143000, -0.517123, 0.843881,
		0.921435, 0.380787, 0.077201,
		-0.361261, 0.766541, 0.530947,
		35.309017, 35.787472, 39.260300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907124, 35.168774, 39.449593>,  <35.561901, 35.250893, 38.888638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907124, 35.168774, 39.449593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625576, 35.421520, 39.579395>,  <35.456646, 35.573170, 39.657276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625576, 35.421520, 39.579395>,  <35.907124, 35.168774, 39.449593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625576, 35.421520, 39.579395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229687, -0.229836, 0.945737,
		0.672167, 0.740212, 0.016643,
		-0.703872, 0.631871, 0.324505,
		35.414413, 35.611080, 39.676746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236988, 35.740360, 39.939800>,  <35.907124, 35.168774, 39.449593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236988, 35.740360, 39.939800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851246, 35.688267, 40.031937>,  <35.619801, 35.657009, 40.087219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851246, 35.688267, 40.031937>,  <36.236988, 35.740360, 39.939800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851246, 35.688267, 40.031937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260173, -0.307976, 0.915129,
		-0.048244, 0.942438, 0.330882,
		-0.964356, -0.130236, 0.230339,
		35.561939, 35.649197, 40.101040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209770, 36.080360, 40.570999>,  <36.236988, 35.740360, 39.939800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209770, 36.080360, 40.570999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879078, 35.856453, 40.548443>,  <35.680664, 35.722107, 40.534908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879078, 35.856453, 40.548443>,  <36.209770, 36.080360, 40.570999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879078, 35.856453, 40.548443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024945, -0.136608, 0.990311,
		-0.562050, 0.817310, 0.126901,
		-0.826727, -0.559770, -0.056393,
		35.631062, 35.688522, 40.531525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762905, 36.327705, 41.217514>,  <36.209770, 36.080360, 40.570999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762905, 36.327705, 41.217514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614937, 35.980892, 41.084000>,  <35.526154, 35.772804, 41.003891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614937, 35.980892, 41.084000>,  <35.762905, 36.327705, 41.217514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614937, 35.980892, 41.084000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160319, -0.294308, 0.942168,
		-0.915125, 0.402042, -0.030130,
		-0.369923, -0.867032, -0.333784,
		35.503960, 35.720783, 40.983864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146187, 36.245705, 41.536133>,  <35.762905, 36.327705, 41.217514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146187, 36.245705, 41.536133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275787, 35.883461, 41.426666>,  <35.353550, 35.666115, 41.360985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275787, 35.883461, 41.426666>,  <35.146187, 36.245705, 41.536133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275787, 35.883461, 41.426666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067681, -0.310717, 0.948090,
		-0.943631, -0.288665, -0.161966,
		0.324006, -0.905609, -0.273665,
		35.372990, 35.611778, 41.344566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732540, 35.738087, 41.862286>,  <35.146187, 36.245705, 41.536133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732540, 35.738087, 41.862286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082329, 35.563251, 41.778137>,  <35.292202, 35.458351, 41.727646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082329, 35.563251, 41.778137>,  <34.732540, 35.738087, 41.862286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082329, 35.563251, 41.778137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030449, -0.383378, 0.923089,
		-0.484121, -0.813621, -0.321944,
		0.874471, -0.437084, -0.210376,
		35.344669, 35.432125, 41.715023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.705341, 35.137192, 42.212650>,  <34.732540, 35.738087, 41.862286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.705341, 35.137192, 42.212650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095631, 35.165665, 42.129803>,  <35.329803, 35.182747, 42.080093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095631, 35.165665, 42.129803>,  <34.705341, 35.137192, 42.212650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095631, 35.165665, 42.129803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214546, -0.500546, 0.838704,
		-0.043972, -0.862779, -0.503666,
		0.975724, 0.071180, -0.207116,
		35.388348, 35.187019, 42.067669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380470, 34.509857, 41.901619>,  <34.705341, 35.137192, 42.212650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380470, 34.509857, 41.901619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082821, 34.254551, 41.980515>,  <33.904232, 34.101368, 42.027851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.082821, 34.254551, 41.980515>,  <34.380470, 34.509857, 41.901619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082821, 34.254551, 41.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275308, 0.023979, -0.961057,
		0.608676, -0.769446, -0.193561,
		-0.744123, -0.638261, 0.197239,
		33.859585, 34.063072, 42.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474113, 33.825268, 41.507244>,  <34.380470, 34.509857, 41.901619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474113, 33.825268, 41.507244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091301, 33.915733, 41.579842>,  <33.861614, 33.970013, 41.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091301, 33.915733, 41.579842>,  <34.474113, 33.825268, 41.507244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091301, 33.915733, 41.579842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169253, 0.072545, -0.982899,
		-0.235461, -0.971384, -0.031149,
		-0.957033, 0.226162, 0.181491,
		33.804192, 33.983582, 41.634289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034744, 33.342503, 41.137123>,  <34.474113, 33.825268, 41.507244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034744, 33.342503, 41.137123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787811, 33.648804, 41.209255>,  <33.639652, 33.832584, 41.252537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787811, 33.648804, 41.209255>,  <34.034744, 33.342503, 41.137123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787811, 33.648804, 41.209255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373670, -0.083697, -0.923778,
		-0.692295, -0.637662, 0.337809,
		-0.617331, 0.765756, 0.180332,
		33.602612, 33.878529, 41.263355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443443, 33.158756, 40.827728>,  <34.034744, 33.342503, 41.137123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443443, 33.158756, 40.827728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341251, 33.540798, 40.887749>,  <33.279938, 33.770023, 40.923759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341251, 33.540798, 40.887749>,  <33.443443, 33.158756, 40.827728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341251, 33.540798, 40.887749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415124, 0.031797, -0.909209,
		-0.873158, -0.294568, 0.388362,
		-0.255475, 0.955101, 0.150046,
		33.264610, 33.827328, 40.932762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740131, 33.294289, 40.766712>,  <33.443443, 33.158756, 40.827728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740131, 33.294289, 40.766712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876713, 33.662693, 40.691727>,  <32.958660, 33.883736, 40.646736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876713, 33.662693, 40.691727>,  <32.740131, 33.294289, 40.766712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876713, 33.662693, 40.691727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481525, 0.000130, -0.876432,
		-0.807182, 0.389530, 0.443536,
		0.341454, 0.921014, -0.187463,
		32.979149, 33.938995, 40.635487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167900, 33.606354, 40.563427>,  <32.740131, 33.294289, 40.766712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167900, 33.606354, 40.563427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419140, 33.888733, 40.432507>,  <32.569885, 34.058159, 40.353954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419140, 33.888733, 40.432507>,  <32.167900, 33.606354, 40.563427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419140, 33.888733, 40.432507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640190, 0.229724, -0.733065,
		-0.442315, 0.669977, 0.596229,
		0.628104, 0.705945, -0.327302,
		32.607571, 34.100517, 40.334316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773676, 34.313461, 40.469997>,  <32.167900, 33.606354, 40.563427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773676, 34.313461, 40.469997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095970, 34.326599, 40.233452>,  <32.289349, 34.334480, 40.091526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095970, 34.326599, 40.233452>,  <31.773676, 34.313461, 40.469997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095970, 34.326599, 40.233452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583930, 0.211063, -0.783887,
		0.099067, 0.976921, 0.189241,
		0.805737, 0.032846, -0.591362,
		32.337692, 34.336452, 40.056042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627266, 34.802490, 39.953915>,  <31.773676, 34.313461, 40.469997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627266, 34.802490, 39.953915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917936, 34.576317, 39.797852>,  <32.092339, 34.440613, 39.704212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917936, 34.576317, 39.797852>,  <31.627266, 34.802490, 39.953915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917936, 34.576317, 39.797852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509715, -0.063013, -0.858033,
		0.460579, 0.822381, -0.334003,
		0.726676, -0.565438, -0.390157,
		32.135941, 34.406685, 39.680805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568914, 34.881405, 39.284351>,  <31.627266, 34.802490, 39.953915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568914, 34.881405, 39.284351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812634, 34.564674, 39.267559>,  <31.958866, 34.374634, 39.257484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812634, 34.564674, 39.267559>,  <31.568914, 34.881405, 39.284351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812634, 34.564674, 39.267559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438833, -0.292637, -0.849582,
		0.660439, 0.536071, -0.525784,
		0.609300, -0.791828, -0.041977,
		31.995424, 34.327126, 39.254967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923922, 34.934689, 38.630150>,  <31.568914, 34.881405, 39.284351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923922, 34.934689, 38.630150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933334, 34.550026, 38.739441>,  <31.938982, 34.319229, 38.805016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933334, 34.550026, 38.739441>,  <31.923922, 34.934689, 38.630150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933334, 34.550026, 38.739441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423648, -0.257145, -0.868561,
		0.905521, -0.095316, -0.413457,
		0.023531, -0.961661, 0.273231,
		31.940393, 34.261528, 38.821411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259022, 34.549660, 38.018349>,  <31.923922, 34.934689, 38.630150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259022, 34.549660, 38.018349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051407, 34.292900, 38.244114>,  <31.926836, 34.138844, 38.379574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.051407, 34.292900, 38.244114>,  <32.259022, 34.549660, 38.018349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051407, 34.292900, 38.244114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490379, -0.317216, -0.811728,
		0.700089, -0.698096, -0.150126,
		-0.519041, -0.641900, 0.564411,
		31.895695, 34.100330, 38.413437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323895, 33.917458, 37.708630>,  <32.259022, 34.549660, 38.018349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323895, 33.917458, 37.708630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996176, 33.924385, 37.937874>,  <31.799545, 33.928543, 38.075420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996176, 33.924385, 37.937874>,  <32.323895, 33.917458, 37.708630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996176, 33.924385, 37.937874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521994, -0.436072, -0.733051,
		0.237220, -0.899745, 0.366312,
		-0.819298, 0.017318, 0.573107,
		31.750387, 33.929581, 38.109806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925463, 33.219219, 37.681351>,  <32.323895, 33.917458, 37.708630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925463, 33.219219, 37.681351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682646, 33.519714, 37.785000>,  <31.536955, 33.700012, 37.847187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682646, 33.519714, 37.785000>,  <31.925463, 33.219219, 37.681351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682646, 33.519714, 37.785000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657970, -0.292302, -0.694000,
		-0.445616, -0.591782, 0.671730,
		-0.607044, 0.751235, 0.259120,
		31.500532, 33.745083, 37.862736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336260, 33.136211, 38.142155>,  <31.925463, 33.219219, 37.681351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336260, 33.136211, 38.142155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363178, 33.348263, 37.804058>,  <31.379330, 33.475494, 37.601200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363178, 33.348263, 37.804058>,  <31.336260, 33.136211, 38.142155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363178, 33.348263, 37.804058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467417, -0.731694, -0.496130,
		-0.881472, 0.428468, 0.198552,
		0.067297, 0.530131, -0.845241,
		31.383368, 33.507301, 37.550488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654089, 32.684731, 38.499813>,  <31.336260, 33.136211, 38.142155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654089, 32.684731, 38.499813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807615, 32.384655, 38.284443>,  <31.899731, 32.204609, 38.155220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.807615, 32.384655, 38.284443>,  <31.654089, 32.684731, 38.499813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807615, 32.384655, 38.284443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141932, -0.528229, 0.837155,
		-0.912438, -0.397731, -0.096265,
		0.383813, -0.750189, -0.538427,
		31.922760, 32.159599, 38.122913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295094, 32.905655, 38.370770>,  <31.654089, 32.684731, 38.499813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295094, 32.905655, 38.370770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009045, 32.703522, 38.177589>,  <31.837416, 32.582241, 38.061680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009045, 32.703522, 38.177589>,  <32.295094, 32.905655, 38.370770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009045, 32.703522, 38.177589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306204, 0.847564, -0.433445,
		0.628366, -0.162083, -0.760845,
		-0.715119, -0.505336, -0.482950,
		31.794510, 32.551922, 38.032703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913452, 33.151321, 38.460266>,  <32.295094, 32.905655, 38.370770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913452, 33.151321, 38.460266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234970, 33.079720, 38.233330>,  <33.427879, 33.036758, 38.097168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234970, 33.079720, 38.233330>,  <32.913452, 33.151321, 38.460266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234970, 33.079720, 38.233330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021989, -0.961945, 0.272356,
		-0.594501, -0.206443, -0.777142,
		0.803794, -0.179004, -0.567338,
		33.476109, 33.026020, 38.063129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832066, 32.557556, 37.960228>,  <32.913452, 33.151321, 38.460266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832066, 32.557556, 37.960228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218773, 32.596424, 38.054813>,  <33.450798, 32.619747, 38.111565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218773, 32.596424, 38.054813>,  <32.832066, 32.557556, 37.960228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218773, 32.596424, 38.054813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039041, -0.970215, 0.239078,
		0.252657, -0.221901, -0.941767,
		0.966768, 0.097172, 0.236468,
		33.508804, 32.625576, 38.125755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263546, 31.971306, 37.645752>,  <32.832066, 32.557556, 37.960228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263546, 31.971306, 37.645752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504593, 32.115105, 37.930740>,  <33.649220, 32.201385, 38.101734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504593, 32.115105, 37.930740>,  <33.263546, 31.971306, 37.645752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504593, 32.115105, 37.930740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336925, -0.923927, 0.181221,
		0.723420, 0.130843, -0.677896,
		0.602615, 0.359499, 0.712472,
		33.685379, 32.222954, 38.144482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802025, 31.537905, 37.612961>,  <33.263546, 31.971306, 37.645752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802025, 31.537905, 37.612961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820492, 31.676298, 37.987801>,  <33.831573, 31.759335, 38.212704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820492, 31.676298, 37.987801>,  <33.802025, 31.537905, 37.612961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820492, 31.676298, 37.987801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208182, -0.920838, 0.329724,
		0.977000, 0.179865, -0.114542,
		0.046169, 0.345986, 0.937103,
		33.834343, 31.780094, 38.268932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410404, 31.145658, 37.913738>,  <33.802025, 31.537905, 37.612961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410404, 31.145658, 37.913738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216667, 31.279474, 38.237095>,  <34.100426, 31.359764, 38.431110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216667, 31.279474, 38.237095>,  <34.410404, 31.145658, 37.913738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216667, 31.279474, 38.237095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363561, -0.763480, 0.533781,
		0.795761, 0.552432, 0.248161,
		-0.484343, 0.334540, 0.808390,
		34.071365, 31.379837, 38.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882862, 31.173126, 38.493397>,  <34.410404, 31.145658, 37.913738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882862, 31.173126, 38.493397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533157, 31.179716, 38.687466>,  <34.323334, 31.183670, 38.803905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533157, 31.179716, 38.687466>,  <34.882862, 31.173126, 38.493397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533157, 31.179716, 38.687466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344591, -0.682897, 0.644134,
		0.341930, 0.730329, 0.591357,
		-0.874266, 0.016473, 0.485168,
		34.270878, 31.184658, 38.833015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024971, 31.279108, 39.259289>,  <34.882862, 31.173126, 38.493397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024971, 31.279108, 39.259289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679714, 31.086689, 39.197876>,  <34.472561, 30.971237, 39.161026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679714, 31.086689, 39.197876>,  <35.024971, 31.279108, 39.259289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679714, 31.086689, 39.197876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395373, -0.832967, 0.387100,
		-0.314105, 0.273420, 0.909164,
		-0.863145, -0.481049, -0.153536,
		34.420773, 30.942375, 39.151814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895390, 31.042696, 39.928913>,  <35.024971, 31.279108, 39.259289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895390, 31.042696, 39.928913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655334, 30.828266, 39.691441>,  <34.511303, 30.699608, 39.548958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655334, 30.828266, 39.691441>,  <34.895390, 31.042696, 39.928913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655334, 30.828266, 39.691441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108603, -0.789934, 0.603498,
		-0.792490, 0.297707, 0.532288,
		-0.600138, -0.536074, -0.593683,
		34.475292, 30.667444, 39.513336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390060, 30.724499, 40.383938>,  <34.895390, 31.042696, 39.928913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390060, 30.724499, 40.383938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365330, 30.493408, 40.058384>,  <34.350491, 30.354753, 39.863052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365330, 30.493408, 40.058384>,  <34.390060, 30.724499, 40.383938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365330, 30.493408, 40.058384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152675, -0.811322, 0.564311,
		-0.986340, -0.089368, 0.138369,
		-0.061831, -0.577728, -0.813884,
		34.346779, 30.320089, 39.814220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868797, 30.236368, 40.532616>,  <34.390060, 30.724499, 40.383938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868797, 30.236368, 40.532616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093552, 30.092138, 40.234821>,  <34.228405, 30.005600, 40.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.093552, 30.092138, 40.234821>,  <33.868797, 30.236368, 40.532616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093552, 30.092138, 40.234821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204280, -0.811640, 0.547275,
		-0.801591, -0.459593, -0.382395,
		0.561891, -0.360575, -0.744489,
		34.262119, 29.983965, 40.011475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624371, 29.626640, 40.329872>,  <33.868797, 30.236368, 40.532616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624371, 29.626640, 40.329872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012356, 29.622726, 40.232651>,  <34.245148, 29.620378, 40.174320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012356, 29.622726, 40.232651>,  <33.624371, 29.626640, 40.329872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012356, 29.622726, 40.232651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106239, -0.881812, 0.459480,
		-0.218822, -0.471501, -0.854286,
		0.969964, -0.009785, -0.243052,
		34.303345, 29.619791, 40.159737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760376, 28.922308, 40.077908>,  <33.624371, 29.626640, 40.329872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760376, 28.922308, 40.077908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111305, 29.088499, 40.173973>,  <34.321865, 29.188213, 40.231613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111305, 29.088499, 40.173973>,  <33.760376, 28.922308, 40.077908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111305, 29.088499, 40.173973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181370, -0.750393, 0.635622,
		0.444301, -0.514090, -0.733695,
		0.877326, 0.415478, 0.240160,
		34.374504, 29.213142, 40.246021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244114, 28.299809, 40.206417>,  <33.760376, 28.922308, 40.077908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244114, 28.299809, 40.206417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442780, 28.611614, 40.359089>,  <34.561981, 28.798697, 40.450691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442780, 28.611614, 40.359089>,  <34.244114, 28.299809, 40.206417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442780, 28.611614, 40.359089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235371, -0.544242, 0.805233,
		0.835417, -0.310096, -0.453782,
		0.496667, 0.779513, 0.381682,
		34.591782, 28.845469, 40.473595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768108, 27.944771, 40.519226>,  <34.244114, 28.299809, 40.206417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768108, 27.944771, 40.519226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751930, 28.307016, 40.688095>,  <34.742222, 28.524363, 40.789417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751930, 28.307016, 40.688095>,  <34.768108, 27.944771, 40.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751930, 28.307016, 40.688095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097202, -0.416948, 0.903718,
		0.994442, 0.077590, -0.071162,
		-0.040449, 0.905613, 0.422172,
		34.739796, 28.578701, 40.814747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436760, 28.120979, 40.851322>,  <34.768108, 27.944771, 40.519226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436760, 28.120979, 40.851322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179012, 28.383446, 41.008415>,  <35.024364, 28.540926, 41.102669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179012, 28.383446, 41.008415>,  <35.436760, 28.120979, 40.851322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179012, 28.383446, 41.008415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368701, -0.183353, 0.911286,
		0.669962, 0.732003, -0.123782,
		-0.644368, 0.656165, 0.392730,
		34.985703, 28.580296, 41.126236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837559, 28.566950, 41.362556>,  <35.436760, 28.120979, 40.851322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837559, 28.566950, 41.362556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449493, 28.561790, 41.459404>,  <35.216656, 28.558695, 41.517513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449493, 28.561790, 41.459404>,  <35.837559, 28.566950, 41.362556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449493, 28.561790, 41.459404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236554, -0.269395, 0.933525,
		0.053185, 0.962943, 0.264408,
		-0.970162, -0.012897, 0.242116,
		35.158443, 28.557920, 41.532040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890079, 28.801662, 41.996399>,  <35.837559, 28.566950, 41.362556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890079, 28.801662, 41.996399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516144, 28.659981, 41.986473>,  <35.291782, 28.574972, 41.980518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516144, 28.659981, 41.986473>,  <35.890079, 28.801662, 41.996399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516144, 28.659981, 41.986473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072974, -0.260042, 0.962836,
		-0.347494, 0.898285, 0.268945,
		-0.934838, -0.354206, -0.024812,
		35.235691, 28.553719, 41.979031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585403, 29.061865, 42.599579>,  <35.890079, 28.801662, 41.996399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585403, 29.061865, 42.599579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359455, 28.754240, 42.479935>,  <35.223888, 28.569666, 42.408146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.359455, 28.754240, 42.479935>,  <35.585403, 29.061865, 42.599579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.359455, 28.754240, 42.479935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005662, -0.358863, 0.933373,
		-0.825162, 0.528925, 0.198356,
		-0.564867, -0.769061, -0.299115,
		35.189995, 28.523521, 42.390202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115208, 28.871616, 43.127663>,  <35.585403, 29.061865, 42.599579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115208, 28.871616, 43.127663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141071, 28.551991, 42.888557>,  <35.156590, 28.360214, 42.745094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.141071, 28.551991, 42.888557>,  <35.115208, 28.871616, 43.127663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141071, 28.551991, 42.888557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145351, -0.585082, 0.797842,
		-0.987265, -0.138475, 0.078312,
		0.064663, -0.799064, -0.597758,
		35.160469, 28.312271, 42.709229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674980, 28.393881, 43.514072>,  <35.115208, 28.871616, 43.127663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674980, 28.393881, 43.514072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909454, 28.198408, 43.255592>,  <35.050137, 28.081123, 43.100502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909454, 28.198408, 43.255592>,  <34.674980, 28.393881, 43.514072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909454, 28.198408, 43.255592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206467, -0.681166, 0.702413,
		-0.783429, -0.545162, -0.298391,
		0.586182, -0.488683, -0.646203,
		35.085308, 28.051804, 43.061733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373386, 27.647327, 43.479210>,  <34.674980, 28.393881, 43.514072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373386, 27.647327, 43.479210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755329, 27.645729, 43.360394>,  <34.984493, 27.644770, 43.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755329, 27.645729, 43.360394>,  <34.373386, 27.647327, 43.479210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755329, 27.645729, 43.360394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220286, -0.661343, 0.717008,
		-0.199313, -0.750073, -0.630607,
		0.954855, -0.003995, -0.297045,
		35.041786, 27.644531, 43.271278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553043, 26.962208, 43.540493>,  <34.373386, 27.647327, 43.479210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553043, 26.962208, 43.540493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905563, 27.150291, 43.521667>,  <35.117077, 27.263142, 43.510372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905563, 27.150291, 43.521667>,  <34.553043, 26.962208, 43.540493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905563, 27.150291, 43.521667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382668, -0.651674, 0.654894,
		0.277264, -0.595169, -0.754254,
		0.881300, 0.470207, -0.047066,
		35.169952, 27.291353, 43.507549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007023, 26.464569, 43.382877>,  <34.553043, 26.962208, 43.540493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007023, 26.464569, 43.382877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187366, 26.770346, 43.567204>,  <35.295574, 26.953812, 43.677799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187366, 26.770346, 43.567204>,  <35.007023, 26.464569, 43.382877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187366, 26.770346, 43.567204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285139, -0.612564, 0.737198,
		0.845824, -0.200979, -0.494155,
		0.450862, 0.764443, 0.460814,
		35.322624, 26.999680, 43.705448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661278, 26.128801, 43.660980>,  <35.007023, 26.464569, 43.382877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661278, 26.128801, 43.660980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621506, 26.477201, 43.853424>,  <35.597645, 26.686241, 43.968891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621506, 26.477201, 43.853424>,  <35.661278, 26.128801, 43.660980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621506, 26.477201, 43.853424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563873, -0.349063, 0.748467,
		0.819855, 0.345704, -0.456428,
		-0.099426, 0.871002, 0.481114,
		35.591679, 26.738503, 43.997757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375774, 26.284197, 43.856846>,  <35.661278, 26.128801, 43.660980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375774, 26.284197, 43.856846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132645, 26.505419, 44.084770>,  <35.986767, 26.638151, 44.221523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132645, 26.505419, 44.084770>,  <36.375774, 26.284197, 43.856846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132645, 26.505419, 44.084770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591658, -0.163178, 0.789502,
		0.529618, 0.817009, -0.228036,
		-0.607820, 0.553054, 0.569812,
		35.950298, 26.671335, 44.255714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849384, 26.644531, 44.324577>,  <36.375774, 26.284197, 43.856846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849384, 26.644531, 44.324577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498234, 26.658108, 44.515648>,  <36.287544, 26.666254, 44.630291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498234, 26.658108, 44.515648>,  <36.849384, 26.644531, 44.324577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498234, 26.658108, 44.515648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442978, -0.321397, 0.836943,
		0.181930, 0.946336, 0.267114,
		-0.877879, 0.033940, 0.477678,
		36.234871, 26.668289, 44.658951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336487, 27.266392, 44.330551>,  <36.849384, 26.644531, 44.324577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336487, 27.266392, 44.330551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701305, 27.194441, 44.183140>,  <37.920197, 27.151270, 44.094692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.701305, 27.194441, 44.183140>,  <37.336487, 27.266392, 44.330551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701305, 27.194441, 44.183140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284344, 0.370174, -0.884375,
		0.295499, 0.911381, 0.286469,
		0.912046, -0.179876, -0.368532,
		37.974918, 27.140478, 44.072578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504692, 27.882704, 44.010075>,  <37.336487, 27.266392, 44.330551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504692, 27.882704, 44.010075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737331, 27.618433, 43.820229>,  <37.876915, 27.459871, 43.706322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737331, 27.618433, 43.820229>,  <37.504692, 27.882704, 44.010075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737331, 27.618433, 43.820229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137802, 0.494987, -0.857903,
		0.801722, 0.564354, 0.196839,
		0.581594, -0.660676, -0.474612,
		37.911808, 27.420231, 43.677845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938232, 28.303278, 43.537991>,  <37.504692, 27.882704, 44.010075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938232, 28.303278, 43.537991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977810, 27.933731, 43.390106>,  <38.001556, 27.712004, 43.301376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977810, 27.933731, 43.390106>,  <37.938232, 28.303278, 43.537991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977810, 27.933731, 43.390106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032357, 0.368347, -0.929125,
		0.994567, 0.103890, 0.006551,
		0.098940, -0.923865, -0.369707,
		38.007492, 27.656570, 43.279194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548534, 28.305370, 43.091316>,  <37.938232, 28.303278, 43.537991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548534, 28.305370, 43.091316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288155, 28.015942, 42.999489>,  <38.131927, 27.842283, 42.944393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288155, 28.015942, 42.999489>,  <38.548534, 28.305370, 43.091316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288155, 28.015942, 42.999489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023408, 0.321401, -0.946654,
		0.758757, -0.610853, -0.226155,
		-0.650953, -0.723574, -0.229566,
		38.092869, 27.798870, 42.930618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738007, 28.116669, 42.430408>,  <38.548534, 28.305370, 43.091316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738007, 28.116669, 42.430408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374115, 27.950674, 42.435875>,  <38.155781, 27.851078, 42.439156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374115, 27.950674, 42.435875>,  <38.738007, 28.116669, 42.430408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374115, 27.950674, 42.435875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067704, 0.115788, -0.990964,
		0.409652, -0.902431, -0.133431,
		-0.909726, -0.414985, 0.013666,
		38.101196, 27.826180, 42.439976>
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
