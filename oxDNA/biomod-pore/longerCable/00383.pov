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
	<24.401876, 35.217297, 35.145416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.141865, 34.941517, 35.017590>,  <23.985857, 34.776051, 34.940891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.141865, 34.941517, 35.017590>,  <24.401876, 35.217297, 35.145416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.141865, 34.941517, 35.017590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681355, 0.342580, 0.646835,
		-0.336480, 0.638202, -0.692445,
		-0.650029, -0.689447, -0.319571,
		23.946856, 34.734684, 34.921719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.917820, 34.729824, 34.722744>,  <24.401876, 35.217297, 35.145416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.917820, 34.729824, 34.722744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305708, 34.808285, 34.780945>,  <25.538441, 34.855362, 34.815865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305708, 34.808285, 34.780945>,  <24.917820, 34.729824, 34.722744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305708, 34.808285, 34.780945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240406, -0.661754, -0.710132,
		-0.043005, 0.723608, -0.688870,
		0.969719, 0.196148, 0.145501,
		25.596624, 34.867130, 34.824596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217800, 34.914341, 34.062862>,  <24.917820, 34.729824, 34.722744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217800, 34.914341, 34.062862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531750, 34.790596, 34.277626>,  <25.720119, 34.716351, 34.406483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.531750, 34.790596, 34.277626>,  <25.217800, 34.914341, 34.062862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.531750, 34.790596, 34.277626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220062, -0.670823, -0.708216,
		0.579262, 0.674014, -0.458434,
		0.784875, -0.309358, 0.536907,
		25.767212, 34.697788, 34.438698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.863138, 34.877941, 33.605404>,  <25.217800, 34.914341, 34.062862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.863138, 34.877941, 33.605404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986752, 34.644859, 33.906059>,  <26.060919, 34.505009, 34.086452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986752, 34.644859, 33.906059>,  <25.863138, 34.877941, 33.605404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986752, 34.644859, 33.906059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464304, -0.597299, -0.653954,
		0.830012, 0.551080, 0.085967,
		0.309033, -0.582704, 0.751634,
		26.079462, 34.470047, 34.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643927, 34.890015, 33.570572>,  <25.863138, 34.877941, 33.605404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643927, 34.890015, 33.570572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409670, 34.588093, 33.688747>,  <26.269115, 34.406940, 33.759655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409670, 34.588093, 33.688747>,  <26.643927, 34.890015, 33.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409670, 34.588093, 33.688747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415697, -0.592588, -0.689953,
		0.695858, -0.281252, 0.660817,
		-0.585643, -0.754809, 0.295442,
		26.233976, 34.361649, 33.777378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066128, 34.360542, 33.788918>,  <26.643927, 34.890015, 33.570572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066128, 34.360542, 33.788918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722515, 34.204994, 33.655743>,  <26.516348, 34.111668, 33.575840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.722515, 34.204994, 33.655743>,  <27.066128, 34.360542, 33.788918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.722515, 34.204994, 33.655743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506874, -0.555018, -0.659571,
		0.071703, -0.735348, 0.673885,
		-0.859033, -0.388868, -0.332933,
		26.464806, 34.088333, 33.555862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131443, 33.585220, 33.741520>,  <27.066128, 34.360542, 33.788918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131443, 33.585220, 33.741520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836687, 33.653282, 33.479820>,  <26.659834, 33.694118, 33.322800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836687, 33.653282, 33.479820>,  <27.131443, 33.585220, 33.741520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836687, 33.653282, 33.479820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491160, -0.530229, -0.691100,
		-0.464494, -0.830605, 0.307149,
		-0.736890, 0.170153, -0.654248,
		26.615620, 33.704330, 33.283546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.105734, 32.892517, 33.423843>,  <27.131443, 33.585220, 33.741520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.105734, 32.892517, 33.423843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922518, 33.177437, 33.211121>,  <26.812588, 33.348389, 33.083485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922518, 33.177437, 33.211121>,  <27.105734, 32.892517, 33.423843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922518, 33.177437, 33.211121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443876, -0.335064, -0.831088,
		-0.770177, -0.616730, -0.162701,
		-0.458041, 0.712304, -0.531810,
		26.785105, 33.391129, 33.051579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828104, 32.534538, 32.823700>,  <27.105734, 32.892517, 33.423843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828104, 32.534538, 32.823700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876268, 32.928810, 32.776466>,  <26.905167, 33.165371, 32.748127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876268, 32.928810, 32.776466>,  <26.828104, 32.534538, 32.823700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876268, 32.928810, 32.776466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538974, -0.164804, -0.826043,
		-0.833671, 0.035821, -0.551098,
		0.120413, 0.985676, -0.118085,
		26.912392, 33.224514, 32.741039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939772, 32.593166, 32.106346>,  <26.828104, 32.534538, 32.823700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939772, 32.593166, 32.106346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069984, 32.957409, 32.208195>,  <27.148111, 33.175953, 32.269302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069984, 32.957409, 32.208195>,  <26.939772, 32.593166, 32.106346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069984, 32.957409, 32.208195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672824, -0.033882, -0.739027,
		-0.664332, 0.411893, -0.623704,
		0.325532, 0.910602, 0.254623,
		27.167645, 33.230591, 32.284580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994967, 33.096016, 31.533524>,  <26.939772, 32.593166, 32.106346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994967, 33.096016, 31.533524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229603, 33.283001, 31.798065>,  <27.370384, 33.395195, 31.956789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.229603, 33.283001, 31.798065>,  <26.994967, 33.096016, 31.533524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.229603, 33.283001, 31.798065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652904, 0.210218, -0.727684,
		-0.479197, 0.858652, -0.181900,
		0.586589, 0.467467, 0.661353,
		27.405579, 33.423241, 31.996471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272390, 33.783676, 31.188480>,  <26.994967, 33.096016, 31.533524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272390, 33.783676, 31.188480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504692, 33.630127, 31.475636>,  <27.644073, 33.537998, 31.647928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.504692, 33.630127, 31.475636>,  <27.272390, 33.783676, 31.188480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504692, 33.630127, 31.475636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754766, -0.076539, -0.651514,
		0.305045, 0.920208, 0.245284,
		0.580754, -0.383873, 0.717890,
		27.678919, 33.514965, 31.691002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929131, 34.129841, 31.283274>,  <27.272390, 33.783676, 31.188480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929131, 34.129841, 31.283274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994585, 33.754089, 31.403795>,  <28.033857, 33.528637, 31.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.994585, 33.754089, 31.403795>,  <27.929131, 34.129841, 31.283274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.994585, 33.754089, 31.403795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726129, -0.092056, -0.681368,
		0.667803, 0.330282, 0.667049,
		0.163638, -0.939383, 0.301302,
		28.043676, 33.472275, 31.494186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600445, 33.995090, 31.642353>,  <27.929131, 34.129841, 31.283274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600445, 33.995090, 31.642353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512594, 33.654385, 31.452085>,  <28.459883, 33.449963, 31.337925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512594, 33.654385, 31.452085>,  <28.600445, 33.995090, 31.642353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512594, 33.654385, 31.452085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891201, 0.023190, -0.453016,
		0.396894, -0.523412, 0.753999,
		-0.219629, -0.851764, -0.475669,
		28.446705, 33.398857, 31.309385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066269, 33.501911, 31.910923>,  <28.600445, 33.995090, 31.642353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066269, 33.501911, 31.910923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950636, 33.464603, 31.529823>,  <28.881256, 33.442219, 31.301163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.950636, 33.464603, 31.529823>,  <29.066269, 33.501911, 31.910923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950636, 33.464603, 31.529823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946618, 0.120445, -0.299010,
		0.142641, -0.988329, 0.053468,
		-0.289081, -0.093265, -0.952751,
		28.863913, 33.436623, 31.243998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646967, 33.895363, 32.360397>,  <29.066269, 33.501911, 31.910923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646967, 33.895363, 32.360397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327570, 33.694450, 32.227654>,  <28.135933, 33.573902, 32.148006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327570, 33.694450, 32.227654>,  <28.646967, 33.895363, 32.360397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327570, 33.694450, 32.227654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483965, 0.207730, 0.850074,
		-0.358036, 0.839384, -0.408956,
		-0.798491, -0.502278, -0.331858,
		28.088022, 33.543766, 32.128098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194418, 33.798672, 32.958572>,  <28.646967, 33.895363, 32.360397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194418, 33.798672, 32.958572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956860, 33.715649, 32.647648>,  <27.814325, 33.665836, 32.461094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956860, 33.715649, 32.647648>,  <28.194418, 33.798672, 32.958572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956860, 33.715649, 32.647648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800831, 0.059817, 0.595895,
		-0.077185, 0.976393, -0.201741,
		-0.593895, -0.207555, -0.777309,
		27.778690, 33.653381, 32.414455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548031, 34.289639, 32.860580>,  <28.194418, 33.798672, 32.958572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548031, 34.289639, 32.860580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434727, 33.969639, 32.649010>,  <27.366743, 33.777637, 32.522068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434727, 33.969639, 32.649010>,  <27.548031, 34.289639, 32.860580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434727, 33.969639, 32.649010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936429, 0.111657, 0.332617,
		-0.207036, 0.589516, -0.780773,
		-0.283262, -0.800002, -0.528923,
		27.349749, 33.729637, 32.490334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995150, 34.519001, 32.336033>,  <27.548031, 34.289639, 32.860580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995150, 34.519001, 32.336033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984316, 34.140759, 32.465706>,  <26.977816, 33.913815, 32.543510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.984316, 34.140759, 32.465706>,  <26.995150, 34.519001, 32.336033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984316, 34.140759, 32.465706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947484, 0.127663, 0.293216,
		-0.318653, -0.299215, -0.899406,
		-0.027086, -0.945607, 0.324182,
		26.976191, 33.857075, 32.562962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.358829, 34.360409, 32.357712>,  <26.995150, 34.519001, 32.336033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.358829, 34.360409, 32.357712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484293, 34.045555, 32.570137>,  <26.559572, 33.856644, 32.697594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.484293, 34.045555, 32.570137>,  <26.358829, 34.360409, 32.357712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.484293, 34.045555, 32.570137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846997, 0.020870, 0.531188,
		-0.429201, -0.616425, -0.660157,
		0.313659, -0.787137, 0.531067,
		26.578390, 33.809414, 32.729458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823689, 34.055134, 31.905806>,  <26.358829, 34.360409, 32.357712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823689, 34.055134, 31.905806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491104, 34.250244, 31.799408>,  <25.291553, 34.367310, 31.735569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.491104, 34.250244, 31.799408>,  <25.823689, 34.055134, 31.905806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.491104, 34.250244, 31.799408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543380, 0.813739, -0.206318,
		0.115813, -0.316081, -0.941637,
		-0.831460, 0.487772, -0.265994,
		25.241667, 34.396576, 31.719610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652060, 34.211113, 32.591827>,  <25.823689, 34.055134, 31.905806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652060, 34.211113, 32.591827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931194, 34.019337, 32.804676>,  <26.098675, 33.904270, 32.932384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931194, 34.019337, 32.804676>,  <25.652060, 34.211113, 32.591827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931194, 34.019337, 32.804676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554267, 0.109084, 0.825160,
		-0.453665, -0.870766, -0.189618,
		0.697837, -0.479445, 0.532125,
		26.140545, 33.875504, 32.964314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.420139, 33.562923, 32.938313>,  <25.652060, 34.211113, 32.591827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.420139, 33.562923, 32.938313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723156, 33.739006, 33.131123>,  <25.904966, 33.844658, 33.246807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.723156, 33.739006, 33.131123>,  <25.420139, 33.562923, 32.938313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723156, 33.739006, 33.131123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615993, 0.237644, 0.751051,
		0.216061, -0.865881, 0.451186,
		0.757542, 0.440201, 0.482031,
		25.950418, 33.871067, 33.275730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710176, 33.287968, 33.586311>,  <25.420139, 33.562923, 32.938313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710176, 33.287968, 33.586311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083092, 33.211365, 33.709057>,  <26.306841, 33.165401, 33.782703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.083092, 33.211365, 33.709057>,  <25.710176, 33.287968, 33.586311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.083092, 33.211365, 33.709057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059583, 0.755454, 0.652487,
		-0.356774, -0.626590, 0.692891,
		0.932289, -0.191506, 0.306860,
		26.362778, 33.153912, 33.801113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624447, 33.469372, 34.284550>,  <25.710176, 33.287968, 33.586311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624447, 33.469372, 34.284550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988924, 33.515182, 34.126255>,  <26.207611, 33.542667, 34.031277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.988924, 33.515182, 34.126255>,  <25.624447, 33.469372, 34.284550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.988924, 33.515182, 34.126255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084402, 0.888318, 0.451406,
		0.403240, -0.444719, 0.799764,
		0.911194, 0.114523, -0.395741,
		26.262281, 33.549538, 34.007534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156481, 33.464451, 34.856922>,  <25.624447, 33.469372, 34.284550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156481, 33.464451, 34.856922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281530, 33.695511, 34.555305>,  <26.356560, 33.834148, 34.374336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281530, 33.695511, 34.555305>,  <26.156481, 33.464451, 34.856922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281530, 33.695511, 34.555305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063385, 0.804750, 0.590220,
		0.947760, -0.136720, 0.288197,
		0.312622, 0.577655, -0.754044,
		26.375317, 33.868809, 34.329094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569628, 33.919819, 35.192501>,  <26.156481, 33.464451, 34.856922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569628, 33.919819, 35.192501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435579, 34.090443, 34.856468>,  <26.355150, 34.192818, 34.654850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435579, 34.090443, 34.856468>,  <26.569628, 33.919819, 35.192501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435579, 34.090443, 34.856468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084170, 0.874523, 0.477625,
		0.938408, 0.230772, -0.257167,
		-0.335121, 0.426561, -0.840083,
		26.335043, 34.218410, 34.604443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986746, 34.548504, 35.042854>,  <26.569628, 33.919819, 35.192501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986746, 34.548504, 35.042854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611347, 34.565926, 34.905842>,  <26.386108, 34.576378, 34.823635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611347, 34.565926, 34.905842>,  <26.986746, 34.548504, 35.042854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611347, 34.565926, 34.905842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109938, 0.902696, 0.415997,
		0.327316, 0.428069, -0.842390,
		-0.938497, 0.043551, -0.342528,
		26.329798, 34.578991, 34.803082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822969, 35.195496, 35.082607>,  <26.986746, 34.548504, 35.042854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822969, 35.195496, 35.082607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443066, 35.082539, 35.028622>,  <26.215124, 35.014767, 34.996231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443066, 35.082539, 35.028622>,  <26.822969, 35.195496, 35.082607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443066, 35.082539, 35.028622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311997, 0.819979, 0.479887,
		-0.024844, 0.497886, -0.866886,
		-0.949758, -0.282388, -0.134968,
		26.158138, 34.997822, 34.988132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263296, 35.815083, 35.221363>,  <26.822969, 35.195496, 35.082607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263296, 35.815083, 35.221363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103270, 35.845066, 34.855995>,  <26.007254, 35.863056, 34.636776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103270, 35.845066, 34.855995>,  <26.263296, 35.815083, 35.221363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103270, 35.845066, 34.855995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532107, 0.792467, 0.298090,
		0.746196, 0.605291, -0.277155,
		-0.400067, 0.074958, -0.913415,
		25.983250, 35.867554, 34.581970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403751, 36.373360, 34.882408>,  <26.263296, 35.815083, 35.221363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403751, 36.373360, 34.882408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069874, 36.289192, 34.678837>,  <25.869547, 36.238693, 34.556694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.069874, 36.289192, 34.678837>,  <26.403751, 36.373360, 34.882408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069874, 36.289192, 34.678837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244601, 0.969624, 0.000272,
		0.493416, 0.124713, -0.860806,
		-0.834692, -0.210420, -0.508932,
		25.819466, 36.226067, 34.526157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952108, 36.720482, 34.781925>,  <26.403751, 36.373360, 34.882408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952108, 36.720482, 34.781925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321444, 36.873730, 34.792278>,  <27.543045, 36.965679, 34.798492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321444, 36.873730, 34.792278>,  <26.952108, 36.720482, 34.781925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321444, 36.873730, 34.792278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218681, -0.469227, -0.855573,
		-0.315637, 0.795643, -0.517035,
		0.923337, 0.383116, 0.025887,
		27.598444, 36.988667, 34.800045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073156, 37.002419, 34.084461>,  <26.952108, 36.720482, 34.781925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073156, 37.002419, 34.084461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432035, 36.946850, 34.252148>,  <27.647362, 36.913509, 34.352760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.432035, 36.946850, 34.252148>,  <27.073156, 37.002419, 34.084461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432035, 36.946850, 34.252148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335427, -0.403104, -0.851467,
		0.287276, 0.904548, -0.315064,
		0.897196, -0.138926, 0.419212,
		27.701195, 36.905170, 34.377911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.681458, 37.215847, 33.517235>,  <27.073156, 37.002419, 34.084461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.681458, 37.215847, 33.517235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785904, 36.952991, 33.800076>,  <27.848572, 36.795280, 33.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.785904, 36.952991, 33.800076>,  <27.681458, 37.215847, 33.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.785904, 36.952991, 33.800076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471911, -0.552114, -0.687364,
		0.842092, 0.513171, 0.165944,
		0.261115, -0.657135, 0.707102,
		27.864239, 36.755852, 34.012207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381681, 37.076550, 33.514229>,  <27.681458, 37.215847, 33.517235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381681, 37.076550, 33.514229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230051, 36.739655, 33.667557>,  <28.139072, 36.537518, 33.759552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230051, 36.739655, 33.667557>,  <28.381681, 37.076550, 33.514229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230051, 36.739655, 33.667557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555503, -0.538411, -0.633664,
		0.740080, -0.027273, 0.671965,
		-0.379075, -0.842241, 0.383317,
		28.116329, 36.486980, 33.782551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000862, 36.688801, 33.688011>,  <28.381681, 37.076550, 33.514229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000862, 36.688801, 33.688011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675900, 36.459560, 33.645016>,  <28.480923, 36.322018, 33.619217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675900, 36.459560, 33.645016>,  <29.000862, 36.688801, 33.688011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675900, 36.459560, 33.645016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468307, -0.531464, -0.705858,
		0.347401, -0.623780, 0.700151,
		-0.812405, -0.573101, -0.107489,
		28.432178, 36.287632, 33.612770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612305, 36.163860, 33.729126>,  <29.000862, 36.688801, 33.688011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612305, 36.163860, 33.729126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228184, 36.068390, 33.786880>,  <28.997711, 36.011108, 33.821533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.228184, 36.068390, 33.786880>,  <29.612305, 36.163860, 33.729126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228184, 36.068390, 33.786880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111294, -0.802430, -0.586276,
		0.255790, -0.546935, 0.797141,
		-0.960305, -0.238681, 0.144383,
		28.940092, 35.996784, 33.830196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617655, 35.551552, 34.031078>,  <29.612305, 36.163860, 33.729126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617655, 35.551552, 34.031078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241579, 35.565250, 33.895512>,  <29.015934, 35.573471, 33.814171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241579, 35.565250, 33.895512>,  <29.617655, 35.551552, 34.031078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241579, 35.565250, 33.895512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171301, -0.812446, -0.557303,
		-0.294441, -0.582029, 0.757989,
		-0.940192, 0.034249, -0.338919,
		28.959522, 35.575523, 33.793835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302031, 35.418148, 33.547878>,  <29.617655, 35.551552, 34.031078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302031, 35.418148, 33.547878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301474, 35.632969, 33.210457>,  <30.301140, 35.761860, 33.008003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.301474, 35.632969, 33.210457>,  <30.302031, 35.418148, 33.547878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.301474, 35.632969, 33.210457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698290, 0.604350, 0.383606,
		0.715814, -0.588507, -0.375858,
		-0.001395, 0.537048, -0.843550,
		30.301056, 35.794083, 32.957390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821241, 35.837505, 33.082798>,  <30.302031, 35.418148, 33.547878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821241, 35.837505, 33.082798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856249, 35.761456, 32.691658>,  <29.877254, 35.715824, 32.456974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.856249, 35.761456, 32.691658>,  <29.821241, 35.837505, 33.082798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.856249, 35.761456, 32.691658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903167, 0.429281, -0.002629,
		0.420272, -0.882933, 0.209284,
		0.087521, -0.190123, -0.977851,
		29.882505, 35.704418, 32.398304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438915, 35.144924, 33.263203>,  <29.821241, 35.837505, 33.082798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438915, 35.144924, 33.263203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432526, 34.882690, 32.961224>,  <29.428692, 34.725349, 32.780037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432526, 34.882690, 32.961224>,  <29.438915, 35.144924, 33.263203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432526, 34.882690, 32.961224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977664, -0.148012, 0.149218,
		-0.209568, 0.740473, -0.638578,
		-0.015975, -0.655585, -0.754952,
		29.427732, 34.686016, 32.734737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116348, 35.398266, 32.698055>,  <29.438915, 35.144924, 33.263203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116348, 35.398266, 32.698055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068956, 35.005955, 32.760059>,  <29.040522, 34.770569, 32.797260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.068956, 35.005955, 32.760059>,  <29.116348, 35.398266, 32.698055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068956, 35.005955, 32.760059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947432, 0.158390, 0.278003,
		-0.297212, -0.113924, -0.947991,
		-0.118481, -0.980783, 0.155011,
		29.033411, 34.711720, 32.806564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364403, 35.367760, 32.816555>,  <29.116348, 35.398266, 32.698055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364403, 35.367760, 32.816555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447737, 35.277573, 33.197239>,  <28.497736, 35.223461, 33.425652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447737, 35.277573, 33.197239>,  <28.364403, 35.367760, 32.816555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447737, 35.277573, 33.197239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086056, 0.965066, 0.247471,
		-0.974265, -0.133458, 0.181652,
		0.208333, -0.225470, 0.951715,
		28.510237, 35.209930, 33.482754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790104, 35.554932, 33.284504>,  <28.364403, 35.367760, 32.816555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790104, 35.554932, 33.284504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144875, 35.563610, 33.469063>,  <28.357737, 35.568817, 33.579800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.144875, 35.563610, 33.469063>,  <27.790104, 35.554932, 33.284504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.144875, 35.563610, 33.469063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240567, 0.874431, 0.421306,
		-0.394321, -0.484665, 0.780776,
		0.886926, 0.021699, 0.461401,
		28.410952, 35.570118, 33.607483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631889, 35.703896, 34.036720>,  <27.790104, 35.554932, 33.284504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631889, 35.703896, 34.036720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017815, 35.792381, 33.979862>,  <28.249369, 35.845470, 33.945747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.017815, 35.792381, 33.979862>,  <27.631889, 35.703896, 34.036720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017815, 35.792381, 33.979862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034520, 0.642463, 0.765539,
		0.260666, -0.733694, 0.627492,
		0.964811, 0.221211, -0.142141,
		28.307259, 35.858746, 33.937222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875458, 35.720657, 34.706947>,  <27.631889, 35.703896, 34.036720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875458, 35.720657, 34.706947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108704, 35.932854, 34.460842>,  <28.248652, 36.060173, 34.313179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.108704, 35.932854, 34.460842>,  <27.875458, 35.720657, 34.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108704, 35.932854, 34.460842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111566, 0.802470, 0.586170,
		0.804677, -0.273176, 0.527134,
		0.583137, 0.530488, -0.615251,
		28.283638, 36.092003, 34.276264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470453, 36.034050, 34.947941>,  <27.875458, 35.720657, 34.706947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470453, 36.034050, 34.947941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307732, 36.255825, 34.657532>,  <28.210098, 36.388889, 34.483288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307732, 36.255825, 34.657532>,  <28.470453, 36.034050, 34.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307732, 36.255825, 34.657532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160620, 0.738964, 0.654319,
		0.899284, 0.382793, -0.211559,
		-0.406803, 0.554439, -0.726023,
		28.185690, 36.422157, 34.439724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884426, 36.658714, 34.856285>,  <28.470453, 36.034050, 34.947941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884426, 36.658714, 34.856285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518515, 36.726421, 34.709572>,  <28.298967, 36.767048, 34.621544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.518515, 36.726421, 34.709572>,  <28.884426, 36.658714, 34.856285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.518515, 36.726421, 34.709572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079292, 0.815071, 0.573909,
		0.396102, 0.554082, -0.732186,
		-0.914776, 0.169270, -0.366786,
		28.244081, 36.777203, 34.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.857611, 37.396862, 34.723099>,  <28.884426, 36.658714, 34.856285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.857611, 37.396862, 34.723099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473829, 37.286831, 34.747696>,  <28.243561, 37.220810, 34.762455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.473829, 37.286831, 34.747696>,  <28.857611, 37.396862, 34.723099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.473829, 37.286831, 34.747696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148908, 0.679888, 0.718039,
		-0.239325, 0.679768, -0.693282,
		-0.959453, -0.275079, 0.061491,
		28.185993, 37.204308, 34.766144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572992, 37.959446, 35.078594>,  <28.857611, 37.396862, 34.723099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572992, 37.959446, 35.078594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235935, 37.767086, 34.981697>,  <28.033701, 37.651669, 34.923557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.235935, 37.767086, 34.981697>,  <28.572992, 37.959446, 35.078594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.235935, 37.767086, 34.981697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476204, 0.455533, 0.752143,
		-0.251356, 0.749148, -0.612860,
		-0.842645, -0.480902, -0.242246,
		27.983141, 37.622814, 34.909023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884855, 38.207077, 35.608204>,  <28.572992, 37.959446, 35.078594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884855, 38.207077, 35.608204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025927, 38.490414, 35.852783>,  <29.110569, 38.660416, 35.999531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025927, 38.490414, 35.852783>,  <28.884855, 38.207077, 35.608204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025927, 38.490414, 35.852783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177526, -0.590919, 0.786956,
		0.918751, -0.386089, -0.082655,
		0.352677, 0.708343, 0.611448,
		29.131729, 38.702915, 36.036217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455830, 38.063683, 36.066719>,  <28.884855, 38.207077, 35.608204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455830, 38.063683, 36.066719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273651, 38.349354, 36.279331>,  <29.164343, 38.520756, 36.406898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273651, 38.349354, 36.279331>,  <29.455830, 38.063683, 36.066719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273651, 38.349354, 36.279331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264968, -0.678732, 0.684919,
		0.849917, 0.171107, 0.498361,
		-0.455448, 0.714174, 0.531528,
		29.137016, 38.563606, 36.438789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.672310, 38.030392, 36.714180>,  <29.455830, 38.063683, 36.066719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.672310, 38.030392, 36.714180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290451, 38.149422, 36.710182>,  <29.061337, 38.220840, 36.707783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290451, 38.149422, 36.710182>,  <29.672310, 38.030392, 36.714180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290451, 38.149422, 36.710182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240988, -0.752512, 0.612904,
		0.174864, 0.587515, 0.790094,
		-0.954645, 0.297578, -0.009997,
		29.004057, 38.238693, 36.707184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154913, 37.443916, 36.665642>,  <29.672310, 38.030392, 36.714180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154913, 37.443916, 36.665642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926880, 37.586819, 36.961582>,  <29.790060, 37.672558, 37.139145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926880, 37.586819, 36.961582>,  <30.154913, 37.443916, 36.665642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926880, 37.586819, 36.961582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666958, 0.727085, 0.162829,
		-0.479760, 0.586273, -0.652774,
		-0.570085, 0.357254, 0.739847,
		29.755854, 37.693996, 37.183537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682688, 37.587570, 36.176365>,  <30.154913, 37.443916, 36.665642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682688, 37.587570, 36.176365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005669, 37.746090, 36.351166>,  <31.199457, 37.841202, 36.456047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005669, 37.746090, 36.351166>,  <30.682688, 37.587570, 36.176365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005669, 37.746090, 36.351166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024958, -0.717157, 0.696464,
		0.589408, -0.573267, -0.569178,
		0.807450, 0.396296, 0.437006,
		31.247904, 37.864979, 36.482269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218929, 37.107635, 36.344685>,  <30.682688, 37.587570, 36.176365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218929, 37.107635, 36.344685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265068, 37.416500, 36.594635>,  <31.292751, 37.601818, 36.744606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.265068, 37.416500, 36.594635>,  <31.218929, 37.107635, 36.344685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.265068, 37.416500, 36.594635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082508, -0.634345, 0.768635,
		0.989893, -0.037104, -0.136880,
		0.115348, 0.772160, 0.624872,
		31.299673, 37.648148, 36.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771324, 37.029354, 36.819855>,  <31.218929, 37.107635, 36.344685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771324, 37.029354, 36.819855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479042, 37.246021, 36.986065>,  <31.303673, 37.376022, 37.085793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479042, 37.246021, 36.986065>,  <31.771324, 37.029354, 36.819855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479042, 37.246021, 36.986065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082498, -0.674258, 0.733873,
		0.677691, 0.501964, 0.537370,
		-0.730704, 0.541672, 0.415528,
		31.259830, 37.408524, 37.110722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086414, 36.573818, 37.436871>,  <31.771324, 37.029354, 36.819855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086414, 36.573818, 37.436871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245533, 36.863438, 37.662262>,  <32.341003, 37.037209, 37.797497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245533, 36.863438, 37.662262>,  <32.086414, 36.573818, 37.436871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245533, 36.863438, 37.662262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501427, -0.685898, 0.527366,
		0.768327, 0.072755, -0.635910,
		0.397800, 0.724052, 0.563475,
		32.364872, 37.080654, 37.831303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670582, 36.162785, 37.732750>,  <32.086414, 36.573818, 37.436871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670582, 36.162785, 37.732750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641022, 36.515945, 37.918236>,  <32.623287, 36.727840, 38.029526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641022, 36.515945, 37.918236>,  <32.670582, 36.162785, 37.732750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641022, 36.515945, 37.918236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589355, -0.336437, 0.734487,
		0.804488, 0.327570, -0.495477,
		-0.073900, 0.882898, 0.463714,
		32.618851, 36.780815, 38.057350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344116, 36.421467, 38.063229>,  <32.670582, 36.162785, 37.732750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344116, 36.421467, 38.063229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057064, 36.560532, 38.304604>,  <32.884834, 36.643970, 38.449429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.057064, 36.560532, 38.304604>,  <33.344116, 36.421467, 38.063229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057064, 36.560532, 38.304604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380410, -0.530107, 0.757809,
		0.583351, 0.773380, 0.248165,
		-0.717628, 0.347664, 0.603440,
		32.841774, 36.664829, 38.485634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.560539, 36.066936, 38.737835>,  <33.344116, 36.421467, 38.063229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.560539, 36.066936, 38.737835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241695, 36.257339, 38.886444>,  <33.050388, 36.371582, 38.975609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241695, 36.257339, 38.886444>,  <33.560539, 36.066936, 38.737835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241695, 36.257339, 38.886444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043069, -0.568890, 0.821285,
		0.602293, 0.670658, 0.432968,
		-0.797113, 0.476006, 0.371523,
		33.002563, 36.400143, 38.997902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459110, 35.622837, 38.064194>,  <33.560539, 36.066936, 38.737835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459110, 35.622837, 38.064194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587223, 35.919937, 37.828991>,  <33.664089, 36.098198, 37.687870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587223, 35.919937, 37.828991>,  <33.459110, 35.622837, 38.064194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587223, 35.919937, 37.828991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843163, 0.059449, 0.534362,
		0.431851, -0.666929, -0.607216,
		0.320283, 0.742746, -0.588002,
		33.683308, 36.142761, 37.652592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191715, 35.466930, 38.092354>,  <33.459110, 35.622837, 38.064194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191715, 35.466930, 38.092354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888775, 35.250366, 37.946320>,  <33.707012, 35.120426, 37.858700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888775, 35.250366, 37.946320>,  <34.191715, 35.466930, 38.092354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888775, 35.250366, 37.946320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076931, 0.481219, -0.873218,
		0.648461, -0.689419, -0.322800,
		-0.757351, -0.541415, -0.365089,
		33.661568, 35.087940, 37.836792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352898, 35.411251, 37.462795>,  <34.191715, 35.466930, 38.092354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352898, 35.411251, 37.462795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977680, 35.282810, 37.410698>,  <33.752548, 35.205746, 37.379440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977680, 35.282810, 37.410698>,  <34.352898, 35.411251, 37.462795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977680, 35.282810, 37.410698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011626, 0.404822, -0.914322,
		0.346316, -0.856161, -0.383475,
		-0.938046, -0.321103, -0.130243,
		33.696266, 35.186478, 37.371624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408794, 34.943695, 36.855900>,  <34.352898, 35.411251, 37.462795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408794, 34.943695, 36.855900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052975, 35.116943, 36.914001>,  <33.839481, 35.220894, 36.948864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052975, 35.116943, 36.914001>,  <34.408794, 34.943695, 36.855900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052975, 35.116943, 36.914001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056420, 0.211373, -0.975776,
		-0.453335, -0.876199, -0.163590,
		-0.889553, 0.433123, 0.145258,
		33.786110, 35.246880, 36.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682369, 34.564304, 36.802608>,  <34.408794, 34.943695, 36.855900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682369, 34.564304, 36.802608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776649, 34.926273, 36.660873>,  <33.833218, 35.143456, 36.575832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776649, 34.926273, 36.660873>,  <33.682369, 34.564304, 36.802608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776649, 34.926273, 36.660873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076866, -0.380829, -0.921445,
		-0.968780, 0.189953, -0.159321,
		0.235705, 0.904924, -0.354338,
		33.847363, 35.197750, 36.554573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171028, 34.682629, 36.240574>,  <33.682369, 34.564304, 36.802608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171028, 34.682629, 36.240574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532619, 34.852028, 36.216980>,  <33.749573, 34.953667, 36.202824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532619, 34.852028, 36.216980>,  <33.171028, 34.682629, 36.240574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532619, 34.852028, 36.216980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224731, -0.587931, -0.777067,
		-0.363767, 0.689193, -0.626647,
		0.903974, 0.423498, -0.058987,
		33.803810, 34.979076, 36.199284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713547, 34.227692, 35.911949>,  <33.171028, 34.682629, 36.240574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713547, 34.227692, 35.911949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642342, 34.566799, 35.712112>,  <33.599617, 34.770264, 35.592209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642342, 34.566799, 35.712112>,  <33.713547, 34.227692, 35.911949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642342, 34.566799, 35.712112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089661, -0.519563, -0.849715,
		-0.979934, -0.106469, 0.168502,
		-0.178016, 0.847773, -0.499591,
		33.588936, 34.821133, 35.562237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040363, 34.142597, 35.484016>,  <33.713547, 34.227692, 35.911949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040363, 34.142597, 35.484016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280159, 34.418125, 35.320976>,  <33.424038, 34.583443, 35.223152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280159, 34.418125, 35.320976>,  <33.040363, 34.142597, 35.484016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280159, 34.418125, 35.320976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095094, -0.444355, -0.890790,
		-0.794712, 0.572781, -0.200885,
		0.599492, 0.688818, -0.407602,
		33.460007, 34.624771, 35.198696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753139, 34.217266, 34.859718>,  <33.040363, 34.142597, 35.484016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753139, 34.217266, 34.859718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117744, 34.375015, 34.813030>,  <33.336506, 34.469666, 34.785019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.117744, 34.375015, 34.813030>,  <32.753139, 34.217266, 34.859718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117744, 34.375015, 34.813030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082585, -0.453513, -0.887415,
		-0.402903, 0.799248, -0.445951,
		0.911509, 0.394371, -0.116716,
		33.391197, 34.493328, 34.778015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710445, 34.591763, 34.206726>,  <32.753139, 34.217266, 34.859718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710445, 34.591763, 34.206726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101669, 34.533489, 34.266296>,  <33.336403, 34.498524, 34.302036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101669, 34.533489, 34.266296>,  <32.710445, 34.591763, 34.206726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101669, 34.533489, 34.266296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118678, -0.197888, -0.973014,
		0.171226, 0.969338, -0.176256,
		0.978058, -0.145687, 0.148923,
		33.395088, 34.489784, 34.310974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960876, 34.782059, 33.636639>,  <32.710445, 34.591763, 34.206726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960876, 34.782059, 33.636639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237183, 34.556011, 33.817074>,  <33.402966, 34.420383, 33.925335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237183, 34.556011, 33.817074>,  <32.960876, 34.782059, 33.636639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237183, 34.556011, 33.817074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279545, -0.366630, -0.887376,
		0.666853, 0.739072, -0.095282,
		0.690769, -0.565114, 0.451093,
		33.444412, 34.386478, 33.952400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572662, 34.900803, 33.252781>,  <32.960876, 34.782059, 33.636639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572662, 34.900803, 33.252781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625912, 34.572128, 33.474453>,  <33.657860, 34.374924, 33.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625912, 34.572128, 33.474453>,  <33.572662, 34.900803, 33.252781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625912, 34.572128, 33.474453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452786, -0.446970, -0.771494,
		0.881626, 0.353624, 0.312547,
		0.133119, -0.821686, 0.554177,
		33.665848, 34.325623, 33.640705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285301, 34.762177, 33.189903>,  <33.572662, 34.900803, 33.252781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285301, 34.762177, 33.189903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115681, 34.410892, 33.278381>,  <34.013908, 34.200123, 33.331467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115681, 34.410892, 33.278381>,  <34.285301, 34.762177, 33.189903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115681, 34.410892, 33.278381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309226, -0.369965, -0.876074,
		0.851213, -0.303098, 0.428449,
		-0.424047, -0.878213, 0.221193,
		33.988468, 34.147430, 33.344738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756634, 34.260395, 32.952045>,  <34.285301, 34.762177, 33.189903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756634, 34.260395, 32.952045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401104, 34.083019, 32.998264>,  <34.187786, 33.976593, 33.025997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401104, 34.083019, 32.998264>,  <34.756634, 34.260395, 32.952045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401104, 34.083019, 32.998264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177445, -0.565535, -0.805409,
		0.422501, -0.695362, 0.581347,
		-0.888823, -0.443443, 0.115551,
		34.134457, 33.949986, 33.032928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974770, 33.492245, 33.039440>,  <34.756634, 34.260395, 32.952045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974770, 33.492245, 33.039440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602234, 33.575581, 32.919971>,  <34.378712, 33.625580, 32.848289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602234, 33.575581, 32.919971>,  <34.974770, 33.492245, 33.039440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602234, 33.575581, 32.919971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169115, -0.478931, -0.861409,
		-0.322507, -0.852773, 0.410814,
		-0.931337, 0.208336, -0.298676,
		34.322834, 33.638081, 32.830368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818661, 32.910782, 32.644176>,  <34.974770, 33.492245, 33.039440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818661, 32.910782, 32.644176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505764, 33.133118, 32.531651>,  <34.318024, 33.266518, 32.464134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505764, 33.133118, 32.531651>,  <34.818661, 32.910782, 32.644176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505764, 33.133118, 32.531651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130701, -0.295088, -0.946489,
		-0.609105, -0.777155, 0.158183,
		-0.782246, 0.555836, -0.281314,
		34.271091, 33.299870, 32.447258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324909, 32.488777, 32.335083>,  <34.818661, 32.910782, 32.644176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324909, 32.488777, 32.335083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269165, 32.859722, 32.196190>,  <34.235718, 33.082291, 32.112854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269165, 32.859722, 32.196190>,  <34.324909, 32.488777, 32.335083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269165, 32.859722, 32.196190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159856, -0.324989, -0.932109,
		-0.977254, -0.185405, -0.102955,
		-0.139359, 0.927365, -0.347235,
		34.227356, 33.137932, 32.092018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944553, 32.472557, 31.782084>,  <34.324909, 32.488777, 32.335083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944553, 32.472557, 31.782084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113792, 32.832058, 31.736053>,  <34.215336, 33.047756, 31.708435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113792, 32.832058, 31.736053>,  <33.944553, 32.472557, 31.782084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113792, 32.832058, 31.736053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010415, -0.122172, -0.992454,
		-0.906026, 0.421100, -0.042330,
		0.423094, 0.898748, -0.115077,
		34.240719, 33.101681, 31.701530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690411, 32.692307, 31.191042>,  <33.944553, 32.472557, 31.782084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690411, 32.692307, 31.191042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021328, 32.912651, 31.235128>,  <34.219879, 33.044857, 31.261581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021328, 32.912651, 31.235128>,  <33.690411, 32.692307, 31.191042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021328, 32.912651, 31.235128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139960, -0.012096, -0.990083,
		-0.544062, 0.834512, -0.087104,
		0.827290, 0.550858, 0.110217,
		34.269516, 33.077908, 31.268194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614239, 33.114082, 30.616079>,  <33.690411, 32.692307, 31.191042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614239, 33.114082, 30.616079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991947, 33.167431, 30.736454>,  <34.218571, 33.199440, 30.808680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991947, 33.167431, 30.736454>,  <33.614239, 33.114082, 30.616079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991947, 33.167431, 30.736454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296520, 0.052317, -0.953593,
		-0.142928, 0.989684, 0.009854,
		0.944271, 0.133373, 0.300938,
		34.275230, 33.207443, 30.826736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871323, 33.724648, 30.333996>,  <33.614239, 33.114082, 30.616079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871323, 33.724648, 30.333996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204556, 33.513138, 30.398949>,  <34.404495, 33.386230, 30.437920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204556, 33.513138, 30.398949>,  <33.871323, 33.724648, 30.333996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204556, 33.513138, 30.398949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154550, -0.059358, -0.986200,
		0.531119, 0.846683, 0.032272,
		0.833083, -0.528777, 0.162381,
		34.454479, 33.354504, 30.447662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347187, 34.131073, 29.966129>,  <33.871323, 33.724648, 30.333996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347187, 34.131073, 29.966129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503963, 33.765503, 30.008320>,  <34.598030, 33.546162, 30.033634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503963, 33.765503, 30.008320>,  <34.347187, 34.131073, 29.966129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503963, 33.765503, 30.008320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099231, -0.071983, -0.992457,
		0.914622, 0.399455, 0.062476,
		0.391945, -0.913922, 0.105475,
		34.621548, 33.491325, 30.039963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783123, 34.120548, 29.533228>,  <34.347187, 34.131073, 29.966129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783123, 34.120548, 29.533228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748127, 33.725605, 29.586109>,  <34.727127, 33.488640, 29.617838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748127, 33.725605, 29.586109>,  <34.783123, 34.120548, 29.533228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748127, 33.725605, 29.586109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041763, -0.128960, -0.990770,
		0.995289, -0.092208, -0.029951,
		-0.087495, -0.987354, 0.132203,
		34.721878, 33.429398, 29.625771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298988, 33.816322, 29.073124>,  <34.783123, 34.120548, 29.533228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298988, 33.816322, 29.073124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017090, 33.540756, 29.140936>,  <34.847950, 33.375416, 29.181623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017090, 33.540756, 29.140936>,  <35.298988, 33.816322, 29.073124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017090, 33.540756, 29.140936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037473, -0.202473, -0.978570,
		0.708474, -0.695992, 0.116876,
		-0.704742, -0.688912, 0.169528,
		34.805668, 33.334084, 29.191795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579742, 33.223942, 28.715797>,  <35.298988, 33.816322, 29.073124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579742, 33.223942, 28.715797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195107, 33.133789, 28.778471>,  <34.964325, 33.079697, 28.816076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195107, 33.133789, 28.778471>,  <35.579742, 33.223942, 28.715797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195107, 33.133789, 28.778471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094925, -0.262559, -0.960236,
		0.257559, -0.938225, 0.231079,
		-0.961589, -0.225382, 0.156685,
		34.906631, 33.066174, 28.825476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543087, 32.619263, 28.367184>,  <35.579742, 33.223942, 28.715797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543087, 32.619263, 28.367184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172180, 32.746281, 28.446518>,  <34.949635, 32.822491, 28.494118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.172180, 32.746281, 28.446518>,  <35.543087, 32.619263, 28.367184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172180, 32.746281, 28.446518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300868, -0.316727, -0.899535,
		-0.222828, -0.893783, 0.389231,
		-0.927268, 0.317548, 0.198335,
		34.894001, 32.841545, 28.506018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109669, 32.069767, 28.304972>,  <35.543087, 32.619263, 28.367184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109669, 32.069767, 28.304972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875992, 32.387562, 28.238619>,  <34.735786, 32.578239, 28.198807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875992, 32.387562, 28.238619>,  <35.109669, 32.069767, 28.304972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875992, 32.387562, 28.238619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256342, -0.374538, -0.891073,
		-0.770072, -0.478034, 0.422461,
		-0.584190, 0.794485, -0.165881,
		34.700733, 32.625908, 28.188854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511585, 31.861729, 27.958305>,  <35.109669, 32.069767, 28.304972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511585, 31.861729, 27.958305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482368, 32.249779, 27.865765>,  <34.464840, 32.482609, 27.810240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482368, 32.249779, 27.865765>,  <34.511585, 31.861729, 27.958305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482368, 32.249779, 27.865765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091380, -0.237506, -0.967078,
		-0.993134, -0.049496, 0.105998,
		-0.073042, 0.970124, -0.231353,
		34.460457, 32.540817, 27.796358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967033, 31.996586, 27.437336>,  <34.511585, 31.861729, 27.958305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967033, 31.996586, 27.437336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204586, 32.315178, 27.391867>,  <34.347118, 32.506332, 27.364586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204586, 32.315178, 27.391867>,  <33.967033, 31.996586, 27.437336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204586, 32.315178, 27.391867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012248, -0.150220, -0.988577,
		-0.804456, 0.585709, -0.098969,
		0.593886, 0.796479, -0.113671,
		34.382751, 32.554123, 27.357765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787636, 32.146042, 26.741829>,  <33.967033, 31.996586, 27.437336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787636, 32.146042, 26.741829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102814, 32.376144, 26.829672>,  <34.291920, 32.514206, 26.882378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102814, 32.376144, 26.829672>,  <33.787636, 32.146042, 26.741829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102814, 32.376144, 26.829672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236331, 0.046807, -0.970545,
		-0.568591, 0.816633, -0.099070,
		0.787941, 0.575257, 0.219609,
		34.339195, 32.548721, 26.895555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841866, 32.835953, 26.283892>,  <33.787636, 32.146042, 26.741829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841866, 32.835953, 26.283892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212009, 32.751949, 26.410131>,  <34.434097, 32.701546, 26.485876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212009, 32.751949, 26.410131>,  <33.841866, 32.835953, 26.283892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212009, 32.751949, 26.410131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303256, -0.089466, -0.948700,
		0.227474, 0.973597, -0.019101,
		0.925360, -0.210012, 0.315600,
		34.489616, 32.688946, 26.504812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220272, 33.244907, 25.912991>,  <33.841866, 32.835953, 26.283892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220272, 33.244907, 25.912991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488579, 32.984493, 26.055103>,  <34.649563, 32.828247, 26.140371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488579, 32.984493, 26.055103>,  <34.220272, 33.244907, 25.912991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488579, 32.984493, 26.055103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465522, -0.003342, -0.885030,
		0.577371, 0.759043, 0.300828,
		0.670770, -0.651032, 0.355281,
		34.689812, 32.789185, 26.161688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931114, 33.515697, 25.757149>,  <34.220272, 33.244907, 25.912991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931114, 33.515697, 25.757149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992622, 33.125046, 25.817209>,  <35.029530, 32.890656, 25.853245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992622, 33.125046, 25.817209>,  <34.931114, 33.515697, 25.757149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992622, 33.125046, 25.817209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394873, -0.078558, -0.915371,
		0.905775, 0.200050, 0.373565,
		0.153774, -0.976631, 0.150151,
		35.038754, 32.832058, 25.862255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677765, 33.420975, 25.515545>,  <34.931114, 33.515697, 25.757149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677765, 33.420975, 25.515545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490116, 33.067810, 25.523457>,  <35.377525, 32.855911, 25.528204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.490116, 33.067810, 25.523457>,  <35.677765, 33.420975, 25.515545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490116, 33.067810, 25.523457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297088, -0.178864, -0.937948,
		0.831663, -0.434137, 0.346211,
		-0.469122, -0.882912, 0.019777,
		35.349380, 32.802937, 25.529390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114136, 32.985828, 25.229393>,  <35.677765, 33.420975, 25.515545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114136, 32.985828, 25.229393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758244, 32.820320, 25.152277>,  <35.544708, 32.721016, 25.106007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758244, 32.820320, 25.152277>,  <36.114136, 32.985828, 25.229393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758244, 32.820320, 25.152277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354416, -0.359998, -0.863013,
		0.287682, -0.836181, 0.466949,
		-0.889735, -0.413767, -0.192790,
		35.491322, 32.696190, 25.094440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255001, 32.376347, 24.998659>,  <36.114136, 32.985828, 25.229393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255001, 32.376347, 24.998659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887775, 32.446602, 24.856501>,  <35.667439, 32.488754, 24.771206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887775, 32.446602, 24.856501>,  <36.255001, 32.376347, 24.998659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887775, 32.446602, 24.856501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283491, -0.335790, -0.898264,
		-0.277103, -0.925418, 0.258487,
		-0.918067, 0.175632, -0.355396,
		35.612354, 32.499294, 24.749882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080448, 31.785242, 24.630924>,  <36.255001, 32.376347, 24.998659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080448, 31.785242, 24.630924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839157, 32.069046, 24.485209>,  <35.694382, 32.239330, 24.397779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839157, 32.069046, 24.485209>,  <36.080448, 31.785242, 24.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839157, 32.069046, 24.485209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356285, -0.168922, -0.918981,
		-0.713563, -0.684149, -0.150889,
		-0.603231, 0.709511, -0.364288,
		35.658188, 32.281898, 24.375921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907505, 31.442137, 24.032740>,  <36.080448, 31.785242, 24.630924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907505, 31.442137, 24.032740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827457, 31.831371, 23.987028>,  <35.779430, 32.064911, 23.959600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827457, 31.831371, 23.987028>,  <35.907505, 31.442137, 24.032740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827457, 31.831371, 23.987028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394805, -0.026662, -0.918378,
		-0.896707, -0.228901, -0.378843,
		-0.200116, 0.973085, -0.114279,
		35.767422, 32.123295, 23.952744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688160, 31.460611, 23.313114>,  <35.907505, 31.442137, 24.032740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688160, 31.460611, 23.313114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753036, 31.837200, 23.431320>,  <35.791962, 32.063152, 23.502243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753036, 31.837200, 23.431320>,  <35.688160, 31.460611, 23.313114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753036, 31.837200, 23.431320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312609, 0.235029, -0.920346,
		-0.935933, 0.241651, -0.256193,
		0.162190, 0.941470, 0.295514,
		35.801693, 32.119640, 23.519974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224064, 31.984644, 22.872347>,  <35.688160, 31.460611, 23.313114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224064, 31.984644, 22.872347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545799, 32.169788, 23.021370>,  <35.738842, 32.280876, 23.110785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545799, 32.169788, 23.021370>,  <35.224064, 31.984644, 22.872347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545799, 32.169788, 23.021370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214498, 0.358541, -0.908537,
		-0.554103, 0.810684, 0.189105,
		0.804338, 0.462861, 0.372559,
		35.787102, 32.308647, 23.133139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258213, 32.637993, 22.552523>,  <35.224064, 31.984644, 22.872347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258213, 32.637993, 22.552523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631538, 32.572861, 22.680531>,  <35.855534, 32.533783, 22.757336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631538, 32.572861, 22.680531>,  <35.258213, 32.637993, 22.552523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631538, 32.572861, 22.680531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358935, 0.399459, -0.843563,
		0.009524, 0.902175, 0.431266,
		0.933314, -0.162831, 0.320018,
		35.911533, 32.524010, 22.776535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748909, 33.151497, 22.543760>,  <35.258213, 32.637993, 22.552523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748909, 33.151497, 22.543760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016884, 32.854576, 22.549026>,  <36.177670, 32.676426, 22.552187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.016884, 32.854576, 22.549026>,  <35.748909, 33.151497, 22.543760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016884, 32.854576, 22.549026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322022, 0.274560, -0.906046,
		0.668941, 0.611236, 0.422975,
		0.669940, -0.742298, 0.013167,
		36.217865, 32.631886, 22.552977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474583, 33.468887, 22.580492>,  <35.748909, 33.151497, 22.543760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474583, 33.468887, 22.580492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498184, 33.100651, 22.426069>,  <36.512344, 32.879711, 22.333416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.498184, 33.100651, 22.426069>,  <36.474583, 33.468887, 22.580492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498184, 33.100651, 22.426069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280199, 0.386455, -0.878715,
		0.958127, -0.056323, 0.280751,
		0.059005, -0.920587, -0.386055,
		36.515884, 32.824474, 22.310253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094700, 33.450821, 22.189402>,  <36.474583, 33.468887, 22.580492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094700, 33.450821, 22.189402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907993, 33.129330, 22.041805>,  <36.795971, 32.936436, 21.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907993, 33.129330, 22.041805>,  <37.094700, 33.450821, 22.189402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907993, 33.129330, 22.041805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378669, 0.195420, -0.904666,
		0.799213, -0.561991, 0.213132,
		-0.466764, -0.803727, -0.368990,
		36.767963, 32.888210, 21.931108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531204, 32.992188, 21.827257>,  <37.094700, 33.450821, 22.189402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531204, 32.992188, 21.827257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193192, 32.865967, 21.654585>,  <36.990383, 32.790234, 21.550982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193192, 32.865967, 21.654585>,  <37.531204, 32.992188, 21.827257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193192, 32.865967, 21.654585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295385, 0.397469, -0.868773,
		0.445719, -0.861654, -0.242667,
		-0.845034, -0.315548, -0.431679,
		36.939682, 32.771301, 21.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707703, 32.661892, 21.230753>,  <37.531204, 32.992188, 21.827257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707703, 32.661892, 21.230753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323090, 32.762447, 21.186460>,  <37.092323, 32.822781, 21.159885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.323090, 32.762447, 21.186460>,  <37.707703, 32.661892, 21.230753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323090, 32.762447, 21.186460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178020, 0.263271, -0.948155,
		-0.209202, -0.931393, -0.297895,
		-0.961531, 0.251387, -0.110730,
		37.034630, 32.837864, 21.153242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466526, 32.292381, 20.541742>,  <37.707703, 32.661892, 21.230753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466526, 32.292381, 20.541742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256210, 32.616493, 20.645277>,  <37.130020, 32.810959, 20.707397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256210, 32.616493, 20.645277>,  <37.466526, 32.292381, 20.541742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256210, 32.616493, 20.645277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206384, 0.416726, -0.885294,
		-0.825196, -0.412060, -0.386338,
		-0.525791, 0.810275, 0.258838,
		37.098473, 32.859577, 20.722929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034435, 32.446861, 19.995428>,  <37.466526, 32.292381, 20.541742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034435, 32.446861, 19.995428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111332, 32.792755, 20.181021>,  <37.157471, 33.000290, 20.292376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111332, 32.792755, 20.181021>,  <37.034435, 32.446861, 19.995428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111332, 32.792755, 20.181021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199722, 0.428430, -0.881226,
		-0.960809, 0.262075, -0.090345,
		0.192240, 0.864734, 0.463981,
		37.169003, 33.052174, 20.320215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653145, 32.888771, 19.515434>,  <37.034435, 32.446861, 19.995428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653145, 32.888771, 19.515434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886311, 33.141216, 19.720140>,  <37.026211, 33.292683, 19.842964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886311, 33.141216, 19.720140>,  <36.653145, 32.888771, 19.515434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886311, 33.141216, 19.720140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044229, 0.604261, -0.795558,
		-0.811329, 0.486377, 0.324319,
		0.582914, 0.631115, 0.511767,
		37.061184, 33.330551, 19.873671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245243, 33.502930, 19.615656>,  <36.653145, 32.888771, 19.515434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245243, 33.502930, 19.615656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643101, 33.537926, 19.593616>,  <36.881813, 33.558922, 19.580393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643101, 33.537926, 19.593616>,  <36.245243, 33.502930, 19.615656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643101, 33.537926, 19.593616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090612, 0.480924, -0.872067,
		-0.049798, 0.872386, 0.486274,
		0.994640, 0.087489, -0.055100,
		36.941494, 33.564171, 19.577087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752098, 34.080433, 19.498842>,  <36.245243, 33.502930, 19.615656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752098, 34.080433, 19.498842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917591, 33.775753, 19.299389>,  <37.016888, 33.592945, 19.179718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917591, 33.775753, 19.299389>,  <36.752098, 34.080433, 19.498842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917591, 33.775753, 19.299389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107509, 0.502997, -0.857575,
		0.904028, 0.408414, 0.126216,
		0.413733, -0.761703, -0.498632,
		37.041710, 33.547241, 19.149799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351460, 34.447208, 19.342325>,  <36.752098, 34.080433, 19.498842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351460, 34.447208, 19.342325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233780, 34.147709, 19.104727>,  <37.163174, 33.968010, 18.962168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.233780, 34.147709, 19.104727>,  <37.351460, 34.447208, 19.342325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233780, 34.147709, 19.104727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198482, 0.655813, -0.728364,
		0.934908, -0.096386, -0.341551,
		-0.294197, -0.748745, -0.593994,
		37.145519, 33.923084, 18.926529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677807, 35.093998, 19.813334>,  <37.351460, 34.447208, 19.342325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677807, 35.093998, 19.813334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012146, 35.276516, 19.935421>,  <38.212749, 35.386024, 20.008673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.012146, 35.276516, 19.935421>,  <37.677807, 35.093998, 19.813334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012146, 35.276516, 19.935421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323040, 0.040710, -0.945509,
		-0.443855, 0.888898, -0.113374,
		0.835846, 0.456293, 0.305219,
		38.262901, 35.413403, 20.026987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859406, 35.709839, 19.344309>,  <37.677807, 35.093998, 19.813334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859406, 35.709839, 19.344309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208046, 35.588676, 19.498480>,  <38.417233, 35.515980, 19.590982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208046, 35.588676, 19.498480>,  <37.859406, 35.709839, 19.344309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208046, 35.588676, 19.498480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391273, -0.043784, -0.919232,
		0.295315, 0.952015, 0.080356,
		0.871604, -0.302905, 0.385428,
		38.469528, 35.497807, 19.614109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338760, 36.160954, 19.097710>,  <37.859406, 35.709839, 19.344309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338760, 36.160954, 19.097710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496128, 35.805840, 19.193264>,  <38.590549, 35.592773, 19.250597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496128, 35.805840, 19.193264>,  <38.338760, 36.160954, 19.097710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496128, 35.805840, 19.193264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312116, -0.115431, -0.943006,
		0.864758, 0.445555, 0.231679,
		0.393418, -0.887782, 0.238884,
		38.614155, 35.539505, 19.264929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807587, 35.739300, 18.879889>,  <38.338760, 36.160954, 19.097710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807587, 35.739300, 18.879889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994484, 36.034027, 19.075348>,  <39.106621, 36.210865, 19.192623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994484, 36.034027, 19.075348>,  <38.807587, 35.739300, 18.879889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994484, 36.034027, 19.075348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425236, -0.297281, 0.854868,
		0.775151, -0.607222, 0.174421,
		0.467243, 0.736821, 0.488650,
		39.134655, 36.255074, 19.221943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298157, 35.415562, 19.456989>,  <38.807587, 35.739300, 18.879889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298157, 35.415562, 19.456989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139740, 35.779434, 19.506990>,  <39.044689, 35.997757, 19.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139740, 35.779434, 19.506990>,  <39.298157, 35.415562, 19.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139740, 35.779434, 19.506990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603080, -0.360348, 0.711649,
		0.692421, 0.206454, 0.691325,
		-0.396040, 0.909685, 0.125005,
		39.020927, 36.052341, 19.544493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581074, 35.725159, 19.980947>,  <39.298157, 35.415562, 19.456989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581074, 35.725159, 19.980947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202717, 35.834080, 19.910366>,  <38.975704, 35.899433, 19.868017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202717, 35.834080, 19.910366>,  <39.581074, 35.725159, 19.980947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202717, 35.834080, 19.910366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267923, -0.348682, 0.898130,
		0.183036, 0.896812, 0.402772,
		-0.945894, 0.272302, -0.176456,
		38.918949, 35.915771, 19.857430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200829, 36.235970, 20.461926>,  <39.581074, 35.725159, 19.980947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200829, 36.235970, 20.461926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913605, 35.995472, 20.321699>,  <38.741268, 35.851173, 20.237564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913605, 35.995472, 20.321699>,  <39.200829, 36.235970, 20.461926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913605, 35.995472, 20.321699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443706, 0.007405, 0.896142,
		-0.536202, 0.799033, -0.272091,
		-0.718062, -0.601241, -0.350565,
		38.698185, 35.815098, 20.216530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517113, 36.474304, 20.694803>,  <39.200829, 36.235970, 20.461926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517113, 36.474304, 20.694803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467556, 36.087765, 20.604635>,  <38.437824, 35.855839, 20.550535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467556, 36.087765, 20.604635>,  <38.517113, 36.474304, 20.694803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467556, 36.087765, 20.604635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433906, -0.151542, 0.888122,
		-0.892400, 0.207840, -0.400531,
		-0.123890, -0.966353, -0.225419,
		38.430389, 35.797859, 20.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804459, 36.313282, 20.922396>,  <38.517113, 36.474304, 20.694803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804459, 36.313282, 20.922396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004608, 35.968845, 20.886280>,  <38.124699, 35.762184, 20.864611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004608, 35.968845, 20.886280>,  <37.804459, 36.313282, 20.922396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004608, 35.968845, 20.886280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320083, -0.280870, 0.904798,
		-0.804470, -0.423838, -0.416160,
		0.500374, -0.861089, -0.090288,
		38.154720, 35.710518, 20.859194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308205, 35.863110, 21.145937>,  <37.804459, 36.313282, 20.922396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308205, 35.863110, 21.145937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624458, 35.618729, 21.162142>,  <37.814209, 35.472099, 21.171865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624458, 35.618729, 21.162142>,  <37.308205, 35.863110, 21.145937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624458, 35.618729, 21.162142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249403, -0.260911, 0.932590,
		-0.559195, -0.747440, -0.358657,
		0.790632, -0.610950, 0.040513,
		37.861649, 35.435444, 21.174295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131577, 35.401974, 21.567465>,  <37.308205, 35.863110, 21.145937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131577, 35.401974, 21.567465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528099, 35.362080, 21.601810>,  <37.766010, 35.338142, 21.622417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528099, 35.362080, 21.601810>,  <37.131577, 35.401974, 21.567465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528099, 35.362080, 21.601810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116104, -0.355610, 0.927395,
		-0.061957, -0.929298, -0.364096,
		0.991302, -0.099732, 0.085863,
		37.825489, 35.332161, 21.627569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200989, 34.703087, 21.910734>,  <37.131577, 35.401974, 21.567465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200989, 34.703087, 21.910734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502560, 34.953815, 21.989416>,  <37.683502, 35.104252, 22.036625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502560, 34.953815, 21.989416>,  <37.200989, 34.703087, 21.910734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502560, 34.953815, 21.989416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038078, -0.257220, 0.965602,
		0.655852, -0.735485, -0.170058,
		0.753928, 0.626817, 0.196704,
		37.728737, 35.141861, 22.048428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715065, 34.336098, 22.267467>,  <37.200989, 34.703087, 21.910734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715065, 34.336098, 22.267467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778439, 34.721355, 22.354422>,  <37.816463, 34.952511, 22.406593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778439, 34.721355, 22.354422>,  <37.715065, 34.336098, 22.267467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778439, 34.721355, 22.354422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038780, -0.213927, 0.976080,
		0.986608, -0.163075, 0.003457,
		0.158435, 0.963142, 0.217386,
		37.825970, 35.010300, 22.419638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176422, 34.317333, 22.782192>,  <37.715065, 34.336098, 22.267467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176422, 34.317333, 22.782192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019474, 34.684978, 22.796455>,  <37.925304, 34.905567, 22.805014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019474, 34.684978, 22.796455>,  <38.176422, 34.317333, 22.782192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019474, 34.684978, 22.796455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027071, -0.027208, 0.999263,
		0.919409, 0.393046, -0.014206,
		-0.392370, 0.919116, 0.035655,
		37.901764, 34.960712, 22.807152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598984, 34.647217, 23.200190>,  <38.176422, 34.317333, 22.782192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598984, 34.647217, 23.200190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274456, 34.880714, 23.187538>,  <38.079739, 35.020813, 23.179947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274456, 34.880714, 23.187538>,  <38.598984, 34.647217, 23.200190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274456, 34.880714, 23.187538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054941, 0.130003, 0.989990,
		0.582015, 0.801461, -0.137546,
		-0.811320, 0.583746, -0.031630,
		38.031059, 35.055840, 23.178049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780621, 35.251427, 23.540655>,  <38.598984, 34.647217, 23.200190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780621, 35.251427, 23.540655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382687, 35.288662, 23.556810>,  <38.143925, 35.311005, 23.566504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382687, 35.288662, 23.556810>,  <38.780621, 35.251427, 23.540655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382687, 35.288662, 23.556810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048718, 0.089013, 0.994838,
		0.089013, 0.991671, -0.093089,
		-0.994838, 0.093089, 0.040389,
		38.084236, 35.316589, 23.568928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589401, 35.790848, 24.085852>,  <38.780621, 35.251427, 23.540655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589401, 35.790848, 24.085852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262558, 35.563560, 24.046936>,  <38.066452, 35.427189, 24.023586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262558, 35.563560, 24.046936>,  <38.589401, 35.790848, 24.085852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262558, 35.563560, 24.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064626, -0.077408, 0.994903,
		-0.572852, 0.819230, 0.026529,
		-0.817107, -0.568217, -0.097287,
		38.017426, 35.393097, 24.017750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223900, 36.108658, 24.619722>,  <38.589401, 35.790848, 24.085852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223900, 36.108658, 24.619722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007469, 35.789890, 24.512268>,  <37.877613, 35.598629, 24.447796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.007469, 35.789890, 24.512268>,  <38.223900, 36.108658, 24.619722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007469, 35.789890, 24.512268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425251, -0.016318, 0.904928,
		-0.725534, 0.603871, -0.330059,
		-0.541074, -0.796915, -0.268636,
		37.845146, 35.550816, 24.431677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627281, 36.307667, 24.760065>,  <38.223900, 36.108658, 24.619722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627281, 36.307667, 24.760065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599827, 35.908619, 24.757465>,  <37.583355, 35.669189, 24.755905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599827, 35.908619, 24.757465>,  <37.627281, 36.307667, 24.760065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599827, 35.908619, 24.757465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556339, 0.032864, 0.830305,
		-0.828116, 0.060601, -0.557271,
		-0.068632, -0.997621, -0.006500,
		37.579239, 35.609333, 24.755516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898849, 36.065746, 24.753071>,  <37.627281, 36.307667, 24.760065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898849, 36.065746, 24.753071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 35.771236, 24.914406>,  <37.246590, 35.594532, 25.011206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116188, 35.771236, 24.914406>,  <36.898849, 36.065746, 24.753071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116188, 35.771236, 24.914406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627814, -0.037406, 0.777464,
		-0.557337, -0.675652, -0.482566,
		0.543346, -0.736271, 0.403336,
		37.279194, 35.550354, 25.035406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498783, 35.516682, 24.946218>,  <36.898849, 36.065746, 24.753071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498783, 35.516682, 24.946218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805866, 35.491379, 25.201286>,  <36.990116, 35.476196, 25.354326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.805866, 35.491379, 25.201286>,  <36.498783, 35.516682, 24.946218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805866, 35.491379, 25.201286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640697, -0.058128, 0.765591,
		-0.011359, -0.996303, -0.085151,
		0.767710, -0.063252, 0.637668,
		37.036179, 35.472401, 25.392586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231598, 35.029861, 25.441353>,  <36.498783, 35.516682, 24.946218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231598, 35.029861, 25.441353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555943, 35.167934, 25.630396>,  <36.750549, 35.250778, 25.743822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555943, 35.167934, 25.630396>,  <36.231598, 35.029861, 25.441353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555943, 35.167934, 25.630396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483787, -0.059072, 0.873190,
		0.329325, -0.936676, 0.119094,
		0.810861, 0.345179, 0.472605,
		36.799202, 35.271488, 25.772177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254223, 34.604839, 26.058529>,  <36.231598, 35.029861, 25.441353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254223, 34.604839, 26.058529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485115, 34.927299, 26.110571>,  <36.623650, 35.120773, 26.141796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485115, 34.927299, 26.110571>,  <36.254223, 34.604839, 26.058529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485115, 34.927299, 26.110571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348193, 0.098873, 0.932194,
		0.738623, -0.583394, 0.337768,
		0.577233, 0.806148, 0.130104,
		36.658283, 35.169144, 26.149603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600189, 34.588017, 26.774954>,  <36.254223, 34.604839, 26.058529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600189, 34.588017, 26.774954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598068, 34.976990, 26.681704>,  <36.596794, 35.210373, 26.625753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598068, 34.976990, 26.681704>,  <36.600189, 34.588017, 26.774954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598068, 34.976990, 26.681704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422698, 0.209097, 0.881819,
		0.906255, 0.103217, 0.409936,
		-0.005302, 0.972432, -0.233125,
		36.596478, 35.268719, 26.611767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939507, 34.889858, 27.311275>,  <36.600189, 34.588017, 26.774954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939507, 34.889858, 27.311275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728046, 35.183487, 27.140781>,  <36.601170, 35.359665, 27.038485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728046, 35.183487, 27.140781>,  <36.939507, 34.889858, 27.311275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728046, 35.183487, 27.140781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379644, 0.244651, 0.892197,
		0.759213, 0.633475, 0.149351,
		-0.528646, 0.734068, -0.426237,
		36.569454, 35.403706, 27.012911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182957, 35.506165, 27.617708>,  <36.939507, 34.889858, 27.311275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182957, 35.506165, 27.617708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828011, 35.605301, 27.462196>,  <36.615044, 35.664783, 27.368889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828011, 35.605301, 27.462196>,  <37.182957, 35.506165, 27.617708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828011, 35.605301, 27.462196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263882, 0.418465, 0.869053,
		0.378076, 0.873764, -0.305934,
		-0.887370, 0.247838, -0.388782,
		36.561798, 35.679653, 27.345562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158237, 36.143753, 27.777700>,  <37.182957, 35.506165, 27.617708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158237, 36.143753, 27.777700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776127, 36.036915, 27.726929>,  <36.546860, 35.972813, 27.696466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776127, 36.036915, 27.726929>,  <37.158237, 36.143753, 27.777700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776127, 36.036915, 27.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209181, 0.306924, 0.928462,
		-0.209029, 0.913487, -0.349068,
		-0.955275, -0.267094, -0.126928,
		36.489544, 35.956787, 27.688850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760143, 36.662743, 28.016949>,  <37.158237, 36.143753, 27.777700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760143, 36.662743, 28.016949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495956, 36.362862, 28.000303>,  <36.337444, 36.182934, 27.990316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495956, 36.362862, 28.000303>,  <36.760143, 36.662743, 28.016949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495956, 36.362862, 28.000303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444928, 0.346121, 0.825977,
		-0.604832, 0.564047, -0.562165,
		-0.660468, -0.749700, -0.041615,
		36.297817, 36.137951, 27.987818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126251, 36.987263, 28.196709>,  <36.760143, 36.662743, 28.016949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126251, 36.987263, 28.196709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032269, 36.600330, 28.234806>,  <35.975880, 36.368172, 28.257664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032269, 36.600330, 28.234806>,  <36.126251, 36.987263, 28.196709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032269, 36.600330, 28.234806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651475, 0.229437, 0.723146,
		-0.721372, 0.107858, -0.684098,
		-0.234955, -0.967329, 0.095242,
		35.961781, 36.310131, 28.263378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345539, 36.896366, 28.192644>,  <36.126251, 36.987263, 28.196709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345539, 36.896366, 28.192644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478958, 36.555279, 28.353453>,  <35.559010, 36.350628, 28.449938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478958, 36.555279, 28.353453>,  <35.345539, 36.896366, 28.192644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478958, 36.555279, 28.353453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701387, 0.060481, 0.710211,
		-0.629922, -0.518863, -0.577910,
		0.333549, -0.852715, 0.402022,
		35.579021, 36.299465, 28.474060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711647, 36.421623, 28.249918>,  <35.345539, 36.896366, 28.192644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711647, 36.421623, 28.249918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992184, 36.319988, 28.516321>,  <35.160503, 36.259007, 28.676163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992184, 36.319988, 28.516321>,  <34.711647, 36.421623, 28.249918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992184, 36.319988, 28.516321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699260, -0.063804, 0.712015,
		-0.138421, -0.965074, -0.222422,
		0.701339, -0.254088, 0.666005,
		35.202587, 36.243763, 28.716124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424957, 35.875389, 28.722122>,  <34.711647, 36.421623, 28.249918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424957, 35.875389, 28.722122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738033, 36.026054, 28.920321>,  <34.925880, 36.116455, 29.039240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738033, 36.026054, 28.920321>,  <34.424957, 35.875389, 28.722122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738033, 36.026054, 28.920321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515103, -0.054864, 0.855371,
		0.349370, -0.924725, 0.151077,
		0.782694, 0.376661, 0.495497,
		34.972843, 36.139053, 29.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344475, 35.653057, 29.358637>,  <34.424957, 35.875389, 28.722122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344475, 35.653057, 29.358637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630775, 35.929050, 29.401777>,  <34.802555, 36.094646, 29.427662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630775, 35.929050, 29.401777>,  <34.344475, 35.653057, 29.358637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630775, 35.929050, 29.401777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460368, 0.350046, 0.815799,
		0.525134, -0.633557, 0.568190,
		0.715748, 0.689981, 0.107849,
		34.845501, 36.136044, 29.434132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723969, 35.639393, 30.039669>,  <34.344475, 35.653057, 29.358637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723969, 35.639393, 30.039669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759895, 36.011063, 29.896242>,  <34.781452, 36.234066, 29.810186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759895, 36.011063, 29.896242>,  <34.723969, 35.639393, 30.039669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759895, 36.011063, 29.896242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433216, 0.360625, 0.825998,
		0.896804, 0.081150, 0.434922,
		0.089814, 0.929174, -0.358566,
		34.786839, 36.289814, 29.788671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012184, 35.946030, 30.591898>,  <34.723969, 35.639393, 30.039669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012184, 35.946030, 30.591898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865002, 36.246490, 30.372673>,  <34.776691, 36.426769, 30.241138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865002, 36.246490, 30.372673>,  <35.012184, 35.946030, 30.591898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865002, 36.246490, 30.372673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223513, 0.500679, 0.836279,
		0.902578, 0.430216, -0.016337,
		-0.367960, 0.751155, -0.548061,
		34.754612, 36.471836, 30.208254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320423, 36.545803, 30.869076>,  <35.012184, 35.946030, 30.591898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320423, 36.545803, 30.869076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991047, 36.664196, 30.675444>,  <34.793419, 36.735233, 30.559265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991047, 36.664196, 30.675444>,  <35.320423, 36.545803, 30.869076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991047, 36.664196, 30.675444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298201, 0.500075, 0.813019,
		0.482717, 0.813829, -0.323522,
		-0.823444, 0.295984, -0.484080,
		34.744015, 36.752991, 30.530220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288563, 37.304085, 31.028849>,  <35.320423, 36.545803, 30.869076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288563, 37.304085, 31.028849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926449, 37.166534, 30.929081>,  <34.709179, 37.084003, 30.869221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.926449, 37.166534, 30.929081>,  <35.288563, 37.304085, 31.028849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926449, 37.166534, 30.929081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340492, 0.236275, 0.910077,
		-0.254022, 0.908804, -0.330982,
		-0.905284, -0.343876, -0.249421,
		34.654865, 37.063374, 30.854254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850193, 37.693287, 31.357235>,  <35.288563, 37.304085, 31.028849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850193, 37.693287, 31.357235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555370, 37.443142, 31.254728>,  <34.378475, 37.293056, 31.193224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555370, 37.443142, 31.254728>,  <34.850193, 37.693287, 31.357235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555370, 37.443142, 31.254728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333633, 0.006922, 0.942678,
		-0.587738, 0.780306, -0.213742,
		-0.737057, -0.625359, -0.256267,
		34.334251, 37.255535, 31.177849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268291, 37.982025, 31.768177>,  <34.850193, 37.693287, 31.357235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268291, 37.982025, 31.768177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166874, 37.613033, 31.651726>,  <34.106026, 37.391640, 31.581854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166874, 37.613033, 31.651726>,  <34.268291, 37.982025, 31.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166874, 37.613033, 31.651726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532794, -0.118023, 0.837974,
		-0.807370, 0.367574, -0.461565,
		-0.253542, -0.922475, -0.291130,
		34.090813, 37.336292, 31.564386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499615, 37.898228, 31.882345>,  <34.268291, 37.982025, 31.768177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499615, 37.898228, 31.882345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655643, 37.529926, 31.885338>,  <33.749260, 37.308945, 31.887135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655643, 37.529926, 31.885338>,  <33.499615, 37.898228, 31.882345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655643, 37.529926, 31.885338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434223, -0.176778, 0.883289,
		-0.811969, -0.347796, -0.468769,
		0.390073, -0.920753, 0.007482,
		33.772667, 37.253700, 31.887583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846069, 37.490063, 32.013916>,  <33.499615, 37.898228, 31.882345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846069, 37.490063, 32.013916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175190, 37.278008, 32.095852>,  <33.372662, 37.150776, 32.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175190, 37.278008, 32.095852>,  <32.846069, 37.490063, 32.013916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175190, 37.278008, 32.095852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344667, -0.178873, 0.921525,
		-0.451895, -0.828830, -0.329897,
		0.822798, -0.530137, 0.204838,
		33.422028, 37.118965, 32.157303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665520, 36.871796, 32.382549>,  <32.846069, 37.490063, 32.013916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665520, 36.871796, 32.382549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044182, 36.959179, 32.477310>,  <33.271378, 37.011608, 32.534168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044182, 36.959179, 32.477310>,  <32.665520, 36.871796, 32.382549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044182, 36.959179, 32.477310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212777, -0.128393, 0.968629,
		0.242025, -0.967362, -0.075060,
		0.946652, 0.218461, 0.236907,
		33.328178, 37.024715, 32.548382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855724, 36.302685, 32.767868>,  <32.665520, 36.871796, 32.382549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855724, 36.302685, 32.767868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098427, 36.610531, 32.847408>,  <33.244049, 36.795238, 32.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098427, 36.610531, 32.847408>,  <32.855724, 36.302685, 32.767868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098427, 36.610531, 32.847408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095787, -0.177541, 0.979441,
		0.789099, -0.613325, -0.034003,
		0.606752, 0.769618, 0.198846,
		33.280453, 36.841415, 32.907063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239273, 36.089848, 33.320736>,  <32.855724, 36.302685, 32.767868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239273, 36.089848, 33.320736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339935, 36.476925, 33.326859>,  <33.400333, 36.709171, 33.330532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339935, 36.476925, 33.326859>,  <33.239273, 36.089848, 33.320736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339935, 36.476925, 33.326859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142591, -0.052719, 0.988377,
		0.957255, -0.246546, -0.151251,
		0.251654, 0.967696, 0.015310,
		33.415432, 36.767235, 33.331451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775070, 36.094639, 33.687119>,  <33.239273, 36.089848, 33.320736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775070, 36.094639, 33.687119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659878, 36.477333, 33.703720>,  <33.590763, 36.706951, 33.713680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.659878, 36.477333, 33.703720>,  <33.775070, 36.094639, 33.687119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659878, 36.477333, 33.703720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235420, 0.028717, 0.971470,
		0.928249, 0.289535, -0.233504,
		-0.287980, 0.956737, 0.041505,
		33.573483, 36.764355, 33.716171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302208, 36.414539, 33.986874>,  <33.775070, 36.094639, 33.687119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302208, 36.414539, 33.986874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985649, 36.646442, 34.064415>,  <33.795715, 36.785583, 34.110939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985649, 36.646442, 34.064415>,  <34.302208, 36.414539, 33.986874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985649, 36.646442, 34.064415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169160, -0.097039, 0.980800,
		0.587437, 0.808990, -0.021275,
		-0.791393, 0.579757, 0.193854,
		33.748230, 36.820370, 34.122570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867420, 36.177307, 34.416885>,  <34.302208, 36.414539, 33.986874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867420, 36.177307, 34.416885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203068, 36.265587, 34.615749>,  <35.404457, 36.318554, 34.735069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203068, 36.265587, 34.615749>,  <34.867420, 36.177307, 34.416885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203068, 36.265587, 34.615749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494681, 0.070453, -0.866214,
		-0.226203, 0.972793, -0.050060,
		0.839120, 0.220704, 0.497159,
		35.454803, 36.331799, 34.764896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165585, 36.593304, 33.958828>,  <34.867420, 36.177307, 34.416885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165585, 36.593304, 33.958828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477680, 36.524017, 34.199234>,  <35.664940, 36.482445, 34.343479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477680, 36.524017, 34.199234>,  <35.165585, 36.593304, 33.958828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477680, 36.524017, 34.199234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619754, 0.084413, -0.780243,
		0.084413, 0.981260, 0.173212,
		0.780243, -0.173212, 0.601015,
		35.711754, 36.472054, 34.379539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690109, 37.116249, 33.776508>,  <35.165585, 36.593304, 33.958828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690109, 37.116249, 33.776508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861664, 36.801525, 33.954041>,  <35.964596, 36.612690, 34.060558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861664, 36.801525, 33.954041>,  <35.690109, 37.116249, 33.776508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861664, 36.801525, 33.954041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654390, -0.068103, -0.753084,
		0.622762, 0.613423, 0.485674,
		0.428883, -0.786813, 0.443830,
		35.990330, 36.565483, 34.087189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357456, 37.213955, 33.715168>,  <35.690109, 37.116249, 33.776508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357456, 37.213955, 33.715168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366657, 36.821236, 33.790573>,  <36.372177, 36.585602, 33.835815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366657, 36.821236, 33.790573>,  <36.357456, 37.213955, 33.715168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366657, 36.821236, 33.790573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677312, -0.123392, -0.725274,
		0.735336, 0.144365, 0.662148,
		0.023001, -0.981801, 0.188515,
		36.373558, 36.526695, 33.847126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027683, 37.072880, 33.720646>,  <36.357456, 37.213955, 33.715168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027683, 37.072880, 33.720646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853848, 36.718559, 33.655556>,  <36.749546, 36.505966, 33.616501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853848, 36.718559, 33.655556>,  <37.027683, 37.072880, 33.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853848, 36.718559, 33.655556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672419, -0.198927, -0.712939,
		0.599153, -0.419258, 0.682083,
		-0.434590, -0.885805, -0.162730,
		36.723469, 36.452816, 33.606735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553806, 36.569016, 33.667141>,  <37.027683, 37.072880, 33.720646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553806, 36.569016, 33.667141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246777, 36.406029, 33.469234>,  <37.062557, 36.308239, 33.350491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246777, 36.406029, 33.469234>,  <37.553806, 36.569016, 33.667141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246777, 36.406029, 33.469234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619518, -0.273667, -0.735734,
		0.164383, -0.871252, 0.462492,
		-0.767578, -0.407464, -0.494770,
		37.016502, 36.283791, 33.320805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842087, 35.950859, 33.407814>,  <37.553806, 36.569016, 33.667141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842087, 35.950859, 33.407814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505424, 35.992535, 33.195869>,  <37.303425, 36.017540, 33.068703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505424, 35.992535, 33.195869>,  <37.842087, 35.950859, 33.407814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505424, 35.992535, 33.195869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460500, -0.374015, -0.805017,
		-0.282049, -0.921552, 0.266815,
		-0.841658, 0.104185, -0.529866,
		37.252926, 36.023792, 33.036911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765022, 35.374710, 33.091873>,  <37.842087, 35.950859, 33.407814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765022, 35.374710, 33.091873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512230, 35.603107, 32.882275>,  <37.360554, 35.740147, 32.756516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.512230, 35.603107, 32.882275>,  <37.765022, 35.374710, 33.091873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512230, 35.603107, 32.882275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332293, -0.411181, -0.848830,
		-0.700131, -0.710562, 0.070122,
		-0.631979, 0.570991, -0.523996,
		37.322636, 35.774406, 32.725075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368057, 34.911121, 32.545368>,  <37.765022, 35.374710, 33.091873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368057, 34.911121, 32.545368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387901, 35.291889, 32.424446>,  <37.399807, 35.520351, 32.351891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387901, 35.291889, 32.424446>,  <37.368057, 34.911121, 32.545368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387901, 35.291889, 32.424446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349124, -0.300115, -0.887718,
		-0.935762, -0.061506, -0.347226,
		0.049607, 0.951918, -0.302310,
		37.402782, 35.577465, 32.333752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024860, 35.016171, 31.780699>,  <37.368057, 34.911121, 32.545368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024860, 35.016171, 31.780699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305248, 35.291756, 31.854424>,  <37.473480, 35.457108, 31.898659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305248, 35.291756, 31.854424>,  <37.024860, 35.016171, 31.780699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305248, 35.291756, 31.854424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386089, -0.149292, -0.910300,
		-0.599649, 0.709252, -0.370651,
		0.700968, 0.688965, 0.184312,
		37.515537, 35.498444, 31.909718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003628, 35.252731, 30.991453>,  <37.024860, 35.016171, 31.780699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003628, 35.252731, 30.991453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260109, 35.497059, 31.177258>,  <37.413998, 35.643654, 31.288740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.260109, 35.497059, 31.177258>,  <37.003628, 35.252731, 30.991453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260109, 35.497059, 31.177258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472913, 0.162176, -0.866055,
		-0.604333, 0.774986, -0.184875,
		0.641198, 0.610815, 0.464509,
		37.452469, 35.680302, 31.316610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005756, 35.989174, 30.747667>,  <37.003628, 35.252731, 30.991453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005756, 35.989174, 30.747667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360886, 35.879501, 30.895506>,  <37.573963, 35.813698, 30.984209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360886, 35.879501, 30.895506>,  <37.005756, 35.989174, 30.747667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360886, 35.879501, 30.895506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390992, 0.025858, -0.920031,
		0.242698, 0.961330, 0.130160,
		0.887819, -0.274181, 0.369597,
		37.627232, 35.797245, 31.006386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485893, 36.542862, 30.602438>,  <37.005756, 35.989174, 30.747667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485893, 36.542862, 30.602438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733734, 36.235367, 30.665857>,  <37.882439, 36.050869, 30.703909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.733734, 36.235367, 30.665857>,  <37.485893, 36.542862, 30.602438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733734, 36.235367, 30.665857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465421, 0.197171, -0.862848,
		0.632041, 0.608415, 0.479953,
		0.619603, -0.768736, 0.158549,
		37.919617, 36.004745, 30.713423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131325, 36.811443, 30.570208>,  <37.485893, 36.542862, 30.602438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131325, 36.811443, 30.570208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175030, 36.417000, 30.520176>,  <38.201252, 36.180332, 30.490156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175030, 36.417000, 30.520176>,  <38.131325, 36.811443, 30.570208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175030, 36.417000, 30.520176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570312, 0.165255, -0.804633,
		0.814128, 0.016583, 0.580448,
		0.109265, -0.986112, -0.125081,
		38.207809, 36.121166, 30.482651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766212, 36.730919, 30.262173>,  <38.131325, 36.811443, 30.570208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766212, 36.730919, 30.262173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579617, 36.390583, 30.165464>,  <38.467659, 36.186382, 30.107439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579617, 36.390583, 30.165464>,  <38.766212, 36.730919, 30.262173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579617, 36.390583, 30.165464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393425, 0.045219, -0.918244,
		0.792214, -0.523470, 0.313649,
		-0.466490, -0.850843, -0.241770,
		38.439671, 36.135330, 30.092934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274254, 36.342686, 30.061596>,  <38.766212, 36.730919, 30.262173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274254, 36.342686, 30.061596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946156, 36.181450, 29.899256>,  <38.749298, 36.084709, 29.801851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946156, 36.181450, 29.899256>,  <39.274254, 36.342686, 30.061596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946156, 36.181450, 29.899256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498173, -0.154718, -0.853162,
		0.281111, -0.901986, 0.327717,
		-0.820244, -0.403093, -0.405852,
		38.700081, 36.060520, 29.777500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544338, 35.815090, 29.650309>,  <39.274254, 36.342686, 30.061596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544338, 35.815090, 29.650309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181255, 35.906986, 29.509855>,  <38.963406, 35.962124, 29.425583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181255, 35.906986, 29.509855>,  <39.544338, 35.815090, 29.650309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181255, 35.906986, 29.509855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329686, -0.127188, -0.935484,
		-0.259581, -0.964905, 0.039706,
		-0.907703, 0.229744, -0.351132,
		38.908943, 35.975910, 29.404516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391132, 35.303135, 29.205805>,  <39.544338, 35.815090, 29.650309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391132, 35.303135, 29.205805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135220, 35.584332, 29.081564>,  <38.981670, 35.753052, 29.007019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135220, 35.584332, 29.081564>,  <39.391132, 35.303135, 29.205805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135220, 35.584332, 29.081564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277465, -0.165611, -0.946354,
		-0.716720, -0.691645, -0.089100,
		-0.639785, 0.702994, -0.310604,
		38.943283, 35.795231, 28.988382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103226, 34.891056, 28.814304>,  <39.391132, 35.303135, 29.205805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103226, 34.891056, 28.814304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073833, 35.282032, 28.735092>,  <39.056198, 35.516617, 28.687565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073833, 35.282032, 28.735092>,  <39.103226, 34.891056, 28.814304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073833, 35.282032, 28.735092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113852, -0.189047, -0.975346,
		-0.990776, -0.094220, -0.097391,
		-0.073485, 0.977437, -0.198030,
		39.051788, 35.575264, 28.675684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817375, 34.823532, 28.173231>,  <39.103226, 34.891056, 28.814304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817375, 34.823532, 28.173231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918976, 35.210327, 28.164974>,  <38.979939, 35.442402, 28.160021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.918976, 35.210327, 28.164974>,  <38.817375, 34.823532, 28.173231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.918976, 35.210327, 28.164974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201534, -0.073787, -0.976698,
		-0.945973, 0.243925, -0.213623,
		0.254004, 0.966983, -0.020642,
		38.995178, 35.500423, 28.158781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401917, 35.174431, 27.644066>,  <38.817375, 34.823532, 28.173231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401917, 35.174431, 27.644066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736435, 35.391006, 27.678608>,  <38.937145, 35.520950, 27.699333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736435, 35.391006, 27.678608>,  <38.401917, 35.174431, 27.644066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736435, 35.391006, 27.678608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193852, -0.144668, -0.970306,
		-0.512867, 0.828201, -0.225943,
		0.836295, 0.541437, 0.086353,
		38.987324, 35.553436, 27.704514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490833, 35.733654, 27.163628>,  <38.401917, 35.174431, 27.644066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490833, 35.733654, 27.163628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862591, 35.634830, 27.273306>,  <39.085648, 35.575539, 27.339113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862591, 35.634830, 27.273306>,  <38.490833, 35.733654, 27.163628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862591, 35.634830, 27.273306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192603, -0.309084, -0.931328,
		0.314838, 0.918385, -0.239679,
		0.929398, -0.247055, 0.274195,
		39.141411, 35.560715, 27.355564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786221, 35.844360, 26.606848>,  <38.490833, 35.733654, 27.163628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786221, 35.844360, 26.606848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036072, 35.588879, 26.786575>,  <39.185982, 35.435589, 26.894411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036072, 35.588879, 26.786575>,  <38.786221, 35.844360, 26.606848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036072, 35.588879, 26.786575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327457, -0.308121, -0.893215,
		0.708948, 0.705064, 0.016687,
		0.624632, -0.638707, 0.449319,
		39.223461, 35.397266, 26.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531128, 35.925755, 26.258650>,  <38.786221, 35.844360, 26.606848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531128, 35.925755, 26.258650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469128, 35.572674, 26.436104>,  <39.431927, 35.360825, 26.542576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469128, 35.572674, 26.436104>,  <39.531128, 35.925755, 26.258650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469128, 35.572674, 26.436104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331214, -0.469505, -0.818451,
		0.930737, 0.020075, 0.365138,
		-0.155004, -0.882702, 0.443634,
		39.422626, 35.307865, 26.569195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018150, 35.615284, 25.964409>,  <39.531128, 35.925755, 26.258650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018150, 35.615284, 25.964409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793369, 35.330193, 26.132326>,  <39.658501, 35.159138, 26.233076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793369, 35.330193, 26.132326>,  <40.018150, 35.615284, 25.964409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793369, 35.330193, 26.132326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131644, -0.578096, -0.805279,
		0.816627, -0.397265, 0.418690,
		-0.561953, -0.712730, 0.419791,
		39.624783, 35.116375, 26.258263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396801, 35.085167, 25.708437>,  <40.018150, 35.615284, 25.964409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.396801, 35.085167, 25.708437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030602, 34.959698, 25.809206>,  <39.810883, 34.884415, 25.869667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030602, 34.959698, 25.809206>,  <40.396801, 35.085167, 25.708437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030602, 34.959698, 25.809206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043275, -0.699334, -0.713484,
		0.399978, -0.642294, 0.653816,
		-0.915502, -0.313672, 0.251923,
		39.755951, 34.865597, 25.884783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425533, 34.404095, 25.791086>,  <40.396801, 35.085167, 25.708437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425533, 34.404095, 25.791086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042561, 34.485149, 25.708858>,  <39.812775, 34.533783, 25.659521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042561, 34.485149, 25.708858>,  <40.425533, 34.404095, 25.791086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042561, 34.485149, 25.708858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016587, -0.672370, -0.740030,
		-0.288177, -0.711939, 0.640388,
		-0.957434, 0.202637, -0.205571,
		39.755329, 34.545940, 25.647188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067471, 33.790092, 25.739229>,  <40.425533, 34.404095, 25.791086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067471, 33.790092, 25.739229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838940, 34.037460, 25.523397>,  <39.701820, 34.185883, 25.393898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838940, 34.037460, 25.523397>,  <40.067471, 33.790092, 25.739229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838940, 34.037460, 25.523397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117527, -0.589020, -0.799526,
		-0.812267, -0.520203, 0.263839,
		-0.571323, 0.618421, -0.539580,
		39.667542, 34.222988, 25.361523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524967, 33.398411, 25.385820>,  <40.067471, 33.790092, 25.739229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.524967, 33.398411, 25.385820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564327, 33.747009, 25.193647>,  <39.587944, 33.956169, 25.078344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564327, 33.747009, 25.193647>,  <39.524967, 33.398411, 25.385820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564327, 33.747009, 25.193647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059849, -0.476719, -0.877016,
		-0.993346, 0.115051, 0.005249,
		0.098399, 0.871495, -0.480432,
		39.593845, 34.008457, 25.049519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121582, 33.362389, 24.749987>,  <39.524967, 33.398411, 25.385820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121582, 33.362389, 24.749987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336170, 33.678257, 24.630913>,  <39.464924, 33.867779, 24.559469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336170, 33.678257, 24.630913>,  <39.121582, 33.362389, 24.749987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336170, 33.678257, 24.630913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087966, -0.298493, -0.950349,
		-0.839324, 0.536018, -0.090668,
		0.536468, 0.789675, -0.297684,
		39.497112, 33.915161, 24.541607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851727, 33.542732, 24.080675>,  <39.121582, 33.362389, 24.749987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851727, 33.542732, 24.080675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211048, 33.717346, 24.060755>,  <39.426643, 33.822117, 24.048803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211048, 33.717346, 24.060755>,  <38.851727, 33.542732, 24.080675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211048, 33.717346, 24.060755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037681, -0.189472, -0.981163,
		-0.437750, 0.879508, -0.186654,
		0.898307, 0.436537, -0.049801,
		39.480541, 33.848309, 24.045815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795990, 33.887333, 23.535139>,  <38.851727, 33.542732, 24.080675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795990, 33.887333, 23.535139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185272, 33.822418, 23.600296>,  <39.418842, 33.783470, 23.639391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185272, 33.822418, 23.600296>,  <38.795990, 33.887333, 23.535139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185272, 33.822418, 23.600296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112796, -0.280380, -0.953239,
		0.200371, 0.946071, -0.254562,
		0.973205, -0.162288, 0.162893,
		39.477234, 33.773731, 23.649164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195873, 34.219002, 22.999578>,  <38.795990, 33.887333, 23.535139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195873, 34.219002, 22.999578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467476, 33.961006, 23.139824>,  <39.630440, 33.806210, 23.223970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467476, 33.961006, 23.139824>,  <39.195873, 34.219002, 22.999578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467476, 33.961006, 23.139824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321489, -0.168114, -0.931871,
		0.659992, 0.745469, 0.093206,
		0.679011, -0.644992, 0.350614,
		39.671181, 33.767509, 23.245008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743771, 34.324627, 22.593943>,  <39.195873, 34.219002, 22.999578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743771, 34.324627, 22.593943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831203, 33.964447, 22.744362>,  <39.883663, 33.748341, 22.834614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831203, 33.964447, 22.744362>,  <39.743771, 34.324627, 22.593943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831203, 33.964447, 22.744362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380970, -0.276038, -0.882420,
		0.898377, 0.336148, 0.282706,
		0.218587, -0.900448, 0.376049,
		39.896778, 33.694313, 22.857176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289970, 34.148270, 22.197416>,  <39.743771, 34.324627, 22.593943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289970, 34.148270, 22.197416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230110, 33.798023, 22.381111>,  <40.194195, 33.587875, 22.491327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230110, 33.798023, 22.381111>,  <40.289970, 34.148270, 22.197416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230110, 33.798023, 22.381111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431426, -0.475747, -0.766509,
		0.889649, 0.083417, 0.448961,
		-0.149652, -0.875618, 0.459236,
		40.185215, 33.535339, 22.518883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.045296, 33.998245, 22.203094>,  <40.289970, 34.148270, 22.197416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.045296, 33.998245, 22.203094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786186, 33.694241, 22.224182>,  <40.630722, 33.511837, 22.236835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.786186, 33.694241, 22.224182>,  <41.045296, 33.998245, 22.203094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786186, 33.694241, 22.224182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554539, -0.517833, -0.651410,
		0.522377, -0.392730, 0.756892,
		-0.647772, -0.760008, 0.052720,
		40.591854, 33.466240, 22.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389229, 33.315933, 22.351404>,  <41.045296, 33.998245, 22.203094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389229, 33.315933, 22.351404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045181, 33.225822, 22.168341>,  <40.838753, 33.171757, 22.058502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.045181, 33.225822, 22.168341>,  <41.389229, 33.315933, 22.351404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.045181, 33.225822, 22.168341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498075, -0.564568, -0.658167,
		-0.110108, -0.794047, 0.597800,
		-0.860115, -0.225280, -0.457659,
		40.787148, 33.158237, 22.031042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362041, 32.577019, 22.200941>,  <41.389229, 33.315933, 22.351404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362041, 32.577019, 22.200941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112984, 32.752331, 21.941643>,  <40.963551, 32.857517, 21.786064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.112984, 32.752331, 21.941643>,  <41.362041, 32.577019, 22.200941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112984, 32.752331, 21.941643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331118, -0.603033, -0.725749,
		-0.708996, -0.666529, 0.230352,
		-0.622643, 0.438280, -0.648248,
		40.926189, 32.883816, 21.747168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113873, 32.701004, 22.249063>,  <41.362041, 32.577019, 22.200941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113873, 32.701004, 22.249063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493622, 32.577461, 22.272057>,  <42.721470, 32.503334, 22.285852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.493622, 32.577461, 22.272057>,  <42.113873, 32.701004, 22.249063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.493622, 32.577461, 22.272057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037197, 0.292186, 0.955638,
		-0.311952, -0.905115, 0.288881,
		0.949370, -0.308858, 0.057481,
		42.778431, 32.484802, 22.289301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138008, 32.606361, 22.886314>,  <42.113873, 32.701004, 22.249063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138008, 32.606361, 22.886314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522133, 32.553543, 22.788031>,  <42.752605, 32.521854, 22.729059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522133, 32.553543, 22.788031>,  <42.138008, 32.606361, 22.886314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522133, 32.553543, 22.788031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275552, 0.312124, 0.909203,
		-0.043361, -0.940821, 0.336119,
		0.960308, -0.132042, -0.245711,
		42.810226, 32.513931, 22.714317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438976, 32.175957, 23.468079>,  <42.138008, 32.606361, 22.886314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438976, 32.175957, 23.468079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700554, 32.440689, 23.321474>,  <42.857502, 32.599529, 23.233511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700554, 32.440689, 23.321474>,  <42.438976, 32.175957, 23.468079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700554, 32.440689, 23.321474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292431, 0.225673, 0.929277,
		0.697740, -0.714875, -0.045963,
		0.653944, 0.661835, -0.366513,
		42.896736, 32.639240, 23.211521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938667, 32.169868, 23.983068>,  <42.438976, 32.175957, 23.468079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938667, 32.169868, 23.983068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038857, 32.503147, 23.785868>,  <43.098969, 32.703114, 23.667547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038857, 32.503147, 23.785868>,  <42.938667, 32.169868, 23.983068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038857, 32.503147, 23.785868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106764, 0.482354, 0.869446,
		0.962219, -0.270405, 0.031860,
		0.250471, 0.833196, -0.493000,
		43.113998, 32.753105, 23.637968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475094, 32.381016, 24.293045>,  <42.938667, 32.169868, 23.983068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475094, 32.381016, 24.293045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358063, 32.721931, 24.119608>,  <43.287842, 32.926479, 24.015545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358063, 32.721931, 24.119608>,  <43.475094, 32.381016, 24.293045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358063, 32.721931, 24.119608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021206, 0.459106, 0.888128,
		0.956006, 0.250654, -0.152399,
		-0.292580, 0.852287, -0.433593,
		43.270290, 32.977619, 23.989531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768341, 32.810360, 24.602158>,  <43.475094, 32.381016, 24.293045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768341, 32.810360, 24.602158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502071, 33.048138, 24.421705>,  <43.342312, 33.190804, 24.313433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502071, 33.048138, 24.421705>,  <43.768341, 32.810360, 24.602158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502071, 33.048138, 24.421705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086990, 0.538601, 0.838058,
		0.741158, 0.597115, -0.306820,
		-0.665671, 0.594443, -0.451132,
		43.302372, 33.226471, 24.286366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069839, 33.465702, 24.567888>,  <43.768341, 32.810360, 24.602158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069839, 33.465702, 24.567888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671864, 33.502396, 24.551464>,  <43.433079, 33.524410, 24.541609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.671864, 33.502396, 24.551464>,  <44.069839, 33.465702, 24.567888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.671864, 33.502396, 24.551464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003172, 0.379680, 0.925112,
		0.100453, 0.920558, -0.377467,
		-0.994937, 0.091733, -0.041061,
		43.373383, 33.529915, 24.539146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938118, 34.141823, 24.749416>,  <44.069839, 33.465702, 24.567888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938118, 34.141823, 24.749416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615025, 33.921143, 24.832544>,  <43.421169, 33.788734, 24.882421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615025, 33.921143, 24.832544>,  <43.938118, 34.141823, 24.749416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615025, 33.921143, 24.832544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030336, 0.390938, 0.919917,
		-0.588765, 0.736744, -0.332510,
		-0.807735, -0.551702, 0.207821,
		43.372704, 33.755630, 24.894890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513351, 34.521675, 25.241529>,  <43.938118, 34.141823, 24.749416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513351, 34.521675, 25.241529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310295, 34.178684, 25.275089>,  <43.188461, 33.972889, 25.295225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.310295, 34.178684, 25.275089>,  <43.513351, 34.521675, 25.241529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310295, 34.178684, 25.275089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207602, 0.216248, 0.954012,
		-0.836185, 0.466874, -0.287790,
		-0.507637, -0.857476, 0.083899,
		43.158005, 33.921440, 25.300259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752628, 34.589352, 25.613119>,  <43.513351, 34.521675, 25.241529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752628, 34.589352, 25.613119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906300, 34.223534, 25.663727>,  <42.998501, 34.004044, 25.694092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906300, 34.223534, 25.663727>,  <42.752628, 34.589352, 25.613119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906300, 34.223534, 25.663727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288612, 0.011208, 0.957381,
		-0.876989, -0.404320, -0.259644,
		0.384178, -0.914549, 0.126521,
		43.021553, 33.949169, 25.701683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224335, 34.223545, 25.832422>,  <42.752628, 34.589352, 25.613119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224335, 34.223545, 25.832422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573898, 34.087872, 25.971704>,  <42.783634, 34.006470, 26.055273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.573898, 34.087872, 25.971704>,  <42.224335, 34.223545, 25.832422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573898, 34.087872, 25.971704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387238, -0.052773, 0.920468,
		-0.293828, -0.939240, -0.177462,
		0.873905, -0.339180, 0.348204,
		42.836071, 33.986118, 26.076166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238792, 33.552162, 26.299465>,  <42.224335, 34.223545, 25.832422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238792, 33.552162, 26.299465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555023, 33.779751, 26.390032>,  <42.744762, 33.916302, 26.444372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.555023, 33.779751, 26.390032>,  <42.238792, 33.552162, 26.299465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555023, 33.779751, 26.390032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259782, -0.023207, 0.965388,
		0.554531, -0.822031, 0.129462,
		0.790575, 0.568970, 0.226418,
		42.792194, 33.950443, 26.457956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.551086, 33.278744, 26.898499>,  <42.238792, 33.552162, 26.299465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.551086, 33.278744, 26.898499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691425, 33.651852, 26.865381>,  <42.775627, 33.875717, 26.845510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691425, 33.651852, 26.865381>,  <42.551086, 33.278744, 26.898499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691425, 33.651852, 26.865381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263153, 0.183059, 0.947227,
		0.898697, -0.310544, 0.309686,
		0.350847, 0.932766, -0.082794,
		42.796680, 33.931683, 26.840544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793934, 33.487038, 27.597527>,  <42.551086, 33.278744, 26.898499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793934, 33.487038, 27.597527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808670, 33.836658, 27.403751>,  <42.817513, 34.046429, 27.287487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.808670, 33.836658, 27.403751>,  <42.793934, 33.487038, 27.597527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808670, 33.836658, 27.403751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182758, 0.482484, 0.856626,
		0.982467, 0.056974, 0.177516,
		0.036844, 0.874050, -0.484437,
		42.819721, 34.098873, 27.258421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264427, 33.920662, 27.975746>,  <42.793934, 33.487038, 27.597527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264427, 33.920662, 27.975746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978378, 34.133213, 27.794090>,  <42.806751, 34.260742, 27.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978378, 34.133213, 27.794090>,  <43.264427, 33.920662, 27.975746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978378, 34.133213, 27.794090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413745, 0.201882, 0.887727,
		0.563399, 0.822729, 0.075484,
		-0.715120, 0.531376, -0.454141,
		42.763844, 34.292625, 27.657848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176613, 34.569813, 28.295776>,  <43.264427, 33.920662, 27.975746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176613, 34.569813, 28.295776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824833, 34.546257, 28.106844>,  <42.613766, 34.532124, 27.993484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824833, 34.546257, 28.106844>,  <43.176613, 34.569813, 28.295776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824833, 34.546257, 28.106844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466187, 0.306880, 0.829756,
		0.096086, 0.949925, -0.297339,
		-0.879453, -0.058888, -0.472330,
		42.560997, 34.528591, 27.965145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765514, 34.810261, 28.740252>,  <43.176613, 34.569813, 28.295776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765514, 34.810261, 28.740252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491360, 34.717075, 28.464287>,  <42.326866, 34.661163, 28.298708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491360, 34.717075, 28.464287>,  <42.765514, 34.810261, 28.740252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491360, 34.717075, 28.464287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727996, 0.240720, 0.641931,
		0.016526, 0.942221, -0.334585,
		-0.685382, -0.232968, -0.689911,
		42.285744, 34.647186, 28.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309185, 35.451111, 28.594130>,  <42.765514, 34.810261, 28.740252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309185, 35.451111, 28.594130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111736, 35.106178, 28.549004>,  <41.993267, 34.899220, 28.521927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111736, 35.106178, 28.549004>,  <42.309185, 35.451111, 28.594130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111736, 35.106178, 28.549004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698829, 0.316079, 0.641664,
		-0.517667, 0.395577, -0.758644,
		-0.493619, -0.862330, -0.112817,
		41.963650, 34.847481, 28.515158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.666134, 35.666805, 28.715895>,  <42.309185, 35.451111, 28.594130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.666134, 35.666805, 28.715895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615322, 35.270100, 28.722488>,  <41.584835, 35.032078, 28.726444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.615322, 35.270100, 28.722488>,  <41.666134, 35.666805, 28.715895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615322, 35.270100, 28.722488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724003, 0.104068, 0.681901,
		-0.677999, 0.074689, -0.731258,
		-0.127032, -0.991762, 0.016483,
		41.577213, 34.972572, 28.727434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985966, 35.542027, 28.617950>,  <41.666134, 35.666805, 28.715895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985966, 35.542027, 28.617950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130356, 35.228001, 28.819292>,  <41.216991, 35.039585, 28.940096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.130356, 35.228001, 28.819292>,  <40.985966, 35.542027, 28.617950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.130356, 35.228001, 28.819292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683529, 0.144450, 0.715487,
		-0.634415, -0.602331, -0.484474,
		0.360978, -0.785068, 0.503352,
		41.238647, 34.992481, 28.970297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399731, 35.202751, 28.893885>,  <40.985966, 35.542027, 28.617950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399731, 35.202751, 28.893885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690960, 35.034199, 29.110163>,  <40.865700, 34.933067, 29.239929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690960, 35.034199, 29.110163>,  <40.399731, 35.202751, 28.893885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690960, 35.034199, 29.110163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580501, 0.040512, 0.813251,
		-0.364590, -0.905980, -0.215114,
		0.728075, -0.421376, 0.540693,
		40.909382, 34.907787, 29.272371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052948, 34.752869, 29.308952>,  <40.399731, 35.202751, 28.893885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052948, 34.752869, 29.308952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409557, 34.780796, 29.487980>,  <40.623524, 34.797554, 29.595396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409557, 34.780796, 29.487980>,  <40.052948, 34.752869, 29.308952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409557, 34.780796, 29.487980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443979, -0.061333, 0.893936,
		0.089865, -0.995672, -0.023681,
		0.891519, 0.069820, 0.447569,
		40.677013, 34.801743, 29.622252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041645, 34.282204, 29.890701>,  <40.052948, 34.752869, 29.308952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041645, 34.282204, 29.890701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358334, 34.511368, 29.975513>,  <40.548347, 34.648865, 30.026402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.358334, 34.511368, 29.975513>,  <40.041645, 34.282204, 29.890701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358334, 34.511368, 29.975513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315460, 0.086197, 0.945016,
		0.523132, -0.815073, 0.248974,
		0.791718, 0.572910, 0.212031,
		40.595848, 34.683239, 30.039124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412830, 33.914249, 30.457138>,  <40.041645, 34.282204, 29.890701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412830, 33.914249, 30.457138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484875, 34.307587, 30.466820>,  <40.528103, 34.543591, 30.472630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484875, 34.307587, 30.466820>,  <40.412830, 33.914249, 30.457138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484875, 34.307587, 30.466820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377033, 0.046291, 0.925042,
		0.908518, -0.175739, 0.379092,
		0.180115, 0.983348, 0.024204,
		40.538910, 34.602592, 30.474081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723557, 34.015465, 31.134398>,  <40.412830, 33.914249, 30.457138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723557, 34.015465, 31.134398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608803, 34.383499, 31.027712>,  <40.539951, 34.604321, 30.963701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608803, 34.383499, 31.027712>,  <40.723557, 34.015465, 31.134398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608803, 34.383499, 31.027712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078855, 0.254789, 0.963776,
		0.954715, 0.297521, -0.000540,
		-0.286881, 0.920089, -0.266712,
		40.522739, 34.659527, 30.947699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989513, 34.463673, 31.685026>,  <40.723557, 34.015465, 31.134398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989513, 34.463673, 31.685026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742970, 34.718899, 31.500429>,  <40.595043, 34.872032, 31.389671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742970, 34.718899, 31.500429>,  <40.989513, 34.463673, 31.685026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742970, 34.718899, 31.500429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089781, 0.525289, 0.846174,
		0.782329, 0.562983, -0.266482,
		-0.616361, 0.638061, -0.461494,
		40.558060, 34.910316, 31.361980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235649, 35.249561, 31.696648>,  <40.989513, 34.463673, 31.685026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235649, 35.249561, 31.696648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842064, 35.184917, 31.666475>,  <40.605911, 35.146130, 31.648371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842064, 35.184917, 31.666475>,  <41.235649, 35.249561, 31.696648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842064, 35.184917, 31.666475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133788, 0.389160, 0.911403,
		-0.117940, 0.906882, -0.404543,
		-0.983967, -0.161614, -0.075432,
		40.546875, 35.136433, 31.643847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874359, 35.767044, 32.069683>,  <41.235649, 35.249561, 31.696648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.874359, 35.767044, 32.069683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559746, 35.524673, 32.021980>,  <40.370979, 35.379250, 31.993359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559746, 35.524673, 32.021980>,  <40.874359, 35.767044, 32.069683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559746, 35.524673, 32.021980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357608, 0.289450, 0.887883,
		-0.503475, 0.740993, -0.444345,
		-0.786530, -0.605928, -0.119254,
		40.323788, 35.342896, 31.986204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264832, 36.171543, 32.100372>,  <40.874359, 35.767044, 32.069683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264832, 36.171543, 32.100372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202637, 35.791058, 32.206963>,  <40.165321, 35.562767, 32.270916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202637, 35.791058, 32.206963>,  <40.264832, 36.171543, 32.100372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202637, 35.791058, 32.206963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393909, 0.307086, 0.866334,
		-0.905903, 0.029737, -0.422441,
		-0.155487, -0.951217, 0.266476,
		40.155991, 35.505692, 32.286907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642929, 36.269077, 32.462803>,  <40.264832, 36.171543, 32.100372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642929, 36.269077, 32.462803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789089, 35.911728, 32.567390>,  <39.876785, 35.697319, 32.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789089, 35.911728, 32.567390>,  <39.642929, 36.269077, 32.462803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789089, 35.911728, 32.567390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381531, 0.112472, 0.917488,
		-0.849068, -0.435008, -0.299753,
		0.365400, -0.893375, 0.261465,
		39.898708, 35.643715, 32.645828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023304, 35.973965, 32.805794>,  <39.642929, 36.269077, 32.462803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023304, 35.973965, 32.805794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324806, 35.753689, 32.949238>,  <39.505707, 35.621525, 33.035305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.324806, 35.753689, 32.949238>,  <39.023304, 35.973965, 32.805794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.324806, 35.753689, 32.949238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396799, 0.053599, 0.916339,
		-0.523837, -0.832989, -0.178112,
		0.753754, -0.550687, 0.358607,
		39.550934, 35.588482, 33.056820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719753, 35.475594, 33.317806>,  <39.023304, 35.973965, 32.805794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719753, 35.475594, 33.317806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112495, 35.497986, 33.390270>,  <39.348141, 35.511421, 33.433746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112495, 35.497986, 33.390270>,  <38.719753, 35.475594, 33.317806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112495, 35.497986, 33.390270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186095, 0.101412, 0.977284,
		0.036337, -0.993268, 0.109990,
		0.981860, 0.055980, 0.181157,
		39.407055, 35.514778, 33.444618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900513, 35.017990, 33.935104>,  <38.719753, 35.475594, 33.317806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900513, 35.017990, 33.935104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226879, 35.249157, 33.928181>,  <39.422699, 35.387856, 33.924026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.226879, 35.249157, 33.928181>,  <38.900513, 35.017990, 33.935104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226879, 35.249157, 33.928181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066186, 0.123093, 0.990186,
		0.574374, -0.806760, 0.138683,
		0.815913, 0.577916, -0.017305,
		39.471653, 35.422531, 33.922989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304890, 34.804264, 34.638130>,  <38.900513, 35.017990, 33.935104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304890, 34.804264, 34.638130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441048, 35.161480, 34.520416>,  <39.522743, 35.375809, 34.449787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441048, 35.161480, 34.520416>,  <39.304890, 34.804264, 34.638130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441048, 35.161480, 34.520416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063681, 0.290366, 0.954794,
		0.938123, -0.343749, 0.041970,
		0.340396, 0.893042, -0.294290,
		39.543167, 35.429394, 34.432129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854885, 34.881996, 35.059071>,  <39.304890, 34.804264, 34.638130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854885, 34.881996, 35.059071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753567, 35.248508, 34.934959>,  <39.692776, 35.468414, 34.860493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753567, 35.248508, 34.934959>,  <39.854885, 34.881996, 35.059071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753567, 35.248508, 34.934959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189068, 0.361445, 0.913023,
		0.948732, 0.172604, -0.264793,
		-0.253300, 0.916278, -0.310281,
		39.677578, 35.523392, 34.841877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371098, 35.295624, 35.256042>,  <39.854885, 34.881996, 35.059071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371098, 35.295624, 35.256042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054493, 35.535492, 35.208878>,  <39.864529, 35.679413, 35.180580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.054493, 35.535492, 35.208878>,  <40.371098, 35.295624, 35.256042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054493, 35.535492, 35.208878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119836, 0.341471, 0.932221,
		0.599287, 0.723737, -0.342142,
		-0.791514, 0.599669, -0.117909,
		39.817039, 35.715393, 35.173504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504463, 35.948856, 35.546047>,  <40.371098, 35.295624, 35.256042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504463, 35.948856, 35.546047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105549, 35.923347, 35.560787>,  <39.866199, 35.908043, 35.569630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105549, 35.923347, 35.560787>,  <40.504463, 35.948856, 35.546047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105549, 35.923347, 35.560787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015114, 0.312488, 0.949801,
		-0.072083, 0.947779, -0.310676,
		-0.997284, -0.063769, 0.036849,
		39.806362, 35.904217, 35.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345169, 36.476109, 36.008804>,  <40.504463, 35.948856, 35.546047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345169, 36.476109, 36.008804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008892, 36.261200, 35.981754>,  <39.807125, 36.132256, 35.965527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008892, 36.261200, 35.981754>,  <40.345169, 36.476109, 36.008804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008892, 36.261200, 35.981754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115121, 0.055307, 0.991811,
		-0.529130, 0.841595, -0.108347,
		-0.840696, -0.537269, -0.067621,
		39.756683, 36.100018, 35.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826679, 36.819981, 36.429600>,  <40.345169, 36.476109, 36.008804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826679, 36.819981, 36.429600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 36.442276, 36.383560>,  <39.629288, 36.215652, 36.355938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703308, 36.442276, 36.383560>,  <39.826679, 36.819981, 36.429600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703308, 36.442276, 36.383560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079653, -0.094934, 0.992292,
		-0.947908, 0.315215, -0.045933,
		-0.308424, -0.944260, -0.115096,
		39.610783, 36.158997, 36.349030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189869, 36.761292, 36.656143>,  <39.826679, 36.819981, 36.429600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189869, 36.761292, 36.656143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302223, 36.377396, 36.657307>,  <39.369637, 36.147060, 36.658005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302223, 36.377396, 36.657307>,  <39.189869, 36.761292, 36.656143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302223, 36.377396, 36.657307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321400, -0.091201, 0.942542,
		-0.904327, -0.265679, -0.334077,
		0.280882, -0.959738, 0.002913,
		39.386486, 36.089474, 36.658180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752010, 36.567860, 37.025959>,  <39.189869, 36.761292, 36.656143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752010, 36.567860, 37.025959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021328, 36.272430, 37.012192>,  <39.182919, 36.095173, 37.003929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021328, 36.272430, 37.012192>,  <38.752010, 36.567860, 37.025959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021328, 36.272430, 37.012192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243604, -0.265548, 0.932814,
		-0.698090, -0.619675, -0.358712,
		0.673296, -0.738572, -0.034421,
		39.223316, 36.050858, 37.001865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478882, 35.957180, 37.243023>,  <38.752010, 36.567860, 37.025959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478882, 35.957180, 37.243023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868637, 35.903690, 37.315331>,  <39.102493, 35.871597, 37.358715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868637, 35.903690, 37.315331>,  <38.478882, 35.957180, 37.243023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868637, 35.903690, 37.315331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187934, -0.042959, 0.981242,
		-0.123447, -0.990087, -0.066990,
		0.974393, -0.133721, 0.180768,
		39.160954, 35.863575, 37.369560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529739, 35.429878, 37.679077>,  <38.478882, 35.957180, 37.243023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529739, 35.429878, 37.679077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876404, 35.615448, 37.752483>,  <39.084400, 35.726791, 37.796528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.876404, 35.615448, 37.752483>,  <38.529739, 35.429878, 37.679077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876404, 35.615448, 37.752483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082670, -0.229220, 0.969858,
		0.492007, -0.855706, -0.160303,
		0.866657, 0.463925, 0.183519,
		39.136402, 35.754627, 37.807541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665546, 35.279335, 38.322613>,  <38.529739, 35.429878, 37.679077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665546, 35.279335, 38.322613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937347, 35.572575, 38.310978>,  <39.100426, 35.748520, 38.303997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.937347, 35.572575, 38.310978>,  <38.665546, 35.279335, 38.322613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937347, 35.572575, 38.310978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084211, 0.117313, 0.989518,
		0.728828, -0.669927, 0.141449,
		0.679499, 0.733100, -0.029086,
		39.141197, 35.792503, 38.302254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921535, 35.102951, 38.934616>,  <38.665546, 35.279335, 38.322613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921535, 35.102951, 38.934616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012184, 35.469189, 38.801758>,  <39.066574, 35.688931, 38.722042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012184, 35.469189, 38.801758>,  <38.921535, 35.102951, 38.934616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012184, 35.469189, 38.801758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137672, 0.307482, 0.941542,
		0.964203, -0.259105, -0.056368,
		0.226626, 0.915598, -0.332146,
		39.080173, 35.743870, 38.702114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463810, 35.280815, 39.308411>,  <38.921535, 35.102951, 38.934616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463810, 35.280815, 39.308411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279121, 35.605751, 39.165909>,  <39.168308, 35.800713, 39.080410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279121, 35.605751, 39.165909>,  <39.463810, 35.280815, 39.308411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279121, 35.605751, 39.165909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089672, 0.442315, 0.892365,
		0.882482, 0.380076, -0.277070,
		-0.461718, 0.812342, -0.356253,
		39.140606, 35.849453, 39.059032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745399, 35.768627, 39.689049>,  <39.463810, 35.280815, 39.308411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745399, 35.768627, 39.689049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409676, 35.943756, 39.560135>,  <39.208241, 36.048832, 39.482788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409676, 35.943756, 39.560135>,  <39.745399, 35.768627, 39.689049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409676, 35.943756, 39.560135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080170, 0.486652, 0.869909,
		0.537705, 0.755963, -0.373353,
		-0.839313, 0.437823, -0.322281,
		39.157883, 36.075104, 39.463451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827499, 36.413700, 39.942173>,  <39.745399, 35.768627, 39.689049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827499, 36.413700, 39.942173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437397, 36.352169, 39.878654>,  <39.203335, 36.315250, 39.840542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437397, 36.352169, 39.878654>,  <39.827499, 36.413700, 39.942173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437397, 36.352169, 39.878654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203549, 0.344376, 0.916500,
		-0.086300, 0.926143, -0.367166,
		-0.975254, -0.153830, -0.158796,
		39.144821, 36.306019, 39.831017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385567, 37.054348, 40.130554>,  <39.827499, 36.413700, 39.942173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385567, 37.054348, 40.130554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140728, 36.738251, 40.142181>,  <38.993824, 36.548592, 40.149158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140728, 36.738251, 40.142181>,  <39.385567, 37.054348, 40.130554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140728, 36.738251, 40.142181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232221, 0.214765, 0.948657,
		-0.755915, 0.573922, -0.314969,
		-0.612099, -0.790246, 0.029067,
		38.957100, 36.501175, 40.150902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597565, 37.173973, 40.248226>,  <39.385567, 37.054348, 40.130554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597565, 37.173973, 40.248226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705463, 36.840935, 40.441727>,  <38.770203, 36.641109, 40.557827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705463, 36.840935, 40.441727>,  <38.597565, 37.173973, 40.248226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705463, 36.840935, 40.441727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301507, 0.404087, 0.863602,
		-0.914512, -0.378806, -0.142034,
		0.269744, -0.832598, 0.483755,
		38.786388, 36.591156, 40.586853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304382, 37.301132, 40.888657>,  <38.597565, 37.173973, 40.248226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304382, 37.301132, 40.888657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478310, 36.941803, 40.913769>,  <38.582668, 36.726204, 40.928837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478310, 36.941803, 40.913769>,  <38.304382, 37.301132, 40.888657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478310, 36.941803, 40.913769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128935, 0.006889, 0.991629,
		-0.891238, -0.439277, -0.112830,
		0.434822, -0.898325, 0.062778,
		38.608757, 36.672306, 40.932602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895260, 36.836243, 41.295349>,  <38.304382, 37.301132, 40.888657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895260, 36.836243, 41.295349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231239, 36.621395, 41.326286>,  <38.432827, 36.492485, 41.344849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231239, 36.621395, 41.326286>,  <37.895260, 36.836243, 41.295349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231239, 36.621395, 41.326286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132875, -0.065386, 0.988974,
		-0.526143, -0.840966, -0.126291,
		0.839951, -0.537122, 0.077341,
		38.483223, 36.460258, 41.349487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649048, 36.272263, 41.717014>,  <37.895260, 36.836243, 41.295349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649048, 36.272263, 41.717014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047691, 36.303940, 41.707996>,  <38.286877, 36.322948, 41.702587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047691, 36.303940, 41.707996>,  <37.649048, 36.272263, 41.717014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047691, 36.303940, 41.707996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021610, 0.012632, 0.999687,
		0.079460, -0.996779, 0.010877,
		0.996604, 0.079200, -0.022544,
		38.346672, 36.327698, 41.701233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926456, 35.774872, 42.250679>,  <37.649048, 36.272263, 41.717014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926456, 35.774872, 42.250679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221268, 36.034538, 42.175453>,  <38.398155, 36.190338, 42.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.221268, 36.034538, 42.175453>,  <37.926456, 35.774872, 42.250679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221268, 36.034538, 42.175453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176090, 0.084201, 0.980766,
		0.652517, -0.755970, -0.052253,
		0.737031, 0.649168, -0.188062,
		38.442375, 36.229290, 42.119034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627029, 35.531891, 42.362297>,  <37.926456, 35.774872, 42.250679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627029, 35.531891, 42.362297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581249, 35.924683, 42.422451>,  <38.553783, 36.160358, 42.458542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581249, 35.924683, 42.422451>,  <38.627029, 35.531891, 42.362297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581249, 35.924683, 42.422451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097433, -0.161745, 0.982011,
		0.988640, 0.097735, 0.114188,
		-0.114446, 0.981981, 0.150385,
		38.546917, 36.219276, 42.467567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125374, 35.912487, 42.801247>,  <38.627029, 35.531891, 42.362297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125374, 35.912487, 42.801247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851189, 36.199440, 42.851070>,  <38.686680, 36.371613, 42.880962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851189, 36.199440, 42.851070>,  <39.125374, 35.912487, 42.801247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851189, 36.199440, 42.851070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011260, -0.160603, 0.986955,
		0.728024, 0.677920, 0.102009,
		-0.685459, 0.717378, 0.124557,
		38.645550, 36.414654, 42.888439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357712, 36.386517, 43.356838>,  <39.125374, 35.912487, 42.801247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357712, 36.386517, 43.356838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962418, 36.440762, 43.328579>,  <38.725239, 36.473309, 43.311623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962418, 36.440762, 43.328579>,  <39.357712, 36.386517, 43.356838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962418, 36.440762, 43.328579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072101, -0.005818, 0.997380,
		0.134847, 0.990745, 0.015527,
		-0.988240, 0.135614, -0.070650,
		38.665947, 36.481445, 43.307384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189068, 36.742443, 44.002785>,  <39.357712, 36.386517, 43.356838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189068, 36.742443, 44.002785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818966, 36.652897, 43.880280>,  <38.596905, 36.599167, 43.806778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818966, 36.652897, 43.880280>,  <39.189068, 36.742443, 44.002785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818966, 36.652897, 43.880280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297792, -0.071523, 0.951948,
		-0.235015, 0.971992, -0.000489,
		-0.925250, -0.223868, -0.306260,
		38.541389, 36.585735, 43.788403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725315, 37.281342, 44.196571>,  <39.189068, 36.742443, 44.002785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725315, 37.281342, 44.196571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513943, 36.943665, 44.160568>,  <38.387119, 36.741058, 44.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513943, 36.943665, 44.160568>,  <38.725315, 37.281342, 44.196571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513943, 36.943665, 44.160568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253214, 0.055527, 0.965815,
		-0.810334, 0.533160, -0.243103,
		-0.528433, -0.844190, -0.090008,
		38.355412, 36.690407, 44.133568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958549, 37.436646, 44.335869>,  <38.725315, 37.281342, 44.196571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958549, 37.436646, 44.335869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040211, 37.054119, 44.419563>,  <38.089207, 36.824604, 44.469780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040211, 37.054119, 44.419563>,  <37.958549, 37.436646, 44.335869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040211, 37.054119, 44.419563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461539, 0.094468, 0.882076,
		-0.863310, -0.276650, -0.422091,
		0.204152, -0.956316, 0.209240,
		38.101456, 36.767223, 44.482334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327454, 37.193985, 44.730457>,  <37.958549, 37.436646, 44.335869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327454, 37.193985, 44.730457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612144, 36.914871, 44.762821>,  <37.782959, 36.747402, 44.782238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612144, 36.914871, 44.762821>,  <37.327454, 37.193985, 44.730457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612144, 36.914871, 44.762821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297882, -0.195496, 0.934370,
		-0.636174, -0.689113, -0.346997,
		0.711723, -0.697786, 0.080905,
		37.825661, 36.705536, 44.787094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027161, 36.574711, 45.042225>,  <37.327454, 37.193985, 44.730457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027161, 36.574711, 45.042225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422188, 36.570084, 45.104923>,  <37.659206, 36.567307, 45.142544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422188, 36.570084, 45.104923>,  <37.027161, 36.574711, 45.042225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422188, 36.570084, 45.104923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156655, -0.153454, 0.975659,
		0.012766, -0.988088, -0.153360,
		0.987571, -0.011570, 0.156747,
		37.718460, 36.566612, 45.151947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304295, 35.907650, 45.162548>,  <37.027161, 36.574711, 45.042225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304295, 35.907650, 45.162548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508739, 36.202396, 45.339539>,  <37.631409, 36.379246, 45.445732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508739, 36.202396, 45.339539>,  <37.304295, 35.907650, 45.162548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508739, 36.202396, 45.339539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040346, -0.534801, 0.844014,
		0.858565, -0.413536, -0.303075,
		0.511115, 0.736869, 0.442477,
		37.662075, 36.423458, 45.472282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879955, 35.574539, 45.507469>,  <37.304295, 35.907650, 45.162548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879955, 35.574539, 45.507469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730759, 35.918030, 45.648018>,  <37.641239, 36.124126, 45.732346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730759, 35.918030, 45.648018>,  <37.879955, 35.574539, 45.507469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730759, 35.918030, 45.648018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251320, -0.458046, 0.852662,
		0.893150, 0.229729, 0.386663,
		-0.372990, 0.858731, 0.351368,
		37.618862, 36.175648, 45.753429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543232, 35.714390, 45.113388>,  <37.879955, 35.574539, 45.507469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543232, 35.714390, 45.113388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233231, 35.913425, 44.957554>,  <38.047230, 36.032848, 44.864056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233231, 35.913425, 44.957554>,  <38.543232, 35.714390, 45.113388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233231, 35.913425, 44.957554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415307, -0.063632, -0.907453,
		-0.476331, -0.865074, -0.157339,
		-0.775002, 0.497592, -0.389581,
		38.000729, 36.062702, 44.840679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901367, 35.385029, 44.537292>,  <38.543232, 35.714390, 45.113388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901367, 35.385029, 44.537292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968506, 35.776764, 44.492184>,  <38.008789, 36.011806, 44.465118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968506, 35.776764, 44.492184>,  <37.901367, 35.385029, 44.537292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968506, 35.776764, 44.492184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046505, -0.122132, -0.991424,
		-0.984716, 0.161162, -0.066043,
		0.167845, 0.979342, -0.112770,
		38.018860, 36.070568, 44.458351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662674, 35.565956, 43.939423>,  <37.901367, 35.385029, 44.537292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662674, 35.565956, 43.939423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870880, 35.901371, 44.003830>,  <37.995804, 36.102619, 44.042477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870880, 35.901371, 44.003830>,  <37.662674, 35.565956, 43.939423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870880, 35.901371, 44.003830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055619, 0.154885, -0.986366,
		-0.852041, 0.522371, 0.033981,
		0.520512, 0.838534, 0.161022,
		38.027035, 36.152931, 44.052135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381786, 36.095879, 43.568592>,  <37.662674, 35.565956, 43.939423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381786, 36.095879, 43.568592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756130, 36.222168, 43.631168>,  <37.980736, 36.297943, 43.668716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756130, 36.222168, 43.631168>,  <37.381786, 36.095879, 43.568592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756130, 36.222168, 43.631168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082488, 0.235343, -0.968406,
		-0.342570, 0.919201, 0.194205,
		0.935864, 0.315727, 0.156444,
		38.036888, 36.316887, 43.678101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423820, 36.534599, 43.145668>,  <37.381786, 36.095879, 43.568592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423820, 36.534599, 43.145668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816807, 36.510204, 43.216152>,  <38.052597, 36.495567, 43.258442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816807, 36.510204, 43.216152>,  <37.423820, 36.534599, 43.145668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816807, 36.510204, 43.216152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185715, 0.235531, -0.953958,
		0.016679, 0.969951, 0.242727,
		0.982462, -0.060989, 0.176206,
		38.111546, 36.491909, 43.269012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638252, 37.062897, 42.740128>,  <37.423820, 36.534599, 43.145668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638252, 37.062897, 42.740128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941715, 36.813671, 42.816265>,  <38.123795, 36.664135, 42.861946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941715, 36.813671, 42.816265>,  <37.638252, 37.062897, 42.740128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941715, 36.813671, 42.816265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444259, 0.281061, -0.850670,
		0.476523, 0.729929, 0.490030,
		0.758657, -0.623064, 0.190345,
		38.169312, 36.626751, 42.873367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256287, 37.478462, 42.668987>,  <37.638252, 37.062897, 42.740128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256287, 37.478462, 42.668987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326763, 37.087746, 42.620266>,  <38.369049, 36.853317, 42.591034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326763, 37.087746, 42.620266>,  <38.256287, 37.478462, 42.668987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326763, 37.087746, 42.620266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392916, 0.183243, -0.901132,
		0.902538, 0.110913, 0.416082,
		0.176192, -0.976791, -0.121804,
		38.379620, 36.794708, 42.583725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750957, 37.405159, 42.125118>,  <38.256287, 37.478462, 42.668987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750957, 37.405159, 42.125118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804699, 37.032444, 42.260014>,  <38.836945, 36.808815, 42.340950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.804699, 37.032444, 42.260014>,  <38.750957, 37.405159, 42.125118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804699, 37.032444, 42.260014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100017, -0.325835, -0.940122,
		0.985873, 0.160037, 0.049417,
		0.134352, -0.931783, 0.337238,
		38.845005, 36.752911, 42.361183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402981, 37.086971, 41.963158>,  <38.750957, 37.405159, 42.125118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402981, 37.086971, 41.963158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102283, 36.825169, 41.995422>,  <38.921864, 36.668087, 42.014782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102283, 36.825169, 41.995422>,  <39.402981, 37.086971, 41.963158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102283, 36.825169, 41.995422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136956, -0.274603, -0.951754,
		0.645079, -0.704426, 0.296070,
		-0.751742, -0.654505, 0.080665,
		38.876762, 36.628819, 42.019623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643089, 36.436352, 41.714748>,  <39.402981, 37.086971, 41.963158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643089, 36.436352, 41.714748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243317, 36.429737, 41.702976>,  <39.003452, 36.425766, 41.695911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243317, 36.429737, 41.702976>,  <39.643089, 36.436352, 41.714748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243317, 36.429737, 41.702976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033649, -0.417586, -0.908014,
		0.002728, -0.908487, 0.417904,
		-0.999430, -0.016539, -0.029430,
		38.943489, 36.424774, 41.694145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.426888, 35.791073, 41.429501>,  <39.643089, 36.436352, 41.714748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.426888, 35.791073, 41.429501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153072, 36.070469, 41.346050>,  <38.988785, 36.238106, 41.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.153072, 36.070469, 41.346050>,  <39.426888, 35.791073, 41.429501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153072, 36.070469, 41.346050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007664, -0.279274, -0.960181,
		-0.728939, -0.658877, 0.185820,
		-0.684536, 0.698489, -0.208624,
		38.947712, 36.280014, 41.283463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241135, 35.576122, 40.864197>,  <39.426888, 35.791073, 41.429501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241135, 35.576122, 40.864197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035118, 35.918736, 40.877419>,  <38.911510, 36.124302, 40.885353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035118, 35.918736, 40.877419>,  <39.241135, 35.576122, 40.864197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035118, 35.918736, 40.877419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139316, -0.045597, -0.989198,
		-0.845771, -0.514079, 0.142812,
		-0.515037, 0.856530, 0.033055,
		38.880608, 36.175694, 40.887337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689575, 35.425262, 40.557732>,  <39.241135, 35.576122, 40.864197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689575, 35.425262, 40.557732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650291, 35.821072, 40.515396>,  <38.626720, 36.058556, 40.489994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.650291, 35.821072, 40.515396>,  <38.689575, 35.425262, 40.557732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650291, 35.821072, 40.515396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157388, -0.120458, -0.980163,
		-0.982642, -0.079602, 0.167569,
		-0.098208, 0.989522, -0.105838,
		38.620831, 36.117928, 40.483646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132183, 35.552719, 40.055656>,  <38.689575, 35.425262, 40.557732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132183, 35.552719, 40.055656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345406, 35.891060, 40.063461>,  <38.473339, 36.094067, 40.068142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.345406, 35.891060, 40.063461>,  <38.132183, 35.552719, 40.055656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345406, 35.891060, 40.063461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011716, 0.015675, -0.999808,
		-0.845997, 0.533185, -0.001555,
		0.533058, 0.845854, 0.019508,
		38.505322, 36.144817, 40.069313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868240, 36.154507, 39.602112>,  <38.132183, 35.552719, 40.055656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868240, 36.154507, 39.602112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263077, 36.189659, 39.655674>,  <38.499977, 36.210751, 39.687813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.263077, 36.189659, 39.655674>,  <37.868240, 36.154507, 39.602112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263077, 36.189659, 39.655674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145108, -0.136715, -0.979925,
		-0.067810, 0.986704, -0.147703,
		0.987089, 0.087881, 0.133909,
		38.559204, 36.216022, 39.695847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073090, 36.661392, 39.082943>,  <37.868240, 36.154507, 39.602112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073090, 36.661392, 39.082943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401974, 36.464767, 39.197720>,  <38.599304, 36.346794, 39.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401974, 36.464767, 39.197720>,  <38.073090, 36.661392, 39.082943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401974, 36.464767, 39.197720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366440, 0.071388, -0.927699,
		0.435535, 0.867913, 0.238823,
		0.822211, -0.491560, 0.286946,
		38.648636, 36.317299, 39.283802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613701, 37.076931, 38.749504>,  <38.073090, 36.661392, 39.082943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613701, 37.076931, 38.749504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758274, 36.717838, 38.850254>,  <38.845016, 36.502380, 38.910702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758274, 36.717838, 38.850254>,  <38.613701, 37.076931, 38.749504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758274, 36.717838, 38.850254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438659, -0.074651, -0.895548,
		0.822767, 0.434165, 0.366818,
		0.361432, -0.897735, 0.251870,
		38.866703, 36.448517, 38.925816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219688, 37.041740, 38.293922>,  <38.613701, 37.076931, 38.749504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219688, 37.041740, 38.293922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191761, 36.662807, 38.418945>,  <39.175007, 36.435448, 38.493958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191761, 36.662807, 38.418945>,  <39.219688, 37.041740, 38.293922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191761, 36.662807, 38.418945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556807, -0.296975, -0.775739,
		0.827703, 0.119874, 0.548214,
		-0.069815, -0.947331, 0.312554,
		39.170815, 36.378609, 38.512711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846218, 36.837086, 38.194912>,  <39.219688, 37.041740, 38.293922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846218, 36.837086, 38.194912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618183, 36.509457, 38.220596>,  <39.481361, 36.312878, 38.236008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618183, 36.509457, 38.220596>,  <39.846218, 36.837086, 38.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618183, 36.509457, 38.220596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364751, -0.322349, -0.873526,
		0.736180, -0.474562, 0.482524,
		-0.570084, -0.819074, 0.064210,
		39.447159, 36.263733, 38.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277279, 36.249992, 38.008240>,  <39.846218, 36.837086, 38.194912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277279, 36.249992, 38.008240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899475, 36.137886, 37.939709>,  <39.672794, 36.070621, 37.898590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899475, 36.137886, 37.939709>,  <40.277279, 36.249992, 38.008240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899475, 36.137886, 37.939709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218221, -0.145504, -0.964991,
		0.245528, -0.948830, 0.198590,
		-0.944508, -0.280269, -0.171329,
		39.616123, 36.053806, 37.888309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418880, 35.737190, 37.573116>,  <40.277279, 36.249992, 38.008240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418880, 35.737190, 37.573116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028679, 35.806129, 37.518421>,  <39.794559, 35.847492, 37.485603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028679, 35.806129, 37.518421>,  <40.418880, 35.737190, 37.573116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028679, 35.806129, 37.518421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070249, -0.344968, -0.935982,
		-0.208479, -0.922657, 0.324410,
		-0.975501, 0.172343, -0.136734,
		39.736031, 35.857834, 37.477402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236504, 35.258755, 37.104450>,  <40.418880, 35.737190, 37.573116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236504, 35.258755, 37.104450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924725, 35.507538, 37.074451>,  <39.737656, 35.656807, 37.056454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924725, 35.507538, 37.074451>,  <40.236504, 35.258755, 37.104450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924725, 35.507538, 37.074451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217461, -0.380887, -0.898686,
		-0.587512, -0.684171, 0.432133,
		-0.779448, 0.621961, -0.074995,
		39.690891, 35.694126, 37.051952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783745, 34.954456, 37.338009>,  <40.236504, 35.258755, 37.104450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783745, 34.954456, 37.338009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718620, 34.982235, 37.731693>,  <40.679546, 34.998901, 37.967903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718620, 34.982235, 37.731693>,  <40.783745, 34.954456, 37.338009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718620, 34.982235, 37.731693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517056, -0.855582, -0.025157,
		0.840325, -0.512988, 0.175205,
		-0.162807, 0.069451, 0.984211,
		40.669777, 35.003071, 38.026955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.141315, 35.031456, 36.728565>,  <40.783745, 34.954456, 37.338009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.141315, 35.031456, 36.728565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789040, 34.891739, 36.856552>,  <40.577675, 34.807907, 36.933346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.789040, 34.891739, 36.856552>,  <41.141315, 35.031456, 36.728565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789040, 34.891739, 36.856552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412396, 0.233050, -0.880691,
		0.233050, -0.907570, -0.349291,
		0.880691, 0.349291, -0.319966,
		40.524834, 34.786953, 36.952541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.859074, 35.160950, 36.831230>,  <41.141315, 35.031456, 36.728565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.859074, 35.160950, 36.831230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226570, 35.284775, 36.929287>,  <42.447067, 35.359070, 36.988121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226570, 35.284775, 36.929287>,  <41.859074, 35.160950, 36.831230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226570, 35.284775, 36.929287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346935, -0.336361, -0.875498,
		-0.188568, 0.889399, -0.416426,
		0.918737, 0.309564, 0.245137,
		42.502190, 35.377644, 37.002827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082146, 35.742512, 36.454044>,  <41.859074, 35.160950, 36.831230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.082146, 35.742512, 36.454044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339149, 35.459290, 36.571239>,  <42.493351, 35.289356, 36.641556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.339149, 35.459290, 36.571239>,  <42.082146, 35.742512, 36.454044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.339149, 35.459290, 36.571239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021734, -0.399035, -0.916678,
		0.765972, 0.582604, -0.271772,
		0.642507, -0.708056, 0.292987,
		42.531902, 35.246872, 36.659134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212563, 35.230560, 35.925255>,  <42.082146, 35.742512, 36.454044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212563, 35.230560, 35.925255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498470, 35.105980, 36.175728>,  <42.670013, 35.031231, 36.326012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498470, 35.105980, 36.175728>,  <42.212563, 35.230560, 35.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498470, 35.105980, 36.175728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375075, -0.584996, -0.719095,
		0.590279, 0.748851, -0.301318,
		0.714765, -0.311450, 0.626186,
		42.712898, 35.012547, 36.363583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822460, 35.392052, 35.594536>,  <42.212563, 35.230560, 35.925255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822460, 35.392052, 35.594536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858021, 35.070557, 35.829857>,  <42.879356, 34.877659, 35.971050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.858021, 35.070557, 35.829857>,  <42.822460, 35.392052, 35.594536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858021, 35.070557, 35.829857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140437, -0.574631, -0.806273,
		0.986090, 0.154299, 0.061789,
		0.088901, -0.803736, 0.588307,
		42.884689, 34.829437, 36.006348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380371, 35.081299, 35.355556>,  <42.822460, 35.392052, 35.594536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380371, 35.081299, 35.355556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133324, 34.831276, 35.546494>,  <42.985096, 34.681263, 35.661057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.133324, 34.831276, 35.546494>,  <43.380371, 35.081299, 35.355556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.133324, 34.831276, 35.546494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186204, -0.705885, -0.683414,
		0.764121, -0.333204, 0.552353,
		-0.617614, -0.625061, 0.477338,
		42.948040, 34.643757, 35.689693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674156, 34.312729, 35.445854>,  <43.380371, 35.081299, 35.355556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674156, 34.312729, 35.445854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274658, 34.296734, 35.433735>,  <43.034962, 34.287136, 35.426464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274658, 34.296734, 35.433735>,  <43.674156, 34.312729, 35.445854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274658, 34.296734, 35.433735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049997, -0.743384, -0.666994,
		0.004150, -0.667668, 0.744447,
		-0.998741, -0.039988, -0.030296,
		42.975037, 34.284737, 35.424644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475586, 33.716621, 35.761051>,  <43.674156, 34.312729, 35.445854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475586, 33.716621, 35.761051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253380, 33.848793, 35.455841>,  <43.120056, 33.928097, 35.272713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.253380, 33.848793, 35.455841>,  <43.475586, 33.716621, 35.761051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253380, 33.848793, 35.455841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384032, -0.711956, -0.587909,
		-0.737509, -0.619622, 0.268607,
		-0.555518, 0.330434, -0.763029,
		43.086723, 33.947922, 35.226933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113621, 33.933857, 36.106857>,  <43.475586, 33.716621, 35.761051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113621, 33.933857, 36.106857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952278, 33.581665, 36.007206>,  <43.855473, 33.370350, 35.947414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.952278, 33.581665, 36.007206>,  <44.113621, 33.933857, 36.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.952278, 33.581665, 36.007206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884050, -0.304712, -0.354410,
		0.236136, -0.363198, 0.901292,
		-0.403355, -0.880476, -0.249131,
		43.831272, 33.317524, 35.932468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.593990, 33.257969, 36.287407>,  <44.113621, 33.933857, 36.106857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.593990, 33.257969, 36.287407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339226, 33.140102, 36.002449>,  <44.186367, 33.069382, 35.831474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339226, 33.140102, 36.002449>,  <44.593990, 33.257969, 36.287407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339226, 33.140102, 36.002449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674720, -0.660093, -0.330198,
		-0.372950, -0.690977, 0.619241,
		-0.636915, -0.294667, -0.712397,
		44.148151, 33.051701, 35.788731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543064, 32.460518, 36.271568>,  <44.593990, 33.257969, 36.287407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543064, 32.460518, 36.271568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511322, 32.671597, 35.933281>,  <44.492279, 32.798244, 35.730309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511322, 32.671597, 35.933281>,  <44.543064, 32.460518, 36.271568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511322, 32.671597, 35.933281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953827, -0.206351, -0.218249,
		-0.289684, -0.823988, -0.486957,
		-0.079351, 0.527696, -0.845719,
		44.487518, 32.829906, 35.679565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146740, 32.163334, 35.999783>,  <44.543064, 32.460518, 36.271568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146740, 32.163334, 35.999783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423729, 31.948307, 35.807320>,  <45.589920, 31.819292, 35.691841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423729, 31.948307, 35.807320>,  <45.146740, 32.163334, 35.999783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423729, 31.948307, 35.807320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115977, 0.575308, -0.809673,
		0.712063, 0.616477, 0.336039,
		0.692470, -0.537566, -0.481153,
		45.631470, 31.787037, 35.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473644, 32.634521, 35.416527>,  <45.146740, 32.163334, 35.999783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473644, 32.634521, 35.416527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593815, 32.269173, 35.306622>,  <45.665916, 32.049965, 35.240677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.593815, 32.269173, 35.306622>,  <45.473644, 32.634521, 35.416527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593815, 32.269173, 35.306622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096191, 0.315621, -0.943997,
		0.948941, 0.257174, 0.182680,
		0.300429, -0.913370, -0.274768,
		45.683945, 31.995161, 35.224190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.777863, 33.229053, 35.843777>,  <45.473644, 32.634521, 35.416527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.777863, 33.229053, 35.843777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072495, 33.285858, 36.108284>,  <46.249275, 33.319942, 36.266991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.072495, 33.285858, 36.108284>,  <45.777863, 33.229053, 35.843777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.072495, 33.285858, 36.108284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346706, 0.760196, -0.549451,
		-0.580728, 0.633982, 0.510707,
		0.736580, 0.142016, 0.661273,
		46.293468, 33.328465, 36.306667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.919090, 33.983601, 36.212505>,  <45.777863, 33.229053, 35.843777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.919090, 33.983601, 36.212505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268181, 33.788330, 36.209930>,  <46.477634, 33.671169, 36.208385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.268181, 33.788330, 36.209930>,  <45.919090, 33.983601, 36.212505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268181, 33.788330, 36.209930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444680, 0.800274, -0.402271,
		0.201530, 0.348208, 0.915498,
		0.872723, -0.488173, -0.006438,
		46.529999, 33.641876, 36.208000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441647, 34.343777, 36.703766>,  <45.919090, 33.983601, 36.212505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441647, 34.343777, 36.703766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598164, 34.166191, 36.381329>,  <46.692074, 34.059639, 36.187866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.598164, 34.166191, 36.381329>,  <46.441647, 34.343777, 36.703766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598164, 34.166191, 36.381329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398557, 0.871278, -0.286402,
		0.829481, -0.209204, 0.517875,
		0.391297, -0.443968, -0.806089,
		46.715553, 34.033001, 36.139503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.158829, 34.401669, 36.544064>,  <46.441647, 34.343777, 36.703766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.158829, 34.401669, 36.544064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988277, 34.380939, 36.182838>,  <46.885948, 34.368504, 35.966103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.988277, 34.380939, 36.182838>,  <47.158829, 34.401669, 36.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.988277, 34.380939, 36.182838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666906, 0.656465, -0.352547,
		0.611096, -0.752575, -0.245344,
		-0.426378, -0.051818, -0.903060,
		46.860363, 34.365395, 35.911919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.471291, 34.862301, 36.143887>,  <47.158829, 34.401669, 36.544064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.471291, 34.862301, 36.143887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202702, 34.753254, 35.868263>,  <47.041550, 34.687828, 35.702888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.202702, 34.753254, 35.868263>,  <47.471291, 34.862301, 36.143887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.202702, 34.753254, 35.868263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364017, 0.688598, -0.627155,
		0.645456, -0.671949, -0.363140,
		-0.671474, -0.272612, -0.689061,
		47.001259, 34.671471, 35.661545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774380, 34.651360, 35.474907>,  <47.471291, 34.862301, 36.143887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774380, 34.651360, 35.474907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411446, 34.789845, 35.379517>,  <47.193684, 34.872936, 35.322281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.411446, 34.789845, 35.379517>,  <47.774380, 34.651360, 35.474907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.411446, 34.789845, 35.379517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420317, 0.735821, -0.530943,
		-0.008344, -0.581981, -0.813159,
		-0.907338, 0.346215, -0.238477,
		47.139244, 34.893707, 35.307972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.771221, 34.754406, 34.828781>,  <47.774380, 34.651360, 35.474907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.771221, 34.754406, 34.828781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.517075, 35.013058, 34.997627>,  <47.364586, 35.168247, 35.098934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.517075, 35.013058, 34.997627>,  <47.771221, 34.754406, 34.828781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.517075, 35.013058, 34.997627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510968, 0.761897, -0.398027,
		-0.578982, -0.037208, -0.814491,
		-0.635368, 0.646629, 0.422112,
		47.326466, 35.207047, 35.124260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.541412, 31.430456, 27.765295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157837, 31.467340, 27.658010>,  <37.927692, 31.489471, 27.593639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157837, 31.467340, 27.658010>,  <38.541412, 31.430456, 27.765295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157837, 31.467340, 27.658010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251566, 0.160164, 0.954496,
		0.130972, 0.982774, -0.130390,
		-0.958937, 0.092210, -0.268210,
		37.870155, 31.495003, 27.577547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323463, 31.933100, 28.169720>,  <38.541412, 31.430456, 27.765295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323463, 31.933100, 28.169720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958221, 31.807068, 28.066212>,  <37.739075, 31.731449, 28.004107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958221, 31.807068, 28.066212>,  <38.323463, 31.933100, 28.169720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958221, 31.807068, 28.066212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334881, 0.217528, 0.916808,
		-0.232579, 0.923800, -0.304140,
		-0.913105, -0.315081, -0.258771,
		37.684288, 31.712543, 27.988581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770081, 32.436668, 28.289883>,  <38.323463, 31.933100, 28.169720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770081, 32.436668, 28.289883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566029, 32.092628, 28.289183>,  <37.443600, 31.886206, 28.288763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566029, 32.092628, 28.289183>,  <37.770081, 32.436668, 28.289883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566029, 32.092628, 28.289183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218693, 0.127740, 0.967396,
		-0.831832, 0.493877, -0.253261,
		-0.510127, -0.860098, -0.001750,
		37.412991, 31.834599, 28.288658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098152, 32.565224, 28.524527>,  <37.770081, 32.436668, 28.289883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098152, 32.565224, 28.524527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 32.172359, 28.589373>,  <37.159115, 31.936640, 28.628281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136253, 32.172359, 28.589373>,  <37.098152, 32.565224, 28.524527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136253, 32.172359, 28.589373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420014, 0.107995, 0.901069,
		-0.902505, -0.153917, -0.402236,
		0.095251, -0.982164, 0.162113,
		37.164829, 31.877710, 28.638006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437393, 32.294975, 28.641613>,  <37.098152, 32.565224, 28.524527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437393, 32.294975, 28.641613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685528, 32.032291, 28.813154>,  <36.834408, 31.874681, 28.916079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.685528, 32.032291, 28.813154>,  <36.437393, 32.294975, 28.641613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685528, 32.032291, 28.813154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417856, 0.186011, 0.889267,
		-0.663763, -0.730842, -0.159022,
		0.620334, -0.656711, 0.428854,
		36.871628, 31.835278, 28.941811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119373, 32.057667, 29.239628>,  <36.437393, 32.294975, 28.641613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119373, 32.057667, 29.239628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 31.880777, 29.318140>,  <36.679474, 31.774643, 29.365248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.469437, 31.880777, 29.318140>,  <36.119373, 32.057667, 29.239628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469437, 31.880777, 29.318140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183498, 0.071995, 0.980380,
		-0.447682, -0.894009, -0.018141,
		0.875162, -0.442228, 0.196280,
		36.731987, 31.748110, 29.377024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031116, 31.502176, 29.751852>,  <36.119373, 32.057667, 29.239628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031116, 31.502176, 29.751852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405769, 31.631084, 29.806782>,  <36.630562, 31.708429, 29.839739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405769, 31.631084, 29.806782>,  <36.031116, 31.502176, 29.751852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405769, 31.631084, 29.806782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160545, 0.046478, 0.985934,
		0.311355, -0.945506, 0.095272,
		0.936634, 0.322271, 0.137325,
		36.686760, 31.727766, 29.847979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308014, 31.070221, 30.387741>,  <36.031116, 31.502176, 29.751852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308014, 31.070221, 30.387741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517529, 31.404686, 30.322647>,  <36.643238, 31.605366, 30.283590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.517529, 31.404686, 30.322647>,  <36.308014, 31.070221, 30.387741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517529, 31.404686, 30.322647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138088, 0.105168, 0.984821,
		0.840585, -0.538303, -0.060379,
		0.523782, 0.836163, -0.162737,
		36.674664, 31.655535, 30.273827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845848, 31.086813, 30.948483>,  <36.308014, 31.070221, 30.387741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845848, 31.086813, 30.948483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865341, 31.461603, 30.810091>,  <36.877037, 31.686478, 30.727057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865341, 31.461603, 30.810091>,  <36.845848, 31.086813, 30.948483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865341, 31.461603, 30.810091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226141, 0.327045, 0.917552,
		0.972875, -0.122958, -0.195949,
		0.048736, 0.936976, -0.345979,
		36.879963, 31.742695, 30.706297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412079, 31.379807, 31.338820>,  <36.845848, 31.086813, 30.948483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412079, 31.379807, 31.338820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198780, 31.690331, 31.204365>,  <37.070801, 31.876644, 31.123692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198780, 31.690331, 31.204365>,  <37.412079, 31.379807, 31.338820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198780, 31.690331, 31.204365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070254, 0.436611, 0.896903,
		0.843035, 0.454659, -0.287362,
		-0.533250, 0.776309, -0.336137,
		37.038807, 31.923223, 31.103523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654221, 31.982256, 31.497101>,  <37.412079, 31.379807, 31.338820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654221, 31.982256, 31.497101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273426, 32.102047, 31.471697>,  <37.044949, 32.173920, 31.456455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.273426, 32.102047, 31.471697>,  <37.654221, 31.982256, 31.497101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273426, 32.102047, 31.471697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099799, 0.499715, 0.860421,
		0.289412, 0.812773, -0.505610,
		-0.951988, 0.299476, -0.063509,
		36.987831, 32.191891, 31.452644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576199, 32.711536, 31.682312>,  <37.654221, 31.982256, 31.497101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576199, 32.711536, 31.682312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190899, 32.612663, 31.724350>,  <36.959717, 32.553341, 31.749573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190899, 32.612663, 31.724350>,  <37.576199, 32.711536, 31.682312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190899, 32.612663, 31.724350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043018, 0.528198, 0.848031,
		-0.265126, 0.812348, -0.519422,
		-0.963254, -0.247179, 0.105094,
		36.901924, 32.538509, 31.755878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209156, 33.390835, 31.846851>,  <37.576199, 32.711536, 31.682312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209156, 33.390835, 31.846851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986538, 33.087440, 31.982468>,  <36.852966, 32.905403, 32.063839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.986538, 33.087440, 31.982468>,  <37.209156, 33.390835, 31.846851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986538, 33.087440, 31.982468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159192, 0.497877, 0.852512,
		-0.815422, 0.420490, -0.397837,
		-0.556547, -0.758490, 0.339041,
		36.819572, 32.859894, 32.084179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778625, 33.778046, 32.355190>,  <37.209156, 33.390835, 31.846851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778625, 33.778046, 32.355190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686520, 33.396137, 32.430443>,  <36.631256, 33.166992, 32.475594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686520, 33.396137, 32.430443>,  <36.778625, 33.778046, 32.355190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686520, 33.396137, 32.430443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141352, 0.224089, 0.964263,
		-0.962807, 0.195445, -0.186558,
		-0.230266, -0.954770, 0.188128,
		36.617439, 33.109707, 32.486881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067142, 33.732609, 32.758690>,  <36.778625, 33.778046, 32.355190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067142, 33.732609, 32.758690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293800, 33.412853, 32.838581>,  <36.429794, 33.221001, 32.886517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.293800, 33.412853, 32.838581>,  <36.067142, 33.732609, 32.758690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293800, 33.412853, 32.838581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202466, 0.099879, 0.974183,
		-0.798697, -0.592456, -0.105252,
		0.566648, -0.799387, 0.199725,
		36.463795, 33.173038, 32.898499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673164, 33.276852, 33.264938>,  <36.067142, 33.732609, 32.758690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673164, 33.276852, 33.264938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050064, 33.145645, 33.291965>,  <36.276203, 33.066921, 33.308182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050064, 33.145645, 33.291965>,  <35.673164, 33.276852, 33.264938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050064, 33.145645, 33.291965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068686, 0.008191, 0.997605,
		-0.327787, -0.944636, -0.014812,
		0.942251, -0.328019, 0.067568,
		36.332741, 33.047237, 33.312237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716820, 32.844013, 33.801899>,  <35.673164, 33.276852, 33.264938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716820, 32.844013, 33.801899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102272, 32.945583, 33.768585>,  <36.333542, 33.006527, 33.748596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.102272, 32.945583, 33.768585>,  <35.716820, 32.844013, 33.801899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102272, 32.945583, 33.768585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038760, 0.175564, 0.983705,
		0.264415, -0.951155, 0.159336,
		0.963630, 0.253931, -0.083289,
		36.391361, 33.021763, 33.743599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062103, 32.514652, 34.392788>,  <35.716820, 32.844013, 33.801899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062103, 32.514652, 34.392788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315971, 32.798210, 34.269718>,  <36.468292, 32.968346, 34.195877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.315971, 32.798210, 34.269718>,  <36.062103, 32.514652, 34.392788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315971, 32.798210, 34.269718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357972, 0.083152, 0.930023,
		0.684873, -0.700394, -0.200990,
		0.634670, 0.708896, -0.307670,
		36.506371, 33.010880, 34.177418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672504, 32.286190, 34.462807>,  <36.062103, 32.514652, 34.392788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672504, 32.286190, 34.462807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711094, 32.683155, 34.493290>,  <36.734249, 32.921333, 34.511581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711094, 32.683155, 34.493290>,  <36.672504, 32.286190, 34.462807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711094, 32.683155, 34.493290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490385, -0.114021, 0.864015,
		0.866150, -0.045985, -0.497665,
		0.096476, 0.992414, 0.076209,
		36.740036, 32.980881, 34.516151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384598, 32.375507, 34.680531>,  <36.672504, 32.286190, 34.462807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384598, 32.375507, 34.680531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196373, 32.718513, 34.763702>,  <37.083439, 32.924316, 34.813606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196373, 32.718513, 34.763702>,  <37.384598, 32.375507, 34.680531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196373, 32.718513, 34.763702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557884, 0.106565, 0.823049,
		0.683619, 0.503299, -0.528540,
		-0.470564, 0.857516, 0.207933,
		37.055202, 32.975769, 34.826084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895248, 32.701687, 35.026249>,  <37.384598, 32.375507, 34.680531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895248, 32.701687, 35.026249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578190, 32.931152, 35.108829>,  <37.387955, 33.068832, 35.158379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.578190, 32.931152, 35.108829>,  <37.895248, 32.701687, 35.026249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578190, 32.931152, 35.108829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444894, 0.312693, 0.839221,
		0.416876, 0.757054, -0.503075,
		-0.792643, 0.573666, 0.206455,
		37.340397, 33.103252, 35.170765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205387, 33.242138, 35.397099>,  <37.895248, 32.701687, 35.026249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205387, 33.242138, 35.397099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817482, 33.278419, 35.487728>,  <37.584740, 33.300190, 35.542107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.817482, 33.278419, 35.487728>,  <38.205387, 33.242138, 35.397099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817482, 33.278419, 35.487728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243187, 0.437290, 0.865816,
		-0.020546, 0.894735, -0.446125,
		-0.969762, 0.090703, 0.226572,
		37.526554, 33.305630, 35.555698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847408, 33.495502, 35.689583>,  <38.205387, 33.242138, 35.397099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847408, 33.495502, 35.689583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231533, 33.581482, 35.760681>,  <39.462009, 33.633068, 35.803341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.231533, 33.581482, 35.760681>,  <38.847408, 33.495502, 35.689583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231533, 33.581482, 35.760681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263457, -0.489815, -0.831066,
		-0.091572, 0.844914, -0.527006,
		0.960315, 0.214946, 0.177746,
		39.519627, 33.645966, 35.814003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100468, 33.994781, 35.267807>,  <38.847408, 33.495502, 35.689583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100468, 33.994781, 35.267807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357925, 33.711163, 35.383022>,  <39.512402, 33.540989, 35.452152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.357925, 33.711163, 35.383022>,  <39.100468, 33.994781, 35.267807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357925, 33.711163, 35.383022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097198, -0.297578, -0.949737,
		0.759125, 0.639292, -0.122616,
		0.643647, -0.709051, 0.288037,
		39.551018, 33.498447, 35.469433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523109, 34.047997, 34.720871>,  <39.100468, 33.994781, 35.267807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523109, 34.047997, 34.720871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605236, 33.695953, 34.892105>,  <39.654514, 33.484730, 34.994846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.605236, 33.695953, 34.892105>,  <39.523109, 34.047997, 34.720871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605236, 33.695953, 34.892105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091022, -0.418337, -0.903720,
		0.974453, 0.224517, -0.005784,
		0.205320, -0.880106, 0.428086,
		39.666832, 33.431923, 35.020531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185368, 33.800919, 34.334583>,  <39.523109, 34.047997, 34.720871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185368, 33.800919, 34.334583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021049, 33.495018, 34.533138>,  <39.922459, 33.311478, 34.652271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.021049, 33.495018, 34.533138>,  <40.185368, 33.800919, 34.334583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021049, 33.495018, 34.533138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196028, -0.605796, -0.771093,
		0.890406, -0.219453, 0.398769,
		-0.410792, -0.764756, 0.496386,
		39.897812, 33.265591, 34.682053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689690, 33.128822, 34.414028>,  <40.185368, 33.800919, 34.334583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689690, 33.128822, 34.414028> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310318, 33.007938, 34.452297>,  <40.082695, 32.935410, 34.475258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.310318, 33.007938, 34.452297>,  <40.689690, 33.128822, 34.414028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310318, 33.007938, 34.452297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113547, -0.605674, -0.787570,
		0.295959, -0.736089, 0.608753,
		-0.948428, -0.302210, 0.095674,
		40.025791, 32.917274, 34.480999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722912, 32.405266, 34.478809>,  <40.689690, 33.128822, 34.414028>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722912, 32.405266, 34.478809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365765, 32.508125, 34.330944>,  <40.151474, 32.569839, 34.242226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.365765, 32.508125, 34.330944>,  <40.722912, 32.405266, 34.478809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365765, 32.508125, 34.330944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173671, -0.560766, -0.809555,
		-0.415472, -0.787030, 0.456034,
		-0.892873, 0.257148, -0.369667,
		40.097904, 32.585270, 34.220043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624683, 31.826212, 34.084469>,  <40.722912, 32.405266, 34.478809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624683, 31.826212, 34.084469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322575, 32.045410, 33.940651>,  <40.141312, 32.176929, 33.854359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.322575, 32.045410, 33.940651>,  <40.624683, 31.826212, 34.084469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322575, 32.045410, 33.940651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093516, -0.452860, -0.886664,
		-0.648710, -0.703292, 0.290784,
		-0.755268, 0.547995, -0.359544,
		40.095993, 32.209808, 33.832787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072273, 31.432003, 33.745987>,  <40.624683, 31.826212, 34.084469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072273, 31.432003, 33.745987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076984, 31.790049, 33.567715>,  <40.079811, 32.004875, 33.460751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076984, 31.790049, 33.567715>,  <40.072273, 31.432003, 33.745987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076984, 31.790049, 33.567715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059620, -0.445545, -0.893272,
		-0.998152, -0.016049, -0.058615,
		0.011780, 0.895116, -0.445678,
		40.080517, 32.058582, 33.434010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668526, 31.299187, 33.176643>,  <40.072273, 31.432003, 33.745987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668526, 31.299187, 33.176643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837883, 31.649794, 33.085030>,  <39.939499, 31.860157, 33.030060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837883, 31.649794, 33.085030>,  <39.668526, 31.299187, 33.176643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837883, 31.649794, 33.085030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043304, -0.232946, -0.971525,
		-0.904911, 0.421254, -0.060671,
		0.423392, 0.876517, -0.229037,
		39.964901, 31.912748, 33.016319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278702, 31.588404, 32.610855>,  <39.668526, 31.299187, 33.176643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278702, 31.588404, 32.610855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624435, 31.789019, 32.595959>,  <39.831875, 31.909388, 32.587021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.624435, 31.789019, 32.595959>,  <39.278702, 31.588404, 32.610855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624435, 31.789019, 32.595959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028385, -0.025289, -0.999277,
		-0.502116, 0.864767, -0.007622,
		0.864334, 0.501537, -0.037245,
		39.883736, 31.939480, 32.584785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204075, 32.186531, 32.193867>,  <39.278702, 31.588404, 32.610855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204075, 32.186531, 32.193867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596207, 32.107632, 32.196556>,  <39.831486, 32.060291, 32.198170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.596207, 32.107632, 32.196556>,  <39.204075, 32.186531, 32.193867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596207, 32.107632, 32.196556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009294, 0.012102, -0.999884,
		0.197144, 0.980279, 0.013698,
		0.980331, -0.197248, 0.006725,
		39.890305, 32.048458, 32.198574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396843, 32.525856, 31.673693>,  <39.204075, 32.186531, 32.193867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396843, 32.525856, 31.673693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699707, 32.271206, 31.732225>,  <39.881428, 32.118416, 31.767345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.699707, 32.271206, 31.732225>,  <39.396843, 32.525856, 31.673693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699707, 32.271206, 31.732225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196962, 0.008909, -0.980371,
		0.622824, 0.771123, 0.132136,
		0.757163, -0.636624, 0.146333,
		39.926857, 32.080219, 31.776125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912815, 32.749382, 31.311718>,  <39.396843, 32.525856, 31.673693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912815, 32.749382, 31.311718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988647, 32.360771, 31.368553>,  <40.034145, 32.127605, 31.402655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.988647, 32.360771, 31.368553>,  <39.912815, 32.749382, 31.311718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988647, 32.360771, 31.368553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196990, -0.104136, -0.974859,
		0.961902, 0.212803, 0.171640,
		0.189580, -0.971530, 0.142088,
		40.045521, 32.069313, 31.411180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446884, 32.492947, 30.786579>,  <39.912815, 32.749382, 31.311718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446884, 32.492947, 30.786579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304863, 32.138134, 30.904634>,  <40.219650, 31.925245, 30.975468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.304863, 32.138134, 30.904634>,  <40.446884, 32.492947, 30.786579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304863, 32.138134, 30.904634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209096, -0.383061, -0.899746,
		0.911163, -0.257743, 0.321482,
		-0.355050, -0.887036, 0.295137,
		40.198349, 31.872023, 30.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957855, 32.055702, 30.559862>,  <40.446884, 32.492947, 30.786579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957855, 32.055702, 30.559862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629253, 31.833561, 30.611582>,  <40.432095, 31.700275, 30.642614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629253, 31.833561, 30.611582>,  <40.957855, 32.055702, 30.559862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629253, 31.833561, 30.611582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232197, -0.532923, -0.813681,
		0.520788, -0.638417, 0.566749,
		-0.821501, -0.555353, 0.129301,
		40.382801, 31.666956, 30.650372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.198803, 31.330729, 30.578630>,  <40.957855, 32.055702, 30.559862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.198803, 31.330729, 30.578630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816734, 31.343990, 30.460958>,  <40.587494, 31.351948, 30.390354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.816734, 31.343990, 30.460958>,  <41.198803, 31.330729, 30.578630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816734, 31.343990, 30.460958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209672, -0.625758, -0.751309,
		-0.208995, -0.779313, 0.590756,
		-0.955175, 0.033155, -0.294180,
		40.530182, 31.353937, 30.372704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152859, 30.718277, 30.303328>,  <41.198803, 31.330729, 30.578630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152859, 30.718277, 30.303328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818935, 30.892992, 30.169279>,  <40.618580, 30.997822, 30.088850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.818935, 30.892992, 30.169279>,  <41.152859, 30.718277, 30.303328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818935, 30.892992, 30.169279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030032, -0.571682, -0.819925,
		-0.549712, -0.694550, 0.464131,
		-0.834814, 0.436784, -0.335119,
		40.568493, 31.024029, 30.068743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759209, 30.220884, 30.123005>,  <41.152859, 30.718277, 30.303328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759209, 30.220884, 30.123005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.589020, 30.513380, 29.909740>,  <40.486904, 30.688877, 29.781782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.589020, 30.513380, 29.909740>,  <40.759209, 30.220884, 30.123005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.589020, 30.513380, 29.909740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042316, -0.604581, -0.795419,
		-0.903980, -0.315870, 0.288177,
		-0.425476, 0.731237, -0.533163,
		40.461376, 30.732752, 29.749792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.355648, 30.094824, 29.011715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618378, 30.395250, 29.038498>,  <39.776016, 30.575506, 29.054567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.618378, 30.395250, 29.038498>,  <39.355648, 30.094824, 29.011715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618378, 30.395250, 29.038498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057039, 0.138033, -0.988784,
		-0.751884, 0.645637, 0.133503,
		0.656823, 0.751066, 0.066959,
		39.815426, 30.620569, 29.058586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131935, 30.693525, 28.497341>,  <39.355648, 30.094824, 29.011715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131935, 30.693525, 28.497341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517525, 30.768402, 28.572943>,  <39.748878, 30.813328, 28.618303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.517525, 30.768402, 28.572943>,  <39.131935, 30.693525, 28.497341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517525, 30.768402, 28.572943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145165, 0.225219, -0.963433,
		-0.222912, 0.956157, 0.189931,
		0.963969, 0.187190, 0.189005,
		39.806717, 30.824558, 28.629644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157398, 31.225399, 28.123785>,  <39.131935, 30.693525, 28.497341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157398, 31.225399, 28.123785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536633, 31.106581, 28.169226>,  <39.764172, 31.035290, 28.196489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536633, 31.106581, 28.169226>,  <39.157398, 31.225399, 28.123785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536633, 31.106581, 28.169226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173680, 0.184373, -0.967389,
		0.266415, 0.936894, 0.226392,
		0.948082, -0.297046, 0.113600,
		39.821056, 31.017467, 28.203306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650475, 31.673706, 27.834866>,  <39.157398, 31.225399, 28.123785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650475, 31.673706, 27.834866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896202, 31.360014, 27.869724>,  <40.043640, 31.171799, 27.890638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.896202, 31.360014, 27.869724>,  <39.650475, 31.673706, 27.834866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896202, 31.360014, 27.869724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261439, 0.098094, -0.960223,
		0.744488, 0.612666, 0.265290,
		0.614319, -0.784231, 0.087145,
		40.080498, 31.124744, 27.895868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220760, 31.855967, 27.593355>,  <39.650475, 31.673706, 27.834866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220760, 31.855967, 27.593355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213951, 31.456917, 27.566664>,  <40.209866, 31.217487, 27.550648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.213951, 31.456917, 27.566664>,  <40.220760, 31.855967, 27.593355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213951, 31.456917, 27.566664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308850, 0.058230, -0.949326,
		0.950958, -0.036767, 0.307126,
		-0.017020, -0.997626, -0.066729,
		40.208847, 31.157629, 27.546644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835098, 31.610350, 27.270378>,  <40.220760, 31.855967, 27.593355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835098, 31.610350, 27.270378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584919, 31.303135, 27.215336>,  <40.434811, 31.118807, 27.182310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.584919, 31.303135, 27.215336>,  <40.835098, 31.610350, 27.270378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.584919, 31.303135, 27.215336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372151, -0.138628, -0.917761,
		0.685798, -0.625223, 0.372530,
		-0.625448, -0.768036, -0.137607,
		40.397285, 31.072723, 27.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150379, 31.232294, 26.740904>,  <40.835098, 31.610350, 27.270378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150379, 31.232294, 26.740904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.790783, 31.058250, 26.720934>,  <40.575024, 30.953823, 26.708952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.790783, 31.058250, 26.720934>,  <41.150379, 31.232294, 26.740904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790783, 31.058250, 26.720934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147463, -0.193383, -0.969978,
		0.412393, -0.879365, 0.238012,
		-0.898992, -0.435110, -0.049924,
		40.521084, 30.927717, 26.705957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131161, 30.614763, 26.328669>,  <41.150379, 31.232294, 26.740904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131161, 30.614763, 26.328669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739799, 30.697430, 26.330557>,  <40.504982, 30.747030, 26.331690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.739799, 30.697430, 26.330557>,  <41.131161, 30.614763, 26.328669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739799, 30.697430, 26.330557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057633, -0.250766, -0.966331,
		-0.198519, -0.945731, 0.257261,
		-0.978401, 0.206661, 0.004723,
		40.446278, 30.759430, 26.331974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846031, 30.004915, 26.150171>,  <41.131161, 30.614763, 26.328669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846031, 30.004915, 26.150171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579102, 30.289270, 26.061342>,  <40.418941, 30.459883, 26.008045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.579102, 30.289270, 26.061342>,  <40.846031, 30.004915, 26.150171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579102, 30.289270, 26.061342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026727, -0.320845, -0.946755,
		-0.744285, -0.625859, 0.233108,
		-0.667327, 0.710886, -0.222072,
		40.378902, 30.502537, 25.994720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478592, 29.723854, 25.631296>,  <40.846031, 30.004915, 26.150171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478592, 29.723854, 25.631296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368553, 30.104700, 25.577932>,  <40.302528, 30.333208, 25.545914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.368553, 30.104700, 25.577932>,  <40.478592, 29.723854, 25.631296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368553, 30.104700, 25.577932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097698, -0.165729, -0.981320,
		-0.956439, -0.256929, 0.138611,
		-0.275101, 0.952114, -0.133409,
		40.286022, 30.390335, 25.537910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821404, 29.756372, 25.204998>,  <40.478592, 29.723854, 25.631296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821404, 29.756372, 25.204998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007141, 30.107229, 25.156002>,  <40.118584, 30.317743, 25.126604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.007141, 30.107229, 25.156002>,  <39.821404, 29.756372, 25.204998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007141, 30.107229, 25.156002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024147, -0.150793, -0.988270,
		-0.885323, 0.455944, -0.091200,
		0.464348, 0.877141, -0.122491,
		40.146446, 30.370371, 25.119255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499996, 30.144930, 24.734501>,  <39.821404, 29.756372, 25.204998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499996, 30.144930, 24.734501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856499, 30.326298, 24.731237>,  <40.070400, 30.435118, 24.729279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.856499, 30.326298, 24.731237>,  <39.499996, 30.144930, 24.734501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856499, 30.326298, 24.731237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007396, -0.003459, -0.999967,
		-0.453430, 0.891292, 0.000271,
		0.891261, 0.453417, -0.008161,
		40.123878, 30.462322, 24.728788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434444, 30.791533, 24.311796>,  <39.499996, 30.144930, 24.734501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434444, 30.791533, 24.311796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819397, 30.684950, 24.333031>,  <40.050369, 30.621000, 24.345772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.819397, 30.684950, 24.333031>,  <39.434444, 30.791533, 24.311796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819397, 30.684950, 24.333031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108796, 0.198908, -0.973960,
		0.248958, 0.943100, 0.220416,
		0.962384, -0.266456, 0.053085,
		40.108112, 30.605013, 24.348957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730461, 31.171602, 23.861755>,  <39.434444, 30.791533, 24.311796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.730461, 31.171602, 23.861755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029137, 30.910759, 23.914240>,  <40.208340, 30.754253, 23.945730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.029137, 30.910759, 23.914240>,  <39.730461, 31.171602, 23.861755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029137, 30.910759, 23.914240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240591, 0.080866, -0.967252,
		0.620143, 0.753801, 0.217273,
		0.746685, -0.652108, 0.131209,
		40.253143, 30.715126, 23.953602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221371, 31.355629, 23.359146>,  <39.730461, 31.171602, 23.861755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221371, 31.355629, 23.359146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369614, 30.997040, 23.456297>,  <40.458557, 30.781887, 23.514587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369614, 30.997040, 23.456297>,  <40.221371, 31.355629, 23.359146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369614, 30.997040, 23.456297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534331, -0.008101, -0.845237,
		0.759699, 0.443026, 0.476011,
		0.370606, -0.896472, 0.242877,
		40.480797, 30.728098, 23.529160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899910, 31.413301, 23.507523>,  <40.221371, 31.355629, 23.359146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899910, 31.413301, 23.507523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837509, 31.032478, 23.402264>,  <40.800068, 30.803984, 23.339108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.837509, 31.032478, 23.402264>,  <40.899910, 31.413301, 23.507523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837509, 31.032478, 23.402264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698739, 0.081932, -0.710669,
		0.698159, -0.294739, 0.652459,
		-0.156005, -0.952059, -0.263147,
		40.790707, 30.746861, 23.323320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512337, 31.259790, 23.154945>,  <40.899910, 31.413301, 23.507523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512337, 31.259790, 23.154945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244057, 30.983454, 23.046942>,  <41.083088, 30.817652, 22.982140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.244057, 30.983454, 23.046942>,  <41.512337, 31.259790, 23.154945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244057, 30.983454, 23.046942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445712, -0.084403, -0.891189,
		0.592880, -0.718063, 0.364525,
		-0.670697, -0.690841, -0.270008,
		41.042847, 30.776201, 22.965939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951988, 30.646273, 23.009962>,  <41.512337, 31.259790, 23.154945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951988, 30.646273, 23.009962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600922, 30.610853, 22.821556>,  <41.390282, 30.589602, 22.708513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.600922, 30.610853, 22.821556>,  <41.951988, 30.646273, 23.009962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600922, 30.610853, 22.821556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479179, -0.143496, -0.865908,
		0.009088, -0.985681, 0.168374,
		-0.877670, -0.088550, -0.471013,
		41.337620, 30.584290, 22.680252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102322, 30.201469, 22.530519>,  <41.951988, 30.646273, 23.009962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102322, 30.201469, 22.530519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.754768, 30.325434, 22.376116>,  <41.546238, 30.399813, 22.283474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.754768, 30.325434, 22.376116>,  <42.102322, 30.201469, 22.530519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.754768, 30.325434, 22.376116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327450, -0.224978, -0.917693,
		-0.371246, -0.923764, 0.093999,
		-0.868880, 0.309910, -0.386009,
		41.494102, 30.418407, 22.260313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836502, 29.716413, 22.107258>,  <42.102322, 30.201469, 22.530519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.836502, 29.716413, 22.107258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662304, 30.046125, 21.962538>,  <41.557785, 30.243954, 21.875706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.662304, 30.046125, 21.962538>,  <41.836502, 29.716413, 22.107258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662304, 30.046125, 21.962538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170883, -0.318910, -0.932253,
		-0.883821, -0.467822, -0.001971,
		-0.435500, 0.824281, -0.361802,
		41.531654, 30.293409, 21.853996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300285, 29.517057, 21.509109>,  <41.836502, 29.716413, 22.107258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.300285, 29.517057, 21.509109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417622, 29.898031, 21.476082>,  <41.488022, 30.126616, 21.456264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.417622, 29.898031, 21.476082>,  <41.300285, 29.517057, 21.509109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417622, 29.898031, 21.476082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302008, -0.174269, -0.937242,
		-0.907051, 0.249996, -0.338763,
		0.293342, 0.952435, -0.082570,
		41.505623, 30.183762, 21.451311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008347, 29.640318, 20.878702>,  <41.300285, 29.517057, 21.509109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008347, 29.640318, 20.878702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.275467, 29.928524, 20.953428>,  <41.435741, 30.101448, 20.998264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.275467, 29.928524, 20.953428>,  <41.008347, 29.640318, 20.878702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275467, 29.928524, 20.953428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361133, -0.094170, -0.927747,
		-0.650863, 0.687017, -0.323088,
		0.667803, 0.720514, 0.186813,
		41.475807, 30.144678, 21.009472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574440, 29.672556, 20.217579>,  <41.008347, 29.640318, 20.878702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574440, 29.672556, 20.217579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971569, 29.703987, 20.253630>,  <41.209846, 29.722845, 20.275259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.971569, 29.703987, 20.253630>,  <40.574440, 29.672556, 20.217579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971569, 29.703987, 20.253630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116386, -0.807852, -0.577780,
		0.027409, 0.584124, -0.811202,
		0.992826, 0.078576, 0.090126,
		41.269417, 29.727560, 20.280668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852505, 29.654579, 19.919102>,  <40.574440, 29.672556, 20.217579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852505, 29.654579, 19.919102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617359, 29.939199, 19.765162>,  <39.476273, 30.109972, 19.672798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.617359, 29.939199, 19.765162>,  <39.852505, 29.654579, 19.919102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617359, 29.939199, 19.765162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220974, 0.316398, 0.922531,
		0.778191, 0.627368, -0.028767,
		-0.587868, 0.711549, -0.384850,
		39.440998, 30.152664, 19.649706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016624, 30.462978, 20.108078>,  <39.852505, 29.654579, 19.919102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016624, 30.462978, 20.108078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629517, 30.393097, 20.035530>,  <39.397251, 30.351168, 19.992001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629517, 30.393097, 20.035530>,  <40.016624, 30.462978, 20.108078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629517, 30.393097, 20.035530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200034, 0.095773, 0.975097,
		-0.152984, 0.979952, -0.127634,
		-0.967772, -0.174705, -0.181372,
		39.339184, 30.340685, 19.981119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641907, 30.970974, 20.613195>,  <40.016624, 30.462978, 20.108078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641907, 30.970974, 20.613195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348740, 30.730274, 20.486244>,  <39.172840, 30.585855, 20.410074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.348740, 30.730274, 20.486244>,  <39.641907, 30.970974, 20.613195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348740, 30.730274, 20.486244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561190, 0.271052, 0.782046,
		-0.384569, 0.751286, -0.536354,
		-0.732920, -0.601747, -0.317377,
		39.128864, 30.549749, 20.391031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933983, 31.326696, 20.651278>,  <39.641907, 30.970974, 20.613195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933983, 31.326696, 20.651278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844479, 30.938194, 20.618805>,  <38.790775, 30.705093, 20.599321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.844479, 30.938194, 20.618805>,  <38.933983, 31.326696, 20.651278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844479, 30.938194, 20.618805> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667488, 0.092016, 0.738913,
		-0.710204, 0.219531, -0.668892,
		-0.223763, -0.971256, -0.081184,
		38.777351, 30.646818, 20.594450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181725, 31.320866, 20.567904>,  <38.933983, 31.326696, 20.651278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181725, 31.320866, 20.567904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284595, 30.954514, 20.691210>,  <38.346317, 30.734703, 20.765194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.284595, 30.954514, 20.691210>,  <38.181725, 31.320866, 20.567904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284595, 30.954514, 20.691210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599161, 0.099154, 0.794465,
		-0.758199, -0.389019, -0.523258,
		0.257179, -0.915878, 0.308264,
		38.361748, 30.679750, 20.783689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617443, 31.123734, 20.836689>,  <38.181725, 31.320866, 20.567904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617443, 31.123734, 20.836689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890862, 30.877262, 20.993193>,  <38.054913, 30.729380, 21.087095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.890862, 30.877262, 20.993193>,  <37.617443, 31.123734, 20.836689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890862, 30.877262, 20.993193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468490, 0.040676, 0.882532,
		-0.559713, -0.786555, -0.260870,
		0.683549, -0.616179, 0.391260,
		38.095924, 30.692408, 21.110571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196461, 30.551321, 21.313095>,  <37.617443, 31.123734, 20.836689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196461, 30.551321, 21.313095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581676, 30.536186, 21.419769>,  <37.812805, 30.527105, 21.483774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581676, 30.536186, 21.419769>,  <37.196461, 30.551321, 21.313095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581676, 30.536186, 21.419769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259351, 0.137074, 0.956006,
		-0.072729, -0.989838, 0.122195,
		0.963041, -0.037838, 0.266685,
		37.870590, 30.524836, 21.499775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218624, 30.018293, 21.876968>,  <37.196461, 30.551321, 21.313095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218624, 30.018293, 21.876968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527733, 30.267431, 21.925768>,  <37.713200, 30.416914, 21.955048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.527733, 30.267431, 21.925768>,  <37.218624, 30.018293, 21.876968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527733, 30.267431, 21.925768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106372, -0.062399, 0.992367,
		0.625703, -0.779853, 0.018033,
		0.772775, 0.622845, 0.121998,
		37.759567, 30.454285, 21.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428417, 29.849154, 22.509941>,  <37.218624, 30.018293, 21.876968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428417, 29.849154, 22.509941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599003, 30.208092, 22.464512>,  <37.701355, 30.423454, 22.437254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599003, 30.208092, 22.464512>,  <37.428417, 29.849154, 22.509941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599003, 30.208092, 22.464512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017807, 0.117209, 0.992948,
		0.904330, -0.425478, 0.034006,
		0.426463, 0.897346, -0.113572,
		37.726940, 30.477295, 22.430441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983177, 29.898485, 23.073393>,  <37.428417, 29.849154, 22.509941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983177, 29.898485, 23.073393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922035, 30.280188, 22.970608>,  <37.885349, 30.509209, 22.908937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.922035, 30.280188, 22.970608>,  <37.983177, 29.898485, 23.073393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922035, 30.280188, 22.970608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129543, 0.277120, 0.952062,
		0.979721, 0.112240, -0.165977,
		-0.152855, 0.954257, -0.256961,
		37.876179, 30.566465, 22.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604389, 30.389240, 23.260857>,  <37.983177, 29.898485, 23.073393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604389, 30.389240, 23.260857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263344, 30.598001, 23.250530>,  <38.058716, 30.723259, 23.244333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263344, 30.598001, 23.250530>,  <38.604389, 30.389240, 23.260857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263344, 30.598001, 23.250530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131988, 0.262903, 0.955752,
		0.505599, 0.811478, -0.293040,
		-0.852613, 0.521905, -0.025818,
		38.007561, 30.754574, 23.242785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754631, 30.900911, 23.679382>,  <38.604389, 30.389240, 23.260857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754631, 30.900911, 23.679382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355541, 30.920698, 23.661077>,  <38.116085, 30.932570, 23.650095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.355541, 30.920698, 23.661077>,  <38.754631, 30.900911, 23.679382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355541, 30.920698, 23.661077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018516, 0.451724, 0.891965,
		0.064796, 0.890785, -0.449781,
		-0.997727, 0.049468, -0.045763,
		38.056225, 30.935539, 23.647348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549286, 31.668245, 23.875219>,  <38.754631, 30.900911, 23.679382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549286, 31.668245, 23.875219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244354, 31.413692, 23.922329>,  <38.061394, 31.260962, 23.950596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.244354, 31.413692, 23.922329>,  <38.549286, 31.668245, 23.875219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244354, 31.413692, 23.922329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098414, 0.293852, 0.950771,
		-0.639663, 0.713210, -0.286641,
		-0.762329, -0.636383, 0.117776,
		38.015656, 31.222778, 23.957663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169147, 31.960983, 24.339046>,  <38.549286, 31.668245, 23.875219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169147, 31.960983, 24.339046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006382, 31.595629, 24.343889>,  <37.908722, 31.376417, 24.346796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.006382, 31.595629, 24.343889>,  <38.169147, 31.960983, 24.339046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006382, 31.595629, 24.343889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309473, 0.150319, 0.938952,
		-0.859444, 0.378329, -0.343835,
		-0.406918, -0.913384, 0.012108,
		37.884308, 31.321613, 24.347521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484795, 32.034088, 24.769211>,  <38.169147, 31.960983, 24.339046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484795, 32.034088, 24.769211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626114, 31.659983, 24.777761>,  <37.710907, 31.435518, 24.782892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.626114, 31.659983, 24.777761>,  <37.484795, 32.034088, 24.769211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626114, 31.659983, 24.777761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016242, 0.016712, 0.999729,
		-0.935370, -0.353548, -0.009286,
		0.353297, -0.935267, 0.021375,
		37.732101, 31.379402, 24.784174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993511, 31.624609, 25.181568>,  <37.484795, 32.034088, 24.769211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993511, 31.624609, 25.181568> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343910, 31.432316, 25.165924>,  <37.554150, 31.316940, 25.156538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343910, 31.432316, 25.165924>,  <36.993511, 31.624609, 25.181568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343910, 31.432316, 25.165924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057739, 0.024018, 0.998043,
		-0.478853, -0.876538, 0.048797,
		0.875994, -0.480733, -0.039109,
		37.606709, 31.288095, 25.154192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849831, 31.160381, 25.683252>,  <36.993511, 31.624609, 25.181568>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849831, 31.160381, 25.683252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246704, 31.118925, 25.655466>,  <37.484829, 31.094051, 25.638794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246704, 31.118925, 25.655466>,  <36.849831, 31.160381, 25.683252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246704, 31.118925, 25.655466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057923, -0.110507, 0.992186,
		-0.110507, -0.988457, -0.103641,
		-0.992186, 0.103641, 0.069466,
		37.544361, 31.087833, 25.634626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010796, 30.546648, 26.043764>,  <36.849831, 31.160381, 25.683252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010796, 30.546648, 26.043764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308331, 30.813412, 26.026167>,  <37.486851, 30.973471, 26.015610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308331, 30.813412, 26.026167>,  <37.010796, 30.546648, 26.043764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308331, 30.813412, 26.026167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064907, -0.006572, 0.997870,
		0.665199, -0.745110, -0.048176,
		0.743839, 0.666909, -0.043991,
		37.531483, 31.013485, 26.012970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390022, 30.255600, 26.510006>,  <37.010796, 30.546648, 26.043764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390022, 30.255600, 26.510006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532173, 30.627319, 26.469778>,  <37.617462, 30.850351, 26.445642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.532173, 30.627319, 26.469778>,  <37.390022, 30.255600, 26.510006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532173, 30.627319, 26.469778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028129, 0.118176, 0.992594,
		0.934300, -0.349916, 0.068137,
		0.355377, 0.929297, -0.100569,
		37.638786, 30.906109, 26.439608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872673, 30.340998, 26.992727>,  <37.390022, 30.255600, 26.510006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872673, 30.340998, 26.992727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797523, 30.725210, 26.910666>,  <37.752434, 30.955738, 26.861429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.797523, 30.725210, 26.910666>,  <37.872673, 30.340998, 26.992727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797523, 30.725210, 26.910666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132929, 0.231815, 0.963635,
		0.973157, 0.153769, -0.171233,
		-0.187872, 0.960530, -0.205152,
		37.741161, 31.013369, 26.849119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317497, 30.776381, 27.429417>,  <37.872673, 30.340998, 26.992727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317497, 30.776381, 27.429417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030064, 31.035357, 27.327864>,  <37.857601, 31.190742, 27.266932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.030064, 31.035357, 27.327864>,  <38.317497, 30.776381, 27.429417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030064, 31.035357, 27.327864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059466, 0.420935, 0.905139,
		0.692890, 0.635324, -0.340980,
		-0.718587, 0.647438, -0.253881,
		37.814487, 31.229588, 27.251699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.928444, 31.242321, 32.029484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636417, 31.500093, 31.938520>,  <40.461201, 31.654757, 31.883944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.636417, 31.500093, 31.938520>,  <40.928444, 31.242321, 32.029484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636417, 31.500093, 31.938520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078983, 0.410109, 0.908610,
		0.678797, 0.645384, -0.350306,
		-0.730066, 0.644430, -0.227407,
		40.417397, 31.693422, 31.870298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178215, 31.961401, 32.170074>,  <40.928444, 31.242321, 32.029484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.178215, 31.961401, 32.170074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780075, 31.994711, 32.189442>,  <40.541191, 32.014698, 32.201061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.780075, 31.994711, 32.189442>,  <41.178215, 31.961401, 32.170074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780075, 31.994711, 32.189442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080925, 0.450243, 0.889232,
		0.052249, 0.889015, -0.454888,
		-0.995350, 0.083273, 0.048419,
		40.481472, 32.019691, 32.203968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986263, 32.638592, 32.471920>,  <41.178215, 31.961401, 32.170074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986263, 32.638592, 32.471920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643177, 32.436577, 32.510414>,  <40.437325, 32.315369, 32.533508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.643177, 32.436577, 32.510414>,  <40.986263, 32.638592, 32.471920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643177, 32.436577, 32.510414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124597, 0.385793, 0.914133,
		-0.498795, 0.772078, -0.393827,
		-0.857718, -0.505035, 0.096233,
		40.385860, 32.285065, 32.539284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499981, 33.088028, 32.785500>,  <40.986263, 32.638592, 32.471920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499981, 33.088028, 32.785500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321125, 32.733089, 32.830555>,  <40.213814, 32.520126, 32.857586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321125, 32.733089, 32.830555>,  <40.499981, 33.088028, 32.785500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321125, 32.733089, 32.830555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142628, 0.195045, 0.970368,
		-0.883020, 0.417823, -0.213772,
		-0.447138, -0.887345, 0.112635,
		40.186985, 32.466885, 32.864346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849861, 33.261551, 33.052845>,  <40.499981, 33.088028, 32.785500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849861, 33.261551, 33.052845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887295, 32.877441, 33.158009>,  <39.909756, 32.646976, 33.221107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.887295, 32.877441, 33.158009>,  <39.849861, 33.261551, 33.052845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887295, 32.877441, 33.158009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277822, 0.228393, 0.933087,
		-0.956063, -0.160362, -0.245412,
		0.093581, -0.960271, 0.262910,
		39.915371, 32.589359, 33.236881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287407, 33.124104, 33.366859>,  <39.849861, 33.261551, 33.052845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287407, 33.124104, 33.366859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524273, 32.835888, 33.511173>,  <39.666393, 32.662960, 33.597759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.524273, 32.835888, 33.511173>,  <39.287407, 33.124104, 33.366859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524273, 32.835888, 33.511173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273749, 0.241217, 0.931062,
		-0.757890, -0.650110, -0.054405,
		0.592169, -0.720535, 0.360783,
		39.701923, 32.619728, 33.619408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881519, 32.816582, 33.993710>,  <39.287407, 33.124104, 33.366859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881519, 32.816582, 33.993710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.277103, 32.762421, 34.017803>,  <39.514454, 32.729923, 34.032261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.277103, 32.762421, 34.017803>,  <38.881519, 32.816582, 33.993710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277103, 32.762421, 34.017803> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000403, 0.408915, 0.912573,
		-0.148199, -0.902471, 0.404454,
		0.988958, -0.135405, 0.060237,
		39.573792, 32.721798, 34.035873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829323, 32.462379, 34.672825>,  <38.881519, 32.816582, 33.993710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829323, 32.462379, 34.672825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191738, 32.612633, 34.594852>,  <39.409187, 32.702785, 34.548069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.191738, 32.612633, 34.594852>,  <38.829323, 32.462379, 34.672825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191738, 32.612633, 34.594852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102537, 0.252029, 0.962272,
		0.410593, -0.891840, 0.189830,
		0.906035, 0.375638, -0.194928,
		39.463551, 32.725323, 34.536373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299072, 32.241062, 35.214268>,  <38.829323, 32.462379, 34.672825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299072, 32.241062, 35.214268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466042, 32.568306, 35.056049>,  <39.566223, 32.764652, 34.961117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.466042, 32.568306, 35.056049>,  <39.299072, 32.241062, 35.214268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466042, 32.568306, 35.056049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293681, 0.290472, 0.910702,
		0.859950, -0.496308, -0.119015,
		0.417418, 0.818110, -0.395548,
		39.591267, 32.813740, 34.937386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003864, 32.299156, 35.555477>,  <39.299072, 32.241062, 35.214268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003864, 32.299156, 35.555477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916710, 32.653378, 35.391369>,  <39.864418, 32.865910, 35.292904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.916710, 32.653378, 35.391369>,  <40.003864, 32.299156, 35.555477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916710, 32.653378, 35.391369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271409, 0.458767, 0.846092,
		0.937477, 0.073002, -0.340306,
		-0.217887, 0.885553, -0.410270,
		39.851345, 32.919044, 35.268288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481987, 32.697433, 35.860088>,  <40.003864, 32.299156, 35.555477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481987, 32.697433, 35.860088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185181, 32.931641, 35.729496>,  <40.007095, 33.072163, 35.651142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185181, 32.931641, 35.729496>,  <40.481987, 32.697433, 35.860088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185181, 32.931641, 35.729496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048559, 0.532664, 0.844932,
		0.668623, 0.611099, -0.423677,
		-0.742014, 0.585515, -0.326477,
		39.962578, 33.107296, 35.631554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661705, 33.377865, 35.709724>,  <40.481987, 32.697433, 35.860088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661705, 33.377865, 35.709724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295895, 33.288422, 35.844566>,  <40.076408, 33.234756, 35.925472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.295895, 33.288422, 35.844566>,  <40.661705, 33.377865, 35.709724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295895, 33.288422, 35.844566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217893, 0.429820, 0.876229,
		-0.340821, 0.874789, -0.344361,
		-0.914529, -0.223604, 0.337102,
		40.021538, 33.221340, 35.945698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226509, 33.977085, 35.928993>,  <40.661705, 33.377865, 35.709724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226509, 33.977085, 35.928993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180428, 33.638626, 36.137131>,  <40.152779, 33.435551, 36.262012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.180428, 33.638626, 36.137131>,  <40.226509, 33.977085, 35.928993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180428, 33.638626, 36.137131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272134, 0.476908, 0.835764,
		-0.955339, 0.237884, 0.175325,
		-0.115201, -0.846150, 0.520345,
		40.145866, 33.384781, 36.293236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716087, 34.019035, 36.454514>,  <40.226509, 33.977085, 35.928993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716087, 34.019035, 36.454514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987251, 33.746189, 36.564175>,  <40.149948, 33.582481, 36.629971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.987251, 33.746189, 36.564175>,  <39.716087, 34.019035, 36.454514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987251, 33.746189, 36.564175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079074, 0.438414, 0.895288,
		-0.730881, -0.585245, 0.351141,
		0.677908, -0.682116, 0.274151,
		40.190624, 33.541553, 36.646420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591778, 34.801720, 36.563095>,  <39.716087, 34.019035, 36.454514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591778, 34.801720, 36.563095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507664, 35.190624, 36.604073>,  <39.457195, 35.423965, 36.628658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.507664, 35.190624, 36.604073>,  <39.591778, 34.801720, 36.563095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507664, 35.190624, 36.604073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276117, 0.041458, -0.960229,
		-0.937838, -0.230208, 0.259739,
		-0.210285, 0.972258, 0.102445,
		39.444580, 35.482300, 36.634808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010582, 35.003773, 36.074314>,  <39.591778, 34.801720, 36.563095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010582, 35.003773, 36.074314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195950, 35.348881, 36.155178>,  <39.307171, 35.555946, 36.203697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.195950, 35.348881, 36.155178>,  <39.010582, 35.003773, 36.074314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195950, 35.348881, 36.155178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203944, 0.325853, -0.923161,
		-0.862351, 0.386583, 0.326964,
		0.463420, 0.862771, 0.202159,
		39.334976, 35.607712, 36.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569412, 35.431080, 35.881508>,  <39.010582, 35.003773, 36.074314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569412, 35.431080, 35.881508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907028, 35.644836, 35.899490>,  <39.109600, 35.773090, 35.910278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.907028, 35.644836, 35.899490>,  <38.569412, 35.431080, 35.881508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907028, 35.644836, 35.899490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079974, 0.208323, -0.974785,
		-0.530279, 0.819165, 0.218571,
		0.844043, 0.534388, 0.044958,
		39.160240, 35.805153, 35.912979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550510, 36.021019, 35.515411>,  <38.569412, 35.431080, 35.881508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550510, 36.021019, 35.515411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946777, 35.970234, 35.535233>,  <39.184540, 35.939762, 35.547127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946777, 35.970234, 35.535233>,  <38.550510, 36.021019, 35.515411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946777, 35.970234, 35.535233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051170, 0.009493, -0.998645,
		0.126317, 0.991862, 0.015901,
		0.990669, -0.126960, 0.049555,
		39.243977, 35.932144, 35.550098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816799, 36.460690, 34.864117>,  <38.550510, 36.021019, 35.515411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816799, 36.460690, 34.864117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138050, 36.249847, 34.975220>,  <39.330799, 36.123341, 35.041882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.138050, 36.249847, 34.975220>,  <38.816799, 36.460690, 34.864117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138050, 36.249847, 34.975220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230043, -0.155713, -0.960643,
		0.549612, 0.835412, -0.003800,
		0.803123, -0.527106, 0.277762,
		39.378986, 36.091717, 35.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364525, 36.743118, 34.426697>,  <38.816799, 36.460690, 34.864117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364525, 36.743118, 34.426697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460846, 36.376041, 34.553093>,  <39.518639, 36.155796, 34.628933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.460846, 36.376041, 34.553093>,  <39.364525, 36.743118, 34.426697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460846, 36.376041, 34.553093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439194, -0.187307, -0.878650,
		0.865519, 0.350363, 0.357942,
		0.240801, -0.917694, 0.315995,
		39.533085, 36.100735, 34.647892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.979771, 36.628155, 34.154709>,  <39.364525, 36.743118, 34.426697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.979771, 36.628155, 34.154709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.840973, 36.259769, 34.225609>,  <39.757694, 36.038738, 34.268150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.840973, 36.259769, 34.225609>,  <39.979771, 36.628155, 34.154709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840973, 36.259769, 34.225609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349995, -0.302502, -0.886564,
		0.870112, -0.245599, 0.427300,
		-0.346999, -0.920964, 0.177252,
		39.736874, 35.983479, 34.278786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432316, 36.325050, 33.818680>,  <39.979771, 36.628155, 34.154709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432316, 36.325050, 33.818680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146622, 36.049145, 33.866173>,  <39.975204, 35.883602, 33.894669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.146622, 36.049145, 33.866173>,  <40.432316, 36.325050, 33.818680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146622, 36.049145, 33.866173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291740, -0.447601, -0.845305,
		0.636202, -0.569109, 0.520924,
		-0.714237, -0.689759, 0.118733,
		39.932350, 35.842216, 33.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671043, 35.679276, 33.709064>,  <40.432316, 36.325050, 33.818680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671043, 35.679276, 33.709064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.287140, 35.636200, 33.605316>,  <40.056797, 35.610355, 33.543068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.287140, 35.636200, 33.605316>,  <40.671043, 35.679276, 33.709064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287140, 35.636200, 33.605316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275713, -0.536971, -0.797273,
		-0.053417, -0.836699, 0.545052,
		-0.959755, -0.107690, -0.259372,
		39.999214, 35.603893, 33.527504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649109, 35.039272, 33.433010>,  <40.671043, 35.679276, 33.709064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649109, 35.039272, 33.433010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307770, 35.208088, 33.310581>,  <40.102966, 35.309380, 33.237125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307770, 35.208088, 33.310581>,  <40.649109, 35.039272, 33.433010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307770, 35.208088, 33.310581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094321, -0.452408, -0.886809,
		-0.512741, -0.785624, 0.346253,
		-0.853346, 0.422045, -0.306069,
		40.051765, 35.334702, 33.218761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160210, 34.499111, 33.152470>,  <40.649109, 35.039272, 33.433010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160210, 34.499111, 33.152470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075485, 34.855354, 32.991493>,  <40.024651, 35.069099, 32.894909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075485, 34.855354, 32.991493>,  <40.160210, 34.499111, 33.152470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075485, 34.855354, 32.991493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125143, -0.383675, -0.914950,
		-0.969266, -0.244157, -0.030187,
		-0.211810, 0.890607, -0.402437,
		40.011944, 35.122536, 32.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769127, 34.284210, 32.585896>,  <40.160210, 34.499111, 33.152470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769127, 34.284210, 32.585896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896198, 34.655399, 32.507969>,  <39.972443, 34.878113, 32.461212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.896198, 34.655399, 32.507969>,  <39.769127, 34.284210, 32.585896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896198, 34.655399, 32.507969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135676, -0.247830, -0.959256,
		-0.938440, 0.278308, -0.204634,
		0.317683, 0.927968, -0.194814,
		39.991505, 34.933788, 32.449524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415741, 34.523087, 32.035282>,  <39.769127, 34.284210, 32.585896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415741, 34.523087, 32.035282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697109, 34.805988, 32.007046>,  <39.865932, 34.975731, 31.990103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.697109, 34.805988, 32.007046>,  <39.415741, 34.523087, 32.035282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697109, 34.805988, 32.007046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150232, -0.245021, -0.957807,
		-0.694714, 0.663138, -0.278606,
		0.703422, 0.707258, -0.070595,
		39.908134, 35.018166, 31.985867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251923, 34.960056, 31.498648>,  <39.415741, 34.523087, 32.035282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251923, 34.960056, 31.498648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646172, 35.017372, 31.534443>,  <39.882721, 35.051762, 31.555920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.646172, 35.017372, 31.534443>,  <39.251923, 34.960056, 31.498648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646172, 35.017372, 31.534443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112269, -0.159734, -0.980755,
		-0.126240, 0.976705, -0.173525,
		0.985626, 0.143292, 0.089489,
		39.941860, 35.060360, 31.561289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783306, 35.544765, 31.572075>,  <39.251923, 34.960056, 31.498648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783306, 35.544765, 31.572075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436592, 35.634445, 31.393898>,  <38.228561, 35.688251, 31.286993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.436592, 35.634445, 31.393898>,  <38.783306, 35.544765, 31.572075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436592, 35.634445, 31.393898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368435, 0.314043, 0.875004,
		0.336060, 0.922558, -0.189606,
		-0.866787, 0.224196, -0.445440,
		38.176556, 35.701706, 31.260265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603760, 36.265678, 31.734993>,  <38.783306, 35.544765, 31.572075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603760, 36.265678, 31.734993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266468, 36.073471, 31.638597>,  <38.064095, 35.958149, 31.580759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266468, 36.073471, 31.638597>,  <38.603760, 36.265678, 31.734993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266468, 36.073471, 31.638597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434568, 0.345448, 0.831755,
		-0.316422, 0.806083, -0.500107,
		-0.843225, -0.480516, -0.240990,
		38.013500, 35.929317, 31.566301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084984, 36.626595, 31.993013>,  <38.603760, 36.265678, 31.734993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084984, 36.626595, 31.993013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899395, 36.273853, 31.959414>,  <37.788040, 36.062206, 31.939255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.899395, 36.273853, 31.959414>,  <38.084984, 36.626595, 31.993013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899395, 36.273853, 31.959414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559937, 0.218475, 0.799211,
		-0.686439, 0.417847, -0.595152,
		-0.463974, -0.881858, -0.083998,
		37.760204, 36.009296, 31.934214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350986, 36.768108, 31.894493>,  <38.084984, 36.626595, 31.993013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350986, 36.768108, 31.894493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368626, 36.392685, 32.031414>,  <37.379208, 36.167431, 32.113567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.368626, 36.392685, 32.031414>,  <37.350986, 36.768108, 31.894493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368626, 36.392685, 32.031414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760022, 0.190867, 0.621237,
		-0.648400, -0.287550, -0.704906,
		0.044093, -0.938555, 0.342303,
		37.381855, 36.111118, 32.134106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633141, 36.477928, 31.871607>,  <37.350986, 36.768108, 31.894493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633141, 36.477928, 31.871607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859608, 36.306576, 32.153297>,  <36.995487, 36.203762, 32.322311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.859608, 36.306576, 32.153297>,  <36.633141, 36.477928, 31.871607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859608, 36.306576, 32.153297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725677, 0.146171, 0.672330,
		-0.390954, -0.891695, -0.228112,
		0.566170, -0.428385, 0.704229,
		37.029457, 36.178059, 32.364567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221741, 35.998070, 32.301308>,  <36.633141, 36.477928, 31.871607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221741, 35.998070, 32.301308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545639, 36.026196, 32.534328>,  <36.739979, 36.043072, 32.674141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.545639, 36.026196, 32.534328>,  <36.221741, 35.998070, 32.301308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545639, 36.026196, 32.534328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573314, -0.116669, 0.810987,
		0.124990, -0.990679, -0.054159,
		0.809747, 0.070315, 0.582552,
		36.788563, 36.047291, 32.709095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085541, 35.573303, 32.740345>,  <36.221741, 35.998070, 32.301308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085541, 35.573303, 32.740345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361359, 35.790756, 32.931755>,  <36.526852, 35.921227, 33.046600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.361359, 35.790756, 32.931755>,  <36.085541, 35.573303, 32.740345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361359, 35.790756, 32.931755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538426, -0.057106, 0.840735,
		0.484375, -0.837381, 0.253327,
		0.689549, 0.543629, 0.478528,
		36.568222, 35.953846, 33.075314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218224, 35.292664, 33.461967>,  <36.085541, 35.573303, 32.740345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218224, 35.292664, 33.461967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378483, 35.657181, 33.499969>,  <36.474640, 35.875889, 33.522770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.378483, 35.657181, 33.499969>,  <36.218224, 35.292664, 33.461967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378483, 35.657181, 33.499969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346008, 0.054475, 0.936649,
		0.848385, -0.408143, 0.337139,
		0.400652, 0.911291, 0.095005,
		36.498680, 35.930569, 33.528473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445087, 35.266193, 34.101280>,  <36.218224, 35.292664, 33.461967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445087, 35.266193, 34.101280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411633, 35.657082, 34.023251>,  <36.391560, 35.891613, 33.976433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411633, 35.657082, 34.023251>,  <36.445087, 35.266193, 34.101280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411633, 35.657082, 34.023251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416156, 0.143614, 0.897881,
		0.905438, 0.156280, 0.394662,
		-0.083642, 0.977216, -0.195071,
		36.386539, 35.950245, 33.964729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574966, 35.527298, 34.724934>,  <36.445087, 35.266193, 34.101280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574966, 35.527298, 34.724934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417843, 35.837669, 34.527496>,  <36.323566, 36.023891, 34.409035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.417843, 35.837669, 34.527496>,  <36.574966, 35.527298, 34.724934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417843, 35.837669, 34.527496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510754, 0.262263, 0.818748,
		0.764741, 0.573718, 0.293289,
		-0.392812, 0.775929, -0.493592,
		36.299999, 36.070450, 34.379417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.661694, 36.058949, 35.127419>,  <36.574966, 35.527298, 34.724934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.661694, 36.058949, 35.127419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.374275, 36.222443, 34.902340>,  <36.201824, 36.320541, 34.767292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.374275, 36.222443, 34.902340>,  <36.661694, 36.058949, 35.127419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374275, 36.222443, 34.902340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471511, 0.308447, 0.826159,
		0.511245, 0.858949, -0.028907,
		-0.718544, 0.408740, -0.562696,
		36.158710, 36.345066, 34.733532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551815, 36.666451, 35.357857>,  <36.661694, 36.058949, 35.127419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551815, 36.666451, 35.357857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219509, 36.519077, 35.190964>,  <36.020126, 36.430653, 35.090828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.219509, 36.519077, 35.190964>,  <36.551815, 36.666451, 35.357857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219509, 36.519077, 35.190964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528875, 0.288769, 0.798063,
		-0.173544, 0.883670, -0.434753,
		-0.830767, -0.368429, -0.417236,
		35.970280, 36.408550, 35.065792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.996502, 36.286285, 27.871893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657631, 36.080059, 27.820553>,  <39.454308, 35.956322, 27.789749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657631, 36.080059, 27.820553>,  <39.996502, 36.286285, 27.871893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657631, 36.080059, 27.820553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318904, 0.300219, 0.898982,
		-0.424952, 0.802532, -0.418757,
		-0.847181, -0.515568, -0.128352,
		39.403477, 35.925388, 27.782047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409218, 36.802254, 28.091127>,  <39.996502, 36.286285, 27.871893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409218, 36.802254, 28.091127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270592, 36.427902, 28.116518>,  <39.187416, 36.203293, 28.131752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270592, 36.427902, 28.116518>,  <39.409218, 36.802254, 28.091127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270592, 36.427902, 28.116518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404996, 0.210326, 0.889798,
		-0.846092, 0.282664, -0.451918,
		-0.346564, -0.935876, 0.063477,
		39.166622, 36.147141, 28.135561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877686, 36.871155, 28.483690>,  <39.409218, 36.802254, 28.091127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877686, 36.871155, 28.483690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881985, 36.471447, 28.498350>,  <38.884563, 36.231621, 28.507147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881985, 36.471447, 28.498350>,  <38.877686, 36.871155, 28.483690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881985, 36.471447, 28.498350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596437, 0.023014, 0.802330,
		-0.802588, -0.030480, -0.595755,
		0.010745, -0.999270, 0.036650,
		38.885208, 36.171665, 28.509346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146545, 36.688869, 28.496780>,  <38.877686, 36.871155, 28.483690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146545, 36.688869, 28.496780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396927, 36.416992, 28.649729>,  <38.547157, 36.253868, 28.741497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396927, 36.416992, 28.649729>,  <38.146545, 36.688869, 28.496780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396927, 36.416992, 28.649729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493964, 0.033858, 0.868823,
		-0.603476, -0.732719, -0.314548,
		0.625953, -0.679688, 0.382369,
		38.584713, 36.213085, 28.764439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759426, 36.123810, 28.843338>,  <38.146545, 36.688869, 28.496780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759426, 36.123810, 28.843338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111416, 36.083744, 29.029072>,  <38.322609, 36.059704, 29.140512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111416, 36.083744, 29.029072>,  <37.759426, 36.123810, 28.843338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111416, 36.083744, 29.029072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474969, -0.171704, 0.863089,
		-0.006722, -0.980044, -0.198670,
		0.879977, -0.100163, 0.464336,
		38.375408, 36.053696, 29.168373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636284, 35.484596, 29.247385>,  <37.759426, 36.123810, 28.843338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636284, 35.484596, 29.247385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954323, 35.669590, 29.404320>,  <38.145145, 35.780586, 29.498480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954323, 35.669590, 29.404320>,  <37.636284, 35.484596, 29.247385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954323, 35.669590, 29.404320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384898, -0.115141, 0.915749,
		0.468690, -0.879121, 0.086459,
		0.795100, 0.462481, 0.392337,
		38.192852, 35.808334, 29.522020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825150, 34.971500, 29.771467>,  <37.636284, 35.484596, 29.247385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825150, 34.971500, 29.771467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011353, 35.309620, 29.876369>,  <38.123074, 35.512489, 29.939310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011353, 35.309620, 29.876369>,  <37.825150, 34.971500, 29.771467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011353, 35.309620, 29.876369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224286, -0.173976, 0.958868,
		0.856154, -0.505180, 0.108601,
		0.465507, 0.845297, 0.262254,
		38.151005, 35.563210, 29.955046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212570, 34.823513, 30.305365>,  <37.825150, 34.971500, 29.771467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212570, 34.823513, 30.305365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234287, 35.220284, 30.351202>,  <38.247318, 35.458347, 30.378704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234287, 35.220284, 30.351202>,  <38.212570, 34.823513, 30.305365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.234287, 35.220284, 30.351202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043014, -0.112333, 0.992739,
		0.997598, -0.058832, 0.036567,
		0.054297, 0.991927, 0.114594,
		38.250576, 35.517860, 30.385580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665459, 34.997250, 30.868063>,  <38.212570, 34.823513, 30.305365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665459, 34.997250, 30.868063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446785, 35.328510, 30.818588>,  <38.315582, 35.527267, 30.788904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446785, 35.328510, 30.818588>,  <38.665459, 34.997250, 30.868063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446785, 35.328510, 30.818588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159046, 0.042324, 0.986364,
		0.822097, 0.558898, 0.108577,
		-0.546682, 0.828156, -0.123685,
		38.282780, 35.576958, 30.781483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449028, 35.352139, 30.940590>,  <38.665459, 34.997250, 30.868063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.449028, 35.352139, 30.940590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809101, 35.233063, 31.067747>,  <40.025143, 35.161617, 31.144041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809101, 35.233063, 31.067747>,  <39.449028, 35.352139, 30.940590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809101, 35.233063, 31.067747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318587, -0.047581, -0.946699,
		0.296946, 0.953477, 0.052008,
		0.900181, -0.297688, 0.317895,
		40.079155, 35.143757, 31.163116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975456, 35.776470, 30.625917>,  <39.449028, 35.352139, 30.940590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975456, 35.776470, 30.625917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174297, 35.448483, 30.739437>,  <40.293602, 35.251690, 30.807549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174297, 35.448483, 30.739437>,  <39.975456, 35.776470, 30.625917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174297, 35.448483, 30.739437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372388, -0.093810, -0.923324,
		0.783717, 0.564673, 0.258712,
		0.497107, -0.819966, 0.283798,
		40.323429, 35.202492, 30.824577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746094, 35.880318, 30.573866>,  <39.975456, 35.776470, 30.625917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746094, 35.880318, 30.573866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719742, 35.481293, 30.564598>,  <40.703930, 35.241879, 30.559038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719742, 35.481293, 30.564598>,  <40.746094, 35.880318, 30.573866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719742, 35.481293, 30.564598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570386, -0.018598, -0.821166,
		0.818731, -0.067314, 0.570218,
		-0.065881, -0.997559, -0.023168,
		40.699978, 35.182026, 30.557648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.408005, 35.616802, 30.387163>,  <40.746094, 35.880318, 30.573866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.408005, 35.616802, 30.387163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157497, 35.326038, 30.274456>,  <41.007195, 35.151581, 30.206831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.157497, 35.326038, 30.274456>,  <41.408005, 35.616802, 30.387163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157497, 35.326038, 30.274456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586720, -0.201461, -0.784330,
		0.513370, -0.656520, 0.552660,
		-0.626268, -0.726908, -0.281769,
		40.969616, 35.107967, 30.189926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797153, 35.144459, 30.179255>,  <41.408005, 35.616802, 30.387163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797153, 35.144459, 30.179255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451138, 35.033710, 30.011898>,  <41.243526, 34.967262, 29.911484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451138, 35.033710, 30.011898>,  <41.797153, 35.144459, 30.179255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.451138, 35.033710, 30.011898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499280, -0.393223, -0.772072,
		0.049241, -0.876767, 0.478388,
		-0.865041, -0.276867, -0.418389,
		41.191624, 34.950649, 29.886381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850727, 34.411240, 30.037542>,  <41.797153, 35.144459, 30.179255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850727, 34.411240, 30.037542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570789, 34.570583, 29.800383>,  <41.402828, 34.666191, 29.658087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570789, 34.570583, 29.800383>,  <41.850727, 34.411240, 30.037542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570789, 34.570583, 29.800383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459551, -0.384351, -0.800679,
		-0.546841, -0.832817, 0.085918,
		-0.699841, 0.398360, -0.592901,
		41.360836, 34.690090, 29.622513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774681, 33.956448, 29.543896>,  <41.850727, 34.411240, 30.037542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774681, 33.956448, 29.543896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607170, 34.275650, 29.370550>,  <41.506664, 34.467171, 29.266542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607170, 34.275650, 29.370550>,  <41.774681, 33.956448, 29.543896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607170, 34.275650, 29.370550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443439, -0.236749, -0.864472,
		-0.792455, -0.554194, -0.254723,
		-0.418779, 0.798009, -0.433365,
		41.481537, 34.515053, 29.240541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464973, 33.658485, 28.874462>,  <41.774681, 33.956448, 29.543896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464973, 33.658485, 28.874462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503395, 34.054157, 28.830122>,  <41.526447, 34.291561, 28.803518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503395, 34.054157, 28.830122>,  <41.464973, 33.658485, 28.874462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503395, 34.054157, 28.830122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429888, -0.141671, -0.891698,
		-0.897758, 0.037998, -0.438847,
		0.096054, 0.989184, -0.110852,
		41.532211, 34.350914, 28.796867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385807, 33.742550, 28.148296>,  <41.464973, 33.658485, 28.874462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385807, 33.742550, 28.148296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567265, 34.078072, 28.268705>,  <41.676140, 34.279385, 28.340950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567265, 34.078072, 28.268705>,  <41.385807, 33.742550, 28.148296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567265, 34.078072, 28.268705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512862, 0.030517, -0.857929,
		-0.728819, 0.543579, -0.416346,
		0.453647, 0.838803, 0.301022,
		41.703358, 34.329712, 28.359013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282051, 34.181816, 27.627459>,  <41.385807, 33.742550, 28.148296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282051, 34.181816, 27.627459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609631, 34.320946, 27.810036>,  <41.806179, 34.404423, 27.919582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609631, 34.320946, 27.810036>,  <41.282051, 34.181816, 27.627459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609631, 34.320946, 27.810036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464113, 0.066362, -0.883287,
		-0.337515, 0.935210, -0.107081,
		0.818952, 0.347820, 0.456441,
		41.855316, 34.425293, 27.946968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.512238, 34.713593, 27.241211>,  <41.282051, 34.181816, 27.627459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.512238, 34.713593, 27.241211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836445, 34.619511, 27.455774>,  <42.030972, 34.563061, 27.584513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.836445, 34.619511, 27.455774>,  <41.512238, 34.713593, 27.241211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836445, 34.619511, 27.455774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583278, 0.240787, -0.775763,
		0.053301, 0.941648, 0.332352,
		0.810522, -0.235202, 0.536408,
		42.079601, 34.548950, 27.616697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.943169, 35.117115, 26.994349>,  <41.512238, 34.713593, 27.241211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.943169, 35.117115, 26.994349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176178, 34.841091, 27.166153>,  <42.315983, 34.675476, 27.269236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176178, 34.841091, 27.166153>,  <41.943169, 35.117115, 26.994349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176178, 34.841091, 27.166153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611263, 0.023621, -0.791075,
		0.535746, 0.723364, 0.435569,
		0.582524, -0.690063, 0.429511,
		42.350937, 34.634071, 27.295006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543728, 35.233654, 26.745859>,  <41.943169, 35.117115, 26.994349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543728, 35.233654, 26.745859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633026, 34.880360, 26.910810>,  <42.686607, 34.668385, 27.009781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633026, 34.880360, 26.910810>,  <42.543728, 35.233654, 26.745859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.633026, 34.880360, 26.910810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643192, -0.184406, -0.743168,
		0.732437, 0.431148, 0.526922,
		0.223248, -0.883236, 0.412376,
		42.700001, 34.615387, 27.034523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306812, 35.195133, 26.619352>,  <42.543728, 35.233654, 26.745859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306812, 35.195133, 26.619352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136414, 34.841236, 26.694996>,  <43.034176, 34.628899, 26.740381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136414, 34.841236, 26.694996>,  <43.306812, 35.195133, 26.619352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.136414, 34.841236, 26.694996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489097, -0.401055, -0.774558,
		0.761124, -0.237468, 0.603572,
		-0.425998, -0.884740, 0.189108,
		43.008614, 34.575813, 26.751728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.761372, 31.703432, 25.485224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.928631, 32.066242, 25.505047>,  <35.028988, 32.283928, 25.516941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.928631, 32.066242, 25.505047>,  <34.761372, 31.703432, 25.485224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928631, 32.066242, 25.505047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182948, 0.030652, 0.982645,
		0.889764, -0.419961, 0.178756,
		0.418152, 0.907025, 0.049558,
		35.054077, 32.338348, 25.519915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209038, 31.575417, 26.117426>,  <34.761372, 31.703432, 25.485224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209038, 31.575417, 26.117426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142857, 31.959551, 26.027641>,  <35.103146, 32.190029, 25.973770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.142857, 31.959551, 26.027641>,  <35.209038, 31.575417, 26.117426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142857, 31.959551, 26.027641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103192, 0.209490, 0.972350,
		0.980803, 0.184045, 0.064437,
		-0.165457, 0.960334, -0.224461,
		35.093220, 32.247650, 25.960302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614273, 32.018688, 26.607843>,  <35.209038, 31.575417, 26.117426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614273, 32.018688, 26.607843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323715, 32.259872, 26.475912>,  <35.149380, 32.404583, 26.396753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.323715, 32.259872, 26.475912>,  <35.614273, 32.018688, 26.607843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323715, 32.259872, 26.475912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131758, 0.348833, 0.927877,
		0.674525, 0.717467, -0.173948,
		-0.726399, 0.602957, -0.329829,
		35.105797, 32.440758, 26.376963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576199, 32.454502, 27.116203>,  <35.614273, 32.018688, 26.607843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576199, 32.454502, 27.116203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243763, 32.538578, 26.910248>,  <35.044300, 32.589024, 26.786674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.243763, 32.538578, 26.910248>,  <35.576199, 32.454502, 27.116203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243763, 32.538578, 26.910248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396470, 0.425332, 0.813575,
		0.390004, 0.880292, -0.270154,
		-0.831089, 0.210190, -0.514890,
		34.994438, 32.601635, 26.755781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450935, 33.153984, 27.231291>,  <35.576199, 32.454502, 27.116203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450935, 33.153984, 27.231291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113850, 32.961971, 27.133797>,  <34.911598, 32.846764, 27.075300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.113850, 32.961971, 27.133797>,  <35.450935, 33.153984, 27.231291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113850, 32.961971, 27.133797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426201, 0.318248, 0.846800,
		-0.328926, 0.817487, -0.472783,
		-0.842710, -0.480035, -0.243733,
		34.861038, 32.817959, 27.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991268, 33.641636, 27.255924>,  <35.450935, 33.153984, 27.231291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991268, 33.641636, 27.255924> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780521, 33.301762, 27.264391>,  <34.654072, 33.097836, 27.269472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.780521, 33.301762, 27.264391>,  <34.991268, 33.641636, 27.255924>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780521, 33.301762, 27.264391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403501, 0.271966, 0.873625,
		-0.748062, 0.451743, -0.486138,
		-0.526867, -0.849684, 0.021168,
		34.622459, 33.046856, 27.270741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352058, 33.817913, 27.544193>,  <34.991268, 33.641636, 27.255924>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352058, 33.817913, 27.544193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400238, 33.427521, 27.616800>,  <34.429146, 33.193283, 27.660364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.400238, 33.427521, 27.616800>,  <34.352058, 33.817913, 27.544193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400238, 33.427521, 27.616800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199330, 0.155344, 0.967541,
		-0.972501, -0.152725, -0.175831,
		0.120454, -0.975983, 0.181515,
		34.436375, 33.134727, 27.671255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870640, 33.623089, 28.037134>,  <34.352058, 33.817913, 27.544193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870640, 33.623089, 28.037134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129677, 33.320641, 28.074894>,  <34.285099, 33.139172, 28.097549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.129677, 33.320641, 28.074894>,  <33.870640, 33.623089, 28.037134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129677, 33.320641, 28.074894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047548, 0.083543, 0.995369,
		-0.760502, -0.649083, 0.018150,
		0.647593, -0.756117, 0.094397,
		34.323956, 33.093807, 28.103212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754192, 33.442429, 28.617773>,  <33.870640, 33.623089, 28.037134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754192, 33.442429, 28.617773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074505, 33.208862, 28.564417>,  <34.266693, 33.068722, 28.532402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.074505, 33.208862, 28.564417>,  <33.754192, 33.442429, 28.617773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074505, 33.208862, 28.564417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076727, -0.120866, 0.989699,
		-0.594028, -0.802763, -0.051984,
		0.800777, -0.583920, -0.133392,
		34.314739, 33.033688, 28.524399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642937, 32.831730, 28.966812>,  <33.754192, 33.442429, 28.617773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642937, 32.831730, 28.966812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038708, 32.870853, 28.923977>,  <34.276169, 32.894329, 28.898275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.038708, 32.870853, 28.923977>,  <33.642937, 32.831730, 28.966812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038708, 32.870853, 28.923977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124362, -0.192247, 0.973435,
		0.074629, -0.976460, -0.202378,
		0.989426, 0.097814, -0.107087,
		34.335537, 32.900196, 28.891851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929401, 32.378899, 29.440559>,  <33.642937, 32.831730, 28.966812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929401, 32.378899, 29.440559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199585, 32.664680, 29.367556>,  <34.361694, 32.836147, 29.323753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.199585, 32.664680, 29.367556>,  <33.929401, 32.378899, 29.440559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199585, 32.664680, 29.367556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322680, -0.063830, 0.944353,
		0.663046, -0.696766, -0.273654,
		0.675461, 0.714453, -0.182510,
		34.402222, 32.879017, 29.312803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514797, 32.149406, 29.816065>,  <33.929401, 32.378899, 29.440559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514797, 32.149406, 29.816065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588722, 32.537384, 29.752762>,  <34.633080, 32.770172, 29.714779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.588722, 32.537384, 29.752762>,  <34.514797, 32.149406, 29.816065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588722, 32.537384, 29.752762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415521, 0.068811, 0.906977,
		0.890610, -0.233384, -0.390316,
		0.184816, 0.969947, -0.158260,
		34.644169, 32.828369, 29.705284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175644, 32.290619, 30.082027>,  <34.514797, 32.149406, 29.816065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175644, 32.290619, 30.082027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000027, 32.649944, 30.075369>,  <34.894657, 32.865540, 30.071373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.000027, 32.649944, 30.075369>,  <35.175644, 32.290619, 30.082027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000027, 32.649944, 30.075369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246569, 0.138283, 0.959209,
		0.863972, 0.417027, -0.282208,
		-0.439040, 0.898313, -0.016647,
		34.868313, 32.919437, 30.070375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569946, 32.780792, 30.549112>,  <35.175644, 32.290619, 30.082027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569946, 32.780792, 30.549112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218060, 32.970627, 30.537382>,  <35.006927, 33.084530, 30.530344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218060, 32.970627, 30.537382>,  <35.569946, 32.780792, 30.549112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218060, 32.970627, 30.537382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049626, 0.152972, 0.986984,
		0.472897, 0.866813, -0.158124,
		-0.879719, 0.474589, -0.029323,
		34.954144, 33.113003, 30.528585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198826, 32.884747, 30.668287>,  <35.569946, 32.780792, 30.549112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198826, 32.884747, 30.668287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436169, 32.589249, 30.796152>,  <36.578575, 32.411949, 30.872871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436169, 32.589249, 30.796152>,  <36.198826, 32.884747, 30.668287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436169, 32.589249, 30.796152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139125, -0.297028, -0.944679,
		0.792822, 0.605009, -0.073467,
		0.593361, -0.738741, 0.319663,
		36.614178, 32.367626, 30.892052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874718, 32.983627, 30.354570>,  <36.198826, 32.884747, 30.668287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874718, 32.983627, 30.354570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.870358, 32.595829, 30.452524>,  <36.867741, 32.363152, 30.511297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.870358, 32.595829, 30.452524>,  <36.874718, 32.983627, 30.354570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870358, 32.595829, 30.452524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267072, -0.238824, -0.933614,
		0.963615, 0.055225, 0.261528,
		-0.010901, -0.969491, 0.244884,
		36.867088, 32.304981, 30.525990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559814, 32.655228, 30.193722>,  <36.874718, 32.983627, 30.354570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559814, 32.655228, 30.193722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279888, 32.369717, 30.204847>,  <37.111931, 32.198410, 30.211523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.279888, 32.369717, 30.204847>,  <37.559814, 32.655228, 30.193722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279888, 32.369717, 30.204847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257405, -0.288308, -0.922291,
		0.666334, -0.638274, 0.385494,
		-0.699816, -0.713782, 0.027814,
		37.069942, 32.155582, 30.213192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.887459, 32.181435, 29.850037>,  <37.559814, 32.655228, 30.193722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.887459, 32.181435, 29.850037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517841, 32.028538, 29.847664>,  <37.296070, 31.936798, 29.846241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517841, 32.028538, 29.847664>,  <37.887459, 32.181435, 29.850037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517841, 32.028538, 29.847664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124824, -0.287012, -0.949760,
		0.361339, -0.878358, 0.312924,
		-0.924042, -0.382245, -0.005932,
		37.240627, 31.913864, 29.845884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004997, 31.563774, 29.593987>,  <37.887459, 32.181435, 29.850037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004997, 31.563774, 29.593987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613693, 31.621578, 29.534483>,  <37.378910, 31.656261, 29.498781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613693, 31.621578, 29.534483>,  <38.004997, 31.563774, 29.593987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613693, 31.621578, 29.534483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095542, -0.322626, -0.941692,
		-0.184077, -0.935430, 0.301805,
		-0.978258, 0.144509, -0.148761,
		37.320217, 31.664930, 29.489855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708931, 30.899309, 29.359159>,  <38.004997, 31.563774, 29.593987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708931, 30.899309, 29.359159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465557, 31.192657, 29.237846>,  <37.319534, 31.368666, 29.165058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.465557, 31.192657, 29.237846>,  <37.708931, 30.899309, 29.359159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465557, 31.192657, 29.237846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132842, -0.282648, -0.949981,
		-0.782410, -0.618286, 0.074549,
		-0.608430, 0.733371, -0.303281,
		37.283028, 31.412668, 29.146862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353569, 30.602617, 28.783489>,  <37.708931, 30.899309, 29.359159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353569, 30.602617, 28.783489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300705, 30.996634, 28.739264>,  <37.268986, 31.233044, 28.712729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300705, 30.996634, 28.739264>,  <37.353569, 30.602617, 28.783489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300705, 30.996634, 28.739264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009478, -0.112795, -0.993573,
		-0.991183, -0.130267, 0.024244,
		-0.132164, 0.985042, -0.110565,
		37.261055, 31.292147, 28.706095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892414, 30.639090, 28.261787>,  <37.353569, 30.602617, 28.783489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892414, 30.639090, 28.261787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047104, 31.007853, 28.271029>,  <37.139919, 31.229111, 28.276573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.047104, 31.007853, 28.271029>,  <36.892414, 30.639090, 28.261787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.047104, 31.007853, 28.271029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045629, 0.005895, -0.998941,
		-0.921066, 0.387368, -0.039786,
		0.386723, 0.921907, 0.023105,
		37.163120, 31.284424, 28.277960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653049, 31.014549, 27.695206>,  <36.892414, 30.639090, 28.261787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653049, 31.014549, 27.695206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965710, 31.251209, 27.774162>,  <37.153305, 31.393206, 27.821537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.965710, 31.251209, 27.774162>,  <36.653049, 31.014549, 27.695206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965710, 31.251209, 27.774162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190158, 0.075353, -0.978858,
		-0.594017, 0.802664, -0.053607,
		0.781655, 0.591652, 0.197394,
		37.200207, 31.428705, 27.833380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540588, 31.631842, 27.296715>,  <36.653049, 31.014549, 27.695206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540588, 31.631842, 27.296715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930374, 31.584457, 27.373022>,  <37.164246, 31.556026, 27.418806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930374, 31.584457, 27.373022>,  <36.540588, 31.631842, 27.296715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930374, 31.584457, 27.373022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203190, 0.103459, -0.973658,
		0.095605, 0.987554, 0.124887,
		0.974461, -0.118462, 0.190770,
		37.222713, 31.548920, 27.430252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857971, 32.075897, 26.832460>,  <36.540588, 31.631842, 27.296715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857971, 32.075897, 26.832460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153381, 31.831097, 26.945618>,  <37.330627, 31.684216, 27.013512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.153381, 31.831097, 26.945618>,  <36.857971, 32.075897, 26.832460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153381, 31.831097, 26.945618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346129, -0.015916, -0.938052,
		0.578594, 0.790695, 0.200078,
		0.738528, -0.612004, 0.282892,
		37.374939, 31.647495, 27.030485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602055, 32.298859, 26.628963>,  <36.857971, 32.075897, 26.832460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602055, 32.298859, 26.628963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639198, 31.902334, 26.666225>,  <37.661484, 31.664419, 26.688583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.639198, 31.902334, 26.666225>,  <37.602055, 32.298859, 26.628963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639198, 31.902334, 26.666225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382656, -0.050842, -0.922491,
		0.919212, 0.121311, 0.374610,
		0.092862, -0.991312, 0.093155,
		37.667057, 31.604940, 26.694172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279186, 32.114239, 26.281807>,  <37.602055, 32.298859, 26.628963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279186, 32.114239, 26.281807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072430, 31.773333, 26.313997>,  <37.948376, 31.568790, 26.333311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.072430, 31.773333, 26.313997>,  <38.279186, 32.114239, 26.281807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072430, 31.773333, 26.313997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317248, -0.278024, -0.906673,
		0.795097, -0.443119, 0.414086,
		-0.516890, -0.852261, 0.080477,
		37.917362, 31.517654, 26.338140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710953, 31.552341, 26.016869>,  <38.279186, 32.114239, 26.281807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710953, 31.552341, 26.016869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351440, 31.377010, 26.013857>,  <38.135731, 31.271812, 26.012051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.351440, 31.377010, 26.013857>,  <38.710953, 31.552341, 26.016869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351440, 31.377010, 26.013857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220006, -0.436132, -0.872574,
		0.379188, -0.785913, 0.488423,
		-0.898785, -0.438326, -0.007529,
		38.081806, 31.245512, 26.011599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219772, 31.050230, 26.308762>,  <38.710953, 31.552341, 26.016869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219772, 31.050230, 26.308762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613644, 30.985716, 26.335255>,  <39.849968, 30.947008, 26.351151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.613644, 30.985716, 26.335255>,  <39.219772, 31.050230, 26.308762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613644, 30.985716, 26.335255> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070711, -0.022170, 0.997250,
		-0.159375, -0.986659, -0.033236,
		0.984682, -0.161287, 0.066235,
		39.909050, 30.937330, 26.355125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317570, 30.452909, 26.717710>,  <39.219772, 31.050230, 26.308762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317570, 30.452909, 26.717710> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675865, 30.630739, 26.718119>,  <39.890842, 30.737436, 26.718363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.675865, 30.630739, 26.718119>,  <39.317570, 30.452909, 26.717710>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675865, 30.630739, 26.718119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073264, -0.149878, 0.985986,
		0.438496, -0.883115, -0.166823,
		0.895742, 0.444573, 0.001020,
		39.944588, 30.764111, 26.718424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691330, 30.031765, 27.152737>,  <39.317570, 30.452909, 26.717710>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691330, 30.031765, 27.152737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910019, 30.366289, 27.136307>,  <40.041233, 30.567003, 27.126448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.910019, 30.366289, 27.136307>,  <39.691330, 30.031765, 27.152737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910019, 30.366289, 27.136307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209458, -0.089102, 0.973749,
		0.810695, -0.540971, -0.223884,
		0.546718, 0.836308, -0.041076,
		40.074036, 30.617182, 27.123983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344856, 29.873035, 27.442703>,  <39.691330, 30.031765, 27.152737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344856, 29.873035, 27.442703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.283054, 30.267088, 27.472761>,  <40.245975, 30.503519, 27.490797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.283054, 30.267088, 27.472761>,  <40.344856, 29.873035, 27.442703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283054, 30.267088, 27.472761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149936, -0.051799, 0.987338,
		0.976549, 0.163812, -0.139703,
		-0.154501, 0.985131, 0.075146,
		40.236706, 30.562628, 27.495304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734360, 30.041643, 28.047234>,  <40.344856, 29.873035, 27.442703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734360, 30.041643, 28.047234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553635, 30.392433, 27.981771>,  <40.445202, 30.602907, 27.942493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.553635, 30.392433, 27.981771>,  <40.734360, 30.041643, 28.047234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553635, 30.392433, 27.981771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077744, 0.144044, 0.986513,
		0.888721, 0.458439, 0.003100,
		-0.451809, 0.876975, -0.163656,
		40.418091, 30.655525, 27.932674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135036, 30.633783, 28.352139>,  <40.734360, 30.041643, 28.047234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135036, 30.633783, 28.352139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744873, 30.720125, 28.334295>,  <40.510777, 30.771931, 28.323589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.744873, 30.720125, 28.334295>,  <41.135036, 30.633783, 28.352139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744873, 30.720125, 28.334295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020106, 0.114395, 0.993232,
		0.219498, 0.969701, -0.107241,
		-0.975406, 0.215857, -0.044606,
		40.452251, 30.784882, 28.320913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.038418, 31.184137, 28.791847>,  <41.135036, 30.633783, 28.352139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.038418, 31.184137, 28.791847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658424, 31.065857, 28.751673>,  <40.430428, 30.994888, 28.727568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.658424, 31.065857, 28.751673>,  <41.038418, 31.184137, 28.791847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658424, 31.065857, 28.751673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156355, 0.171970, 0.972615,
		-0.270330, 0.939675, -0.209603,
		-0.949987, -0.295699, -0.100434,
		40.373428, 30.977148, 28.721542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684059, 31.627632, 29.181150>,  <41.038418, 31.184137, 28.791847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684059, 31.627632, 29.181150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443787, 31.309977, 29.144217>,  <40.299622, 31.119383, 29.122055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443787, 31.309977, 29.144217>,  <40.684059, 31.627632, 29.181150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443787, 31.309977, 29.144217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285637, 0.105302, 0.952535,
		-0.746721, 0.598546, -0.290088,
		-0.600683, -0.794138, -0.092336,
		40.263580, 31.071735, 29.116516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886013, 31.731907, 29.105471>,  <40.684059, 31.627632, 29.181150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886013, 31.731907, 29.105471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.045685, 31.424423, 29.305368>,  <40.141487, 31.239933, 29.425306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.045685, 31.424423, 29.305368>,  <39.886013, 31.731907, 29.105471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045685, 31.424423, 29.305368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244083, 0.436289, 0.866069,
		-0.883786, -0.467697, -0.013470,
		0.399181, -0.768708, 0.499743,
		40.165440, 31.193811, 29.455292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441669, 31.531809, 29.574316>,  <39.886013, 31.731907, 29.105471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441669, 31.531809, 29.574316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791996, 31.388512, 29.703693>,  <40.002190, 31.302534, 29.781319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791996, 31.388512, 29.703693>,  <39.441669, 31.531809, 29.574316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791996, 31.388512, 29.703693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235267, 0.268258, 0.934177,
		-0.421428, -0.894259, 0.150661,
		0.875812, -0.358243, 0.323442,
		40.054741, 31.281038, 29.800726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238960, 31.257788, 30.217697>,  <39.441669, 31.531809, 29.574316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238960, 31.257788, 30.217697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635750, 31.299341, 30.246517>,  <39.873825, 31.324274, 30.263809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.635750, 31.299341, 30.246517>,  <39.238960, 31.257788, 30.217697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635750, 31.299341, 30.246517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095714, 0.244791, 0.964840,
		0.082593, -0.963995, 0.252770,
		0.991976, 0.103883, 0.072050,
		39.933342, 31.330507, 30.268131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312534, 30.958044, 30.855764>,  <39.238960, 31.257788, 30.217697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312534, 30.958044, 30.855764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640404, 31.175564, 30.783749>,  <39.837124, 31.306076, 30.740540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.640404, 31.175564, 30.783749>,  <39.312534, 30.958044, 30.855764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640404, 31.175564, 30.783749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037752, 0.364894, 0.930283,
		0.571585, -0.755732, 0.319624,
		0.819674, 0.543802, -0.180038,
		39.886307, 31.338705, 30.729738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793095, 30.731752, 31.341713>,  <39.312534, 30.958044, 30.855764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793095, 30.731752, 31.341713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918274, 31.094931, 31.230215>,  <39.993382, 31.312838, 31.163317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.918274, 31.094931, 31.230215>,  <39.793095, 30.731752, 31.341713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918274, 31.094931, 31.230215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213949, 0.218551, 0.952083,
		0.925358, -0.357592, -0.125859,
		0.312950, 0.907945, -0.278745,
		40.012157, 31.367313, 31.146591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443573, 30.852661, 31.615505>,  <39.793095, 30.731752, 31.341713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443573, 30.852661, 31.615505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320930, 31.227243, 31.547342>,  <40.247345, 31.451994, 31.506445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.320930, 31.227243, 31.547342>,  <40.443573, 30.852661, 31.615505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320930, 31.227243, 31.547342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155940, 0.226030, 0.961558,
		0.938975, 0.268248, -0.215334,
		-0.306608, 0.936458, -0.170406,
		40.228947, 31.508181, 31.496220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.631172, 33.632618, 26.916990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273148, 33.560585, 26.753809>,  <43.058331, 33.517365, 26.655899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.273148, 33.560585, 26.753809>,  <43.631172, 33.632618, 26.916990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273148, 33.560585, 26.753809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423049, -0.053607, -0.904520,
		0.141021, -0.982190, 0.124166,
		-0.895066, -0.180084, -0.407955,
		43.004627, 33.506561, 26.631422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.677357, 33.082558, 26.335402>,  <43.631172, 33.632618, 26.916990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.677357, 33.082558, 26.335402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.332397, 33.273869, 26.269037>,  <43.125423, 33.388657, 26.229219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.332397, 33.273869, 26.269037>,  <43.677357, 33.082558, 26.335402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332397, 33.273869, 26.269037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229064, 0.076406, -0.970408,
		-0.451449, -0.874878, -0.175449,
		-0.862394, 0.478279, -0.165910,
		43.073681, 33.417351, 26.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329174, 32.741390, 25.851379>,  <43.677357, 33.082558, 26.335402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329174, 32.741390, 25.851379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.206238, 33.120338, 25.815514>,  <43.132477, 33.347706, 25.793993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.206238, 33.120338, 25.815514>,  <43.329174, 32.741390, 25.851379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.206238, 33.120338, 25.815514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098571, -0.062026, -0.993195,
		-0.946482, -0.314085, -0.074320,
		-0.307338, 0.947366, -0.089666,
		43.114037, 33.404549, 25.788614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655159, 32.774445, 25.376575>,  <43.329174, 32.741390, 25.851379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655159, 32.774445, 25.376575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816196, 33.139725, 25.351301>,  <42.912819, 33.358891, 25.336136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816196, 33.139725, 25.351301>,  <42.655159, 32.774445, 25.376575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816196, 33.139725, 25.351301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060969, -0.042125, -0.997250,
		-0.913347, 0.405338, 0.038717,
		0.402593, 0.913196, -0.063188,
		42.936974, 33.413685, 25.332344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236362, 33.134449, 24.933167>,  <42.655159, 32.774445, 25.376575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236362, 33.134449, 24.933167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.589039, 33.323174, 24.934420>,  <42.800644, 33.436409, 24.935171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.589039, 33.323174, 24.934420>,  <42.236362, 33.134449, 24.933167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589039, 33.323174, 24.934420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007449, -0.007281, -0.999946,
		-0.471760, 0.881671, -0.009934,
		0.881695, 0.471809, 0.003133,
		42.853546, 33.464718, 24.935360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118267, 33.793339, 24.573633>,  <42.236362, 33.134449, 24.933167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118267, 33.793339, 24.573633> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.506226, 33.699123, 24.548920>,  <42.739002, 33.642593, 24.534092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.506226, 33.699123, 24.548920>,  <42.118267, 33.793339, 24.573633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.506226, 33.699123, 24.548920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100177, -0.154697, -0.982870,
		0.221950, 0.959473, -0.173637,
		0.969898, -0.235543, -0.061782,
		42.797195, 33.628460, 24.530386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357395, 34.026333, 23.920685>,  <42.118267, 33.793339, 24.573633>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357395, 34.026333, 23.920685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.664574, 33.792053, 24.024380>,  <42.848881, 33.651485, 24.086597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.664574, 33.792053, 24.024380>,  <42.357395, 34.026333, 23.920685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664574, 33.792053, 24.024380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003668, -0.408753, -0.912638,
		0.640498, 0.699910, -0.316051,
		0.767951, -0.585702, 0.259238,
		42.894958, 33.616341, 24.102152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900078, 34.024483, 23.337755>,  <42.357395, 34.026333, 23.920685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900078, 34.024483, 23.337755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004776, 33.686909, 23.525059>,  <43.067593, 33.484364, 23.637442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.004776, 33.686909, 23.525059>,  <42.900078, 34.024483, 23.337755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.004776, 33.686909, 23.525059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134244, -0.448622, -0.883582,
		0.955756, 0.294131, -0.004130,
		0.261741, -0.843935, 0.468259,
		43.083298, 33.433727, 23.665537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487648, 33.748428, 22.945404>,  <42.900078, 34.024483, 23.337755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487648, 33.748428, 22.945404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360107, 33.441551, 23.168026>,  <43.283585, 33.257423, 23.301600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.360107, 33.441551, 23.168026>,  <43.487648, 33.748428, 22.945404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360107, 33.441551, 23.168026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146016, -0.619953, -0.770933,
		0.936490, -0.164546, 0.309694,
		-0.318850, -0.767191, 0.556554,
		43.264454, 33.211395, 23.334991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011963, 33.276112, 22.990593>,  <43.487648, 33.748428, 22.945404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011963, 33.276112, 22.990593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660236, 33.091133, 23.036093>,  <43.449200, 32.980145, 23.063393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.660236, 33.091133, 23.036093>,  <44.011963, 33.276112, 22.990593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660236, 33.091133, 23.036093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218082, -0.603352, -0.767077,
		0.423364, -0.649698, 0.631391,
		-0.879319, -0.462448, 0.113750,
		43.396439, 32.952400, 23.070217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102570, 32.666847, 22.585346>,  <44.011963, 33.276112, 22.990593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102570, 32.666847, 22.585346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.709373, 32.600014, 22.615845>,  <43.473457, 32.559914, 22.634144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.709373, 32.600014, 22.615845>,  <44.102570, 32.666847, 22.585346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.709373, 32.600014, 22.615845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000709, -0.418596, -0.908172,
		0.183658, -0.892670, 0.411594,
		-0.982990, -0.167085, 0.076245,
		43.414478, 32.549889, 22.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045448, 32.083195, 22.223558>,  <44.102570, 32.666847, 22.585346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045448, 32.083195, 22.223558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663391, 32.198818, 22.249294>,  <43.434155, 32.268192, 22.264736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.663391, 32.198818, 22.249294>,  <44.045448, 32.083195, 22.223558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663391, 32.198818, 22.249294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157405, -0.311533, -0.937108,
		-0.250832, -0.905204, 0.343059,
		-0.955148, 0.289055, 0.064342,
		43.376846, 32.285534, 22.268597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593941, 31.626619, 21.922014>,  <44.045448, 32.083195, 22.223558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593941, 31.626619, 21.922014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.451572, 31.994305, 21.854643>,  <43.366150, 32.214916, 21.814220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.451572, 31.994305, 21.854643>,  <43.593941, 31.626619, 21.922014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451572, 31.994305, 21.854643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012041, -0.184728, -0.982716,
		-0.934438, -0.347742, 0.076817,
		-0.355922, 0.919212, -0.168430,
		43.344795, 32.270069, 21.804113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052254, 31.591036, 21.409832>,  <43.593941, 31.626619, 21.922014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052254, 31.591036, 21.409832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.219913, 31.951227, 21.363436>,  <43.320507, 32.167343, 21.335598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.219913, 31.951227, 21.363436>,  <43.052254, 31.591036, 21.409832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219913, 31.951227, 21.363436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171706, -0.204066, -0.963781,
		-0.891535, 0.384048, -0.240151,
		0.419145, 0.900480, -0.115989,
		43.345657, 32.221371, 21.328640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384270, 31.107370, 21.290850>,  <43.052254, 31.591036, 21.409832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384270, 31.107370, 21.290850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.105701, 30.836601, 21.195541>,  <41.938560, 30.674139, 21.138357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.105701, 30.836601, 21.195541>,  <42.384270, 31.107370, 21.290850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105701, 30.836601, 21.195541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557049, 0.300594, 0.774170,
		-0.452430, 0.671877, -0.586420,
		-0.696421, -0.676923, -0.238271,
		41.896774, 30.633524, 21.124060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639095, 31.449121, 21.167280>,  <42.384270, 31.107370, 21.290850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639095, 31.449121, 21.167280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607136, 31.062775, 21.265841>,  <41.587959, 30.830967, 21.324978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.607136, 31.062775, 21.265841>,  <41.639095, 31.449121, 21.167280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607136, 31.062775, 21.265841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628404, 0.240690, 0.739714,
		-0.773773, -0.095740, -0.626186,
		-0.079897, -0.965868, 0.246403,
		41.583168, 30.773014, 21.339762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008255, 31.420197, 21.536114>,  <41.639095, 31.449121, 21.167280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.008255, 31.420197, 21.536114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164776, 31.067417, 21.641224>,  <41.258690, 30.855749, 21.704290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.164776, 31.067417, 21.641224>,  <41.008255, 31.420197, 21.536114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164776, 31.067417, 21.641224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460083, 0.059811, 0.885859,
		-0.796999, -0.467536, -0.382366,
		0.391301, -0.881948, 0.262775,
		41.282166, 30.802834, 21.720057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473442, 31.115046, 21.921549>,  <41.008255, 31.420197, 21.536114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473442, 31.115046, 21.921549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.761154, 30.850628, 22.007017>,  <40.933781, 30.691977, 22.058298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.761154, 30.850628, 22.007017>,  <40.473442, 31.115046, 21.921549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761154, 30.850628, 22.007017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473883, -0.241949, 0.846697,
		-0.508008, -0.710267, -0.487287,
		0.719279, -0.661046, 0.213671,
		40.976936, 30.652315, 22.071119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196888, 30.582375, 22.053036>,  <40.473442, 31.115046, 21.921549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196888, 30.582375, 22.053036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540764, 30.563478, 22.256489>,  <40.747089, 30.552141, 22.378561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540764, 30.563478, 22.256489>,  <40.196888, 30.582375, 22.053036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540764, 30.563478, 22.256489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508409, -0.175791, 0.842981,
		0.049592, -0.983294, -0.175141,
		0.859686, -0.047238, 0.508634,
		40.798668, 30.549307, 22.409079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178764, 29.950268, 22.473087>,  <40.196888, 30.582375, 22.053036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178764, 29.950268, 22.473087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446270, 30.199240, 22.635733>,  <40.606773, 30.348623, 22.733320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.446270, 30.199240, 22.635733>,  <40.178764, 29.950268, 22.473087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446270, 30.199240, 22.635733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428280, -0.124529, 0.895025,
		0.607727, -0.772704, 0.183294,
		0.668763, 0.622432, 0.406613,
		40.646900, 30.385969, 22.757717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406120, 29.584852, 23.012194>,  <40.178764, 29.950268, 22.473087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406120, 29.584852, 23.012194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525562, 29.953423, 23.111639>,  <40.597229, 30.174564, 23.171307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525562, 29.953423, 23.111639>,  <40.406120, 29.584852, 23.012194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525562, 29.953423, 23.111639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196975, -0.195386, 0.960742,
		0.933828, -0.335854, 0.123155,
		0.298606, 0.921426, 0.248612,
		40.615143, 30.229851, 23.186222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999046, 29.554592, 23.543287>,  <40.406120, 29.584852, 23.012194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999046, 29.554592, 23.543287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836082, 29.919765, 23.552851>,  <40.738304, 30.138868, 23.558590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.836082, 29.919765, 23.552851>,  <40.999046, 29.554592, 23.543287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836082, 29.919765, 23.552851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104561, -0.072639, 0.991862,
		0.907240, 0.401595, 0.125051,
		-0.407410, 0.912932, 0.023910,
		40.713860, 30.193645, 23.560024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268875, 29.804712, 24.100235>,  <40.999046, 29.554592, 23.543287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268875, 29.804712, 24.100235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984970, 30.083946, 24.062464>,  <40.814629, 30.251486, 24.039801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.984970, 30.083946, 24.062464>,  <41.268875, 29.804712, 24.100235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.984970, 30.083946, 24.062464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019330, 0.153298, 0.987991,
		0.704177, 0.699412, -0.122299,
		-0.709761, 0.698085, -0.094429,
		40.772041, 30.293371, 24.034136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431637, 30.386734, 24.507885>,  <41.268875, 29.804712, 24.100235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431637, 30.386734, 24.507885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038349, 30.440960, 24.459047>,  <40.802376, 30.473495, 24.429745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.038349, 30.440960, 24.459047>,  <41.431637, 30.386734, 24.507885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038349, 30.440960, 24.459047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063400, 0.373641, 0.925404,
		0.171070, 0.917614, -0.358775,
		-0.983217, 0.135563, -0.122095,
		40.743385, 30.481628, 24.422419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282806, 31.063967, 24.808197>,  <41.431637, 30.386734, 24.507885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282806, 31.063967, 24.808197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931747, 30.874809, 24.776945>,  <40.721111, 30.761314, 24.758194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.931747, 30.874809, 24.776945>,  <41.282806, 31.063967, 24.808197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931747, 30.874809, 24.776945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286716, 0.387354, 0.876214,
		-0.384093, 0.791409, -0.475547,
		-0.877648, -0.472894, -0.078130,
		40.668453, 30.732941, 24.753506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704617, 31.544624, 25.012524>,  <41.282806, 31.063967, 24.808197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704617, 31.544624, 25.012524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543121, 31.179760, 25.040688>,  <40.446224, 30.960842, 25.057585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.543121, 31.179760, 25.040688>,  <40.704617, 31.544624, 25.012524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543121, 31.179760, 25.040688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280097, 0.196505, 0.939645,
		-0.870943, 0.359649, -0.334830,
		-0.403738, -0.912162, 0.070408,
		40.422001, 30.906111, 25.061810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059490, 31.640560, 25.314785>,  <40.704617, 31.544624, 25.012524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059490, 31.640560, 25.314785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131924, 31.252655, 25.380228>,  <40.175385, 31.019913, 25.419495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.131924, 31.252655, 25.380228>,  <40.059490, 31.640560, 25.314785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131924, 31.252655, 25.380228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061730, 0.154823, 0.986012,
		-0.981528, -0.188653, -0.031827,
		0.181087, -0.969763, 0.163608,
		40.186249, 30.961727, 25.429310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515007, 31.373096, 25.680607>,  <40.059490, 31.640560, 25.314785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515007, 31.373096, 25.680607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811813, 31.124516, 25.781166>,  <39.989899, 30.975367, 25.841501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.811813, 31.124516, 25.781166>,  <39.515007, 31.373096, 25.680607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811813, 31.124516, 25.781166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285827, 0.045934, 0.957180,
		-0.606392, -0.782102, -0.143545,
		0.742019, -0.621455, 0.251400,
		40.034420, 30.938080, 25.856586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859715, 31.001543, 25.589327>,  <39.515007, 31.373096, 25.680607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859715, 31.001543, 25.589327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461952, 31.041540, 25.602972>,  <38.223297, 31.065538, 25.611158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.461952, 31.041540, 25.602972>,  <38.859715, 31.001543, 25.589327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461952, 31.041540, 25.602972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058637, -0.253747, -0.965492,
		-0.087886, -0.962088, 0.258190,
		-0.994403, 0.099993, 0.034113,
		38.163631, 31.071539, 25.613205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556370, 30.432951, 25.178743>,  <38.859715, 31.001543, 25.589327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556370, 30.432951, 25.178743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277119, 30.719183, 25.188215>,  <38.109570, 30.890923, 25.193899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.277119, 30.719183, 25.188215>,  <38.556370, 30.432951, 25.178743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277119, 30.719183, 25.188215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212590, -0.175596, -0.961234,
		-0.683684, -0.676098, 0.274714,
		-0.698127, 0.715582, 0.023679,
		38.067680, 30.933857, 25.195318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066010, 30.142761, 24.688076>,  <38.556370, 30.432951, 25.178743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066010, 30.142761, 24.688076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973759, 30.529707, 24.730061>,  <37.918407, 30.761875, 24.755251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.973759, 30.529707, 24.730061>,  <38.066010, 30.142761, 24.688076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973759, 30.529707, 24.730061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280394, 0.037220, -0.959163,
		-0.931766, -0.250643, 0.262659,
		-0.230631, 0.967364, 0.104959,
		37.904568, 30.819916, 24.761549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495846, 30.120770, 24.373592>,  <38.066010, 30.142761, 24.688076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495846, 30.120770, 24.373592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599575, 30.507025, 24.380432>,  <37.661812, 30.738779, 24.384535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.599575, 30.507025, 24.380432>,  <37.495846, 30.120770, 24.373592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599575, 30.507025, 24.380432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247641, 0.083596, -0.965239,
		-0.933502, 0.246075, 0.260810,
		0.259324, 0.965639, 0.017098,
		37.677372, 30.796717, 24.385561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952873, 30.492439, 23.998665>,  <37.495846, 30.120770, 24.373592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952873, 30.492439, 23.998665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292377, 30.703783, 24.007114>,  <37.496078, 30.830589, 24.012184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292377, 30.703783, 24.007114>,  <36.952873, 30.492439, 23.998665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292377, 30.703783, 24.007114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084938, 0.175656, -0.980780,
		-0.521916, 0.830650, 0.193967,
		0.848757, 0.528361, 0.021124,
		37.547005, 30.862291, 24.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763313, 31.136620, 23.599720>,  <36.952873, 30.492439, 23.998665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763313, 31.136620, 23.599720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.157253, 31.067593, 23.606647>,  <37.393616, 31.026176, 23.610804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.157253, 31.067593, 23.606647>,  <36.763313, 31.136620, 23.599720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157253, 31.067593, 23.606647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001526, -0.091234, -0.995828,
		0.173426, 0.980764, -0.089588,
		0.984846, -0.172566, 0.017319,
		37.452705, 31.015823, 23.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075607, 31.623409, 23.166767>,  <36.763313, 31.136620, 23.599720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075607, 31.623409, 23.166767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327656, 31.315447, 23.207153>,  <37.478886, 31.130671, 23.231384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.327656, 31.315447, 23.207153>,  <37.075607, 31.623409, 23.166767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327656, 31.315447, 23.207153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063807, -0.078245, -0.994890,
		0.773871, 0.633344, -0.000179,
		0.630121, -0.769905, 0.100963,
		37.516693, 31.084475, 23.237442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993103, 32.263474, 23.506077>,  <37.075607, 31.623409, 23.166767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993103, 32.263474, 23.506077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711334, 32.374466, 23.244759>,  <36.542274, 32.441059, 23.087967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711334, 32.374466, 23.244759>,  <36.993103, 32.263474, 23.506077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711334, 32.374466, 23.244759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623829, 0.197008, 0.756323,
		0.338568, 0.940316, 0.034322,
		-0.704421, 0.277478, -0.653297,
		36.500008, 32.457710, 23.048769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747498, 32.836231, 23.849970>,  <36.993103, 32.263474, 23.506077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747498, 32.836231, 23.849970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477612, 32.688164, 23.594551>,  <36.315681, 32.599323, 23.441299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.477612, 32.688164, 23.594551>,  <36.747498, 32.836231, 23.849970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477612, 32.688164, 23.594551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738082, 0.337401, 0.584290,
		-0.000837, 0.865528, -0.500860,
		-0.674710, -0.370165, -0.638548,
		36.275200, 32.577114, 23.402987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164181, 33.346058, 23.826599>,  <36.747498, 32.836231, 23.849970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164181, 33.346058, 23.826599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025654, 32.987278, 23.716660>,  <35.942539, 32.772011, 23.650696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.025654, 32.987278, 23.716660>,  <36.164181, 33.346058, 23.826599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025654, 32.987278, 23.716660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619068, -0.001623, 0.785335,
		-0.704854, 0.442126, -0.554712,
		-0.346317, -0.896951, -0.274851,
		35.921761, 32.718193, 23.634205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486794, 33.402538, 23.863804>,  <36.164181, 33.346058, 23.826599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486794, 33.402538, 23.863804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558678, 33.009632, 23.885216>,  <35.601807, 32.773888, 23.898062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.558678, 33.009632, 23.885216>,  <35.486794, 33.402538, 23.863804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558678, 33.009632, 23.885216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663056, -0.080754, 0.744201,
		-0.726678, -0.169231, -0.665807,
		0.179708, -0.982262, 0.053528,
		35.612591, 32.714954, 23.901274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815994, 33.073322, 23.880785>,  <35.486794, 33.402538, 23.863804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815994, 33.073322, 23.880785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088421, 32.826294, 24.038143>,  <35.251877, 32.678078, 24.132559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088421, 32.826294, 24.038143>,  <34.815994, 33.073322, 23.880785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088421, 32.826294, 24.038143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580410, -0.127780, 0.804237,
		-0.446403, -0.776068, -0.445469,
		0.681065, -0.617568, 0.393396,
		35.292740, 32.641026, 24.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407494, 32.650005, 24.360439>,  <34.815994, 33.073322, 23.880785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407494, 32.650005, 24.360439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777489, 32.568523, 24.488754>,  <34.999485, 32.519634, 24.565742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.777489, 32.568523, 24.488754>,  <34.407494, 32.650005, 24.360439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777489, 32.568523, 24.488754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352204, -0.142657, 0.924987,
		-0.142657, -0.968584, -0.203700,
		-0.924987, 0.203700, -0.320788,
		35.054985, 32.507412, 24.584991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364891, 32.112232, 24.822943>,  <34.407494, 32.650005, 24.360439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364891, 32.112232, 24.822943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701069, 32.311237, 24.908852>,  <34.902775, 32.430641, 24.960398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.701069, 32.311237, 24.908852>,  <34.364891, 32.112232, 24.822943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701069, 32.311237, 24.908852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278193, 0.056004, 0.958891,
		0.465034, -0.865646, 0.185474,
		0.840447, 0.497515, 0.214773,
		34.953201, 32.460491, 24.973284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<39.985622, 33.447151, 21.103558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257217, 33.208855, 21.275171>,  <40.420174, 33.065876, 21.378139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.257217, 33.208855, 21.275171>,  <39.985622, 33.447151, 21.103558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257217, 33.208855, 21.275171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391788, 0.200184, 0.898014,
		-0.620870, -0.777828, -0.097483,
		0.678986, -0.595743, 0.429032,
		40.460915, 33.030132, 21.403881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638851, 32.838360, 21.469271>,  <39.985622, 33.447151, 21.103558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638851, 32.838360, 21.469271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983692, 32.926704, 21.651699>,  <40.190598, 32.979710, 21.761156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.983692, 32.926704, 21.651699>,  <39.638851, 32.838360, 21.469271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983692, 32.926704, 21.651699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499802, 0.222263, 0.837137,
		0.083520, -0.949643, 0.301998,
		0.862104, 0.220857, 0.456070,
		40.242325, 32.992962, 21.788521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628731, 32.535385, 22.232016>,  <39.638851, 32.838360, 21.469271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628731, 32.535385, 22.232016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923508, 32.805740, 22.228043>,  <40.100372, 32.967953, 22.225658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.923508, 32.805740, 22.228043>,  <39.628731, 32.535385, 22.232016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923508, 32.805740, 22.228043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380901, 0.427361, 0.819925,
		0.558419, -0.600453, 0.572385,
		0.736941, 0.675884, -0.009934,
		40.144588, 33.008507, 22.225063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893433, 32.385357, 22.938435>,  <39.628731, 32.535385, 22.232016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893433, 32.385357, 22.938435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016102, 32.741966, 22.805088>,  <40.089703, 32.955933, 22.725080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.016102, 32.741966, 22.805088>,  <39.893433, 32.385357, 22.938435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.016102, 32.741966, 22.805088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267565, 0.416866, 0.868695,
		0.913433, -0.177209, 0.366383,
		0.306674, 0.891527, -0.333365,
		40.108105, 33.009422, 22.705078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350613, 32.649628, 23.466532>,  <39.893433, 32.385357, 22.938435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350613, 32.649628, 23.466532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.206299, 32.971848, 23.278521>,  <40.119709, 33.165180, 23.165714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.206299, 32.971848, 23.278521>,  <40.350613, 32.649628, 23.466532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206299, 32.971848, 23.278521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157464, 0.444124, 0.882020,
		0.919260, 0.392232, -0.033388,
		-0.360785, 0.805548, -0.470028,
		40.098064, 33.213512, 23.137512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733387, 33.176865, 23.724165>,  <40.350613, 32.649628, 23.466532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733387, 33.176865, 23.724165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404774, 33.347374, 23.572708>,  <40.207603, 33.449680, 23.481834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.404774, 33.347374, 23.572708>,  <40.733387, 33.176865, 23.724165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404774, 33.347374, 23.572708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071945, 0.581292, 0.810508,
		0.565598, 0.693104, -0.446884,
		-0.821537, 0.426271, -0.378643,
		40.158314, 33.475254, 23.459116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685181, 33.700146, 24.118061>,  <40.733387, 33.176865, 23.724165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685181, 33.700146, 24.118061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330372, 33.742046, 23.938183>,  <40.117489, 33.767185, 23.830256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.330372, 33.742046, 23.938183>,  <40.685181, 33.700146, 24.118061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330372, 33.742046, 23.938183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329923, 0.537574, 0.775993,
		0.323029, 0.836685, -0.442279,
		-0.887019, 0.104750, -0.449693,
		40.064266, 33.773472, 23.803274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.652412, 34.413910, 24.172909>,  <40.685181, 33.700146, 24.118061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.652412, 34.413910, 24.172909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295269, 34.238373, 24.132471>,  <40.080982, 34.133049, 24.108208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.295269, 34.238373, 24.132471>,  <40.652412, 34.413910, 24.172909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295269, 34.238373, 24.132471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292963, 0.395523, 0.870479,
		-0.342020, 0.806831, -0.481711,
		-0.892858, -0.438845, -0.101095,
		40.027412, 34.106720, 24.102142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215855, 34.914577, 24.271660>,  <40.652412, 34.413910, 24.172909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215855, 34.914577, 24.271660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988598, 34.593468, 24.344072>,  <39.852242, 34.400803, 24.387520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988598, 34.593468, 24.344072>,  <40.215855, 34.914577, 24.271660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988598, 34.593468, 24.344072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298777, 0.406196, 0.863561,
		-0.766775, 0.436539, -0.470627,
		-0.568144, -0.802770, 0.181033,
		39.818153, 34.352638, 24.398382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455086, 35.114449, 24.360975>,  <40.215855, 34.914577, 24.271660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455086, 35.114449, 24.360975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.526073, 34.795979, 24.592358>,  <39.568665, 34.604897, 24.731186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.526073, 34.795979, 24.592358>,  <39.455086, 35.114449, 24.360975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526073, 34.795979, 24.592358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360398, 0.494373, 0.791017,
		-0.915761, -0.348856, -0.199203,
		0.177470, -0.796175, 0.578454,
		39.579315, 34.557125, 24.765894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005592, 35.200806, 24.812946>,  <39.455086, 35.114449, 24.360975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005592, 35.200806, 24.812946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217945, 34.903942, 24.976585>,  <39.345356, 34.725822, 25.074770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.217945, 34.903942, 24.976585>,  <39.005592, 35.200806, 24.812946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217945, 34.903942, 24.976585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276145, 0.304898, 0.911472,
		-0.801194, -0.596852, -0.043080,
		0.530879, -0.742162, 0.409100,
		39.377209, 34.681293, 25.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619453, 34.892673, 25.319500>,  <39.005592, 35.200806, 24.812946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619453, 34.892673, 25.319500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982170, 34.767288, 25.432266>,  <39.199799, 34.692059, 25.499926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.982170, 34.767288, 25.432266>,  <38.619453, 34.892673, 25.319500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982170, 34.767288, 25.432266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218016, 0.223682, 0.949966,
		-0.360839, -0.922880, 0.134492,
		0.906788, -0.313464, 0.281916,
		39.254208, 34.673248, 25.516840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020275, 34.621204, 25.513916>,  <38.619453, 34.892673, 25.319500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020275, 34.621204, 25.513916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779938, 34.904160, 25.365007>,  <37.635735, 35.073933, 25.275661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.779938, 34.904160, 25.365007>,  <38.020275, 34.621204, 25.513916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779938, 34.904160, 25.365007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385119, -0.151928, -0.910276,
		-0.700477, -0.690304, -0.181143,
		-0.600846, 0.707389, -0.372271,
		37.599686, 35.116375, 25.253326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737926, 34.308685, 24.904451>,  <38.020275, 34.621204, 25.513916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737926, 34.308685, 24.904451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694595, 34.703144, 24.854214>,  <37.668594, 34.939819, 24.824070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694595, 34.703144, 24.854214>,  <37.737926, 34.308685, 24.904451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694595, 34.703144, 24.854214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264793, -0.093152, -0.959795,
		-0.958201, -0.137232, -0.251034,
		-0.108330, 0.986149, -0.125596,
		37.662098, 34.998989, 24.816534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279079, 34.371437, 24.259102>,  <37.737926, 34.308685, 24.904451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279079, 34.371437, 24.259102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433037, 34.738453, 24.299070>,  <37.525410, 34.958660, 24.323051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.433037, 34.738453, 24.299070>,  <37.279079, 34.371437, 24.259102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433037, 34.738453, 24.299070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028853, 0.096248, -0.994939,
		-0.922511, 0.385825, 0.010571,
		0.384890, 0.917538, 0.099922,
		37.548504, 35.013714, 24.329046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835087, 34.803738, 23.892059>,  <37.279079, 34.371437, 24.259102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835087, 34.803738, 23.892059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.193233, 34.979095, 23.923359>,  <37.408123, 35.084309, 23.942139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.193233, 34.979095, 23.923359>,  <36.835087, 34.803738, 23.892059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193233, 34.979095, 23.923359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012939, 0.201254, -0.979454,
		-0.445134, 0.875961, 0.185870,
		0.895370, 0.438393, 0.078251,
		37.461845, 35.110615, 23.946835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775211, 35.459988, 23.569487>,  <36.835087, 34.803738, 23.892059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775211, 35.459988, 23.569487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.163975, 35.365898, 23.566389>,  <37.397232, 35.309444, 23.564531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.163975, 35.365898, 23.566389>,  <36.775211, 35.459988, 23.569487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163975, 35.365898, 23.566389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055096, 0.259380, -0.964203,
		0.228814, 0.936691, 0.265054,
		0.971910, -0.235226, -0.007742,
		37.455547, 35.295330, 23.564066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010372, 35.895435, 23.096506>,  <36.775211, 35.459988, 23.569487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010372, 35.895435, 23.096506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.333302, 35.664936, 23.147367>,  <37.527061, 35.526638, 23.177883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.333302, 35.664936, 23.147367>,  <37.010372, 35.895435, 23.096506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333302, 35.664936, 23.147367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334454, 0.269297, -0.903117,
		0.486174, 0.771636, 0.410137,
		0.807326, -0.576244, 0.127151,
		37.575500, 35.492062, 23.185513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598148, 36.252163, 22.808882>,  <37.010372, 35.895435, 23.096506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598148, 36.252163, 22.808882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696518, 35.865356, 22.835402>,  <37.755539, 35.633270, 22.851313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.696518, 35.865356, 22.835402>,  <37.598148, 36.252163, 22.808882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696518, 35.865356, 22.835402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441014, 0.050721, -0.896066,
		0.863150, 0.249605, 0.438942,
		0.245926, -0.967018, 0.066299,
		37.770294, 35.575253, 22.855291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263607, 36.233917, 22.605503>,  <37.598148, 36.252163, 22.808882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263607, 36.233917, 22.605503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164383, 35.848454, 22.565844>,  <38.104847, 35.617176, 22.542048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.164383, 35.848454, 22.565844>,  <38.263607, 36.233917, 22.605503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164383, 35.848454, 22.565844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311605, 0.017535, -0.950050,
		0.917262, -0.266565, 0.295931,
		-0.248061, -0.963658, -0.099147,
		38.089966, 35.559357, 22.536100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804691, 35.925472, 22.296253>,  <38.263607, 36.233917, 22.605503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804691, 35.925472, 22.296253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474152, 35.712185, 22.223776>,  <38.275829, 35.584213, 22.180290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.474152, 35.712185, 22.223776>,  <38.804691, 35.925472, 22.296253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474152, 35.712185, 22.223776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239983, -0.042346, -0.969853,
		0.509470, -0.844917, 0.162955,
		-0.826346, -0.533218, -0.181192,
		38.226246, 35.552219, 22.169418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079792, 35.433170, 21.787357>,  <38.804691, 35.925472, 22.296253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079792, 35.433170, 21.787357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685703, 35.391991, 21.732594>,  <38.449249, 35.367283, 21.699736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.685703, 35.391991, 21.732594>,  <39.079792, 35.433170, 21.787357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685703, 35.391991, 21.732594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141448, -0.038118, -0.989212,
		0.096619, -0.993956, 0.052116,
		-0.985219, -0.102948, -0.136910,
		38.390137, 35.361107, 21.691521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060184, 34.927887, 21.322847>,  <39.079792, 35.433170, 21.787357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060184, 34.927887, 21.322847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693966, 35.086338, 21.294939>,  <38.474236, 35.181408, 21.278194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.693966, 35.086338, 21.294939>,  <39.060184, 34.927887, 21.322847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693966, 35.086338, 21.294939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105278, 0.068583, -0.992075,
		-0.388200, -0.915632, -0.104493,
		-0.915542, 0.396124, -0.069772,
		38.419304, 35.205173, 21.274008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702690, 34.530300, 20.815327>,  <39.060184, 34.927887, 21.322847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702690, 34.530300, 20.815327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.548584, 34.899422, 20.814846>,  <38.456120, 35.120895, 20.814558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.548584, 34.899422, 20.814846>,  <38.702690, 34.530300, 20.815327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548584, 34.899422, 20.814846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163322, 0.066905, -0.984301,
		-0.908236, -0.379418, -0.176491,
		-0.385270, 0.922803, -0.001202,
		38.433002, 35.176262, 20.814486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299435, 34.581966, 20.223442>,  <38.702690, 34.530300, 20.815327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299435, 34.581966, 20.223442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.348343, 34.966640, 20.321592>,  <38.377689, 35.197445, 20.380482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.348343, 34.966640, 20.321592>,  <38.299435, 34.581966, 20.223442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348343, 34.966640, 20.321592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036740, 0.242674, -0.969412,
		-0.991816, 0.127547, -0.005660,
		0.122272, 0.961687, 0.245374,
		38.385025, 35.255146, 20.395205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734375, 34.202049, 20.542965>,  <38.299435, 34.581966, 20.223442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734375, 34.202049, 20.542965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507004, 33.936283, 20.348873>,  <37.370579, 33.776825, 20.232418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.507004, 33.936283, 20.348873>,  <37.734375, 34.202049, 20.542965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507004, 33.936283, 20.348873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320123, -0.364686, 0.874371,
		-0.757898, 0.652351, -0.005394,
		-0.568430, -0.664411, -0.485227,
		37.336475, 33.736961, 20.203304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094311, 34.280098, 20.831970>,  <37.734375, 34.202049, 20.542965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094311, 34.280098, 20.831970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111557, 33.914379, 20.670874>,  <37.121906, 33.694946, 20.574215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.111557, 33.914379, 20.670874>,  <37.094311, 34.280098, 20.831970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111557, 33.914379, 20.670874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191304, -0.403213, 0.894886,
		-0.980583, 0.038461, -0.192294,
		0.043118, -0.914297, -0.402742,
		37.124493, 33.640091, 20.550051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383602, 33.953400, 21.036882>,  <37.094311, 34.280098, 20.831970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383602, 33.953400, 21.036882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.623241, 33.654556, 20.921707>,  <36.767025, 33.475250, 20.852602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.623241, 33.654556, 20.921707>,  <36.383602, 33.953400, 21.036882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623241, 33.654556, 20.921707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307428, -0.546694, 0.778854,
		-0.739305, -0.378088, -0.557205,
		0.599096, -0.747111, -0.287939,
		36.802971, 33.430424, 20.835325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785728, 33.332924, 21.090158>,  <36.383602, 33.953400, 21.036882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785728, 33.332924, 21.090158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.162453, 33.207279, 21.138029>,  <36.388489, 33.131893, 21.166752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.162453, 33.207279, 21.138029>,  <35.785728, 33.332924, 21.090158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162453, 33.207279, 21.138029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312034, -0.684605, 0.658749,
		-0.124986, -0.657763, -0.742783,
		0.941814, -0.314107, 0.119679,
		36.444996, 33.113049, 21.173933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697704, 32.628590, 21.198143>,  <35.785728, 33.332924, 21.090158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697704, 32.628590, 21.198143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077473, 32.684681, 21.310528>,  <36.305332, 32.718334, 21.377958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.077473, 32.684681, 21.310528>,  <35.697704, 32.628590, 21.198143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.077473, 32.684681, 21.310528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148937, -0.586602, 0.796063,
		0.276443, -0.797643, -0.536046,
		0.949419, 0.140229, 0.280961,
		36.362297, 32.726749, 21.394815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932915, 31.989222, 21.514530>,  <35.697704, 32.628590, 21.198143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932915, 31.989222, 21.514530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198593, 32.260258, 21.640841>,  <36.358002, 32.422878, 21.716627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.198593, 32.260258, 21.640841>,  <35.932915, 31.989222, 21.514530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198593, 32.260258, 21.640841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003746, -0.425420, 0.904988,
		0.747549, -0.599907, -0.285101,
		0.664196, 0.677591, 0.315775,
		36.397854, 32.463535, 21.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554100, 31.614138, 21.828907>,  <35.932915, 31.989222, 21.514530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554100, 31.614138, 21.828907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.523571, 31.985172, 21.975197>,  <36.505253, 32.207794, 22.062971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.523571, 31.985172, 21.975197>,  <36.554100, 31.614138, 21.828907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523571, 31.985172, 21.975197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136858, -0.373068, 0.917655,
		0.987646, 0.019985, 0.155421,
		-0.076322, 0.927589, 0.365724,
		36.500675, 32.263451, 22.084913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946049, 31.604399, 22.433582>,  <36.554100, 31.614138, 21.828907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946049, 31.604399, 22.433582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705593, 31.922985, 22.459715>,  <36.561317, 32.114136, 22.475395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.705593, 31.922985, 22.459715>,  <36.946049, 31.604399, 22.433582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705593, 31.922985, 22.459715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228960, -0.249982, 0.940790,
		0.765640, 0.550591, 0.332634,
		-0.601143, 0.796466, 0.065333,
		36.525249, 32.161926, 22.479315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546619, 31.711941, 22.572084>,  <36.946049, 31.604399, 22.433582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546619, 31.711941, 22.572084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718445, 31.362406, 22.663191>,  <37.821541, 31.152685, 22.717854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.718445, 31.362406, 22.663191>,  <37.546619, 31.711941, 22.572084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718445, 31.362406, 22.663191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201678, -0.153016, -0.967426,
		0.880227, 0.461509, 0.110503,
		0.429567, -0.873840, 0.227765,
		37.847313, 31.100254, 22.731520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185337, 31.684328, 22.310949>,  <37.546619, 31.711941, 22.572084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185337, 31.684328, 22.310949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028973, 31.317446, 22.341743>,  <37.935154, 31.097317, 22.360220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.028973, 31.317446, 22.341743>,  <38.185337, 31.684328, 22.310949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028973, 31.317446, 22.341743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251058, -0.186722, -0.949792,
		0.885528, -0.351954, 0.303263,
		-0.390908, -0.917204, 0.076987,
		37.911701, 31.042284, 22.364840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834312, 31.225632, 22.131016>,  <38.185337, 31.684328, 22.310949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834312, 31.225632, 22.131016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514786, 30.987989, 22.093201>,  <38.323071, 30.845404, 22.070513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.514786, 30.987989, 22.093201>,  <38.834312, 31.225632, 22.131016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514786, 30.987989, 22.093201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328279, -0.298804, -0.896074,
		0.504115, -0.746830, 0.433721,
		-0.798813, -0.594105, -0.094537,
		38.275143, 30.809757, 22.064840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111580, 30.599699, 21.832880>,  <38.834312, 31.225632, 22.131016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111580, 30.599699, 21.832880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724297, 30.583494, 21.734144>,  <38.491928, 30.573771, 21.674902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724297, 30.583494, 21.734144>,  <39.111580, 30.599699, 21.832880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724297, 30.583494, 21.734144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238190, -0.450687, -0.860318,
		-0.076394, -0.891762, 0.446009,
		-0.968209, -0.040512, -0.246839,
		38.433834, 30.571341, 21.660093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010387, 29.879337, 21.574980>,  <39.111580, 30.599699, 21.832880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010387, 29.879337, 21.574980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724499, 30.126753, 21.444391>,  <38.552967, 30.275202, 21.366037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.724499, 30.126753, 21.444391>,  <39.010387, 29.879337, 21.574980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724499, 30.126753, 21.444391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176136, -0.292558, -0.939886,
		-0.676870, -0.729258, 0.100150,
		-0.714720, 0.618541, -0.326472,
		38.510082, 30.312315, 21.346449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520302, 29.410471, 21.125011>,  <39.010387, 29.879337, 21.574980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520302, 29.410471, 21.125011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550205, 29.799931, 21.038828>,  <38.568150, 30.033606, 20.987118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.550205, 29.799931, 21.038828>,  <38.520302, 29.410471, 21.125011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550205, 29.799931, 21.038828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366706, -0.227767, -0.902025,
		-0.927328, -0.011572, -0.374070,
		0.074763, 0.973647, -0.215459,
		38.572636, 30.092024, 20.974190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459278, 29.384264, 20.492094>,  <38.520302, 29.410471, 21.125011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459278, 29.384264, 20.492094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552734, 29.772812, 20.509312>,  <38.608810, 30.005941, 20.519642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.552734, 29.772812, 20.509312>,  <38.459278, 29.384264, 20.492094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.552734, 29.772812, 20.509312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424862, -0.062173, -0.903121,
		-0.874587, 0.229296, -0.427224,
		0.233644, 0.971369, 0.043044,
		38.622829, 30.064222, 20.522224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233974, 29.743284, 19.899477>,  <38.459278, 29.384264, 20.492094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233974, 29.743284, 19.899477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.513561, 29.983477, 20.054840>,  <38.681313, 30.127592, 20.148058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.513561, 29.983477, 20.054840>,  <38.233974, 29.743284, 19.899477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513561, 29.983477, 20.054840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416153, 0.100167, -0.903761,
		-0.581597, 0.793340, -0.179878,
		0.698972, 0.600481, 0.388408,
		38.723251, 30.163622, 20.171362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114704, 30.449305, 19.667503>,  <38.233974, 29.743284, 19.899477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114704, 30.449305, 19.667503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.494160, 30.380579, 19.773754>,  <38.721832, 30.339344, 19.837505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.494160, 30.380579, 19.773754>,  <38.114704, 30.449305, 19.667503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494160, 30.380579, 19.773754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279780, 0.063764, -0.957944,
		0.147652, 0.983063, 0.108560,
		0.948642, -0.171816, 0.265627,
		38.778751, 30.329035, 19.853443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.266285, 33.229130, 35.740292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662064, 33.278038, 35.709198>,  <36.899532, 33.307384, 35.690540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.662064, 33.278038, 35.709198>,  <36.266285, 33.229130, 35.740292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662064, 33.278038, 35.709198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093995, 0.133366, -0.986600,
		-0.110264, 0.983496, 0.143452,
		0.989448, 0.122270, -0.077738,
		36.958897, 33.314720, 35.685875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363617, 33.846523, 35.453938>,  <36.266285, 33.229130, 35.740292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363617, 33.846523, 35.453938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.688820, 33.628738, 35.371395>,  <36.883942, 33.498066, 35.321869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.688820, 33.628738, 35.371395>,  <36.363617, 33.846523, 35.453938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688820, 33.628738, 35.371395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082254, 0.243455, -0.966418,
		0.576416, 0.802677, 0.153146,
		0.813006, -0.544462, -0.206355,
		36.932720, 33.465401, 35.309490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611572, 34.224510, 34.961498>,  <36.363617, 33.846523, 35.453938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611572, 34.224510, 34.961498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753059, 33.853546, 34.912838>,  <36.837952, 33.630970, 34.883640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753059, 33.853546, 34.912838>,  <36.611572, 34.224510, 34.961498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753059, 33.853546, 34.912838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054684, 0.109337, -0.992499,
		0.933753, 0.357715, -0.012040,
		0.353715, -0.927408, -0.121655,
		36.859173, 33.575325, 34.876343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792240, 34.246353, 34.338898>,  <36.611572, 34.224510, 34.961498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792240, 34.246353, 34.338898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805508, 33.852852, 34.409473>,  <36.813469, 33.616753, 34.451820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805508, 33.852852, 34.409473>,  <36.792240, 34.246353, 34.338898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805508, 33.852852, 34.409473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148982, -0.179436, -0.972423,
		0.988283, 0.005968, -0.152513,
		0.033170, -0.983752, 0.176444,
		36.815460, 33.557728, 34.462406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356430, 33.958199, 33.880264>,  <36.792240, 34.246353, 34.338898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356430, 33.958199, 33.880264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079258, 33.679710, 33.955238>,  <36.912956, 33.512619, 34.000221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.079258, 33.679710, 33.955238>,  <37.356430, 33.958199, 33.880264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079258, 33.679710, 33.955238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009336, -0.251271, -0.967872,
		0.720946, -0.672415, 0.167613,
		-0.692928, -0.696219, 0.187431,
		36.871380, 33.470844, 34.011467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612137, 33.352173, 33.669800>,  <37.356430, 33.958199, 33.880264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612137, 33.352173, 33.669800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223721, 33.260925, 33.698196>,  <36.990669, 33.206177, 33.715233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.223721, 33.260925, 33.698196>,  <37.612137, 33.352173, 33.669800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223721, 33.260925, 33.698196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064844, -0.537647, -0.840673,
		0.229940, -0.811725, 0.536870,
		-0.971042, -0.228117, 0.070991,
		36.932407, 33.192490, 33.719494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500675, 32.596252, 33.397327>,  <37.612137, 33.352173, 33.669800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500675, 32.596252, 33.397327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126331, 32.734325, 33.369019>,  <36.901726, 32.817169, 33.352032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.126331, 32.734325, 33.369019>,  <37.500675, 32.596252, 33.397327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126331, 32.734325, 33.369019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053085, -0.336681, -0.940121,
		-0.348365, -0.876059, 0.333410,
		-0.935854, 0.345205, -0.070782,
		36.845573, 32.837879, 33.347786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016693, 32.085949, 33.202045>,  <37.500675, 32.596252, 33.397327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016693, 32.085949, 33.202045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860527, 32.433849, 33.081306>,  <36.766827, 32.642590, 33.008865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.860527, 32.433849, 33.081306>,  <37.016693, 32.085949, 33.202045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860527, 32.433849, 33.081306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129286, -0.376409, -0.917388,
		-0.911516, -0.319137, 0.259402,
		-0.390414, 0.869751, -0.301843,
		36.743404, 32.694775, 32.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442772, 31.872601, 32.839031>,  <37.016693, 32.085949, 33.202045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442772, 31.872601, 32.839031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530167, 32.247295, 32.729637>,  <36.582603, 32.472111, 32.664001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.530167, 32.247295, 32.729637>,  <36.442772, 31.872601, 32.839031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530167, 32.247295, 32.729637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059214, -0.292463, -0.954442,
		-0.974043, 0.192335, -0.119366,
		0.218482, 0.936735, -0.273482,
		36.595711, 32.528316, 32.647591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835209, 32.039322, 32.437576>,  <36.442772, 31.872601, 32.839031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835209, 32.039322, 32.437576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156475, 32.257771, 32.342350>,  <36.349236, 32.388840, 32.285213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156475, 32.257771, 32.342350>,  <35.835209, 32.039322, 32.437576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156475, 32.257771, 32.342350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125304, -0.235805, -0.963688,
		-0.582430, 0.803831, -0.120959,
		0.803165, 0.546124, -0.238063,
		36.397423, 32.421608, 32.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666920, 32.303928, 31.824785>,  <35.835209, 32.039322, 32.437576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666920, 32.303928, 31.824785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060020, 32.376190, 31.808994>,  <36.295883, 32.419548, 31.799520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.060020, 32.376190, 31.808994>,  <35.666920, 32.303928, 31.824785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060020, 32.376190, 31.808994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001850, -0.223073, -0.974800,
		-0.184912, 0.957915, -0.219560,
		0.982754, 0.180658, -0.039477,
		36.354847, 32.430389, 31.797152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776272, 32.700394, 31.213968>,  <35.666920, 32.303928, 31.824785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776272, 32.700394, 31.213968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133080, 32.546734, 31.309246>,  <36.347164, 32.454536, 31.366413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133080, 32.546734, 31.309246>,  <35.776272, 32.700394, 31.213968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133080, 32.546734, 31.309246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171594, -0.199724, -0.964710,
		0.418166, 0.901410, -0.112239,
		0.892016, -0.384149, 0.238194,
		36.400684, 32.431488, 31.380705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546879, 33.384399, 30.996420>,  <35.776272, 32.700394, 31.213968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546879, 33.384399, 30.996420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153599, 33.315788, 30.971457>,  <34.917629, 33.274620, 30.956478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.153599, 33.315788, 30.971457>,  <35.546879, 33.384399, 30.996420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153599, 33.315788, 30.971457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117084, 0.330379, 0.936558,
		-0.140031, 0.928131, -0.344912,
		-0.983200, -0.171531, -0.062407,
		34.858639, 33.264328, 30.952734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247601, 33.915909, 31.404835>,  <35.546879, 33.384399, 30.996420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247601, 33.915909, 31.404835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964432, 33.635445, 31.370846>,  <34.794529, 33.467167, 31.350452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.964432, 33.635445, 31.370846>,  <35.247601, 33.915909, 31.404835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964432, 33.635445, 31.370846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404924, 0.304335, 0.862216,
		-0.578692, 0.644789, -0.499362,
		-0.707921, -0.701162, -0.084974,
		34.752056, 33.425095, 31.345354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822090, 34.292000, 31.754362>,  <35.247601, 33.915909, 31.404835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822090, 34.292000, 31.754362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637012, 33.939114, 31.719490>,  <34.525967, 33.727383, 31.698566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637012, 33.939114, 31.719490>,  <34.822090, 34.292000, 31.754362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637012, 33.939114, 31.719490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477370, 0.165077, 0.863057,
		-0.747014, 0.440951, -0.497526,
		-0.462696, -0.882220, -0.087182,
		34.498203, 33.674446, 31.693336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095715, 34.391541, 31.791813>,  <34.822090, 34.292000, 31.754362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095715, 34.391541, 31.791813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137669, 34.001976, 31.872313>,  <34.162842, 33.768238, 31.920612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137669, 34.001976, 31.872313>,  <34.095715, 34.391541, 31.791813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137669, 34.001976, 31.872313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563668, 0.108501, 0.818844,
		-0.819315, -0.199321, -0.537581,
		0.104885, -0.973909, 0.201248,
		34.169136, 33.709805, 31.932686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409843, 34.175594, 31.989756>,  <34.095715, 34.391541, 31.791813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409843, 34.175594, 31.989756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670448, 33.903328, 32.123753>,  <33.826813, 33.739967, 32.204151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670448, 33.903328, 32.123753>,  <33.409843, 34.175594, 31.989756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670448, 33.903328, 32.123753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469717, -0.015180, 0.882686,
		-0.595730, -0.732436, -0.329611,
		0.651514, -0.680667, 0.334994,
		33.865902, 33.699127, 32.224251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067459, 33.701054, 32.509407>,  <33.409843, 34.175594, 31.989756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067459, 33.701054, 32.509407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451588, 33.658234, 32.612423>,  <33.682064, 33.632542, 32.674232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451588, 33.658234, 32.612423>,  <33.067459, 33.701054, 32.509407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451588, 33.658234, 32.612423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236283, 0.178323, 0.955181,
		-0.148181, -0.978131, 0.145952,
		0.960319, -0.107054, 0.257540,
		33.739685, 33.626118, 32.689686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058113, 33.216774, 33.043125>,  <33.067459, 33.701054, 32.509407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058113, 33.216774, 33.043125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368980, 33.467819, 33.061485>,  <33.555500, 33.618446, 33.072502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.368980, 33.467819, 33.061485>,  <33.058113, 33.216774, 33.043125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368980, 33.467819, 33.061485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217863, 0.199912, 0.955286,
		0.590377, -0.752418, 0.292100,
		0.777168, 0.627617, 0.045900,
		33.602131, 33.656105, 33.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418228, 33.018837, 33.665562>,  <33.058113, 33.216774, 33.043125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418228, 33.018837, 33.665562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608795, 33.362259, 33.589756>,  <33.723137, 33.568310, 33.544273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608795, 33.362259, 33.589756>,  <33.418228, 33.018837, 33.665562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608795, 33.362259, 33.589756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266284, 0.346322, 0.899530,
		0.837926, -0.378086, 0.393612,
		0.476416, 0.858552, -0.189514,
		33.751720, 33.619823, 33.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923439, 33.195763, 34.290367>,  <33.418228, 33.018837, 33.665562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923439, 33.195763, 34.290367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854206, 33.536484, 34.092587>,  <33.812664, 33.740917, 33.973919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.854206, 33.536484, 34.092587>,  <33.923439, 33.195763, 34.290367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854206, 33.536484, 34.092587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045822, 0.494518, 0.867959,
		0.983840, 0.172888, -0.046562,
		-0.173086, 0.851799, -0.494449,
		33.802280, 33.792023, 33.944252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408199, 33.664406, 34.582790>,  <33.923439, 33.195763, 34.290367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408199, 33.664406, 34.582790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104050, 33.868443, 34.421970>,  <33.921562, 33.990864, 34.325478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.104050, 33.868443, 34.421970>,  <34.408199, 33.664406, 34.582790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104050, 33.868443, 34.421970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001509, 0.620407, 0.784278,
		0.649489, 0.595735, -0.472509,
		-0.760370, 0.510093, -0.402048,
		33.875938, 34.021469, 34.301357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680397, 34.278362, 34.664524>,  <34.408199, 33.664406, 34.582790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680397, 34.278362, 34.664524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297474, 34.345383, 34.570305>,  <34.067719, 34.385597, 34.513775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.297474, 34.345383, 34.570305>,  <34.680397, 34.278362, 34.664524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297474, 34.345383, 34.570305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063171, 0.673896, 0.736121,
		0.282073, 0.719576, -0.634543,
		-0.957311, 0.167556, -0.235544,
		34.010281, 34.395649, 34.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569923, 34.970379, 34.703899>,  <34.680397, 34.278362, 34.664524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569923, 34.970379, 34.703899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199005, 34.822777, 34.729076>,  <33.976456, 34.734215, 34.744183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.199005, 34.822777, 34.729076>,  <34.569923, 34.970379, 34.703899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199005, 34.822777, 34.729076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247385, 0.730281, 0.636782,
		-0.280946, 0.574911, -0.768470,
		-0.927292, -0.369009, 0.062945,
		33.920818, 34.712074, 34.747959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242943, 35.553337, 34.745766>,  <34.569923, 34.970379, 34.703899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242943, 35.553337, 34.745766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013004, 35.254040, 34.878242>,  <33.875042, 35.074463, 34.957729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.013004, 35.254040, 34.878242>,  <34.242943, 35.553337, 34.745766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013004, 35.254040, 34.878242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366590, 0.597358, 0.713284,
		-0.731549, 0.288617, -0.617687,
		-0.574846, -0.748240, 0.331193,
		33.840549, 35.029568, 34.977600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.526260, 35.833862, 34.724636>,  <34.242943, 35.553337, 34.745766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.526260, 35.833862, 34.724636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596840, 35.549782, 34.997246>,  <33.639187, 35.379333, 35.160812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.596840, 35.549782, 34.997246>,  <33.526260, 35.833862, 34.724636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596840, 35.549782, 34.997246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352924, 0.600703, 0.717356,
		-0.918863, -0.367104, -0.144654,
		0.176450, -0.710204, 0.681524,
		33.649776, 35.336720, 35.201702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036835, 36.365959, 34.931053>,  <33.526260, 35.833862, 34.724636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036835, 36.365959, 34.931053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122837, 36.756367, 34.917458>,  <33.174438, 36.990612, 34.909302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.122837, 36.756367, 34.917458>,  <33.036835, 36.365959, 34.931053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122837, 36.756367, 34.917458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165375, -0.070683, -0.983695,
		-0.962508, 0.205884, -0.176607,
		0.215010, 0.976020, -0.033984,
		33.187340, 37.049171, 34.907261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618202, 36.830685, 34.437767>,  <33.036835, 36.365959, 34.931053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618202, 36.830685, 34.437767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983837, 36.982330, 34.495335>,  <33.203220, 37.073318, 34.529873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.983837, 36.982330, 34.495335>,  <32.618202, 36.830685, 34.437767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983837, 36.982330, 34.495335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048397, 0.250369, -0.966940,
		-0.402609, 0.890837, 0.210512,
		0.914092, 0.379110, 0.143914,
		33.258064, 37.096062, 34.538509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674717, 37.507130, 34.090755>,  <32.618202, 36.830685, 34.437767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674717, 37.507130, 34.090755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035206, 37.334805, 34.109463>,  <33.251499, 37.231407, 34.120686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.035206, 37.334805, 34.109463>,  <32.674717, 37.507130, 34.090755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035206, 37.334805, 34.109463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077861, 0.054823, -0.995456,
		0.426295, 0.900773, 0.082952,
		0.901227, -0.430817, 0.046765,
		33.305573, 37.205559, 34.123493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143555, 37.963940, 33.869476>,  <32.674717, 37.507130, 34.090755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143555, 37.963940, 33.869476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313896, 37.605145, 33.822048>,  <33.416100, 37.389866, 33.793591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.313896, 37.605145, 33.822048>,  <33.143555, 37.963940, 33.869476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313896, 37.605145, 33.822048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111232, 0.078148, -0.990717,
		0.897928, 0.435090, -0.066494,
		0.425855, -0.896989, -0.118567,
		33.441654, 37.336048, 33.786480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585388, 38.000523, 33.314190>,  <33.143555, 37.963940, 33.869476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585388, 38.000523, 33.314190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528610, 37.604832, 33.328552>,  <33.494545, 37.367416, 33.337170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.528610, 37.604832, 33.328552>,  <33.585388, 38.000523, 33.314190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528610, 37.604832, 33.328552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040370, -0.030458, -0.998720,
		0.989052, -0.143210, -0.035612,
		-0.141942, -0.989224, 0.035906,
		33.486027, 37.308064, 33.339325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146698, 37.721100, 33.197163>,  <33.585388, 38.000523, 33.314190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146698, 37.721100, 33.197163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855331, 37.462967, 33.105118>,  <33.680511, 37.308086, 33.049889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.855331, 37.462967, 33.105118>,  <34.146698, 37.721100, 33.197163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855331, 37.462967, 33.105118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265427, 0.043837, -0.963134,
		0.631629, -0.762643, 0.139357,
		-0.728418, -0.645333, -0.230114,
		33.636806, 37.269367, 33.036083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562401, 37.210003, 32.839417>,  <34.146698, 37.721100, 33.197163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562401, 37.210003, 32.839417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178909, 37.154064, 32.740398>,  <33.948814, 37.120502, 32.680988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178909, 37.154064, 32.740398>,  <34.562401, 37.210003, 32.839417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178909, 37.154064, 32.740398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261238, -0.089658, -0.961101,
		0.112210, -0.986106, 0.122491,
		-0.958730, -0.139844, -0.247548,
		33.891289, 37.112110, 32.666134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594059, 36.585678, 32.395130>,  <34.562401, 37.210003, 32.839417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594059, 36.585678, 32.395130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234097, 36.742634, 32.319019>,  <34.018120, 36.836807, 32.273354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.234097, 36.742634, 32.319019>,  <34.594059, 36.585678, 32.395130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234097, 36.742634, 32.319019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144554, -0.143249, -0.979073,
		-0.411434, -0.908576, 0.072189,
		-0.899904, 0.392388, -0.190276,
		33.964127, 36.860352, 32.261936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106697, 36.052547, 31.984474>,  <34.594059, 36.585678, 32.395130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106697, 36.052547, 31.984474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016953, 36.438438, 31.929396>,  <33.963104, 36.669971, 31.896349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.016953, 36.438438, 31.929396>,  <34.106697, 36.052547, 31.984474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016953, 36.438438, 31.929396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207421, -0.090786, -0.974030,
		-0.952175, -0.247100, -0.179736,
		-0.224365, 0.964728, -0.137698,
		33.949642, 36.727856, 31.888086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694946, 36.093330, 31.448919>,  <34.106697, 36.052547, 31.984474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694946, 36.093330, 31.448919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823959, 36.471851, 31.457750>,  <33.901367, 36.698963, 31.463049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.823959, 36.471851, 31.457750>,  <33.694946, 36.093330, 31.448919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823959, 36.471851, 31.457750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271123, -0.070012, -0.959995,
		-0.906899, 0.315614, -0.279145,
		0.322532, 0.946301, 0.022077,
		33.920719, 36.755741, 31.464373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454182, 36.353886, 30.929762>,  <33.694946, 36.093330, 31.448919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454182, 36.353886, 30.929762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.738869, 36.624203, 31.006456>,  <33.909683, 36.786392, 31.052473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.738869, 36.624203, 31.006456>,  <33.454182, 36.353886, 30.929762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738869, 36.624203, 31.006456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238185, 0.024621, -0.970908,
		-0.660849, 0.736684, -0.143439,
		0.711721, 0.675789, 0.191738,
		33.952385, 36.826939, 31.063978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447590, 36.800091, 30.477293>,  <33.454182, 36.353886, 30.929762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447590, 36.800091, 30.477293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822479, 36.856731, 30.604771>,  <34.047413, 36.890717, 30.681257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.822479, 36.856731, 30.604771>,  <33.447590, 36.800091, 30.477293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822479, 36.856731, 30.604771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315779, 0.043206, -0.947849,
		-0.147986, 0.988980, -0.004221,
		0.937221, 0.141602, 0.318693,
		34.103645, 36.899212, 30.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752914, 37.121574, 29.790010>,  <33.447590, 36.800091, 30.477293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752914, 37.121574, 29.790010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055649, 37.026913, 30.033712>,  <34.237289, 36.970116, 30.179934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.055649, 37.026913, 30.033712>,  <33.752914, 37.121574, 29.790010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055649, 37.026913, 30.033712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594184, -0.139207, -0.792191,
		0.272287, 0.961570, 0.035259,
		0.756839, -0.236654, 0.609254,
		34.282700, 36.955917, 30.216488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263165, 37.388855, 29.490414>,  <33.752914, 37.121574, 29.790010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263165, 37.388855, 29.490414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449116, 37.124470, 29.726044>,  <34.560688, 36.965839, 29.867422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.449116, 37.124470, 29.726044>,  <34.263165, 37.388855, 29.490414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449116, 37.124470, 29.726044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620533, -0.231342, -0.749279,
		0.631526, 0.713866, 0.302605,
		0.464880, -0.660966, 0.589076,
		34.588581, 36.926182, 29.902767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031940, 37.378937, 29.204302>,  <34.263165, 37.388855, 29.490414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031940, 37.378937, 29.204302> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976612, 37.043858, 29.415634>,  <34.943413, 36.842812, 29.542435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.976612, 37.043858, 29.415634>,  <35.031940, 37.378937, 29.204302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976612, 37.043858, 29.415634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599983, -0.495306, -0.628245,
		0.787964, 0.230089, 0.571115,
		-0.138325, -0.837694, 0.528333,
		34.935116, 36.792549, 29.574135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653755, 37.194550, 29.425615>,  <35.031940, 37.378937, 29.204302>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653755, 37.194550, 29.425615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425430, 36.866154, 29.430607>,  <35.288437, 36.669117, 29.433601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.425430, 36.866154, 29.430607>,  <35.653755, 37.194550, 29.425615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425430, 36.866154, 29.430607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631344, -0.448574, -0.632603,
		0.524956, -0.353219, 0.774376,
		-0.570812, -0.820986, 0.012478,
		35.254189, 36.619858, 29.434351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021751, 36.545769, 29.643089>,  <35.653755, 37.194550, 29.425615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021751, 36.545769, 29.643089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697021, 36.406498, 29.455593>,  <35.502186, 36.322933, 29.343096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.697021, 36.406498, 29.455593>,  <36.021751, 36.545769, 29.643089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697021, 36.406498, 29.455593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579989, -0.573675, -0.578369,
		-0.067526, -0.741395, 0.667663,
		-0.811821, -0.348182, -0.468739,
		35.453476, 36.302044, 29.314972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058388, 35.834461, 29.629881>,  <36.021751, 36.545769, 29.643089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058388, 35.834461, 29.629881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814823, 35.957165, 29.337271>,  <35.668686, 36.030785, 29.161705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.814823, 35.957165, 29.337271>,  <36.058388, 35.834461, 29.629881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814823, 35.957165, 29.337271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518951, -0.543415, -0.659841,
		-0.599933, -0.781409, 0.171698,
		-0.608909, 0.306758, -0.731525,
		35.632149, 36.049191, 29.117813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043579, 35.265537, 29.134632>,  <36.058388, 35.834461, 29.629881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043579, 35.265537, 29.134632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879662, 35.564552, 28.925535>,  <35.781311, 35.743961, 28.800077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879662, 35.564552, 28.925535>,  <36.043579, 35.265537, 29.134632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879662, 35.564552, 28.925535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381444, -0.380129, -0.842616,
		-0.828596, -0.544694, -0.129370,
		-0.409791, 0.747536, -0.522744,
		35.756725, 35.788815, 28.768711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849415, 35.006092, 28.422527>,  <36.043579, 35.265537, 29.134632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849415, 35.006092, 28.422527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873226, 35.403984, 28.389130>,  <35.887512, 35.642719, 28.369091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873226, 35.403984, 28.389130>,  <35.849415, 35.006092, 28.422527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873226, 35.403984, 28.389130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451744, -0.101431, -0.886363,
		-0.890160, 0.015046, -0.455401,
		0.059528, 0.994729, -0.083493,
		35.891083, 35.702404, 28.364082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435658, 35.145008, 27.808016>,  <35.849415, 35.006092, 28.422527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435658, 35.145008, 27.808016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689331, 35.445610, 27.880737>,  <35.841534, 35.625973, 27.924370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.689331, 35.445610, 27.880737>,  <35.435658, 35.145008, 27.808016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689331, 35.445610, 27.880737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437381, -0.154793, -0.885854,
		-0.637580, 0.641312, -0.426860,
		0.634184, 0.751504, 0.181805,
		35.879585, 35.671062, 27.935278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366268, 35.434998, 27.250320>,  <35.435658, 35.145008, 27.808016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366268, 35.434998, 27.250320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693550, 35.601093, 27.409380>,  <35.889919, 35.700752, 27.504816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.693550, 35.601093, 27.409380>,  <35.366268, 35.434998, 27.250320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693550, 35.601093, 27.409380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385404, 0.117100, -0.915288,
		-0.426628, 0.902144, -0.064223,
		0.818201, 0.415239, 0.397648,
		35.939011, 35.725666, 27.528675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382839, 35.931931, 26.851946>,  <35.366268, 35.434998, 27.250320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382839, 35.931931, 26.851946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755447, 35.882923, 26.988922>,  <35.979012, 35.853519, 27.071108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.755447, 35.882923, 26.988922>,  <35.382839, 35.931931, 26.851946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755447, 35.882923, 26.988922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330217, -0.109688, -0.937510,
		0.152425, 0.986386, -0.061718,
		0.931517, -0.122520, 0.342441,
		36.034901, 35.846169, 27.091654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874996, 36.349541, 26.473021>,  <35.382839, 35.931931, 26.851946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874996, 36.349541, 26.473021> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100998, 36.061348, 26.633860>,  <36.236599, 35.888432, 26.730362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.100998, 36.061348, 26.633860>,  <35.874996, 36.349541, 26.473021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100998, 36.061348, 26.633860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420608, -0.167753, -0.891598,
		0.709829, 0.672883, 0.208258,
		0.565005, -0.720477, 0.402096,
		36.270500, 35.845203, 26.754488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536411, 36.521801, 26.263071>,  <35.874996, 36.349541, 26.473021>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536411, 36.521801, 26.263071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544144, 36.139359, 26.380028>,  <36.548782, 35.909893, 26.450201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544144, 36.139359, 26.380028>,  <36.536411, 36.521801, 26.263071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544144, 36.139359, 26.380028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583672, -0.226648, -0.779717,
		0.811760, 0.185731, 0.553670,
		0.019329, -0.956104, 0.292390,
		36.549942, 35.852528, 26.467745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215965, 36.330315, 26.243752>,  <36.536411, 36.521801, 26.263071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215965, 36.330315, 26.243752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026810, 35.978466, 26.223202>,  <36.913315, 35.767357, 26.210873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.026810, 35.978466, 26.223202>,  <37.215965, 36.330315, 26.243752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026810, 35.978466, 26.223202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656627, -0.312930, -0.686233,
		0.587549, -0.358247, 0.725565,
		-0.472892, -0.879621, -0.051374,
		36.884941, 35.714581, 26.207790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754185, 35.844574, 26.348757>,  <37.215965, 36.330315, 26.243752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754185, 35.844574, 26.348757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460659, 35.661606, 26.147844>,  <37.284542, 35.551826, 26.027298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460659, 35.661606, 26.147844>,  <37.754185, 35.844574, 26.348757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460659, 35.661606, 26.147844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675654, -0.414385, -0.609735,
		0.070768, -0.786799, 0.613139,
		-0.733814, -0.457420, -0.502279,
		37.240517, 35.524380, 25.997160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030716, 35.176620, 26.107199>,  <37.754185, 35.844574, 26.348757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030716, 35.176620, 26.107199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720627, 35.268749, 25.871916>,  <37.534573, 35.324028, 25.730745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.720627, 35.268749, 25.871916>,  <38.030716, 35.176620, 26.107199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720627, 35.268749, 25.871916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539193, -0.243852, -0.806106,
		-0.329101, -0.942065, 0.064849,
		-0.775218, 0.230324, -0.588207,
		37.488060, 35.337845, 25.695454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488888, 34.574127, 26.078409>,  <38.030716, 35.176620, 26.107199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488888, 34.574127, 26.078409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884193, 34.617687, 26.035564>,  <39.121376, 34.643822, 26.009857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.884193, 34.617687, 26.035564>,  <38.488888, 34.574127, 26.078409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884193, 34.617687, 26.035564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061646, 0.357254, 0.931971,
		0.139754, -0.927637, 0.346349,
		0.988265, 0.108896, -0.107113,
		39.180672, 34.650356, 26.003431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772503, 34.239906, 26.791880>,  <38.488888, 34.574127, 26.078409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772503, 34.239906, 26.791880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041187, 34.481705, 26.620583>,  <39.202396, 34.626781, 26.517805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041187, 34.481705, 26.620583>,  <38.772503, 34.239906, 26.791880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041187, 34.481705, 26.620583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116072, 0.485052, 0.866748,
		0.731663, -0.631911, 0.255651,
		0.671711, 0.604494, -0.428242,
		39.242702, 34.663052, 26.492109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548004, 34.158688, 27.084532>,  <38.772503, 34.239906, 26.791880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548004, 34.158688, 27.084532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491627, 34.521999, 26.926971>,  <39.457802, 34.739986, 26.832436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.491627, 34.521999, 26.926971>,  <39.548004, 34.158688, 27.084532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491627, 34.521999, 26.926971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105127, 0.409354, 0.906299,
		0.984420, 0.086327, -0.153181,
		-0.140943, 0.908282, -0.393901,
		39.449345, 34.794483, 26.808802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933472, 34.570477, 27.652229>,  <39.548004, 34.158688, 27.084532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933472, 34.570477, 27.652229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736427, 34.837379, 27.428766>,  <39.618198, 34.997520, 27.294687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.736427, 34.837379, 27.428766>,  <39.933472, 34.570477, 27.652229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736427, 34.837379, 27.428766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067288, 0.669237, 0.739996,
		0.867643, 0.326941, -0.374574,
		-0.492613, 0.667257, -0.558660,
		39.588642, 35.037556, 27.261168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334419, 35.166718, 27.596363>,  <39.933472, 34.570477, 27.652229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334419, 35.166718, 27.596363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941093, 35.236603, 27.576063>,  <39.705097, 35.278534, 27.563883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.941093, 35.236603, 27.576063>,  <40.334419, 35.166718, 27.596363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941093, 35.236603, 27.576063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055035, 0.551523, 0.832342,
		0.173410, 0.815658, -0.551934,
		-0.983311, 0.174712, -0.050750,
		39.646099, 35.289017, 27.560839>
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
